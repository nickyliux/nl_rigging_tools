import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils.color import Color


class FingerFk(RigModule):
    """Finger rig module."""

    def __init__(self, rigNode):
        rigNode = DagNode(rigNode) if isinstance(rigNode, str) else rigNode
        super().__init__(rigNode)

        # Guide attributes
        guide_attrs = ["segNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        # Groups
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)

        # Joint names and attributes
        self.jnt_names = ["fgr01", "fgr02", "fgr03", "fgr04", "fgr05"]
        self.jnt_names = self.jnt_names[: (self.segNum + 1)]

        self.fgr01_fkc = None
        self.fgr02_fkc = None
        self.fgr03_fkc = None
        self.fgr04_fkc = None

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
        self.rigNode.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build(self):
        """Build the finger rig module."""
        self.build_pre_module()
        self.jnts = self.rootJ.allChildrenJt2

        self.fgr01 = self.jnts[0]
        self.fgr02 = self.jnts[1]
        self.fgr03 = self.jnts[2] if self.segNum == 2 else None
        self.fgr04 = self.jnts[3] if self.segNum == 3 else None
        self.fgr05 = self.jnts[4] if self.segNum == 4 else None

        self.build_ctl()
        self.build_fk()
        self.blend_fk_ik()
        self.build_post()

    def build_ctl(self):
        """Build control nodes for the arm rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "X", "x", scale, 0),
            ("fgr01_fkc", "squareR", None, -scale * 0.7, 0),
        ]
        if self.segNum >= 2:
            ctl_defs.append(("fgr02_fkc", "squareR", None, -scale, 0))
        if self.segNum >= 3:
            ctl_defs.append(("fgr03_fkc", "squareR", None, -scale, 0))
        if self.segNum >= 4:
            ctl_defs.append(("fgr04_fkc", "squareR", None, -scale, 0))

        for name, shape, up, sca, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, sca, top)

        self.setting.alignTo(self.rootJ, p=self.CTL_DATA)
        self.rootJ.cstPar(self.setting, mo=1)

        offset = [scale * 10, scale * -15, 0]
        self.fgr01_fkc.cv_move(*offset)
        if self.segNum >= 2:
            self.fgr02_fkc.cv_move(*offset)
        if self.segNum >= 3:
            self.fgr03_fkc.cv_move(*offset)
        if self.segNum >= 4:
            self.fgr04_fkc.cv_move(*offset)

        self.setting.color = Color.PINK

    def build_fk(self):
        """Build the FK controls for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.jnts_fk = common.dupSk(
            self.jnts, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )

        self.ctls_fk = [self.fgr01_fkc, self.fgr02_fkc, self.fgr03_fkc, self.fgr04_fkc]
        self.ctls_fk = self.ctls_fk[: self.segNum]

        self.build_fk_with_ctl3(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)

        rot_axis = "rx" if xDr == 0 else "rz"
        if self.segNum >= 3:
            self.ctls_fk[1].a.add("rot1") >> self.ctls_fk[2].addOffsetGrp().a[rot_axis]
        if self.segNum >= 4:
            self.ctls_fk[1].a.add("rot2") >> self.ctls_fk[3].addOffsetGrp().a[rot_axis]

    def create_ik(self, name, sj, ee, jsf, p):
        """Create an IK handle for the finger rig."""
        return IkNode(
            name,
            pf=self.rigID,
            rSz=self.rigSize,
            sj=sj,
            ee=ee,
            jsf=jsf,
            solver=Solver.RP,
            pvc=self.pvc,
            setting=self.setting,
            scaleFix=self.masterC.a["globalScale"],
            p_data=self.RIG_DATA,
            p=p,
        )

    def blend_fk_ik(self):
        """Blend FK and IK joints for the arm rig."""
        logging.info(self.rigID)
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
        self.masterC.a.globalScale >> self.JNT_DATA.a.scale

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorS1": self.ctls_fk[0].offset,
            }
        )

    def setup_vis(self):
        """Setup visibility for the finger rig module."""
        mc.hide(self.ikhs, self.jnts_fk)  # , self.setting)

        # self.ctl_vis_toggle(
        #     self.setting.a.add("debugVis", type="bool", dv=0, k=0),
        #     onList=self.jnts_fk,
        # )

    def setup_channel(self):
        """Setup channels for the finger rig module."""
        self.setting.a.showAttr()
        for ctl in self.ctls_fk:
            ctl.a.showAttr(t=1, r=1)

    def setup_bindJnt(self):
        """Setup bind joints for the arm rig module."""
        self.add_bind_jnt_set(self.jnts[:-1])
        proxy.add_radiusScale_attr(self.jnts, 0.5)

    def build_post(self):
        """Post setup for the leg rig module."""
        logging.info(self.rigID)

        # common.add_mirror_attr([self.ikc])
        self.setup_scale()
        self.setup_ctlSet()
        self.setup_bindJnt()
        # self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        # self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
