import logging
import maya.cmds as mc
from nl_modules.build.rig_base import RigBase
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.rbn_node import RbnNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color

BIND_JNT_SET = "bind_jnt_set"


class RigModule(RigBase):
    """Base class for rig modules, providing common functionality for rigging operations."""

    def __init__(self, rigNode):

        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)

        rID = self.rigID
        self.RIG_DATA = GrpNode(rID + "_rig_data", p=self.RIG)
        self.CTL_DATA = GrpNode(rID + "_ctl_data", p=self.masterC)
        self.SKL_DATA = GrpNode(rID + "_skl_data", p=self.SKL)

        self.moduleG = rigNode.a.moduleG.inConnNode
        if not self.moduleG:
            raise ValueError(f"moduleG not found at {rigNode}")

        self.master_guide = rigNode.a.master_guide.inConnNode
        if not self.master_guide:
            raise ValueError(f"master_guide not found for {rigNode}")

        self.rigSize = 1
        self.xDir = 1 if rID.startswith("lf") else -1
        self.boneFix = None
        self.jnts_bind = []
        self.all_bend = []

        if rigNode.a.rootJ.exists():
            self.rootJ = rigNode.a.rootJ.inConnNode

    def gen_sk_fr_names(self, names, color=None, scale=1):
        """Generate skeleton and control names based on the provided names list."""
        if isinstance(names, str):
            names = [names]

        guideList = []
        for n in names:
            guide_name = f"{self.rigID}_{n}_guide"
            if not mc.objExists(guide_name):
                raise ValueError(f"missing object: {guide_name}")
            guideList.append(DagNode(guide_name))

        guideDict = dict(zip(names, guideList))
        currClass = self.__class__.__name__

        joints = []
        lastJ = None
        for name in guideDict:
            n = f"{self.rigID}_{name}"
            if mc.objExists(n):
                n += "#"
            jN = JntNode(n, align=guideDict[name], color=color)
            if (currClass == "ArmBp" or currClass == "LegBp") and name == "lwr":
                jN.a.preferredAngleY.set(-45)
            if lastJ:
                jN | lastJ
            lastJ = jN
            joints.append(jN)

        self.rigSize = self.calc_rig_size(joints[0])
        for j in joints:
            j.a.radius.set(self.rigSize * scale)

        joints[0].freezeXf()
        return joints

    @staticmethod
    def build_fk_with_ctl(jntList, ctlList=None, oriOnly=0, count=1, p=None):
        """
        P
            c1 ofs  <- j1
                c1
            c2 ofs  <- j2
                c2
            ...
            cN ofs
                cN

        j1 <- c1
            j2 <- c2
        """
        ctlList = ctlList or [CrvNode(j + "_fkc") for j in jntList]

        for jnt, ctl in zip(jntList, ctlList):

            ctl.alignTo(jnt)
            if oriOnly:
                ctl.cstOri(jnt, mo=1)
            else:
                ctl.cstPar(jnt, mo=1)
            ofs = ctl.addOffsetGrp(count=count)
            if jnt.parent:
                if jnt.parent.type == "joint":
                    if count > 1:
                        jnt.parent.cstPar(ofs[0], mo=1)
                    else:
                        jnt.parent.cstPar(ofs, mo=1)
            if p:
                ofs.parentTo(p)

    @staticmethod
    def build_fk_with_ctl2(jntList, ctlList=None, count=1, p=None):
        """FK setup with ctls in separate hierarchy
            The benefit compared to build_fk_with_ctl3 is separate selection highlight
        P
            c1 ofs
                c1
            c2 ofs <- c1
                c2
            ...
            cN ofs
                cN

        j1 <- c1
            j2 <- c2
        """
        ctlList = ctlList or [CrvNode(j + "_fkc") for j in jntList]
        last_ctl = None

        for jnt, ctl in zip(jntList, ctlList):
            if jnt and ctl:
                ctl = DagNode(ctl)
                jnt = DagNode(jnt)

                if p:
                    ctl | p

                ctl.alignTo(jnt)
                ofs = ctl.addOffsetGrp(count=count)
                ctl.cstPar(jnt, mo=1)

                if last_ctl:
                    ofsToParent = ofs[-1] if count > 1 else ofs
                    last_ctl.cstPar(ofsToParent, mo=1)
                last_ctl = ctl

    @staticmethod
    def build_fk_with_ctl3(jntList, ctlList=None, count=1, p=None):
        """FK setup with ctls in single hierarchy
        P
            c1 ofs
                c1
                    c2 ofs
                        c2
                        ...
                        cN ofs
                            cN
        j1 <- c2
            j2 <- c2
        """
        ctlList = ctlList or [CrvNode(j + "_fkc") for j in jntList]
        last_ctl = None

        for ctl, jnt in zip(ctlList, jntList):
            ctl = DagNode(ctl)
            jnt = DagNode(jnt)
            if p and last_ctl is None:
                ctl | p

            ctl.alignTo(jnt)
            ofs = ctl.addOffsetGrp(count=count)
            ctl.cstPar(jnt, mo=1)

            if last_ctl:
                ofsToParent = ofs[-1] if count > 1 else ofs
                ofsToParent | last_ctl
            last_ctl = ctl

    @staticmethod
    def build_fk_with_ctl_dbl(jntList, ctlList=None, drvList=None, count=1, p=None):
        """Special FK setup for toe
        P
            Ctl 1 offset        << t & r connected by the ctl from DBL
                Ctl 1
                    Ctl 2 offset        << t & r connected by the ctl from DBL
                        Ctl 2
                        ...
                        Ctl N offset
                            Ctl N
        Structure without Controls
        P
            Ctl 1 offset DBL        << cst by foot joint
                Ctl 2 offset DBL        << cst by ball joint
        """
        if ctlList is None:
            newCtl = []
            for j in jntList:
                newCtl.append(CrvNode(j + "_fkc"))
            ctlList = newCtl

        last_ctl = None
        last_dbl = None
        i = 0

        for ctl, jnt in zip(ctlList, jntList):
            if p:
                ctl | p
            ctl.alignTo(jnt)
            ctl_ofs = ctl.addOffsetGrp(count=count)
            ctl.cstPar(jnt, mo=1)

            if last_ctl:
                if count > 1:
                    ctl_ofs[0] | last_ctl
                else:
                    ctl_ofs | last_ctl
            last_ctl = ctl
            # -----------------
            # DBL STRUCTURE
            # -----------------
            ghost = ctl.duplicate(po=1)
            if p:
                ghost | p
            dbl_ctl_ofs = ghost.addOffsetGrp(count=count)
            ghost.delete()

            if last_dbl:
                dbl_ctl_ofs[0] | last_dbl
            last_dbl = dbl_ctl_ofs[-1]
            last_dbl.a.t >> ctl_ofs[-1].a.t
            last_dbl.a.r >> ctl_ofs[-1].a.r

            if drvList and len(drvList) > i:
                drvList[i].cstPar(last_dbl, mo=1)
                i += 1

    @staticmethod
    def isolate_align(tgt, spaces=None, attrName="isolate", dv=0, cstType="ori"):
        """Add isolate attr to tgt to allow separate cst for the neck"""
        allSpaces = []
        if len(spaces) == 2:
            for space in spaces:
                spaceG = GrpNode(tgt + "_SPACE_#", align=tgt, p=space)
                spaceG.addOffsetGrp()
                allSpaces.append(spaceG)

            tgt = DagNode(tgt) if isinstance(tgt, str) else tgt
            tgt_ofs = tgt.addOffsetGrp()
            common.cstMulti(
                *allSpaces,
                tgt_ofs,
                cstType=cstType,
                w=tgt.a.add(attrName, min=0, max=1, dv=dv),
            )

    @classmethod
    def isolate_neck_to_spine(cls, neckCog, spineCtl, wSpaceObj):
        """Isolate neck control to align with spine control and world space object."""
        cls.isolate_align(
            neckCog, spaces=[spineCtl, wSpaceObj], attrName="isolateR", cstType="ori"
        )
        cls.isolate_align(
            neckCog, spaces=[spineCtl, wSpaceObj], attrName="isolateT", cstType="parT"
        )

    @staticmethod
    def space_align(
        tgt, names=None, spaces=None, dv=0, cstType="par", w=None, **kwargs
    ):
        """Add space alignment to the target control with multiple spaces."""
        allSpacesGrp = []
        for space in spaces:
            spaceG = GrpNode(tgt + "_SPACE_#", align=tgt, p=space)
            spaceG.addOffsetGrp()
            allSpacesGrp.append(spaceG)
        tgt_ofs = tgt.addOffsetGrp()

        if cstType == "par":
            tgt.a.add("spaceType", k=0, cb=0)
        elif cstType == "ori":
            tgt.a.add("spaceType", dv=1, k=0, cb=0)

        weight = w or tgt.a.add("space", attrType="enum", dv=dv, enumName=names)

        v = tgt.a["spaceType"].get()
        tgtCstType = "par" if v == 0 else "ori"
        common.cstMulti(*allSpacesGrp, tgt_ofs, cstType=tgtCstType, w=weight, **kwargs)

        if v == 2 and w is None:
            weight = tgt.a.add("posSpace", attrType="enum", dv=dv, enumName=names)
            common.cstMulti(*allSpacesGrp, tgt_ofs, cstType="poi", w=weight, **kwargs)

    def calc_rig_size(self, rootJ):
        """Calculate the rig size based on the root joint's diagonal2 attribute."""
        return rootJ.o.diagonal2 / 100 or 1

    def add_minus_scale_grp(self, tgt):
        """Add a minus scale group to the target control."""
        if self.rigID.startswith("rt_"):
            tgt.a.rx.set2(180, add=1)
            tgt.a.ry.set2(180, add=1)
            tgt.addOffsetGrp().a.sz.set(-1)
        else:
            tgt.addOffsetGrp()

    def genSk_module(self):
        """Generate the skeleton module for the rigNode."""
        self.rigNode.a.nodeState.set(1)
        if self.masterC2.a.sx.get() != 1:
            self.masterC2.freezeXf(t=0, r=0, s=1)

    def build_pre_module(self):
        """Build the rig module, setting up the rigNode and its connections."""
        self.rigNode.a.nodeState.set(2)
        if not self.rootJ:
            raise ValueError("rootJ not set for the component")

        self.rigSize = self.calc_rig_size(self.rootJ)

        children = self.rootJ.childrenJt
        if children:
            self.xDir = 1 if children[0].a.tx.get() > 0 else -1

    def build_post_module(self):
        """Post build function to finalize the module setup."""
        # Show rotate order attribute in channelBox
        for node in mc.ls(tr=1):
            node = DagNode(node)
            if node.type == "nurbsCurve" or node.type == "joint":
                mc.setAttr(node + ".ro", cb=1)

        # Hide module grp
        mc.hide(self.moduleG)

    def unbuild_pre_module(self):
        """Prepare for unbuilding the rig module, resetting the rigNode state."""
        logging.info(self.rigID)

        self.moduleG.show()
        self.CTL_DATA.delete()
        self.SKL_DATA.delete()
        self.RIG_DATA.delete()

        rootJ = self.rigNode.a.rootJ.inConnNode
        if rootJ:
            rootJ.delete()
        for xf in self.DIM.children:
            if xf.name.startswith(self.rigID):
                xf.delete()
        for xf in self.masterC.children:
            if xf.name.startswith(self.rigID):
                xf.delete()

        for attr in ["anchorF1", "anchorM1", "anchorM2"]:
            anchor = self.rigNode.a[attr]
            if anchor.exists() and anchor.inConnNode:
                anchor.inConnNode.delete()

        self.rigNode.a.nodeState.set(0)
        prx = mc.ls(self.rigID + "_*_pxGeo*")
        if prx:
            mc.delete(prx)

    def setup_anchor_module(self, anchorDict=None):
        """
        F is female, for driven plugs. e.g. hand has 1 F anchor
        M is male, for driver plugs. e.g spine has 2 M anchors
        e.g.
        { 'anchorM1': loc1, 'anchorM2': loc2, }
        or
        { 'anchorM1': loc1, 'anchorF1': loc2, }
        or
        { 'anchorF1': loc1, }
        """
        rID, rSz, xDr = self.getMyVar()

        for name, tgt in anchorDict.items():
            loc = LocNode(name, pf=rID, size=rSz * 15, p=self.masterC)
            self.rigNode.setMsg({name: loc})

            if name.startswith("anchorM"):  # male color
                loc.color = 18
                tgt.cstPar(loc)
            elif name.startswith("anchorF"):  # female color
                loc.color = 13
                loc.alignTo(tgt)
                loc.cstPar(tgt, mo=1)
            mc.hide(loc)

    def add_ctl_set(self, tgtList):
        """Add control set for target controls"""
        setName = self.rigID + "_ctl_set"
        if DagNode(setName).exists():
            mc.sets(tgtList, add=setName)
        else:
            mc.sets(tgtList, n=setName)

    def add_bind_jnt_set(self, tgtList):
        """Add bind joint set for target joints"""
        if DagNode(BIND_JNT_SET).exists():
            mc.sets(tgtList, add=BIND_JNT_SET)
        else:
            mc.sets(tgtList, n=BIND_JNT_SET)

        self.jnts_bind.extend(tgtList)

    def add_movable_pivot(self, tgt, snap=None, hide=1):
        """Add movable pivot ctl under tgt"""
        pvt_ctl = LocNode(tgt + "_pvt", align=tgt, p=tgt)
        pvt_ctl.a.t >> tgt.a.rotatePivot
        if snap:
            pvt_ctl.snapTo(snap)
        if hide:
            pvt_ctl.hide()

        return pvt_ctl

    def add_movable_pivotX(
        self, tgt, scale=1, inRange=500, maxOfs=500, ty=1, tz=1, settable=1
    ):
        """Add pivot offset to target ctl"""
        if settable:
            piv_ref = CrvNode(
                tgt + "_pvt_ctl", shape="locator", align=tgt, scale=scale, p=tgt
            )
            # piv_ref.dspType = 2

        if tz:
            rmN = DagNode("rmpZ_#", nodeType="remapValue")
            rmN.a.inputMin.set(inRange)
            rmN.a.inputMax.set(-inRange)
            rmN.a.outputMin.set(maxOfs)
            rmN.a.outputMax.set(-maxOfs)
            rmN.a.outValue >> tgt.a.rotatePivotZ

            if settable:
                rmN.a.outValue >> piv_ref.a.tz
                pivotTz = tgt.a.add("pivotTz", min=-inRange, max=inRange, dv=0)
                pivotTz >> rmN.a.inputValue

        if ty:
            rmN = DagNode("rmpY_#", nodeType="remapValue")
            rmN.a.inputMin.set(-inRange)
            rmN.a.inputMax.set(inRange)
            rmN.a.outputMin.set(-maxOfs)
            rmN.a.outputMax.set(maxOfs)
            rmN.a.outValue >> tgt.a.rotatePivotY

            if settable:
                rmN.a.outValue >> piv_ref.a.ty
                pivotTy = tgt.a.add("pivotTy", min=-inRange, max=inRange, dv=0)
                pivotTy >> rmN.a.inputValue

    def boneFix_setup(self, tgt, tgtChild):
        """Setup bone fix for the leg rig."""
        rID, rSz, xDr = self.getMyVar()

        upLoc = LocNode("lwrLimb_up", pf=rID, align=tgtChild, addOfs=1, p=tgt, size=rSz)
        tgtChild.cstPoi(upLoc.offset)
        upLoc.a.ty.set(rSz * 10 * xDr)

        tgtDup = tgt.duplicate(po=1)
        childDup = tgtChild.duplicate(po=1)
        tgtDup.rename(tgt + "Fix")
        childDup.rename(tgtChild + "Fix")
        childDup | tgtDup | tgt

        tgtChild.cstAim(
            tgtDup, worldUpType="object", worldUpObject=upLoc, aim=(xDr, 0, 0)
        )

        self.boneFix = tgtDup
        self.boneFix_sdk(tgt, tgtDup)
        upLoc.hide()

        self.updateBindJntList(remove=[self.lwr], extend=[self.boneFix])

    def boneFix_sdk(self, driver, driven):
        """ "Setup SDK for bone fix to drive the leg joint."""
        rID, rSz, xDr = self.getMyVar()

        s = rSz * xDr
        common.sdk(driver, driven, "ry", "tz", 0, 0)
        common.sdk(driver, driven, "ry", "tz", -60, 0, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -80, -0.8 * s, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -150, -6.5 * s, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -180, -7 * s)
        common.sdk(driver, driven, "ry", "tx", 0, 0)
        common.sdk(driver, driven, "ry", "tx", -80, s, tangent=1)
        common.sdk(driver, driven, "ry", "tx", -170, -3 * s)

    def patella_setup(self):
        """Setup patella guide and joint for the leg rig."""
        rID, rSz, xDr = self.getMyVar()

        patella_guide = DagNode(rID + "_patella_guide")

        def patella_sdk(driver, driven):
            common.sdk(driver, driven, "ry", "ry", 0, 0)
            common.sdk(driver, driven, "ry", "ry", -20, -1, tangent=1)
            common.sdk(driver, driven, "ry", "ry", -90, -45, tangent=1)
            common.sdk(driver, driven, "ry", "ry", -180, -90)

        if patella_guide.exists():
            j = JntNode("patella", pf=rID, align=patella_guide, r=rSz, p=self.upr)
            j.freezeXf()
            self.jnts_bind.append(j)
            patella_sdk(self.lwr, j)
            return j

    def build_ctl_jnt(self, ctls, r=1, color=1):
        """Create joint nodes for given controls."""
        result = []
        for ctl in ctls:
            jnt = JntNode(ctl, sf="_ctlJ", r=r, color=color, p=ctl)
            jnt.resetOrient()
            jnt.resetXf()
            result.append(jnt)
        return result

    def foot_rolling(
        self, targetCtl, heelRollG, ballRollG, footRollG, toeRollG, inRollG, outRollG
    ):
        """Foot roll logic for heel, ball, and toe controls."""
        from nl_modules.utils import utils_node as ut

        footRoll = targetCtl.a.add("footRoll")
        footBreak = targetCtl.a.add("footBreak", min=0, dv=30, k=0)
        ut.min_(0, footRoll) >> heelRollG.a.rx
        ut.clp_(footRoll, min=0, max=footBreak) >> ballRollG.a.rx
        ut.max_(0, (footRoll - footBreak)) >> footRollG.a.rx

        # self.ikc.a.add("heelTwist") >> heelRollG.a.ry
        # self.ikc.a.add("ballTwist") >> ballRollG.a.ry
        # self.ikc.a.add("toeTwist") >> toeRollG.a.ry
        # self.ikc.a.add("toeRoll") >> toeRollG.a.rx

        bank = targetCtl.a.add("footBank")
        (bank < 0).setCdn(ifTrue=bank, ifFalse=0) >> inRollG.a.rz
        (bank > 0).setCdn(ifTrue=bank, ifFalse=0) >> outRollG.a.rz

    def build_digit_ik_chain(self, tgt):
        """Build an IK chain for a digit (e.g., finger or toe) with two joints."""
        tgt = JntNode(tgt)
        name = f"{tgt.name}_ikj_#"

        j1 = JntNode(tgt.duplicate(po=1, name=name))
        j2 = JntNode(tgt.allChildrenJt[-1].duplicate(po=1, name=name))
        j1.setRadius(2, rel=1)
        j2.setRadius(2, rel=1)
        j2 | j1
        return j1, j2

    def build_digit_ik(self, ikTgt, scale=1, p=None):
        """Build an IK setup for a digit (e.g., finger or toe) with a control and joints."""
        # --- Create IK control for the digit ---
        n = f"{ikTgt.name}_ikc"
        ctl = CrvNode(
            n, shape="stickS", align=ikTgt, up="-z", scale=scale, addOfs=1, p=p
        )
        ctl.addOffsetGrp()

        # --- Duplicate joints for IK chain ---
        ikJ, ikJ_end = self.build_digit_ik_chain(ikTgt)
        ikJ.cstPoi(ctl.offset)

        # --- Create IK handle for the digit ---
        scale = self.masterC.a["globalScale"]
        ikH = IkNode(
            ikJ, sj=ikJ, ee=ikJ_end, scaleFix=scale, RIG_DATA=self.RIG_DATA, p=ctl
        )

        return ctl, ikJ, ikH

    def get_autoAim_preset(self):
        """Get preset values for auto aim weights based on the master guide attributes."""
        upW_attr = self.master_guide.a.autoUpWeight
        fwW_attr = self.master_guide.a.autoFwWeight
        dnW_attr = self.master_guide.a.autoDnWeight
        bkW_attr = self.master_guide.a.autoBkWeight

        upW = upW_attr.get() if upW_attr.exists() else 1
        fwW = fwW_attr.get() if fwW_attr.exists() else 1
        dnW = dnW_attr.get() if dnW_attr.exists() else 1
        bkW = bkW_attr.get() if bkW_attr.exists() else 1

        preset = []
        if self.rigID.startswith("lfArmBp") or self.rigID.startswith("rtArmBp"):
            preset = [upW, fwW, dnW, bkW]
        else:
            preset = [dnW, bkW, upW, fwW]
        return preset

    def build_nlAutoAim(self, startJ, endJ, fkc=None, ikc=None, ikcGim=None):
        """Build auto aim function for the given start and end joints."""
        rID, rSz, xDr = self.getMyVar()
        #
        #   create aim chain
        #
        self.jnts_am = common.dupSk([startJ, endJ], "_am", p=fkc.offset)
        base_loc = LocNode("base_loc", pf=rID, align=startJ, p=fkc.offset, size=rSz)
        #
        #   setup IK
        #
        auto_ikH = IkNode(
            "autoAim",
            pf=rID,
            sj=self.jnts_am[0],
            ee=self.jnts_am[1],
            solver=Solver.RP,
            p=self.RIG_DATA,
        )
        if ikcGim:
            ikcGim.cstPoi(auto_ikH)
        else:
            ikc.cstPoi(auto_ikH)
        auto_ikH.a.r.reset()
        #
        #   setup PSD & cst
        #
        autoAim = ikc.a.add("autoAim", min=0, max=1)
        psdAttr = self.build_uvPSD(
            tgtJ=endJ,
            ikc=ikc,
            ikcGim=ikcGim,
            ctlNum=4,
            cst=fkc.offset,
            preset=self.get_autoAim_preset(),
            p=self.CTL_DATA,
        )

        fkc_ofs = fkc.addOffsetGrp()
        common.cstMulti(
            base_loc, self.jnts_am[0], fkc_ofs, cstType="ori", w=autoAim * psdAttr
        )
        # Set driven key from aim joint to driven joint
        #
        #   ARM
        #       fwd bwd uwd dwd
        #       -y  +y  +z  -z
        #   LEG
        #       fwd bwd owd iwd
        #       +y  -y  -z  +z
        #
        # common.sdk(self.jnts_am[0], auto_dvn, "ry", "ry", -120, -120 * fwd * sign)
        # common.sdk(self.jnts_am[0], auto_dvn, "ry", "ry", 0, 0)
        # common.sdk(self.jnts_am[0], auto_dvn, "ry", "ry", 120, 120 * bwd * sign)
        # common.sdk(self.jnts_am[0], auto_dvn, "rz", "rz", 120, 120 * uwd * sign)
        # common.sdk(self.jnts_am[0], auto_dvn, "rz", "rz", 0, 0)
        # common.sdk(self.jnts_am[0], auto_dvn, "rz", "rz", -120, -120 * dwd * sign)

        # for _ in [-120, 0, 120]:
        #     common.sdk(self.jnts_am[0], auto_dvn, "ry", "ry", _, _)
        #     common.sdk(self.jnts_am[0], auto_dvn, "rz", "rz", _, _)

        auto_ikH.hide()
        # self.jnts_am[0].hide()

    def build_scapular(self, ikc=None, fkc=None, jnts=None, EXTRA=0, scapCtl=None):
        """Build scapular joint and auto aim function."""
        rID, rSz, xDr = self.getMyVar()
        hipJ = jnts[0]
        uprJ = jnts[1]

        # --- Main scapular group setup ---
        mainGrp = GrpNode("quadScap", pf=rID, align=hipJ, p=self.FK_GRP, addOfs=1)
        fkc.offset | mainGrp

        # --- Auto aim function setup ---
        j0, j1 = JntNode.makeTwoJointChain(
            "autoAim",
            pf=rID,
            snap=hipJ,
            offset=(xDr, 0, 0),
            u=(0, xDr, 0),
            p=mainGrp.offset,
            rad=rSz * 3,
            aimTgt=ikc,
        )
        IkNode("autoAimJ", solver=Solver.RP, pf=rID, sj=j0, ee=j1, p=ikc, quat=1, vis=0)
        autoAim = fkc.a.add("autoAim", min=0, max=1, dv=0)
        common.cstMulti(mainGrp.offset, j0, mainGrp, w=autoAim, cstType="parR", mo=1)
        j0.hide()

        if not EXTRA:
            self.jnts_bind.append(self.jnts[0])
        else:
            # --- Leg lock function setup ---
            aim = (xDr, 0, 0)
            u = (0, xDr, 0)
            wu = (0, 0, xDr)

            j0, j1 = JntNode.makeTwoJointChain(
                "legLock",
                pf=rID,
                snap=ikc,
                offset=aim,
                u=u,
                p=ikc,
                rad=rSz,
                aimTgt=hipJ,
            )
            IkNode("legLock", pf=rID, sj=j0, ee=j1, quat=1, p=mainGrp.offset, vis=0)
            legLock = ikc.a.add("legLock", min=0, max=1)
            ikc.a.add("legLockLen") * self.xDir >> fkc.offset.a.tx
            common.cstMulti(mainGrp.offset, j1, mainGrp, w=legLock, cstType="poi")
            j0.hide()

            # --- Extra scapular joint setup ---
            scapCtl.snapTo(uprJ, p=self.CTL_DATA)
            if xDr < 0:
                scapCtl.a.rx.set(180)
            scapCtl.addOffsetGrp()
            j0, j1 = JntNode.makeTwoJointChain(
                "scapular",
                pf=rID,
                snap=uprJ,
                offset=aim,
                u=u,
                wu=wu,
                p=uprJ,
                rad=rSz,
                aimTgt=hipJ,
            )
            scapCtl.cstOri(j0, mo=1)
            self.jnts_bind.append(j0)

            # --- Scapular helper setup (if guide exists) ---
            scapHelper = DagNode(rID + "_scapHelper_guide")
            if scapHelper.exists():
                j0, j1 = JntNode.makeTwoJointChain(
                    "scapHelper",
                    pf=rID,
                    align=scapHelper,
                    align_end=uprJ,
                    rad=rSz,
                    p=self.SKL_DATA,
                )
                IkNode("scapHelperJ", pf=rID, sj=j0, ee=j1, p=scapCtl)
                ofs = fkc.addOffsetGrp()
                j1.cstPoi(ofs, mo=1)
                mainGrp.cstPar(scapCtl.offset, mo=1)
                mainGrp.cstPar(j0, mo=1)

        return mainGrp

    def build_uvPSD(
        self, tgtJ=None, ikc=None, ikcGim=None, ctlNum=1, cst=None, preset=None, p=None
    ):
        """
        Create uv based pose base setup, useful for corrective blendshape fix
        or auto clav or hip
        Note:
            Since this is not using translate to rotate method for upper joint,
            moving the ikc toward the uv ball doesn't affect the target orientation
        """
        if not tgtJ.children:
            return

        rID, rSz, xDr = self.getMyVar()
        #
        #   create group & loc
        #
        tgtJ_child = tgtJ.children[0]
        psd_grp = GrpNode("PSD", pf=rID, p=p)
        psd_loc = LocNode("psd_loc_#", pf=rID, align=tgtJ_child, p=psd_grp)
        ctl_grp = GrpNode("ctl_grp", pf=rID, align=tgtJ, p=psd_grp)
        ctl_main = CrvNode(
            "psd_ctl",
            pf=rID,
            shape="cube",
            align=tgtJ,
            p=ctl_grp,
            scale=(rSz / 5, rSz * 2, rSz * 2),
        )
        ctl_main.a.showAttr(t=1, r=1)

        cst.cstPar(ctl_grp, mo=1)
        if ikcGim:
            ikcGim.cstPoi(psd_loc)
        else:
            ikc.cstPoi(psd_loc)

        allPsdCtl = []
        productSum = DagNode("pma__#", nodeType="plusMinusAverage")
        rx = 0

        for i in range(ctlNum):
            # create ctl
            ctl = CrvNode(
                "psd_ctl_#",
                pf=rID,
                shape="stick",
                # align=ctl_grp,
                align=ctl_main,
                scale=rSz / 4,
                p=ctl_main,
                top=1,
            )
            allPsdCtl.append(ctl)

            rx = i * 90
            if rID.startswith("rt"):
                rx -= 180
            ctl.a.rx.set(rx)
            ctl.addOffsetGrp()
            ctl.a.showAttr(t=1, r=1)
            #
            #   setup output value
            #
            hit = ctl.a.add("hit", min=0, max=1, k=0)
            weight_dv = 0.5
            if preset:
                weight_dv = preset[i]
            weight = ctl.a.add("weight", min=0, max=1, dv=weight_dv)
            hitWeighted = ctl.a.add("hitWeighted", min=0, max=1, dv=0.5)
            hit * weight >> hitWeighted
            hitWeighted >> productSum.a.input1D
            #
            #   create uv sphere
            #
            psd_ball = DagNode(
                mc.sphere(n=rID + "_psdBall_#", r=rSz, d=3, s=4, spans=2, ch=0)[0]
            )
            psd_ball.alignTo(ctl, ofsR=(0, 0, -90), p=ctl)
            #
            #   create cpos
            #
            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            psd_ball.shape.a.worldSpace >> cpos.a.inputSurface
            psd_loc.shape.a.worldPosition >> cpos.a.inPosition
            #
            #   create setRange
            #
            hitRange = ut.setRange_(cpos.a.parameterU, 0, 2, 1, 0)
            ut.setRange_(hitRange, 0.5, 1, 0, 1) >> hit
            #
            #   color debug
            #
            driven = ctl.shape.a.overrideColor
            common.sdk2(hit, driven, 0.1, 2, tangent=2)
            common.sdk2(hit, driven, 0.5, 1, tangent=2)
            common.sdk2(hit, driven, 0.9, 22, tangent=2)

        common.add_mirror_attr(allPsdCtl)
        self.add_ctl_set(allPsdCtl + [ctl_main])

        aimCtl = self.masterC2.a.add("aimCtl", attrType="bool", dv=1)
        aimCtl >> psd_grp.a.v
        #
        #   Connect total weight
        #
        autoWeight = ikc.a.add("autoWeight", cb=0)
        productSum.a.output1D >> autoWeight

        return autoWeight

    def ctl_vis_toggle(self, attr, onList=None, offList=None):
        """Toggle visibility of controls based on the given attribute."""

        if onList:
            [attr >> ctl.a.v for ctl in onList if ctl != None and ctl.exists()]
        if offList:
            [~attr >> ctl.a.v for ctl in offList if ctl != None and ctl.exists()]

    def getMyVar(self):
        """Get rig ID, size and x direction for the current rig instance."""
        return str(self.rigID), float(self.rigSize), int(self.xDir)

    # def genCrvLenRatio(self, rbSrf=None, scaleAttr=None):
    #     crv = CrvNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
    #     crv | self.RIG_DATA
    #     crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
    #     return (
    #         crvInfo.a.arcLength / self.masterC.a.globalScale / scaleAttr / crv.length
    #     )

    def build_motionPath_ribbon(
        self,
        rbSrf=None,
        jntNum=5,
        scaleAttr=None,
        stretchyAttr=None,
    ):
        """Build a motion path ribbon on the given surface with specified joint number."""
        rID, rSz, xDr = self.getMyVar()

        # --- Create a curve on the surface and calculate curve length ratio ---
        crv = CrvNode(mc.duplicateCurve(f"{rbSrf}.u[0.5]", rn=0, local=0)[0])
        crv | self.RIG_DATA

        crv_info = DagNode("crvInfo#", nodeType="curveInfo")
        crv.shape.a.worldSpace >> crv_info.a.inputCurve

        # --- Calculate curve length ratio based on the surface and scale attributes ---
        crv_len_ratio = crv_info.a.arcLength / scaleAttr / crv.length

        # --- Add joints onto the surface, supporting stretch and slider ---
        ratio_out = ut.blend2_(crv_len_ratio, 1, stretchyAttr)
        step = 1 / (jntNum - 1)
        loc_grp = GrpNode("loc_grp", pf=rID, p=self.SKL_DATA)
        rb_jnts = []

        for i in range(jntNum):
            # Motion path node
            mp_node = DagNode("mp_#", nodeType="motionPath")
            mp_node.a.fm.set(1)
            (i * step) / ratio_out >> mp_node.a.uValue

            # Surface position nodes
            cpos_node = DagNode("cpos_#", nodeType="closestPointOnSurface")
            posi_node = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
            posi_node.a.turnOnPercentage.set(1)

            # Aim constraint node
            aim_cst = DagNode("aimCst_#", nodeType="aimConstraint")
            aim_cst | self.RIG_DATA

            # Locator for joint placement
            loc = LocNode(f"{i}_loc", pf=rID, p=loc_grp)

            # Connections for curve and surface
            crv.shape.a.worldSpace >> mp_node.a.geometryPath
            mp_node.a.allCoordinates >> cpos_node.a.inPosition

            rbSrf.shape.a.worldSpace >> cpos_node.a.inputSurface
            cpos_node.a.parameterU >> posi_node.a.parameterU
            cpos_node.a.parameterV >> posi_node.a.parameterV
            rbSrf.shape.a.worldSpace >> posi_node.a.inputSurface

            # Connect tangent and position for orientation
            mc.connectAttr(
                f"{posi_node}.tangentV", f"{aim_cst}.target[0].targetTranslate"
            )
            posi_node.a.tangentU >> aim_cst.a.worldUpVector
            posi_node.a.position >> loc.a.translate

            # Connect aim constraint rotation to locator
            aim_cst.a.constraintRotateX >> loc.a.rx
            aim_cst.a.constraintRotateY >> loc.a.ry
            aim_cst.a.constraintRotateZ >> loc.a.rz

            # Create joint at locator
            # f"{i}_rbj", pf=rID, align=loc, r=rSz / jntNum * 12, p=loc, reset=1
            jnt = JntNode(f"{i}_rbj", pf=rID, align=loc, r=rSz * 2, p=loc, reset=1)
            rb_jnts.append(jnt)
            scaleAttr >> loc.a.s

            loc.shape.hide()

        return crv_len_ratio, rb_jnts

    def add_proxy_radiusScale(self, tgtJnts, v):
        """Add proxyRadiusScale attribute to target joints"""
        for jnt in tgtJnts:
            tgt = DagNode(jnt)
            if tgt.exists():
                tgt.a.add("proxyRadiusScale", k=0, dv=v)

    def add_proxy_div(self, tgtJnts, div=2):
        """Add proxyDiv attribute to target joints"""
        for jnt in tgtJnts:
            tgt = DagNode(jnt)
            if tgt.exists():
                tgt.a.add("proxyDiv", k=0, dv=div)

    def add_proxy_height(self, tgtJnts, v):
        """Add proxyDiv attribute to target joints"""
        for jnt in tgtJnts:
            tgt = DagNode(jnt)
            if tgt.exists():
                tgt.a.add("proxyHeight", k=0, dv=v)

    def get_guide_attr(self, name):
        """Get attribute from master guide"""
        return self.master_guide.a[name].get()

    def create_and_register_ctl(self, name, shape, up, scale, top, w, rID):
        """Create a control node and register it in the rigNode"""
        ctl = CrvNode(name, pf=rID, shape=shape, up=up, scale=scale, width=w, top=top)
        setattr(self, name, ctl)
        self.rigNode.setMsg({name: ctl})

    def updateBindJntList(self, extend=None, remove=None):
        """Remove joints from bindJnts list"""
        for jnt in remove or []:
            if jnt in self.jnts_bind:
                self.jnts_bind.remove(jnt)
        for jnt in extend or []:
            if jnt not in self.jnts_bind:
                self.jnts_bind.append(jnt)

    def build_extra(self, targets, up="y"):
        """Build roller joints for the specified targets."""
        rID, rSz, xDr = self.getMyVar()

        wu = u = (0, 1, 0)
        aim = (xDr * -1, 0, 0)
        wut = "objectrotation"
        r = rSz * 4
        CB = Color.BLACK

        for tgt in targets:
            # Create roller joint
            ro = tgt.a.rotateOrder.get()
            extraJ = JntNode(
                "jntExtra_#", pf=rID, align=tgt, r=r, p=tgt, ro=ro, color=CB
            )
            extraJ.resetOrient()
            extraJ.resetXf()
            tgt_p = tgt.parent
            if tgt_p and tgt_p.type == "joint":
                tgt_p.cstAim(
                    extraJ, aim=aim, worldUpType=wut, worldUpObject=tgt, u=u, wu=wu
                )

    def build_rollChain(self, jnt0, jnt1, num=2, suffix="_ro"):
        """Build a roll chain between two joints. Add locator for delta roll"""
        rID, rSz, xDr = self.getMyVar()
        tgt_p = jnt0.parent
        if not tgt_p or tgt_p.type != "joint":
            raise ValueError(f"No target parent or it is not a joint")

        # Create roll ik joints, and IK
        self.jnts_ro = common.dupSk(
            [jnt0, jnt1], suffix, r=self.rigSize / 2, color=Color.RED
        )
        # Allow only TX to have value. Important for case like the foot
        self.jnts_ro[1].a.ty.set(0)
        self.jnts_ro[1].a.tz.set(0)

        roll_ikH = IkNode(
            f"roll{suffix}",
            pf=rID,
            rSz=rSz,
            sj=jnt0,
            ee=jnt1,
            jsf=suffix,
            solver=Solver.RP,
            quat=1,
            p=jnt1,
            vis=0,
        )

        # Create roll locator
        roll_loc = LocNode(
            f"loc{suffix}",
            pf=rID,
            size=rSz * 10,
            align=self.jnts_ro[0],
            p=self.jnts_ro[0],
            color=Color.RED,
        )
        jnt0.cstOri(roll_loc)

        return roll_loc, self.jnts_ro[0], tgt_p

    def build_uprRollJ(self, jnt0, jnt1, num=2, suffix="_roll1"):
        """Build upper roller joints.
        They are added between jnt0 and jnt1.
        """
        roll_loc, roll_jnt0, tgt_p = self.build_rollChain(
            jnt0, jnt1, num, suffix=suffix
        )
        # Create roller joints, parented to roll_jnt0
        for i in range(num):
            j = jnt0.duplicate(po=1, p=roll_jnt0)
            j.rename(f"{jnt0.name}{suffix}_{i}")
            j.a.radius.set(self.rigSize * 2)

            ratio = i / num
            common.cstMulti(jnt0, jnt1, j, cstType="poi", w=1 - ratio)
            roll_loc.a.rx * ratio >> j.a.rx
            self.jnts_bind.append(j)

        return roll_jnt0

    def build_lwrRollJ(self, jnt0, jnt1, num=2, suffix="_roll2"):
        """Build lower roller joints.
        They are added between jnt0's parent and jnt0.
        """
        roll_loc, roll_jnt0, tgt_p = self.build_rollChain(
            jnt0, jnt1, num, suffix=suffix
        )
        # Create roller joints, parented to jnt0's parent
        for i in range(num):
            j = jnt0.duplicate(po=1)
            j.rename(f"{jnt0.name}{suffix}_{i}")
            j.a.radius.set(self.rigSize * 2)

            ratio = i / num
            common.cstMulti(jnt0, tgt_p, j, cstType="poi", w=1 - ratio)
            roll_loc.a.rx * (1 - ratio) >> j.a.rx
            if i > 0:
                self.jnts_bind.append(j)

        return roll_jnt0

    def build_rbn(self, tgt, name="", rbJNum=5, volMode=1):
        """Build a ribbon node for the target with specified parameters."""
        return RbnNode(
            tgt,
            pf=f"{self.rigID}_{name}_",
            rbJNum=rbJNum,
            volMode=volMode,
            scaleFix=self.masterC.a["globalScale"],
            size=self.rigSize * 2,
            p=self.RIG_DATA,
        )

    def build_bendy_ribbon(
        self, rbJNum=5, root=None, upr=None, lwr=None, palm=None, kneeFix=0
    ):
        """Build a ribbon rig with upper and lower parts, and setup controls."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()

        ribbonUp = self.build_rbn(upr, name="up", rbJNum=rbJNum, volMode=0)
        ribbonLw = self.build_rbn(lwr, name="lw", rbJNum=rbJNum, volMode=1)

        # Upper Ribbon
        upr.cstPoi(ribbonUp.stt_loc)
        root.cstOri(ribbonUp.stt_loc, mo=1)

        # Lower Ribbon
        palm.cstPar(ribbonLw.end_loc, mo=1)
        lwr.cstOri(ribbonLw.stt_jnt, mo=1)

        # Bend Ctl Setup
        upLoc = ribbonUp.mid_loc
        lwLoc = ribbonLw.mid_loc
        grp = self.CTL_DATA
        upr_bend = CrvNode("upr_bend", pf=rID, align=upLoc, addOfs=1, p=grp)
        lwr_bend = CrvNode("lwr_bend", pf=rID, align=lwLoc, addOfs=1, p=grp)
        mid_bend = CrvNode("mid_bend", pf=rID, align=lwr, addOfs=1, p=grp)

        self.all_bend = [upr_bend, lwr_bend, mid_bend]
        for ctl in self.all_bend:
            ctl(shape="ribbon", up="x", scale=rSz)

        upLoc.cstPar(upr_bend.offset, mo=1)
        if upLoc.children:
            mid_jnt = upLoc.children[0]
            upr_bend.cstParSca(mid_jnt, mo=1)

        lwLoc.cstPar(lwr_bend.offset, mo=1)
        if lwLoc.children:
            mid_jnt = lwLoc.children[0]
            lwr_bend.cstParSca(mid_jnt, mo=1)

        lwr.cstPar(mid_bend.offset, mo=1)
        mid_bend.cstParSca(ribbonUp.end_loc, mo=1)
        stt_ofs = ribbonLw.stt_loc.addOffsetGrp(count=2)
        mid_bend.cstParSca(stt_ofs[0], mo=1)

        if kneeFix:
            self.boneFix_sdk(lwr, stt_ofs[1])

        # Add volume attributes to setting
        autoVol = self.setting.a.add("autoVol")
        autoVol >> ribbonUp.autoVol
        autoVol >> ribbonLw.autoVol

        volType = self.setting.a.add(
            "volType", attrType="enum", enumName="whole:separate", k=0
        )
        volType >> ribbonUp.volType
        volType >> ribbonLw.volType

        # Update bind joints
        self.updateBindJntList(
            remove=[upr, lwr], extend=ribbonUp.jnts_rb + ribbonLw.jnts_rb
        )

        return [ribbonUp, ribbonLw]
