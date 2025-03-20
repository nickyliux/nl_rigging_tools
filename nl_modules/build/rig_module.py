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
CPK = Color.PINK
CYL = Color.YELLOW
CLB = Color.L_BLUE


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
        if rigNode.a.rootJ.exists():
            self.rootJ = rigNode.a.rootJ.inConnNode

    @staticmethod
    def genSkFrNames(names, pf="", color=None, r=1):
        """Create joints by finding object : pf_name_guide' from name list
        e.g.
            jnt_names = ["clavicle", "upr", "lwr", "palm", "ball"]
            genSkFrNames(jnt_names)   # [j1, j2, j3, j4, j5]
                                      # given lfArm0_{n}_guide exists
        """
        guides = []
        if pf:
            pf += "_"
        if isinstance(names, str):
            names = [names]

        for n in names:
            guide_name = f"{pf}{n}_guide"
            if not mc.objExists(guide_name):
                logging.error(f"missing object: {guide_name}")
                return
            guides.append(DagNode(guide_name))

        guideDict = dict(zip(names, guides))
        lastJ = None
        joints = []

        for i, key in enumerate(guideDict):
            jN = JointNode(f"{pf}{key}", align=guideDict[key], color=color, r=r)
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
            self.rigSize = max(rootJ.o.width2, rootJ.o.height2, rootJ.o.depth2) / 100
            # logging.info(f"{self.__class__.__name__}: {round(self.rigSize, 2)}")

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
        self.moduleG.hide()

        jnt_list = self.genSkFrNames(jnt_names, pf=self.rigID)
        self.rootJ = jnt_list[0]
        self.rootJ | self.SKL_DATA
        self.rootJ.freezeXf()
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_module(self):

        mc.refresh(su=1)
        self.calcRigSize(self.rootJ)
        self.rigNode.a.nodeState.set(2)
        children = self.rootJ.childrenJt
        if children:
            self.x_dir = 1 if children[0].a.tx.get() > 0 else -1

    def post_module(self):
        for obj in mc.ls(tr=1):
            mc.setAttr(obj + ".ro", cb=1)
        # for _ in mc.ls(type="curveShape"):
        #     mc.setAttr(_ + ".alwaysDrawOnTop", 1)
        self.moduleG.hide()
        if self.PRX:
            self.masterC.a.add("PROXY_VIS", min=0, max=1)  # , dv=1)
            self.masterC.a["PROXY_VIS"] >> self.PRX.a.v
        mc.refresh(su=0)

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
        prx = mc.ls(self.rigID + "_*_pxGeo")
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

    def addCtlSet(self, ctlList, pf=None):
        setName = pf + "_ctl_set"
        if DagNode(setName).exists():
            mc.sets(ctlList, add=setName)
        else:
            mc.sets(ctlList, n=setName)

    def addBindJntSet(self, jntList):
        if DagNode(BIND_JNT_SET).exists():
            mc.sets(jntList, add=BIND_JNT_SET)
        else:
            mc.sets(jntList, n=BIND_JNT_SET)

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
        self.carpalFix(tgt)

    def carpalFix(self, tgt):
        pass

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
        rSz = self.rigSize * 2
        xDr = self.x_dir
        patella_guide = DagNode(rID + "_patella_guide")

        if patella_guide.exists():
            j = JointNode(
                "patella",
                pf=rID,
                align=patella_guide,
                color=CLB,
                r=rSz,
                p=self.upr,
            )
            # j.addProxyMesh(size=rSz, aimDir=(xDr, 0, 0), p=PRX_GRP)
            j.freezeXf()
            self.addBindJntSet([j])
            patella_sdk(self.lwr, j)
            return j

    def createCtlJ(self, ctl1, ctl2, ctl3, color=None):
        rS = self.rigSize * 4
        jnt1 = JointNode(ctl1 + "_ctlJ", r=rS, color=color, align=ctl1, p=ctl1)
        jnt2 = JointNode(ctl2 + "_ctlJ", r=rS, color=color, align=ctl2, p=ctl2)
        jnt3 = JointNode(ctl3 + "_ctlJ", r=rS, color=color, align=ctl3, p=ctl3)
        return [jnt1, jnt2, jnt3]

    def visByCondition(self, fkIkBlend, autoVis, manualVis, targets, v=0):
        """Setup vis logic with auto / manual mode like Advanced Skeleton

        visByCondition(
            fkIkBlend,
            autoVis,
            showFk,
            [DagNode('a')],
            hideWhen=0
        )
        """
        cond = DagNode("visCond" + str(v) + "__#", nodeType="condition")
        fkIkBlend >> cond.a.firstTerm
        cond.a.secondTerm.set(1 - v)
        # [cond.a.outColor >> target.a.v for target in targets]

        condF = DagNode("visCondF" + str(v) + "__#", nodeType="floatCondition")
        cond.a.outColorR >> condF.a.floatA
        autoVis >> condF.a.condition
        manualVis >> condF.a.floatB
        [condF.a.outFloat >> target.a.v for target in targets]

    def handRollLogic(self, ikc, fkc, fkPin, locRoll):

        palmRoll = ikc.a.add("palmRoll")
        fkc.a.addSep()
        fkc.a.add("palmRoll", proxy=palmRoll)
        fkPin.a.addSep()
        fkPin.a.add("palmRoll", proxy=palmRoll)

        palmRoll * -1 >> locRoll.a.rz

    def handBankLogic(self, ikc, fkc, fkPin, locIn, locOut):

        palmBank = ikc.a.add("palmBank")
        fkc.a.add("palmBank", proxy=palmBank)
        fkPin.a.add("palmBank", proxy=palmBank)

        ut.min_(palmBank, 0) * -1 >> locIn.a.rx
        ut.max_(0, palmBank) * -1 >> locOut.a.rx

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
        # ctl.cv_move(0, 0, self.rigSize * self.x_dir * -30)
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

    def getAutoAimPreset(self, rID):

        upW = self.master_guide.a.autoUpWeight.get()
        fwW = self.master_guide.a.autoFwWeight.get()
        dnW = self.master_guide.a.autoDnWeight.get()
        bkW = self.master_guide.a.autoBkWeight.get()

        preset = [1, 1, 1, 1]
        if rID.startswith("lfArm"):
            preset = [upW, fwW, dnW, bkW]
        elif rID.startswith("rtArm"):
            preset = [dnW, bkW, upW, fwW]
        elif rID.startswith("lfLeg"):
            preset = [dnW, bkW, upW, fwW]
        elif rID.startswith("rtLeg"):
            preset = [upW, fwW, dnW, bkW]

        return preset

    def build_autoAim(self, startJ, endJ, fkc=None, ikc=None, setting=None):
        """
        Setup auto clavicle / hip using simple ik and orient cst
        Limit on side is calculted with the uvPSD setup
        """
        from nl_modules.nodel.ik_node import IkNode

        rID = self.rigID
        rSz = self.rigSize

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
        ikc.cstPoi(auto_ikH)

        # setup PSD & cst
        autoAim = ikc.a.add("autoAim", min=0, max=1)  # , dv=1)
        psdAttr = self.build_uvPSD(
            rID=rID,
            rSz=rSz,
            tgtJ=endJ,
            ikc=ikc,
            ctlNum=4,
            cst=fkc.offset,
            setting=setting,
            preset=self.getAutoAimPreset(rID),
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

    @staticmethod
    def build_uvPSD(
        rID=None,
        rSz=4,
        tgtJ=None,
        ikc=None,
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

        # create group & loc
        tgtJ_child = tgtJ.children[0]
        psd_grp = GroupNode("PSD", pf=rID, p=p)
        ctl_grp = GroupNode(
            "ctl_grp", pf=rID, align=tgtJ, alignR=tgtJ.offset, p=psd_grp
        )
        cst.cstPar(ctl_grp, mo=1)
        psd_loc = LocNode("psd_loc_#", pf=rID, align=tgtJ_child, p=psd_grp)
        ikc.cstPoi(psd_loc)

        allCtl = []
        productSum = DagNode("pma__#", nodeType="plusMinusAverage")

        for i in range(ctlNum):
            # create ctl
            ctl = CurveNode(
                "psd_ctl_#",
                pf=rID,
                shape="stickS",
                align=ctl_grp,
                p=ctl_grp,
                scale=rSz / 4,
            )
            allCtl.append(ctl)
            ctl.a.rx.set(i * 90)

            # setup output value
            hit = ctl.a.add("hit", k=0, min=0, max=1)
            weight = ctl.a.add("weight", k=0, min=0, max=1, dv=0.5)
            if preset:
                weight.set(preset[i])
            (hit * weight) >> productSum.a.input1D

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
            common.sdk2(hit, driven, 0.7, Color.D_RED.value, tangent=2)
            common.sdk2(hit, driven, 1, Color.RED.value, tangent=2)

        setting.a.addSep()
        autoAimVis = setting.a.add("autoAimVis", min=0, max=1, dv=0, k=0)
        autoAimVis >> psd_grp.a.v

        # Connect total weight
        autoWeight = ikc.a.add("autoWeight", k=0, cb=0)
        productSum.a.output1D >> autoWeight

        return autoWeight
