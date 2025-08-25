import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec
from nl_modules.utils.color import Color


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
        self.ctls_ik = []
        self.ctls_fk = []
        self.jnts_ctl = []
        self.jnts_bind = []
        self.jnts_fk = []
        self.jnts_rb = []

        # Ribbon surface
        self.rbSrf = None

    def gen_sk(self):
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
            ("setting", "setting", "z", rSz * 3, 1, 2),
            ("cog_ctl", "cog2", None, rSz * 6, 0, 2),
            ("chest_ctl", "chest", None, rSz * 4, 0, 2),
            ("mid_ctl", "cube", None, rSz, 1, -1),
            ("hip_ctl", "hip", None, rSz * 4, 0, 2),
        ]

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        # self.mid_ctl.cv_move(0, 0, rSz * -40)

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

        self.jnts_fk = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=self.fkJntNum,
            pf=rID,
            aimV=(0, 1, 0),
            size=rSz * 2,
            p=self.SKL_DATA,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.jnts_fk[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        self.ctls_fk = []
        for i, j in enumerate(self.jnts_fk[:-1]):
            c = CrvNode(
                f"{i + 1}_fkc",
                pf=rID,
                shape="squareR",
                scale=rSz * 5,
                # width=2,
                color=Color.D_YELLOW,
            )
            self.ctls_fk.append(c)

        self.build_fk_with_ctl2(self.jnts_fk[1:], self.ctls_fk[1:], p=self.CTL_DATA)
        #
        #   modify hipCtl specific for hip rotation
        #
        hipCtl = self.ctls_fk[0]
        hipCtl(p=self.CTL_DATA, addOfs=1, color=Color.BLACK, width=2)
        hipCtl.offset.snapAlignTo(self.jnts_fk[1], self.jnts_fk[0])
        hipCtl.cv_move(0, rSz * -20, 0)
        hipCtl.cstPar(self.jnts_fk[0], mo=1)
        self.jnts_bind = self.jnts_fk[:-1]

    def build_ik(self):
        """Build the IK controls for the spine rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.hip_ctl.snapAlignTo(self.jnts_fk[0], self.master_guide)
        self.mid_ctl.snapAlignTo(self.MD_GUIDE, self.master_guide)
        self.chest_ctl.snapAlignTo(self.jnts_fk[-1], self.master_guide)
        self.cog_ctl.snapAlignTo(self.hip_ctl, self.master_guide)

        self.cog_gmb = CrvNode(self.cog_ctl).add_gimbal()
        self.cog_ctl | self.CTL_DATA
        self.cog_gmb.cstPar(self.ctls_fk[0].offset, mo=1)
        self.cog_gmb.cstPar(self.ctls_fk[1].offset, mo=1)

        self.hip_ctl | self.ctls_fk[0]
        self.chest_ctl | self.ctls_fk[-1]

        mid_parent = self.ctls_fk[len(self.ctls_fk) // 2]
        self.mid_ctl | mid_parent
        self.hip_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp(count=2)
        self.chest_ctl.addOffsetGrp()
        self.cog_ctl.addOffsetGrp()
        self.hip_ctl.a.ry @ self.chest_ctl.a.ry >> self.mid_ctl.offset.a.ry

        self.chest_ctl.cstOri(self.jnts_fk[-1], mo=1)
        self.cog_gmb.cstSca(self.jnts_fk[0])
        self.jnts_fk[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        self.add_mid_ctl_follow(mid_parent)

        if self.rbnBones:
            self.build_ribbon()

        self.setting.snapTo(self.cog_ctl, p=self.CTL_DATA, ofs=(0, 0, rSz * -80))
        self.cog_ctl.cstPar(self.setting, mo=1)

        self.ctls_ik = [self.hip_ctl, self.mid_ctl, self.chest_ctl]

    def add_mid_ctl_follow(self, mid_parent):
        """Add follow setup for mid control"""
        mid_loc = LocNode("mid_loc", p=mid_parent, pf=self.rigID, vis=0)

        common.cstMulti(self.chest_ctl, self.hip_ctl, mid_loc, cstType="poi")
        self.chest_ctl.cstAim(
            mid_loc,
            worldUpObject=self.chest_ctl,
            worldUpType="objectrotation",
            aim=(0, 1, 0),
            u=(1, 0, 0),
            wu=(1, 0, 0),
        )

        RigModule.isolate_align(
            self.mid_ctl,
            spaces=[self.mid_ctl.offset.offset, mid_loc],
            cstType="par",
            attrName="alignSpine",
            dv=1,
        )

    def build_ribbon(self):
        """Build the ribbon for the spine rig."""
        rID, rSz, xDr = self.getMyVar()

        self.rbSrf = SrfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=1,
            snap=self.rootJ,
            spans=self.fkJntNum - 1,
            p=self.RIG_DATA,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.jnts_ctl = self.build_ctl_jnt(
            [self.hip_ctl, self.mid_ctl, self.chest_ctl], r=rSz * 10
        )

        self.rbSrf.weightTo(self.jnts_ctl, chain=0, mi=2, dr=6)
        self.hip_ctl.a.add("tangent", min=0, dv=1) >> self.jnts_ctl[0].a.sy
        self.chest_ctl.a.add("tangent", min=0, dv=1) >> self.jnts_ctl[2].a.sy

        self.setting.a.add("stretchy", min=0, max=1, dv=1)
        crvLenRatio, self.jnts_rb = self.build_motionPath_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.rbnJntNum,
            scaleAttr=self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
        )
        self.jnts_bind = self.jnts_rb

        self.volume_setup()

    def volume_setup(self):
        """Setup volume squash/stretch for the spine rig."""
        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf)
        d = arcLD.a.arcLengthInV
        D = d.get()

        volumePreserve = self.setting.a.add("volumePreserve", min=0, dv=1)
        self.chest_ctl.a.add("volumePreserve", proxy=volumePreserve)
        self.hip_ctl.a.add("volumePreserve", proxy=volumePreserve)

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

            ratio = (scaleFix * D / d) ** (fc.a.varying * volumePreserve)
            ratio >> self.jnts_rb[i].a.sy
            ratio >> self.jnts_rb[i].a.sz

    def setup_vis(self):
        """Setup visibility toggles for the spine rig controls."""
        # self.ctl_vis_toggle(
        #     self.setting.a.add("fkCtls", attrType="bool", dv=1, k=0),
        #     onList=self.ctls_fk,
        # )
        self.ctl_vis_toggle(
            self.setting.a.add("ikCtls", attrType="bool", dv=1, k=0),
            onList=self.ctls_ik,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("setupJnts", attrType="bool", dv=0, k=0),
            onList=self.jnts_ctl + self.jnts_fk,  # + self.jnts_rb,
        )

    def setup_channel(self):
        """Setup channel attributes for the spine rig controls."""
        self.setting.a.showAttr()
        for ctl in [
            self.cog_ctl,
            self.cog_gmb,
            self.hip_ctl,
            self.mid_ctl,
            self.chest_ctl,
        ] + self.ctls_fk:
            ctl.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the spine rig controls."""
        for ctl in self.ctls_fk + self.ctls_ik + [self.cog_ctl, self.cog_gmb]:
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
        anchorM2Tgt = self.jnts_rb[-1] if self.rbnBones else self.chest_ctl
        self.setup_anchor_module({"anchorM1": self.hip_ctl, "anchorM2": anchorM2Tgt})

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_proxy_radiusScale(self.jnts_bind, 4)
        self.add_proxy_height(
            self.jnts_bind, CrvNode(self.LINE_GUIDE).length / self.rbnJntNum
        )

    def setup_ctlSet(self):
        """Setup control sets for the spine rig."""
        self.add_ctl_set(
            self.ctls_fk + self.ctls_ik + [self.setting, self.cog_ctl, self.cog_gmb]
        )

    def setup_scale(self):
        """Setup scale attributes for the spine rig."""
        self.masterC.a.globalScale >> self.SKL_DATA.a.s
        for ctl in self.ctls_fk:
            self.cog_ctl.a.s >> ctl.offset.a.s

    def build_post(self):
        """Post setup for the spine rig."""
        logging.info(self.rigID)

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
