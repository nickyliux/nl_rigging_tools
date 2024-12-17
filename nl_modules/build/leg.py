import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ribbon_node import RibbonNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color
from nl_modules.build.rig_module import RigModule


class Leg(RigModule):
    """Build leg component with given rigNode.
    e.g.
        n = Leg('lfArm0_RGN')  # n.__dict__
        n.genSk()
        n.build()
    """

    def __init__(self, rigNode):
        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()
        self.PATELLA_BONE = self.master_guide.a.patellaBone.get()
        self.TOE_BONES = self.master_guide.a.toeBones.get()
        self.TWIST_BONES = self.master_guide.a.twistBones.get()
        self.KNEE_FIX = self.master_guide.a.kneeFix.get()
        self.FK_PART = GroupNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=self.rigID, p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.setting = None
        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        self.jointsFix = None
        self.hip = None
        self.upr = None
        self.lwr = None
        self.palm = None
        self.ball = None
        self.toe = None
        self.hip_fkc = None
        self.upr_fkc = None
        self.lwr_fkc = None
        self.palm_fkc = None
        self.ball_fkc = None
        self.pvc = None
        self.ikc = None
        self.ikCtl = None
        self.fkCtl = None
        self.palmScale = None
        self.toeWiggleG = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.all_ikH = {}
        self.all_bend = None
        self.ikCstG = None
        self.subCtls = []
        self.toesJntList = None
        self.toesCtlsList = None
        self.toesRootJ = rigNode.a.toesRootJ.inConnNode
        self.ikH1 = None

    def genSk(self):
        self.genSk_module(["hip", "upr", "lwr", "palm", "ball", "toe"])
        # for i, name in enumerate(jnt_names):
        #     if name == "lwr":
        #         jnt_list[i].a.preferredAngleY.set(-90)

        if self.TOE_BONES:
            self.toesRootJ = self.genSkFrNames(["toesRoot"], pf=self.rigID)[0]
            self.toesRootJ | self.SKL_DATA
            self.rigNode.setMsg({"toesRootJ": self.toesRootJ})
            toe_names = [
                ["toe00_1", "toe00_2", "toe00_3", "toe00_4"],
                ["toe01_1", "toe01_2", "toe01_3", "toe01_4", "toe01_5"],
                ["toe02_1", "toe02_2", "toe02_3", "toe02_4", "toe02_5"],
                ["toe03_1", "toe03_2", "toe03_3", "toe03_4", "toe03_5"],
                ["toe04_1", "toe04_2", "toe04_3", "toe04_4", "toe04_5"],
            ]
            for names in toe_names:
                fgr_jnts = self.genSkFrNames(names, pf=self.rigID, r=0.3)
                fgr_jnts[0].freezeXf()
                fgr_jnts[0] | self.toesRootJ

    def ctl_setup(self):
        rSz = self.rigSize
        rID = self.rigID
        xDr = self.x_dir
        self.setting = CurveNode("setting", pf=rID, shape="sphere", scale=rSz)
        self.hip_fkc = CurveNode(
            "hip_fkc", pf=rID, up="-y", shape="stickC", scale=rSz * xDr / 2
        )
        self.upr_fkc = CurveNode("upr_fkc", pf=rID, up="x", scale=rSz)
        self.lwr_fkc = CurveNode("lwr_fkc", pf=rID, up="x", scale=rSz)
        self.palm_fkc = CurveNode("palm_fkc", pf=rID, up="x", scale=rSz)
        self.ball_fkc = CurveNode("ball_fkc", pf=rID, up="x", scale=rSz)
        self.ikc = CurveNode("ikc", pf=rID, shape="foot_ikc", scale=rSz)
        self.pvc = CurveNode("pvc", pf=rID, shape="diamond", scale=rSz / 2)
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "hip_fkc": self.hip_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "ball_fkc": self.ball_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
            }
        )

    def build(self):
        """Build rig for joints
        hip
            upr
                lwr
                    palm
                        ball
                            toe
        """
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.hip, self.upr, self.lwr, self.palm, self.ball, self.toe = self.joints
        # self.x_dir = 1 if self.joints[1].a.tx.get() > 0 else -1
        self.ctl_setup()
        # self.palmScale = self.setting.a.add("palmScale", min=0, dv=1)
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()

        if self.KNEE_FIX:
            self.boneFix_setup(self.lwr, self.palm)

        self.ball_ctl_setup()

        if self.RBN_BONES:
            self.ribbon_setup()
        if self.PATELLA_BONE:
            self.patella_setup(self.PRX_GRP)
        if self.TOE_BONES:
            self.toesRootJ | self.palm
            self.toesJntList = []
            for rJ in self.toesRootJ.childrenJt:
                self.toesJntList.append([fgr for fgr in rJ.allChildrenJt2])
                rJ.a.segmentScaleCompensate.set(0)
            self.build_toes()
        if self.TWIST_BONES:
            self.twistBones_setup()
        self.post_setup()

    def build_fk(self):
        logging.info(self.rigID)
        self.joints_fk = common.extractSk(self.joints, "_fk", p=self.FK_PART)
        self.fkCtl = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.ball_fkc,
        ]
        self.fkGivenCtl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolateAlign(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])
        # self.followAlign(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])
        # Scale
        # proxyScale = self.palm_fkc.a.add("palmScale", proxy=self.palmScale)
        # proxyScale >> self.palm_fkc.a.s
        # for fkJ in self.joints_fk[3:]:
        #     proxyScale >> fkJ.a.s

    def build_ik(self):
        logging.info(self.rigID)
        mG = self.master_guide
        pvc_guide = DagNode(self.rigID + "_pvc_guide")
        inPos_guide = DagNode(self.rigID + "_palm_inPos_guide")
        outPos_guide = DagNode(self.rigID + "_palm_outPos_guide")
        heelPos_guide = DagNode(self.rigID + "_palm_heelPos_guide")
        toePos_guide = DagNode(self.rigID + "_palm_toePos_guide")
        self.ikc.alignTo(mG)
        self.pvc.alignTo(pvc_guide)
        self.joints_ik = common.extractSk(self.joints, "_ik", p=self.IK_PART)

        ikH1 = IkNode(
            "1",
            pf=self.rigID,
            sj=self.upr,
            ee=self.palm,
            jsf="_ik",
            sol=1,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            limbScale=1,
            scaleFix=self.masterC.a.globalScale,
            RIG_DATA=self.RIG_DATA,
        )
        ikH2 = IkNode("2", pf=self.rigID, sj=self.palm, ee=self.ball, jsf="_ik")
        ikH3 = IkNode("3", pf=self.rigID, sj=self.ball, ee=self.toe, jsf="_ik")
        self.ikCstG = GroupNode("ikCstG", pf=self.rigID, snap=self.palm, alignR=mG)
        ballRollG = GroupNode("ballRollG", pf=self.rigID, snap=self.ball, alignR=mG)
        toeWiggleG = GroupNode("toeWiggleG", pf=self.rigID, align=self.ball)
        footRollG = GroupNode("footRollG", pf=self.rigID, snap=toePos_guide, alignR=mG)
        toeRollG = GroupNode("toeRollG", pf=self.rigID, snap=toePos_guide, alignR=mG)
        inRollG = GroupNode("inRollG", pf=self.rigID, snap=inPos_guide, alignR=mG)
        outRollG = GroupNode("outRollG", pf=self.rigID, snap=outPos_guide, alignR=mG)
        heelRollG = GroupNode("heelRollG", pf=self.rigID, snap=heelPos_guide, alignR=mG)

        if self.x_dir == 1:
            for g in (
                self.ikCstG,
                ballRollG,
                toeWiggleG,
                footRollG,
                toeRollG,
                inRollG,
                outRollG,
                heelRollG,
            ):
                g.a.rx.set2(180, add=1)

        ikH1 | ballRollG | inRollG | outRollG | footRollG | toeRollG | heelRollG | self.ikCstG
        (ikH2, ikH3) | toeWiggleG | inRollG

        self.ikc_gimbal = CurveNode(self.ikc).addGimbal(attrTgt=self.setting)

        self.ikc.snapTo(self.palm)
        self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)

        footRoll = self.ikc.a.add("footRoll")
        footBreak = self.ikc.a.add("footBreak", min=0, dv=30, k=0)

        ut.min_(0, footRoll) >> heelRollG.a.rx
        (
            ut.clp_(
                footRoll,
                min=0,
                max=footBreak,
            )
            >> ballRollG.a.rx
        )
        ut.max_(0, (footRoll - footBreak)) >> footRollG.a.rx

        bank = self.ikc.a.add("footBank")
        (bank < 0).setCdn(ifTrue=bank, ifFalse=0) >> inRollG.a.rz
        (bank > 0).setCdn(ifTrue=bank, ifFalse=0) >> outRollG.a.rz

        self.ikc.a.add("heelTwist") >> heelRollG.a.ry
        self.ikc.a.add("ballTwist") >> ballRollG.a.ry
        self.ikc.a.add("toeTwist") >> toeRollG.a.ry
        self.ikc.a.add("kneeTwist") * self.x_dir >> ikH1.a.twist
        self.ikc.a.add("toeRoll") >> toeRollG.a.rx
        (self.ikc, self.pvc, self.ikCstG) | self.IK_PART
        self.pvc_line = CurveNode.buildLineLinked(
            self.joints_ik[2],
            self.pvc,
            pf=self.rigID,
            inheritXf=0,
            dspType=2,
            p=self.IK_PART,
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()

        ikH1.stretchyIk(pvPin=1, soft=1)
        # return
        self.all_ikH = {"main": ikH1, "ball": ikH2, "toe": ikH3}
        self.toeWiggleG = toeWiggleG
        self.hip_fkc.cstPar(self.joints_ik[0], mo=1)

        # Scale
        # self.setting.a.s >> self.ikc.a.s
        # self.setting.a.sy >> self.palmScale
        # self.setting.a.sy >> self.setting.a.sx
        # self.setting.a.sy >> self.setting.a.sz
        # for j in self.joints_ik[3:]:
        #     self.palmScale >> j.a.s
        # Movable pivot setup
        # common.add_movable_pivot(toeRollG)
        # common.add_movable_pivot(inRollG)
        # common.add_movable_pivot(outRollG)
        # common.add_movable_pivot(heelRollG)

        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal]
        self.ikH1 = ikH1
        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        rSz = self.rigSize / 2
        xDr = self.x_dir
        CDY = Color.D_YELLOW

        for g in [toeRollG, inRollG, outRollG, heelRollG]:
            ofs = g.addOffsetGrp(below=1)
            CurveNode(ofs)(name=g.name + "_ctl", shape="diamond", scale=rSz, color=CDY)
            self.subCtls.append(ofs)

        ofs = ballRollG.addOffsetGrp(below=1)
        CurveNode(ofs)(
            name=ballRollG + "_ctl", shape="stickC", scale=-rSz * xDr, color=CDY
        )
        CurveNode(ofs).cv_rotate(0, 90, 0)
        self.subCtls.append(ofs)

    # def add_pvc_JC(self):
    #     """
    #     TWO-J CHAIN FOR pvcRota
    #     """
    #     s = self.rigSize
    #
    #     self.pvcRota.addOffsetGrp()
    #     ofs = [s * self.x_dir * 2, 0, 0]
    #
    #     twoJ = JointNode.makeTwoJnts(
    #         "twoJ",
    #         pf=self.rigID,
    #         r=s / 2,
    #         snap=self.joints_ik[1],
    #         ofs=ofs,
    #         p=self.joints_ik[0],
    #     )
    #     ikH_two = IkNode(
    #         "two", pf=twoJ[0].name, sj=twoJ[0], ee=twoJ[1], p=self.RIG_DATA
    #     )
    #
    #     self.ikc.cstPoi(ikH_two)
    #     twoJ[0].cstPar(self.pvcRota.offset, mo=1)
    #     ikH_two.hide()

    def build_toes(self):
        """ball fkc
        splay loc 1
            toe ikc 1
                toe ikh 1
        splay loc 2
            toe ikc 2
                toe ikh 2
        ...
        """
        logging.info(self.rigID)
        self.toesCtlsList = []
        toeLocList = []

        for toes in self.toesJntList:
            toe_ikH1 = IkNode(
                toes[0],
                sj=toes[0],
                ee=toes[1],
                sol=0,
                scaleFix=self.masterC.a.globalScale,
                RIG_DATA=self.RIG_DATA,
                p=self.toesRootJ,
            )
            toe_loc = LocNode(
                self.rigID + "_toe_loc_#",
                align=toes[1],
                addOfs=1,
                p=self.ball_fkc,
                color=Color.YELLOW,
                size=5,
            )
            # toes[1].cstPoi(toe_loc.offset)
            toe_ikH2 = IkNode(
                toes[1],
                sj=toes[1],
                ee=toes[2],
                sol=0,
                scaleFix=self.masterC.a.globalScale,
                RIG_DATA=self.RIG_DATA,
                # p=self.ball_fkc,
                p=toe_loc,
            )
            mc.hide(toe_ikH1, toe_ikH2)

            ctlList = []
            for toe in toes[2:-1]:
                c = CurveNode(toe + "_ctl", align=toe, up="x", scale=self.rigSize / 10)
                ctlList.append(c)

            self.fkGivenCtl(toes[2:-1], ctlList, p=self.CTL_DATA, ori=1)

            # driverList = [self.palm, self.ball]
            # self.fkGivenCtl_dbl(
            #     toes, ctlList, driverList, count=2, p=self.CTL_DATA
            # )
            self.toesCtlsList.append(ctlList)
            toeLocList.append(toe_loc)

        # splay = self.ball_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45

        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.rz
        #     common.sdk2(splay, tgt, -5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, 5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

        mc.hide(toeLocList)

    def twistBones_setup(self):
        jnt_names = ["radius", "radiusEnd"]
        radius_JC = self.genSkFrNames(jnt_names, pf=self.rigID)
        jnt_names = ["ulna", "ulnaEnd"]
        ulna_JC = self.genSkFrNames(jnt_names, pf=self.rigID)

        if self.KNEE_FIX:
            (radius_JC[0], ulna_JC[0]) | self.boneFix
        else:
            (radius_JC[0], ulna_JC[0]) | self.lwr

        radius_loc = LocNode(
            "radius_loc", pf=self.rigID, align=radius_JC[1], p=self.palm
        )
        ulna_loc = LocNode("ulna_loc", pf=self.rigID, align=ulna_JC[1], p=self.palm)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])

        radius_loc.cstAim(
            radius_JC[0],
            worldUpType="objectrotation",
            # worldUpObject=self.palm,
            worldUpObject=self.lwr,
            aim=(self.x_dir, 0, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        ulna_loc.cstAim(
            ulna_JC[0],
            worldUpType="objectrotation",
            worldUpObject=self.lwr,
            # worldUpObject=self.palm,
            aim=(self.x_dir, 0, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        self.joints.extend([radius_JC[0], ulna_JC[0]])

    def blend_fk_ik(self):
        logging.info(self.rigID)
        self.setting | self.CTL_DATA
        self.setting.alignTo(self.palm, offset=(0, self.rigSize * 20 * -self.x_dir, 0))
        ofs = self.setting.addOffsetGrp()
        self.palm.cstPar(ofs, mo=1)

        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=1)
        for i in range(len(self.joints) - 1):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIk, cstType="par")

        # Useful for fk ik switch popUp menu
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.add("fkIk", proxy=fkIk, k=0)

        GroupNode(self.ikc + "_matcher", align=self.ikc, p=self.palm_fkc)

    def ball_ctl_setup(self):
        """Make ball ctl the single ctl in both FK IK"""
        fkIk = self.setting.a.fkIk
        # Remove ball fkc parent's CST
        ball_fkc_ofs = self.ball_fkc.offset
        ball_fkc_ofs.removeCstNodes()
        # Parent ball joint's IKH under ball fkc
        toe_ikH = self.all_ikH["toe"]
        toe_ikH | self.ball_fkc
        palm_fkj = self.joints_fk[3]
        ball_fkj = self.joints_fk[4]

        # Align ball fkc to    FK: palm joint    IK: wiggle grp
        self.spaceAlign(
            self.ball_fkc,
            spaces=[palm_fkj, self.toeWiggleG],
            w=fkIk,
            cstType="par",
        )
        palmScaleG = GroupNode(
            "palmScaleG", pf=self.rigID, snap=self.palm, p=self.FK_PART
        )
        ball_fkc_ofs | palmScaleG
        # self.palmScale >> palmScaleG.a.s
        # for jnt in self.joints[3:]:
        #     self.palmScale >> jnt.a.s
        # Align ball fkj to    FK: ball fkc    IK: palm fkj
        ball_fkj.removeCstNodes()
        self.spaceAlign(
            ball_fkj, spaces=[self.ball_fkc, palm_fkj], w=fkIk, cstType="ori", mo=1
        )

    def ribbon_setup(self):
        """
                    upr
        up_bend     --
        md_bend     lwr
        lw_bend     --
                    foot
        """
        logging.info(self.rigID)
        rSz = self.rigSize
        ribbonUp = RibbonNode(
            self.upr,
            pf=self.rigID + "_up_",
            rbJNum=self.RBN_JNT_NUM,
            volMode=1,
            scaleFix=self.masterC.a.globalScale,
            p=self.RIG_DATA,
            proxyP=self.PRX_GRP,
        )
        ribbonLw = RibbonNode(
            self.lwr,
            pf=self.rigID + "_lw_",
            rbJNum=self.RBN_JNT_NUM,
            volMode=2,
            scaleFix=self.masterC.a.globalScale,
            p=self.RIG_DATA,
            proxyP=self.PRX_GRP,
        )
        # Upper Ribbon
        # --------------------------------
        self.upr.cstPoi(ribbonUp.stt_loc)
        self.hip.cstOri(ribbonUp.stt_loc, mo=1)
        # Lower Ribbon
        # --------------------------------
        self.palm.cstPar(ribbonLw.end_loc, mo=1)
        # Ribbon Controls
        # --------------------------------

        # Bend Ctl Setup
        upLoc = ribbonUp.mid_loc
        lwLoc = ribbonLw.mid_loc
        grp = self.CTL_DATA
        up_bend = CurveNode("up_bend", pf=self.rigID, align=upLoc, addOfs=1, p=grp)
        lw_bend = CurveNode("lw_bend", pf=self.rigID, align=lwLoc, addOfs=1, p=grp)
        md_bend = CurveNode("md_bend", pf=self.rigID, align=self.lwr, addOfs=1, p=grp)
        # md_bend = CurveNode("md_bend", pf=self.rigID, align=self.lwr, addOfs=1, p=grp)

        self.all_bend = [up_bend, lw_bend, md_bend]
        for b in self.all_bend:
            b(shape="square", up="x", color=Color.D_YELLOW, scale=rSz)

        upLoc.cstPar(up_bend.offset, mo=1)
        lwLoc.cstPar(lw_bend.offset, mo=1)
        up_bend.cstParSca(upLoc.children[0], mo=1)
        lw_bend.cstParSca(lwLoc.children[0], mo=1)

        self.lwr.cstPar(md_bend.offset, mo=1)
        md_bend.cstParSca(ribbonUp.end_loc, mo=1)

        # md_bend.cstParSca(ribbonLw.stt_loc, mo=1)
        stt_ofs = ribbonLw.stt_loc.addOffsetGrp(count=2)
        md_bend.cstParSca(stt_ofs[0], mo=1)

        if self.KNEE_FIX:
            self.boneFix_sdk(self.lwr, stt_ofs[1])

        # Add Ctl Attr to md_bend
        volPower = self.setting.a.add("volume", min=0, max=2, dv=1, k=0)
        volPower >> ribbonUp.volPower
        volPower >> ribbonLw.volPower

        self.addBindJntSet(ribbonUp.rbJnt + ribbonLw.rbJnt)

    def proxy_setup(self):
        proxyList = self.joints
        proxyToeList = []

        if self.TOE_BONES:
            proxyList.remove(self.ball)
            proxyList.remove(self.palm)
            proxyToeList.append(self.toesRootJ)
            for t in self.toesJntList:
                proxyToeList.extend(t)
        if self.RBN_BONES:
            proxyList.remove(self.upr)
            proxyList.remove(self.lwr)
        if self.KNEE_FIX:
            proxyList.append(self.boneFix)
            if self.lwr in proxyList:
                proxyList.remove(self.lwr)
        if self.TWIST_BONES:
            if self.lwr in proxyList:
                proxyList.remove(self.lwr)
            if self.boneFix in proxyList:
                proxyList.remove(self.boneFix)

        rSz = self.rigSize
        xDr = self.x_dir
        for j in proxyList:
            JointNode(j).addProxyMesh(
                size=rSz * 5, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )
        for j in proxyToeList:
            JointNode(j).addProxyMesh(
                size=rSz * 2, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )

        self.addBindJntSet(proxyList)
        self.addBindJntSet(proxyToeList)

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.SKL_DATA.a.v
        # visGrp[1] >> self.PRX_GRP.a.v

        fkIk = self.setting.a.fkIk
        [fkIk >> c.a.v for c in (self.ikc, self.pvc, self.pvc_line, self.ikCstG)]
        [~fkIk >> c.a.v for c in self.fkCtl[1:-1]]

        if self.all_bend:
            bowCtl = self.setting.a.add("legBowCtls", min=0, max=1, dv=1, k=0)
            [bowCtl >> ctl.a.v for ctl in self.all_bend]

        subCtls = self.setting.a.add("subCtls", min=0, max=1, dv=1, k=0)
        [subCtls >> self.ikCstG.children[0].a.v]
        mc.hide(self.joints_fk, self.joints_ik)
        [ikh.hide() for ikh in self.all_ikH.values()]

    def channel_setup(self):
        self.setting.a.showAttr()
        self.pvc.a.showAttr(t=1)
        for ctl in self.fkCtl + self.subCtls + [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

    def ro_setup(self):
        for c in self.fkCtl + self.ikCtl + [self.lwr]:
            c.a.ro.set(2)

    def space_setup(self):
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_hip": self.hip_fkc})
        self.rigNode.setMsg({"space_leg": self.ikH1.softJ[0]})
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        self.rigNode.a.add("spaceName1", attrType="string", txt="master, hip, COG")
        self.rigNode.a.add("spaceName2", attrType="string", txt="leg, master, hip, COG")

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)
        self.ikc.cv_drop()
        self.ikc_gimbal.cv_drop()
        for c in [self.ikc, self.ikc_gimbal, self.pvc]:
            c.a.add("wsMirrorAxis", k=0, lock=1, cb=0)
        ctlSet = []
        ctlSet.extend(self.fkCtl + self.ikCtl + self.subCtls + [self.setting])

        if self.RBN_BONES:
            ctlSet.extend(self.all_bend)
        if self.TOE_BONES:
            [ctlSet.extend(s) for s in self.toesCtlsList]

        self.addCtlSet(ctlSet, pf=rID)
        self.space_setup()
        self.anchor_setup_module({"anchorF1": self.hip_fkc})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()


if __name__ == "__main__":
    for n in mc.ls("*RGN", type="script"):
        Leg(DagNode(n)).build()
