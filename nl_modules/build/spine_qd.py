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
    """Spine rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the SpineQd rig module."""
        super().__init__(rigNode)

        # Guide attributes
        guide_attrs = ["endCtl", "rbnJntNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        # Guide nodes
        self.LINE_GUIDE = CrvNode(f"{self.rigID}_line_guide")
        self.TP_GUIDE = DagNode(f"{self.rigID}_tp_guide")
        self.MD_GUIDE = DagNode(f"{self.rigID}_md_guide")
        self.RT_GUIDE = DagNode(f"{self.rigID}_rt_guide")
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        guide = DagNode(f"{self.rigID}_chest_pivot_guide")
        self.CHEST_PVT_GUIDE = guide if guide.exists() else None
        guide = DagNode(f"{self.rigID}_base_pivot_guide")
        self.BASE_PVT_GUIDE = guide if guide.exists() else None

        # guide = DagNode(f"{self.rigID}_end_jnt_guide")
        # self.END_JNT_GUIDE = guide if guide.exists() else None

        # Main settings and controls
        self.setting = None
        self.cog_ctl = None
        self.fore_ctl = None
        self.mid_ctl = None
        self.base_ctl = None
        self.tangent0_ctl = None
        self.tangent1_ctl = None
        self.end_ctl = None
        self.end_jnt = None

        # Control and joint lists
        self.ctls_fk = []
        self.ctls_ik = []
        self.jnts_fk = []
        self.jnts_ik = []
        self.jnts_rb = []
        self.jnts_spIk = []
        self.jnts_twoIk = []

        # Ribbon and anchor
        self.rbSrf = None
        self.rbCrv = None
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

        #   Define control shapes and attributes
        ctl_defs = [
            ("setting", "screw_nut", "z", rSz * 2, 0),
            ("cog_ctl", "trapezoid", None, rSz, 0),
            ("fore_ctl", "chest_qd", None, rSz * 4, 0),
            ("mid_ctl", "squareR", "z", rSz * 4, 0),
            ("base_ctl", "hip_qd", None, rSz * 4, 0),
            ("tangent0_ctl", "diamond_3d", None, rSz * 2, 1),
            ("tangent1_ctl", "diamond_3d", None, rSz * 2, 1),
        ]
        if self.endCtl:
            ctl_defs.append(("end_ctl", "rotate2_3d", None, rSz * 2, 0))
        for name, shape, up, scale, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, scale, top)

        self.cog_ctl.cv_move(0, rSz * 40, 0)
        self.cog_ctl.cv_scale(1, 1.5, 2)
        self.setting.cv_move(0, rSz * 30, 0)
        self.setting.color = Color.L_BLUE
        self.tangent0_ctl.cv_rotate(0, 90, 0)
        self.tangent1_ctl.cv_rotate(0, 90, 0)

        if self.end_ctl:
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

        # Create and register rbSrf
        self.rbSrf = self.create_rbSrf()
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_ik()
        self.build_ribbon()
        self.build_post()

    def build_ribbon(self):
        """Create the ribbon for the spine rig."""
        self.rbSrf.weightTo(self.jnts_ik, mi=1, chain=0)

        crvLenRatio, self.jnts_spIk, self.jnts_rb = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.rbnJntNum,
            setting=self.setting,
        )

        self.build_twoJ_ik()
        self.build_volume(crvLenRatio)
        self.jnts_bind.extend(self.jnts_rb)

        self.setting.snapTo(self.jnts_rb[0], p=self.IK_GRP)
        self.jnts_rb[0].cstPar(self.setting, mo=1)

        self.fore_ctl.add_attr_as_proxy(self.setting)
        self.base_ctl.add_attr_as_proxy(self.setting)

    def build_ik(self):
        """Build the IK controls for the spine rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        #
        #   build 3 ik joints from crv
        #
        self.jnts_ik = JntNode.createJntsFrCrv(
            self.LINE_GUIDE, num=3, name="ikj", pf=rID, size=rSz * 10, chain=0
        )
        ikj0, ikj1, ikj2 = self.jnts_ik

        # ikj2.a.r.set(0, 0, 0)

        # if self.is_neck():
        #     self.cog_ctl.alignTo(self.RT_GUIDE, addOfs=1)
        # else:
        self.cog_ctl.snapTo(self.RT_GUIDE)
        self.base_ctl.alignTo(self.BASE_PVT_GUIDE or ikj0)
        self.mid_ctl.alignTo(ikj1)
        self.fore_ctl.alignTo(self.CHEST_PVT_GUIDE or ikj2)
        self.tangent0_ctl.alignTo(ikj0)
        self.tangent1_ctl.alignTo(ikj2)

        ikj0 | self.tangent0_ctl | self.base_ctl | self.cog_ctl
        ikj1 | self.mid_ctl | self.cog_ctl
        ikj2 | self.tangent1_ctl | self.fore_ctl | self.cog_ctl
        self.cog_ctl | self.IK_GRP

        self.ctls_ik = [
            self.base_ctl,
            self.mid_ctl,
            self.fore_ctl,
            self.tangent0_ctl,
            self.tangent1_ctl,
        ]
        [ctl.addOffsetGrp() for ctl in self.ctls_ik]
        self.mid_ctl.addOffsetGrp()

        # RigModule.add_dyn_pivot(self.fore_ctl, endTgt=self.MD_GUIDE, axis="tz", dv=0.5)
        # RigModule.add_dyn_pivot(self.base_ctl, endTgt=self.MD_GUIDE, axis="tz", dv=0.5)
        RigModule.add_dyn_pivot(self.cog_ctl, axis="ty", dv=0.2)
        RigModule.add_dyn_pivot(self.cog_ctl, endTgt=self.TP_GUIDE, axis="tz", dv=0.5)

    def build_spik_ribbon(self, rbSrf=None, jntNum=5, setting=None, scaleAttr=None):
        """Build a spine IK ribbon."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Create ribbon curve and joints ---
        self.rbCrv = CrvNode(mc.duplicateCurve(f"{rbSrf}.u[0.5]", rn=0, local=0)[0])
        self.rbCrv.a.inheritsTransform.set(0)
        self.rbCrv | self.CTL_DATA

        self.rigNode.setMsg({"rbCrv": self.rbCrv})

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
        ik_handle.stretchySp(axis="tz", axisDir=1)

        # --- Calculate curve length ratio ---
        crv_info = DagNode("crvInfo#", nodeType="curveInfo")
        self.rbCrv.shape.a.worldSpace >> crv_info.a.inputCurve
        crv_len_ratio = (
            crv_info.a.arcLength / global_scale / scaleAttr / self.rbCrv.length
        )

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
            # , color=Color.RED
            rb_jnts.append(jnt)
            self.masterC.a.globalScale >> grp.a.s

        # --- Anchor and end joint setup ---
        self.anchorToRbj = LocNode(
            "anchorToRbj", pf=rID, snap=rb_jnts[-1], p=self.fore_ctl
        )
        rb_jnts[-1].cstPoi(self.anchorToRbj)

        if self.endCtl:
            self.end_jnt = JntNode(
                "end",
                pf=rID,
                r=rSz * 1.5,
                snap=self.RT_GUIDE,
                alignR=rb_jnts[0],
                p=self.IK_GRP,
            )
            self.end_ctl.alignTo(self.RT_GUIDE, p=self.base_ctl, addOfs=1)
            self.end_ctl.cstPar(self.end_jnt, mo=1)
            self.jnts_bind.append(self.end_jnt)

        ik_handle.hide()
        return crv_len_ratio, jntsFrCrv, rb_jnts

    def build_twoJ_ik(self):
        """Build a two-joint IK system for the spine rig."""
        rID, rSz, xDr = self.getMyVar()

        # --- Build two-joint chain from curve ---
        self.jnts_twoIk = JntNode.makeTwoJointChain(
            "two_ikj",
            pf=rID,
            align=self.RT_GUIDE,
            align_end=self.TP_GUIDE,
            rad=rSz * 5,
            p=self.base_ctl,
        )
        j0, j1 = self.jnts_twoIk

        # --- Create hidden IK handle and constrain end joint ---
        IkNode("two_ikj", pf=rID, sj=j0, ee=j1, vis=0, p=self.tangent1_ctl)
        j1.cstPoi(self.jnts_ik[2])

        # --- Control two-joint scale with distance and clamp ---
        d = ut.distDim_(self.tangent0_ctl, self.tangent1_ctl)
        crvLenRatio = d / d.get() / self.masterC.a.globalScale
        (
            ut.clp_(
                crvLenRatio,
                min=self.setting.a["stretchMin"],
                max=self.setting.a["stretchMax"],
            )
            >> j0.a.sz
        )

        # --- Constrain mid IK control rotation ---
        self.fore_ctl.a.r >> j1.a.r

        # twistRatio = self.mid_ctl.a.add("twistRatio", min=0, max=1, dv=0.5)
        # baseLoc = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.base_ctl, vis=0)
        # foreLoc = LocNode("loc#", pf=rID, align=self.mid_ctl, p=j1, vis=0)
        # tgt = self.mid_ctl.offset
        # common.cstMulti(foreLoc, baseLoc, tgt, cstType="parR", mo=1, w=twistRatio)
        # common.cstMulti(foreLoc, baseLoc, tgt, cstType="par", mo=1)
        # --- Use POI or parent constraint for mid control offset ---
        # if self.is_neck():
        #     # common.cstMulti(self.base_ctl, j1, self.mid_ctl.offset, cstType="poi", mo=1)
        #     common.cstMulti(
        #         self.base_ctl,
        #         j1,
        #         self.mid_ctl.offset,
        #         cstType="par",
        #         mo=1,
        #         w=twistRatio,
        #     )
        # else:
        #     loc0 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.base_ctl, vis=0)
        #     loc1 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=j1, vis=0)
        #     # common.cstMulti(loc0, loc1, self.mid_ctl.offset, cstType="parT", mo=1)
        #     common.cstMulti(
        #         loc0, loc1, self.mid_ctl.offset, cstType="par", mo=1, w=twistRatio
        #     )

        # --- Make mid control aim forward ---
        # j1.cstAim(
        #     self.mid_ctl.offset,
        #     aim=(0, 0, 1),
        #     worldUpType="objectrotation",
        #     worldUpObject=self.cog_ctl,
        # )

        # --- Drive mid control rz by average of fore and base controls ---
        # self.mid_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp()

        if not self.is_neck():
            common.cstMulti(
                self.fore_ctl, self.base_ctl, self.mid_ctl.offset, cstType="par", mo=1
            )
        else:
            common.cstMulti(
                self.fore_ctl, self.base_ctl, self.mid_ctl.offset, cstType="poi", mo=1
            )
            self.fore_ctl.cstAim(
                self.mid_ctl.offset,
                aim=(0, 0, 1),
                worldUpType="objectrotation",
                worldUpObject=self.cog_ctl,
            )
        # -(self.fore_ctl.a.rz @ self.base_ctl.a.rz) >> self.mid_ctl.offset.offset.a.rz
        # twistRatio_dv = 0.25 if self.is_neck() else 0.75
        # twistRatio = self.mid_ctl.a.add("twistRatio", min=0, max=1, dv=0.5)
        # blend = ut.blend2_(self.base_ctl.a.rz, self.fore_ctl.a.rz, w=twistRatio)
        # -blend >> self.mid_ctl.offset.a.rz

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
        attr = self.base_ctl.a.add("showTangent", type="bool", k=0)
        attr >> self.tangent0_ctl.a.v
        attr = self.fore_ctl.a.add("showTangent", type="bool", k=0)
        attr >> self.tangent1_ctl.a.v

        # self.setting.a.add("fkJntVis", type="bool", k=0) >> self.jnts_fk[0].a.v
        # ikJntVis = self.setting.a.add("ikJntVis", type="bool", k=0)
        # ikJntVis >> self.jnts_spIk[0].a.v
        # ikJntVis >> self.jnts_twoIk[0].a.v
        setupTgt = self.jnts_ik + [self.jnts_spIk[0], self.jnts_twoIk[0]]
        self.ctl_vis_toggle(
            self.setting.a.add("showSetup", type="bool", k=0),
            onList=setupTgt + [self.rbSrf, self.rbCrv],
        )
        # self.jnts_fk[0],
        # + [self.anchorToRbj],
        # + self.jnts_rb

        if self.is_neck():
            self.cog_ctl.shape.hide()
            # mc.hide(self.base_ctl.shape, self.tangent0_ctl.shape)

    def setup_rotate_order(self):
        """Setup rotate order for the spine rig controls."""
        [
            ctl.a.ro.set(3)
            for ctl in [self.fore_ctl, self.mid_ctl, self.base_ctl, self.cog_ctl]
        ]
        if self.endCtl:
            self.end_ctl.a.ro.set(3)

    def setup_channel(self):
        """Setup channel attributes for the spine rig controls."""
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ctls_ik]

        self.setting.a.showAttr()
        self.cog_ctl.a.showAttr(t=not self.is_neck(), r=1)
        self.tangent0_ctl.a.showAttr("sz", r=1)
        self.tangent1_ctl.a.showAttr("sz", r=1)

        if self.endCtl:
            self.end_ctl.a.showAttr(r=1)

    def setup_anchor(self):
        """Setup anchor points for the spine rig controls."""
        if self.jnts_rb:
            anchor = self.end_jnt if self.endCtl else self.jnts_rb[0]
            self.setup_anchor_module({"anchorP1": anchor})

        if self.anchorToRbj:
            self.setup_anchor_module({"anchorP2": self.anchorToRbj})

    def setup_space(self):
        """Setup space switching for the spine rig controls."""
        self.rigNode.setMsg(
            {
                "space_master": self.masterC,
                "space_COG": self.cog_ctl,
                "space_chest": self.fore_ctl,
                "space_bodyBase": self.base_ctl,
            }
        )

    def is_neck(self):
        """Check if the rig is a neck rig."""
        return self.__class__.__name__ == "NeckQd"

    def setup_ctlSets(self):
        """Setup control sets for the spine rig."""
        ctls = self.ctls_ik + [self.cog_ctl, self.setting]
        if self.endCtl:
            ctls.append(self.end_ctl)

        self.add_ctl_set(ctls)

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""
        self.add_bind_jnt_set(self.jnts_bind)
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
