import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common, utils_node as ut, maths


class SpineBp(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)

        self.fkJntNum = self.guideAttr("fkJntNum")
        self.rbnBones = self.guideAttr("rbnBones")
        self.rbnJntNum = self.guideAttr("rbnJntNum")

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = DagNode(rID + "_line_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")

        self.cog_ctl = None
        self.cog_gmb = None
        self.hip_ctl = None
        self.mid_ctl = None
        self.chest_ctl = None
        self.ikCtls = None
        self.fkCtls = None
        self.setting = None
        self.ctlJnts = None
        self.bindJnts = []
        self.fkJnts = []
        self.rbJnts = []
        self.rbSrf = None

    def genSk(self):
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CrvNode("setting", pf=rID, shape="cross", scale=rSz * 5, top=1)
        self.cog_ctl = CrvNode("cog_ctl", pf=rID, shape="cog2", scale=rSz * 8)
        self.chest_ctl = CrvNode("chest_ctl", pf=rID, scale=rSz * 7)
        self.mid_ctl = CrvNode("mid_ctl", shape="square", pf=rID, scale=rSz * 7)
        self.hip_ctl = CrvNode("hip_ctl", pf=rID, scale=rSz * 7)
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
        self.rigSize = CrvNode(self.LINE_GUIDE).length / 100
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.post_setup()

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        self.fkJnts = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=self.fkJntNum,
            pf=rID,
            aimV=(0, 1, 0),
            upV=(1, 0, 0),
            wuV=(1, 0, 0),
            size=rSz * 2,
            color=6,
            p=self.SKL_DATA,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnts[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        self.fkCtls = []
        for i, j in enumerate(self.fkJnts[:-1]):
            c = CrvNode(
                f"{i + 1}_fkc",
                pf=rID,
                shape="cubeR",
                scale=maths.mul(10, 1, 10, rSz),
                color=22,
            )
            self.fkCtls.append(c)
        self.build_fk_with_ctl2(self.fkJnts[1:], self.fkCtls[1:], p=self.CTL_DATA)
        #
        #   modify hipCtl specific for hip rotation
        #
        hipCtl = self.fkCtls[0]
        hipCtl(p=self.CTL_DATA, addOfs=1, color=20)
        hipCtl.offset.snapAlignTo(self.fkJnts[1], self.fkJnts[0])
        hipCtl.cv_move(0, rSz * -20, 0)
        hipCtl.cstPar(self.fkJnts[0], mo=1)
        self.bindJnts = self.fkJnts

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()

        mg = self.master_guide
        self.hip_ctl.snapAlignTo(self.fkJnts[0], mg)
        self.mid_ctl.snapAlignTo(self.MD_GUIDE, mg)
        self.chest_ctl.snapAlignTo(self.fkJnts[-1], mg)
        self.cog_ctl.snapAlignTo(self.hip_ctl, mg)

        self.setting.alignTo(self.cog_ctl, p=self.CTL_DATA)
        self.cog_ctl.cstPar(self.setting, mo=1)

        self.cog_gmb = CrvNode(self.cog_ctl).add_gimbal()
        self.cog_ctl | self.CTL_DATA
        self.cog_gmb.cstPar(self.fkCtls[0].offset, mo=1)
        self.cog_gmb.cstPar(self.fkCtls[1].offset, mo=1)

        self.hip_ctl | self.fkCtls[0]
        self.chest_ctl | self.fkCtls[-1]
        self.mid_ctl | self.fkCtls[len(self.fkCtls) // 2]
        self.hip_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp(count=2)
        self.chest_ctl.addOffsetGrp()
        self.cog_ctl.addOffsetGrp()
        self.hip_ctl.a.ry @ self.chest_ctl.a.ry >> self.mid_ctl.offset.a.ry

        self.chest_ctl.cstOri(self.fkJnts[-1], mo=1)
        self.cog_gmb.cstSca(self.fkJnts[0])
        self.fkJnts[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        if self.rbnBones:
            self.rbSrf = SrfNode.buildRbSrf(
                pf=rID,
                crv=self.LINE_GUIDE,
                normal=1,
                snap=self.rootJ,
                spans=self.fkJntNum - 1,
                p=self.RIG_DATA,
            )
            self.rigNode.setMsg({"rbSrf": self.rbSrf})

            self.ctlJnts = self.build_ctl_jnt(
                [self.hip_ctl, self.mid_ctl, self.chest_ctl], r=rSz * 10
            )
            self.rbSrf.weightTo(self.ctlJnts, chain=0, mi=2, dr=6)
            self.rbJnts = SrfNode.buildRbJnt(
                self.rbnJntNum,
                pf=rID,
                size=rSz,
                surf=self.rbSrf,
                rigData=self.RIG_DATA,
                sklData=self.SKL_DATA,
            )
            self.volume_setup()

            self.bindJnts = self.rbJnts

        for ctl in self.fkCtls:
            self.cog_ctl.a.s >> ctl.offset.a.s

        self.masterC.a.globalScale >> self.SKL_DATA.a.s
        self.ikCtls = [self.hip_ctl, self.mid_ctl, self.chest_ctl]

    def volume_setup(self):
        """Scale ribbon joints according to length of the surface"""

        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf)
        d = arcLD.a.arcLengthInV
        D = d.get()

        volume = self.setting.a.add("volume", min=0, dv=1)
        self.chest_ctl.a.add("volume", proxy=volume)
        self.hip_ctl.a.add("volume", proxy=volume)

        # keys for volume squash
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.rbnJntNum - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.rbnJntNum - 1, v=0)
        mc.setAttr(volGraph, l=1)

        for i in range(self.rbnJntNum):

            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)

            ratio = (scaleFix * D / d) ** (fc.a.varying * volume)
            ratio >> self.rbJnts[i].a.sy
            ratio >> self.rbJnts[i].a.sz

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtls", min=0, max=1, dv=1, k=0),
            onList=self.fkCtls,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("ikCtls", min=0, max=1, dv=1, k=0),
            onList=self.ikCtls,
        )
        mc.hide(self.ctlJnts, self.fkJnts)

    def setup_channel(self):
        self.setting.a.showAttr()
        for ctl in [
            self.cog_ctl,
            self.cog_gmb,
            self.hip_ctl,
            self.mid_ctl,
            self.chest_ctl,
        ] + self.fkCtls:
            ctl.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        for ctl in self.fkCtls + self.ikCtls + [self.cog_ctl, self.cog_gmb]:
            ctl.a.ro.set(2)

    def setup_space(self):
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_lwrBody": self.hip_ctl})
        self.rigNode.setMsg({"space_uprBody": self.chest_ctl})

    def setup_anchor(self):
        anchorM2Tgt = self.rbJnts[-1] if self.rbnBones else self.chest_ctl
        self.setup_anchor_module({"anchorM1": self.hip_ctl, "anchorM2": anchorM2Tgt})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_ratio(self.bindJnts, 6)

        self.add_ctl_set(
            self.fkCtls + self.ikCtls + [self.setting, self.cog_ctl, self.cog_gmb]
        )
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
