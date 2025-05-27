import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color


class SpineQd(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.CTL_NUM = 3
        self.END_CTL = self.master_guide.a.endCtl.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CurveNode(rID + "_line_guide")
        self.TP_GUIDE = DagNode(rID + "_tp_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")
        self.RT_GUIDE = DagNode(rID + "_rt_guide")
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)
        self.IK_PART = GroupNode("IK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        guide = DagNode(rID + "_base_pivot_guide")
        self.BASE_PVT_GUIDE = guide if guide.exists() else None

        guide = DagNode(rID + "_end_jnt_guide")
        self.END_JNT_GUIDE = guide if guide.exists() else None

        self.setting = None
        self.cog_ctl = None
        self.fore_ctl = None
        self.mid_ctl = None
        self.base_ctl = None
        self.tangent0_ctl = None
        self.tangent1_ctl = None
        self.end_ctl = None
        self.end_jnt = None
        self.fkCtls = []
        self.ikCtls = []
        self.fkJnts = []
        self.ikJnts = []
        self.rbJnts = []
        self.spIkJnts = []
        self.bindJnts = []
        self.rbSrf = None
        self.rbCrv = None
        self.two_ikJnts = []
        self.two_ikH = None
        self.rbAnchor = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="sphere2",
            scale=rSz * 2,
            color=1,
            top=1,
            p=self.IK_PART,
        )
        self.setting.a.add("stretchy", min=0, max=1, dv=1)
        self.setting.a.add("moduleScale", min=0.01, dv=1)

        self.cog_ctl = CurveNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            move=(0, 70 * rSz, 0),
            scale=(rSz, rSz * 2, rSz * 2),
            color=20,
            p=self.IK_PART,
        )

        scale = (rSz * 6, rSz * 6, rSz * 2)
        self.fore_ctl = CurveNode("fore_ctl", pf=rID, shape="cube", scale=scale)
        self.base_ctl = CurveNode("base_ctl", pf=rID, shape="cube", scale=scale)
        self.mid_ctl = CurveNode(
            "mid_ctl", pf=rID, shape="squareR", up="z", scale=rSz * 3
        )
        moveUp = (0, rSz * 25, 0)
        self.tangent0_ctl = CurveNode(
            "tangent0_ctl",
            pf=rID,
            shape="triangleR",
            scale=rSz / 2,
            rotate=(0, 180, 90),
            move=moveUp,
            color=22,
        )
        self.tangent1_ctl = CurveNode(
            "tangent1_ctl",
            pf=rID,
            shape="triangleR",
            scale=rSz / 2,
            rotate=(0, 0, 90),
            move=moveUp,
            color=22,
        )
        if self.END_CTL:
            self.end_ctl = CurveNode(
                "end_ctl",
                pf=rID,
                shape="rotator",
                scale=rSz,
                rotate=(-30, 0, 0),
                move=(0, rSz * 5, 0),
                color=22,
            )

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "fore_ctl": self.fore_ctl,
                "mid_ctl": self.mid_ctl,
                "base_ctl": self.base_ctl,
                "tangent0_ctl": self.tangent0_ctl,
                "tangent1_ctl": self.tangent1_ctl,
            }
        )

    def build(self):
        rID, rSz, xDr = self.getMyVar()

        self.build_module()
        mc.delete(self.rootJ)
        self.rigSize = CurveNode(self.LINE_GUIDE).length / 100
        self.rbSrf = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            spans=2,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_ik()

        self.rbSrf.weightTo(self.ikJnts, mi=1, chain=0)

        crvLenRatio, self.spIkJnts, self.rbJnts = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.RBN_JNT_NUM,
            scaleAttr=self.setting.a.moduleScale,
            setting=self.setting,
        )

        self.build_twoJ_ik()

        self.bindJnts.extend(self.rbJnts)
        self.build_volume(crvLenRatio)
        #
        #   scaling
        #
        self.setting.a.moduleScale >> self.IK_PART.a.s
        self.setting.a.moduleScale >> self.PRX_GRP.a.s

        self.post_setup()

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()
        #
        #   build chain from crv
        #
        self.ikJnts = JointNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=3,
            name="ikj",
            pf=rID,
            aimV=(0, 0, 1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz * 4,
            chain=0,
            color=6,
        )
        self.ikJnts[-1].a.r.set(0, 0, 0)
        #
        #   position cog & setting
        #
        if self.__class__.__name__ == "NeckQd":
            self.cog_ctl.alignTo(self.RT_GUIDE)
            self.cog_ctl(shape="squareR", scale=rSz * 6, rotate=(90, 0, 0), color=20)
        else:
            self.cog_ctl.snapTo(self.RT_GUIDE)

        self.cog_ctl.addOffsetGrp()
        self.setting.snapTo(self.RT_GUIDE, offset=(0, rSz * 40, 0))
        self.cog_ctl.cstPar(self.setting, mo=1)
        #
        #   build ik ctls
        #
        self.base_ctl | self.cog_ctl
        self.mid_ctl | self.cog_ctl
        self.fore_ctl | self.cog_ctl

        if self.BASE_PVT_GUIDE:
            self.base_ctl.alignTo(self.BASE_PVT_GUIDE)
        else:
            self.base_ctl.alignTo(self.ikJnts[0])

        self.mid_ctl.alignTo(self.ikJnts[1])
        self.fore_ctl.alignTo(self.ikJnts[2])
        #
        #   parenting ctls and jnts
        #
        self.tangent0_ctl.alignTo(self.ikJnts[0], p=self.base_ctl)
        self.tangent1_ctl.alignTo(self.fore_ctl, p=self.fore_ctl)

        self.ikJnts[0] | self.tangent0_ctl
        self.ikJnts[1] | self.mid_ctl
        self.ikJnts[2] | self.tangent1_ctl

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

    def reparenting(self):
        pass

    def build_spik_ribbon(self, rbSrf=None, jntNum=5, setting=None, scaleAttr=None):
        rID, rSz, xDr = self.getMyVar()
        #
        #   create crv & joints on it
        #
        rbCrv = CurveNode(mc.duplicateCurve(rbSrf + ".u[0.5]", rn=0, local=0)[0])
        rbCrv | self.RIG_DATA
        spIkJnts = JointNode.createJntFrCrv(
            rbCrv,
            pf=rID,
            name="spikj",
            num=jntNum,
            size=rSz * 2,
            p=self.RIG_DATA,
            color=4,
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
            sol=2,
            createCrv=0,
            inputCrv=rbCrv,
            setting=setting,
            scaleFix=globalScale,
            scaleFix2=self.setting.a.moduleScale,
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
        locGrp = GroupNode("loc_grp", pf=rID, p=self.RIG_DATA)
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
            aimCst | self.RIG_DATA

            rbSrf.shape.a.worldSpace >> posi.a.inputSurface
            mc.connectAttr(f"{posi}.tangentV", f"{aimCst}.target[0].targetTranslate")
            posi.a.turnOnPercentage.set(1)
            posi.a.tangentU >> aimCst.a.worldUpVector
            posi.a.position >> loc.a.translate

            aimCst.a.constraintRotateX >> loc.a.rx
            aimCst.a.constraintRotateY >> loc.a.ry
            aimCst.a.constraintRotateZ >> loc.a.rz

            jnt = JointNode(
                f"{i}_rbj",
                pf=rID,
                align=loc,
                r=rSz / jntNum * 12,
                p=loc,
                reset=1,
                color=13,
            )
            rbJnts.append(jnt)

        self.rbAnchor = LocNode("rbAnchor", pf=rID, snap=rbJnts[-1], p=self.fore_ctl)
        rbJnts[-1].cstPoi(self.rbAnchor)

        #
        #   setup end_ctl & end_jnt
        #
        if self.END_CTL:
            self.end_ctl.alignTo(self.END_JNT_GUIDE, p=self.base_ctl)
            self.end_ctl.addOffsetGrp()
            self.end_jnt = JointNode(
                "end", pf=rID, snap=self.END_JNT_GUIDE, p=self.SKL_DATA, r=rSz * 2
            )
            self.end_ctl.cstPar(self.end_jnt, mo=1)
            self.bindJnts.append(self.end_jnt)

            # self.isolate_align(self.end_ctl, spaces=[self.end_ctl.parent, self.masterC])

        ikH.hide()
        return crvLenRatio, spIkJnts, rbJnts

    def build_twoJ_ik(self):
        rID, rSz, xDr = self.getMyVar()
        #
        #   build chain from crv
        #
        self.two_ikJnts = JointNode.makeTwoJChain(
            "two_ikj",
            pf=rID,
            align=self.RT_GUIDE,
            align_end=self.TP_GUIDE,
            p=self.base_ctl,
            r=rSz * 20,
            color=1,
        )
        self.two_ikH = IkNode(
            "two_ikj",
            pf=rID,
            sj=self.two_ikJnts[0],
            ee=self.two_ikJnts[1],
            p=self.tangent1_ctl,
            vis=0,
        )
        self.two_ikJnts[1].cstPoi(self.ikJnts[2])
        #
        #   ctl two jnt's scale
        #
        d = ut.distDim_(self.tangent0_ctl, self.tangent1_ctl)
        crvLenRatio = (
            d / d.get() / self.masterC.a.globalScale / self.setting.a.moduleScale
        )
        (
            ut.clp_(
                crvLenRatio,
                min=self.setting.a.stretchMin,
                max=self.setting.a.stretchMax,
            )
            >> self.two_ikJnts[0].a.sz
        )
        #
        #   contraint mid ik ctl
        #
        self.fore_ctl.a.r >> self.two_ikJnts[1].a.r
        #
        #   use poi cst for Neck, parT cst for spine
        #
        if self.__class__.__name__ == "NeckQd":
            common.cstMulti(
                self.base_ctl,
                self.two_ikJnts[1],
                self.mid_ctl.offset,
                cstType="poi",
                mo=1,
            )
        else:
            loc0 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.base_ctl, v=0)
            loc1 = LocNode(
                "loc#", pf=rID, align=self.mid_ctl, p=self.two_ikJnts[1], v=0
            )
            common.cstMulti(
                loc0,
                loc1,
                self.mid_ctl.offset,
                cstType="parT",
                mo=1,
            )
        #
        #   make mid ctl aiming forward
        #
        self.two_ikJnts[1].cstAim(
            self.mid_ctl.offset,
            aim=(0, 0, 1),
            worldUpType="objectrotation",
            worldUpObject=self.cog_ctl,
        )
        #
        #   mid ctl's rz dirven by average of the 2 ctls
        #
        self.mid_ctl.addOffsetGrp()
        self.fore_ctl.a.rz @ self.base_ctl.a.rz >> self.mid_ctl.offset.a.rz

        # self.two_ikJnts[0].a.sz >> self.ikJnts[0].a.sz
        # self.two_ikJnts[0].a.sz >> self.ikJnts[2].a.sz

    def build_volume(self, crvLenRatio):
        #
        #   add volume graph keys
        #
        self.setting.a.addSep()
        volumeScale = self.setting.a.add("volumeScale", dv=1)
        volumeGraph = self.setting.a.add("volumeGraph", dv=0)
        mc.setKeyframe(volumeGraph, t=0, v=0)
        mc.setKeyframe(volumeGraph, t=(self.RBN_JNT_NUM - 1) / 2, v=1)
        mc.setKeyframe(volumeGraph, t=self.RBN_JNT_NUM - 1, v=0)
        volumeGraph.lock = 1
        #
        #   set rbj scale acc to surf length
        #
        for i in range(self.RBN_JNT_NUM):
            fc = DagNode("fc__#", nodeType="frameCache")
            volumeGraph >> fc.a.stream
            fc.a.varyTime.set(i)
            ratio = (1 / crvLenRatio) ** (fc.a.varying * volumeScale)
            ratio >> self.rbJnts[i].a.sy
            ratio >> self.rbJnts[i].a.sz

    def setup_vis(self):
        mc.hide(self.ikJnts, self.rbJnts, self.fkJnts, self.spIkJnts, self.two_ikJnts)
        if self.__class__.__name__ == "NeckQd":
            self.base_ctl.shape.hide()
            self.tangent0_ctl.shape.hide()
        self.rbAnchor.hide()

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP)

    def setup_rotate_order(self):
        [ctl.a.ro.set(3) for ctl in [self.fore_ctl, self.base_ctl, self.cog_ctl]]
        if self.END_CTL:
            self.end_ctl.a.ro.set(3)

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ikCtls]
        if self.__class__.__name__ == "NeckQd":
            self.cog_ctl.a.showAttr(r=1)
        else:
            self.cog_ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()
        self.tangent0_ctl.a.showAttr("sz", r=1)
        self.tangent1_ctl.a.showAttr("sz", r=1)

        if self.END_CTL:
            self.end_ctl.a.showAttr(r=1)
        (
            self.base_ctl.a.add("tangentCtl", min=0, max=1, k=0)
            >> self.tangent0_ctl.shape.a.v
        )
        (
            self.fore_ctl.a.add("tangentCtl", min=0, max=1, k=0)
            >> self.tangent1_ctl.shape.a.v
        )

    def setup_anchor(self):
        if self.END_CTL:
            self.setup_anchor_module({"anchorM1": self.end_jnt})
        else:
            self.setup_anchor_module({"anchorM1": self.rbJnts[0]})

        self.setup_anchor_module({"anchorM2": self.rbAnchor})

    def setup_space(self):
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_chest": self.fore_ctl})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)

        ctls = self.ikCtls + [self.cog_ctl, self.setting]
        if self.__class__.__name__ == "NeckQd":
            ctls.remove(self.base_ctl)
            ctls.remove(self.tangent0_ctl)
        if self.END_CTL:
            ctls.append(self.end_ctl)
        self.add_ctl_set(ctls)

        self.setup_space()
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()

        self.post_module()
