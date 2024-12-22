import maya.cmds as mc
import logging
from nl_modules.build import rig_module
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color

CDY = Color.D_YELLOW
CLB = Color.L_BLUE
CP = Color.PINK


class QuadLeg(rig_module.RigModule):
    """Build QuadLeg component with given rigNode.
    e.g.
        n = QuadLeg('lfQHLeg0_RGN')  # n.__dict__
        n.genSk()
        n.build()
    """

    def __init__(self, rigNode):
        super().__init__(rigNode)

        self.PATELLA_BONE = self.master_guide.a.patellaBone.get()
        self.TOE_BONES = self.master_guide.a.toeBones.get()
        # self.CARPAL_FIX = self.master_guide.a.carpal_setup.get()
        self.TWIST_BONES = self.master_guide.a.twistBones.get()

        self.FK_PART = GroupNode("FK", pf=self.rigID.upper(), p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=self.rigID.upper(), p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.setting = None

        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        self.joints_sgik = None

        self.hip = None
        self.upr = None
        self.lwr = None
        self.palm = None
        self.boneFix = None
        self.fetlock = None
        self.pastern = None
        self.pasternTip = None

        self.hip_fkc = None
        self.upr_fkc = None
        self.lwr_fkc = None
        self.palm_fkc = None
        self.fetlock_fkc = None
        self.pastern_fkc = None
        self.pasternTip_fkc = None
        self.extraRoll_fkc = None

        self.pvc = None
        self.ikc = None

        self.ikCtl = None
        self.fkCtl = None

        self.toeWiggleG = None

        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.all_ikH = {}
        self.all_bend = None
        self.ikCstG = None
        self.subCtls = []
        self.twoJ = None
        self.toesJntList = None
        self.toesIkCtl = []
        self.toesRootJ = rigNode.a.toesRootJ.inConnNode

    def genSk(self):
        self.genSk_module(
            ["hip", "upr", "lwr", "palm", "fetlock", "pastern", "pasternTip"]
        )

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
                fgr_jnts = self.genSkFrNames(names, pf=self.rigID, r=0.5)
                if fgr_jnts:
                    fgr_jnts[0].freezeXf()
                    fgr_jnts[0] | self.toesRootJ

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID
        xDr = self.x_dir
        self.setting = CurveNode("setting", pf=rID, shape="sphere", scale=rSz)
        self.hip_fkc = CurveNode(
            "hip_fkc", pf=rID, up="-y", shape="stickC", scale=rSz * xDr * 0.8
        )
        self.upr_fkc = CurveNode("upr_fkc", pf=rID, up="x", scale=rSz)
        self.lwr_fkc = CurveNode("lwr_fkc", pf=rID, up="x", scale=rSz)
        self.palm_fkc = CurveNode("palm_fkc", pf=rID, up="x", scale=rSz)
        self.fetlock_fkc = CurveNode("fetlock_fkc", pf=rID, up="x", scale=rSz)
        self.pastern_fkc = CurveNode("pastern_fkc", pf=rID, up="x", scale=rSz * 0.3)
        self.extraRoll_fkc = CurveNode(
            "extraRoll_fkc", shape="rotator", pf=rID, scale=rSz
        )
        self.ikc = CurveNode("ikc", pf=rID, shape="cube", scale=rSz)
        self.pvc = CurveNode("pvc", pf=rID, shape="diamond", scale=rSz)
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "hip_fkc": self.hip_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "fetlock_fkc": self.fetlock_fkc,
                "pastern_fkc": self.pastern_fkc,
                "extraRoll_fkc": self.extraRoll_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
            }
        )

    def build(self):
        """Build rig for joints
        hip
            upr
                lwr
                    foot
                        fetlock
                            pastern
                                pasternTip
        """
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        (
            self.hip,
            self.upr,
            self.lwr,
            self.palm,
            self.fetlock,
            self.pastern,
            self.pasternTip,
        ) = self.joints

        # self.x_dir = 1 if self.lwr.a.tx.get() > 0 else -1
        self.createCtl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()

        # if self.CARPAL_FIX:
        #     self.boneFix_setup(self.palm, self.fetlock)

        self.ballCtl_setup()
        if self.PATELLA_BONE:
            self.patella_setup(self.PRX_GRP)

        if self.TOE_BONES:
            self.toesRootJ | self.palm
            # self.toesRootJ | self.fetlock
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
        self.joints_fk = common.extractSk(self.joints, sf="_fk", p=self.FK_PART)
        self.fkCtl = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.fetlock_fkc,
            self.pastern_fkc,
        ]
        self.fkGivenCtl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolateAlign(self.upr_fkc, [self.upr_fkc.parent, self.masterC])

        # Fetlock
        # self.fkCtl[4].cstSca(self.joints_fk[4])

    def build_ik(self):
        """
        Main        upr-lwr-foot
        xIK         foot-fetlock
        2IK         fetlock-pastern
        3IK         pastern-pasternTip
        sgIK        upr-lwr-foot-fetlock

        For QuadLeg, apply spring solver to target 3 bones in the extra sgik chain.
        The last joints (e.g. fetlock_sg) can be used to PARENT CONSTRAINT Main IK with OFFSET
        Extra control is added in the middle thru parent constraint (e.g. extra roll)

        """
        logging.info(self.rigID)

        mG = self.master_guide
        pvc_guide = DagNode(self.rigID + "_pvc_guide")
        inPos_guide = DagNode(self.rigID + "_palm_inPos_guide")
        outPos_guide = DagNode(self.rigID + "_palm_outPos_guide")
        heelPos_guide = DagNode(self.rigID + "_palm_heelPos_guide")
        toePos_guide = DagNode(self.rigID + "_palm_toePos_guide")

        wPosZ1 = mc.xform(pvc_guide, q=1, ws=1, t=1)[2]
        wPosZ2 = mc.xform(self.lwr, q=1, ws=1, t=1)[2]
        PV_IN_FRONT = 1 if wPosZ1 > wPosZ2 else -1

        self.ikc.snapAlignTo(self.fetlock, mG)
        self.pvc.snapTo(pvc_guide)
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
        )
        ikHX = IkNode("X", pf=self.rigID, sj=self.palm, ee=self.fetlock, jsf="_ik")
        ikH2 = IkNode("2", pf=self.rigID, sj=self.fetlock, ee=self.pastern, jsf="_ik")
        ikH3 = IkNode(
            "3", pf=self.rigID, sj=self.pastern, ee=self.pasternTip, jsf="_ik"
        )

        self.ikCstG = GroupNode("ikCstG", pf=self.rigID, snap=self.palm, alignR=mG)
        ballRollG = GroupNode("ballRollG", pf=self.rigID, snap=self.pastern, alignR=mG)
        toeWiggleG = GroupNode("toeWiggleG", pf=self.rigID, align=self.pastern)
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
        (
            ikHX,
            ikH1,
        ) | ballRollG | inRollG | outRollG | footRollG | toeRollG | heelRollG | self.ikCstG
        (ikH2, ikH3) | toeWiggleG | inRollG
        self.ikc_gimbal = CurveNode(self.ikc).addGimbal(attrTgt=self.setting)
        self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)

        self.footRollLogic(heelRollG, ballRollG, footRollG, toeRollG)
        self.footBankLogic(inRollG, outRollG)

        self.ikc.a.add("kneeTwist") * self.x_dir >> ikH1.a.twist
        (self.ikCstG, self.pvc, self.ikc) | self.IK_PART
        self.pvc_line = CurveNode.buildLineLinked(
            self.joints_ik[2], self.pvc, pf=self.rigID, p=self.IK_PART
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        self.noRollPv_setup()
        self.joints_sgik = common.extractSk(self.joints, "_sgik", p=self.IK_PART)

        # Create stretchy
        ikH_SG = IkNode(
            "sg",
            pf=self.rigID,
            sj=self.upr,
            jsf="_sgik",
            ee=self.fetlock,
            sol=3,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            scaleFix=self.masterC.a.globalScale,
            p=ballRollG,
        )

        if not PV_IN_FRONT:
            ikH_SG.a.twist.set(180)

        ikH_SG.stretchyIk(pvPin=0, soft=0)
        for i in range(2, 5):
            self.joints_sgik[i].a.tx >> self.joints_ik[i].a.tx

        self.extraRoll_fkc.snapAlignTo(self.fetlock, mG)
        # self.extraRoll_fkc | self.ikc_gimbal
        self.extraRoll_fkc | self.IK_PART
        self.extraRoll_fkc.addOffsetGrp()
        self.ikc_gimbal.cstPar(self.extraRoll_fkc.offset, mo=1)

        spg_loc = LocNode("spg_loc", pf=self.rigID, p=self.joints_sgik[4])
        spg_loc.snapAlignTo(self.fetlock, mG)

        self.isolateAlign(
            self.extraRoll_fkc,
            spaces=[spg_loc, self.extraRoll_fkc.offset],
            # attrName="alignToParent",
            # cstType="par",
        )
        self.extraRoll_fkc.cstParSca(ikH1, mo=1)

        # Fetlock's scale
        # self.ikc.cstSca(self.joints_ik[4], mo=1)

        self.all_ikH = {
            "main": ikH1,
            "ball": ikH2,
            "toe": ikH3,
            "spg": ikH_SG,
            "foot": ikHX,
        }
        self.toeWiggleG = toeWiggleG

        self.hip_fkc.cstPar(self.joints_ik[0], mo=1)
        self.hip_fkc.cstPar(self.joints_sgik[0], mo=1)

        # self.spaceAlign(
        #     self.ikc,
        #     names="master:hip",
        #     spaces=[self.masterC, self.hip_fkc],
        # )
        # self.spaceAlign(
        #     self.pvc,
        #     names="rotator:foot:master",
        #     spaces=[ikH1.softJ[0], self.ikc, self.masterC],
        #     # spaces=[self.pvcRota, self.ikc, self.masterC],
        # )

        # Movable pivot setup
        # common.add_movable_pivot(toeRollG)
        # common.add_movable_pivot(inRollG)
        # common.add_movable_pivot(outRollG)
        # common.add_movable_pivot(heelRollG)
        # [c.a.lockHide(t=1) for c in (toeRollG, inRollG, outRollG, heelRollG)]

        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)
        self.ikc.cv_drop()
        self.ikc_gimbal.cv_drop()
        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal, self.extraRoll_fkc]

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        pass

        # rS = self.rigSize * 0.05
        # g = toeRollG.addOffsetGrp(below=1)
        # CurveNode(g)(
        #     name=toeRollG + "_ctl", shape="square", scale=rS * -self.x_dir, color=CDY
        # )
        # self.subCtls.append(g)
        # g = ballRollG.addOffsetGrp(below=1)
        # CurveNode(g)(
        #     name=ballRollG + "_ctl",
        #     up="z",
        #     shape="stickC",
        #     scale=rS * 10 * -self.x_dir,
        #     color=CDY,
        # )
        # self.subCtls.append(g)
        # g = inRollG.addOffsetGrp(below=1)
        # CurveNode(g)(name=inRollG + "_ctl", shape="square", scale=rS, color=CDY)
        # self.subCtls.append(g)
        # g = outRollG.addOffsetGrp(below=1)
        # CurveNode(g)(name=outRollG + "_ctl", shape="square", scale=-rS, color=CDY)
        # self.subCtls.append(g)
        # g = heelRollG.addOffsetGrp(below=1)
        # CurveNode(g)(name=heelRollG + "_ctl", shape="square", scale=rS, color=CDY)
        # self.subCtls.append(g)

    def noRollPv_setup(self):
        ofs = [self.rigSize * self.x_dir * 10, 0, 0]
        twoJ = JointNode.makeTwoJChain(
            "twoJ",
            pf=self.rigID,
            r=self.rigSize / 4,
            snap=self.joints_ik[1],
            ofs=ofs,
            p=self.joints_ik[0],
        )
        self.joints_ik[4].cstAim(twoJ[0], aim=(self.x_dir, 0, 0), keep=False)
        twoJ[0].freezeXf()

        ikH_two = IkNode(
            "two", pf=twoJ[0].name, sj=twoJ[0], ee=twoJ[1], p=self.RIG_DATA
        )
        self.ikc.cstPoi(ikH_two)
        ikH_two.hide()
        self.twoJ = twoJ[0]
        # self.all_ikH.extend([ikH_two])

    def build_toes(self):
        """
        ball fkc
            splay loc 1
                toe ikc 1
                    toe ikh 1
            splay loc 2
                toe ikc 2
                    toe ikh 2
            ...

        """
        logging.info(self.rigID)
        self.toesIkCtl = []
        toeLocList = []

        for toes in self.toesJntList:
            toe_ikH1 = IkNode(
                toes[0],
                sj=toes[0],
                ee=toes[1],
                sol=0,
                RIG_DATA=self.RIG_DATA,
                scaleFix=self.masterC.a.globalScale,
                p=self.toesRootJ,
            )

            toe_loc = LocNode(
                self.rigID + "_toe_loc_#",
                snap=toes[1],
                addOfs=1,
                p=self.pastern,
            )
            # self.pastern_fkc.a.ry * -1 >> toe_loc.a.rx

            toe_ikc = CurveNode(
                toes[0],
                sf="_ikc",
                # snap=toes[-2],
                align=toes[-2],
                shape="cube",
                scale=self.rigSize * 0.15,
                addOfs=1,
                p=toe_loc,
            )
            # toe_ikc.cstOri(toes[-2], mo=1)

            self.toesIkCtl.append(toe_ikc)

            toe_ikH2 = IkNode(
                toes[1],
                sj=toes[1],
                ee=toes[-2],
                sol=0,
                RIG_DATA=self.RIG_DATA,
                scaleFix=self.masterC.a.globalScale,
                p=toe_ikc,
            )

            toe_ikH3 = IkNode(
                toes[-2],
                sj=toes[-2],
                ee=toes[-1],
                sol=0,
                RIG_DATA=self.RIG_DATA,
                scaleFix=self.masterC.a.globalScale,
                p=toe_ikc,
            )
            mc.hide(toe_ikH1, toe_ikH2, toe_ikH3)  # , toe_loc)
            toeLocList.append(toe_loc)

        # For splay range R and 4 toes
        # Result = [-R, -R/3, R/3, R]
        #
        # splay = self.pastern_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45

        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.ry
        #     common.sdk2(splay, tgt, 5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, -5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

        # claw = self.pastern_fkc.a.add("claw", min=-5, max=5)
        # for toes in self.toesJntList:
        #     common.sdk2(claw, toes[-2].a.ry, -5, 90)
        #     common.sdk2(claw, toes[-2].a.ry, 5, -90)

        # ctlList = []
        # for toe in toes[2:-1]:
        #     c = CurveNode(toe + "_ctl", align=toe, up="x", scale=self.rigSize * 0.06)
        #     ctlList.append(c)
        #
        # self.fkGivenCtl(toes[2:-1], ctlList, p=self.CTL_DATA, ori=1)

    def twistBones_setup(self):
        jnt_names = ["radius", "radiusEnd"]
        radius_JC = self.genSkFrNames(jnt_names, pf=self.rigID)
        jnt_names = ["ulna", "ulnaEnd"]
        ulna_JC = self.genSkFrNames(jnt_names, pf=self.rigID)

        # if self.KNEE_FIX:
        #     (radius_JC[0], ulna_JC[0]) | self.boneFix
        # else:
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
            worldUpObject=self.palm,
            aim=(self.x_dir, 0, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        ulna_loc.cstAim(
            ulna_JC[0],
            worldUpType="objectrotation",
            worldUpObject=self.lwr,
            aim=(self.x_dir, 0, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        self.joints.extend([radius_JC[0], ulna_JC[0]])

    def blend_fk_ik(self):
        logging.info(self.rigID)
        self.setting | self.CTL_DATA
        self.setting.alignTo(
            self.fetlock, offset=(0, self.rigSize * 10 * -self.x_dir, 0)
        )

        self.fetlock.cstPar(self.setting.addOffsetGrp(), mo=1)

        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=1)
        for i in range(len(self.joints) - 1):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIk, cstType="par")

        # Useful for fk ik switch popUp menu
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.add("fkIk", proxy=fkIk, k=0)

        GroupNode(self.ikc + "_matcher", align=self.ikc, p=self.fetlock_fkc)

    def boneFix_sdk(self, driver, driven):
        s = self.rigSize * self.x_dir / 10
        common.sdk(driver, driven, "ry", "tz", 0, 0)
        common.sdk(driver, driven, "ry", "tz", -80, -2.5 * s, auto=1)
        common.sdk(driver, driven, "ry", "tz", -170, -5 * s)
        common.sdk(driver, driven, "ry", "tx", 0, 0)
        common.sdk(driver, driven, "ry", "tx", -80, 0, auto=1)
        common.sdk(driver, driven, "ry", "tx", -170, -3.5 * s)

    def carpal_setup(self, tgt):
        tgtDup = JointNode(tgt.duplicate(po=1))
        tgtDup.rename(tgt + "Fix2")
        tgtDup.color = CLB
        tgtDup.setRadius(self.rigSize / 3)
        # tgt.a.ry * 0.5 >> tgtDup.a.ry
        common.sdk(tgt, tgtDup, "ry", "ry", 0, 0)
        common.sdk(tgt, tgtDup, "ry", "ry", -90, -60, auto=1)
        common.sdk(tgt, tgtDup, "ry", "ry", -180, -110)

    def ballCtl_setup(self):
        logging.info(self.rigID)
        fkIk = self.setting.a.fkIk
        pastern_fkc_ofs = self.pastern_fkc.offset
        pastern_fkc_ofs.removeCstNodes()
        pastern_fkc_ofs.addOffsetGrp()
        toeIk = self.all_ikH["toe"]
        toeIk | self.pastern_fkc
        fetlock_fkJ = self.joints_fk[4]
        pastern_fkJ = self.joints_fk[5]

        self.spaceAlign(
            pastern_fkc_ofs,
            spaces=[fetlock_fkJ, self.toeWiggleG],
            w=fkIk,
            cstType="par",
        )
        self.spaceAlign(
            pastern_fkc_ofs,
            spaces=[fetlock_fkJ, self.toeWiggleG],
            w=fkIk,
            cstType="sca",
        )

        pastern_fkJ.removeCstNodes()

        self.spaceAlign(
            pastern_fkJ,
            spaces=[self.pastern_fkc, fetlock_fkJ],
            w=fkIk,
            cstType="ori",
            mo=1,
        )

        # common.spaceCst(
        #     space=self.pasternTip,
        #     tgt=toeIk,
        #     sp1=self.pastern_fkc,
        #     sp2=self.ikc,
        #     driver=footIK,
        #     cstType="poi",
        #     mo=1,
        # )

    def patella_sdk(self, driver, driven):
        common.sdk(driver, driven, "ry", "ry", 0, 0)
        common.sdk(driver, driven, "ry", "ry", -30, 0, auto=1)
        common.sdk(driver, driven, "ry", "ry", -90, -25, auto=1)
        common.sdk(driver, driven, "ry", "ry", -180, -90)

    # def anchor_setup(self):
    #     s = self.rigSize
    #     anchorF1 = LocNode("anchorF1", pf=self.rigID, size=s, color=CP)
    #     anchorF1.a.message >> self.rigNode.a.anchorF1
    #     anchorF1.snapTo(self.rootJ, p=self.masterC)
    #     anchorF1.cstPar(self.hip_fkc.offset, mo=1)
    #     anchorF1.hide()

    def channel_setup(self):
        [c.a.showAttr(t=1, r=1) for c in self.fkCtl + self.subCtls]
        self.ikc.a.showAttr(t=1, r=1)
        self.pvc.a.showAttr(t=1)
        self.extraRoll_fkc.a.showAttr(r=1)
        self.setting.a.showAttr()

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.rootJ.a.v
        # visGrp[1] >> self.PRX_GRP.a.v

        fkIk = self.setting.a.fkIk
        [
            fkIk >> c.a.v
            for c in (
                self.ikc,
                self.pvc,
                self.pvc_line,
                self.extraRoll_fkc,
                self.ikCstG,
            )
        ]
        [~fkIk >> c.a.v for c in self.fkCtl[1:-1]]

        subCtl = self.setting.a.add("subCtl", min=0, max=1, dv=1, k=0)
        [subCtl >> self.ikCstG.children[0].a.v]
        [subCtl >> ctl.a.v for ctl in self.toesIkCtl]
        mc.hide(self.joints_fk, self.joints_ik, self.joints_sgik)
        [ikh.hide() for ikh in self.all_ikH.values()]

    def proxy_setup(self):
        rSz = self.rigSize
        xDr = self.x_dir
        proxyList = self.joints[1:]
        proxyToeList = []

        if self.TWIST_BONES:
            proxyList.remove(self.palm)
        if self.TOE_BONES:
            proxyList.remove(self.fetlock)
            proxyList.remove(self.pastern)
            for t in self.toesJntList:
                proxyToeList.extend(t)
                self.addBindJntSet(t)
        # if self.CARPAL_FIX:
        #
        #     proxyList.remove(self.palm)
        #     proxyList.append(self.boneFix)
        #
        #     foot_id = self.joints.index(self.palm)
        #     self.joints[foot_id] = self.boneFix

        for j in proxyList:
            JointNode(j).addProxyMesh(
                size=rSz * 5, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )
        for j in proxyToeList:
            JointNode(j).addProxyMesh(
                size=rSz, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )
        # if self.TOE_BONES:
        #     for toes in self.toesJntList:
        #         for j in toes:
        #             JointNode(j).addProxyMesh(size=rSz, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP)
        # self.addBindJntSet(toes)

    def ro_setup(self):
        # Change default RO otherwise rotation will jump with IK
        for c in self.joints:
            c.a.ro.set(2)

    def space_setup(self):
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_hip": self.hip_fkc})
        self.rigNode.setMsg({"space_leg": self.twoJ})
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        self.rigNode.a.add("spaceName1", attrType="string", txt="master, hip, COG")
        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        self.rigNode.a.add("spaceName2", attrType="string", txt="leg, master, COG")

    def post_setup(self):
        logging.info(self.rigID)
        for c in [
            self.ikc,
            self.pvc,
            self.ikc_gimbal,
            self.extraRoll_fkc,
        ]:
            c.a.add("wsMirrorAxis", k=0, lock=1, cb=0)

        self.addBindJntSet(self.joints)
        self.addCtlSet(
            self.fkCtl + self.ikCtl + [self.setting] + self.subCtls + self.toesIkCtl,
            pf=self.rigID,
        )
        self.space_setup()
        self.anchor_setup_module({"anchorF1": self.hip_fkc})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()


if __name__ == "__main__":
    for n in mc.ls("*RGN", type="script"):
        QuadLeg(DagNode(n)).build()
