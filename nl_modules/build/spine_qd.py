import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec


class SpineQd(RigModule):
    """Quadruped spine rig module."""

    def __init__(self, rigNode):
        super().__init__(rigNode)
        guide_attrs = ["rbnJntNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        self.LINE_GUIDE = CrvNode(f"{self.rigID}_line_guide")
        self.TP_GUIDE = DagNode(f"{self.rigID}_tp_guide")
        self.MD_GUIDE = DagNode(f"{self.rigID}_md_guide")
        self.RT_GUIDE = DagNode(f"{self.rigID}_rt_guide")
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)

        guide = DagNode(f"{self.rigID}_cog_pivot_guide")
        self.COG_PVT_GUIDE = guide if guide.exists() else None
        guide = DagNode(f"{self.rigID}_chest_pivot_guide")
        self.CHEST_PVT_GUIDE = guide if guide.exists() else None
        guide = DagNode(f"{self.rigID}_base_pivot_guide")
        self.BASE_PVT_GUIDE = guide if guide.exists() else None

        self.setting = None
        self.cog_ctl = None
        self.fore_ikc = None
        self.mid_ikc = None
        self.base_ikc = None
        self.tangent0_ctl = None
        self.tangent1_ctl = None
        self.end_ctl = None

        self.ctls_fk = []
        self.ctls_ik = []
        self.jnts_fk = []
        self.jnts_ctl = []
        self.jnts_rb = []
        self.jnts_spIk = []

        self.rbSrf = None
        self.rbSrfSk = None
        self.rbCrv = None
        self.rbCrvSk = None
        self.anchorToRbj = None

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
        logging.info(".")
        rID, rSz, xDr = self.getMyVar()

        ctl_defs = [
            ("setting", "screw_nut", "z", rSz, 1),
            ("cog_ctl", "cog_qd", None, rSz * 1.5, 0),
            ("fore_ikc", "back", None, Vec((5, 5, 0.2)) * rSz, 0),
            ("mid_ikc", "circle", "z", rSz * 2.5, 0),
            ("base_ikc", "back", None, Vec((5, 5, 0.2)) * rSz, 0),
            ("tangent0_ctl", "cube", None, Vec((0.3, 0.3, 3)) * rSz, 1),
            ("tangent1_ctl", "cube", None, Vec((0.3, 0.3, 3)) * rSz, 1),
            ("end_ctl", "rotate2_3d", None, Vec((1, 1, 0.7)) * rSz, 0),
            ("cog_upr_ctl", "rotate", None, rSz * 1.5, 0),
            ("cog_lwr_ctl", "rotate", None, rSz * 1.5, 0),
        ]

        for name, shape, up, scale, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, scale, top)

        self.cog_ctl.cv_move(0, rSz * 60, 0)
        self.cog_upr_ctl.cv_rotate(150, 0, 0)
        self.cog_upr_ctl.cv_move(0, rSz * 90, 0)
        self.cog_lwr_ctl.cv_rotate(-30, 0, 0)
        self.cog_lwr_ctl.cv_move(0, rSz * 30, 0)
        self.end_ctl.cv_move(0, 0, rSz * -10)

        self.tangent0_ctl.cv_rotate(0, 90, 0)
        self.tangent1_ctl.cv_rotate(0, 90, 0)
        self.setting.cv_move(0, rSz * 70, 0)
        self.fore_ikc.cv_move(0, rSz * 20, 0)

    def build(self):
        """Build the spine rig."""
        self.build_pre_module()
        mc.delete(self.rootJ)
        self.rigSize = CrvNode(self.LINE_GUIDE).length / 100

        self.rbSrf = self.create_rbSrf(span=2, crv=self.LINE_GUIDE, snap=self.RT_GUIDE)
        self.rbSrfSk = self.create_rbSrf(
            span=2, crv=self.LINE_GUIDE, snap=self.RT_GUIDE
        )

        # Rebuild the ribbon surface to have the correct number of spans for joint attachment.
        mc.rebuildSurface(
            self.rbSrfSk, rt=0, end=1, kr=0, kcp=0, kc=0, su=0, sv=self.rbnJntNum - 1
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf, "rbSrfSk": self.rbSrfSk})

        self.build_ctl()
        self.build_ik()
        self.build_ribbon()
        self.build_post()

    def build_ribbon(self):
        """Create the ribbon for the spine rig."""
        self.rbSrf.weightTo(self.jnts_ctl, mi=1, chain=0)

        crvLenRatioSk, self.jnts_spIk, self.jnts_rb = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            rbSrfSk=self.rbSrfSk,
            jntNum=self.rbnJntNum,
            setting=self.setting,
        )
        self.rbSrfSk.weightTo(self.jnts_spIk, mi=1)  # , chain=0)

        self.midCtl_setup()
        self.build_volume(crvLenRatioSk)
        self.setting.snapTo(self.base_ikc, p=self.base_ikc)

        self.fore_ikc.addAttrFrom(self.setting)
        self.base_ikc.addAttrFrom(self.setting)
        self.jnts_bind.extend(self.jnts_rb)

    def build_ik(self):
        """Build the IK controls for the spine rig."""
        logging.info(".")
        rID, rSz, xDr = self.getMyVar()

        # Build 3 ctl joints from crv
        self.jnts_ctl = JntNode.createJntsFrCrv(
            self.LINE_GUIDE, num=3, name="ikj", pf=rID, size=rSz * 10, chain=0
        )
        ctlJ0, ctlJ1, ctlJ2 = self.jnts_ctl

        if self.COG_PVT_GUIDE:
            self.cog_ctl.alignTo(self.COG_PVT_GUIDE)
        else:
            self.cog_ctl.alignTo(ctlJ1)

        if self.BASE_PVT_GUIDE:
            self.base_ikc.alignTo(self.BASE_PVT_GUIDE)
            self.tangent0_ctl.alignTo(self.BASE_PVT_GUIDE)
            self.cog_lwr_ctl.alignTo(self.BASE_PVT_GUIDE)
        else:
            self.base_ikc.snapTo(ctlJ0)
            self.tangent0_ctl.snapTo(ctlJ0)
            self.base_ikc.alignTo(ctlJ0)
            self.tangent0_ctl.alignTo(ctlJ0)
            self.cog_lwr_ctl.alignTo(ctlJ0)

        self.mid_ikc.snapTo(ctlJ1)

        if self.CHEST_PVT_GUIDE:
            self.fore_ikc.alignTo(self.CHEST_PVT_GUIDE)
            self.tangent1_ctl.alignTo(self.CHEST_PVT_GUIDE)
            self.cog_upr_ctl.alignTo(self.CHEST_PVT_GUIDE)
        else:
            self.fore_ikc.snapTo(ctlJ2)
            self.tangent1_ctl.snapTo(ctlJ2)
            self.fore_ikc.alignTo(ctlJ2)
            self.tangent1_ctl.alignTo(ctlJ2)
            self.cog_upr_ctl.alignTo(ctlJ2)

        self.cog_ctl | self.IK_GRP
        self.cog_ctl.addOffsetGrp()

        ctlJ0 | self.tangent0_ctl | self.base_ikc
        ctlJ1 | self.mid_ikc
        ctlJ2 | self.tangent1_ctl | self.fore_ikc

        self.cog_upr_ctl | self.cog_lwr_ctl | self.cog_ctl
        (self.base_ikc, self.mid_ikc, self.fore_ikc) | self.cog_upr_ctl
        self.cog_upr_ctl.addOffsetGrp()
        self.cog_lwr_ctl.addOffsetGrp()
        # (self.base_ikc, self.mid_ikc, self.fore_ikc) | self.cog_ctl

        self.tangent0_ctl.a.add("tangent", k=1, min=0.01, dv=1) >> ctlJ0.a.s
        self.tangent1_ctl.a.add("tangent", k=1, min=0.01, dv=1) >> ctlJ2.a.s

        self.ctls_ik = [
            self.base_ikc,
            self.mid_ikc,
            self.fore_ikc,
            self.tangent0_ctl,
            self.tangent1_ctl,
        ]

        [ctl.addOffsetGrp() for ctl in self.ctls_ik]
        self.mid_ikc.addOffsetGrp()

        # if self.is_spine():
        #     RigModule.dyn_pivot(self.cog_ctl, axis="ty", dv=0.2)
        #     RigModule.dyn_pivot(self.cog_ctl, endTgt=self.TP_GUIDE, axis="tz", dv=0.5)

    def build_spik_ribbon(
        self, rbSrf=None, rbSrfSk=None, jntNum=5, setting=None, scaleAttr=None
    ):
        """Build a spine IK ribbon."""
        logging.info(".")
        rID, rSz, xDr = self.getMyVar()

        # --- Create ribbon curve and joints ---
        self.rbCrv = CrvNode(mc.duplicateCurve(f"{rbSrf}.u[0.5]", rn=0, local=0)[0])
        self.rbCrv.a.inheritsTransform.set(0)
        self.rbCrvSk = CrvNode(mc.duplicateCurve(f"{rbSrfSk}.u[0.5]", rn=0, local=0)[0])
        self.rbCrvSk.a.inheritsTransform.set(0)
        (self.rbCrv, self.rbCrvSk) | self.CTL_DATA

        self.rigNode.setMsg({"rbCrv": self.rbCrv, "rbCrvSk": self.rbCrvSk})

        spIkJnts = JntNode.createJntsFrCrv(
            self.rbCrv, pf=rID, name="spikj", num=jntNum, size=rSz, p=self.CTL_DATA
        )
        spIkJnts[0].a.inheritsTransform.set(0)

        global_scale = self.masterC.a.globalScale
        ik_handle = IkNode(
            "sp",
            pf=rID,
            sj=spIkJnts[0],
            ee=spIkJnts[-1],
            solver=Solver.SPLINE,
            createCrv=0,
            inputCrv=self.rbCrv,
            setting=setting,
            scaleFix=global_scale,
            scaleFix2=None,
            scaleFix3=self.masterC2.a.sy,
            p=self.CTL_DATA,
        )
        crv_len_ratio = ik_handle.setup_ratio()
        crv_len_ratio_sk = ik_handle.setup_ratio(crv=self.rbCrvSk)

        ik_handle.stretchySp(ratio=crv_len_ratio, axis="tz", axisDir=1)

        # --- Create joint groups and constraints ---
        loc_grp = GrpNode("loc_grp", pf=rID, p=self.JNT_DATA)
        rb_jnts = []
        for i in range(jntNum):
            grp = GrpNode(f"{i}_rbj_grp", pf=rID, p=loc_grp)
            # spIkJnts[i].cstPoi(grp)
            spIkJnts[i].cstPoiMtx(grp)

            common.setTwistFromRibbon(
                tgt=spIkJnts[i], srf=rbSrf, out=grp, p=self.CTL_DATA
            )
            jnt = JntNode(f"{i}_rbj", pf=rID, align=grp, r=rSz * 2, p=grp, reset=1)
            rb_jnts.append(jnt)
            self.masterC.a.globalScale >> grp.a.s

            # Add fixPosition, mainly for stable world space positioning of the head
            if i == jntNum - 1:
                grp.a.t.disconnect()
                grp.a.r.disconnect()
                self.tangent1_ctl.cstOri(grp, mo=1)
                fixPos = self.fore_ikc.a.add("fixPos", k=1, min=0, max=1)
                common.cstMulti(
                    spIkJnts[jntNum - 1],
                    self.jnts_ctl[2],
                    grp,
                    cstType="poi",
                    mo=1,
                    w=fixPos,
                )

        # --- Anchor and end joint setup ---
        self.anchorToRbj = LocNode(
            "anchorToRbj", pf=rID, snap=rb_jnts[-1], p=self.fore_ikc
        )
        rb_jnts[-1].cstPoi(self.anchorToRbj)

        self.end_ctl.snapTo(self.RT_GUIDE, p=self.tangent0_ctl, addOfs=1)
        self.end_ctl.cstOri(rb_jnts[0], mo=1)

        ik_handle.hide()
        return crv_len_ratio_sk, spIkJnts, rb_jnts

    def dist_len_ratio(self, jnt0, jnt1):
        """Calculate the distance length ratio between two joints."""
        d = ut.distDim_(jnt0, jnt1)
        D = d.get()
        return d / D / self.masterC.a.globalScale

    def midCtl_setup(self):
        """Setup the mid IK control for the spine rig."""
        rID, rSz, xDr = self.getMyVar()
        loc1 = LocNode("loc_#", pf=rID, align=self.mid_ikc, p=self.fore_ikc, vis=0)
        loc2 = LocNode("loc_#", pf=rID, align=self.mid_ikc, p=self.base_ikc, vis=0)
        common.cstMulti(loc1, loc2, self.mid_ikc.offset, cstType="par", mo=1)

    def build_volume(self, crvLenRatio):
        """Build volume control for the spine rig."""
        # add volume graph keys
        autoVol = self.setting.a.add("autoVol", min=0, dv=1)
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.rbnJntNum - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.rbnJntNum - 1, v=0)
        volGraph.lock = 1

        # set rbj scale acc to surf length
        for i in range(self.rbnJntNum):
            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)
            ratio = (1 / crvLenRatio) ** (fc.a.varying * autoVol)
            ratio >> self.jnts_rb[i].a.sy
            ratio >> self.jnts_rb[i].a.sz

    def setup_vis(self):
        """Setup visibility toggles for the spine rig controls."""
        setupTgt = self.jnts_ctl
        if self.jnts_spIk:
            setupTgt.append(self.jnts_spIk[0])

        mc.hide(setupTgt)
        # self.ctl_vis_toggle(
        #     self.setting.a.add("showSetup", type="bool", k=0),  # , dv=1),
        #     onList=setupTgt + [self.rbSrf, self.rbCrv, self.rbSrfSk, self.rbCrvSk],
        # )
        mc.hide(self.rbSrf, self.rbCrv, self.rbSrfSk, self.rbCrvSk)

    def setup_rotate_order(self):
        """Setup rotate order for the spine rig controls."""
        for ctl in [
            self.fore_ikc,
            self.mid_ikc,
            self.base_ikc,
            self.cog_ctl,
            self.end_ctl,
        ]:
            ctl.a.ro.set(3)

    def setup_channel(self):
        """Setup channel attributes for the spine rig controls."""
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ctls_ik]

        self.setting.a.showAttr()
        [
            ctl.a.showAttr(t=1, r=1)
            for ctl in [
                self.cog_ctl,
                self.tangent0_ctl,
                self.tangent1_ctl,
                self.cog_lwr_ctl,
                self.cog_upr_ctl,
            ]
        ]
        self.end_ctl.a.showAttr(r=1)

    def setup_anchor(self):
        """Setup anchor points for the spine rig controls."""
        if self.jnts_rb:
            anchor = self.jnts_rb[0]
            self.setup_anchor_module({"anchorP1": anchor})

        if self.anchorToRbj:
            self.setup_anchor_module({"anchorP2": self.anchorToRbj})

    def setup_space(self):
        """Setup space switching for the spine rig controls."""
        self.rigNode.setMsg(
            {
                "space_master": self.masterC,
                "space_COG": self.cog_ctl,
                "space_chest": self.fore_ikc,
                "space_pelvis": self.base_ikc,
            }
        )

    def setup_ctlSets(self):
        """Setup control sets for the spine rig."""
        ctls = self.ctls_ik + [
            self.cog_ctl,
            self.setting,
            self.cog_lwr_ctl,
            self.cog_upr_ctl,
            self.end_ctl,
        ]
        self.add_ctl_set(ctls)

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""
        if self.jnts_bind:
            self.add_bind_jnt_set(self.jnts_bind)
            self.add_bind_sk_set([self.jnts_bind[0]])

    def build_post(self):
        """Post setup for the spine rig."""
        logging.info(".")

        self.setup_bindJnt()
        self.setup_ctlSets()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
