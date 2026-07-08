import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color
from nl_modules.utils.common import Vec


class LegQd(RigModule):
    """Quadruped leg rig module."""

    def __init__(self, mg):
        super().__init__(mg)

        guide_attrs = [
            "ribbon",
            "dualBone",
            "toeType",
            "includeMeta",
            "patellaBone",
            "scapulaBone",
            "carpalFix",
            "toeNum",
            "hipAutoAim",
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
        self.radiusJnt = None
        self.ulnaJnt = None

        self.ctls_ik = []
        self.ctls_fk = []
        self.ctls_sub = []

        self.all_ikHs = {}
        self.toeJntsArray = []
        self.toeCtlsArray = []
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
        self.patellaJ = None

        self.TOE_NAMES = []
        self.TOE_NAMES_FLAT = []
        self.TOE_ATTRS = []
        self.toeMasterGrp = None

    def gen_sk(self):
        """Generate the skeleton for the quadruped leg rig."""

        # --- Generate main skeleton module and root joints ---
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jnt_names)

        # for jnt in root_list:
        #     DagNode(jnt).a.ro.set(2)

        self.toesRootJ = self.gen_sk_fr_names(["toesRoot"])[0]
        self.toesRootJ | self.JNT_DATA
        self.masterGuide.setMsg({"toesRootJ": self.toesRootJ})

        TOE_DICT = {}
        TOE_NAMES = []

        if self.toeType == 1:  # Mammal's toes
            self.TOE_NAMES = [
                ["toe0_1", "toe0_2", "toe0_3", "toe0_4"],
                ["toe1_1", "toe1_2", "toe1_3", "toe1_4", "toe1_5"],
                ["toe2_1", "toe2_2", "toe2_3", "toe2_4", "toe2_5"],
                ["toe3_1", "toe3_2", "toe3_3", "toe3_4", "toe3_5"],
                ["toe4_1", "toe4_2", "toe4_3", "toe4_4", "toe4_5"],
            ]
            if self.includeMeta == 0:
                self.TOE_NAMES = [names[1:] for names in self.TOE_NAMES]

            TOE_DICT = {
                2: self.TOE_NAMES[2:4],  # hide 0, 1, 4
                3: self.TOE_NAMES[2:5],  # hide 0, 1
                4: self.TOE_NAMES[1:5],  # hide 0
                5: self.TOE_NAMES,  # hide none
            }
            self.toesRootJ.snapTo(root_list[3])  # snap to palm

        elif self.toeType == 2:  # Bird's toes
            self.TOE_NAMES = [
                ["toe0_up", "toe0_mid", "toe0_low", "toe0_end"],
                ["toe1_up", "toe1_mid", "toe1_low", "toe1_end"],
                ["toe2_up", "toe2_mid", "toe2_mid2", "toe2_low", "toe2_end"],
                [
                    "toe3_up",
                    "toe3_mid",
                    "toe3_mid2",
                    "toe3_mid3",
                    "toe3_low",
                    "toe3_end",
                ],
            ]
            TOE_DICT = {
                2: self.TOE_NAMES[2:4],  # hide 0, 1
                3: self.TOE_NAMES[1:4],  # hide 0
                4: self.TOE_NAMES,  # hide none
                5: self.TOE_NAMES,  # hide none
            }
            self.toesRootJ.snapTo(root_list[4])  # snap to digit

        if self.toeType == 1 or self.toeType == 2:
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
            ("setting", "screw_nut", "z", rSz, 1),
            # ("hip_fkc", "shoulder", "x", Vec((0.5, 0.3, 0.5)) * -scale, 0),
            ("hip_fkc", "arrow2", None, -scale, 1),
            ("upr_fkc", "hexagon_3d", "x", scale, 0),
            ("lwr_fkc", "hexagon_3d", "x", scale, 0),
            ("palm_fkc", "hexagon_3d", "x", scale, 0),
            ("digit_fkc", "hexagon_3d", "x", scale, 0),
            ("ball_fkc", "hexagon_3d", "x", scale / 2, 0),
            ("ikc", "foot3", None, rSz, 0),
            ("extra_ikc", "rotate2_3d", None, Vec((0.5, 1, 1)) * -scale, 0),
            ("pvc", "sphere", None, rSz * 0.7, 0),
            ("smart_ctl", "pyramid", None, scale / 3, 0),
        ]

        if self.scapulaBone:
            ctl_defs.append(("scap_fkc", "arrow2", "z", scale * 0.6, 0))

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
        self.hip_fkc.cv_move(scale * 5, -scale * 10, 0)
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

        self.update_list(self.jnts_bind, add=self.jnts[1:-1])

        self.scapulaG = self.build_legScapula(
            ikc=self.ikc,
            fkc=self.ctls_fk[0],
            hipJ=self.hip,
            uprJ=self.upr,
            addScap=self.scapulaBone,
            scapCtl=self.scap_fkc,
            autoAim_dv=self.hipAutoAim,
        )
        if self.scapulaBone:
            self.scap_fkc.cv_moveTo(self.hip.o.pos)

        self.singleBallCtl_setup()

        if self.patellaBone:
            self.patellaJ = self.patella_setup()

        if self.dualBone:
            self.build_dual_bones()

        if self.carpalFix:
            self.carpalFix_setup(self.palm, self.digit, tz=(-1, -5), tx=(0.5, 1))

        self.build_toes(self.toeType)
        self.build_post()

    def build_toes(self, type=1):
        """Build the toe joints and controls for the quadruped leg rig."""
        logging.info(".")

        if self.toeType == 1 or self.toeType == 2:
            self.toeJntsArray = []

            for rJ in self.toesRootJ.childrenJt:
                self.toeJntsArray.append([fgr for fgr in rJ.allChildrenJt2])
                rJ.a.segmentScaleCompensate.set(0)

            for toeJs in self.toeJntsArray:
                self.update_list(self.jnts_bind, add=toeJs[:-1])

        if type == 1:
            self.build_toes_mammal()

            if self.carpalFix:
                self.toesRootJ | self.ofsFixJ
            else:
                self.toesRootJ | self.palm

            self.update_list(self.jnts_bind, rm=[self.ball, self.digit])

        elif type == 2:
            self.build_toes_bird()

            self.toesRootJ | self.digit
            self.update_list(self.jnts_bind, rm=[self.ball, self.digit])

        self.toesRootJ.color = Color.BLUE

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
        # self.setting.snapTo(self.hip, p=self.CTL_DATA)
        # self.hip.cstPar(self.setting, mo=1)

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
            name="ball_ikc", pf=rID, shape="rotate2_3d", scale=-rSz * xDr / 2
        )
        CrvNode(self.ball_ikc).cv_rotate(0, 90, 0)
        self.masterGuide.setMsg({"ball_ikc": self.ball_ikc})
        self.ctls_ik.append(self.ball_ikc)
        self.smart_ctl_setup(toeRollG)

    def smart_ctl_setup(self, toeRollG):
        """Setup the smart control for foot roll and bank."""
        rID, rSz, xDr = self.get_short_form()

        self.smart_ctl.snapAlignTo(toeRollG, self.masterGuide, p=self.ikc)
        twoOfs = self.smart_ctl.addOffsetGrp(count=2)
        self.smart_ctl.a.add("posOffset", k=0, dv=10 * rSz) >> twoOfs[0].a.tz

        self.smart_ctl.a.rx >> self.smart_ctl.a["footRoll"]
        (-xDr * self.smart_ctl.a.ry) >> toeRollG.a.ry
        (-xDr * self.smart_ctl.a.rz) >> self.smart_ctl.a["footBank"]

    def build_toes_mammal(self):
        """Build the digit controls for the quadruped leg rig."""
        logging.info(".")

        rID, rSz, xDr = self.get_short_form()
        self.toeCtlsArray = []
        scale = xDr * rSz / 15

        # --- Build digit IK and FK controls for each toe chain ---
        dupId = 2 if self.includeMeta == 1 else 1
        for toeJs in self.toeJntsArray:
            dupTgt = JntNode(toeJs[dupId])

            if dupTgt.allChildrenJt:
                ikJ, ikH = self.build_digit_ik(dupTgt, scale, p=self.ball_fkc)
                self.toeIKHs.append(ikH)
                # ikJ.a.r >> dupTgt.a.r

                # Build FK controls for toe joints
                fkToeList = toeJs[dupId:-1]
                ctlList = []
                for jnt in fkToeList:
                    crvName = f"{jnt.name}_ctl_#"
                    c = CrvNode(
                        crvName, shape="locator", align=jnt, scale=scale, top=1, width=2
                    )
                    # up="x",
                    ctlList.append(c)

                self.build_fk_with_ctl(fkToeList, ctlList, p=self.CTL_DATA, oriOnly=1)
                ikJ.a.r >> ctlList[0].addOffsetGrp().a.r

                self.toeCtlsArray.append(ctlList)
                # self.update_list(self.jnts_bind, add=toeJs[:-1])

        # --- Add IK for toe segments ---
        topIks = []
        for toeJs in self.toeJntsArray:
            topIks.append(
                IkNode(
                    toeJs[dupId - 1],
                    sj=toeJs[dupId - 1],
                    ee=toeJs[dupId],
                    scaleFix=self.masterC.a["globalScale"],
                    p_data=self.CTL_DATA,
                    vis=0,
                    p=self.ball_fkc,
                )
            )

        self.build_toes_mammal_sdk(topIks)

    def build_toes_mammal_sdk(self, topIks):

        spread = self.smart_ctl.a.add("spread", min=-10, max=10, dv=0)

        start_id = 0
        if self.toeNum == 2:
            start_id = 2
        elif self.toeNum == 3:
            start_id = 1
        elif self.toeNum == 4:
            start_id = 1

        s = self.rigSize

        data_fk_rz = [
            [(-10, -10), (0, 0), (10, 10)],
            [(-10, -6), (0, 0), (10, 6)],
            [(-10, -2), (0, 0), (10, 2)],
            [(-10, 2), (0, 0), (10, -2)],
            [(-10, 6), (0, 0), (10, -6)],
        ]
        data_ik_ty = [
            [(-10 * s, -1.5 * s), (0, 0), (10 * s, 1.5 * s)],
            [(-10 * s, -0.9 * s), (0, 0), (10 * s, 0.9 * s)],
            [(-10 * s, -0.3 * s), (0, 0), (10 * s, 0.3 * s)],
            [(-10 * s, 0.3 * s), (0, 0), (10 * s, -0.3 * s)],
            [(-10 * s, 0.9 * s), (0, 0), (10 * s, -0.9 * s)],
        ]
        for i, toeCtls in enumerate(self.toeCtlsArray):
            fkOfs0 = toeCtls[0].addOffsetGrp()
            topIks[i].addOffsetGrp()
            for j in range(3):
                common.sdk2(spread, fkOfs0.a.rz, *data_fk_rz[start_id + i][j])
                common.sdk2(spread, topIks[i].a.ty, *data_ik_ty[start_id + i][j])
                # inf=1,
                # tangent1=0,
                # tangent2=0,

        for i, toeCtls in enumerate(self.toeCtlsArray):
            fkOfs0 = toeCtls[0].offset
            curlA = self.smart_ctl.a.add(
                f"curlMid{start_id + i}", min=-10, max=10, dv=0
            )
            common.sdk2(curlA, fkOfs0.a.ry, -10, 50)
            common.sdk2(curlA, fkOfs0.a.ry, 0, 0)
            common.sdk2(curlA, fkOfs0.a.ry, 10, -50)

        for i, toeCtls in enumerate(self.toeCtlsArray):
            curlB = self.smart_ctl.a.add(
                f"curlEnd{start_id + i}", min=-10, max=10, dv=0
            )
            if len(toeCtls) > 1:
                fkOfs1 = toeCtls[1].addOffsetGrp()
                common.sdk2(curlB, fkOfs1.a.ry, -10, 90)
                common.sdk2(curlB, fkOfs1.a.ry, 0, 0)
                common.sdk2(curlB, fkOfs1.a.ry, 10, -90)

    def build_toes_bird(self):
        """Build the digit controls for the quadruped leg rig."""
        logging.info(".")

        rID, rSz, xDr = self.get_short_form()
        self.toeCtlsArray = []
        scale = xDr * rSz / 20

        # --- Build digit IK and FK controls for each toe chain ---
        # dupId = 2 if self.includeMeta == 1 else 1
        for toeJs in self.toeJntsArray:
            # # Build FK controls for toe joints
            fkToeList = toeJs[:-1]
            ctlList = []
            for jnt in fkToeList:
                crvName = f"{jnt.name}_fkc"
                c = CrvNode(crvName, shape="stickC", up="-z", align=jnt, scale=scale)
                ctlList.append(c)

            self.build_fk_with_ctl3(fkToeList, ctlList, p=self.CTL_DATA, noCst=1)
            self.toeCtlsArray.append(ctlList)

        self.build_toes_bird_logic()

    def build_toes_bird_sdk(self):
        """Build SDK connections for toe groups and joints."""

        toeSdkDict = {
            "toe_lift": (
                [(0, 0), [0, 90], [(0, 0, 0), (0, -120, 0)]],
                [(0, 1), [0, 90], [(0, 0, 0), (0, -60, 0)]],
            ),
            "ball_lift1": (  # index toe
                [(1, 1), [0, 30], [(0, 0, 0), (0, 14, 0)]],
                [(1, 2), [0, 30], [(0, 0, 0), (-1.6, 16, 0)]],
            ),
            "ball_lift2": (  # Mid & Thumb
                [(0, 1), [0, 30], [(0, 0, 0), (0, -46.1, 0)]],
                [(0, 2), [0, 30], [(0, 0, 0), (0, 8.2, 0)]],
                [(2, 0), [0, 30], [(0, 0, 0), (0, 6.17, 0)]],
                [(2, 1), [0, 30], [(0, 0, 0), (0, 9.8, 0)]],
                [(2, 2), [0, 30], [(0, 0, 0), (0, 19.33, 0)]],
                [(2, 3), [0, 30], [(0, 0, 0), (0, -4.47, 0)]],
            ),
            "ball_lift3": (  # ring toe
                [(3, 1), [0, 30], [(0, 0, 0), (0, -2.07, 0)]],
                [(3, 2), [0, 30], [(0, 0, 0), (1.6, 10.76, 0)]],
                [(3, 3), [0, 30], [(0, 0, 0), (0, 25.4, 0)]],
                [(3, 4), [0, 30], [(0, 0, 0), (0, -3.57, 0)]],
            ),
            "heel_lift": (
                [(0, 0), [0, 90], [(0, 0, 0), (0, 50, 0)]],
                [(0, 1), [0, 90], [(0, 0, 0), (0, 40, 0)]],
            ),
            "toe_squash": (
                [(0, 1), [-10, 0, 10], [(0, 7.12, 0), (0, 0, 0), (0, -11.1, 0)]],
                [(0, 2), [-10, 0, 10], [(0, 5.39, 0), (0, 0, 0), (0, 0, 0)]],
                [(1, 0), [-10, 0, 10], [(0, -13.77, 0), (0, 0, 0), (0, 7.74, 0)]],
                [(1, 1), [-10, 0, 10], [(0, 3.05, 0), (0, 0, 0), (0, 3.41, 0)]],
                [(2, 0), [-10, 0, 10], [(0, -13.7, 0), (0, 0, 0), (0, 7.74, 0)]],
                [(2, 1), [-10, 0, 10], [(0, 1.87, 0), (0, 0, 0), (0, 4.62, 0)]],
                [(3, 0), [-10, 0, 10], [(0, -13.77, 0), (0, 0, 0), (0, 7.74, 0)]],
                [(3, 1), [-10, 0, 10], [(0, 3.41, 0), (0, 0, 0), (0, 3.39, 0)]],
                [(3, 2), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, -3.14, 0)]],
            ),
            "heel_squash": (
                [(0, 0), [0, 10], [(0, 0, 0), (0, 27.86, 0)]],
                [(0, 1), [0, 10], [(0, 0, 0), (0, -3.79, 0)]],
                [(0, 2), [0, 10], [(0, 0, 0), (0, -14.47, 0)]],
                [(1, 0), [0, 10], [(0, 0, 0), (0, 8.51, 0)]],
                [(1, 1), [0, 10], [(0, 0, 0), (0, -3.78, 0)]],
                [(1, 2), [0, 10], [(0, 0, 0), (0, -13.85, 0)]],
                [(2, 0), [0, 10], [(0, 0, 0), (0, 8.5, 0)]],
                [(2, 1), [0, 10], [(0, 0, 0), (0, -3.5, 0)]],
                [(2, 2), [0, 10], [(0, 0, 0), (0, -10.75, 0)]],
                [(2, 3), [0, 10], [(0, 0, 0), (0, -1.53, 0)]],
                [(3, 0), [0, 10], [(0, 0, 0), (0, 8.51, 0)]],
                [(3, 1), [0, 10], [(0, 0, 0), (0, -0.16, 0)]],
                [(3, 2), [0, 10], [(0, 0, 0), (0, -7.04, 0)]],
                [(3, 3), [0, 10], [(0, 0, 0), (0, -6.88, 0)]],
                [(3, 4), [0, 10], [(0, 0, 0), (0, -1.83, 0)]],
            ),
            # "foot_bank": (
            #     [(0, 1), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(1, 0), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(1, 1), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(1, 2), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(2, 0), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(2, 1), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(3, 0), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(3, 1), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(3, 2), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(3, 3), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            #     [(3, 4), [-10, 0, 10], [(0, 0, 0), (0, 0, 0), (0, 0, 0)]],
            # ),
            "spread": (
                [(1, 0), [-10, 0, 10], [(-8, -4, -36), (0, 0, 0), (8, 4, 36)]],
                [(3, 0), [-10, 0, 10], [(6, -2, 36), (0, 0, 0), (-6, 2, -36)]],
            ),
            "curl": (
                [(0, 1), [-10, 0, 10], [(0, 11.4, 0), (0, 0, 0), (0, -53.5, 0)]],
                [(0, 2), [-10, 0, 10], [(0, 11.4, 0), (0, 0, 0), (0, -105.38, 0)]],
                [(1, 0), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -32.2, 0)]],
                [(1, 1), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -40.89, 0)]],
                [(1, 2), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -93.17, 0)]],
                [(2, 0), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -26.68, 0)]],
                [(2, 1), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -37.44, 0)]],
                [(2, 2), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -26.68, 0)]],
                [(2, 3), [-10, 0, 10], [(0, 13.43, 0), (0, 0, 0), (0, -94.44, 0)]],
                [(3, 0), [-10, 0, 10], [(0, 9.58, 0), (0, 0, 0), (0, -14.35, 0)]],
                [(3, 1), [-10, 0, 10], [(0, 9.58, 0), (0, 0, 0), (0, -35.96, 0)]],
                [(3, 2), [-10, 0, 10], [(0, 9.58, 0), (0, 0, 0), (0, -20.91, 0)]],
                [(3, 3), [-10, 0, 10], [(0, 9.58, 0), (0, 0, 0), (0, -20.91, 0)]],
                [(3, 4), [-10, 0, 10], [(0, 9.58, 0), (0, 0, 0), (0, -100.53, 0)]],
            ),
        }
        pf = self.rigID + "_"

        for attr, sdkData in toeSdkDict.items():
            for id, drivers, drivens in sdkData:
                if (
                    (self.toeNum <= 2 and id[0] > 1)
                    or (self.toeNum == 3 and id[0] > 0)
                    or (self.toeNum > 3)
                ):
                    attr_name = f"{pf}{self.TOE_NAMES[id[0]][id[1]]}"
                    for i, dv in enumerate(drivers):
                        common.sdk3(
                            self.toeMasterGrp,
                            DagNode(f"{pf}{attr}"),
                            attr,
                            attr_name,
                            dv,
                            drivens[i],
                            inf=1,
                            tangent1=0,
                            tangent2=0,
                        )

        # Connect controls to toe master group attributes
        attr = self.smart_ctl.a.add("toe_lift_scale", dv=1)  # , k=0)
        ut.max_(0, self.smart_ctl.a.rx) * attr >> self.toeMasterGrp.a.toe_lift

        attr = self.ball_ikc.a.add("ball_lift1_scale", dv=1)  # , k=0)
        ut.max_(0, self.ball_ikc.a.rx) * attr >> self.toeMasterGrp.a.ball_lift1

        attr = self.ball_ikc.a.add("ball_lift2_scale", dv=1)  # , k=0)
        ut.max_(0, self.ball_ikc.a.rx) * attr >> self.toeMasterGrp.a.ball_lift2

        attr = self.ball_ikc.a.add("ball_lift3_scale", dv=1)  # , k=0)
        ut.max_(0, self.ball_ikc.a.rx) * attr >> self.toeMasterGrp.a.ball_lift3

        attr = self.smart_ctl.a.add("heel_lift_scale", dv=1)  # , k=0)
        ut.min_(0, self.smart_ctl.a.rx) * -attr >> self.toeMasterGrp.a.heel_lift

        self.smart_ctl.a.addSep()

        toe_squash = self.smart_ctl.a.add("toe_squash", min=-10, max=10)
        toe_squash >> self.toeMasterGrp.a.toe_squash
        heelRollG_ofs = self.ctls_sub[-1].addOffsetGrp()
        toe_squash >> heelRollG_ofs.a.rx

        heel_squash = self.smart_ctl.a.add("heel_squash", min=0, max=10)
        heel_squash >> self.toeMasterGrp.a.heel_squash
        toeRollG_ofs = self.ctls_sub[0].addOffsetGrp()
        heel_squash * -1 >> toeRollG_ofs.a.rx

        # self.smart_ctl.a.add("bank", min=-10, max=10) >> self.toeMasterGrp.a.foot_bank
        self.smart_ctl.a.add("spread", min=-10, max=10) >> self.toeMasterGrp.a.spread
        self.smart_ctl.a.add("curl", min=-10, max=10) >> self.toeMasterGrp.a.curl

    def build_toes_bird_logic(self):
        """Build the logic for toe controls and attributes for the quadruped leg rig."""

        self.TOE_NAMES_FLAT = [n for names in self.TOE_NAMES for n in names]
        pf = self.rigID + "_"

        # Create toe main group and attrs
        toeMasterGrp_name = f"{pf}toeMaster"
        if mc.objExists(toeMasterGrp_name):
            mc.delete(toeMasterGrp_name)
        self.toeMasterGrp = GrpNode(toeMasterGrp_name)

        self.TOE_ATTRS = [
            "heel_lift",
            "ball_lift1",
            "ball_lift2",
            "ball_lift3",
            "toe_lift",
            "heel_squash",
            "toe_squash",
            # "foot_bank",
            "spread",
            "curl",
        ]
        for attr in self.TOE_ATTRS:
            self.toeMasterGrp.a.add(attr)

        # Create pose groups thru duplicate
        srcGrp = GrpNode(f"{pf}{self.TOE_ATTRS[0]}", p=self.toeMasterGrp)
        for n in self.TOE_NAMES_FLAT:
            srcGrp.a.add(f"{pf}{n}", type="vector")

        self.toeMasterGrp.a.showAttr()
        srcGrp.a.showAttr()

        toePoseGrps = [srcGrp]
        for attr in self.TOE_ATTRS[1:]:
            toePoseGrps.append(srcGrp.duplicate(n=f"{pf}{attr}"))

        # Create pose sums nodes and connect the joints
        toePoseAdds = []
        for name in self.TOE_NAMES_FLAT:
            pma = DepNode(f"{pf}{name}_sum", nodeType="plusMinusAverage")
            toePoseAdds.append(pma)
            for grp in toePoseGrps:
                grp.a[f"{pf}{name}"] >> pma.a.input3D

            tgt_jnt = DagNode(f"{pf}{name}")
            tgt_fkc = DagNode(f"{pf}{name}_fkc")

            if tgt_jnt.exists() and tgt_fkc.exists():
                # Add fk ctl rotation to the sum
                tgt_fkc.a.r >> pma.a.input3D

                pma.a.output3D >> tgt_jnt.a.r
                tgt_jnt.parent.cstPar(tgt_fkc.parent, mo=1)

        self.build_toes_bird_sdk()

    def build_dual_bones(self):
        """Build dual bones for the lower leg."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], r=0.5)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], r=0.5)

        (radius_JC[0], ulna_JC[0]) | self.lwr

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
        self.update_list(self.jnts_bind, add=[radius_JC[0], ulna_JC[0]], rm=[self.lwr])

        self.radiusJnt = radius_JC[0]
        self.ulnaJnt = ulna_JC[0]

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
        if self.toeType > 0:
            self.ctls_fk[-1].hide()

        self.ctl_vis_toggle(
            self.ikc.a.add("extraCtl", dv=1, type="bool", k=0),
            onList=self.ctls_sub,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("debug", type="bool", k=0),
            onList=[self.jnts_fk[0], self.jnts_ik[0]],
        )
        [ikh.hide() for ikh in self.all_ikHs.values()]
        mc.hide(self.toeIKHs)

        for toesCtls in self.toeCtlsArray:
            self.ctl_vis_toggle(
                self.setting.a.add("toeCtlFkVis", dv=1, type="bool", k=0),
                onList=toesCtls,
            )

    def setup_channel(self):
        """Setup channels for the quadruped leg rig controls."""
        self.setting.a.showAttr()
        self.smart_ctl.a.showAttr(r=1)

        for ctl in self.ctls_fk + self.ctls_sub + self.ctls_ik:
            ctl.a.showAttr(t=1, r=1)

        self.ball_ikc.a.showAttr(r=1)

        if self.scapulaBone:
            self.scap_fkc.a.showAttr(t=1, r=1)

        if self.toeType == 2:
            for ctls in self.toeCtlsArray:
                [ctl.a.showAttr(r=1) for ctl in ctls]

    def setup_rotate_order(self):
        """Setup rotate order for the quadruped leg rig controls."""
        for j in self.jnts + self.jnts_fk + self.jnts_ik:
            j.a.ro.set(2)
        for c in self.ctls_fk + self.ctls_ik + self.ctls_sub:
            c.a.ro.set(2)

        self.smart_ctl.a.ro.set(2)

        if self.carpalFix:
            self.ofsFixJ.a.ro.set(2)
            self.carpalFixJ.a.ro.set(2)

        if self.patellaBone:
            self.patellaJ.a.ro.set(2)

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
            self.ctls_fk[:-1]
            + self.ctls_ik
            + self.ctls_sub
            + [self.smart_ctl, self.setting, self.extra_ikc]
        )
        if self.toeType == 0:
            ctlSet.append(self.ctls_fk[-1])

        if self.scapulaBone:
            ctlSet.append(self.scap_fkc)
        if self.toeType > 0:
            [ctlSet.extend(s) for s in self.toeCtlsArray or []]

        self.add_ctl_set(ctlSet)

    def setup_bindJnt(self):
        """Setup bind joints for the quadruped leg rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        if self.toeType < 2:
            proxy.add_proxyRadiusScale_attr(self.jnts_bind, 5)
        proxy.add_proxyRadiusScale_attr(self.jnts_toes, 1)

        if self.dualBone:
            proxy.add_proxyRadiusScale_attr([self.radiusJnt, self.ulnaJnt], 3)

        newSize = self.rigSize * 3
        if self.carpalFix:
            if self.toeType == 1:
                proxy.add_proxyHeight_attr([self.ofsFixJ], newSize)
            if self.includeMeta == 1:
                proxy.add_proxyHeight_attr([self.carpalFixJ], newSize)

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
