import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec
from nl_modules.utils.color import Color


class LegBp(RigModule):
    """Quadruped leg rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        # Accept DagNode or string for rigNode

        rigNode = DagNode(rigNode) if isinstance(rigNode, str) else rigNode
        super().__init__(rigNode)

        # Guide attributes
        guide_attrs = [
            "rbnBones",
            "rbnJntNum",
            "patellaBone",
            "toeBones",
            "twistBones",
            "kneeFix",
            "scapularExtra",
        ]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        self.setting = None

        # Groups
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)
        self.BF_GRP = GrpNode("BF", pf=self.rigID, p=self.CTL_DATA)

        # Joint names and attributes
        self.jnt_names = ["hip", "upr", "lwr", "palm", "ball", "tip"]
        for name in self.jnt_names:
            setattr(self, name, None)
            setattr(self, f"{name}_fkc", None)

        # Joint and control lists
        self.jnts = []
        self.jnts_fk = []
        self.jnts_ik = []
        self.jnts_bf = []

        self.ctls_ik = []
        self.ctls_fk = []
        self.ctls_sub = []
        self.ikhs = []

        # Toes related attributes
        self.toesJntList = []
        self.toesCtlsList = []
        self.toeIKHs = []

        # IK/FK/Blend/Other attributes
        self.jntsFix = None
        self.pvc = None
        self.ikc = None
        self.smart_ctl = None
        self.pin_fkc = None
        self.toe_wiggle_grp = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.ikCstG = None
        self.toesRootJ = (
            rigNode.a["toesRootJ"].inConnNode if rigNode.a["toesRootJ"].exists() else []
        )
        self.ikH1 = None
        self.ikH_PV = None
        self.ball_ikc = None
        self.patellaJ = None
        self.ribbon_up = None
        self.ribbon_lw = None
        self.scapularG = None
        self.scap_fkc = None

    def gen_sk(self):
        """Generate the skeleton for the leg rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jnt_names)

        if self.toeBones:
            self.toesRootJ = self.gen_sk_fr_names(["toesRoot"])[0]
            self.toesRootJ | self.SKL_DATA
            self.toesRootJ.a.segmentScaleCompensate.set(0)
            self.rigNode.setMsg({"toesRootJ": self.toesRootJ})
            TOE_NAMES = [
                ["toe00_1", "toe00_2", "toe00_3", "toe00_4"],
                ["toe01_1", "toe01_2", "toe01_3", "toe01_4", "toe01_5"],
                ["toe02_1", "toe02_2", "toe02_3", "toe02_4", "toe02_5"],
                ["toe03_1", "toe03_2", "toe03_3", "toe03_4", "toe03_5"],
                ["toe04_1", "toe04_2", "toe04_3", "toe04_4", "toe04_5"],
            ]
            for names in TOE_NAMES:
                fgr_jnts = self.gen_sk_fr_names(names)
                fgr_jnts[0].reOrient(
                    upRef=fgr_jnts[1],
                    xDir=self.xDir,
                    up=(0, 0, -1),
                )
                fgr_jnts[0] | self.toesRootJ

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build control nodes for the leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "setting", "z", scale, 1, 2),
            ("hip_fkc", "circle", "x", scale, 0, -1),
            ("upr_fkc", "circle", "x", scale, 0, -1),
            ("lwr_fkc", "circle", "x", scale, 0, -1),
            ("palm_fkc", "circle", "x", scale, 0, -1),
            ("ball_fkc", "circle", "x", scale, 0, -1),
            ("ikc", "foot", None, rSz, 0, -1),
            ("pvc", "pvc", None, rSz, 0, -1),
            ("smart_ctl", "roll", None, scale / 2, 1, -1),
        ]
        if self.scapularExtra:
            ctl_defs.append(("scap_fkc", "arrow4", "x", scale, 0, 2))

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        # self.pvc.cv_rotate(90, 0, 0)
        self.smart_ctl.cv_scale(2, 1, 1)

    def build(self):
        """Build the leg rig module."""
        self.build_pre_module()
        self.jnts = self.rootJ.allChildrenJt2
        self.hip, self.upr, self.lwr, self.palm, self.ball, self.tip = self.jnts

        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        # self.build_nlAutoAim(
        #     self.hip, self.upr, fkc=self.hip_fkc, ikc=self.ikc, ikcGim=self.ikc_gimbal
        # )
        self.jnts_bind = [
            self.hip,
            self.upr,
            self.lwr,
            self.boneFix,
            self.palm,
            self.ball,
        ]

        self.scapularG = self.build_scapular(
            ikc=self.ikc,
            fkc=self.ctls_fk[0],
            jnts=self.jnts,
            EXTRA=self.scapularExtra,
            scapCtl=self.scap_fkc,
        )

        if self.rbnBones:
            self.ribbon_up, self.ribbon_lw = self.build_bendy_ribbon(
                rbJNum=self.rbnJntNum,
                root=self.hip,
                upr=self.upr,
                lwr=self.lwr,
                palm=self.palm,
                kneeFix=self.kneeFix,
            )
            self.twistBones = 0

        if self.kneeFix:
            self.boneFix_setup(self.lwr, self.palm)
            if self.rbnBones:
                self.boneFix.cstPoi(self.ribbon_lw.stt_loc)

        if self.patellaBone:
            self.patellaJ = self.patella_setup()

        if self.twistBones:
            self.build_twist_bones()

        if self.toeBones:
            self.build_toes()

        self.build_post()

    def build_fk(self):
        """Build the FK controls for the leg rig."""
        logging.info(self.rigID)

        self.jnts_fk = common.dupSk(
            self.jnts, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )
        self.ctls_fk = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.ball_fkc,
        ]
        self.build_fk_with_ctl2(self.jnts_fk[:-1], self.ctls_fk[:-1], p=self.FK_GRP)
        # self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        """Build the IK controls for the leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        mg = self.master_guide
        inPos_guide = DagNode(rID + "_palm_inPos_guide")
        outPos_guide = DagNode(rID + "_palm_outPos_guide")
        heelPos_guide = DagNode(rID + "_palm_heelPos_guide")
        toePos_guide = DagNode(rID + "_palm_toePos_guide")
        pvc_guide = DagNode(rID + "_pvc_guide")

        self.ikc.alignTo(mg)
        self.pvc.alignTo(pvc_guide)
        self.jnts_ik = common.dupSk(
            self.jnts, "_ik", p=self.IK_GRP, r=rSz * 3, color=Color.D_RED
        )

        ikH1 = IkNode(
            "1",
            pf=rID,
            sj=self.upr,
            ee=self.palm,
            jsf="_ik",
            solver=Solver.RP,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            localScale=1,
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
            shape="squareR",
            up="x",
            scale=rSz,
            align=self.palm,
            p=self.pvc,
            addOfs=1,
        )
        common.cstMulti(
            self.ikc_gimbal, self.pin_fkc, self.ikCstG, w=fkPin, cstType="par", mo=1
        )

        self.foot_rolling(
            self.smart_ctl, heelRollG, ballRollG, footRollG, toeRollG, inRollG, outRollG
        )

        self.ikc.a.add("kneeTwist") * xDr >> ikH1.a.twist
        (self.ikc, self.pvc, self.ikCstG) | self.IK_GRP
        self.pvc_line = CrvNode.buildLineLinked(
            tgt1=self.jnts_ik[2], tgt2=self.pvc, pf=rID, dspType=2, p=self.IK_GRP
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        self.pvc_line.addOffsetGrp()

        ikH1.stretchyIk(soft=1)
        self.hip_fkc.cstPar(self.jnts_ik[0], mo=1)

        self.ikhs = [ikH1, ikH2, ikH3]
        self.ctls_ik = [self.ikc, self.pvc, self.ikc_gimbal]
        self.ikH1 = ikH1
        self.toe_wiggle_grp = toe_wiggle_grp

        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)

    def blend_fk_ik(self):
        """Blend FK and IK controls for the leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.jnts_bf = common.dupSk(
            self.jnts, "_bf", p=self.BF_GRP, r=self.rigSize * 4, color=Color.D_YELLOW
        )

        self.setting.snapTo(self.palm, p=self.CTL_DATA, ofs=(xDr * rSz * 15, 0, 0))
        self.palm.cstPar(self.setting, mo=1)

        self.setting.a.addSep()
        fkToIk = self.setting.a.add("fkToIk", min=0, max=1, dv=1)
        total = len(self.jnts) - 1

        for i in range(total):
            fkj = self.jnts_fk[i]
            ikj = self.jnts_ik[i]
            bfj = self.jnts_bf[i]
            jnt = self.jnts[i]
            if i > 0:
                common.cstMulti(fkj, ikj, bfj, w=fkToIk)
                # ut.blendN_(fkj.a.t, ikj.a.t, w=fkToIk) >> bfj.a.t
                # ut.blendN_(fkj.a.r, ikj.a.r, w=fkToIk) >> bfj.a.r

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

        # self.hip_fkc.cstPar(self.jnts_bf[0], mo=1)

        # Useful for fk ik switch popUp menu
        for ctl in self.ctls_fk + self.ctls_ik + [self.smart_ctl]:

            ctl.a.add("fkToIk", proxy=fkToIk, k=0)

        GrpNode("matcher", pf=self.ikc, align=self.ikc, p=self.palm_fkc)

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        """Setup sub-controls for the leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = rSz * xDr

        # Sub-controls for IK
        for g in [toeRollG, inRollG, outRollG, heelRollG]:
            ctl = g.addOffsetGrp(below=1)
            CrvNode(ctl)(
                name=g.name + "_ctl", shape="diamond3", scale=scale / 3, width=2
            )
            self.ctls_sub.append(ctl)

        # Ball IK control
        self.ball_ikc = ballRollG.addOffsetGrp(below=1)
        CrvNode(self.ball_ikc)(
            name="ball_ikc",
            pf=rID,
            shape="rotator",
            scale=-scale / 2,
            rotateY=90,
            width=2,
        )
        self.rigNode.setMsg({"ball_ikc": self.ball_ikc})
        self.ctls_ik.append(self.ball_ikc)

        # Smart Ctl setup
        self.smart_ctl.snapAlignTo(toeRollG, self.master_guide)
        self.smart_ctl | self.ikc_gimbal
        self.smart_ctl.addOffsetGrp()
        self.smart_ctl.a.rx >> self.smart_ctl.a["footRoll"]
        -xDr * self.smart_ctl.a.ry >> toeRollG.a.ry
        -xDr * self.smart_ctl.a.rz >> self.smart_ctl.a["footBank"]

    def build_toes(self):
        """Build the toe controls for the leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Parent toes root to palm ---
        self.toesRootJ | self.palm

        # --- Gather all toe joint chains ---
        self.toesJntList = []
        for rootJ in self.toesRootJ.childrenJt:
            self.toesJntList.append([fgr for fgr in rootJ.allChildrenJt2])
            rootJ.a.segmentScaleCompensate.set(0)

        # --- Build toe controls ---
        self.toesCtlsList = []
        scale = xDr * rSz

        for toeJs in self.toesJntList:
            # IK setup for toe
            ikTgt = JntNode(toeJs[1])
            ctl, ikJ, ikH = self.build_digit_ik(ikTgt, scale=scale / 4, p=self.ball_fkc)
            self.toeIKHs.append(ikH)
            ikJ.a.r >> ikTgt.a.r

            # FK setup for toe
            ctlList = []
            self.jnts_bind.extend(toeJs[:-1])
            fkToeList = toeJs[2:-1]
            for jnt in fkToeList:
                crvName = f"{jnt.name}_ctl_#"
                crv = CrvNode(crvName, up="x", scale=scale / 6, align=jnt)

                ctlList.append(crv)

            self.build_fk_with_ctl(fkToeList, ctlList, p=self.CTL_DATA, oriOnly=1)
            self.toesCtlsList.append(ctlList)
            self.toesCtlsList.append([ctl])

        # --- Remove palm and ball from bind joints (handled by toes) ---
        self.updateBindJntList(remove=[self.palm, self.ball])

        # --- (Optional) Splay logic for toes (commented out) ---
        # splay = self.ball_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45
        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.rz
        #     common.sdk2(splay, tgt, -5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, 5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

    def build_twist_bones(self):
        """Build twist bones for the leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], scale=2)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], scale=2)

        parent = self.boneFix if self.kneeFix else self.lwr
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

        self.updateBindJntList(
            remove=[self.lwr, self.boneFix], extend=[radius_JC[0], ulna_JC[0]]
        )

    def setup_vis(self):
        """Setup visibility for the leg rig controls."""
        self.pvc.a["fkPin"] >> self.pin_fkc.a.v
        self.ctl_vis_toggle(
            self.setting.a["fkToIk"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.ctls_fk[1:-1],
        )
        # self.ctl_vis_toggle(
        #     self.ikc.a.add("extraCtl", dv=1, attrType="bool", k=0),
        #     onList=self.ctls_sub,
        # )
        self.ctl_vis_toggle(
            self.setting.a.add("setupJnts", attrType="bool", dv=0, k=0),
            onList=self.jnts_fk + self.jnts_ik + self.jnts_bf,
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("pvc", attrType="bool", dv=1, k=0),
            onList=[self.pvc.offset, self.pvc_line.offset],
        )
        if self.rbnBones:
            self.ctl_vis_toggle(
                self.setting.a.add("bendyCtls", attrType="bool", dv=0, k=0),
                onList=self.all_bend,
            )
        mc.hide(self.ikhs, self.toeIKHs)

    def setup_channel(self):
        """Setup channels for the leg rig controls."""
        self.setting.a.showAttr()
        self.pvc.a.showAttr(t=1, r=1)
        self.smart_ctl.a.showAttr(r=1)
        self.ball_ikc.a.showAttr(r=1)

        for ctl in self.ctls_fk + self.ctls_sub + self.ctls_ik:
            # [self.ikc, self.pvc, self.pin_fkc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

        if self.scapularExtra:
            self.scap_fkc.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the leg rig controls."""
        for c in (
            self.ctls_fk
            + self.ctls_ik
            + [
                self.lwr,
                self.jnts_bf[2],
                self.jnts_fk[2],
                self.jnts_ik[2],
                self.pin_fkc,
            ]
        ):
            c.a.ro.set(2)
        self.smart_ctl.a.ro.set(3)

    def setup_space(self):
        """Setup space switching for the leg rig controls."""
        self.rigNode.a.add("spaceName1", attrType="string", txt="master, COG, lwrBody")
        self.rigNode.a.add("spaceName2", attrType="string", txt="leg, master, hip, COG")

        self.ikH1.build_pvfkPinSetup(ikTarget=self.ikc_gimbal)

        self.rigNode.setMsg(
            {
                "spaceHolder1": self.ikc,
                "spaceHolder2": self.pvc,
                "space_master": self.masterC,
                "space_leg": self.ikH1.pvJnt[0],
            }
        )

    def setup_anchor(self):
        """Setup anchor for the leg rig controls."""
        self.setup_anchor_module({"anchorF1": self.scapularG.offset})

    def setup_scale(self):
        """Setup scaling for the leg rig controls."""
        self.masterC.a.globalScale >> self.RIG_DATA.a.s
        self.masterC.a.globalScale >> self.SKL_DATA.a.s

        foot_scale = self.setting.a.add("footScale", min=0.01, dv=1)
        self.ikc.a.add("footScale", min=0.01, proxy=foot_scale)
        self.ball_fkc.a.add("footScale", min=0.01, proxy=foot_scale)

        foot_scale >> self.ball_fkc.offset.a.s
        foot_scale >> self.ikc.a.s

        for jnt in [self.palm, self.jnts_fk[3], self.jnts_ik[3], self.jnts_bf[3]]:
            foot_scale >> jnt.a.s

        for jnt in [
            self.palm,
            self.jnts[4],
            self.jnts_fk[4],
            self.jnts_ik[4],
            self.jnts_bf[4],
        ]:
            jnt.a["segmentScaleCompensate"].set(0)

    def setup_ctlSet(self):
        """Setup control sets for the leg rig module."""
        ctlSet = (
            self.ctls_fk
            + self.ctls_ik
            + self.ctls_sub
            + [self.setting, self.smart_ctl, self.pin_fkc]
        )
        if self.rbnBones:
            ctlSet.extend(self.all_bend)

        if self.toeBones:
            [ctlSet.extend(s) for s in self.toesCtlsList]

        self.add_ctl_set(ctlSet)

        common.add_mirror_attr(
            [
                self.ikc,
                self.ikc_gimbal,
                self.smart_ctl,
                self.pvc,
            ]
        )

    def setup_bindJnt(self):
        """Setup bind joints for the leg rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_proxy_radiusScale(self.jnts_bind, 2)
        self.add_proxy_height(self.jnts_bind, 20 * self.rigSize / self.rbnJntNum)

    def build_post(self):
        """Post setup for the leg rig module."""
        logging.info(self.rigID)

        self.setup_scale()
        self.setup_ctlSet()
        self.setup_bindJnt()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
