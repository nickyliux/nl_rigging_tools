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
CBK = Color.BLACK
CBL = Color.BLUE
CDR = Color.D_RED
CDY = Color.D_YELLOW
CLB = Color.L_BLUE
CPK = Color.PINK
CRD = Color.RED
CYL = Color.YELLOW


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
        self.RIG_DATA = GroupNode(self.rigID + "_rig_data", p=self.RIG)
        self.CTL_DATA = GroupNode(self.rigID + "_ctl_data", p=self.masterC)
        self.SKL_DATA = GroupNode(self.rigID + "_skl_data", p=self.SKL)

        self.moduleG = rigNode.a.moduleG.inConnNode
        if not self.moduleG:
            logging.info("moduleG not found in RigNode !")

        if self.moduleG and self.moduleG.parent is None:
            self.moduleG | self.MOD

        self.master_guide = rigNode.a.master_guide.inConnNode
        if not self.master_guide:
            logging.info("master_guide not found in RigNode !")

        self.x_dir = 1
        self.rigSize = 1
        self.boneFix = None
        self.bindJnts = []
        if rigNode.a.rootJ.exists():
            self.rootJ = rigNode.a.rootJ.inConnNode

    # @staticmethod
    def genSkFrNames(self, names, color=None, r=1):
        """Create joints by finding object : pf_name_guide' from name list
        e.g.
            jnt_names = ["clavicle", "upr", "lwr", "palm", "ball"]
            genSkFrNames(jnt_names)   # [j1, j2, j3, j4, j5]
                                      # given lfArm0_{n}_guide exists
        """
        guides = []
        pf = self.rigID
        if isinstance(names, str):
            names = [names]

        for n in names:
            guide_name = f"{pf}_{n}_guide"
            if not mc.objExists(guide_name):
                logging.error(f"missing object: {guide_name}")
                return
            guides.append(DagNode(guide_name))

        guideDict = dict(zip(names, guides))
        lastJ = None
        joints = []

        # for i, key in enumerate(guideDict):
        for key in guideDict:
            jN = JointNode(f"{pf}_{key}", align=guideDict[key], r=r, color=color)

            if (
                pf.startswith("lfLeg")
                or pf.startswith("rtLeg")
                or pf.startswith("lfArm")
                or pf.startswith("rtArm")
            ) and key == "lwr":
                jN.a.preferredAngleY.set(-45 * self.x_dir)

            if lastJ:
                jN | lastJ
            lastJ = jN
            joints.append(jN)

        return joints

    @staticmethod
    def fkGivenCtl(jntList, ctlList=None, ori=0, count=1, p=None):
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
    def fkGivenCtl2(jntList, ctlList=None, count=1, p=None):
        """FK setup with ctls in separate hierarchy
            The benefit compared to fkGivenCtl3 is separate selection highlight
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
    def fkGivenCtl3(jntList, ctlList=None, count=1, p=None):
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
    def fkGivenCtl_dbl(jntList, ctlList=None, drvList=None, count=1, p=None):
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
    def isolateAlign(tgt, spaces=None, attrName="isolate", dv=0, cstType="ori"):
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
    def isolateNeckToSpine(cls, neckCog, spineCtl, wSpaceObj):
        """Add 'isolateT' & 'isolateR' to tgt to allow separate cst specially for the neck"""
        cls.isolateAlign(
            neckCog, spaces=[spineCtl, wSpaceObj], attrName="isolateR", cstType="ori"
        )
        cls.isolateAlign(
            neckCog, spaces=[spineCtl, wSpaceObj], attrName="isolateT", cstType="parT"
        )

    @staticmethod
    def spaceAlign(tgt, names=None, spaces=None, dv=0, cstType="par", w=None, **kwargs):
        allSpacesGrp = []
        for space in spaces:
            spaceG = GroupNode(tgt + "_SPACE_#", align=tgt, p=space)
            spaceG.addOffsetGrp()
            allSpacesGrp.append(spaceG)
        tgt_ofs = tgt.addOffsetGrp()
        if w is None:
            w = tgt.a.add("space", attrType="enum", dv=dv, enumName=names)

        common.cstMulti(*allSpacesGrp, tgt_ofs, cstType=cstType, w=w, **kwargs)

    def calcRigSize(self, rootJ):
        if rootJ:
            # min size for ctl is 0.4
            self.rigSize = max(rootJ.o.diagonal2 / 100, 0.4)

    def addMinusScaleGrp(self, tgt):
        if self.rigID.startswith("rt_"):
            tgt.a.rx.set2(180, add=1)
            tgt.a.ry.set2(180, add=1)
            tgt.addOffsetGrp().a.sz.set(-1)
        else:
            tgt.addOffsetGrp()

    def genSk_module(self, jnt_names):
        self.rigNode.a.nodeState.set(1)

        rootCtl = self.masterC.parent.parent
        if rootCtl.a.sx.get() != 1:
            rootCtl.freezeXf(t=0, r=0, s=1)

        self.masterC.a.showAttr(t=1, r=1)
        self.masterC.parent.a.showAttr(t=1, r=1)

        self.moduleG.hide()

        jnt_list = self.genSkFrNames(jnt_names)

        self.rootJ = jnt_list[0]
        self.rootJ | self.SKL_DATA
        self.rootJ.freezeXf()
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_module(self):

        self.calcRigSize(self.rootJ)
        self.rigNode.a.nodeState.set(2)
        children = self.rootJ.childrenJt
        if children:
            self.x_dir = 1 if children[0].a.tx.get() > 0 else -1

    def post_module(self):
        for obj in mc.ls(tr=1):
            mc.setAttr(obj + ".ro", cb=1)
        self.moduleG.hide()
        # self.masterC.a.showAttr(t=1, r=1)
        # self.masterC.offset.a.showAttr(t=1, r=1)
        if self.PRX:
            self.masterC.a["showProxy"] >> self.PRX.a.v

    def unbuild_module(self):
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
        # if self.visC and self.visC.a[self.rigID].exists():
        #     mc.deleteAttr(f"{self.visC}.{self.rigID}")

        for attr in ["anchorF1", "anchorM1", "anchorM2"]:
            anchor = self.rigNode.a[attr]
            if anchor.exists() and anchor.inConnNode:
                anchor.inConnNode.delete()

        self.rigNode.a.nodeState.set(0)
        prx = mc.ls(self.rigID + "_*_pxGeo*")
        if prx:
            mc.delete(prx)

    def anchor_setup_module(self, anchorDict=None):
        """
        e.g.
        { 'anchorM1': loc1, 'anchorM2': loc2, }
        or
        { 'anchorM1': loc1, 'anchorF1': loc2, }
        or
        { 'anchorF1': loc1, }
        """
        for name, tgt in anchorDict.items():
            loc = LocNode(name, pf=self.rigID, size=5, p=self.masterC)
            self.rigNode.setMsg({name: loc})

            if name.startswith("anchorM"):  # Blue for Male
                loc.color = CLB
                tgt.cstPar(loc)
            elif name.startswith("anchorF"):  # Pink for Female
                loc.color = CPK
                loc.alignTo(tgt)
                loc.cstPar(tgt.offset, mo=1)
            loc.hide()

    def addCtlSet(self, tgtList):
        setName = self.rigID + "_ctl_set"
        if DagNode(setName).exists():
            mc.sets(tgtList, add=setName)
        else:
            mc.sets(tgtList, n=setName)

    def addBindJntSet(self, tgtList):
        """Add bind joint set for target joints"""

        if DagNode(BIND_JNT_SET).exists():
            mc.sets(tgtList, add=BIND_JNT_SET)
        else:
            mc.sets(tgtList, n=BIND_JNT_SET)

    def addPivOffset(self, tgt, scale=1, inRange=10, maxOfs=120, frontBack=1, upDown=0):
        """Add pivot offset to target ctl"""
        piv_ref = CurveNode(
            tgt + "_pivRef", shape="locator", align=tgt, scale=scale, p=tgt
        )
        piv_ref.dspType = 2

        if frontBack:
            pivotForward = tgt.a.add("pivotForward", min=-inRange, max=inRange, dv=0)
            rmN = DagNode("rmpZ_#", nodeType="remapValue")
            rmN.a.inputMin.set(inRange)
            rmN.a.inputMax.set(-inRange)
            rmN.a.outputMin.set(maxOfs)
            rmN.a.outputMax.set(-maxOfs)

            pivotForward >> rmN.a.inputValue
            rmN.a.outValue >> tgt.a.rotatePivotZ
            rmN.a.outValue >> piv_ref.a.tz

        if upDown:
            pivotDownward = tgt.a.add("pivotDownward", min=-inRange, max=inRange, dv=0)
            rmN = DagNode("rmpY_#", nodeType="remapValue")
            rmN.a.inputMin.set(-inRange)
            rmN.a.inputMax.set(inRange)
            rmN.a.outputMin.set(-maxOfs)
            rmN.a.outputMax.set(maxOfs)

            pivotDownward >> rmN.a.inputValue
            rmN.a.outValue >> tgt.a.rotatePivotY
            rmN.a.outValue >> piv_ref.a.ty

    def boneFix_setup(self, tgt, tgtChild):
        upLoc = LocNode("lwrLimb_up", pf=self.rigID, align=tgtChild, addOfs=1, p=tgt)
        tgtChild.cstPoi(upLoc.offset)
        upLoc.a.ty.set(self.rigSize * 10 * self.x_dir)

        tgtDup = tgt.duplicate(po=1)
        childDup = tgtChild.duplicate(po=1)
        tgtDup.rename(tgt + "Fix")
        childDup.rename(tgtChild + "Fix")
        childDup | tgtDup | tgt

        tgtChild.cstAim(
            tgtDup, worldUpType="object", worldUpObject=upLoc, aim=(self.x_dir, 0, 0)
        )
        mc.hide(upLoc)
        self.boneFix = tgtDup
        self.boneFix_sdk(tgt, tgtDup)
        # self.carpalFix(tgt)

    # def carpalFix(self, tgt):
    #     pass

    def boneFix_sdk(self, driver, driven):
        s = self.rigSize * self.x_dir
        common.sdk(driver, driven, "ry", "tz", 0, 0)
        common.sdk(driver, driven, "ry", "tz", -60, 0, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -80, -1.5 * s, tangent=1)
        common.sdk(driver, driven, "ry", "tz", -170, -7 * s)
        common.sdk(driver, driven, "ry", "tx", 0, 0)
        common.sdk(driver, driven, "ry", "tx", -80, s, tangent=1)
        common.sdk(driver, driven, "ry", "tx", -170, -3 * s)

    def patella_setup(self, PRX_GRP):

        def patella_sdk(driver, driven):
            common.sdk(driver, driven, "ry", "ry", 0, 0)
            common.sdk(driver, driven, "ry", "ry", -20, -1, tangent=1)
            common.sdk(driver, driven, "ry", "ry", -90, -45, tangent=1)
            common.sdk(driver, driven, "ry", "ry", -180, -90)

        rID = self.rigID
        rSz = self.rigSize
        patella_guide = DagNode(rID + "_patella_guide")

        if patella_guide.exists():
            j = JointNode(
                "patella",
                pf=rID,
                align=patella_guide,
                color=CDR,
                r=rSz * 2,
                p=self.upr,
            )
            j.freezeXf()
            self.bindJnts.append(j)
            patella_sdk(self.lwr, j)
            return j

    def createCtlJ(self, ctls, r=2, color=None):
        result = []
        for ctl in ctls:
            jnt = JointNode(ctl, sf="_ctlJ", r=r, color=color, p=ctl)
            jnt.resetOrient()
            jnt.resetXf()
            result.append(jnt)
        return result

    # def visByCondition(self, attr, autoVis, manualVis, targets=None, v=0):
    #     """Setup vis logic with auto / manual mode like Advanced Skeleton"""
    #     cond = DagNode("visCond" + str(v) + "__#", nodeType="condition")
    #     attr >> cond.a.firstTerm
    #     cond.a.secondTerm.set(1 - v)
    #     # [cond.a.outColor >> target.a.v for target in targets]

    #     condF = DagNode("visCondF" + str(v) + "__#", nodeType="floatCondition")
    #     cond.a.outColorR >> condF.a.floatA
    #     autoVis >> condF.a.condition
    #     manualVis >> condF.a.floatB
    #     [condF.a.outFloat >> target.a.v for target in targets]

    def handRollLogic(self, attrHolder, fkc, fkPin, locRoll):

        palmRoll = attrHolder.a.add("palmRoll")
        palmRoll * -1 >> locRoll.a.rz

        fkc.a.add("palmRoll", proxy=palmRoll)
        fkPin.a.add("palmRoll", proxy=palmRoll)

    def handBankLogic(self, attrHolder, fkc, fkPin, locIn, locOut):

        palmBank = attrHolder.a.add("palmBank")
        ut.min_(palmBank, 0) * -1 >> locIn.a.rx
        ut.max_(0, palmBank) * -1 >> locOut.a.rx

        fkc.a.add("palmBank", proxy=palmBank)
        fkPin.a.add("palmBank", proxy=palmBank)

    def footRollLogic(self, targetCtl, heelRollG, ballRollG, footRollG, toeRollG):
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

    def footBankLogic(self, targetCtl, inRollG, outRollG):
        bank = targetCtl.a.add("footBank")
        (bank < 0).setCdn(ifTrue=bank, ifFalse=0) >> inRollG.a.rz
        (bank > 0).setCdn(ifTrue=bank, ifFalse=0) >> outRollG.a.rz

    def setWSMirror(self, targets):
        for t in targets:
            if t.exists():
                t.a.add("wsMirrorAxis", k=0, lock=1, cb=0)

    def build_digit_ik(self, dupTgt, scale, p=None):
        """IK setup for single digit"""
        from nl_modules.nodel.ik_node import IkNode

        dupTgt = DagNode(dupTgt)
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
        endJ = ikJ.allChildrenJt[-1]
        if endJ not in ikJ.children:
            endJ | ikJ
            ikJ.children[0].delete()
        ikJ.rename(ikJ.name + "_ikJ")
        endJ.rename(ikJ.name + "_end_ikJ")
        IkNode(
            ikJ,
            sj=ikJ,
            ee=endJ,
            sol=0,
            scaleFix=self.masterC.a.globalScale,
            RIG_DATA=self.RIG_DATA,
            vis=0,
            p=ctl,
        )
        mc.hide(ikJ)
        return ctl, ikJ

    def getAutoAimPreset(self):

        upW = self.master_guide.a.autoUpWeight.get()
        fwW = self.master_guide.a.autoFwWeight.get()
        dnW = self.master_guide.a.autoDnWeight.get()
        bkW = self.master_guide.a.autoBkWeight.get()

        rID = self.rigID
        preset = [1, 1, 1, 1]
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

        rID = self.rigID

        # create aim chain
        self.joints_am = common.extractSk([startJ, endJ], "_am", p=fkc.offset)
        base_loc = LocNode("base_loc", pf=rID, align=self.joints_am[0], p=fkc.offset)

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
        autoAim = ikc.a.add("autoAim", min=0, max=1)  # , dv=1)
        psdAttr = self.build_uvPSD(
            tgtJ=endJ,
            ikc=ikc,
            ikcGim=ikcGim,
            ctlNum=4,
            cst=fkc.offset,
            setting=setting,
            preset=self.getAutoAimPreset(),
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

        rID = self.rigID
        rSz = self.rigSize

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
                lineWidth=2,
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
                mc.sphere(n=rID + "_psdBall_#", r=2, d=3, s=4, spans=2, ch=0)[0]
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

        self.setWSMirror(allPsdCtl)
        self.addCtlSet(allPsdCtl + [ctl_main])

        showAimCtl = self.masterC.a.add("showAimCtl", min=0, max=1, dv=1, k=0)
        showAimCtl >> psd_grp.a.v

        # Connect total weight
        autoWeight = ikc.a.add("autoWeight", k=0, cb=0)
        productSum.a.output1D >> autoWeight

        return autoWeight

    def ctrlOnOffByAttr(self, attr, onList=None, offList=None):
        if onList:
            [attr >> ctl.a.v for ctl in onList]
        if offList:
            [~attr >> ctl.a.v for ctl in offList]
