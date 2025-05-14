import maya.cmds as mc
import logging
from nl_modules.build.rig_base import RigBase
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color

BIND_JNT_SET = "bind_jnt_set"


class RigModule(RigBase):
    """Create rig module containing basic functions for given rigNode.
    e.g.
        n = RigModule('lfArm0_RGN')
        n.__dict__
    """

    def __init__(self, rigNode):

        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)

        rID = self.rigID
        self.RIG_DATA = GroupNode(rID + "_rig_data", p=self.RIG)
        self.CTL_DATA = GroupNode(rID + "_ctl_data", p=self.masterC)
        self.SKL_DATA = GroupNode(rID + "_skl_data", p=self.SKL)

        self.moduleG = rigNode.a.moduleG.inConnNode
        if not self.moduleG:
            logging.info("moduleG not found in RigNode !")

        self.master_guide = rigNode.a.master_guide.inConnNode
        if not self.master_guide:
            logging.info("master_guide not found in RigNode !")

        self.rigSize = 1
        self.xDir = 1
        self.boneFix = None
        self.bindJnts = []

        if rigNode.a.rootJ.exists():
            self.rootJ = rigNode.a.rootJ.inConnNode

    def gen_sk_fr_names(self, names, color=None, scale=1):
        """Create joints by finding object : pf_name_guide' from name list"""
        rID, rSz, xDr = self.getMyVar()

        if isinstance(names, str):
            names = [names]
        #
        #   add tgt to dict
        #
        guides = []
        for n in names:
            guide_name = f"{rID}_{n}_guide"
            if not mc.objExists(guide_name):
                logging.error(f"missing object: {guide_name}")
                return
            guides.append(DagNode(guide_name))
        #
        #   create joints
        #
        guideDict = dict(zip(names, guides))
        currClass = self.__class__.__name__
        joints = []
        lastJ = None
        for key in guideDict:
            jN = JointNode(f"{rID}_{key}", align=guideDict[key], color=color)
            if (currClass == "Arm" or currClass == "Leg") and key == "lwr":
                jN.a.preferredAngleY.set(-45)
            if lastJ:
                jN | lastJ
            lastJ = jN
            joints.append(jN)
        #
        #   set joint radius from rigSize
        #
        self.rigSize = self.calc_rig_size(joints[0])
        for j in joints:
            j.a.radius.set(self.rigSize * scale)

        return joints

    @staticmethod
    def build_fk_with_ctl(jntList, ctlList=None, ori=0, count=1, p=None):
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
        ctlList = ctlList or [CurveNode(j + "_fkc") for j in jntList]

        for jnt, ctl in zip(jntList, ctlList):

            ctl.alignTo(jnt)
            if ori:
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
        ctlList = ctlList or [CurveNode(j + "_fkc") for j in jntList]
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
        ctlList = ctlList or [CurveNode(j + "_fkc") for j in jntList]
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
                newCtl.append(CurveNode(j + "_fkc"))
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

                # if i == 0:
                #     drvList[i].a.s >> ctl_ofs[i].a.s
                #
                # drvList[i].a.s >> dbl_ctl_ofs[0].a.s
                i += 1

    @staticmethod
    def isolate_align(tgt, spaces=None, attrName="isolate", dv=0, cstType="ori"):
        """Add 'isolate' to tgt to allow separate cst"""
        allSpaces = []
        if len(spaces) == 2:
            for space in spaces:
                spaceG = GroupNode(tgt + "_SPACE_#", align=tgt, p=space)
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
        """Add 'isolateT' & 'isolateR' to tgt to allow separate cst specially for the neck"""
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
        allSpacesGrp = []
        for space in spaces:
            spaceG = GroupNode(tgt + "_SPACE_#", align=tgt, p=space)
            spaceG.addOffsetGrp()
            allSpacesGrp.append(spaceG)
        tgt_ofs = tgt.addOffsetGrp()
        if w is None:
            w = tgt.a.add("space", attrType="enum", dv=dv, enumName=names)

        common.cstMulti(*allSpacesGrp, tgt_ofs, cstType=cstType, w=w, **kwargs)

    def calc_rig_size(self, rootJ):
        return rootJ.o.diagonal2 / 100 or 1

    def add_minus_scale_grp(self, tgt):
        rID, rSz, xDr = self.getMyVar()
        if rID.startswith("rt_"):
            tgt.a.rx.set2(180, add=1)
            tgt.a.ry.set2(180, add=1)
            tgt.addOffsetGrp().a.sz.set(-1)
        else:
            tgt.addOffsetGrp()

    def gen_guide_sk_module(self, jnt_names):
        self.rigNode.a.nodeState.set(1)

        rootCtl = self.masterC.parent.parent
        if rootCtl.a.sx.get() != 1:
            rootCtl.freezeXf(t=0, r=0, s=1)

        jnt_list = self.gen_sk_fr_names(jnt_names)

        self.rootJ = jnt_list[0]
        self.rootJ | self.SKL_DATA
        self.rootJ.freezeXf()
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_module(self):
        rID, rSz, xDr = self.getMyVar()
        logging.info(rID)

        self.rigNode.a.nodeState.set(2)

        children = self.rootJ.childrenJt
        if children:
            self.xDir = 1 if children[0].a.tx.get() > 0 else -1

        # update all joints' radius
        joints = self.rootJ.allChildrenJt2
        for j in joints:
            j.a.radius.set(rSz)

        self.rigSize = self.calc_rig_size(self.rootJ)

    def post_module(self):
        rID, rSz, xDr = self.getMyVar()

        logging.info(rID)
        self.moduleG.hide()

        for obj in mc.ls(tr=1):
            mc.setAttr(obj + ".ro", cb=1)

        if self.PRX:
            self.masterC2.a["showProxy"] >> self.PRX.a.v

        self.ctl_vis_toggle(self.masterC2.a["debug"], onList=[self.RIG, self.SKL])

    def unbuild_module(self):
        rID, rSz, xDr = self.getMyVar()

        logging.info(rID)
        self.moduleG.show()
        self.CTL_DATA.delete()
        self.SKL_DATA.delete()
        self.RIG_DATA.delete()

        rootJ = self.rigNode.a.rootJ.inConnNode
        if rootJ:
            rootJ.delete()
        for xf in self.DIM.children:
            if xf.name.startswith(rID):
                xf.delete()
        for xf in self.masterC.children:
            if xf.name.startswith(rID):
                xf.delete()

        for attr in ["anchorF1", "anchorM1", "anchorM2"]:
            anchor = self.rigNode.a[attr]
            if anchor.exists() and anchor.inConnNode:
                anchor.inConnNode.delete()

        self.rigNode.a.nodeState.set(0)
        prx = mc.ls(rID + "_*_pxGeo*")
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
            loc = LocNode(name, pf=rID, size=rSz * 2, p=self.masterC)
            self.rigNode.setMsg({name: loc})

            if name.startswith("anchorM"):  # Blue for Male
                loc.color = Color.L_BLUE
                tgt.cstPar(loc)
            elif name.startswith("anchorF"):  # Pink for Female
                loc.color = Color.PINK
                loc.alignTo(tgt)
                loc.cstPar(tgt.offset, mo=1)

    def add_ctl_set(self, tgtList):
        rID, rSz, xDr = self.getMyVar()
        setName = rID + "_ctl_set"
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
            piv_ref = CurveNode(
                tgt + "_pvt_ctl",
                shape="locator",
                align=tgt,
                scale=scale,
                p=tgt,
                # dspType=2,
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
        mc.hide(upLoc)
        self.boneFix = tgtDup
        self.boneFix_sdk(tgt, tgtDup)

    def boneFix_sdk(self, driver, driven):
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
        rID, rSz, xDr = self.getMyVar()

        patella_guide = DagNode(rID + "_patella_guide")

        def patella_sdk(driver, driven):
            common.sdk(driver, driven, "ry", "ry", 0, 0)
            common.sdk(driver, driven, "ry", "ry", -20, -1, tangent=1)
            common.sdk(driver, driven, "ry", "ry", -90, -45, tangent=1)
            common.sdk(driver, driven, "ry", "ry", -180, -90)

        if patella_guide.exists():
            j = JointNode(
                "patella", pf=rID, align=patella_guide, color=13, r=rSz, p=self.upr
            )
            j.freezeXf()
            self.bindJnts.append(j)
            patella_sdk(self.lwr, j)
            return j

    def build_ctl_jnt(self, ctls, r=1, color=1):
        result = []
        for ctl in ctls:
            jnt = JointNode(ctl, sf="_ctlJ", r=r, color=color, p=ctl)
            jnt.resetOrient()
            jnt.resetXf()
            result.append(jnt)
        return result

    def hand_roll_logic(self, attrHolder, fkc, fkPin, locRoll):
        palmRoll = attrHolder.a.add("palmRoll")
        palmRoll * -1 >> locRoll.a.rz
        fkc.a.add("palmRoll", proxy=palmRoll)
        fkPin.a.add("palmRoll", proxy=palmRoll)

    def hand_bank_logic(self, attrHolder, fkc, fkPin, locIn, locOut):
        palmBank = attrHolder.a.add("palmBank")
        ut.min_(palmBank, 0) * -1 >> locIn.a.rx
        ut.max_(0, palmBank) * -1 >> locOut.a.rx

        fkc.a.add("palmBank", proxy=palmBank)
        fkPin.a.add("palmBank", proxy=palmBank)

    def foot_roll_logic(self, targetCtl, heelRollG, ballRollG, footRollG, toeRollG):
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

    def foot_bank_logic(self, targetCtl, inRollG, outRollG):
        bank = targetCtl.a.add("footBank")
        (bank < 0).setCdn(ifTrue=bank, ifFalse=0) >> inRollG.a.rz
        (bank > 0).setCdn(ifTrue=bank, ifFalse=0) >> outRollG.a.rz

    def add_mirror_attr(self, targets):
        for t in targets:
            if t.exists():
                t.a.add("wsMirror", k=0, lock=1, cb=0)

    def build_digit_ik(self, dupTgt, scale=1, p=None):
        """IK setup for single digit"""
        from nl_modules.nodel.ik_node import IkNode

        dupTgt = JointNode(dupTgt)
        ctl = CurveNode(
            dupTgt + "_ikc",
            shape="stickC",
            align=dupTgt,
            up="-z",
            scale=scale,
            addOfs=1,
            p=p,
        )
        ikJ = dupTgt.duplicate()
        ikJ.setRadius(2, rel=1)

        endJ = ikJ.allChildrenJt[-1]
        if endJ not in ikJ.children:
            endJ | ikJ
            ikJ.children[0].delete()
        ikJ.rename(ikJ.name + "_ikJ")
        endJ.rename(ikJ.name + "_end_ikJ")
        ikH = IkNode(
            ikJ,
            sj=ikJ,
            ee=endJ,
            sol=0,
            scaleFix=self.masterC.a["globalScale"],
            RIG_DATA=self.RIG_DATA,
            p=ctl,
        )
        return ctl, ikJ, ikH

    def get_autoAim_preset(self):
        rID, rSz, xDr = self.getMyVar()
        preset = [1, 1, 1, 1]

        upW = self.master_guide.a.autoUpWeight.get()
        fwW = self.master_guide.a.autoFwWeight.get()
        dnW = self.master_guide.a.autoDnWeight.get()
        bkW = self.master_guide.a.autoBkWeight.get()

        if rID.startswith("lfArm") or rID.startswith("rtArm"):
            preset = [upW, fwW, dnW, bkW]
        elif rID.startswith("lfLeg") or rID.startswith("rtLeg"):
            preset = [dnW, bkW, upW, fwW]

        return preset

    def build_autoAim(
        self, startJ, endJ, fkc=None, ikc=None, ikcGim=None, setting=None
    ):
        """
        Setup auto clavicle / hip using simple ik and orient cst
        Limit on side is calculted with the uvPSD setup
        """
        from nl_modules.nodel.ik_node import IkNode

        rID, rSz, xDr = self.getMyVar()

        # create aim chain
        self.joints_am = common.extractSk([startJ, endJ], "_am", p=fkc.offset)
        base_loc = LocNode(
            "base_loc", pf=rID, align=self.joints_am[0], p=fkc.offset, size=rSz
        )

        # setup IK
        auto_ikH = IkNode(
            "autoAim",
            pf=rID,
            sj=self.joints_am[0],
            ee=self.joints_am[1],
            quat=1,
            p=self.RIG_DATA,
        )
        if ikcGim:
            ikcGim.cstPoi(auto_ikH)
        else:
            ikc.cstPoi(auto_ikH)

        # setup PSD & cst
        autoAim = ikc.a.add("autoAim", min=0, max=1)
        psdAttr = self.build_uvPSD(
            tgtJ=endJ,
            ikc=ikc,
            ikcGim=ikcGim,
            ctlNum=4,
            cst=fkc.offset,
            setting=setting,
            preset=self.get_autoAim_preset(),
            p=self.CTL_DATA,
        )

        fkc_ofs = fkc.addOffsetGrp()
        common.cstMulti(
            base_loc, self.joints_am[0], fkc_ofs, cstType="ori", w=autoAim * psdAttr
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
        # common.sdk(self.joints_am[0], auto_dvn, "ry", "ry", -120, -120 * fwd * sign)
        # common.sdk(self.joints_am[0], auto_dvn, "ry", "ry", 0, 0)
        # common.sdk(self.joints_am[0], auto_dvn, "ry", "ry", 120, 120 * bwd * sign)
        # common.sdk(self.joints_am[0], auto_dvn, "rz", "rz", 120, 120 * uwd * sign)
        # common.sdk(self.joints_am[0], auto_dvn, "rz", "rz", 0, 0)
        # common.sdk(self.joints_am[0], auto_dvn, "rz", "rz", -120, -120 * dwd * sign)

        # for _ in [-120, 0, 120]:
        #     common.sdk(self.joints_am[0], auto_dvn, "ry", "ry", _, _)
        #     common.sdk(self.joints_am[0], auto_dvn, "rz", "rz", _, _)

        auto_ikH.hide()
        self.joints_am[0].hide()

    # @staticmethod
    def build_uvPSD(
        self,
        tgtJ=None,
        ikc=None,
        ikcGim=None,
        ctlNum=1,
        cst=None,
        setting=None,
        preset=None,
        size=1,
        p=None,
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

        # create group & loc
        tgtJ_child = tgtJ.children[0]
        psd_grp = GroupNode("PSD", pf=rID, p=p)
        psd_loc = LocNode("psd_loc_#", pf=rID, align=tgtJ_child, p=psd_grp)
        ctl_grp = GroupNode("ctl_grp", pf=rID, align=tgtJ, p=psd_grp)
        ctl_main = CurveNode(
            "psd_ctl",
            pf=rID,
            shape="cube",
            align=tgtJ,
            p=ctl_grp,
            scale=rSz,
            top=1,
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
            ctl = CurveNode(
                "psd_ctl_#",
                pf=rID,
                shape="stickS",
                align=ctl_grp,
                p=ctl_main,
                scale=rSz / 3,
                width=2,
                top=1,
            )
            ctl.a.showAttr(t=1, r=1)
            allPsdCtl.append(ctl)

            rx = i * 90
            # correct right side by offset -180
            if rID.startswith("rt"):
                rx -= 180
            ctl.a.rx.set(rx)
            ctl.addOffsetGrp()

            # setup output value
            hit = ctl.a.add("hit", min=0, max=1, k=0)
            weight = ctl.a.add("weight", min=0, max=1, dv=0.5)  # , k=0
            hitWeighted = ctl.a.add("hitWeighted", min=0, max=1, dv=0.5)  # , k=0)
            if preset:
                weight.set(preset[i])
            hit * weight >> hitWeighted
            # (hit * weight) >> productSum.a.input1D
            hitWeighted >> productSum.a.input1D

            # create uv sphere
            psd_ball = DagNode(
                mc.sphere(n=rID + "_psdBall_#", r=rSz, d=3, s=4, spans=2, ch=0)[0]
            )
            psd_ball.alignTo(ctl, offsetR=(0, 0, -90), p=ctl)

            # create cpos
            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            psd_ball.shape.a.worldSpace >> cpos.a.inputSurface
            psd_loc.shape.a.worldPosition >> cpos.a.inPosition

            # create setRange
            hitRange = ut.setRange_(cpos.a.parameterU, 0, 2, 1, 0)
            ut.setRange_(hitRange, 0.5, 1, 0, 1) >> hit

            # color debug
            driven = ctl.shape.a.overrideColor
            common.sdk2(hit, driven, 0.1, Color.BLACK.value, tangent=2)
            common.sdk2(hit, driven, 0.5, Color.L_GREY.value, tangent=2)
            common.sdk2(hit, driven, 0.9, Color.YELLOW.value, tangent=2)

        self.add_mirror_attr(allPsdCtl)
        self.add_ctl_set(allPsdCtl + [ctl_main])

        showAimCtl = self.masterC2.a.add("showAimCtl", min=0, max=1, dv=1, k=0)
        showAimCtl >> psd_grp.a.v

        # Connect total weight
        autoWeight = ikc.a.add("autoWeight", k=0, cb=0)
        productSum.a.output1D >> autoWeight

        return autoWeight

    def ctl_vis_toggle(self, attr, onList=None, offList=None):
        if onList:
            [attr >> ctl.a.v for ctl in onList]
        if offList:
            [~attr >> ctl.a.v for ctl in offList]

    def getMyVar(self):
        return str(self.rigID), float(self.rigSize), int(self.xDir)

    # def genCrvLenRatio(self, rbSrf=None, scaleAttr=None):
    #     crv = CurveNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
    #     crv | self.RIG_DATA
    #     crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
    #     return (
    #         crvInfo.a.arcLength / self.masterC.a.globalScale / scaleAttr / crv.length
    #     )

    def build_motionPath_ribbon(
        self, rbSrf=None, jntNum=5, scaleAttr=None, stretchyAttr=None
    ):
        rID, rSz, xDr = self.getMyVar()
        #
        #   create crv on srf & calc crv len ratio
        #
        crv = CurveNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
        crv | self.RIG_DATA

        crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
        crv.shape.a.worldSpace >> crvInfo.a.inputCurve

        crvLenRatio = (
            crvInfo.a.arcLength / self.masterC.a.globalScale / scaleAttr / crv.length
        )
        #
        #   add joints onto surf which can stretch and slider
        #
        ratioOut = ut.blend2_(crvLenRatio, 1, stretchyAttr)
        sep = 1 / (jntNum - 1)
        locGrp = GroupNode("loc_grp", pf=rID, p=self.RIG_DATA)
        rbJnts = []
        for i in range(jntNum):

            mp = DagNode("mp_#", nodeType="motionPath")
            mp.a.fm.set(1)
            (i * sep) / ratioOut >> mp.a.uValue

            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
            posi.a.turnOnPercentage.set(1)

            aimCst = DagNode("aimCst_#", nodeType="aimConstraint")
            aimCst | self.RIG_DATA
            loc = LocNode(f"{i}_loc", pf=rID, p=locGrp)
            crv.shape.a.worldSpace >> mp.a.geometryPath
            mp.a.allCoordinates >> cpos.a.inPosition

            rbSrf.shape.a.worldSpace >> cpos.a.inputSurface
            cpos.a.parameterU >> posi.a.parameterU
            cpos.a.parameterV >> posi.a.parameterV

            rbSrf.shape.a.worldSpace >> posi.a.inputSurface
            mc.connectAttr(f"{posi}.tangentV", f"{aimCst}.target[0].targetTranslate")
            posi.a.tangentU >> aimCst.a.worldUpVector
            posi.a.position >> loc.a.translate

            aimCst.a.constraintRotateX >> loc.a.rx
            aimCst.a.constraintRotateY >> loc.a.ry
            aimCst.a.constraintRotateZ >> loc.a.rz

            jnt = JointNode(
                f"{i}_rbj",
                pf=rID,
                align=loc,
                r=rSz / jntNum * 12,
                p=loc,
                reset=1,
                color=4,
            )
            rbJnts.append(jnt)
            # self.ikCtl[0].a.s >> loc.a.s

        return crvLenRatio, rbJnts
