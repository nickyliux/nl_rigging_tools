import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec
from nl_modules.utils.color import Color


from enum import Enum


class LimbType(Enum):
    BASIC = 0
    # BASIC_ROLL = 1
    # RIBBON = 2
    SKEL = 1


class LegQd(RigModule):
    """Quadruped leg rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the quadruped leg rig module."""
        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)

        # Guide attributes
        guide_attrs = [
            "limbType",
            "patellaBone",
            "toeBones",
            "toeNum",
            "kneeFix",
            "scapularExtra",
        ]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        # Group nodes
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)

        # Main rig attributes
        self.setting = None
        self.jnts = []
        self.jnts_fk = []
        self.jnts_ik = []
        self.jntsFix = None

        # Joint names and related attributes
        self.jnt_names = ["hip", "upr", "lwr", "palm", "digit", "ball", "tip"]
        for name in self.jnt_names:
            setattr(self, name, None)
            setattr(self, f"{name}_fkc", None)

        # Controls and groups
        self.ikc = None
        self.pvc = None
        self.smart_ctl = None
        self.ctls_ik = []
        self.ctls_fk = []
        self.ctls_sub = []
        self.toe_wiggle_grp = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.ikCstG = None
        self.ball_ikc = None
        self.extra_ikc = None
        self.scapularG = None
        self.quadScap_ikc = None
        self.all_ikH = {}
        self.all_bend = []

        # Toes and digits
        self.toesJntList = None
        self.toesCtlsList = None
        self.toesRootJ = rigNode.a.toesRootJ.inConnNode

        # IK handles and helpers
        self.ikH1 = None

    def gen_sk(self):
        """Generate the skeleton for the quadruped leg rig."""
        # --- Generate main skeleton module and root joints ---
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jnt_names)

        # --- Toes setup (if enabled) ---
        if self.toeBones:
            # Create toes root joint and parent to skeleton data
            self.toesRootJ = self.gen_sk_fr_names(["toesRoot"])[0]
            self.toesRootJ | self.SKL_DATA
            self.rigNode.setMsg({"toesRootJ": self.toesRootJ})

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
                fgr_jnts = self.gen_sk_fr_names(names, scale=0.2)
                fgr_jnts[0].reOrient(
                    upRef=fgr_jnts[1],
                    xDir=self.xDir,
                    up=(0, 0, -1),
                )
                fgr_jnts[0] | self.toesRootJ

        # --- Finalize root joint setup ---
        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build control nodes for the quadruped leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "setting", "z", scale, 1, 2),
            ("hip_fkc", "circle", "x", scale, 0, -1),
            ("upr_fkc", "circle", "x", scale, 0, -1),
            ("lwr_fkc", "circle", "x", scale, 0, -1),
            ("palm_fkc", "circle", "x", scale, 0, -1),
            ("digit_fkc", "circle", "x", scale, 0, -1),
            ("ball_fkc", "circle", "x", scale / 2, 0, -1),
            ("ikc", "foot", None, rSz, 0, -1),
            ("extra_ikc", "rotator", None, -scale, 0, -1),
            ("pvc", "pvc", None, rSz, 0, -1),
            ("smart_ctl", "roll", None, scale / 3, 0, -1),
        ]

        if self.scapularExtra:
            ctl_defs.append(("quadScap_ikc", "shoulder", None, scale, 0, -1))

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        if self.scapularExtra:
            self.quadScap_ikc.cv_move(scale * 20, 0, 0)

        self.smart_ctl.cv_scale(2, 1, 1)

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

        # self.jnts_bind = self.jnts[1:-1] + [self.boneFix]
        self.jnts_bind = [self.upr]

        self.scapularG = self.build_scapular(
            ikc=self.ikc,
            fkc=self.ctls_fk[0],
            jnts=self.jnts,
            EXTRA=self.scapularExtra,
            scapCtl=self.quadScap_ikc,
        )

        self.singleBallCtl_setup()

        if self.kneeFix:
            self.boneFix_setup(self.lwr, self.palm)

        if self.patellaBone:
            self.patella_setup()

        if self.limbType == LimbType.SKEL.value:
            self.build_dual_bones()
        else:
            self.jnts_bind += [self.lwr]

        if self.toeBones:
            self.build_toes()
        else:
            self.jnts_bind += [self.palm, self.digit, self.ball]

        self.build_post()

    def build_toes(self):
        """Build the toe joints and controls for the quadruped leg rig."""
        self.toesJntList = []
        self.toesRootJ | self.palm

        for rJ in self.toesRootJ.childrenJt:
            self.toesJntList.append([fgr for fgr in rJ.allChildrenJt2])
            rJ.a.segmentScaleCompensate.set(0)

        self.build_digits()
        # self.updateBindJntList(remove=[self.tip, self.digit, self.ball, self.palm])

    def build_fk(self):
        """Build the FK controls and joints for the quadruped leg rig."""
        logging.info(self.rigID)
        self.jnts_fk = common.dupSk(
            self.jnts, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )
        self.ctls_fk = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.digit_fkc,
            self.ball_fkc,
        ]
        self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)
        # self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        """Build the IK controls for the quadruped leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Guide and alignment setup ---
        mg = self.master_guide
        pvc_guide = DagNode(rID + "_pvc_guide")
        inPos_guide = DagNode(rID + "_palm_inPos_guide")
        outPos_guide = DagNode(rID + "_palm_outPos_guide")
        heelPos_guide = DagNode(rID + "_palm_heelPos_guide")
        toePos_guide = DagNode(rID + "_palm_toePos_guide")

        # Align main IK and pole vector controls
        self.ikc.alignTo(mg)
        self.pvc.alignTo(pvc_guide)

        # --- IK joint chain creation ---
        self.jnts_ik = common.dupSk(
            self.jnts, "_ik", p=self.IK_GRP, r=rSz * 3, color=Color.D_RED
        )

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
            RIG_DATA=self.RIG_DATA,
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
        self.ikc_gimbal = CrvNode(self.ikc).add_gimbal()
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
        self.all_ikH = {"main": ikH1, "ball": ikH2, "toe": ikH3, "else": ikHX}
        self.toe_wiggle_grp = toe_wiggle_grp
        self.hip_fkc.cstPar(self.jnts_ik[0], mo=1)

        # --- Store controls and finalize ---
        self.ctls_ik = [self.ikc, self.pvc, self.ikc_gimbal, self.extra_ikc]
        self.ikH1 = ikH1
        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)
        self.extra_roll_logic(ballRollG, extraRollG, self.IK_GRP)

    def blend_fk_ik(self):
        """Blend FK and IK controls for the quadruped leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Snap setting control to upper joint and constrain ---
        self.setting.snapTo(self.hip, p=self.CTL_DATA, ofs=(xDr * rSz * 15, 0, 0))
        self.hip.cstPar(self.setting, mo=1)

        # --- Add blend attribute and set up blending constraints ---
        fkToIk = self.setting.a.add("fkToIk", min=0, max=1, dv=1)
        for i in range(len(self.jnts) - 1):
            fkJ = self.jnts_fk[i]
            ikJ = self.jnts_ik[i]
            jnt = self.jnts[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkToIk)

        # --- Add proxy attribute for easy FK/IK switch on controls ---
        for ctl in self.ctls_fk + self.ctls_ik + [self.smart_ctl]:

            ctl.a.add("fkToIk", proxy=fkToIk, k=0)

        # --- Create matcher group for IK control alignment ---
        GrpNode(f"{self.ikc.name}_matcher", align=self.ikc, p=self.digit_fkc)
        GrpNode(f"{self.extra_ikc.name}_matcher", align=self.extra_ikc, p=self.palm_fkc)

    def extra_roll_logic(self, ballRollG, extraRollG, grp):
        """Setup extra roll logic for the quadruped leg rig."""
        logging.info(self.rigID)

        # --- Setup aim group and locator ---
        aimGrp = extraRollG.addOffsetGrp(below=1, relink=0)
        aimGrp | extraRollG.offset
        uprIkJ = self.jnts_ik[1]
        aimG_loc = LocNode(f"{aimGrp.name}_loc", align=uprIkJ, p=grp)
        self.ikc.cstPoi(aimG_loc, mo=1)

        # --- Add palm aim attributes ---
        palmAim = self.extra_ikc.a.add("palmAim", min=0, max=1)  # , dv=1)
        palmAimRatio = self.extra_ikc.a.add(
            "palmAimRatio", min=-2, max=2, dv=-0.5 if "Arm" in self.rigID else 0.5
        )

        # --- Setup aim constraint ---
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

        # --- Offset and roll logic ---
        ofs = extraRollG.addOffsetGrp()
        ofs | aimGrp
        d = ut.distDim_(self.ikc, self.jnts_ik[1])
        D = d.get()
        d /= self.masterC.a["globalScale"]
        ((d - D) * palmAimRatio * palmAim) >> extraRollG.a.rx

        # --- Align extra IK control ---
        grp_ofs = extraRollG.addOffsetGrp(below=1)
        self.extra_ikc.alignTo(grp_ofs, p=extraRollG)
        grp_ofs | self.extra_ikc

        # --- Hide aim locator ---
        aimG_loc.hide()

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        """Setup sub-controls for the quadruped leg rig."""
        rID, rSz, xDr = self.getMyVar()

        # --- Create and register sub-controls for roll groups ---
        roll_groups = [toeRollG, inRollG, outRollG, heelRollG]
        for g in roll_groups:
            ctl = g.addOffsetGrp(below=1)
            CrvNode(ctl)(name=f"{g.name}_ctl", shape="diamond3", scale=rSz / 4)
            self.ctls_sub.append(ctl)

        # --- Ball group IK control ---
        self.ball_ikc = ballRollG.addOffsetGrp(below=1)
        CrvNode(self.ball_ikc)(
            name="ball_ikc",
            pf=rID,
            shape="stickS",
            scale=-rSz * xDr / 3,
            color=Color.BLACK,
            rotateY=90,
            width=2,
        )
        self.rigNode.setMsg({"ball_ikc": self.ball_ikc})
        self.ctls_ik.append(self.ball_ikc)

        # --- Smart control setup ---
        self.smart_ctl.snapAlignTo(toeRollG, self.master_guide)
        self.smart_ctl | self.ikc_gimbal
        self.smart_ctl.addOffsetGrp()
        self.smart_ctl.a.rx >> self.smart_ctl.a["footRoll"]
        (-xDr * self.smart_ctl.a.ry) >> toeRollG.a.ry
        (-xDr * self.smart_ctl.a.rz) >> self.smart_ctl.a["footBank"]

    def build_digits(self):
        """Build the digit controls for the quadruped leg rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        self.toesCtlsList = []

        # --- Build digit IK and FK controls for each toe chain ---
        for toeJs in self.toesJntList:
            dupTgt = DagNode(toeJs[2])
            scale = xDr * rSz / 5
            # ctl,
            ikJ, ikH = self.build_digit_ik(dupTgt, scale, p=self.ball_fkc)
            ikJ.a.r >> dupTgt.a.r
            self.jnts_bind.extend(toeJs[:-1])

            # Build FK controls for toe joints (excluding first 3 and last)
            fkToeList = toeJs[3:-1]
            ctlList = []
            for jnt in fkToeList:
                c = CrvNode(
                    f"{jnt.name}_ctl_#",
                    shape="squareR",
                    up="x",
                    align=jnt,
                    scale=scale,
                    top=1,
                    width=2,
                )
                ctlList.append(c)
            self.build_fk_with_ctl(fkToeList, ctlList, p=self.CTL_DATA, oriOnly=1)
            self.toesCtlsList.append(ctlList)
            # self.toesCtlsList.append([ctl])

        # --- Add hidden IK handles for toe segments ---
        for toeJs in self.toesJntList:
            IkNode(
                toeJs[1],
                sj=toeJs[1],
                ee=toeJs[2],
                scaleFix=self.masterC.a["globalScale"],
                RIG_DATA=self.RIG_DATA,
                vis=0,
                p=self.ball_fkc,
            )

        # # Splay logic (commented out)
        # splay = self.ball_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45
        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.rz
        #     common.sdk2(splay, tgt, -5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, 5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

    def build_dual_bones(self):
        """Build dual bones for the lower leg."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Generate dual joint chains ---
        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], scale=0.7)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], scale=0.7)

        # --- Parent dual chains to appropriate joint ---
        parent = self.boneFix if self.kneeFix else self.lwr
        (radius_JC[0], ulna_JC[0]) | parent

        # --- Create and align locators for dual chains ---
        radius_loc = LocNode(
            "radius_loc", pf=rID, align=radius_JC[1], p=self.palm, size=rSz
        )
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm, size=rSz)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])

        # --- Setup aim constraints for dual locators ---
        uType = "objectrotation"
        aim = (xDr, 0, 0)
        z = (0, 0, 1)
        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )

        # --- Update bind joints ---
        # self.updateBindJntList(remove=[self.boneFix], extend=[radius_JC[0], ulna_JC[0]])
        self.jnts_bind += [radius_JC[0], ulna_JC[0]]

    def singleBallCtl_setup(self):
        """Make ball ctl the single ctl in both FK and IK modes."""
        logging.info(self.rigID)

        # --- Prepare blend attribute and offsets ---
        fkToIk = self.setting.a["fkToIk"]
        ball_fkc_ofs = self.ball_fkc.offset
        ball_fkc_ofs.removeCstNodes()

        # --- Parent toe IK handle to ball control ---
        self.all_ikH["toe"] | self.ball_fkc
        ball_fkj = self.jnts_fk[5]

        # --- Space align ball control between FK and IK ---
        self.space_align(
            self.ball_fkc,
            spaces=[ball_fkj.offset, self.toe_wiggle_grp],
            w=fkToIk,
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
            w=fkToIk,
            cstType="ori",
            mo=1,
        )

    def setup_vis(self):
        """Setup visibility toggles for the quadruped leg rig controls."""
        self.ctl_vis_toggle(
            self.setting.a["fkToIk"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.ctls_fk[1:-1],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("extraCtl", dv=1, attrType="bool", k=0),
            onList=self.ctls_sub,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("debugVis", dv=0, attrType="bool", k=0),
            onList=self.jnts_fk + self.jnts_ik,
        )
        [ikh.hide() for ikh in self.all_ikH.values()]

    def setup_channel(self):
        """Setup channels for the quadruped leg rig controls."""
        self.setting.a.showAttr()
        self.smart_ctl.a.showAttr(r=1)

        for ctl in self.ctls_fk + self.ctls_sub + self.ctls_ik:
            ctl.a.showAttr(t=1, r=1)

        self.ball_ikc.a.showAttr(r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

        if self.scapularExtra:
            self.quadScap_ikc.a.showAttr("ty", "tz", r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the quadruped leg rig controls."""
        for c in self.ctls_fk + self.ctls_ik + [self.lwr]:
            c.a.ro.set(2)
        self.smart_ctl.a.ro.set(3)

    def setup_space(self):
        """Setup space switching for the quadruped leg rig controls."""
        self.rigNode.a.add("spaceName1", attrType="string", txt="master, bodyBase, COG")
        self.rigNode.a.add("spaceName2", attrType="string", txt="leg, master, COG")

        self.rigNode.setMsg(
            {
                "spaceHolder1": self.ikc,
                "spaceHolder2": self.pvc,
                "space_master": self.masterC,
                "space_hip": self.hip_fkc,
                "space_leg": self.ikH1.softJ[0],
            }
        )

    def setup_anchor(self):
        """Setup anchor points for the quadruped leg rig."""
        self.setup_anchor_module({"anchorS1": self.scapularG.offset})

    def setup_ctlSet(self):
        """Setup control sets for the quadruped leg rig module."""
        ctlSet = (
            self.ctls_fk
            + self.ctls_ik
            + self.ctls_sub
            + [self.smart_ctl, self.setting, self.extra_ikc]
        )
        # if self.RBN_BONES:
        #     ctlSet.extend(self.all_bend)
        if self.toeBones:
            [ctlSet.extend(s) for s in self.toesCtlsList or []]
        self.add_ctl_set(ctlSet)

    def setup_bindJnt(self):
        """Setup bind joints for the quadruped leg rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_proxy_radiusScale(self.jnts_bind, 2)

    def setup_scale(self):
        """Setup scale for the quadruped leg rig module."""
        self.masterC.a.globalScale >> self.SKL_DATA.a.scale

    def build_post(self):
        """Post setup for the quadruped leg rig module."""
        logging.info(self.rigID)
        common.add_mirror_attr([self.ikc, self.ikc_gimbal, self.pvc, self.smart_ctl])
        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
