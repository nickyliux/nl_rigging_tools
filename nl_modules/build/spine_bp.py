import logging
from secrets import choice
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec
from nl_modules.utils.color import Color

from enum import Enum


class SpineType(Enum):
    BASIC = 0
    RIBBON = 1


class SpineBp(RigModule):
    """Spine rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the SpineBp rig module."""
        super().__init__(rigNode)

        # Guide attributes
        for attr in (
            "spineType",
            "fkJntNum",
            "rbnJntNum",
        ):
            setattr(self, attr, self.get_guide_attr(attr))

        # Guide nodes
        self.LINE_GUIDE = DagNode(f"{self.rigID}_line_guide")
        self.MD_GUIDE = DagNode(f"{self.rigID}_md_guide")

        # Main settings and controls
        self.setting = None
        self.cog_ctl = None
        self.hip_ikc = None
        self.mid_ikc = None
        self.cog_gmb = None
        self.chest_ikc = None

        # Control and joint lists
        self.ctls_ik = []
        self.ctls_fk = []
        self.jnts_five = []
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
        self.rootJ | self.JNT_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build_ctl(self):
        """Build control nodes for the spine rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        ctl_defs = [
            ("setting", "gear", "z", rSz * 2, 1, -1),
            ("cog_ctl", "cog", None, rSz * 7, 0, -1),
        ]
        if self.is_ribbon():
            ctl_defs += [
                ("chest_ikc", "chest", None, rSz * 5, 0, -1),
                ("mid_ikc", "sphere", None, rSz * 3, 1, -1),
                ("hip_ikc", "hip", None, rSz * 5, 0, -1),
                #  (rSz * 2, rSz, rSz * 2)
            ]
        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.setting.cv_move(0, -rSz * 15, 0)

    def is_ribbon(self):
        """Check if the spine rig is of ribbon type."""
        return self.spineType == SpineType.RIBBON.value

    def build(self):
        """Build the spine rig module."""
        self.build_pre_module()
        self.rigSize = CrvNode(self.LINE_GUIDE).length / 100
        self.build_ctl()
        self.build_fk()

        if self.is_ribbon():
            self.build_spine_ik()

        self.setting.snapTo(self.jnts_fk[0], p=self.CTL_DATA)
        # , ofs=(self.rigSize * 100, 0, 0)
        self.jnts_fk[0].cstPar(self.setting, mo=1)

        self.build_post()

    def build_fk(self):
        """Build the FK controls and joints for the spine rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.jnts_fk = JntNode.createJntsFrCrv(
            self.LINE_GUIDE,
            num=self.fkJntNum,
            pf=rID,
            aimV=(0, 1, 0),
            size=rSz * 2,
            p=self.JNT_DATA,
            # color=Color.D_RED,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.jnts_fk[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        self.ctls_fk = []
        for i, j in enumerate(self.jnts_fk[:-1]):
            c = CrvNode(f"{i + 1}_fkc", pf=rID, shape="squareR", scale=rSz * 5)
            self.ctls_fk.append(c)

        if self.is_neck():
            self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.CTL_DATA)
        else:
            self.build_fk_with_ctl2(self.jnts_fk[1:], self.ctls_fk[1:], p=self.CTL_DATA)
            self.reverse_fk_hip()

        self.cog_ctl.snapAlignTo(self.jnts_fk[0], self.master_guide)
        self.cog_gmb = CrvNode(self.cog_ctl).add_gimbal()
        self.cog_ctl | self.CTL_DATA
        self.cog_ctl.addOffsetGrp()

        self.cog_gmb.cstPar(self.ctls_fk[0].offset, mo=1)
        if not self.is_neck():
            self.cog_gmb.cstPar(self.ctls_fk[1].offset, mo=1)

        self.cog_gmb.cstSca(self.jnts_fk[0])
        self.jnts_fk[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        self.jnts_bind = self.jnts_fk[:-1]

        if self.is_neck():
            self.isolate_align(
                self.ctls_fk[0],
                spaces=[self.ctls_fk[0].parent, self.masterC],
            )

    def reverse_fk_hip(self):
        """modify first fkc specific for hip rotation."""
        ctl = self.ctls_fk[0]
        ctl(p=self.CTL_DATA, addOfs=1, color=Color.BLUE, width=2)
        ctl.offset.snapAlignTo(self.jnts_fk[1], self.jnts_fk[0])
        ctl.cv_move(0, self.rigSize * -20, 0)
        ctl.cstPar(self.jnts_fk[0], mo=1)

    def build_spine_ik(self):
        """Build the IK controls for the spine rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.hip_ikc.snapAlignTo(self.jnts_fk[0], self.master_guide)
        self.mid_ikc.snapAlignTo(self.MD_GUIDE, self.master_guide)
        self.chest_ikc.snapAlignTo(self.jnts_fk[-1], self.master_guide)

        self.hip_ikc | self.ctls_fk[0]
        self.chest_ikc | self.ctls_fk[-1]

        mid_parent = self.ctls_fk[len(self.ctls_fk) // 2]
        self.mid_ikc | mid_parent
        self.hip_ikc.addOffsetGrp()
        self.mid_ikc.addOffsetGrp(count=3)
        self.chest_ikc.addOffsetGrp()

        self.chest_ikc.a.t @ self.hip_ikc.a.t >> self.mid_ikc.offset.offset.a.t
        # (-self.hip_ikc.a.ry / 2) @ self.chest_ikc.a.ry >> self.mid_ikc.offset.a.ry
        # (self.hip_ikc.a.ry / 2) @ self.chest_ikc.a.ry >> self.mid_ikc.offset.a.ry
        # self.hip_ikc.a.ry @ self.chest_ikc.a.ry >> self.mid_ikc.offset.a.ry
        twistRatio_dv = 0.25 if self.is_neck() else 0.75
        twistRatio = self.mid_ikc.a.add("twistRatio", min=0, max=1, dv=twistRatio_dv)

        blendRy = ut.blend2_(self.hip_ikc.a.ry, self.chest_ikc.a.ry, w=twistRatio)
        blendRy >> self.mid_ikc.offset.a.ry

        self.hip_ikc.cstAim(
            self.mid_ikc.offset.offset,
            worldUpObject=self.cog_ctl,
            worldUpType="objectrotation",
            aim=(0, -1, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        self.chest_ikc.cstOri(self.jnts_fk[-1], mo=1)

        # self.chest_ikc.a.add("pvtOffset") >> pvt.a.ty
        self.build_ribbon()

        self.ctls_ik = [self.mid_ikc, self.chest_ikc]
        if not self.is_neck():
            self.ctls_ik += [self.hip_ikc]

        if not self.is_neck():
            RigModule.add_movable_pivot(self.chest_ikc, snap=self.ctls_fk[-1])

        self.addAutoBend()

    def addAutoBend(self):
        # Add neck auto bend
        autoBendLoc = LocNode(
            f"autoBend_loc", pf=self.rigID, align=self.mid_ikc, p=self.mid_ikc.parent
        )
        autoBendGrp = self.mid_ikc.addOffsetGrp()
        autoBend = self.mid_ikc.a.add("autoBend", min=0, max=1, dv=0.5)
        # self.chest_ikc.cstParT(autoBendLoc, mo=1)
        common.cstMulti(self.chest_ikc, self.hip_ikc, autoBendLoc, cstType="parT", mo=1)
        autoBendLoc.a.ty.disconnect()

        autoBendLoc.a.tx * autoBend >> autoBendGrp.a.tx
        autoBendLoc.a.tz * autoBend >> autoBendGrp.a.tz

        self.chest_ikc.a.add("autoBend", proxy=autoBend)
        self.hip_ikc.a.add("autoBend", proxy=autoBend)
        self.ctls_fk[0].a.add("autoBend", proxy=autoBend)

    def build_ribbon(self):
        """Build the ribbon for the spine rig."""
        rID, rSz, xDr = self.getMyVar()

        self.rbSrf = SrfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=-1,
            snap=self.rootJ,
            # spans=self.fkJntNum - 1,
            spans=self.fkJntNum + 1,
            p=self.CTL_DATA,
            inheritsXf=0,
        )
        self.jnts_five = self.build_fiveJnts(
            [self.hip_ikc, self.mid_ikc, self.chest_ikc], r=rSz * 5
        )
        self.rbSrf.weightTo(self.jnts_five, chain=0, mi=3, dr=5)

        self.jnts_five[1] | self.jnts_five[0]
        self.jnts_five[-2] | self.jnts_five[-1]
        self.hip_ikc.a.add("tangent", min=0.001, dv=1) >> self.jnts_five[0].a.sy
        self.mid_ikc.a.add("tangent", min=0.001, dv=1) >> self.jnts_five[2].a.sy
        self.chest_ikc.a.add("tangent", min=0.001, dv=1) >> self.jnts_five[-1].a.sy

        stretchy = self.setting.a.add("stretchy", min=0, max=1, dv=1)
        self.hip_ikc.a.add("stretchy", proxy=stretchy)
        self.chest_ikc.a.add("stretchy", proxy=stretchy)

        crvLenRatio, self.jnts_rb, crv = common.build_ribbon_rivet(
            rbSrf=self.rbSrf,
            rivetNum=self.rbnJntNum,
            scaleAttr=self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
            pf=rID,
            rSz=rSz,
            atMidOrEnd=1,
            p=self.CTL_DATA,
            JNT_DATA=self.JNT_DATA,
        )
        self.jnts_bind = self.jnts_rb
        self.rigNode.setMsg({"rbCrv": crv})
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_volume_setup()

    def build_volume_setup(self):
        """Setup volume squash/stretch for the spine rig."""
        scaleFix = self.masterC.a["globalScale"]

        # To get the correct arc length of the spine, get the V value from the posi node for the last ribbon jnt
        rivet_loc = self.jnts_rb[-1].parent
        posi = rivet_loc.a.tx.inConnNode

        arcLD = ut.arcLenDim_(self.rbSrf)
        posi.a.parameterV >> arcLD.a.vParamValue
        d = arcLD.a.arcLengthInV
        D = d.get()

        autoVol = self.setting.a.add("autoVol", min=0, dv=1)
        self.chest_ikc.a.add("autoVol", proxy=autoVol)
        self.hip_ikc.a.add("autoVol", proxy=autoVol)

        volGraph = common.addKeys(
            self.setting,
            "volGraph",
            [(0, 0), ((self.rbnJntNum - 1) / 2, 1), (self.rbnJntNum - 1, 0)],
        )
        common.setupFrameCache(
            graph=volGraph,
            joints=self.jnts_rb,
            base=D / (d / scaleFix),
            autoVol=autoVol,
        )

    def setup_vis(self):
        """Setup visibility toggles for the spine rig controls."""
        if self.is_ribbon():
            self.ctl_vis_toggle(
                self.setting.a.add("showSetup", type="bool", k=0),
                onList=[self.jnts_fk[0]] + self.jnts_five + [self.rbSrf],
            )

        if self.is_neck():
            CrvNode(self.ctls_fk[0]).setOnTop(1)
            mc.hide(self.cog_ctl, self.hip_ikc)

    def setup_channel(self):
        """Setup channel attributes for the spine rig controls."""
        self.setting.a.showAttr()

        ctls = self.ctls_fk + [
            self.cog_ctl,
            self.cog_gmb,
        ]
        if self.is_ribbon():
            for ctl in [self.hip_ikc, self.mid_ikc, self.chest_ikc]:
                ctl.a.showAttr(t=1, r=1, s=0)

        for ctl in ctls:
            ctl.a.showAttr(t=1, r=1)

        self.ctls_fk[0].a.showAttr(t=0, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the spine rig controls."""
        ctls = self.ctls_fk + [
            self.cog_ctl,
            self.cog_gmb,
        ]
        if self.is_ribbon():
            ctls += self.ctls_ik

        for ctl in ctls:
            ctl.a.ro.set(2)

    def setup_space(self):
        """Setup space switching for the spine rig controls."""
        self.rigNode.setMsg({"space_COG": self.cog_ctl})

        if self.is_ribbon():
            self.rigNode.setMsg(
                {
                    "space_lwrBody": self.hip_ikc,
                    "space_uprBody": self.chest_ikc,
                }
            )

    def setup_anchor(self):
        """Setup anchor module for the spine rig controls."""

        anchor1 = self.hip_ikc if self.is_ribbon() else self.jnts_fk[0]
        anchor2 = self.jnts_rb[-1] if self.is_ribbon() else self.jnts_fk[-1]
        self.setup_anchor_module({"anchorP1": anchor1, "anchorP2": anchor2})

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""
        self.add_bind_jnt_set(self.jnts_bind)
        if not self.is_neck():
            proxy.add_radiusScale_attr(self.jnts_bind, 2)

        if not self.is_ribbon():
            proxy.add_up_attr(self.jnts_bind, 1)

    def setup_ctlSet(self):
        """Setup control sets for the spine rig."""
        ctls = self.ctls_fk + [self.setting]
        if self.is_ribbon():
            ctls += self.ctls_ik
        if not self.is_neck():
            ctls += [self.cog_ctl, self.cog_gmb]
        self.add_ctl_set(ctls)

    def setup_scale(self):
        """Setup scale attributes for the spine rig."""
        self.masterC.a.globalScale >> self.JNT_DATA.a.s
        for ctl in self.ctls_fk:
            self.cog_ctl.a.s >> ctl.offset.a.s

    def is_neck(self):
        """Check if the rig is a neck rig."""
        return self.__class__.__name__ == "NeckBp"

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
