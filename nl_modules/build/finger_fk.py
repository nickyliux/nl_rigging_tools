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
    """Finger rig module for creating and managing finger rigs in a character rig."""

    def __init__(self, rigNode):
        """Initialize the Finger rig module."""
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
        root_list = self.gen_sk_fr_names(self.jnt_names, scale=1)
        for j in root_list:
            JntNode(j).a["preferredAngleZ"].set(-10)

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

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
        # self.build_ik()
        self.blend_fk_ik()
        self.build_post()

    def build_ctl(self):
        """Build control nodes for the arm rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "X", "x", scale, 1, 2),
            ("fgr01_fkc", "stickC", None, -scale, 1, -1),
            # ("ikc", "cube", None, scale, 1, 2),
            # ("extra_rota", "rotator", None, scale, 0, -1),
            # ("pvc", "pvc", "z", -scale, 0, -1),
        ]
        if self.segNum >= 2:
            ctl_defs.append(("fgr02_fkc", "stickS", None, -scale, 1, 4))
        if self.segNum >= 3:
            ctl_defs.append(("fgr03_fkc", "stickC", None, -scale, 1, -1))
        if self.segNum >= 4:
            ctl_defs.append(("fgr04_fkc", "stickC", None, -scale, 1, -1))

        for name, shape, up, sca, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, sca, top, w, rID)

        self.setting.alignTo(self.rootJ, p=self.CTL_DATA)
        self.rootJ.cstPar(self.setting, mo=1)

    def build_fk(self):
        """Build the FK controls for the arm rig."""
        logging.info(self.rigID)

        self.jnts_fk = common.dupSk(
            self.jnts, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )

        self.ctls_fk = [self.fgr01_fkc, self.fgr02_fkc, self.fgr03_fkc, self.fgr04_fkc]
        self.ctls_fk = self.ctls_fk[: self.segNum]

        self.build_fk_with_ctl3(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)

    def build_ik(self):
        """Build the IK controls for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # Create IK joints
        self.jnts_ikA = common.dupSk(
            self.jnts, "_ikA", p=self.IK_GRP, r=rSz * 3, color=Color.D_RED
        )
        self.jnts_ikB = common.dupSk(
            self.jnts, "_ikB", p=self.IK_GRP, r=rSz * 4, color=Color.PINK
        )

        #   ikc_zro
        #   |_ikc
        #   |   |__tipRot_grp_zro          <<-  par cst by one of the 3-joint chain
        #   |       |_tipRot_grp
        #   |           |_extra_rota zro
        #   |               |_extra_rota    ->>  ori cst the end segment of finger

        mg = self.master_guide
        self.ikc.snapAlignTo(self.fgr04, mg)
        self.pvc.alignTo(self.fgr01)
        self.tipRot_grp = GrpNode("tipRot_grp", pf=rID, snap=self.fgr04, alignR=mg)
        self.extra_rota.snapAlignTo(self.fgr03, mg)
        self.extra_rota | self.tipRot_grp | self.ikc

        (self.ikc, self.pvc) | self.CTL_DATA
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        self.tipRot_grp.addOffsetGrp()
        self.extra_rota.addOffsetGrp()
        self.ikc.a.add("pitch") >> self.tipRot_grp.a.rz
        self.ikc.a.add("yaw") >> self.tipRot_grp.a.ry
        self.ikc.a.add("roll") >> self.tipRot_grp.a.rx

        self.jnts_ikA[-2].cstPar(self.tipRot_grp.offset, mo=1)
        self.extra_rota.cstOri(self.jnts_ikB[-2], mo=1)

        # Create IK handle
        ikH_A = self.create_ik(
            "A", sj=self.fgr01, ee=self.fgr04, jsf="_ikA", p=self.ikc
        )
        ikH_B = self.create_ik(
            "B", sj=self.fgr01, ee=self.fgr03, jsf="_ikB", p=self.extra_rota
        )

        self.ctls_ik = [self.ikc, self.extra_rota, self.pvc]
        self.ikhs = [ikH_A, ikH_B]

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
            RIG_DATA=self.RIG_DATA,
            p=p,
        )

    def blend_fk_ik(self):
        """Blend FK and IK joints for the arm rig."""
        logging.info(self.rigID)
        # rID, rSz, xDr = self.getMyVar()

        # fkToIk = self.setting.a.add("fkToIk", min=0, max=1, dv=0)
        # for i in range(len(self.jnts) - 1):
        #     fkJ = self.jnts_fk[i]
        #     ikJ = self.jnts_ikB[i]
        #     jnt = self.jnts[i]
        #     common.cstMulti(fkJ, ikJ, jnt, w=fkToIk)

        # # Add blend attribute to all controls
        # for ctl in self.ctls_fk + self.ctls_ik:
        #     ctl.a.add("fkToIk", proxy=fkToIk, k=0)

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
        self.masterC.a.globalScale >> self.SKL_DATA.a.scale

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorS1": self.ctls_fk[0].offset,
            }
        )

    def setup_vis(self):
        """Setup visibility for the finger rig module."""
        mc.hide(self.ikhs)

        # self.ctl_vis_toggle(
        #     self.setting.a["fkToIk"],
        #     onList=self.ctls_ik,
        #     offList=self.ctls_fk,
        # )
        # self.ctl_vis_toggle(
        #     self.setting.a.add("debugVis", attrType="bool", dv=0, k=0),
        #     onList=self.jnts_fk,
        # )
        mc.hide(self.jnts_fk)

    def setup_channel(self):
        """Setup channels for the finger rig module."""
        self.setting.a.showAttr()
        for ctl in self.ctls_fk:
            ctl.a.showAttr(t=1, r=1)

    def setup_bindJnt(self):
        """Setup bind joints for the arm rig module."""
        self.add_bind_jnt_set(self.jnts[:-1])
        proxy.add_height_attr(self.jnts_bind, self.rigSize * 5)

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
        self.setup_channel()
        # self.setup_rotate_order()
        self.build_post_module()
