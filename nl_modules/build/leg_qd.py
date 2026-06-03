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
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec


class LegQd(RigModule):
    """Quadruped leg rig module."""

    def __init__(self, mg):
        super().__init__(mg)

        guide_attrs = [
            "ribbon",
            "dualBone",
            "toeBones",
            "patellaBone",
            "scapulaBone",
            "kneeFix",
            "toeNum",
            "scapulaAutoAim",
            "palmAimRatio",
        ]
        for attr in guide_attrs:
            setattr(self, attr, self.masterGuide.a[attr].get())

        self.setting = None

        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)

        self.jnt_names = ["hip", "upr", "lwr", "palm", "digit", "ball", "tip"]
        for name in self.jnt_names:
            setattr(self, name, None)
            setattr(self, f"{name}_fkc", None)

        self.jnts = []
        self.jnts_fk = []
        self.jnts_ik = []
        self.jnts_toes = []

        self.ctls_ik = []
        self.ctls_fk = []
        self.ctls_sub = []

        self.all_ikHs = {}
        self.toesJntList = []
        self.toesCtlsList = []
        self.toeIKHs = []

        self.ikc = None
        self.pvc = None
        self.smart_ctl = None
        self.toe_wiggle_grp = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.ikCstG = None
        self.extra_ikc = None
        # self.all_bendy = []

        self.toesRootJ = DagNode(mg).a.toesRootJ.inConnNode

        self.ikH1 = None
        self.ball_ikc = None
        self.scapulaG = None
        self.scap_fkc = None

    def gen_sk(self):
        """Generate the skeleton for the quadruped leg rig."""

        # --- Generate main skeleton module and root joints ---
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jnt_names)

        # --- Toes setup (if enabled) ---
        if self.toeBones:
            # Create toes root joint and parent to skeleton data
            self.toesRootJ = self.gen_sk_fr_names(["toesRoot"])[0]
            self.toesRootJ | self.JNT_DATA
            self.masterGuide.setMsg({"toesRootJ": self.toesRootJ})

            # Define all possible toe joint name lists
            ALL_TOE_NAMES = [
                ["toe00_1", "toe00_2", "toe00_3", "toe00_4"],
                ["toe01_1", "toe01_2", "toe01_3", "toe01_4", "toe01_5"],
                ["toe02_1", "toe02_2", "toe02_3", "toe02_4", "toe02_5"],
                ["toe03_1", "toe03_2", "toe03_3", "toe03_4", "toe03_5"],
                ["toe04_1", "toe04_2", "toe04_3", "toe04_4", "toe04_5"],
            ]
            TOE_DICT = {
                2: ALL_TOE_NAMES[2:4],
                3: ALL_TOE_NAMES[2:5],
                4: ALL_TOE_NAMES[1:5],
                5: ALL_TOE_NAMES,
            }
            TOE_NAMES = TOE_DICT.get(self.toeNum, [])

            for names in TOE_NAMES:
                fgr_jnts = self.gen_sk_fr_names(names, r=0.5)
                fgr_jnts[0].reOrient(
                    upRef=fgr_jnts[1],
                    xDir=self.xDir,
                    up=(0, 0, -1),
                )
                fgr_jnts[0] | self.toesRootJ
                self.jnts_toes.extend(fgr_jnts)

        # --- Finalize root joint setup ---
        self.rootJ = root_list[0]
        self.rootJ | self.JNT_DATA
        self.masterGuide.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build_ctl(self):
        """Build control nodes for the quadruped leg rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "screw_nut", "z", rSz, 0),
            # ("hip_fkc", "shoulder", "x", Vec((0.5, 0.3, 0.5)) * -scale, 0),
            ("hip_fkc", "arrow", None, -scale, 1),
            ("upr_fkc", "circleV", "x", scale, 0),
            ("lwr_fkc", "circleV", "x", scale, 0),
            ("palm_fkc", "circleV", "x", scale, 0),
            ("digit_fkc", "circleV", "x", scale, 0),
            ("ball_fkc", "rotate2_3d", "z", -scale / 3, 0),
            ("ikc", "trapezoid_3d", None, Vec((2, 0.8, 2)) * rSz, 0),
            ("extra_ikc", "rotate2_3d", None, Vec((0.5, 1, 1)) * -scale, 0),
            ("pvc", "sphere", None, rSz * 0.7, 0),
            ("smart_ctl", "pyramid", None, scale / 2, 0),
        ]

        if self.scapulaBone:
            ctl_defs.append(("scap_fkc", "arrow", "z", scale * 0.6, 0))

        for name, shape, up, sca, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, sca, top)

        if self.scapulaBone:
            self.scap_fkc.cv_rotate(0, 90, 0)
            self.scap_fkc.cv_move(0, scale * 12, 0)
        #     self.scap_fkc.cv_rotate(-90, 0, 0)

        if xDr == -1:
            self.smart_ctl.cv_rotate(180, 0, 0)

        self.setting.cv_move(scale * 15, 0, 0)
        self.ikc.cv_move(0, 0, rSz * 5)
        self.hip_fkc.cv_rotate(0, 90, 0)
        # self.hip_fkc.cv_move(0, -scale * 8, 0)

    def build(self):
        """Build the quadruped leg rig module."""
        self.build_pre_module()
        self.jnts = self.rootJ.allChildrenJt2
        self.hip, self.upr, self.lwr, self.palm, self.digit, self.ball, self.tip = (
            self.jnts
        )
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()

        self.jnts_bind = self.jnts[:-1]
        self.jnts_sk = self.jnts[:-1]

        self.scapulaG = self.build_legScapula(
            ikc=self.ikc,
            fkc=self.ctls_fk[0],
            hipJ=self.hip,
            uprJ=self.upr,
            addScap=self.scapulaBone,
            scapCtl=self.scap_fkc,
            autoAim_dv=self.scapulaAutoAim,
        )
        if self.scapulaBone:
            self.scap_fkc.cv_moveTo(self.hip.o.pos)

        self.singleBallCtl_setup()

        if self.patellaBone:
            self.patella_setup()

        if self.kneeFix:
            self.kneeFix_setup(self.lwr, self.palm)

        if self.dualBone:
            self.build_dual_bones()

        if self.toeBones:
            self.build_toes()
            self.update_list(self.jnts_bind, rm=[self.ball])
            self.update_list(self.jnts_sk, rm=[self.ball])

        self.build_post()

    def build_toes(self):
        """Build the toe joints and controls for the quadruped leg rig."""
        self.toesRootJ | self.palm

        self.toesJntList = []
        for rJ in self.toesRootJ.childrenJt:
            self.toesJntList.append([fgr for fgr in rJ.allChildrenJt2])
            rJ.a.segmentScaleCompensate.set(0)

        self.build_digits()

    def build_fk(self):
        """Build the FK controls and joints for the quadruped leg rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        self.jnts_fk = common.dupSk(self.jnts, "_fk", p=self.FK_GRP, r=rSz * 2)
        self.ctls_fk = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.digit_fkc,
            self.ball_fkc,
        ]
        self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)

    def build_ik(self):
        """Build the IK controls for the quadruped leg rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        # --- Guide and alignment setup ---
        mg = self.masterGuide
        pvc_guide = DagNode(rID + "_pvc_guide")
        inPos_guide = DagNode(rID + "_palm_inPos_guide")
        outPos_guide = DagNode(rID + "_palm_outPos_guide")
        heelPos_guide = DagNode(rID + "_palm_heelPos_guide")
        toePos_guide = DagNode(rID + "_palm_toePos_guide")

        # Align main IK and pole vector controls
        self.ikc.alignTo(mg)
        self.pvc.alignTo(pvc_guide)

        # --- IK joint chain creation ---
        self.jnts_ik = common.dupSk(self.jnts, "_ik", p=self.IK_GRP, r=rSz * 3)

        # --- IK handle creation ---
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
            p_data=self.CTL_DATA,
        )
        ikHX = IkNode("X", pf=rID, sj=self.palm, ee=self.digit, jsf="_ik")
        ikH2 = IkNode("2", pf=rID, sj=self.digit, ee=self.ball, jsf="_ik")
        ikH3 = IkNode("3", pf=rID, sj=self.ball, ee=self.tip, jsf="_ik")

        # --- Group and roll hierarchy setup ---
        self.ikCstG = GrpNode("ikCstG", pf=rID, snap=self.palm, alignR=mg)
        extraRollG = GrpNode("extraRollG", pf=rID, snap=self.digit, alignR=mg)
        ballRollG = GrpNode("ballRollG", pf=rID, snap=self.ball, alignR=mg)
        toe_wiggle_grp = GrpNode("toe_wiggle_grp", pf=rID, align=self.ball)
        footRollG = GrpNode("footRollG", pf=rID, snap=toePos_guide, alignR=mg)
        toeRollG = GrpNode("toeRollG", pf=rID, snap=toePos_guide, alignR=mg)
        inRollG = GrpNode("inRollG", pf=rID, snap=inPos_guide, alignR=mg)
        outRollG = GrpNode("outRollG", pf=rID, snap=outPos_guide, alignR=mg)
        heelRollG = GrpNode("heelRollG", pf=rID, snap=heelPos_guide, alignR=mg)
        self.extra_ikc.alignTo(extraRollG)

        # Flip groups if needed for orientation
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

        # --- Parenting and roll chain ---
        (ikH1, ikHX) | extraRollG | ballRollG | inRollG
        (ikH2, ikH3) | toe_wiggle_grp | inRollG
        inRollG | outRollG | footRollG | toeRollG | heelRollG | self.ikCstG

        # --- IK control setup ---
        self.ikc.snapTo(self.digit)
        self.ikc.cv_drop()
        self.ikc_gimbal = CrvNode(self.ikc).addGimbal()
        self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)

        # --- Foot roll and bank logic ---
        self.foot_rolling(
            self.smart_ctl, heelRollG, ballRollG, footRollG, toeRollG, inRollG, outRollG
        )

        # --- Attribute and connection setup ---
        self.ikc.a.add("kneeTwist") * xDr >> ikH1.a.twist
        (self.ikc, self.pvc, self.ikCstG) | self.IK_GRP
        self.pvc_line = CrvNode.buildLineLinked(
            tgt1=self.jnts_ik[2], tgt2=self.pvc, pf=rID, dspType=2, p=self.IK_GRP
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()

        # --- Stretchy IK and parenting ---
        ikH1.stretchyIk(soft=1)
        self.all_ikHs = {"main": ikH1, "ball": ikH2, "toe": ikH3, "else": ikHX}
        self.toe_wiggle_grp = toe_wiggle_grp
        self.hip_fkc.cstPar(self.jnts_ik[0], mo=1)

        # --- Store controls and finalize ---
        self.ctls_ik = [self.ikc, self.pvc, self.ikc_gimbal, self.extra_ikc]
        self.ikH1 = ikH1
        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)
        self.extra_roll_logic(ballRollG, extraRollG, self.IK_GRP)

    def blend_fk_ik(self):
        """Blend FK and IK controls for the quadruped leg rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        self.setting.snapTo(self.palm, p=self.CTL_DATA)
        self.palm.cstPar(self.setting, mo=1)

        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=1)
        for i in range(len(self.jnts) - 1):
            fkJ = self.jnts_fk[i]
            ikJ = self.jnts_ik[i]
            jnt = self.jnts[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIk)

        GrpNode(f"{self.ikc.name}_matcher", align=self.ikc, p=self.digit_fkc)
        GrpNode(f"{self.extra_ikc.name}_matcher", align=self.extra_ikc, p=self.palm_fkc)

    def extra_roll_logic(self, ballRollG, extraRollG, grp):
        """Setup extra roll logic for the quadruped leg rig."""
        logging.info(".")

        aimGrp = extraRollG.addOffsetGrp(below=1, relink=0)
        aimGrp | extraRollG.offset
        uprIkJ = self.jnts_ik[1]
        aimG_loc = LocNode(f"{aimGrp.name}_loc", align=uprIkJ, p=grp)
        self.ikc.cstPoi(aimG_loc, mo=1)

        autoAim = self.extra_ikc.a.add("autoAim", min=0, max=1, dv=1)
        aimRatio = self.extra_ikc.a.add("aimRatio", min=-2, max=2, dv=self.palmAimRatio)

        # --- Setup aim constraint ---
        common.cstMulti(
            aimG_loc,
            uprIkJ,
            aimGrp,
            cstType="aim",
            w=autoAim,
            worldUpType=2,
            worldUpObject=self.ikc,
            u=(0, 1, 0),
            wu=(1, 0, 0),
        )

        # --- Offset and roll logic ---
        ofs = extraRollG.addOffsetGrp()
        ofs | aimGrp
        d = ut.distDim_(self.ikc, self.jnts_ik[1])
        D = d.get()
        d /= self.masterC.a["globalScale"]
        # ((d - D) * aimRatio * autoAim) >> extraRollG.a.rx
        diff = (d > D).setCdn(ifTrue=D, ifFalse=d) - D
        diff * aimRatio * autoAim >> extraRollG.a.rx

        # --- Align extra IK control ---
        grp_ofs = extraRollG.addOffsetGrp(below=1)
        self.extra_ikc.alignTo(grp_ofs, p=extraRollG)
        grp_ofs | self.extra_ikc
        aimG_loc.hide()

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        """Setup sub-controls for the quadruped leg rig."""
        rID, rSz, xDr = self.get_short_form()

        # --- Create and register sub-controls for roll groups ---
        roll_groups = [toeRollG, inRollG, outRollG, heelRollG]
        for g in roll_groups:
            ctl = g.addOffsetGrp(below=1)
            CrvNode(ctl)(name=f"{g.name}_ctl", shape="diamond_3d", scale=rSz / 4)
            self.ctls_sub.append(ctl)

        # --- Ball group IK control ---
        self.ball_ikc = ballRollG.addOffsetGrp(below=1)
        CrvNode(self.ball_ikc)(
            name="ball_ikc", pf=rID, shape="stickS", scale=-rSz * xDr / 2
        )
        CrvNode(self.ball_ikc).cv_rotate(0, 90, 0)
        self.masterGuide.setMsg({"ball_ikc": self.ball_ikc})
        self.ctls_ik.append(self.ball_ikc)
        self.smart_ctl_setup(toeRollG)

    def smart_ctl_setup(self, toeRollG):
        """Setup the smart control for foot roll and bank."""
        rID, rSz, xDr = self.get_short_form()

        self.smart_ctl | self.ikc
        self.smart_ctl.snapAlignTo(toeRollG, self.masterGuide)
        ofs = self.smart_ctl.addOffsetGrp()
        ofs.a.tz.set(rSz * 20)

        self.smart_ctl.a.rx >> self.smart_ctl.a["footRoll"]
        (-xDr * self.smart_ctl.a.ry) >> toeRollG.a.ry
        (-xDr * self.smart_ctl.a.rz) >> self.smart_ctl.a["footBank"]

    def build_digits(self):
        """Build the digit controls for the quadruped leg rig."""
        logging.info(".")

        rID, rSz, xDr = self.get_short_form()
        self.toesCtlsList = []
        scale = xDr * rSz / 8

        # --- Build digit IK and FK controls for each toe chain ---
        for toeJs in self.toesJntList:

            dupTgt = JntNode(toeJs[2])

            ikJ, ikH = self.build_digit_ik(dupTgt, scale, p=self.ball_fkc)
            self.toeIKHs.append(ikH)
            ikJ.a.r >> dupTgt.a.r

            # Build FK controls for toe joints
            fkToeList = toeJs[3:-1]
            ctlList = []
            for jnt in fkToeList:
                crvName = f"{jnt.name}_ctl_#"
                c = CrvNode(crvName, shape="stickC", up="z", align=jnt, scale=-scale)
                ctlList.append(c)

            self.build_fk_with_ctl(fkToeList, ctlList, p=self.CTL_DATA, oriOnly=1)

            self.toesCtlsList.append(ctlList)
            self.update_list(self.jnts_bind, add=toeJs[:-1])
            self.update_list(self.jnts_sk, add=toeJs[:-1])

        # --- Add hidden IK handles for toe segments ---
        for toeJs in self.toesJntList:
            IkNode(
                toeJs[1],
                sj=toeJs[1],
                ee=toeJs[2],
                scaleFix=self.masterC.a["globalScale"],
                p_data=self.CTL_DATA,
                vis=0,
                p=self.ball_fkc,
            )

    def build_dual_bones(self):
        """Build dual bones for the lower leg."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], r=0.5)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], r=0.5)

        parent = self.boneFix if self.kneeFix else self.lwr
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

    def singleBallCtl_setup(self):
        """Make ball ctl the single ctl in both FK and IK modes."""
        logging.info(".")

        # --- Prepare blend attribute and offsets ---
        fkIk = self.setting.a["fkIk"]
        ball_fkc_ofs = self.ball_fkc.offset
        ball_fkc_ofs.removeCstNodes()

        # --- Parent toe IK handle to ball control ---
        self.all_ikHs["toe"] | self.ball_fkc
        ball_fkj = self.jnts_fk[5]

        # --- Space align ball control between FK and IK ---
        self.space_align(
            self.ball_fkc,
            spaces=[ball_fkj.offset, self.toe_wiggle_grp],
            w=fkIk,
            cstType="par",
        )

        # --- Create and parent ball offset group ---
        ballOfsG = GrpNode(
            "ballOfsG",
            pf=self.rigID,
            snap=self.ball.offset,
            p=self.FK_GRP,
        )
        ball_fkc_ofs | ballOfsG

        # --- Remove constraints and space align FK ball joint ---
        ball_fkj.removeCstNodes()
        self.space_align(
            ball_fkj,
            spaces=[self.ball_fkc, ball_fkj.offset],
            w=fkIk,
            cstType="ori",
            mo=1,
        )

    def setup_vis(self):
        """Setup visibility toggles for the quadruped leg rig controls."""
        self.ctl_vis_toggle(
            self.setting.a["fkIk"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.ctls_fk[1:-1],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("extraCtl", dv=1, type="bool", k=0),
            onList=self.ctls_sub,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("showSetup", type="bool", k=0),
            onList=[self.jnts_fk[0], self.jnts_ik[0]],
        )
        [ikh.hide() for ikh in self.all_ikHs.values()]
        mc.hide(self.toeIKHs)

    def setup_channel(self):
        """Setup channels for the quadruped leg rig controls."""
        self.setting.a.showAttr()
        self.smart_ctl.a.showAttr(r=1)

        for ctl in self.ctls_fk + self.ctls_sub + self.ctls_ik:
            ctl.a.showAttr(t=1, r=1)

        self.ball_ikc.a.showAttr(r=1)

        if self.scapulaBone:
            self.scap_fkc.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the quadruped leg rig controls."""
        for c in self.ctls_fk + self.ctls_ik + [self.lwr]:
            c.a.ro.set(2)
        self.smart_ctl.a.ro.set(3)

    def setup_space(self):
        """Setup space switching for the quadruped leg rig controls."""
        self.masterGuide.a.add(
            "spaceName1", type="string", txt="master, chest, pelvis, COG"
        )
        self.masterGuide.a.add(
            "spaceName2", type="string", txt="leg, chest, pelvis, master, COG"
        )

        self.masterGuide.setMsg(
            {
                "spaceHolder1": self.ikc,
                "spaceHolder2": self.pvc,
                "space_master": self.masterC,
                "space_leg": self.ikH1.softJ[0],
            }
        )

    def setup_anchor(self):
        """Setup anchor points for the quadruped leg rig."""
        self.setup_anchor_module({"anchorS1": self.scapulaG.offset})

    def setup_ctlSet(self):
        """Setup control sets for the quadruped leg rig module."""
        ctlSet = (
            self.ctls_fk
            + self.ctls_ik
            + self.ctls_sub
            + [self.smart_ctl, self.setting, self.extra_ikc]
        )
        if self.scapulaBone:
            ctlSet.append(self.scap_fkc)
        if self.toeBones:
            [ctlSet.extend(s) for s in self.toesCtlsList or []]
        self.add_ctl_set(ctlSet)

    def setup_bindJnt(self):
        """Setup bind joints for the quadruped leg rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_bind_sk_set(self.jnts_bind)
        proxy.add_proxyRadiusScale_attr(self.jnts_toes, 1)
        proxy.add_proxyRadiusScale_attr(self.jnts_bind, 5)

    def setup_scale(self):
        """Setup scale for the quadruped leg rig module."""
        self.masterC.a.globalScale >> self.JNT_DATA.a.scale

    def build_post(self):
        """Post setup for the quadruped leg rig module."""
        logging.info(".")
        common.add_wsMirror_attr([self.ikc, self.ikc_gimbal, self.pvc, self.smart_ctl])

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
