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


class Spine(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_JNT_NUM = self.master_guide.a.fkJntNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = DagNode(rID + "_line_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)

        self.cog_ctl = None
        self.cog_gmb = None
        self.hip_ctl = None
        self.mid_ctl = None
        self.chest_ctl = None
        self.ikCtl = None
        self.fkCtl = None
        self.setting = None
        self.ctlJnts = None
        self.bindJnts = []
        self.fkJnt = []
        self.rbSrf = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="diamond",
            scale=rSz * 2,
            color=Color.BLACK,
            top=1,
            width=2,
            p=self.CTL_DATA,
        )
        self.cog_ctl = CurveNode(
            "cog_ctl", pf=rID, shape="cog2", scale=rSz * 2, color=Color.YELLOW
        )
        self.chest_ctl = CurveNode("chest_ctl", pf=rID, shape="squareR", scale=rSz * 4)
        self.mid_ctl = CurveNode("_mid_ctl", pf=rID, shape="squareR", scale=rSz * 4)
        self.hip_ctl = CurveNode("hip_ctl", pf=rID, shape="squareR", scale=rSz * 4)

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "hip_ctl": self.hip_ctl,
                "mid_ctl": self.mid_ctl,
                "chest_ctl": self.chest_ctl,
            }
        )

    def build(self):
        self.build_module()
        self.rigSize = CurveNode(self.LINE_GUIDE).length / 100
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.post_setup()

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        self.fkJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            jntNum=self.FK_JNT_NUM,
            pf=rID,
            aimV=(0, 1, 0),
            upV=(0, 0, 1),
            wuV=(0, 0, 1),
            size=rSz * 2,
            color=Color.BLUE,
            p=self.SKL_DATA,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        self.fkCtl = []
        for i, j in enumerate(self.fkJnt[:-1]):
            c = CurveNode(
                f"{i + 1}_fkc", pf=rID, shape="circleC", scale=rSz * 5, width=2
            )
            self.fkCtl.append(c)

        self.build_fk_with_ctl2(self.fkJnt[1:], self.fkCtl[1:], p=self.CTL_DATA)

        hipCtl = self.fkCtl[0]
        hipCtl(p=self.CTL_DATA, addOfs=1, color=Color.D_RED)
        hipCtl.offset.snapAlignTo(self.fkJnt[1], self.fkJnt[0])
        hipCtl.cv_move(0, rSz * -20, 0)
        hipCtl.cstPar(self.fkJnt[0], mo=1)
        self.bindJnts = self.fkJnt

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()

        mG = self.master_guide
        self.hip_ctl.snapAlignTo(self.fkJnt[0], mG)
        self.mid_ctl.snapAlignTo(self.MD_GUIDE, mG)
        self.chest_ctl.snapAlignTo(self.fkJnt[-1], mG)
        self.cog_ctl.snapAlignTo(self.hip_ctl, mG)

        self.setting.alignTo(self.cog_ctl)
        self.setting.a.tz.set(rSz * -100)
        self.cog_ctl.cstPar(self.setting, mo=1)

        self.cog_gmb = CurveNode(self.cog_ctl).addGimbal()  # attrTgt=self.setting)
        self.cog_ctl | self.CTL_DATA
        self.cog_gmb.cstPar(self.fkCtl[0].offset, mo=1)
        self.cog_gmb.cstPar(self.fkCtl[1].offset, mo=1)

        self.hip_ctl | self.fkCtl[0]
        self.chest_ctl | self.fkCtl[-1]
        self.mid_ctl | self.fkCtl[len(self.fkCtl) // 2]
        self.hip_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp(count=2)
        self.chest_ctl.addOffsetGrp()
        self.cog_ctl.addOffsetGrp()
        self.hip_ctl.a.ry @ self.chest_ctl.a.ry >> self.mid_ctl.offset.a.ry

        self.chest_ctl.cstOri(self.fkJnt[-1], mo=1)
        self.cog_gmb.cstSca(self.fkJnt[0])
        self.fkJnt[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        if self.RBN_BONES:
            self.rbSrf = SurfNode.buildRbSrf(
                pf=rID,
                crv=self.LINE_GUIDE,
                normal=1,
                snap=self.rootJ,
                spans=self.FK_JNT_NUM - 1,
                p=self.RIG_DATA,
            )
            self.rigNode.setMsg({"rbSrf": self.rbSrf})

            self.ctlJnts = self.build_ctl_jnt(
                [self.hip_ctl, self.mid_ctl, self.chest_ctl], r=rSz * 10
            )
            self.rbSrf.weightTo(self.ctlJnts, chain=0, mi=2, dr=6)
            self.bindJnts = SurfNode.buildRbJnt(
                self.RBN_JNT_NUM,
                pf=rID,
                size=rSz,
                surf=self.rbSrf,
                rigData=self.RIG_DATA,
                sklData=self.SKL_DATA,
            )
            self.volume_setup()

        for ctl in self.fkCtl:
            self.cog_ctl.a.s >> ctl.offset.a.s

        self.cog_ctl.a.s >> self.PRX_GRP.a.s
        self.ikCtl = [self.hip_ctl, self.mid_ctl, self.chest_ctl]

        self.chest_ctl

    def volume_setup(self):
        """Scale ribbon joints according to length of the surface"""

        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf)
        d = arcLD.a.arcLengthInV
        D = d.get()

        autoVol = self.setting.a.add("autoVol", dv=1)
        self.chest_ctl.a.add("autoVol", proxy=autoVol)
        self.hip_ctl.a.add("autoVol", proxy=autoVol)

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
            ratio >> self.bindJnts[i].a.sz

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtl", min=0, max=1, dv=1, k=0),
            onList=self.fkCtl,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("ikCtl", min=0, max=1, dv=1, k=0),
            onList=self.ikCtl,
        )
        # self.ctl_vis_toggle(self.masterC2.a["debug"], onList=[self.RIG_DATA])

        # if self.RBN_BONES:
        #     self.ctl_vis_toggle(
        #         self.masterC2.a["debug"], onList=[self.rbSrf] + self.ctlJnts
        #     )

    def setup_channel(self):
        self.setting.a.showAttr()
        for ctl in [
            self.cog_gmb,
            self.hip_ctl,
            self.mid_ctl,
            self.chest_ctl,
        ] + self.fkCtl:
            ctl.a.showAttr(t=1, r=1)
        self.cog_ctl.a.showAttr(t=1, r=1, s=1)

    def setup_rotate_order(self):
        for ctl in self.fkCtl + self.ikCtl + [self.cog_ctl, self.cog_gmb]:
            ctl.a.ro.set(2)

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(
                aimDir=(0, 1, 0),
                p=self.PRX_GRP,
                scaler=JointNode(j).a.s,
            )

    def setup_space(self):
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_lwrBody": self.hip_ctl})
        self.rigNode.setMsg({"space_uprBody": self.chest_ctl})

    def setup_anchor(self):
        anchorM2Tgt = self.bindJnts[-1] if self.RBN_BONES else self.chest_ctl
        self.setup_anchor_module({"anchorM1": self.hip_ctl, "anchorM2": anchorM2Tgt})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(
            self.fkCtl + self.ikCtl + [self.setting, self.cog_ctl, self.cog_gmb]
        )
        self.setup_space()
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
