import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common, utils_node as ut, maths


class SpineQd(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)

        rID, rSz, xDr = self.getMyVar()

        self.END_CTL = self.master_guide.a.endCtl.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()
        self.LINE_GUIDE = CrvNode(rID + "_line_guide")
        self.TP_GUIDE = DagNode(rID + "_tp_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")
        self.RT_GUIDE = DagNode(rID + "_rt_guide")
        self.IK_GRP = GrpNode("IK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)

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
        self.anchorToRbj = None

    def genSk(self):
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CrvNode("setting", pf=rID, shape="bagua", scale=rSz * 4, top=1)
        # , moveY=rSz * 10
        self.setting.a.add("stretchy", min=0, max=1, dv=1)

        self.cog_ctl = CrvNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            scale=maths.mul(0.5, 1, 2, rSz),
            moveY=60 * rSz,
            p=self.IK_GRP,
        )
        self.base_ctl = CrvNode("base_ctl", pf=rID, up="z", scale=rSz * 3)
        self.fore_ctl = CrvNode("fore_ctl", pf=rID, up="z", scale=rSz * 3)
        self.mid_ctl = CrvNode("mid_ctl", pf=rID, up="z", scale=rSz * 3)

        self.tangent0_ctl = CrvNode(
            "tangent0_ctl",
            pf=rID,
            shape="triR",
            scale=rSz / 2,
            rotate=(0, 180, 90),
            top=1,
        )
        self.tangent1_ctl = CrvNode(
            "tangent1_ctl",
            pf=rID,
            shape="triR",
            scale=rSz / 2,
            rotate=(0, 0, 90),
            top=1,
        )
        if self.END_CTL:
            self.end_ctl = CrvNode(
                "end_ctl",
                pf=rID,
                shape="fk_rotator2",
                top=1,
                scale=rSz * 1.5,
                rotate=(-45, 0, 0),
            )
            # shape="cube",

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "base_ctl": self.base_ctl,
                "mid_ctl": self.mid_ctl,
                "fore_ctl": self.fore_ctl,
                "tangent0_ctl": self.tangent0_ctl,
                "tangent1_ctl": self.tangent1_ctl,
            }
        )

    def build(self):
        rID, rSz, xDr = self.getMyVar()

        self.build_module()

        mc.delete(self.rootJ)
        self.rigSize = CrvNode(self.LINE_GUIDE).length / 100
        self.rbSrf = SrfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            spans=2,
            snap=self.RT_GUIDE,
            p=self.RIG_DATA,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_ik()

        self.rbSrf.weightTo(self.ikJnts, mi=1, chain=0)

        crvLenRatio, self.spIkJnts, self.rbJnts = self.build_spik_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.RBN_JNT_NUM,
            setting=self.setting,
        )

        self.build_twoJ_ik()
        self.build_volume(crvLenRatio)
        self.bindJnts.extend(self.rbJnts)

        self.setting.snapTo(self.rbJnts[0], p=self.IK_GRP)
        self.rbJnts[0].cstPar(self.setting, mo=1)

        self.post_setup()

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()
        #
        #   build 3 ik joints from crv
        #
        self.ikJnts = JntNode.createJntFrCrv(
            self.LINE_GUIDE, num=3, name="ikj", pf=rID, size=rSz, chain=0
        )
        ikj0, ikj1, ikj2 = self.ikJnts

        ikj2.a.r.set(0, 0, 0)

        if self.is_neck():
            self.cog_ctl.alignTo(self.RT_GUIDE, addOfs=1)
            self.cog_ctl(shape="squR", scale=rSz * 5, rotate=(90, 0, 0))
        else:
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
            sol=2,
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
        if self.END_CTL:
            self.end_jnt = JntNode(
                "end",
                pf=rID,
                r=rSz,
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
        rID, rSz, xDr = self.getMyVar()
        #
        #   build chain from crv
        #
        self.two_ikJnts = JntNode.makeTwoJC(
            "two_ikj",
            pf=rID,
            align=self.RT_GUIDE,
            align_end=self.TP_GUIDE,
            r=rSz * 20,
            p=self.base_ctl,
        )
        j0, j1 = self.two_ikJnts

        self.two_ikH = IkNode(
            "two_ikj", pf=rID, sj=j0, ee=j1, vis=0, p=self.tangent1_ctl
        )
        j1.cstPoi(self.ikJnts[2])
        #
        #   ctl two jnt's scale
        #
        d = ut.distDim_(self.tangent0_ctl, self.tangent1_ctl)
        crvLenRatio = (
            d / d.get() / self.masterC.a.globalScale  # / self.setting.a.localScale
        )
        (
            ut.clp_(
                crvLenRatio,
                min=self.setting.a.stretchMin,
                max=self.setting.a.stretchMax,
            )
            >> j0.a.sz
        )
        #
        #   contraint mid ik ctl
        #
        self.fore_ctl.a.r >> j1.a.r
        #
        #   use poi cst for Neck, parT cst for spine
        #
        if self.is_neck():
            common.cstMulti(self.base_ctl, j1, self.mid_ctl.offset, cstType="poi", mo=1)
        else:
            loc0 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=self.base_ctl, vis=0)
            loc1 = LocNode("loc#", pf=rID, align=self.mid_ctl, p=j1, vis=0)
            common.cstMulti(loc0, loc1, self.mid_ctl.offset, cstType="parT", mo=1)
        #
        #   make mid ctl aiming forward
        #
        j1.cstAim(
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

    def build_volume(self, crvLenRatio):
        #
        #   add volume graph keys
        #
        # self.setting.a.addSep()
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

        attr = self.base_ctl.a.add("tangentCtl", attrType="bool", k=0, dv=1)
        attr >> self.tangent0_ctl.shape.a.v
        attr = self.fore_ctl.a.add("tangentCtl", attrType="bool", k=0, dv=1)
        attr >> self.tangent1_ctl.shape.a.v

        if self.is_neck():
            mc.hide(self.base_ctl.shape, self.tangent0_ctl.shape)

        mc.hide(
            self.ikJnts,
            self.fkJnts,
            self.spIkJnts,
            self.two_ikJnts,
            self.anchorToRbj,
            # self.rbSrf,
            # self.rbCrv,
        )

    def setup_rotate_order(self):
        [ctl.a.ro.set(3) for ctl in [self.fore_ctl, self.base_ctl, self.cog_ctl]]
        if self.END_CTL:
            self.end_ctl.a.ro.set(3)

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ikCtls]

        self.setting.a.showAttr()
        self.cog_ctl.a.showAttr(t=not self.is_neck(), r=1)
        self.tangent0_ctl.a.showAttr("sz", r=1)
        self.tangent1_ctl.a.showAttr("sz", r=1)

        if self.END_CTL:
            self.end_ctl.a.showAttr(r=1)

        self.fore_ctl.add_as_proxy_attr(self.setting)

    def setup_anchor(self):
        self.setup_anchor_module(
            {"anchorM1": self.end_jnt if self.END_CTL else self.rbJnts[0]}
        )
        self.setup_anchor_module({"anchorM2": self.anchorToRbj})

    def setup_space(self):
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_chest": self.fore_ctl})

    def is_neck(self):
        return self.__class__.__name__ == "NeckQd"

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_ratio(self.bindJnts, 5)

        ctls = self.ikCtls + [self.cog_ctl, self.setting]
        if self.END_CTL:
            ctls.append(self.end_ctl)
        self.add_ctl_set(ctls)

        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()

        self.post_module()
