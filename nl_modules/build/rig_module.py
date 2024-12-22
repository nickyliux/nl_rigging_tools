import maya.cmds as mc
import logging
from nl_modules.build.rig_base import RigBase
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
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
        self.calcRigSize(self.rootJ)
        self.rigNode.a.nodeState.set(2)
        children = self.rootJ.childrenJt
        if children:
            self.x_dir = 1 if children[0].a.tx.get() > 0 else -1

    def post_module(self):
        for obj in mc.ls(tr=1):
            mc.setAttr(obj + ".ro", cb=1)
        self.moduleG.hide()

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
        if self.visC and self.visC.a[self.rigID].exists():
            mc.deleteAttr(f"{self.visC}.{self.rigID}")

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
                loc.color = Color.L_BLUE
                tgt.cstPar(loc)
            elif name.startswith("anchorF"):  # Pink for Female
                loc.color = Color.PINK
                loc.alignTo(tgt)
                loc.cstPar(tgt.offset, mo=1)

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
        common.sdk(driver, driven, "ry", "tz", -60, 0, auto=1)
        common.sdk(driver, driven, "ry", "tz", -80, -1.5 * s, auto=1)
        common.sdk(driver, driven, "ry", "tz", -170, -7 * s)
        common.sdk(driver, driven, "ry", "tx", 0, 0)
        common.sdk(driver, driven, "ry", "tx", -80, s, auto=1)
        common.sdk(driver, driven, "ry", "tx", -170, -3 * s)

    def patella_setup(self, PRX_GRP):

        def patella_sdk(driver, driven):
            common.sdk(driver, driven, "ry", "ry", 0, 0)
            common.sdk(driver, driven, "ry", "ry", -20, -1, auto=1)
            common.sdk(driver, driven, "ry", "ry", -90, -45, auto=1)
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
                color=Color.L_BLUE,
                r=rSz,
                p=self.upr,
            )
            j.addProxyMesh(size=rSz, aimDir=(xDr, 0, 0), p=PRX_GRP)
            j.freezeXf()
            self.addBindJntSet([j])
            patella_sdk(self.lwr, j)

    def createCtlJ(self, ctl1, ctl2, ctl3, color=None):
        rS = self.rigSize * 4
        jnt1 = JointNode(ctl1 + "_ctlJ", r=rS, color=color, align=ctl1, p=ctl1)
        jnt2 = JointNode(ctl2 + "_ctlJ", r=rS, color=color, align=ctl2, p=ctl2)
        jnt3 = JointNode(ctl3 + "_ctlJ", r=rS, color=color, align=ctl3, p=ctl3)
        return [jnt1, jnt2, jnt3]

    def footRollLogic(self, heelRollG, ballRollG, footRollG, toeRollG):
        from nl_modules.utils import utils_node as ut

        footRoll = self.ikc.a.add("footRoll")
        footBreak = self.ikc.a.add("footBreak", min=0, dv=30, k=0)
        ut.min_(0, footRoll) >> heelRollG.a.rx
        ut.clp_(footRoll, min=0, max=footBreak) >> ballRollG.a.rx
        ut.max_(0, (footRoll - footBreak)) >> footRollG.a.rx

        self.ikc.a.add("heelTwist") >> heelRollG.a.ry
        self.ikc.a.add("ballTwist") >> ballRollG.a.ry
        self.ikc.a.add("toeTwist") >> toeRollG.a.ry
        self.ikc.a.add("toeRoll") >> toeRollG.a.rx

    def footBankLogic(self, inRollG, outRollG):
        bank = self.ikc.a.add("footBank")
        (bank < 0).setCdn(ifTrue=bank, ifFalse=0) >> inRollG.a.rz
        (bank > 0).setCdn(ifTrue=bank, ifFalse=0) >> outRollG.a.rz
