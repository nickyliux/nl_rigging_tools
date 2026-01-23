import logging
from unittest import result
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
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color
from nl_modules.utils.common import Vec

DEFAULT_LINE_WIDTH = -1


class RigModule(RigBase):
    """Base class for rig modules, providing common functionality for rigging operations."""

    def __init__(self, rigNode):

        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        if not rigNode.exists():
            mc.confirmDialog(
                title="Info", message="Missing rigNode !      ", button=["OK"]
            )
            raise RuntimeError("Missing rigNode !")

        super().__init__(rigNode)

        rID = self.rigID
        self.CTL_DATA = GrpNode(rID + "_ctl_data", p=self.masterC)
        self.JNT_DATA = GrpNode(rID + "_jnt_data", p=self.JNT)

        self.moduleG = rigNode.a.moduleG.inConnNode
        if not self.moduleG:
            raise ValueError(f"moduleG not found at {rigNode}")

        self.master_guide = rigNode.a.master_guide.inConnNode
        if not self.master_guide:
            raise ValueError(f"master_guide not found for {rigNode}")

        self.rigSize = 1
        self.xDir = 1 if rID.startswith("lf") else -1 if rID.startswith("rt") else 0
        self.boneFix = None
        self.jnts_bind = []
        self.all_bendy = []

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

        diagSize = self.master_guide.o.diagonal2 / 100 * scale
        [j.a.radius.set(diagSize) for j in joints]

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
        """FK setup for toe
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
    def isolate_align(tgt, spaces=None, attrName="global", dv=1, cstType="ori"):
        """Add isolate attr to tgt to allow separate cst for the neck"""
        allSpaces = []
        if len(spaces) == 2:
            for space in spaces:
                spaceG = GrpNode(tgt + "_SPACE_#", align=tgt, p=space)
                spaceG.addOffsetGrp()
                allSpaces.append(spaceG)

            tgt = DagNode(tgt) if isinstance(tgt, str) else tgt
            tgt_ofs = tgt.addOffsetGrp()
            attr = tgt.a.add(attrName, min=0, max=1, dv=dv)
            common.cstMulti(*allSpaces, tgt_ofs, cstType=cstType, w=attr)
            return attr

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

        weight = w or tgt.a.add("space", type="enum", dv=dv, enumName=names)

        v = tgt.a["spaceType"].get()
        tgtCstType = "par" if v == 0 else "ori"
        common.cstMulti(*allSpacesGrp, tgt_ofs, cstType=tgtCstType, w=weight, **kwargs)

        if v == 2 and w is None:
            weight = tgt.a.add("posSpace", type="enum", dv=dv, enumName=names)
            common.cstMulti(*allSpacesGrp, tgt_ofs, cstType="poi", w=weight, **kwargs)

    def calc_rig_size(self, tgt):
        """Calculate the rig size based on tgt's BBox."""
        return tgt.o.diagonal2 / 100 or 1

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
            self.xDir = (
                1
                if children[0].a.tx.get() > 0
                else -1 if children[0].a.tx.get() < 0 else 0
            )

    def build_post_module(self):
        """Post build function to finalize the module setup."""
        from nl_modules.utils import build

        showSetting = self.masterC2.a.add("showSetting", k=0, type="bool", dv=1)
        for node in build.getRigNodes_all():
            setting = node.a.setting.inConnNode
            if setting and setting.exists():
                showSetting >> setting.a.v

        mc.hide(self.moduleG)

    def unbuild_pre_module(self):
        """Prepare for unbuilding the rig module, resetting the rigNode state."""
        logging.info(self.rigID)

        common.pauseVP(1)
        self.moduleG.show()

        prx = mc.ls(self.rigID + "_*_pxGeo*")
        if prx:
            mc.delete(prx)

        self.JNT_DATA.delete()

        rootJ = self.rigNode.a.rootJ.inConnNode
        if rootJ:
            rootJ.delete()

        for n in self.DIM.children + self.masterC.children:
            if n.name.startswith(self.rigID):
                n.delete()

        # for attr in ["anchorS1", "anchorP1", "anchorP2"]:
        #     anchor = self.rigNode.a[attr]
        #     if anchor.exists() and anchor.inConnNode:
        #         anchor.inConnNode.delete()

        # setting = self.rigNode.a.setting.inConnNode
        # if setting:
        #     showSetup = setting.a.showSetup
        #     if showSetup.exists():
        #         showSetup.set(1)
        #         nodes = showSetup.outConnNode
        #         if nodes:
        #             print(nodes)
        #             mc.delete(nodes)

        self.CTL_DATA.delete()
        self.rigNode.a.nodeState.set(0)
        common.pauseVP(0)

    def setup_anchor_module(self, anchorDict=None):
        """
        S : socket, for driven,
            e.g.  hand has 1 S-anchor, wire has 2 S-anchors
        P : plug, for driver.
            e.g.  spine has 2 P-anchors, arm has 1 P-anchor
        """
        rID, rSz, xDr = self.getMyVar()

        for name, tgt in anchorDict.items():
            loc = LocNode(name, pf=rID, size=rSz * 15, p=self.CTL_DATA)
            self.rigNode.setMsg({name: loc})

            if name.startswith("anchorP"):  # plug color
                loc.color = 18
                tgt.cstPar(loc)
            elif name.startswith("anchorS"):  # socket color
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

    def add_bind_jnt_set(self, tgtList, tgtSet="auto_bind_jnt_set"):
        """Add bind joint set for target joints"""
        if DagNode(tgtSet).exists():
            mc.sets(tgtList, add=tgtSet)
        else:
            mc.sets(tgtList, n=tgtSet)

        self.jnts_bind.extend(tgtList)

    @staticmethod
    def add_dyn_pivot_extra(tgt, snap=None, scale=1):
        """Add movable pivot ctl under tgt"""
        tgt = DagNode(tgt) if isinstance(tgt, str) else tgt

        pvt = CrvNode(
            tgt + "_pvt", shape="locator", align=tgt, p=tgt, scale=scale, top=1
        )
        pvt.a.t >> tgt.a.rotatePivot
        tgt.a.add("showPivotCtl", k=1, dv=1, type="bool") >> pvt.a.v
        if snap:
            pvt.snapTo(snap)

        pvt.a.showAttr(t=1)
        return pvt

    @staticmethod
    def add_dyn_pivot(tgt, endTgt=None, axis="ty", dv=0):
        """Add movable pivot ctl under tgt"""

        # Calculate world space end value in this axis (wsEndValue)
        # Assume ending at origin if endTgt is not given
        wsXformTgt = mc.xform(tgt.name, q=1, ws=1, t=1)
        endValue = 0
        wsEndValue = 0

        if axis == "ty":
            if DagNode(endTgt).exists():
                endValue = mc.xform(endTgt, q=1, ws=1, t=1)[1]
            wsEndValue = endValue - wsXformTgt[1]
        else:
            zeroValue = wsXformTgt[2]
            if DagNode(endTgt).exists():
                endValue = mc.xform(endTgt, q=1, ws=1, t=1)[2]
            wsEndValue = endValue - wsXformTgt[2]

        # Drive rotate pivot
        if axis == "ty":
            pivPosY = tgt.a.add("pivotPosY", min=0, max=1, dv=dv)
            remapped = ut.remap_(pivPosY, 0, 1, 0, wsEndValue)
            remapped >> tgt.a.rotatePivotY
        else:
            pivPosZ = tgt.a.add("pivotPosZ", min=0, max=1, dv=dv)
            remapped = ut.remap_(pivPosZ, 0, 1, 0, wsEndValue)
            remapped >> tgt.a.rotatePivotZ

        # Show pivot location using annotation
        ann = DagNode("ann_#", nodeType="annotationShape")
        ann.a.text.set(".", type="string")
        ann.a.displayArrow.set(0)
        ann.parent.snapTo(tgt, p=tgt)
        tgt.a.rotatePivot >> ann.parent.a.t

    def kneeFix_setup(self, tgt, tgtChild):
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

    def boneFix_sdk(self, driver, driven):
        """ "Setup SDK for bone fix to drive the leg joint."""
        rID, rSz, xDr = self.getMyVar()

        s = rSz * xDr
        common.sdk(driver, driven, "ry", "tz", 0, 0, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -70, -2 * s, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -150, -8 * s, tangent=1)

        common.sdk(driver, driven, "ry", "tx", 0, 0, tangent=1)
        common.sdk(driver, driven, "ry", "tx", -80, s * 2.5, tangent=1)
        common.sdk(driver, driven, "ry", "tx", -180, -1, tangent=1)

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
            j = JntNode("patella", pf=rID, align=patella_guide, r=rSz / 2, p=self.upr)
            j.freezeXf()
            self.jnts_bind.append(j)
            patella_sdk(self.lwr, j)
            return j

    def build_ctlJnt(self, ctls, r=1, color=1):
        """Create joint nodes for given controls."""
        result = []
        for ctl in ctls:
            jnt = JntNode(ctl, sf="_ctlJ", r=r, color=color, p=ctl)
            jnt.resetOrient()
            jnt.resetXf()
            result.append(jnt)
        return result

    def build_fiveJnts(self, ctls, r=1, color=1):
        """Create five joint nodes for given controls, with two additional end joints."""
        rbnBindJnts = []
        for ctl in ctls:
            jnt = JntNode(ctl, sf="_rbBdJ", r=r, color=color, p=ctl)
            jnt.resetOrient()
            jnt.resetXf()
            rbnBindJnts.append(jnt)

        endJ1 = rbnBindJnts[0].duplicate()
        common.cstMulti(
            rbnBindJnts[0], rbnBindJnts[1], endJ1, cstType="poi", w=0.5, delete=1
        )
        endJ2 = rbnBindJnts[-1].duplicate()
        common.cstMulti(
            rbnBindJnts[-1], rbnBindJnts[-2], endJ2, cstType="poi", w=0.5, delete=1
        )
        return [rbnBindJnts[0], endJ1, rbnBindJnts[1], endJ2, rbnBindJnts[2]]

    def foot_rolling(
        self, targetCtl, heelRollG, ballRollG, footRollG, toeRollG, inRollG, outRollG
    ):
        """Foot roll logic for heel, ball, and toe controls."""
        from nl_modules.utils import utils_node as ut

        footRoll = targetCtl.a.add("footRoll")
        footBreak = targetCtl.a.add("footBreak", min=0, dv=50, k=0)
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
        ikJ, ikJ_end = self.build_digit_ik_chain(ikTgt)
        ikH = IkNode(
            ikJ,
            sj=ikJ,
            ee=ikJ_end,
            scaleFix=self.masterC.a["globalScale"],
            p_data=self.CTL_DATA,
            p=p,
        )
        return ikJ, ikH

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
            p=self.CTL_DATA,
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

        # auto_ikH.hide()
        # self.jnts_am[0].hide()

    def build_legScapula(
        self, ikc=None, fkc=None, jnts=None, EXTRA=0, scapCtl=None, autoAim_dv=0
    ):
        """Build scapula joint and auto aim function."""
        rID, rSz, xDr = self.getMyVar()
        hipJ = jnts[0]
        uprJ = jnts[1]

        # --- Main scapula group setup ---
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
            rad=rSz * 2,
            aimTgt=ikc,
        )
        IkNode("autoAimJ", solver=Solver.RP, pf=rID, sj=j0, ee=j1, p=ikc, quat=1, vis=0)
        autoAim = fkc.a.add("autoAim", min=0, max=1, dv=autoAim_dv)
        common.cstMulti(mainGrp.offset, j0, mainGrp, w=autoAim, cstType="parR", mo=1)
        j0.hide()

        if not EXTRA:
            self.jnts_bind.append(self.jnts[0])
        else:
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

            # --- Extra scapula joint setup ---
            if xDr < 0:
                scapCtl.a.rx.set(180)
            scapCtl.snapTo(uprJ, p=fkc)

            scapCtl.addOffsetGrp()
            j0, j1 = JntNode.makeTwoJointChain(
                "scapula",
                pf=rID,
                snap=uprJ,
                offset=aim,
                u=u,
                wu=wu,
                p=uprJ,
                rad=rSz,
                aimTgt=hipJ,
            )
            IkNode("scapAim", pf=rID, sj=j0, ee=j1, p=scapCtl, vis=0)
            self.jnts_bind.append(j0)

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

        aimCtl = self.masterC2.a.add("aimCtl", type="bool", dv=1)
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

    def get_guide_attr(self, name):
        """Get attribute from master guide"""
        return self.master_guide.a[name].get()

    def create_and_register_ctl(
        self,
        rID="tmp_",
        name="x",
        shape="circle",
        up="x",
        scale=1,
        top=0,
        w=DEFAULT_LINE_WIDTH,
    ):
        """Create a control node and register it in the rigNode"""
        ctl = CrvNode(name, pf=rID, shape=shape, up=up, scale=scale, width=w, top=top)
        setattr(self, name, ctl)
        self.rigNode.setMsg({name: ctl})

    def build_aimHelper(self, targets, up="y", addCtl=0):
        """Build roller joints for the specified targets."""
        rID, rSz, xDr = self.getMyVar()

        wu = u = (0, 1, 0)
        aim = (xDr * -1, 0, 0)
        wut = "objectrotation"
        r = rSz * 5
        COL = Color.VD_GREEN

        aimJnts = []
        for tgt in targets:
            ro = tgt.a.rotateOrder.get()
            extraJ = JntNode(
                tgt + "_aimHelper", align=tgt, r=r, p=tgt, ro=ro, color=COL
            )
            extraJ.resetOrient()
            extraJ.resetXf()
            tgt_p = tgt.parent
            if tgt_p and tgt_p.type == "joint":
                tgt_p.cstAim(
                    extraJ, aim=aim, worldUpType=wut, worldUpObject=tgt, u=u, wu=wu
                )
            aimJnts.append(extraJ)

        upCtls = []
        for tgt in targets:
            if addCtl:
                upCtl = CrvNode(
                    "" + tgt.name + "_upCtl",
                    shape="rotate2_3d",
                    align=tgt,
                    scale=rSz * self.xDir,
                    p=self.CTL_DATA,
                    addOfs=1,
                )
                tgt.cstPar(upCtl.offset)
                upCtls.append(upCtl)

            ro = tgt.a.rotateOrder.get()
            extraJ = JntNode(
                tgt + "_aimHelperP", align=tgt, r=r * 1.5, p=tgt, ro=ro, color=COL
            )
            extraJ.resetOrient()
            extraJ.resetXf()
            tgt_p = tgt.parent
            if tgt_p and tgt_p.type == "joint":
                wuo = upCtl if addCtl else tgt_p
                tgt_p.cstAim(
                    extraJ, aim=aim, worldUpType=wut, worldUpObject=wuo, u=u, wu=wu
                )
            aimJnts.append(extraJ)

        if addCtl:
            return aimJnts, upCtls
        else:
            return aimJnts

    def build_rollChain(self, jnt0, jnt1, num=2, sf="_ro"):
        """Build a roll chain between two joints. Add locator for delta roll"""
        rID, rSz, xDr = self.getMyVar()
        tgt_p = jnt0.parent
        if not tgt_p or tgt_p.type != "joint":
            raise ValueError(f"No target parent or it is not a joint")

        self.jnts_ro = common.dupSk([jnt0, jnt1], sf, r=rSz)
        self.jnts_ro[1].a.ty.set(0)
        self.jnts_ro[1].a.tz.set(0)

        roll_ikH = IkNode(
            f"{jnt0.name}_roll",
            rSz=rSz,
            sj=jnt0,
            ee=jnt1,
            jsf=sf,
            solver=Solver.RP,
            quat=1,
            p=jnt0,
            vis=0,
        )
        roll_loc = LocNode(
            jnt0.name,
            sf="_loc",
            size=rSz * 10,
            align=self.jnts_ro[0],
            p=self.jnts_ro[0],
        )
        jnt0.cstOri(roll_loc)
        return roll_loc, self.jnts_ro[0]

    def build_uprRollJ(self, jnt0, jnt1, num=2, sf="_ro"):
        """Build upper roller joints. They are added between jnt0 and jnt1."""
        roll_loc, roll_jnt0 = self.build_rollChain(jnt0, jnt1, num, sf)
        rollJnts = []

        for i in range(num):
            j = jnt0.duplicate(po=1, p=roll_jnt0)
            j.color = Color.PINK
            j.a.radius.set(self.rigSize * 3)
            j.rename(f"{jnt0.name}{sf}_{i}")
            proxy.add_height_attr([j], self.rigSize / num * 20)

            ratio = i / num
            common.cstMulti(jnt0, jnt1, j, cstType="poi", w=1 - ratio)
            roll_loc.a.rx * ratio >> j.a.rx
            rollJnts.append(j)

        mc.hide(roll_loc)
        JntNode(roll_jnt0).setDrawStyle(2)
        # return rollJnts
        return roll_jnt0

    def build_rbn(self, tgt, name="", rbnJntNum=5, volMode=1, up="tz"):
        """Build a ribbon node for the target with specified parameters."""
        return RbnNode(
            tgt,
            pf=f"{self.rigID}_{name}_",
            num=rbnJntNum,
            volMode=volMode,
            scaleFix=self.masterC.a["globalScale"],
            p_data=self.CTL_DATA,
            up=up,
        )

    def build_bendy_ribbon(
        self,
        jntNum=5,
        root=None,
        upr=None,
        lwr=None,
        palm=None,
        kneeFix=0,
        up1="tz",
        up2="tz",
    ):
        """Build a ribbon rig with upper and lower parts, and setup controls."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        ribbonUp = self.build_rbn(upr, name="up", rbnJntNum=jntNum, volMode=0, up=up1)
        ribbonLw = self.build_rbn(lwr, name="lw", rbnJntNum=jntNum, volMode=1, up=up2)

        # Upper Ribbon
        upr.cstPoi(ribbonUp.stt_loc)
        root.cstOri(ribbonUp.stt_loc, mo=1)

        # Lower Ribbon
        ribbonUp.end_jnt.a.rx >> ribbonLw.stt_jnt.a.rx  # twist follow
        palm.cstPar(ribbonLw.end_loc, mo=1)

        # Bend Ctl Setup
        upLoc = ribbonUp.mid_loc
        lwLoc = ribbonLw.mid_loc

        grp = self.CTL_DATA
        upr_bend = CrvNode("upr_bend", pf=rID, align=upLoc, addOfs=1, p=grp)
        lwr_bend = CrvNode("lwr_bend", pf=rID, align=lwLoc, addOfs=1, p=grp)
        mid_bend = CrvNode("mid_bend", pf=rID, align=lwr, addOfs=1, p=grp)

        self.all_bendy = [upr_bend, mid_bend, lwr_bend]
        for ctl in self.all_bendy:
            ctl(shape="square", up="x", scale=rSz * 1.2, color=Color.PINK)

        upLoc.cstPar(upr_bend.offset, mo=1)
        if upLoc.children:
            upr_bend.cstPar(upLoc.children[0], mo=1)
            upr_bend.a.s >> upLoc.children[0].a.s

        lwLoc.cstPar(lwr_bend.offset, mo=1)
        if lwLoc.children:
            lwr_bend.cstPar(lwLoc.children[0], mo=1)
            lwr_bend.a.s >> lwLoc.children[0].a.s

        lwr.cstPar(mid_bend.offset, mo=1)
        mid_bend.cstParSca(ribbonUp.end_loc, mo=1)
        stt_ofs = ribbonLw.stt_loc.addOffsetGrp(count=2)
        mid_bend.cstParSca(stt_ofs[0], mo=1)

        if kneeFix:
            self.boneFix_sdk(lwr, stt_ofs[1])

        # Add volume attributes to setting
        autoVol = self.setting.a.add("autoVol", min=0, dv=0.5)
        autoVol >> ribbonUp.autoVol
        autoVol >> ribbonLw.autoVol

        volType = self.setting.a.add(
            "volType", type="enum", enumName="whole:separate", k=0
        )
        volType >> ribbonUp.volType
        volType >> ribbonLw.volType

        self.jnts_bind += ribbonUp.jnts_rb + ribbonLw.jnts_rb
        return [ribbonUp, ribbonLw]
