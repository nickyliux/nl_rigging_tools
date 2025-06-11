import maya.cmds as mc
import logging
from nl_modules.build.rig_base import RigBase
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common, utils_node as ut, maths
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
        self.RIG_DATA = GrpNode(rID + "_rig_data", p=self.RIG)
        self.CTL_DATA = GrpNode(rID + "_ctl_data", p=self.masterC)
        self.SKL_DATA = GrpNode(rID + "_skl_data", p=self.SKL)

        self.moduleG = rigNode.a.moduleG.inConnNode
        if not self.moduleG:
            logging.info("moduleG not found in RigNode !")

        self.master_guide = rigNode.a.master_guide.inConnNode
        if not self.master_guide:
            logging.info("master_guide not found in RigNode !")

        self.rigSize = 1
        self.xDir = 1 if rID.startswith("lf") else -1
        self.boneFix = None
        self.bindJnts = []

        if rigNode.a.rootJ.exists():
            self.rootJ = rigNode.a.rootJ.inConnNode

    def gen_sk_fr_names(self, names, color=None, scale=1):
        """
        Given n in names, create joint if "pf_n_guide" is found
        return the joint chain
        """
        rID, rSz, xDr = self.getMyVar()

        if isinstance(names, str):
            names = [names]

        guideList = []
        for n in names:
            guide_name = f"{rID}_{n}_guide"
            if not mc.objExists(guide_name):
                logging.error(f"missing object: {guide_name}")
                return
            guideList.append(DagNode(guide_name))

        guideDict = dict(zip(names, guideList))
        currClass = self.__class__.__name__
        joints = []
        lastJ = None
        for name in guideDict:
            n = f"{rID}_{name}"
            if mc.objExists(n):
                n += "#"
            jN = JntNode(n, align=guideDict[name], color=color)
            if (currClass == "ArmBp" or currClass == "LegBp") and name == "lwr":
                jN.a.preferredAngleY.set(-45)
            # elif currClass.startswith("LegQd") and name == "palm":
            #     jN.a.preferredAngleY.set(45)
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
        ctlList = ctlList or [CrvNode(j + "_fkc") for j in jntList]

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
        """Add 'isolate' to tgt to allow separate cst"""
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
        """Add space attr to tgt, to switch between spaces"""
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
        return rootJ.o.diagonal2 / 100 or 1

    def add_minus_scale_grp(self, tgt):
        rID, rSz, xDr = self.getMyVar()
        if rID.startswith("rt_"):
            tgt.a.rx.set2(180, add=1)
            tgt.a.ry.set2(180, add=1)
            tgt.addOffsetGrp().a.sz.set(-1)
        else:
            tgt.addOffsetGrp()

    def genSk_module(self):
        rID, rSz, xDr = self.getMyVar()
        logging.info(rID)
        self.rigNode.a.nodeState.set(1)

        rootCtl = self.masterC.parent.parent
        if rootCtl.a.sx.get() != 1:
            rootCtl.freezeXf(t=0, r=0, s=1)

        # jnt_list = self.gen_sk_fr_names(jnt_names)

        # self.rootJ = jnt_list[0]
        # self.rootJ | self.SKL_DATA
        # self.rootJ.freezeXf()
        # self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_module(self):
        rID, rSz, xDr = self.getMyVar()
        logging.info(rID)
        self.rigNode.a.nodeState.set(2)

        self.rigSize = self.calc_rig_size(self.rootJ)

        children = self.rootJ.childrenJt
        if children:
            self.xDir = 1 if children[0].a.tx.get() > 0 else -1
        #
        #   update all joints' radius
        #
        # joints = self.rootJ.allChildrenJt2
        # for j in joints:
        #     j.a.radius.set(rSz)

    def post_module(self):
        rID, rSz, xDr = self.getMyVar()
        logging.info(rID)

        [mc.setAttr(obj + ".ro", cb=1) for obj in mc.ls(tr=1)]
        if self.PRX:
            self.masterC2.a["proxy"] >> self.PRX.a.v

        self.moduleG.hide()
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
        # mc.hide(upLoc)
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
            j = JntNode("patella", pf=rID, align=patella_guide, r=rSz, p=self.upr)
            j.freezeXf()
            self.bindJnts.append(j)
            patella_sdk(self.lwr, j)
            return j

    def build_ctl_jnt(self, ctls, r=1, color=1):
        result = []
        for ctl in ctls:
            jnt = JntNode(ctl, sf="_ctlJ", r=r, color=color, p=ctl)
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
                t.a.add("wsMirror", lock=1, cb=0)

    def build_digit_ik(self, ikTgt, scale=1, p=None):
        """IK setup for single digit"""
        from nl_modules.nodel.ik_node import IkNode

        ctl = CrvNode(
            ikTgt + "_ikc",
            shape="stickS",
            align=ikTgt,
            up="-z",
            scale=scale,
            addOfs=1,
            top=1,
            width=2,
            p=p.offset,
        )
        ctl.addOffsetGrp()
        p.a.ry >> ctl.offset.a.ry

        j1 = JntNode(ikTgt).duplicate(po=1)
        j1.rename(ikTgt + "_1_ikj")

        j2 = JntNode(ikTgt.allChildrenJt[-1]).duplicate(po=1)
        j2.rename(ikTgt + "_2_ikj")
        j2 | j1

        j1.cstPoi(ctl.offset)
        ikH = IkNode(
            j1,
            sj=j1,
            ee=j2,
            scaleFix=self.masterC.a["globalScale"],
            RIG_DATA=self.RIG_DATA,
            vis=0,
            p=ctl,
        )
        return ctl, j1, ikH

    def get_autoAim_preset(self):
        upW_attr = self.master_guide.a.autoUpWeight
        fwW_attr = self.master_guide.a.autoFwWeight
        dnW_attr = self.master_guide.a.autoDnWeight
        bkW_attr = self.master_guide.a.autoBkWeight

        upW = upW_attr.get() if upW_attr.exists() else 1
        fwW = fwW_attr.get() if fwW_attr.exists() else 1
        dnW = dnW_attr.get() if dnW_attr.exists() else 1
        bkW = bkW_attr.get() if bkW_attr.exists() else 1

        preset = []
        rID, rSz, xDr = self.getMyVar()
        if rID.startswith("lfArmBp") or rID.startswith("rtArmBp"):
            preset = [upW, fwW, dnW, bkW]
        else:
            preset = [dnW, bkW, upW, fwW]
        return preset

    def build_autoAim(self, startJ, endJ, fkc=None, ikc=None, ikcGim=None):
        """
        Setup auto clavicle / hip using simple ik and orient cst
        Limit on side is calculted with the uvPSD setup
        """
        from nl_modules.nodel.ik_node import IkNode

        rID, rSz, xDr = self.getMyVar()
        #
        #   create aim chain
        #
        self.joints_am = common.extractSk([startJ, endJ], "_am", p=fkc.offset)
        base_loc = LocNode("base_loc", pf=rID, align=startJ, p=fkc.offset, size=rSz)
        #
        #   setup IK
        #
        auto_ikH = IkNode(
            "autoAim",
            pf=rID,
            sj=self.joints_am[0],
            ee=self.joints_am[1],
            sol=1,
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
        # self.joints_am[0].hide()

    def build_scapular(self, ikc=None, fkc=None, jnts=None, EXTRA=0, scap_fkc=None):
        """
        Add scapular functions
        """
        from nl_modules.nodel.ik_node import IkNode

        rID, rSz, xDr = self.getMyVar()
        hipJ = jnts[0]
        uprJ = jnts[1]

        mainGrp = GrpNode("quadScap", pf=rID, align=hipJ, p=self.FK_PART, addOfs=1)
        fkc.offset | mainGrp
        #
        #   add auto aim function
        #
        j0, j1 = JntNode.makeTwoJC2(
            "autoAim",
            pf=rID,
            snap=hipJ,
            aim=(xDr, 0, 0),
            u=(0, xDr, 0),
            p=mainGrp.offset,
            r=rSz * 3,
            color=6,
            aimTgt=ikc,
        )
        IkNode("autoAimJ", sol=1, pf=rID, sj=j0, ee=j1, p=ikc, quat=1, vis=0)
        autoAim = fkc.a.add("autoAim", min=0, max=1, dv=0.3)
        common.cstMulti(mainGrp.offset, j0, mainGrp, w=autoAim, cstType="parR", mo=1)
        j0.hide()

        if EXTRA:
            #
            #   add leg lock function
            #
            j0, j1 = JntNode.makeTwoJC2(
                "legLock",
                pf=rID,
                snap=ikc,
                aim=(xDr, 0, 0),
                u=(0, xDr, 0),
                p=ikc,
                r=rSz * 2,
                color=13,
                aimTgt=hipJ,
            )
            IkNode("legLock", pf=rID, sj=j0, ee=j1, quat=1, p=mainGrp.offset, vis=0)
            legLock = ikc.a.add("legLock", min=0, max=1)
            ikc.a.add("legLockLen") * self.xDir >> fkc.offset.a.tx
            common.cstMulti(mainGrp.offset, j1, mainGrp, w=legLock, cstType="poi")
            j0.hide()
            #
            #   add extra scapular joint
            #
            scap_fkc.snapAlignTo(uprJ, fkc, p=fkc)
            scap_fkc.addOffsetGrp()
            j0, j1 = JntNode.makeTwoJC2(
                "scapTip",
                pf=rID,
                snap=uprJ,
                aim=(xDr, 0, 0),
                u=(0, xDr, 0),
                wu=(0, 0, xDr),
                p=uprJ,
                r=rSz,
                color=1,
                aimTgt=hipJ,
            )
            self.scap_fkc.cstOri(j0, mo=1)
            self.bindJnts.append(j1)
            j0.hide()

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

        self.add_mirror_attr(allPsdCtl)
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
        if onList:
            [attr >> ctl.a.v for ctl in onList]
        if offList:
            [~attr >> ctl.a.v for ctl in offList]

    def getMyVar(self):
        return str(self.rigID), float(self.rigSize), int(self.xDir)

    # def genCrvLenRatio(self, rbSrf=None, scaleAttr=None):
    #     crv = CrvNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
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
        crv = CrvNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
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
        locGrp = GrpNode("loc_grp", pf=rID, p=self.RIG_DATA)
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

            jnt = JntNode(
                f"{i}_rbj",
                pf=rID,
                align=loc,
                r=rSz / jntNum * 12,
                p=loc,
                reset=1,
                color=4,
            )
            rbJnts.append(jnt)

        return crvLenRatio, rbJnts
