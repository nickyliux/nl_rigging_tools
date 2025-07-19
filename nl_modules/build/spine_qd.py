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
from nl_modules.utils import utils_node as ut


class SpineQd(RigModule):
    """Spine rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the SpineQd rig module."""
        super().__init__(rigNode)

        # Guide attributes
        self.end_ctl = self.get_guide_attr("endCtl")
        self.rbnJntNum = self.get_guide_attr("rbnJntNum")

        # Guide nodes
        self.LINE_GUIDE = CrvNode(f"{self.rigID}_line_guide")
        self.TP_GUIDE = DagNode(f"{self.rigID}_tp_guide")
        self.MD_GUIDE = DagNode(f"{self.rigID}_md_guide")
        self.RT_GUIDE = DagNode(f"{self.rigID}_rt_guide")
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        guide = DagNode(f"{self.rigID}_base_pivot_guide")
        self.BASE_PVT_GUIDE = guide if guide.exists() else None
        guide = DagNode(f"{self.rigID}_end_jnt_guide")
        self.END_JNT_GUIDE = guide if guide.exists() else None

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
        self.fkCtls = []
        self.ikCtls = []
        self.fkJnts = []
        self.ikJnts = []
        self.rbJnts = []
        self.spIkJnts = []
        self.twoIkJnts = []

        # Ribbon and anchor
        self.rbSrf = None
        self.rbCrv = None
        self.anchorToRbj = None

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

        #   Define control shapes and attributes
        ctl_defs = [
            ("setting", "bagua", "z", rSz * 2, 1, 2),
            ("cog_ctl", "trapezoid", None, rSz * 2, 1, -1),
            ("base_ctl", "circle", "z", rSz * 2, 0, -1),
            ("mid_ctl", "squR", "z", rSz * 4, 0, -1),
            ("fore_ctl", "circle", "z", rSz * 5, 0, -1),
            ("tangent0_ctl", "arrow", "z", rSz, 1, -1),
            ("tangent1_ctl", "arrow", "z", rSz, 1, -1),
        ]
        if self.end_ctl:
            ctl_defs.append(("end_ctl", "circle", "x", rSz * 2, 0, -1))

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.setting.a.add("stretchy", min=0, max=1, dv=1)

    def create_rbSrf(self):
        """Create the ribbon surface for the spine rig."""

        return SrfNode.buildRbSrf(
            pf=self.rigID,
            crv=self.LINE_GUIDE,
            spans=2,
            snap=self.RT_GUIDE,
            p=self.RIG_DATA,
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

        self.rbSrf.weightTo(self.ikJnts, mi=1, chain=0)

        crvLenRatio, self.spIkJnts, self.rbJnts = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.rbnJntNum,
            setting=self.setting,
        )

        self.build_twoJ_ik()
        self.build_volume(crvLenRatio)

        self.bindJnts.extend(self.rbJnts)

        self.setting.snapTo(self.rbJnts[0], p=self.IK_GRP)
        self.rbJnts[0].cstPar(self.setting, mo=1)

    def build_ik(self):
        """Build the IK controls for the spine rig."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        #
        #   build 3 ik joints from crv
        #
        self.ikJnts = JntNode.createJntFrCrv(
            self.LINE_GUIDE, num=3, name="ikj", pf=rID, size=rSz, chain=0
        )
        ikj0, ikj1, ikj2 = self.ikJnts

        ikj2.a.r.set(0, 0, 0)

        # if self.is_neck():
        #     self.cog_ctl.alignTo(self.RT_GUIDE, addOfs=1)
        # else:
        self.cog_ctl.snapTo(self.RT_GUIDE, addOfs=1)

        #
        #   parenting
        #
        self.base_ctl.alignTo(self.BASE_PVT_GUIDE or ikj0)
        self.mid_ctl.alignTo(ikj1)
        self.fore_ctl.alignTo(ikj2)
        self.tangent0_ctl.alignTo(ikj0)
        self.tangent1_ctl.alignTo(ikj2)

        ikj0 | self.tangent0_ctl | self.base_ctl | self.cog_ctl
        ikj1 | self.mid_ctl | self.cog_ctl
        ikj2 | self.tangent1_ctl | self.fore_ctl | self.cog_ctl
        self.cog_ctl | self.IK_GRP

        self.ikCtls = [
            self.base_ctl,
            self.mid_ctl,
            self.fore_ctl,
            self.tangent0_ctl,
            self.tangent1_ctl,
        ]
        [ctl.addOffsetGrp() for ctl in self.ikCtls]
        self.mid_ctl.addOffsetGrp()

        # self.add_movable_pivot(self.fore_ctl, snap=self.MD_GUIDE)
        # self.add_movable_pivot(self.base_ctl, snap=self.BASE_PVT_GUIDE)

    def build_spik_ribbon(self, rbSrf=None, jntNum=5, setting=None, scaleAttr=None):
        """Build a spine IK ribbon."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        #
        #   create crv & joints on it
        #
        rbCrv = CrvNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
        rbCrv | self.RIG_DATA
        spIkJnts = JntNode.createJntFrCrv(
            rbCrv, pf=rID, name="spikj", num=jntNum, size=rSz, p=self.RIG_DATA
        )
        #
        #   stretchy spline ik
        #
        globalScale = self.masterC.a.globalScale
        ikH = IkNode(
            "sp",
            pf=rID,
            sj=spIkJnts[0],
            ee=spIkJnts[-1],
            solver=Solver.SPLINE,
            createCrv=0,
            inputCrv=rbCrv,
            setting=setting,
            scaleFix=globalScale,
            # scaleFix2=self.setting.a.localScale,
            scaleFix2=None,
            scaleFix3=self.masterC2.a.sy,
            p=self.RIG_DATA,
        )
        ikH.stretchySp(axis="tz", axisDir=1)
        self.setting.a.stretchy.lock = 1
        #
        #   create ribbon jnts on top of spline ik joints
        #
        crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
        rbCrv.shape.a.worldSpace >> crvInfo.a.inputCurve

        crvLenRatio = crvInfo.a.arcLength / globalScale / scaleAttr / rbCrv.length
        locGrp = GrpNode("loc_grp", pf=rID, p=self.SKL_DATA)
        rbJnts = []
        for i in range(jntNum):

            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            dcpm = DagNode("dcpm_#", nodeType="decomposeMatrix")
            posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
            loc = LocNode(f"{i}_loc", pf=rID, p=locGrp)

            spIkJnts[i].a.worldMatrix >> dcpm.a.inputMatrix
            dcpm.a.outputTranslate >> cpos.a.inPosition

            rbSrf.shape.a.worldSpace >> cpos.a.inputSurface
            cpos.a.parameterU >> posi.a.parameterU
            cpos.a.parameterV >> posi.a.parameterV

            aimCst = DagNode("aimCst_#", nodeType="aimConstraint")
            # aimCst.a.aimVector.set(0, 0, 1)
            # aimCst.a.upVector.set(-1, 0, 0)
            aimCst | self.RIG_DATA

            rbSrf.shape.a.worldSpace >> posi.a.inputSurface
            mc.connectAttr(f"{posi}.tangentV", f"{aimCst}.target[0].targetTranslate")
            posi.a.turnOnPercentage.set(1)
            posi.a.tangentU >> aimCst.a.worldUpVector
            posi.a.position >> loc.a.translate

            aimCst.a.constraintRotateX >> loc.a.rx
            aimCst.a.constraintRotateY >> loc.a.ry
            aimCst.a.constraintRotateZ >> loc.a.rz

            rad = rSz / jntNum * 12
            jnt = JntNode(f"{i}_rbj", pf=rID, align=loc, r=rad, p=loc, reset=1)
            rbJnts.append(jnt)

            self.masterC.a.globalScale >> loc.a.s

        self.anchorToRbj = LocNode(
            "anchorToRbj", pf=rID, snap=rbJnts[-1], p=self.fore_ctl
        )
        rbJnts[-1].cstPoi(self.anchorToRbj)
        #
        #   setup end_ctl & end_jnt
        #
        if self.end_ctl:
            self.end_jnt = JntNode(
                "end",
                pf=rID,
                r=rSz * 1.5,
                snap=self.END_JNT_GUIDE,
                alignR=rbJnts[0],
                p=self.IK_GRP,
            )
            self.end_ctl.alignTo(self.END_JNT_GUIDE, p=self.base_ctl, addOfs=1)
            self.end_ctl.cstPar(self.end_jnt, mo=1)
            self.bindJnts.append(self.end_jnt)
            # self.isolate_align(self.end_ctl, spaces=[self.end_ctl.parent, self.masterC])

        ikH.hide()
        return crvLenRatio, spIkJnts, rbJnts

    def build_twoJ_ik(self):
        """Build a two-joint IK system for the spine rig."""

        rID, rSz, xDr = self.getMyVar()

        # --- Build two-joint chain from curve ---
        self.twoIkJnts = JntNode.makeTwoJC(
            "two_ikj",
            pf=rID,
            align=self.RT_GUIDE,
            align_end=self.TP_GUIDE,
            r=rSz * 20,
            p=self.base_ctl,
        )
        j0, j1 = self.twoIkJnts

        # --- Create hidden IK handle and constrain end joint ---
        IkNode("two_ikj", pf=rID, sj=j0, ee=j1, vis=0, p=self.tangent1_ctl)
        j1.cstPoi(self.ikJnts[2])

        # --- Control two-joint scale with distance and clamp ---
        d = ut.distDim_(self.tangent0_ctl, self.tangent1_ctl)
        crvLenRatio = d / d.get() / self.masterC.a.globalScale
        (
            ut.clp_(
                crvLenRatio,
                min=self.setting.a.stretchMin,
                max=self.setting.a.stretchMax,
            )
            >> j0.a.sz
        )

        # --- Constrain mid IK control rotation ---
        self.fore_ctl.a.r >> j1.a.r

        # --- Use POI or parent constraint for mid control offset ---
        if self.is_neck():
            common.cstMulti(self.base_ctl, j1, self.mid_ctl.offset, cstType="poi", mo=1)
        else:
            loc0 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.base_ctl, vis=0)
            loc1 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=j1, vis=0)
            common.cstMulti(loc0, loc1, self.mid_ctl.offset, cstType="parT", mo=1)

        # --- Make mid control aim forward ---
        j1.cstAim(
            self.mid_ctl.offset,
            aim=(0, 0, 1),
            worldUpType="objectrotation",
            worldUpObject=self.cog_ctl,
        )

        # --- Drive mid control rz by average of fore and base controls ---
        self.mid_ctl.addOffsetGrp()
        (self.fore_ctl.a.rz @ self.base_ctl.a.rz) >> self.mid_ctl.offset.a.rz

    def build_volume(self, crvLenRatio):
        """Build volume control for the spine rig."""

        # add volume graph keys
        volumeScale = self.setting.a.add("volumeScale", dv=1)
        volumeGraph = self.setting.a.add("volumeGraph", dv=0)
        mc.setKeyframe(volumeGraph, t=0, v=0)
        mc.setKeyframe(volumeGraph, t=(self.rbnJntNum - 1) / 2, v=1)
        mc.setKeyframe(volumeGraph, t=self.rbnJntNum - 1, v=0)
        volumeGraph.lock = 1

        # set rbj scale acc to surf length
        for i in range(self.rbnJntNum):
            fc = DagNode("fc__#", nodeType="frameCache")
            volumeGraph >> fc.a.stream
            fc.a.varyTime.set(i)
            ratio = (1 / crvLenRatio) ** (fc.a.varying * volumeScale)
            ratio >> self.rbJnts[i].a.sy
            ratio >> self.rbJnts[i].a.sz

    def setup_vis(self):
        """Setup visibility toggles for the spine rig controls."""

        attr = self.base_ctl.a.add("tangentCtl", attrType="bool", k=0)
        attr >> self.tangent0_ctl.a.v
        attr = self.fore_ctl.a.add("tangentCtl", attrType="bool", k=0)
        attr >> self.tangent1_ctl.a.v

        # if self.is_neck():
        # mc.hide(self.base_ctl.shape, self.tangent0_ctl.shape)
        # mc.hide(self.cog_ctl.shape)

        mc.hide(
            self.ikJnts,
            self.fkJnts,
            self.spIkJnts,
            self.twoIkJnts,
            self.anchorToRbj,
            self.SKL_DATA,
            # self.rbSrf,
            # self.rbCrv,
        )

    def setup_rotate_order(self):
        """Setup rotate order for the spine rig controls."""

        [ctl.a.ro.set(3) for ctl in [self.fore_ctl, self.base_ctl, self.cog_ctl]]
        if self.end_ctl:
            self.end_ctl.a.ro.set(3)

    def setup_channel(self):
        """Setup channel attributes for the spine rig controls."""

        [ctl.a.showAttr(t=1, r=1) for ctl in self.ikCtls]

        self.setting.a.showAttr()
        self.cog_ctl.a.showAttr(t=not self.is_neck(), r=1)
        self.tangent0_ctl.a.showAttr("sz", r=1)
        self.tangent1_ctl.a.showAttr("sz", r=1)

        if self.end_ctl:
            self.end_ctl.a.showAttr(r=1)

        self.fore_ctl.add_as_proxy_attr(self.setting)

    def setup_anchor(self):
        """Setup anchor points for the spine rig controls."""

        self.setup_anchor_module(
            {"anchorM1": self.end_jnt if self.end_ctl else self.rbJnts[0]}
        )
        self.setup_anchor_module({"anchorM2": self.anchorToRbj})

    def setup_space(self):
        """Setup space switching for the spine rig controls."""

        self.rigNode.setMsg(
            {
                "space_master": self.masterC,
                "space_COG": self.cog_ctl,
                "space_chest": self.fore_ctl,
            }
        )

    def is_neck(self):
        """Check if the rig is a neck rig."""

        return self.__class__.__name__ == "NeckQd"

    def setup_ctlSets(self):
        """Setup control sets for the spine rig."""
        ctls = self.ikCtls + [self.cog_ctl, self.setting]
        if self.end_ctl:
            ctls.append(self.end_ctl)

        self.add_ctl_set(ctls)

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""

        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_ratio(self.bindJnts, 5)

    def build_post(self):
        """Post setup for the spine rig."""

        logging.info(self.rigID)
        self.setup_bindJnt()
        self.setup_ctlSets()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
