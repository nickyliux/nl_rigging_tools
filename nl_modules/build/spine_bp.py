import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import utils_node as ut


class SpineBp(RigModule):
    """Spine rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the SpineBp rig module."""
        super().__init__(rigNode)

        # Guide attributes
        for attr in ("fkJntNum", "rbnBones", "rbnJntNum"):
            setattr(self, attr, self.get_guide_attr(attr))

        # Guide nodes
        self.LINE_GUIDE = DagNode(f"{self.rigID}_line_guide")
        self.MD_GUIDE = DagNode(f"{self.rigID}_md_guide")

        # Main settings and controls
        self.setting = None
        self.cog_ctl = None
        self.hip_ctl = None
        self.mid_ctl = None
        self.cog_gmb = None
        self.chest_ctl = None

        # Control and joint lists
        self.ikCtls = []
        self.fkCtls = []
        self.ctlJnts = []
        self.bindJnts = []
        self.fkJnts = []
        self.rbJnts = []

        # Ribbon surface
        self.rbSrf = None

    def genSk(self):
        """Generate the skeleton for the spine rig."""

        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build control nodes for the spine rig."""

        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()

        ctl_defs = [
            ("setting", "bagua", "z", rSz * 3, 1, 2),
            ("cog_ctl", "cog2", None, rSz * 6, 0, -1),
            ("chest_ctl", "circle", None, rSz * 5, 0, -1),
            ("mid_ctl", "square", None, rSz * 5, 0, -1),
            ("hip_ctl", "circle", None, rSz * 5, 0, -1),
        ]

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

    def build(self):
        """Build the spine rig module."""

        self.build_pre_module()
        self.rigSize = CrvNode(self.LINE_GUIDE).length / 100
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.build_post()

    def build_fk(self):
        """Build the FK controls and joints for the spine rig."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.fkJnts = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=self.fkJntNum,
            pf=rID,
            aimV=(0, 1, 0),
            upV=(1, 0, 0),
            wuV=(1, 0, 0),
            size=rSz * 2,
            color=6,
            p=self.SKL_DATA,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnts[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        self.fkCtls = []
        for i, j in enumerate(self.fkJnts[:-1]):
            c = CrvNode(f"{i + 1}_fkc", pf=rID, shape="cubeL", scale=rSz, top=1)
            self.fkCtls.append(c)

        self.build_fk_with_ctl2(self.fkJnts[1:], self.fkCtls[1:], p=self.CTL_DATA)
        #
        #   modify hipCtl specific for hip rotation
        #
        hipCtl = self.fkCtls[0]
        hipCtl(p=self.CTL_DATA, addOfs=1, color=20)
        hipCtl.offset.snapAlignTo(self.fkJnts[1], self.fkJnts[0])
        hipCtl.cv_move(0, rSz * -20, 0)
        hipCtl.cstPar(self.fkJnts[0], mo=1)
        self.bindJnts = self.fkJnts

    def build_ik(self):
        """Build the IK controls for the spine rig."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        mg = self.master_guide
        self.hip_ctl.snapAlignTo(self.fkJnts[0], mg)
        self.mid_ctl.snapAlignTo(self.MD_GUIDE, mg)
        self.chest_ctl.snapAlignTo(self.fkJnts[-1], mg)
        self.cog_ctl.snapAlignTo(self.hip_ctl, mg)

        self.setting.alignTo(self.cog_ctl, p=self.CTL_DATA)
        self.cog_ctl.cstPar(self.setting, mo=1)

        self.cog_gmb = CrvNode(self.cog_ctl).add_gimbal()
        self.cog_ctl | self.CTL_DATA
        self.cog_gmb.cstPar(self.fkCtls[0].offset, mo=1)
        self.cog_gmb.cstPar(self.fkCtls[1].offset, mo=1)

        self.hip_ctl | self.fkCtls[0]
        self.chest_ctl | self.fkCtls[-1]
        self.mid_ctl | self.fkCtls[len(self.fkCtls) // 2]
        self.hip_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp(count=2)
        self.chest_ctl.addOffsetGrp()
        self.cog_ctl.addOffsetGrp()
        self.hip_ctl.a.ry @ self.chest_ctl.a.ry >> self.mid_ctl.offset.a.ry

        self.chest_ctl.cstOri(self.fkJnts[-1], mo=1)
        self.cog_gmb.cstSca(self.fkJnts[0])
        self.fkJnts[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        if self.rbnBones:
            self.rbSrf = SrfNode.buildRbSrf(
                pf=rID,
                crv=self.LINE_GUIDE,
                normal=1,
                snap=self.rootJ,
                spans=self.fkJntNum - 1,
                p=self.RIG_DATA,
            )
            self.rigNode.setMsg({"rbSrf": self.rbSrf})

            self.ctlJnts = self.build_ctl_jnt(
                [self.hip_ctl, self.mid_ctl, self.chest_ctl], r=rSz * 10
            )
            self.rbSrf.weightTo(self.ctlJnts, chain=0, mi=2, dr=6)
            self.rbJnts = SrfNode.buildRbJnt(
                self.rbnJntNum,
                pf=rID,
                size=rSz,
                surf=self.rbSrf,
                rigData=self.RIG_DATA,
                sklData=self.SKL_DATA,
            )
            self.volume_setup()

            self.bindJnts = self.rbJnts

        for ctl in self.fkCtls:
            self.cog_ctl.a.s >> ctl.offset.a.s

        self.masterC.a.globalScale >> self.SKL_DATA.a.s
        self.ikCtls = [self.hip_ctl, self.mid_ctl, self.chest_ctl]

    def volume_setup(self):
        """Setup volume squash/stretch for the spine rig."""

        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf)
        d = arcLD.a.arcLengthInV
        D = d.get()

        volume = self.setting.a.add("volume", min=0, dv=1)
        self.chest_ctl.a.add("volume", proxy=volume)
        self.hip_ctl.a.add("volume", proxy=volume)

        # keys for volume squash
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.rbnJntNum - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.rbnJntNum - 1, v=0)
        mc.setAttr(volGraph, l=1)

        for i in range(self.rbnJntNum):

            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)

            ratio = (scaleFix * D / d) ** (fc.a.varying * volume)
            ratio >> self.rbJnts[i].a.sy
            ratio >> self.rbJnts[i].a.sz

    def setup_vis(self):
        """Setup visibility toggles for the spine rig controls."""

        self.ctl_vis_toggle(
            self.setting.a.add("fkCtls", min=0, max=1, dv=1, k=0),
            onList=self.fkCtls,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("ikCtls", min=0, max=1, dv=1, k=0),
            onList=self.ikCtls,
        )
        mc.hide(self.ctlJnts, self.fkJnts, self.SKL_DATA)

    def setup_channel(self):
        """Setup channel attributes for the spine rig controls."""

        self.setting.a.showAttr()
        for ctl in [
            self.cog_ctl,
            self.cog_gmb,
            self.hip_ctl,
            self.mid_ctl,
            self.chest_ctl,
        ] + self.fkCtls:
            ctl.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the spine rig controls."""

        for ctl in self.fkCtls + self.ikCtls + [self.cog_ctl, self.cog_gmb]:
            ctl.a.ro.set(2)

    def setup_space(self):
        """Setup space switching for the spine rig controls."""

        self.rigNode.setMsg(
            {
                "space_COG": self.cog_ctl,
                "space_lwrBody": self.hip_ctl,
                "space_uprBody": self.chest_ctl,
            }
        )

    def setup_anchor(self):
        """Setup anchor module for the spine rig controls."""

        anchorM2Tgt = self.rbJnts[-1] if self.rbnBones else self.chest_ctl
        self.setup_anchor_module({"anchorM1": self.hip_ctl, "anchorM2": anchorM2Tgt})

    def build_post(self):
        """Post setup for the spine rig."""

        logging.info(self.rigID)
        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_ratio(self.bindJnts, 6)

        self.add_ctl_set(
            self.fkCtls + self.ikCtls + [self.setting, self.cog_ctl, self.cog_gmb]
        )
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
