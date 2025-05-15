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
        self.FK_BONE_NUM = self.master_guide.a.fkJntNum.get()
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

        self.setting = None
        self.cog_ctl = None
        self.fore_ctl = None
        self.foreFk_ctl = None
        self.mid_ctl = None
        self.base_ctl = None
        self.foreLocal_ctl = None
        self.baseLocal_ctl = None
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

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="diamond",
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
            scale=(rSz * 0.8, rSz * 1.5, rSz * 2.5),
            color=22,
            p=self.IK_PART,
            move=(0, 70 * rSz, 0),
        )
        self.foreFk_ctl = CurveNode(
            "foreFk_ctl",
            pf=rID,
            shape="fk_rotator",
            scale=rSz * 10,
            color=20,
            rotate=(0, 90, 0),
        )
        self.fore_ctl = CurveNode(
            "fore_ctl",
            pf=rID,
            shape="fk_rotator",
            scale=rSz * 10,
            color=22,
            rotate=(0, 90, 0),
        )
        self.mid_ctl = CurveNode(
            "mid_ctl", pf=rID, shape="squareR", up="z", scale=rSz * 4
        )
        self.base_ctl = CurveNode(
            "base_ctl",
            pf=rID,
            shape="fk_rotator",
            scale=rSz * 10,
            color=22,
            rotate=(0, 90, 0),
        )
        self.foreLocal_ctl = CurveNode(
            "foreLocal_ctl", pf=rID, shape="squareR", up="z", scale=rSz * 3
        )
        self.baseLocal_ctl = CurveNode(
            "baseLocal_ctl", pf=rID, shape="squareR", up="z", scale=rSz * 3
        )
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "fore_ctl": self.fore_ctl,
                "mid_ctl": self.mid_ctl,
                "base_ctl": self.base_ctl,
                "foreLocal_ctl": self.foreLocal_ctl,
                "baseLocal_ctl": self.baseLocal_ctl,
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
            spans=self.FK_BONE_NUM + 1,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_ik()

        self.rbSrf.weightTo(self.ikJnts, mi=4, dr=10, chain=0)

        crvLenRatio, self.spIkJnts, self.rbJnts = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.RBN_JNT_NUM,
            scaleAttr=self.setting.a.moduleScale,
            setting=self.setting,
        )
        self.build_two_ik()

        self.bindJnts = self.rbJnts
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
            num=5,
            name="ikj",
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz * 4,
            chain=0,
            color=6,
        )
        #
        #   position cog & setting
        #
        self.cog_ctl.snapTo(self.RT_GUIDE)
        self.cog_ctl.addOffsetGrp()
        self.setting.snapTo(self.RT_GUIDE, offset=(0, rSz * 50, 0))
        self.cog_ctl.cstPar(self.setting, mo=1)
        #
        #   build ik ctls
        #
        self.base_ctl | self.cog_ctl
        self.mid_ctl | self.cog_ctl
        self.fore_ctl | self.foreFk_ctl | self.cog_ctl

        if self.BASE_PVT_GUIDE:
            self.base_ctl.snapTo(self.BASE_PVT_GUIDE)
        else:
            self.base_ctl.snapTo(self.ikJnts[0])

        self.foreFk_ctl.snapTo(self.ikJnts[2])
        self.mid_ctl.alignTo(self.ikJnts[2])
        self.fore_ctl.snapTo(self.ikJnts[4])

        #
        #   parenting ctls and jnts
        #
        self.baseLocal_ctl.alignTo(self.ikJnts[0], p=self.base_ctl)
        self.foreLocal_ctl.alignTo(self.fore_ctl, p=self.fore_ctl)

        self.ikJnts[1] | self.ikJnts[0] | self.baseLocal_ctl
        self.ikJnts[2] | self.mid_ctl
        self.ikJnts[3] | self.ikJnts[4] | self.foreLocal_ctl

        self.ikCtls = [
            self.base_ctl,
            self.mid_ctl,
            self.fore_ctl,
            self.baseLocal_ctl,
            self.foreLocal_ctl,
        ]
        [ctl.addOffsetGrp() for ctl in self.ikCtls]
        self.foreFk_ctl.addOffsetGrp()

        # self.add_movable_pivot(self.fore_ctl, snap=self.MD_GUIDE)
        # self.add_movable_pivot(self.base_ctl, snap=self.BASE_PVT_GUIDE)

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

        self.foreLocal_ctl.cstOri(rbJnts[-1], mo=1)

        return crvLenRatio, spIkJnts, rbJnts

    def build_two_ik(self):
        rID, rSz, xDr = self.getMyVar()
        #
        #   build chain from crv
        #
        self.two_ikJnts = JointNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=2,
            name="two_ikj",
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz * 20,
            color=1,
            p=self.baseLocal_ctl,
        )

        self.two_ikH = IkNode(
            "two_ikj",
            pf=rID,
            sj=self.two_ikJnts[0],
            ee=self.two_ikJnts[1],
            p=self.foreLocal_ctl,
            vis=0,
        )
        self.two_ikJnts[1].cstPoi(self.ikJnts[-1])
        #
        #   ctl two jnt's scale
        #
        d = ut.distDim_(self.foreLocal_ctl, self.baseLocal_ctl)
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
        loc0 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.base_ctl, v=0)
        loc1 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.ikJnts[-1], v=0)
        common.cstMulti(loc0, loc1, self.mid_ctl.offset, cstType="par")

        #
        #   adjust tanget joint's scale acc to length
        #
        self.two_ikJnts[0].a.sz >> self.ikJnts[0].a.sz
        self.two_ikJnts[0].a.sz >> self.ikJnts[4].a.sz

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
            self.cog_ctl.shape.hide()
            self.baseLocal_ctl.shape.hide()
            self.base_ctl.shape.hide()

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP)

    def setup_rotate_order(self):
        [c.a.ro.set(2) for c in self.ikCtls]

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ikCtls + [self.cog_ctl]]
        self.setting.a.showAttr()
        self.foreLocal_ctl.a.showAttr("sz", t=1, r=1)
        self.baseLocal_ctl.a.showAttr("sz", t=1, r=1)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorM1": self.rbJnts[0],
                "anchorM2": self.rbJnts[-1],
            }
        )

    def setup_space(self):
        # self.rigNode.setMsg({"spaceHolder1": self.fore_ctl})
        # spaces = "COG, master"
        # self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_chest": self.foreLocal_ctl})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)

        ctls = self.ikCtls + [self.cog_ctl, self.setting]
        if self.__class__.__name__ == "NeckQd":
            ctls.remove(self.cog_ctl)
            ctls.remove(self.baseLocal_ctl)
            ctls.remove(self.base_ctl)
        self.add_ctl_set(ctls)

        self.setup_space()
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()

        self.post_module()
