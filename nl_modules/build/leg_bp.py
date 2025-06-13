import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.rbn_node import RbnNode
from nl_modules.utils.color import Color
from nl_modules.utils import common, utils_node as ut, maths


class LegBp(RigModule):
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
        self.SCAPULAR_EXTRA = self.master_guide.a.scapularExtra.get()

        rID, rSz, xDr = self.getMyVar()

        self.FK_GRP = GrpNode("FK", pf=rID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=rID, p=self.CTL_DATA)
        self.BF_GRP = GrpNode("BF", pf=rID, p=self.CTL_DATA)

        self.setting = None
        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        self.joints_bf = []
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
        self.ball_fkc = None
        self.pvc = None
        self.ikc = None
        self.smart_ctl = None
        self.pin_fkc = None
        self.ikCtl = None
        self.fkCtl = None
        self.toe_wiggle_grp = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.all_ikHs = []
        self.all_bend = None
        self.ikCstG = None
        self.subCtls = []
        self.toesJntList = None
        self.toesCtlsList = None
        self.toesRootJ = rigNode.a.toesRootJ.inConnNode
        self.ikH1 = None
        self.ikH_PV = None
        self.ballG_ikc = None
        self.patellaJ = None
        self.ribbonUp = None
        self.ribbonLw = None
        self.toeIKHs = []
        self.scapularG = None
        self.scap_fkc = None

    def genSk(self):
        rID, rSz, xDr = self.getMyVar()
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["hip", "upr", "lwr", "palm", "ball", "tip"])

        if self.TOE_BONES:
            self.toesRootJ = self.gen_sk_fr_names(["toesRoot"])[0]
            self.toesRootJ | self.SKL_DATA
            self.toesRootJ.a.segmentScaleCompensate.set(0)
            self.rigNode.setMsg({"toesRootJ": self.toesRootJ})
            toe_names = [
                ["toe00_1", "toe00_2", "toe00_3", "toe00_4"],
                ["toe01_1", "toe01_2", "toe01_3", "toe01_4", "toe01_5"],
                ["toe02_1", "toe02_2", "toe02_3", "toe02_4", "toe02_5"],
                ["toe03_1", "toe03_2", "toe03_3", "toe03_4", "toe03_5"],
                ["toe04_1", "toe04_2", "toe04_3", "toe04_4", "toe04_5"],
            ]
            for names in toe_names:
                fgr_jnts = self.gen_sk_fr_names(names, scale=2)
                fgr_jnts[0].orientJnt(aim=(xDr, 0, 0), u=(0, 0, -xDr))
                fgr_jnts[0] | self.toesRootJ

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CrvNode(
            "setting", pf=rID, shape="bagua", scale=-rSz * 2, top=1, moveY=rSz * 5
        )
        self.hip_fkc = CrvNode(
            "hip_fkc",
            pf=rID,
            up="-y",
            shape="squR",
            scale=rSz * xDr,
            moveY=rSz * xDr * -15,
        )
        self.upr_fkc = CrvNode("upr_fkc", pf=rID, shape="squR", up="x", scale=rSz)
        self.lwr_fkc = CrvNode("lwr_fkc", pf=rID, shape="squR", up="x", scale=rSz)
        self.palm_fkc = CrvNode("palm_fkc", pf=rID, shape="squR", up="x", scale=rSz)
        self.ball_fkc = CrvNode("ball_fkc", pf=rID, up="x", shape="squR", scale=rSz / 2)
        self.ikc = CrvNode("ikc", pf=rID, shape="foot", scale=rSz * 2)
        self.pvc = CrvNode("pvc", pf=rID, shape="diamond", scale=rSz)
        self.smart_ctl = CrvNode(
            "smart_ctl", pf=rID, shape="squR", scale=rSz / 4, width=2
        )

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "smart_ctl": self.smart_ctl,
                "hip_fkc": self.hip_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "ball_fkc": self.ball_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
            }
        )
        if self.SCAPULAR_EXTRA:
            self.scap_fkc = CrvNode(
                "scap_fkc", pf=rID, shape="sphere", scale=rSz, moveX=rSz * 45 * -xDr
            )

    def build(self):
        """Build rig for joints
        hip 0
            upr 1
                lwr 2
                    palm 3
                        ball 4
                            tip 5
        """
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.hip, self.upr, self.lwr, self.palm, self.ball, self.tip = self.joints

        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        # self.build_autoAim(
        #     self.hip, self.upr, fkc=self.hip_fkc, ikc=self.ikc, ikcGim=self.ikc_gimbal
        # )
        if not self.SCAPULAR_EXTRA:
            self.bindJnts.append(self.hip)

        self.scapularG = self.build_scapular(
            ikc=self.ikc,
            fkc=self.fkCtl[0],
            jnts=self.joints,
            EXTRA=self.SCAPULAR_EXTRA,
            scap_fkc=self.scap_fkc,
        )

        if self.RBN_BONES:
            self.build_ribbon()
        else:
            self.bindJnts.append(self.upr)

        if not self.RBN_BONES and not self.KNEE_FIX and not self.TWIST_BONES:
            self.bindJnts.append(self.lwr)

        if self.KNEE_FIX:
            self.boneFix_setup(self.lwr, self.palm)
            if self.RBN_BONES:
                self.boneFix.cstPoi(self.ribbonLw.stt_loc)
            elif not self.TWIST_BONES:
                self.bindJnts.append(self.boneFix)

        if self.PATELLA_BONE:
            self.patellaJ = self.patella_setup()

        if self.TWIST_BONES:
            self.build_twist_bones()

        if self.TOE_BONES:
            self.toesRootJ | self.palm
            self.toesJntList = []
            for rootJ in self.toesRootJ.childrenJt:
                self.toesJntList.append([fgr for fgr in rootJ.allChildrenJt2])
                rootJ.a.segmentScaleCompensate.set(0)
            self.build_toes()
        else:
            self.bindJnts.extend([self.palm, self.ball])

        # Scaling
        self.masterC.a.globalScale >> self.RIG_DATA.a.s
        self.masterC.a.globalScale >> self.SKL_DATA.a.s

        palmScale = self.setting.a.add("palmScale", min=0.01, dv=1)
        self.ikc.a.add("palmScale", min=0.01, proxy=palmScale)
        palmScale >> self.ball_fkc.offset.a.s
        palmScale >> self.joints_bf[3].a.s
        palmScale >> self.palm.a.s
        palmScale >> self.ikc.a.s

        self.post_setup()

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        self.joints_fk = common.extractSk(self.joints, "_fk", p=self.FK_GRP, r=rSz)
        self.fkCtl = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.ball_fkc,
        ]
        self.build_fk_with_ctl2(self.joints_fk[:-1], self.fkCtl[:-1], p=self.FK_GRP)
        # self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()

        mg = self.master_guide
        inPos_guide = DagNode(rID + "_palm_inPos_guide")
        outPos_guide = DagNode(rID + "_palm_outPos_guide")
        heelPos_guide = DagNode(rID + "_palm_heelPos_guide")
        toePos_guide = DagNode(rID + "_palm_toePos_guide")
        pvc_guide = DagNode(rID + "_pvc_guide")

        self.ikc.alignTo(mg)
        self.pvc.alignTo(pvc_guide)
        self.joints_ik = common.extractSk(self.joints, "_ik", p=self.IK_GRP, r=rSz)

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
            scaleFix2=self.CTL_DATA.a.sy,
            RIG_DATA=self.RIG_DATA,
        )
        ikH2 = IkNode("2", pf=rID, sj=self.palm, ee=self.ball, jsf="_ik")
        ikH3 = IkNode("3", pf=rID, sj=self.ball, ee=self.tip, jsf="_ik")

        self.ikCstG = GrpNode("ikCstG", pf=rID, snap=self.palm, alignR=mg)
        ballRollG = GrpNode("ballRollG", pf=rID, snap=self.ball, alignR=mg)
        toe_wiggle_grp = GrpNode("toe_wiggle_grp", pf=rID, align=self.ball)
        footRollG = GrpNode("footRollG", pf=rID, snap=toePos_guide, alignR=mg)
        toeRollG = GrpNode("toeRollG", pf=rID, snap=toePos_guide, alignR=mg)
        inRollG = GrpNode("inRollG", pf=rID, snap=inPos_guide, alignR=mg)
        outRollG = GrpNode("outRollG", pf=rID, snap=outPos_guide, alignR=mg)
        heelRollG = GrpNode("heelRollG", pf=rID, snap=heelPos_guide, alignR=mg)

        if xDr == 1:
            for g in (
                self.ikCstG,
                ballRollG,
                toe_wiggle_grp,
                footRollG,
                toeRollG,
                inRollG,
                outRollG,
                heelRollG,
            ):
                g.a.rx.set2(180, add=1)

        ikH1 | ballRollG | inRollG
        (ikH2, ikH3) | toe_wiggle_grp | inRollG
        inRollG | outRollG | footRollG | toeRollG | heelRollG | self.ikCstG
        self.ikc.snapTo(self.palm)
        self.ikc.cv_drop()
        self.ikc_gimbal = CrvNode(self.ikc).add_gimbal()
        #   Constrain ikCstG supporting fk limb
        #   self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)
        self.ikc_gimbal.cstSca(self.ikCstG, mo=1)
        fkPin = self.pvc.a.add("fkPin", min=0, max=1)
        self.pin_fkc = CrvNode(
            rID + "_pin_fkc",
            shape="squR",
            up="x",
            scale=rSz,
            align=self.palm,
            p=self.pvc,
            addOfs=1,
        )
        common.cstMulti(
            self.ikc_gimbal, self.pin_fkc, self.ikCstG, w=fkPin, cstType="par", mo=1
        )

        self.foot_roll_logic(self.smart_ctl, heelRollG, ballRollG, footRollG, toeRollG)
        self.foot_bank_logic(self.smart_ctl, inRollG, outRollG)

        self.ikc.a.add("kneeTwist") * xDr >> ikH1.a.twist
        (self.ikc, self.pvc, self.ikCstG) | self.IK_GRP
        self.pvc_line = CrvNode.buildLineLinked(
            self.joints_ik[2], self.pvc, pf=rID, dspType=2, p=self.IK_GRP
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()

        ikH1.stretchyIk(soft=1)
        self.hip_fkc.cstPar(self.joints_ik[0], mo=1)

        self.all_ikHs = [ikH1, ikH2, ikH3]
        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal]
        self.ikH1 = ikH1
        self.toe_wiggle_grp = toe_wiggle_grp

        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)

    def blend_fk_ik(self):
        rID, rSz, xDr = self.getMyVar()

        self.joints_bf = common.extractSk(self.joints, "_bf", p=self.BF_GRP, r=rSz)

        self.setting.snapTo(self.hip, p=self.CTL_DATA)
        self.hip.cstPar(self.setting, mo=1)

        self.setting.a.addSep()
        fkIkBlend = self.setting.a.add("fkIkBlend", min=0, max=1, dv=1)
        total = len(self.joints) - 1

        for i in range(total):
            fkj = self.joints_fk[i]
            ikj = self.joints_ik[i]
            bfj = self.joints_bf[i]
            jnt = self.joints[i]
            # common.cstMulti(fkj, ikj, bfj, w=fkIkBlend)
            if i > 0:
                # ut.blendN_(fkj.a.tx, ikj.a.tx, w=fkIkBlend) >> bfj.a.tx
                ut.blendN_(fkj.a.t, ikj.a.t, w=fkIkBlend) >> bfj.a.t
                ut.blendN_(fkj.a.r, ikj.a.r, w=fkIkBlend) >> bfj.a.r

            if i == 0:
                self.hip_fkc.cstPar(jnt, mo=1)
                self.hip_fkc.cstPar(bfj, mo=1)
                bfj.a.r >> jnt.a.r
            elif i < total - 1:
                bfj.a.t >> jnt.a.t
                bfj.a.r >> jnt.a.r
            else:
                #   ballJ_bfj --> ball_fkc's parent
                #   ball_fkc --> ball_jnt
                self.ball_fkc.alignTo(self.ball, p=self.FK_GRP)
                ofg = self.ball_fkc.addOffsetGrp()
                bfj.cstPar(ofg, mo=1)
                self.ball_fkc.cstPar(jnt)

        # self.hip_fkc.cstPar(self.joints_bf[0], mo=1)

        # Useful for fk ik switch popUp menu
        for ctl in self.fkCtl + self.ikCtl + [self.smart_ctl]:
            ctl.a.addSep()
            ctl.a.add("fkIkBlend", proxy=fkIkBlend, k=0)

        GrpNode("matcher", pf=self.ikc, align=self.ikc, p=self.palm_fkc)

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        rID, rSz, xDr = self.getMyVar()

        for g in [toeRollG, inRollG, outRollG, heelRollG]:
            ctl = g.addOffsetGrp(below=1)
            CrvNode(ctl)(
                name=g.name + "_ctl", shape="diamond", scale=rSz / 4, color=1, width=2
            )
            self.subCtls.append(ctl)

        self.ballG_ikc = ballRollG.addOffsetGrp(below=1)
        CrvNode(self.ballG_ikc)(
            name="ballG_ikc",
            pf=rID,
            shape="stickC",
            scale=-rSz * xDr / 2,
            rotate=(0, 90, 0),
            width=2,
        )
        self.ikCtl.append(self.ballG_ikc)

        # Smart Ctl setup
        self.smart_ctl.snapAlignTo(toeRollG, self.master_guide)
        self.smart_ctl | self.ikc_gimbal
        self.smart_ctl.addOffsetGrp()
        self.smart_ctl.a.rx >> self.smart_ctl.a["footRoll"]
        -xDr * self.smart_ctl.a.ry >> toeRollG.a.ry
        -xDr * self.smart_ctl.a.rz >> self.smart_ctl.a["footBank"]

    def build_toes(self):
        rID, rSz, xDr = self.getMyVar()

        self.toesCtlsList = []
        scale = xDr * rSz / 5

        for toeJs in self.toesJntList:
            ikTgt = JntNode(toeJs[1])
            ctl, ikJ, ikH = self.build_digit_ik(ikTgt, scale=scale, p=self.ball_fkc)
            self.toeIKHs.append(ikH)
            ikJ.a.r >> ikTgt.a.r
            ctlList = []
            self.bindJnts.extend(toeJs[:-1])
            fkToeList = toeJs[2:-1]
            for jnt in fkToeList:
                c = CrvNode(
                    jnt + "_ctl", shape="squR", align=jnt, up="x", scale=scale, top=1
                )
                ctlList.append(c)

            self.build_fk_with_ctl(fkToeList, ctlList, p=self.CTL_DATA, ori=1)
            self.toesCtlsList.append(ctlList)
            self.toesCtlsList.append([ctl])

        # splay = self.ball_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45

        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.rz
        #     common.sdk2(splay, tgt, -5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, 5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

    def build_twist_bones(self):
        rID, rSz, xDr = self.getMyVar()

        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], color=4, scale=2)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], color=4, scale=2)

        parent = self.boneFix if self.KNEE_FIX else self.lwr
        (radius_JC[0], ulna_JC[0]) | parent

        radius_loc = LocNode("radius_loc", pf=rID, align=radius_JC[1], p=self.palm)
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm)
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

    def build_ribbon(self):
        """
                    upr
        upr_bend     --
        mid_bend     lwr
        lwr_bend     --
                    foot
        """
        rID, rSz, xDr = self.getMyVar()

        self.ribbonUp = RbnNode(
            self.upr,
            pf=rID + "_up_",
            rbJNum=self.RBN_JNT_NUM,
            volMode="upr",
            scaleFix=self.masterC.a["globalScale"],
            size=rSz,
            p=self.RIG_DATA,
        )
        self.ribbonLw = RbnNode(
            self.lwr,
            pf=rID + "_lw_",
            rbJNum=self.RBN_JNT_NUM,
            volMode="lwr",
            scaleFix=self.masterC.a["globalScale"],
            size=rSz,
            p=self.RIG_DATA,
        )
        # --------------------------------
        # Upper Ribbon
        # --------------------------------
        self.upr.cstPoi(self.ribbonUp.stt_loc)
        self.hip.cstOri(self.ribbonUp.stt_loc, mo=1)
        # --------------------------------
        # Lower Ribbon
        # --------------------------------
        self.palm.cstPar(self.ribbonLw.end_loc, mo=1)
        # --------------------------------
        # Ribbon Controls
        # --------------------------------

        # Bend Ctl Setup
        upLoc = self.ribbonUp.mid_loc
        lwLoc = self.ribbonLw.mid_loc
        grp = self.CTL_DATA
        upr_bend = CrvNode("upr_bend", pf=rID, align=upLoc, addOfs=1, p=grp)
        lwr_bend = CrvNode("lwr_bend", pf=rID, align=lwLoc, addOfs=1, p=grp)
        mid_bend = CrvNode("mid_bend", pf=rID, align=self.lwr, addOfs=1, p=grp)

        self.all_bend = [upr_bend, lwr_bend, mid_bend]
        for ctl in self.all_bend:
            ctl(shape="squR", up="x", color=Color.D_YELLOW, scale=rSz)
            # ctl.a.rotateOrder.set(1)  # yzx

        upLoc.cstPar(upr_bend.offset, mo=1)
        lwLoc.cstPar(lwr_bend.offset, mo=1)
        upr_bend.cstParSca(upLoc.children[0], mo=1)
        lwr_bend.cstParSca(lwLoc.children[0], mo=1)

        self.lwr.cstPar(mid_bend.offset, mo=1)
        mid_bend.cstParSca(self.ribbonUp.end_loc, mo=1)
        stt_ofs = self.ribbonLw.stt_loc.addOffsetGrp(count=2)
        mid_bend.cstParSca(stt_ofs[0], mo=1)

        if self.KNEE_FIX:
            self.boneFix_sdk(self.lwr, stt_ofs[1])

        # add volType attr to setting
        autoVol = self.setting.a.add("autoVol")
        autoVol >> self.ribbonUp.autoVol
        autoVol >> self.ribbonLw.autoVol

        volType = self.setting.a.add(
            "volType", attrType="enum", enumName="whole:separate", k=0
        )
        volType >> self.ribbonUp.volType
        volType >> self.ribbonLw.volType

        self.bindJnts.extend(self.ribbonUp.rbJnt + self.ribbonLw.rbJnt)

    def setup_vis(self):
        self.pvc.a["fkPin"] >> self.pin_fkc.a.v
        self.ctl_vis_toggle(
            self.setting.a["fkIkBlend"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.fkCtl[1:-1],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("extraCtl", dv=1, attrType="bool", k=0),
            onList=self.subCtls,
        )
        if self.RBN_BONES:
            self.ctl_vis_toggle(
                self.setting.a.add("bendyCtl", attrType="bool", dv=0),
                onList=self.all_bend,
            )
        mc.hide(self.all_ikHs, self.toeIKHs)
        mc.hide(self.joints_fk, self.joints_ik, self.joints_bf)

    def setup_channel(self):
        self.setting.a.showAttr()
        self.pvc.a.showAttr(t=1, r=1)
        self.smart_ctl.a.showAttr(r=1)
        self.ballG_ikc.a.showAttr(r=1)

        for ctl in self.fkCtl + self.subCtls + [self.ikc, self.pvc, self.pin_fkc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

        if self.SCAPULAR_EXTRA:
            self.scap_fkc.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        for c in (
            self.fkCtl
            + self.ikCtl
            + [
                self.lwr,
                self.joints_bf[2],
                self.joints_fk[2],
                self.joints_ik[2],
                self.pin_fkc,
            ]
        ):
            c.a.ro.set(2)
        self.smart_ctl.a.ro.set(3)

    def setup_space(self):
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        spaces = "master, COG, lwrBody"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        spaces = "leg, master, hip, COG"
        self.rigNode.a.add("spaceName2", attrType="string", txt=spaces)

        # self.rigNode.setMsg({"space_master": self.CTL_DATA})
        self.rigNode.setMsg({"space_master": self.masterC})

        self.ikH1.build_pvfkPinSetup(ikTarget=self.ikc_gimbal)
        self.rigNode.setMsg({"space_leg": self.ikH1.pvChainJ[0]})

    def setup_anchor(self):
        self.setup_anchor_module({"anchorF1": self.scapularG.offset})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_info(self.bindJnts, ratio=2.5)

        self.add_proxy_info(self.bindJnts, ratio=3)

        self.add_mirror_attr([self.ikc, self.ikc_gimbal, self.smart_ctl])
        ctlSet = []
        ctlSet.extend(
            self.fkCtl
            + self.ikCtl
            + self.subCtls
            + [self.setting, self.smart_ctl, self.pin_fkc]
        )
        if self.RBN_BONES:
            ctlSet.extend(self.all_bend)
        if self.TOE_BONES:
            [ctlSet.extend(s) for s in self.toesCtlsList]

        self.add_ctl_set(ctlSet)
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
