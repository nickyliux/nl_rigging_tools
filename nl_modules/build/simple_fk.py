import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils.common import Vec


class SimpleFk(RigModule):
    """Simple fk rig module."""

    def __init__(self, mg):
        # mg = DagNode(mg) if isinstance(mg, str) else mg
        super().__init__(mg)

        guide_attrs = ["segNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.masterGuide.a[attr].get())

        # Groups
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)

        # Joint names and attributes
        self.jnt_names = ["simple01", "simple02", "simple03", "simple04", "simple05"]
        self.jnt_names = self.jnt_names[: (self.segNum + 1)]

        self.simple01_fkc = None
        self.simple02_fkc = None
        self.simple03_fkc = None
        self.simple04_fkc = None

        self.jnts = []
        self.jnts_fk = []
        self.jnts_ikA = []
        self.jnts_ikB = []
        self.ctls_ik = []
        self.ctls_fk = []
        self.ikhs = []

    def gen_sk(self):
        """Generate the skeleton for the finger rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jnt_names)

        for j in root_list:
            JntNode(j).a["preferredAngleZ"].set(-10)

        self.rootJ = root_list[0]
        self.rootJ | self.JNT_DATA
        self.masterGuide.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build(self):
        """Build the finger rig module."""
        self.build_pre_module()
        self.jnts = self.rootJ.allChildrenJt2

        self.simple01 = self.jnts[0]
        self.simple02 = self.jnts[1]
        self.simple03 = self.jnts[2] if self.segNum == 2 else None
        self.simple04 = self.jnts[3] if self.segNum == 3 else None
        self.simple05 = self.jnts[4] if self.segNum == 4 else None

        self.build_ctl()
        self.build_fk()
        self.blend_fk_ik()
        self.build_post()

    def build_ctl(self):
        """Build control nodes for the arm rig."""
        logging.info(".")

        rID, rSz, xDr = self.get_short_form()
        up = "x"
        scale = Vec((0.2, 1, 1)) * rSz
        if not rID.startswith("lf") and not rID.startswith("rt"):
            up = "z"
            scale = Vec((1, 1, 0.5)) * rSz

        ctl_defs = [
            ("setting", "screw_nut", up, rSz, 0),
            ("simple01_fkc", "cube", up, scale, 0),
        ]

        if self.segNum >= 2:
            ctl_defs.append(("simple02_fkc", "hexagon_3d", up, rSz / 2, 0))
        if self.segNum >= 3:
            ctl_defs.append(("simple03_fkc", "hexagon_3d", up, rSz / 2, 0))
        if self.segNum >= 4:
            ctl_defs.append(("simple04_fkc", "hexagon_3d", up, rSz / 2, 0))

        for name, shape, up, sca, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, sca, top)

        self.setting.alignTo(self.simple01_fkc, p=self.simple01_fkc)

    def build_fk(self):
        """Build the FK controls for the arm rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        self.jnts_fk = common.dupSk(self.jnts, "_fk", p=self.FK_GRP, r=rSz)
        self.ctls_fk = [
            self.simple01_fkc,
            self.simple02_fkc,
            self.simple03_fkc,
            self.simple04_fkc,
        ]
        self.ctls_fk = self.ctls_fk[: self.segNum]

        self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)

        rot_axis = "rx" if xDr == 0 else "rz"
        if self.segNum >= 3:
            self.ctls_fk[1].a.add("rot1") >> self.ctls_fk[2].addOffsetGrp().a[rot_axis]
        if self.segNum >= 4:
            self.ctls_fk[1].a.add("rot2") >> self.ctls_fk[3].addOffsetGrp().a[rot_axis]

    def blend_fk_ik(self):
        """Blend FK and IK joints for the arm rig."""
        logging.info(".")

        for i in range(len(self.jnts)):
            fkJ = self.jnts_fk[i]
            jnt = self.jnts[i]
            fkJ.cstPar(jnt)

    def setup_ctlSet(self):
        """Setup control sets for the finger rig."""
        ctlSet = self.ctls_fk + self.ctls_ik
        self.add_ctl_set(ctlSet)

    def setup_scale(self):
        """Setup scale for the arm rig module."""

        localScale = self.setting.a.add("localScale", dv=1, min=0.01)
        localScale >> self.CTL_DATA.a.scale
        self.masterC.a.globalScale * localScale >> self.JNT_DATA.a.scale
        self.ctls_fk[0].a.add("localScale", proxy=localScale)

    def setup_anchor(self):
        """Setup anchor for the simple rig module."""
        self.setup_anchor_module(
            {
                "anchorS1": self.ctls_fk[0].offset,
                "anchorP1": self.ctls_fk[-1],
            }
        )

    def setup_vis(self):
        """Setup visibility for the finger rig module."""
        self.ctl_vis_toggle(
            self.setting.a.add("debug", k=0, type="bool"),
            onList=[self.jnts_fk[0]] + self.ikhs,
        )

    def setup_channel(self):
        """Setup channels for the finger rig module."""
        self.setting.a.showAttr()
        for ctl in self.ctls_fk:
            ctl.a.showAttr(t=1, r=1)

    def setup_bindJnt(self):
        """Setup bind joints for the arm rig module."""
        self.add_bind_jnt_set(self.jnts[:-1])
        proxy.add_proxyRadiusScale_attr(self.jnts_bind, 5)

    def build_post(self):
        """Post setup for the leg rig module."""
        logging.info(".")
        self.setup_scale()
        self.setup_ctlSet()
        self.setup_bindJnt()
        # self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        # self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
