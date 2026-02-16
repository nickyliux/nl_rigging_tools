import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color
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
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)

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
        self.jnts_ik = []
        self.jnts_rb = []
        self.jnts_spIk = []
        self.jnts_twoIk = []

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
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        ctl_defs = [
            ("setting", "screw_nut", "z", rSz * 2, 0),
            ("cog_ctl", "trapezoid2", None, rSz, 0),
            ("fore_ikc", "octagon_3d", None, Vec((8, 8, 0.5)) * rSz, 0),
            ("mid_ikc", "squareR", "z", rSz * 4, 0),
            ("base_ikc", "octagon_3d", None, Vec((8, 8, 0.5)) * rSz, 0),
            ("tangent0_ctl", "arrow", None, rSz, 1),
            ("tangent1_ctl", "arrow", None, rSz, 1),
            ("end_ctl", "rotate2_3d", None, rSz * 2, 0),
        ]
        for name, shape, up, scale, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, scale, top)

        self.cog_ctl.cv_move(0, rSz * 40, 0)
        self.cog_ctl.cv_scale(1, 1.5, 2)
        self.setting.cv_move(0, rSz * 30, 0)
        self.setting.color = Color.PINK
        self.tangent0_ctl.cv_rotate(0, 180, 90)
        self.tangent1_ctl.cv_rotate(0, 0, 90)
        self.end_ctl.cv_rotate(0, 90, 0)

    def create_rbSrf(self):
        """Create the ribbon surface for the spine rig."""
        return SrfNode.buildRbSrf(
            pf=self.rigID,
            crv=self.LINE_GUIDE,
            spans=2,
            snap=self.RT_GUIDE,
            p=self.CTL_DATA,
            inheritsXf=0,
        )

    def build(self):
        """Build the spine rig."""
        self.build_pre_module()

        mc.delete(self.rootJ)
        self.rigSize = CrvNode(self.LINE_GUIDE).length / 100

        self.rbSrf = self.create_rbSrf()
        self.rbSrfSk = self.create_rbSrf()

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
        self.rbSrf.weightTo(self.jnts_ik, mi=1, chain=0)

        crvLenRatioSk, self.jnts_spIk, self.jnts_rb = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            rbSrfSk=self.rbSrfSk,
            jntNum=self.rbnJntNum,
            setting=self.setting,
        )
        self.rbSrfSk.weightTo(self.jnts_spIk, mi=1, chain=0)

        self.build_twoJ_ik(crvLenRatioSk)
        self.build_volume(crvLenRatioSk)

        self.jnts_bind.extend(self.jnts_rb)

        self.setting.snapTo(self.jnts_rb[0], p=self.IK_GRP)
        self.jnts_rb[0].cstPar(self.setting, mo=1)

        self.fore_ikc.add_attr_as_proxy(self.setting)
        self.base_ikc.add_attr_as_proxy(self.setting)

    def build_ik(self):
        """Build the IK controls for the spine rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        # Build 3 ik joints from crv
        self.jnts_ik = JntNode.createJntsFrCrv(
            self.LINE_GUIDE, num=3, name="ikj", pf=rID, size=rSz * 10, chain=0
        )
        ikj0, ikj1, ikj2 = self.jnts_ik

        self.cog_ctl.snapTo(self.RT_GUIDE)
        if self.BASE_PVT_GUIDE:
            self.base_ikc.alignTo(self.BASE_PVT_GUIDE)
        else:
            self.base_ikc.snapTo(ikj0)

        self.mid_ikc.alignTo(ikj1)
        if self.CHEST_PVT_GUIDE:
            self.fore_ikc.alignTo(self.CHEST_PVT_GUIDE)
        else:
            self.fore_ikc.snapTo(ikj2)

        self.tangent0_ctl.alignTo(ikj0)
        self.tangent1_ctl.alignTo(ikj2)

        ikj0 | self.tangent0_ctl | self.base_ikc | self.cog_ctl
        ikj1 | self.mid_ikc | self.cog_ctl
        ikj2 | self.tangent1_ctl | self.fore_ikc | self.cog_ctl
        self.cog_ctl | self.IK_GRP

        self.ctls_ik = [
            self.base_ikc,
            self.mid_ikc,
            self.fore_ikc,
            self.tangent0_ctl,
            self.tangent1_ctl,
        ]

        [ctl.addOffsetGrp() for ctl in self.ctls_ik]
        self.mid_ikc.addOffsetGrp()

        RigModule.add_dyn_pivot(self.cog_ctl, axis="ty", dv=0.2)
        RigModule.add_dyn_pivot(self.cog_ctl, endTgt=self.TP_GUIDE, axis="tz", dv=0.5)

    def build_spik_ribbon(
        self, rbSrf=None, rbSrfSk=None, jntNum=5, setting=None, scaleAttr=None
    ):
        """Build a spine IK ribbon."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Create ribbon curve and joints ---
        self.rbCrv = CrvNode(mc.duplicateCurve(f"{rbSrf}.u[0.5]", rn=0, local=0)[0])
        self.rbCrv.a.inheritsTransform.set(0)
        self.rbCrvSk = CrvNode(mc.duplicateCurve(f"{rbSrfSk}.u[0.5]", rn=0, local=0)[0])
        self.rbCrvSk.a.inheritsTransform.set(0)
        (self.rbCrv, self.rbCrvSk) | self.CTL_DATA

        self.rigNode.setMsg({"rbCrv": self.rbCrv, "rbCrvSk": self.rbCrvSk})

        jntsFrCrv = JntNode.createJntsFrCrv(
            self.rbCrv, pf=rID, name="spikj", num=jntNum, size=rSz, p=self.CTL_DATA
        )
        jntsFrCrv[0].a.inheritsTransform.set(0)

        global_scale = self.masterC.a.globalScale
        ik_handle = IkNode(
            "sp",
            pf=rID,
            sj=jntsFrCrv[0],
            ee=jntsFrCrv[-1],
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
            # Decompose matrix and get position on surface
            dcpm = DagNode("dcpm_#", nodeType="decomposeMatrix")
            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
            grp = GrpNode(f"{i}_rbj_grp", pf=rID, p=loc_grp)

            jntsFrCrv[i].a.worldMatrix >> dcpm.a.inputMatrix
            dcpm.a.outputTranslate >> cpos.a.inPosition
            rbSrf.shape.a.worldSpace >> cpos.a.inputSurface
            cpos.a.parameterU >> posi.a.parameterU
            cpos.a.parameterV >> posi.a.parameterV

            # Aim constraint for orientation
            aim_cst = DagNode("aimCst_#", nodeType="aimConstraint")
            aim_cst | self.CTL_DATA
            rbSrf.shape.a.worldSpace >> posi.a.inputSurface
            mc.connectAttr(f"{posi}.tangentV", f"{aim_cst}.target[0].targetTranslate")
            posi.a.turnOnPercentage.set(1)
            posi.a.tangentU >> aim_cst.a.worldUpVector
            posi.a.position >> grp.a.translate

            aim_cst.a.constraintRotateX >> grp.a.rx
            aim_cst.a.constraintRotateY >> grp.a.ry
            aim_cst.a.constraintRotateZ >> grp.a.rz

            # Create joint at group
            rad = rSz / jntNum * 15
            jnt = JntNode(f"{i}_rbj", pf=rID, align=grp, r=rad, p=grp, reset=1)
            rb_jnts.append(jnt)
            self.masterC.a.globalScale >> grp.a.s

        # --- Anchor and end joint setup ---
        self.anchorToRbj = LocNode(
            "anchorToRbj", pf=rID, snap=rb_jnts[-1], p=self.fore_ikc
        )
        rb_jnts[-1].cstPoi(self.anchorToRbj)
        self.end_ctl.alignTo(self.RT_GUIDE, p=self.base_ikc, addOfs=1)
        self.end_ctl.cstOri(rb_jnts[0], mo=1)

        ik_handle.hide()
        return crv_len_ratio_sk, jntsFrCrv, rb_jnts

    def build_twoJ_ik(self, crvLenRatio):
        """Build a two-joint IK system for the spine rig."""
        rID, rSz, xDr = self.getMyVar()

        # --- Build two-joint chain from curve ---
        self.jnts_twoIk = JntNode.makeTwoJointChain(
            "two_ikj",
            pf=rID,
            align=self.RT_GUIDE,
            align_end=self.TP_GUIDE,
            rad=rSz * 5,
            p=self.base_ikc,
        )
        j0, j1 = self.jnts_twoIk

        # --- Create hidden IK handle and constrain end joint ---
        IkNode("two_ikj", pf=rID, sj=j0, ee=j1, vis=0, p=self.tangent1_ctl)

        # (
        #     ut.clp_(
        #         crvLenRatio,
        #         min=self.setting.a["stretchMin"],
        #         max=self.setting.a["stretchMax"],
        #     )
        #     >> j0.a.sz
        # )
        crvLenRatio >> j0.a.sz

        self.fore_ikc.a.r >> j1.a.r
        self.mid_ikc.addOffsetGrp()

        if not self.is_neck():
            common.cstMulti(
                self.fore_ikc, self.base_ikc, self.mid_ikc.offset, cstType="par", mo=1
            )
        else:
            common.cstMulti(
                self.fore_ikc, self.base_ikc, self.mid_ikc.offset, cstType="poi", mo=1
            )
            self.fore_ikc.cstAim(
                self.mid_ikc.offset,
                aim=(0, 0, 1),
                worldUpType="objectrotation",
                worldUpObject=self.cog_ctl,
            )

    def build_volume(self, crvLenRatio):
        """Build volume control for the spine rig."""
        # add volume graph keys
        autoVol = self.setting.a.add("autoVol", min=0, dv=0.5)
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
        attr = self.base_ikc.a.add("showTangent", type="bool", k=0, dv=1)
        attr >> self.tangent0_ctl.a.v
        attr = self.fore_ikc.a.add("showTangent", type="bool", k=0, dv=1)
        attr >> self.tangent1_ctl.a.v

        setupTgt = self.jnts_ik + [self.jnts_spIk[0], self.jnts_twoIk[0]]
        self.ctl_vis_toggle(
            self.setting.a.add("showSetup", type="bool", k=0, dv=1),
            onList=setupTgt + [self.rbSrf, self.rbCrv, self.rbSrfSk, self.rbCrvSk],
        )

        if self.is_neck():
            self.cog_ctl.shape.hide()

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
        self.cog_ctl.a.showAttr(t=not self.is_neck(), r=1)
        self.tangent0_ctl.a.showAttr("sz", r=1)
        self.tangent1_ctl.a.showAttr("sz", r=1)
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
                "space_bodyBase": self.base_ikc,
            }
        )

    def is_neck(self):
        """Check if the rig is a neck rig."""
        return self.__class__.__name__ == "NeckQd"

    def setup_ctlSets(self):
        """Setup control sets for the spine rig."""
        ctls = self.ctls_ik + [self.cog_ctl, self.setting, self.end_ctl]
        self.add_ctl_set(ctls)

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_bind_sk_set(self.jnts_bind[0])

        if not self.is_neck():
            proxy.add_radiusScale_attr(self.jnts_bind, 2)

    def build_post(self):
        """Post setup for the spine rig."""
        logging.info(self.rigID)

        self.setup_bindJnt()
        self.setup_ctlSets()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
