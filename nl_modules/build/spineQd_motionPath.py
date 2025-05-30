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
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color


class SpineQd(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.CTL_NUM = 3
        self.FK_BONE_NUM = self.master_guide.a.fkJntNum.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CrvNode(rID + "_line_guide")
        self.TP_GUIDE = DagNode(rID + "_tp_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")
        self.RT_GUIDE = DagNode(rID + "_rt_guide")
        self.PRX_GRP = GrpNode("PRX", pf=rID, p=self.PRX)
        self.IK_PART = GrpNode("IK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        pvtGuide = DagNode(rID + "_pivot_guide")
        self.PVT_GUIDE = pvtGuide if pvtGuide.exists() else None

        self.setting = None
        self.cog_ctl = None
        self.chest_ctl = None
        self.base_ctl = None
        self.fkCtls = []
        self.ikCtls = []
        self.fkJnts = []
        self.ikJnts = []
        self.rbJnts = []
        self.bindJnts = []
        self.rbSrf = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CrvNode(
            "setting",
            pf=rID,
            shape="diamond",
            scale=rSz * 2,
            color=1,
            top=1,
            width=2,
            p=self.CTL_DATA,
        )
        spineScale = self.setting.a.add("spineScale", min=0.01, dv=1)
        spineScale >> self.IK_PART.a.s
        spineScale >> self.PRX_GRP.a.s

        self.setting.a.add("stretchy", min=0, max=1)

        self.cog_ctl = CrvNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            scale=(rSz * 0.8, rSz * 1.5, rSz * 2.5),
            color=22,
            p=self.IK_PART,
        )
        self.cog_ctl.cv_move(0, 70 * rSz, 40 * rSz)

        self.chest_ctl = CrvNode(
            "chest_ctl",
            pf=rID,
            shape="squR",
            up="z",
            scale=rSz * 3,
            color=22,
        )
        self.base_ctl = CrvNode(
            "base_ctl", pf=rID, shape="squR", up="z", scale=rSz * 3, color=22
        )
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
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
            spans=self.FK_BONE_NUM + 1,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_ik()
        self.rbSrf.weightTo(self.ikJnts, mi=4, dr=6, chain=0)

        crvLenRatio, self.rbJnts = self.build_motionPath_ribbon(
            rbSrf=self.rbSrf,
            jntNum=self.RBN_JNT_NUM,
            scaleAttr=self.setting.a.spineScale,
            stretchyAttr=self.setting.a.stretchy,
        )
        self.bindJnts = self.rbJnts
        self.build_volume(crvLenRatio)
        self.post_setup()

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()
        #
        #   build chain from crv
        #
        self.ikJnts = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=5,
            name="ikj",
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz * 4,
            color=6,
        )
        #
        #   position cog & setting
        #
        self.cog_ctl.snapTo(self.RT_GUIDE)
        self.cog_ctl.addOffsetGrp()
        self.setting.snapTo(self.RT_GUIDE, ofs=(0, rSz * 70, 0))
        self.cog_ctl.cstPar(self.setting, mo=1)
        #
        #   build 5 ik ctls
        #
        for i in range(3):
            ctl = CrvNode(
                f"{i}_ikc",
                pf=rID,
                shape="fk_rotator",
                scale=rSz * 10,
                align=self.ikJnts[i * 2],
                addOfs=1,
                p=self.cog_ctl,
                width=2,
            )
            ctl.cv_rotate(0, 90, 0)
            ctl.a.add("stretchy", min=0, max=1, proxy=self.setting.a.stretchy)
            self.ikCtls.append(ctl)

        self.base_ctl.alignTo(self.ikCtls[0], p=self.ikCtls[0])
        self.chest_ctl.alignTo(self.ikCtls[2], p=self.ikCtls[2])

        (self.ikJnts[1], self.ikJnts[0]) | self.base_ctl
        self.ikJnts[2] | self.ikCtls[1]
        (self.ikJnts[3], self.ikJnts[4]) | self.chest_ctl
        #
        #   parenting for spine
        #
        loc0 = LocNode("loc#", pf=rID, align=self.ikCtls[1], p=self.ikCtls[0], vis=0)
        loc1 = LocNode("loc#", pf=rID, align=self.ikCtls[1], p=self.ikCtls[2], vis=0)
        common.cstMulti(loc0, loc1, self.ikCtls[1].offset, cstType="par")
        #
        #   set tanget joint's distance depending on total length
        #
        d = ut.distDim_(self.base_ctl, self.chest_ctl)
        tz = self.ikJnts[1].a.tz.get()
        (
            (tz / d.get()) * d / self.setting.a.spineScale / self.masterC.a.globalScale
            >> self.ikJnts[1].a.tz
        )
        self.ikJnts[1].a.tz * -1 >> self.ikJnts[3].a.tz

        self.add_movable_pivot(self.ikCtls[2], snap=self.MD_GUIDE)
        self.add_movable_pivot(self.ikCtls[0], snap=self.PVT_GUIDE)

    def build_volume(self, crvLenRatio):
        #
        #   add volume graph keys
        #
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.RBN_JNT_NUM - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.RBN_JNT_NUM - 1, v=0)
        mc.setAttr(volGraph, l=1)
        #
        #   set rbj scale acc to surf length
        #
        autoVol = self.setting.a.add("autoVol", dv=1)
        for i in range(self.RBN_JNT_NUM):

            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)
            ratio = (1 / crvLenRatio) ** (fc.a.varying * autoVol)
            ratio >> self.rbJnts[i].a.sy
            ratio >> self.rbJnts[i].a.sz

    def setup_vis(self):
        pass

    def setup_proxy(self):
        for j in self.bindJnts:
            JntNode(j).addProxyMesh(p=self.PRX_GRP)

    def setup_rotate_order(self):
        [c.a.ro.set(2) for c in self.ikCtls]

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ikCtls]
        self.setting.a.showAttr()
        self.chest_ctl.a.showAttr("sz", t=1, r=1)
        self.base_ctl.a.showAttr("sz", t=1, r=1)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorM1": self.rbJnts[0],
                "anchorM2": self.rbJnts[-1],
            }
        )

    def post_setup(self):
        if self.RBN_JNT_NUM > 1:
            self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.ikCtls)
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
