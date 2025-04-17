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

CBK = Color.BLACK
CDR = Color.D_RED
CBL = Color.BLUE
CLB = Color.L_BLUE
CRD = Color.RED
CYL = Color.YELLOW


class Spine(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_JNT_NUM = self.master_guide.a.fkJntNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        self.LINE_GUIDE = DagNode(self.rigID + "_line_guide")
        self.MD_GUIDE = DagNode(self.rigID + "_md_guide")
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.cog_ctl = None
        self.cog_gmb = None
        self.rt_ctl = None
        self.md_ctl = None
        self.tp_ctl = None
        self.ikCtl = None
        self.fkCtl = None
        self.setting = None
        self.ctlJnts = None

        self.bindJnts = []
        self.fkJnt = []
        self.rbSrf = None

    def genGuideSk(self):
        self.genSk_module(["rt", "md", "tp"])

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="stickS",
            up="-z",
            scale=rSz * 2,
            color=CBK,
            top=1,
            lineWidth=2,
        )
        self.cog_ctl = CurveNode(
            "cog_ctl", pf=rID, shape="cog2", scale=rSz * 2, color=CYL
        )
        self.tp_ctl = CurveNode(
            "tp_ctl", pf=rID, shape="squareR", scale=rSz * 4, lineWidth=2
        )
        self.md_ctl = CurveNode(
            "_md_ctl", pf=rID, shape="cube", up="-z", scale=rSz, lineWidth=2
        )
        self.rt_ctl = CurveNode(
            "rt_ctl", pf=rID, shape="squareR", scale=rSz * 4, lineWidth=2
        )
        self.md_ctl.cv_move(0, 0, rSz * -70)

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "rt_ctl": self.rt_ctl,
                "md_ctl": self.md_ctl,
                "tp_ctl": self.tp_ctl,
            }
        )

    def build(self):
        self.build_module()
        self.createCtl()
        self.build_fk()
        self.build_ik()
        self.post_setup()

    def build_fk(self):
        rSz = self.rigSize
        rID = self.rigID
        logging.info(rID)

        self.fkJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            jntNum=self.FK_JNT_NUM,
            pf=rID,
            aimV=(0, 1, 0),
            upV=(0, 0, 1),
            wuV=(0, 0, 1),
            jntRad=rSz,
            p=self.SKL_DATA,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        self.fkCtl = []
        for i, j in enumerate(self.fkJnt[:-1]):
            c = CurveNode(f"fkc_{i + 1}", pf=rID, shape="circleC", scale=rSz * 5)
            self.fkCtl.append(c)

        self.fkGivenCtl2(self.fkJnt[1:], self.fkCtl[1:], p=self.CTL_DATA)

        hipCtl = self.fkCtl[0]
        hipCtl(p=self.CTL_DATA, addOfs=1, color=CRD)
        hipCtl.offset.snapAlignTo(self.fkJnt[1], self.fkJnt[0])
        hipCtl.cv_move(0, rSz * -20, 0)
        hipCtl.cstPar(self.fkJnt[0], mo=1)
        self.bindJnts = self.fkJnt

    def build_ik(self):
        rID = self.rigID
        rSz = self.rigSize
        logging.info(rID)

        mG = self.master_guide
        self.rt_ctl.snapAlignTo(self.fkJnt[0], mG)
        self.md_ctl.snapAlignTo(self.MD_GUIDE, mG)
        self.tp_ctl.snapAlignTo(self.fkJnt[-1], mG)
        self.cog_ctl.snapAlignTo(self.rt_ctl, mG)
        self.setting.alignTo(self.cog_ctl)  # , offset=(0, 0, rSz * -100))
        self.cog_gmb = CurveNode(self.cog_ctl).addGimbal()  # attrTgt=self.setting)
        self.setting | self.cog_ctl | self.CTL_DATA
        self.cog_gmb.cstPar(self.fkCtl[0].offset, mo=1)
        self.cog_gmb.cstPar(self.fkCtl[1].offset, mo=1)

        self.rt_ctl | self.fkCtl[0]
        self.tp_ctl | self.fkCtl[-1]
        self.md_ctl | self.fkCtl[len(self.fkCtl) // 2]
        self.rt_ctl.addOffsetGrp()
        self.md_ctl.addOffsetGrp(count=2)
        self.tp_ctl.addOffsetGrp()
        self.cog_ctl.addOffsetGrp()
        self.rt_ctl.a.ry @ self.tp_ctl.a.ry >> self.md_ctl.offset.a.ry

        self.tp_ctl.cstOri(self.fkJnt[-1], mo=1)
        self.cog_gmb.cstSca(self.fkJnt[0])
        self.fkJnt[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        if self.RBN_BONES:
            self.rbSrf = SurfNode.buildRbSrf(
                pf=rID,
                crv=self.LINE_GUIDE,
                normal=1,
                snap=self.rootJ,
                p=self.RIG_DATA,
            )
            self.rigNode.setMsg({"rbSrf": self.rbSrf})

            self.ctlJnts = self.createCtlJ(
                [self.rt_ctl, self.md_ctl, self.tp_ctl], r=rSz * 5, color=CBL
            )
            self.rbSrf.weightTo(self.ctlJnts, mi=3, dr=4)

            self.bindJnts = SurfNode.buildRbJnt(
                self.RBN_JNT_NUM,
                pf=rID,
                size=rSz,
                surf=self.rbSrf,
                rigData=self.RIG_DATA,
                sklData=self.SKL_DATA,
                color=CDR,
            )
            self.build_volume_setup()

        for ctl in self.fkCtl:
            self.cog_ctl.a.s >> ctl.offset.a.s

        self.cog_ctl.a.s >> self.PRX_GRP.a.s

        # self.ikCtl = [self.cog_ctl, self.cog_gmb, self.rt_ctl, self.md_ctl, self.tp_ctl]
        self.ikCtl = [self.rt_ctl, self.md_ctl, self.tp_ctl]

    def build_volume_setup(self):
        """Scale ribbon joints according to length of the surface"""

        import math

        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf, u=3, v=1)
        d = arcLD.a.arcLength
        D = d.get()

        autoVol = self.setting.a.add("autoVol")
        self.tp_ctl.a.add("autoVol", proxy=autoVol)
        self.rt_ctl.a.add("autoVol", proxy=autoVol)

        # keys for volume squash
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.RBN_JNT_NUM - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.RBN_JNT_NUM - 1, v=0)
        mc.setAttr(volGraph, l=1)

        for i in range(self.RBN_JNT_NUM):

            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)

            ratio = (D / (d / scaleFix)) ** (fc.a.varying * autoVol)
            ratio >> self.bindJnts[i].a.sx
            ratio >> self.bindJnts[i].a.sy

    def vis_setup(self):

        self.ctrlOnOffByAttr(
            self.setting.a.add("fkVis", min=0, max=1, dv=1, k=0),
            onList=self.fkCtl,
        )
        self.ctrlOnOffByAttr(
            self.setting.a.add("ikVis", min=0, max=1, dv=1, k=0),
            onList=self.ikCtl,
        )
        self.ctrlOnOffByAttr(self.masterC2.a["debug"], onList=[self.RIG_DATA])

        if self.RBN_BONES:
            self.ctrlOnOffByAttr(
                self.masterC2.a["debug"], onList=[self.rbSrf] + self.ctlJnts
            )

    def channel_setup(self):
        self.setting.a.showAttr()
        for ctl in [self.cog_gmb, self.rt_ctl, self.md_ctl, self.tp_ctl] + self.fkCtl:
            ctl.a.showAttr(t=1, r=1)
        self.cog_ctl.a.showAttr(t=1, r=1, s=1)

    def ro_setup(self):
        for ctl in self.fkCtl + self.ikCtl + [self.cog_ctl, self.cog_gmb]:
            ctl.a.ro.set(2)

    def proxy_setup(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(scale=2, aimDir=(0, 1, 0), p=self.PRX_GRP)

    def space_setup(self):
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_lwrBody": self.rt_ctl})
        self.rigNode.setMsg({"space_uprBody": self.tp_ctl})

    def anchor_setup(self):
        anchorM2Tgt = self.bindJnts[-1] if self.RBN_BONES else self.tp_ctl
        self.anchor_setup_module({"anchorM1": self.rt_ctl, "anchorM2": anchorM2Tgt})

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)
        self.addBindJntSet(self.bindJnts)
        self.addCtlSet(
            self.fkCtl + self.ikCtl + [self.setting, self.cog_ctl, self.cog_gmb]
        )
        self.space_setup()
        self.anchor_setup()
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
