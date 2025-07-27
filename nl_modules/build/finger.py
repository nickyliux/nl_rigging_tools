import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.utils import common
from nl_modules.utils.color import Color


class Finger(RigModule):
    """Finger rig module for creating and managing finger rigs in a character rig."""

    def __init__(self, rigNode):
        # Initialize the Finger rig module with a rig node.

        rigNode = DagNode(rigNode) if isinstance(rigNode, str) else rigNode
        super().__init__(rigNode)

        # Groups
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)

        # Joint names and attributes
        self.jntNames = ["fgr01", "fgr02", "fgr03", "fgr04"]

        self.joints = []
        self.joints_fk = []
        self.joints_ikA = []
        self.joints_ikB = []
        self.ikCtl = []
        self.fkCtl = []
        self.all_ikHs = []

    def genSk(self):
        """Generate the skeleton for the finger rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jntNames, scale=3)
        for j in root_list:
            JntNode(j).a["preferredAngleZ"].set(-10)

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build(self):
        """
        Build the finger rig module.
        """
        self.build_pre_module()
        self.joints = self.rootJ.allChildrenJt2
        self.fgr01, self.fgr02, self.fgr03, self.fgr04 = self.joints
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        self.build_post()

    def build_ctl(self):
        """Build control nodes for the arm rig."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "bagua", "z", scale * 2, 1, 2),
            ("fgr01_fkc", "squR", "x", scale, 1, -1),
            ("fgr02_fkc", "squR", "x", scale, 1, -1),
            ("fgr03_fkc", "squR", "x", scale, 1, -1),
            ("fgr04_fkc", "squR", "x", scale, 1, -1),
            ("ikc", "cube", None, scale, 1, 2),
            ("extra_rota", "rotator2", None, scale, 0, -1),
            ("pvc", "diamond", None, scale, 0, -1),
        ]

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        # self.ikc.cv_move(rSz * 30, 0, 0)

    def build_fk(self):
        """Build the FK controls for the arm rig."""
        logging.info(self.rigID)
        self.joints_fk = common.dupSk(
            self.joints, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )
        self.fkCtl = [self.fgr01_fkc, self.fgr02_fkc, self.fgr03_fkc, self.fgr04_fkc]
        self.build_fk_with_ctl2(self.joints_fk, self.fkCtl, p=self.FK_GRP)

    def build_ik(self):
        """Build the IK controls for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # Create IK joints
        self.joints_ikA = common.dupSk(
            self.joints, "_ikA", p=self.IK_GRP, r=rSz * 3, color=Color.D_RED
        )
        self.joints_ikB = common.dupSk(
            self.joints, "_ikB", p=self.IK_GRP, r=rSz * 4, color=Color.PINK
        )

        #   ikc_zro
        #   |_ikc
        #   |   |__tipRota_grp_zro          <<-  par cst by one of the 3-joint chain
        #   |       |_tipRota_grp
        #   |           |_extra_rota zro
        #   |               |_extra_rota    ->>  ori cst the end segment of finger

        self.ikc.snapTo(self.fgr04)
        self.pvc.alignTo(self.fgr01)

        self.tipRota_grp = GrpNode("tipRota_grp", pf=rID, align=self.fgr04, p=self.ikc)
        self.extra_rota.alignTo(self.fgr03, p=self.tipRota_grp)

        (self.setting, self.ikc, self.pvc) | self.CTL_DATA
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        self.tipRota_grp.addOffsetGrp()
        self.extra_rota.addOffsetGrp()
        self.ikc.a.add("rotaUpDn") >> self.tipRota_grp.a.rz
        self.ikc.a.add("rotaSide") >> self.tipRota_grp.a.ry
        self.ikc.a.add("rotaRoll") >> self.tipRota_grp.a.rx
        self.ikc.a.add("extraCtlVis", attrType="bool", dv=0, k=0) >> self.extra_rota.a.v

        self.joints_ikA[-2].cstPar(self.tipRota_grp.offset, mo=1)
        self.extra_rota.cstOri(self.joints_ikB[-2], mo=1)

        # Create IK handle
        ikH_A = IkNode(
            "1",
            pf=rID,
            rSz=rSz,
            sj=self.fgr01,
            ee=self.fgr04,
            jsf="_ikA",
            solver=Solver.RP,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            limbScale=1,
            scaleFix=self.masterC.a["globalScale"],
            RIG_DATA=self.RIG_DATA,
            p=self.ikc,
        )

        ikH_B = IkNode(
            "2",
            pf=rID,
            rSz=rSz,
            sj=self.fgr01,
            ee=self.fgr03,
            jsf="_ikB",
            solver=Solver.RP,
            pvc=self.pvc,
            setting=self.setting,
            limbScale=1,
            scaleFix=self.masterC.a["globalScale"],
            RIG_DATA=self.RIG_DATA,
            p=self.extra_rota,
        )

        self.bindJnts = [JntNode(j) for j in self.joints]
        self.ikCtl = [self.ikc, self.extra_rota, self.pvc]
        self.all_ikHs = [ikH_A, ikH_B]

    def blend_fk_ik(self):
        """Blend FK and IK joints for the arm rig."""
        logging.info(self.rigID)

        self.rootJ.cstPar(self.setting)

        fkIkBlend = self.setting.a.add("fkIkBlend", min=0, max=1, dv=1)
        for i in range(len(self.joints) - 1):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ikB[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIkBlend)

        # Add blend attribute to all controls
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.addSep()
            ctl.a.add("fkIkBlend", proxy=fkIkBlend, k=0)

    def setup_ctlSet(self):
        """Setup control sets for the finger rig."""
        ctlSet = self.fkCtl + self.ikCtl
        self.add_ctl_set(ctlSet)

    def setup_scale(self):
        """Setup scale for the arm rig module."""
        self.masterC.a.globalScale >> self.SKL_DATA.a.scale

    def setup_vis(self):
        """Setup visibility for the finger rig module."""
        mc.hide(self.all_ikHs)

        self.ctl_vis_toggle(
            self.setting.a["fkIkBlend"],
            onList=self.ikCtl,
            offList=self.fkCtl,
        )

        setupJntVis = self.setting.a.add("setupJntVis", attrType="bool", dv=0, k=0)
        setupJntVis >> self.joints_ikA[0].a.v
        setupJntVis >> self.joints_ikB[0].a.v
        setupJntVis >> self.joints_fk[0].a.v

    def setup_channel(self):
        """Setup channels for the finger rig module."""
        self.setting.a.showAttr()

        for ctl in [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=0)

        for ctl in self.fkCtl + [self.extra_rota]:
            ctl.a.showAttr(t=1, r=1)

    def setup_bindJnt(self):
        """Setup bind joints for the arm rig module."""
        self.add_bind_jnt_set(self.bindJnts)
        # self.add_proxy_ratio(self.bindJnts, 2)

    def build_post(self):
        """Post setup for the leg rig module."""
        logging.info(self.rigID)

        common.add_mirror_attr([self.ikc])
        self.setup_scale()
        self.setup_ctlSet()
        self.setup_bindJnt()
        # self.setup_space()
        # self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        # self.setup_rotate_order()
        self.build_post_module()
