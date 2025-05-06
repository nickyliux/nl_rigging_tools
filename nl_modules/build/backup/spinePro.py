import maya.cmds as mc
import logging
from nl_modules.build import rig_module
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ribbon_node import RibbonNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


class SpinePro(rig_module.RigModule):
    def __init__(self, rigNode):

        super().__init__(rigNode)

        self.FK_JNT_NUM = self.master_guide.a.fkJntNum.get()
        # self.BIND_JNT_NUM = self.master_guide.a.bindJntNum.get()
        self.BIND_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        self.setting = None
        self.spine_RB = None

        self.cog_ctl = None
        self.cog_gmb = None
        self.pelvis_fkc = None
        self.torso_fkc = None
        self.chest_fkc = None
        self.shoulder_fkc = None

        self.lw_ikc = None
        self.md_ikc = None
        self.up_ikc = None

        self.fkJnt = None
        self.ikCtl = None
        self.fkCtl = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["st", "ed"])

    def build(self):

        self.build_module()

        s = self.rigSize

        DY = Color.D_YELLOW

        self.setting = CurveNode(
            "setting", pf=self.rigID, shape="sphere", scale=s * 0.4
        )
        self.setting.a.message >> self.rigNode.a.setting

        self.cog_ctl = CurveNode(
            "cog_ctl", pf=self.rigID, shape="cog", scale=s * 8, color=DY
        )
        self.cog_ctl.a.message >> self.rigNode.a.cog_ctl

        self.up_ikc = CurveNode(
            "up_ikc", pf=self.rigID, shape="cube", scale=s * 7, color=DY
        )
        self.up_ikc.cv_scale(1.2, 0.3, 1)
        self.up_ikc.a.message >> self.rigNode.a.up_ikc

        self.md_ikc = CurveNode(
            "md_ikc", pf=self.rigID, shape="square", scale=s * 4, color=DY
        )
        self.md_ikc.a.message >> self.rigNode.a.md_ikc

        self.lw_ikc = CurveNode(
            "lw_ikc", pf=self.rigID, shape="cube", scale=s * 7, color=DY
        )
        self.lw_ikc.cv_scale(1.2, 0.3, 1)
        self.lw_ikc.a.message >> self.rigNode.a.lw_ikc

        self.ikCtl = [
            self.lw_ikc,
            self.md_ikc,
            self.up_ikc,
        ]

        self.build_fk()
        self.build_spine()
        self.build_ribbon()
        self.post_setup()

    def build_fk(self):
        logging.info(self.rigID)

        D = self.rootJ.childrenJt[0].a.ty.get()
        s = self.rigSize

        self.fkJnt = []
        parentJ = None
        for i in range(self.FK_JNT_NUM):
            j = JointNode("fkj_#", pf=self.rigID)
            self.fkJnt.append(j)
            if parentJ:
                j | parentJ
            parentJ = j

        self.fkJnt[0].alignTo(self.rootJ)
        self.fkJnt[0] | self.SKL_DATA

        for j in self.fkJnt[1:]:
            j.a.ty.set(D / (self.FK_JNT_NUM - 1))

        self.fkCtl = []
        for j in self.fkJnt[:-1]:
            c = CurveNode(
                "fkc_#",
                pf=self.rigID,
                scale=s * 4,
            )
            # c.rotate(90, 0, 0)
            self.fkCtl.append(c)

        self.build_fk_with_ctl2(self.fkJnt[1:], self.fkCtl[1:], p=self.CTL_DATA)

        self.fkCtl[0].color = Color.RED
        self.fkCtl[0].snapAlignTo(self.fkJnt[1], self.fkJnt[0])
        self.fkCtl[0].addOffsetGrp()
        self.fkCtl[0].cv_move(0, s * -3, 0)

        self.rootJ.delete()
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_spine(self):

        s = self.rigSize
        logging.info(self.rigID)

        mG = self.master_guide
        self.lw_ikc.snapAlignTo(self.fkJnt[0], mG)
        self.md_ikc.snapAlignTo(self.fkJnt[-1], mG)
        self.up_ikc.snapAlignTo(self.fkJnt[-1], mG)
        self.cog_ctl.snapAlignTo(self.lw_ikc, mG)
        self.setting.alignTo(self.cog_ctl, offset=(0, 0, -s * 10))

        (
            self.fkCtl[0].offset,
            self.fkCtl[1].offset,
            self.setting,
        ) | self.cog_ctl | self.CTL_DATA

        common.cstMulti(self.up_ikc, self.lw_ikc, self.md_ikc, cstType="poi", delete=1)

        self.cog_gmb = CurveNode(self.cog_ctl).addGimbal()

        self.lw_ikc | self.fkCtl[0]
        self.up_ikc | self.fkCtl[-1]
        self.md_ikc | self.fkCtl[len(self.fkCtl) // 2]

        self.lw_ikc.addOffsetGrp()
        self.md_ikc.addOffsetGrp(count=2)
        self.up_ikc.addOffsetGrp()
        self.cog_ctl.addOffsetGrp()
        self.setting.addOffsetGrp()

        self.lw_ikc.a.ry @ self.up_ikc.a.ry >> self.md_ikc.offset.a.ry

        self.cog_gmb.cstPar(self.rootJ)

        # self.followAlignTwo(self.upr_fkc, [self.upr_fkc.parent, self.masterC], 1)

    def build_ribbon(self):
        logging.info(self.rigID)

        dummyG1 = GroupNode("g#", snap=self.rootJ)
        dummyG2 = GroupNode("g#", snap=self.rootJ.allChildren[-1])
        dummyG2.cstAim(dummyG1, keep=0, worldUpVector=(0, 0, 1))
        dummyG2 | dummyG1

        spine_RB = RibbonNode(
            dummyG1,
            pf=self.rigID,
            rbJNum=self.BIND_JNT_NUM,
            forSpine=1,
            scaleFix=self.masterC.a["globalScale"],
            p=self.RIG_DATA,
        )

        mc.delete(dummyG1)
        up_loc = spine_RB.end_loc
        md_loc = spine_RB.mid_loc
        lw_loc = spine_RB.stt_loc

        self.up_ikc.cstParSca(up_loc, mo=1)
        self.lw_ikc.cstParSca(lw_loc, mo=1)
        # self.fkCtl[len(self.fkCtl) // 2].cstPar(self.md_ikc.addOffsetGrp(), mo=1)

        self.md_ikc.cstParSca(spine_RB.mid_sknJ, mo=1)
        self.setting.a.add("keepVol", min=0, max=2, dv=1, k=0) >> spine_RB.volPower

        self.spine_RB = spine_RB
        self.addBindJntSet(spine_RB.rbJnt)

    def post_setup(self):

        # [c.a.lockHide(t=1, r=1, s=1) for c in (self.fkCtl + self.ikCtl)]
        # self.cog_ctl.a.lockHide(t=1, r=1, s=1)
        # self.pelvis_fkc.a.lockHide(t=1, r=1, s=1)
        # self.setting.a.lockHide()

        for c in self.fkCtl + self.ikCtl + [self.cog_ctl, self.cog_gmb]:
            c.a.ro.set(3)

        self.addCtlSet(
            self.fkCtl + self.ikCtl + [self.setting, self.cog_ctl, self.cog_gmb]
        )

        self.setup_anchor()

        self.post_module()

    def setup_anchor(self):
        s = self.rigSize
        B = Color.L_BLUE
        anchorM1 = LocNode(self.rigID + "_anchorM1", size=s, color=B, p=self.masterC)
        anchorM1.a.message >> self.rigNode.a.anchorM1
        anchorM2 = LocNode(self.rigID + "_anchorM2", size=s, color=B, p=self.masterC)
        anchorM2.a.message >> self.rigNode.a.anchorM2
        self.lw_ikc.cstPar(anchorM1)
        self.up_ikc.cstPar(anchorM2)
        anchorM1.hide()
        anchorM2.hide()
