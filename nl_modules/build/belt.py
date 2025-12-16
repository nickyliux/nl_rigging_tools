import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import build
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color


class Belt(RigModule):
    """belt rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the belt rig module with the given rigNode."""
        super().__init__(rigNode)

        # Guide attributes
        # guide_attrs = ["fkJntNum", "rbnJntNum"]
        guide_attrs = ["rbnJntNum", "ikCtlNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        # --- Naming and group setup ---
        self.LINE_GUIDE = CrvNode(f"{self.rigID}_line_guide")
        self.RT_GUIDE = CrvNode(f"{self.rigID}_rt_guide")

        # Group nodes
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        # --- Main rig attributes ---
        self.setting = None
        self.rbSrf1 = None
        # self.rbSrf2 = None

        # --- Control and joint lists ---
        self.ctls_fk = []
        self.ctls_ik = []
        self.ctls_ofs = []

        self.jnts_fk = []
        self.jnts_ik = []
        self.jnts_ofs = []
        self.jnts_bind = []

    def gen_sk(self):
        """Generate the skeleton for the belt rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])

        self.rootJ = root_list[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build_ctl(self):
        """Build control nodes for the belt rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        ctl_defs = [("setting", "screw_nut", "z", rSz * 2, 0, -1)]
        for name, shape, up, sca, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, sca, top, w, rID)

        self.setting.a.add("stretchy", min=0, max=1, dv=1)
        self.setting.color = Color.L_BLUE

    def build(self):
        """Build the belt rig."""
        self.build_pre_module()

        # Create and register rbSrf
        self.rbSrf1 = self.create_rbSrf()
        # self.rbSrf2 = self.create_rbSrf()
        self.rigNode.setMsg({"rbSrf": self.rbSrf1})

        self.build_ctl()
        self.build_ik()
        # self.build_fk()
        self.build_ribbon()
        # build.add_noise_logic(ctl=self.setting, targets=self.jnts_ofs[1:])
        self.build_post()

        mc.delete(self.rootJ)

    def create_rbSrf(self):
        """Create the ribbon surface for the belt rig."""
        return SrfNode.buildRbSrf(
            pf=self.rigID,
            crv=self.LINE_GUIDE,
            normal=-1,
            spans=4,
            p=self.CTL_DATA,
            snap=self.RT_GUIDE,
            inheritsXf=0,
        )

    def build_ribbon(self):
        """Create the ribbon for the belt rig."""
        logging.info(self.rigID)
        crvLenRatio, self.jnts_rb, crv = common.build_ribbon_rivet(
            # rbSrf=self.rbSrf2,
            rbSrf=self.rbSrf1,
            rivetNum=self.rbnJntNum,
            scaleAttr=self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
            pf=self.rigID + "_2",
            rSz=self.rigSize,
            p=self.CTL_DATA,
            JNT_DATA=self.JNT_DATA,
            atMidOrEnd=1,
        )
        self.jnts_bind = self.jnts_rb

    def build_ik(self):
        """Build the IK controls for the belt rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Create IK joint chain from guide curve ---
        self.jnts_ik = JntNode.createJntsFrCrv(
            self.LINE_GUIDE,
            num=self.ikCtlNum,
            name="ikj",
            pf=rID,
            aimV=(0, 0, -1),
            size=rSz * 2,
        )
        # --- Attach ribbon surface weights to IK joints ---
        # --- Create and parent IK controls ---
        for i in range(self.ikCtlNum):
            ctl = CrvNode(
                f"{i}_ikc",
                pf=rID,
                shape="square",
                up="z",
                scale=rSz,
                align=self.jnts_ik[i],
                addOfs=1,
                p=self.IK_GRP,
            )
            ctl.cv_scale(1, 1, 0.5)
            self.jnts_ik[i] | ctl
            self.ctls_ik.append(ctl)
            # if i > 0:
            #     ctl.offset | self.ctls_ik[0]
            self.rigNode.setMsg({f"ikc{i}": ctl})

        if self.ikCtlNum > 2:
            for i in range(self.ikCtlNum - 2):
                common.cstMulti(
                    self.ctls_ik[-1],
                    self.ctls_ik[0],
                    # self.ctls_ik[i + 1],
                    self.ctls_ik[i + 1].addOffsetGrp(),
                    w=(i + 1) / (self.ikCtlNum - 1),
                    cstType="poi",
                )

        SrfNode(self.rbSrf1).weightTo(self.jnts_ik, mi=4, dr=6, chain=0)

        # --- Snap setting control to first IK control and constrain ---
        self.setting.snapTo(self.ctls_ik[0], p=self.FK_GRP, ofs=(0, rSz * 20, 0))
        self.ctls_ik[0].cstPar(self.setting, mo=1)

        RigModule.isolate_align(
            self.ctls_ik[0],
            spaces=[self.ctls_ik[0].offset, self.masterC],
        )

    # def build_fk(self):
    #     """Build the FK controls for the belt rig."""
    #     logging.info(self.rigID)

    #     rID, rSz, xDr = self.getMyVar()
    #     # --- Build FK joint chain from guide curve ---
    #     self.jnts_fk = JntNode.createJntFrCrv(
    #         self.LINE_GUIDE,
    #         num=self.fkJntNum + 1,
    #         pf=rID,
    #         aimV=(0, 0, -1),
    #         size=rSz,
    #         p=self.FK_GRP,
    #     )

    #     # --- Build pin constraints for FK controls ---
    #     # coord = [(0.5, i / self.fkJntNum) for i in range(self.fkJntNum + 1)]
    #     # pin, pinXf = common.nlRivet(geo=self.rbSrf1, coordList=coord, p=self.CTL_DATA)
    #     crvLenRatio, pinXf, crv = common.build_ribbon_rivet(
    #         rbSrf=self.rbSrf1,
    #         rivetNum=self.fkJntNum + 1,
    #         scaleAttr=self.setting.a.localScale * self.masterC.a.globalScale,
    #         stretchyAttr=self.setting.a.stretchy,
    #         pf=rID,
    #         rSz=rSz,
    #         outputJnt=0,
    #         p=self.CTL_DATA,
    #         JNT_DATA=self.JNT_DATA,
    #     )

    #     # --- Create FK controls and register ---
    #     for i in range(self.fkJntNum + 1):
    #         tgt = self.jnts_fk[i]
    #         ctl = CrvNode(
    #             f"{i}_fkc", pf=rID, shape="circle", up="z", scale=rSz * 0.8, align=tgt
    #         )
    #         self.rigNode.setMsg({f"fkc{i}": ctl})
    #         self.ctls_fk.append(ctl)

    #     # --- Build group chain and connect pins ---
    #     chainGrps = []
    #     lastGrp = self.FK_GRP
    #     for i in range(self.fkJntNum + 1):
    #         grp = GrpNode(f"{i}_chainGrp", pf=rID, align=self.ctls_fk[i], p=lastGrp)
    #         pinXf[i].cstPar(grp, mo=1)
    #         chainGrps.append(grp)
    #         lastGrp = grp

    #     # --- Build FK with controls ---
    #     self.build_fk_with_ctl3(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)

    #     # --- Connect chain groups to FK control offsets ---
    #     for i in range(self.fkJntNum + 1):
    #         chainGrps[i].a.t >> self.ctls_fk[i].offset.a.t
    #         chainGrps[i].a.r >> self.ctls_fk[i].offset.a.r

    #     # --- Build offset control layer ---
    #     for i in range(self.fkJntNum + 1):
    #         ctl = CrvNode(
    #             f"{i}_ofs_ctl",
    #             pf=rID,
    #             shape="diamond_3d",
    #             scale=rSz,
    #             align=self.ctls_fk[i],
    #             p=self.ctls_fk[i],
    #             color=Color.L_BLUE,
    #             top=1,
    #         )
    #         # ctl.cv_move(0, rSz * 20, 0)
    #         jnt = JntNode(f"{i}_ofs_jnt", pf=rID, align=ctl, p=ctl)
    #         self.ctls_ofs.append(ctl)
    #         self.jnts_ofs.append(jnt)

    #     # --- Attach ribbon surface weights to offset joints ---
    #     SrfNode(self.rbSrf2).weightTo(self.jnts_ofs, chain=0, mi=2, dr=6)

    #     # --- Cleanup and update root joint ---
    #     mc.delete(self.rootJ)
    #     self.rootJ = self.jnts_fk[0]
    #     self.rigNode.setMsg({"rootJ": self.rootJ})

    def setup_vis(self):
        """Setup visibility toggles for the belt rig controls."""
        self.ctl_vis_toggle(
            self.setting.a.add("showSetup", k=0, type="bool"),
            onList=self.jnts_ik + [self.rbSrf1],
        )
        # self.ctl_vis_toggle(
        #     self.setting.a.add("showSubIk", k=0, type="bool", dv=1),
        #     onList=self.ctls_ofs,
        # )

    def setup_channel(self):
        """Setup channel attributes for the belt rig controls."""
        for ctl in self.ctls_fk + self.ctls_ik + self.ctls_ofs:
            ctl.a.showAttr(t=1, r=1)

        self.setting.a.showAttr()

        # self.ctls_fk[-1].a.add("stretchy", proxy=self.setting.a.stretchy)
        self.ctls_ik[0].a.add("stretchy", proxy=self.setting.a.stretchy)
        self.ctls_ik[-1].a.add("stretchy", proxy=self.setting.a.stretchy)

    def setup_rotate_order(self):
        """Setup rotate order for the belt rig controls."""
        for ctl in self.ctls_fk:
            ctl.a.ro.set(3)

    def setup_anchor(self):
        """Setup anchor module for the arm rig controls."""
        self.setup_anchor_module(
            {
                "anchorS1": self.ctls_ik[0].offset,
                "anchorS2": self.ctls_ik[-1].offset,
            }
        )

    def setup_scale(self):
        """Setup scale attributes for the belt rig controls."""
        pass

    def setup_ctlSet(self):
        """Setup control sets for the belt rig controls."""
        self.add_ctl_set(self.ctls_ik + self.ctls_fk + self.ctls_ofs + [self.setting])

    def setup_bindJnt(self):
        """Setup bind joints for the belt rig controls."""
        self.add_bind_jnt_set(self.jnts_bind)
        # proxy.add_radiusScale_attr(self.jnts_bind, 0.4)

    def setup_space(self):
        pass

    def build_post(self):
        """Post setup for the belt rig."""
        logging.info(self.rigID)

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
