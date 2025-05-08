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


class LegQd(RigModule):
    """Build LegQd component with given rigNode.
    e.g.
        n = LegQd('lfQDLeg0_RGN')  # n.__dict__
        n.gen_guide_sk()
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
        rID, rSz, xDr = self.getMyVar()

        self.FK_PART = GroupNode("FK", pf=rID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=rID, p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)

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
        self.tip = None
        self.hip_fkc = None
        self.upr_fkc = None
        self.lwr_fkc = None
        self.palm_fkc = None
        self.digit_fkc = None
        self.ball_fkc = None
        self.pvc = None
        self.ikc = None
        self.smart_ctl = None
        self.ikCtl = None
        self.fkCtl = None
        self.palmScale = None
        self.toe_wiggle_grp = None
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
        self.ballG_ikc = None
        self.extra_ikc = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["hip", "upr", "lwr", "palm", "digit", "ball", "tip"])

        if self.TOE_BONES:
            self.toesRootJ = self.gen_sk_fr_names(["toesRoot"])[0]
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
                fgr_jnts = self.gen_sk_fr_names(names, scale=1.2)
                fgr_jnts[0].freezeXf()
                fgr_jnts[0] | self.toesRootJ

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="stick",
            scale=rSz * -xDr,
            color=Color.BLACK,
            top=1,
        )
        self.hip_fkc = CurveNode(
            "hip_fkc", pf=rID, up="-y", shape="stickC", scale=rSz * xDr * 0.8
        )
        self.upr_fkc = CurveNode("upr_fkc", pf=rID, shape="squareR", up="x", scale=rSz)
        self.lwr_fkc = CurveNode("lwr_fkc", pf=rID, shape="squareR", up="x", scale=rSz)
        self.palm_fkc = CurveNode(
            "palm_fkc", pf=rID, shape="squareR", up="x", scale=rSz
        )
        self.digit_fkc = CurveNode(
            "digit_fkc", pf=rID, shape="squareR", up="x", scale=rSz
        )
        self.ball_fkc = CurveNode(
            "ball_fkc",
            pf=rID,
            scale=xDr * rSz / 2,
        )
        scale = (rSz * 1.5, rSz * 0.5, rSz * 2)
        self.ikc = CurveNode("ikc", pf=rID, shape="trapezoid", scale=scale)
        self.ikc.cv_move(0, 0, rSz * 4)
        self.pvc = CurveNode("pvc", pf=rID, shape="diamond", scale=rSz * 0.8)
        self.smart_ctl = CurveNode("smart_ctl", pf=rID, shape="roll", scale=rSz / 2)

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "smart_ctl": self.smart_ctl,
                "hip_fkc": self.hip_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "digit_fkc": self.digit_fkc,
                "ball_fkc": self.ball_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
            }
        )

    def build(self):
        """Build rig for joints
        hip 0
            upr 1
                lwr 2
                    palm 3
                        digit 4
                            ball 5
                                tip 6
        """
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.hip, self.upr, self.lwr, self.palm, self.digit, self.ball, self.tip = (
            self.joints
        )
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        self.singleBallCtl_setup()

        self.bindJnts = [self.hip, self.upr]
        if self.KNEE_FIX:
            self.boneFix_setup(self.lwr, self.palm)

        if self.PATELLA_BONE:
            self.patella_setup()

        if self.TWIST_BONES:
            self.build_twist_bones()
        else:
            if self.KNEE_FIX:
                self.bindJnts.append(self.boneFix)
            else:
                self.bindJnts.append(self.lwr)

        if self.TOE_BONES:
            self.toesRootJ | self.palm
            self.toesJntList = []
            for rJ in self.toesRootJ.childrenJt:
                self.toesJntList.append([fgr for fgr in rJ.allChildrenJt2])
                rJ.a.segmentScaleCompensate.set(0)
            self.digits_setup()
        else:
            self.bindJnts.extend([self.palm, self.digit, self.ball])

        # scaling

        self.post_setup()
        self.custom_setup()

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        self.joints_fk = common.extractSk(
            self.joints, "_fk", p=self.FK_PART, color=Color.BLUE, r=2 * rSz
        )
        self.fkCtl = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.digit_fkc,
            self.ball_fkc,
        ]
        self.build_fk_with_ctl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()

        mG = self.master_guide
        pvc_guide = DagNode(rID + "_pvc_guide")
        inPos_guide = DagNode(rID + "_palm_inPos_guide")
        outPos_guide = DagNode(rID + "_palm_outPos_guide")
        heelPos_guide = DagNode(rID + "_palm_heelPos_guide")
        toePos_guide = DagNode(rID + "_palm_toePos_guide")
        self.ikc.alignTo(mG)
        self.pvc.alignTo(pvc_guide)
        self.joints_ik = common.extractSk(
            self.joints, "_ik", p=self.IK_PART, color=Color.RED, r=3 * rSz
        )
        ikH1 = IkNode(
            "1",
            pf=rID,
            sj=self.upr,
            ee=self.palm,
            jsf="_ik",
            sol=1,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            limbScale=1,
            scaleFix=self.masterC.a["globalScale"],
            RIG_DATA=self.RIG_DATA,
        )
        ikHX = IkNode("X", pf=rID, sj=self.palm, ee=self.digit, jsf="_ik")
        ikH2 = IkNode("2", pf=rID, sj=self.digit, ee=self.ball, jsf="_ik")
        ikH3 = IkNode("3", pf=rID, sj=self.ball, ee=self.tip, jsf="_ik")
        self.ikCstG = GroupNode("ikCstG", pf=rID, snap=self.palm, alignR=mG)
        extraRollG = GroupNode("extraRollG", pf=rID, snap=self.digit, alignR=mG)
        ballRollG = GroupNode("ballRollG", pf=rID, snap=self.ball, alignR=mG)
        toe_wiggle_grp = GroupNode("toe_wiggle_grp", pf=rID, align=self.ball)
        footRollG = GroupNode("footRollG", pf=rID, snap=toePos_guide, alignR=mG)
        toeRollG = GroupNode("toeRollG", pf=rID, snap=toePos_guide, alignR=mG)
        inRollG = GroupNode("inRollG", pf=rID, snap=inPos_guide, alignR=mG)
        outRollG = GroupNode("outRollG", pf=rID, snap=outPos_guide, alignR=mG)
        heelRollG = GroupNode("heelRollG", pf=rID, snap=heelPos_guide, alignR=mG)

        if xDr == 1:
            for g in (
                self.ikCstG,
                extraRollG,
                ballRollG,
                toe_wiggle_grp,
                footRollG,
                toeRollG,
                inRollG,
                outRollG,
                heelRollG,
            ):
                g.a.rx.set2(180, add=1)

        (ikH1, ikHX) | extraRollG | ballRollG | inRollG
        (ikH2, ikH3) | toe_wiggle_grp | inRollG
        inRollG | outRollG | footRollG | toeRollG | heelRollG | self.ikCstG

        self.ikc.snapTo(self.digit)
        self.ikc.cv_drop()

        self.ikc_gimbal = CurveNode(self.ikc).addGimbal()  # attrTgt=self.setting)
        self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)

        self.foot_roll_logic(self.smart_ctl, heelRollG, ballRollG, footRollG, toeRollG)
        self.foot_bank_logic(self.smart_ctl, inRollG, outRollG)

        self.ikc.a.add("kneeTwist") * xDr >> ikH1.a.twist
        (self.ikc, self.pvc, self.ikCstG) | self.IK_PART
        self.pvc_line = CurveNode.buildLineLinked(
            self.joints_ik[2], self.pvc, pf=rID, dspType=2, p=self.IK_PART
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()

        ikH1.stretchyIk(soft=1)
        self.all_ikH = {"main": ikH1, "ball": ikH2, "toe": ikH3}
        self.toe_wiggle_grp = toe_wiggle_grp
        self.hip_fkc.cstPar(self.joints_ik[0], mo=1)

        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal]
        self.ikH1 = ikH1
        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)
        self.extra_roll_logic(ballRollG, extraRollG, self.IK_PART)

    def extra_roll_logic(self, ballRollG, extraRollG, grp):
        rID, rSz, xDr = self.getMyVar()

        # Setup aim logic
        aimGrp = extraRollG.addOffsetGrp(below=1, relink=0)
        aimGrp | extraRollG.offset

        uprIkJ = self.joints_ik[1]
        aimG_loc = LocNode(aimGrp + "_loc", align=uprIkJ, p=grp)
        self.ikc.cstPoi(aimG_loc, mo=1)

        palmAim = self.ikc.a.add("palmAim", min=0, max=1, dv=1)
        dv = -0.5 if "Arm" in rID else 0.5
        rollDistRatio = self.setting.a.add("rollDistRatio", dv=dv)
        common.cstMulti(
            aimG_loc,
            uprIkJ,
            aimGrp,
            cstType="aim",
            w=palmAim,
            worldUpType=2,
            worldUpObject=self.ikc,
            u=(0, 1, 0),
            wu=(1, 0, 0),
        )

        # setup palm rotate logic, after aimGrp is ready
        ofs = extraRollG.addOffsetGrp()
        ofs | aimGrp
        d = ut.distDim_(self.ikc, self.joints_ik[1])
        D = d.get()
        d /= self.masterC.a["globalScale"]
        (d - D) * rollDistRatio * palmAim >> extraRollG.a.rx

        self.extra_ikc = extraRollG.addOffsetGrp(below=1)
        cName = rID + "_extra_ikc"
        CurveNode(self.extra_ikc)(name=cName, shape="rotator", scale=-rSz * xDr)

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        rID, rSz, xDr = self.getMyVar()

        for g in [toeRollG, inRollG, outRollG, heelRollG]:
            ctl = g.addOffsetGrp(below=1)
            CurveNode(ctl)(name=g.name + "_ctl", shape="diamond", scale=rSz / 4)
            self.subCtls.append(ctl)

        self.ballG_ikc = ballRollG.addOffsetGrp(below=1)
        cName = rID + "_ballG_ikc"
        CurveNode(self.ballG_ikc)(
            name=cName,
            shape="stickC",
            scale=-rSz * xDr / 3,
            rotate=(0, 90, 0),
        )
        self.subCtls.append(self.ballG_ikc)

        # Smart Ctl setup
        # self.smart_ctl.snapTo(self.ikc)
        self.smart_ctl.alignTo(self.master_guide)
        self.smart_ctl.a.ty.set(0)
        self.smart_ctl | self.ikc_gimbal
        self.smart_ctl.a.tz.set(rSz * 20)
        self.smart_ctl.addOffsetGrp()
        self.smart_ctl.a.rx >> self.smart_ctl.a["footRoll"]
        -xDr * self.smart_ctl.a.ry >> toeRollG.a.ry  # self.ikc.a["toeTwist"]
        -xDr * self.smart_ctl.a.rz >> self.smart_ctl.a["footBank"]

    def digits_setup(self):
        rID, rSz, xDr = self.getMyVar()

        self.toesCtlsList = []
        scale = xDr * rSz / 8

        for toeJs in self.toesJntList:
            dupTgt = DagNode(toeJs[2])
            ctl, ikJ, ikH = self.build_digit_ik(dupTgt, scale, p=self.ball_fkc)
            ikJ.a.r >> dupTgt.a.r
            ctlList = []
            self.bindJnts.extend(toeJs[:-1])
            fkToeList = toeJs[3:-1]
            for jnt in fkToeList:
                c = CurveNode(
                    jnt + "_ctl", shape="stickC", align=jnt, up="-z", scale=scale
                )
                ctlList.append(c)

            self.build_fk_with_ctl(fkToeList, ctlList, p=self.CTL_DATA, ori=1)
            self.toesCtlsList.append(ctlList)
            self.toesCtlsList.append([ctl])

        for toeJs in self.toesJntList:
            IkNode(
                toeJs[1],
                sj=toeJs[1],
                ee=toeJs[2],
                sol=0,
                scaleFix=self.masterC.a["globalScale"],
                RIG_DATA=self.RIG_DATA,
                vis=0,
                p=self.ball_fkc,
            )

        # splay = self.ball_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45

        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.rz
        #     common.sdk2(splay, tgt, -5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, 5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

    def build_twist_bones(self):
        rID, rSz, xDr = self.getMyVar()

        jnt_names = ["radius", "radiusEnd"]
        radius_JC = self.gen_sk_fr_names(jnt_names, scale=2)
        jnt_names = ["ulna", "ulnaEnd"]
        ulna_JC = self.gen_sk_fr_names(jnt_names, scale=2)

        parent = self.boneFix if self.KNEE_FIX else self.lwr
        (radius_JC[0], ulna_JC[0]) | parent

        radius_loc = LocNode(
            "radius_loc", pf=rID, align=radius_JC[1], p=self.palm, size=rSz
        )
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm, size=rSz)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])
        uType = "objectrotation"
        aim = (xDr, 0, 0)
        z = (0, 0, 1)

        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        self.bindJnts.extend([radius_JC[0], ulna_JC[0]])

    def blend_fk_ik(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting | self.CTL_DATA
        self.setting.alignTo(self.digit)  # , offset=(0, rSz * -xDr * 20, 0))
        ofs = self.setting.addOffsetGrp()
        self.palm.cstPar(ofs, mo=1)

        fkIkBlend = self.setting.a.add("fkIkBlend", min=0, max=1, dv=1)
        for i in range(len(self.joints) - 1):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIkBlend)

        # Useful for fk ik switch popUp menu
        for ctl in self.fkCtl + self.ikCtl + [self.smart_ctl]:
            ctl.a.addSep()
            ctl.a.add("fkIkBlend", proxy=fkIkBlend, k=0)

        GroupNode(self.ikc + "_matcher", align=self.ikc, p=self.digit_fkc)

    def singleBallCtl_setup(self):
        """Make ball ctl the single ctl in both FK IK"""
        rID, rSz, xDr = self.getMyVar()

        fkIkBlend = self.setting.a["fkIkBlend"]
        ball_fkc_ofs = self.ball_fkc.offset
        ball_fkc_ofs.removeCstNodes()

        self.all_ikH["toe"] | self.ball_fkc
        ball_fkj = self.joints_fk[5]

        self.space_align(
            self.ball_fkc,
            spaces=[ball_fkj.offset, self.toe_wiggle_grp],
            w=fkIkBlend,
            cstType="par",
        )
        ballOfsG = GroupNode(
            "ballOfsG",
            pf=rID,
            snap=self.ball.offset,
            p=self.FK_PART,
        )
        ball_fkc_ofs | ballOfsG
        ball_fkj.removeCstNodes()
        self.space_align(
            ball_fkj,
            spaces=[self.ball_fkc, ball_fkj.offset],
            w=fkIkBlend,
            cstType="ori",
            mo=1,
        )

    def build_ribbon(self):
        """
                    upr
        upr_bend     --
        mid_bend     lwr
        lwr_bend     --
                    foot
        """
        rID, rSz, xDr = self.getMyVar()

        num = self.RBN_JNT_NUM
        scale = self.masterC.a["globalScale"]
        data = self.RIG_DATA
        g = self.PRX_GRP

        pf = rID + "_up_"
        ribbonUp = RibbonNode(
            self.upr,
            pf=pf,
            rbJNum=num,
            volMode=1,
            scaleFix=scale,
            p=data,
            size=rSz,
            proxyP=g,
        )
        pf = rID + "_lw_"
        ribbonLw = RibbonNode(
            self.lwr,
            pf=pf,
            rbJNum=num,
            volMode=2,
            scaleFix=scale,
            p=data,
            size=rSz,
            proxyP=g,
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
        cData = self.CTL_DATA
        upr_bend = CurveNode("upr_bend", pf=rID, align=upLoc, addOfs=1, p=cData)
        lwr_bend = CurveNode("lwr_bend", pf=rID, align=lwLoc, addOfs=1, p=cData)
        mid_bend = CurveNode("mid_bend", pf=rID, align=self.lwr, addOfs=1, p=cData)

        self.all_bend = [upr_bend, lwr_bend, mid_bend]
        for b in self.all_bend:
            b(shape="square", up="x", color=Color.D_YELLOW, scale=rSz)

        upLoc.cstPar(upr_bend.offset, mo=1)
        lwLoc.cstPar(lwr_bend.offset, mo=1)
        upr_bend.cstParSca(upLoc.children[0], mo=1)
        lwr_bend.cstParSca(lwLoc.children[0], mo=1)

        self.lwr.cstPar(mid_bend.offset, mo=1)
        mid_bend.cstParSca(ribbonUp.end_loc, mo=1)

        stt_ofs = ribbonLw.stt_loc.addOffsetGrp(count=2)
        mid_bend.cstParSca(stt_ofs[0], mo=1)

        if self.KNEE_FIX:
            self.boneFix_sdk(self.lwr, stt_ofs[1])

        # Add Ctl Attr to mid_bend
        volPower = self.setting.a.add("volume", min=0, max=2, dv=1, k=0)
        volPower >> ribbonUp.volPower
        volPower >> ribbonLw.volPower

        self.add_bind_jnt_set(ribbonUp.rbJnt + ribbonLw.rbJnt)

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP)

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a["fkIkBlend"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.fkCtl[1:-1],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("extraCtl", dv=1, min=0, max=1, k=0),
            onList=self.subCtls,
        )
        # if self.all_bend:
        #     self.ctl_vis_toggle(
        #         self.setting.a.add("bowCtls", min=0, max=1, dv=1, k=0),
        #         onList=self.all_bend,
        #     )
        [ikh.hide() for ikh in self.all_ikH.values()]
        mc.hide(self.joints_fk, self.joints_ik)

    def setup_channel(self):
        self.setting.a.showAttr()
        self.pvc.a.showAttr(t=1)
        self.smart_ctl.a.showAttr(r=1)

        self.extra_ikc.a.showAttr(r=1)
        for ctl in self.fkCtl + self.subCtls + [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

    def setup_rotate_order(self):
        for c in self.fkCtl + self.ikCtl + [self.lwr]:
            c.a.ro.set(2)
        self.smart_ctl.a.ro.set(3)

    def setup_space(self):
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        self.rigNode.a.add("spaceName1", attrType="string", txt="master, hip, COG")
        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        self.rigNode.a.add("spaceName2", attrType="string", txt="leg, master, hip, COG")
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_hip": self.hip_fkc})
        self.rigNode.setMsg({"space_leg": self.ikH1.softJ[0]})

    def post_setup(self):
        self.add_mirror_attr([self.ikc, self.ikc_gimbal, self.pvc, self.smart_ctl])
        ctlSet = (
            self.fkCtl
            + self.ikCtl
            + self.subCtls
            + [self.smart_ctl, self.setting, self.extra_ikc]
        )
        # if self.RBN_BONES:
        #     ctlSet.extend(self.all_bend)
        if self.TOE_BONES:
            [ctlSet.extend(s) for s in self.toesCtlsList or []]
        self.add_ctl_set(ctlSet)
        self.add_bind_jnt_set(self.bindJnts)
        self.setup_space()
        self.setup_anchor_module({"anchorF1": self.hip_fkc})
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()

    def custom_setup(self):
        pass
