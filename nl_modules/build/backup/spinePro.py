import logging
import maya.cmds as mc
from nl_modules.build import rig_module
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.rbn_node import RbnNode
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
        self.ctls_ik = None
        self.ctls_fk = None

    def gen_sk(self):
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["st", "ed"])

        self.rootJ = root_list[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build(self):

        self.build_pre_module()

        s = self.rigSize

        DY = Color.D_YELLOW

        self.setting = CrvNode("setting", pf=self.rigID, shape="sphere", scale=s * 0.4)
        self.setting.a.message >> self.rigNode.a.setting

        self.cog_ctl = CrvNode(
            "cog_ctl", pf=self.rigID, shape="cog", scale=s * 8, color=DY
        )
        self.cog_ctl.a.message >> self.rigNode.a.cog_ctl

        self.up_ikc = CrvNode(
            "up_ikc", pf=self.rigID, shape="cube", scale=s * 7, color=DY
        )
        self.up_ikc.cv_scale(1.2, 0.3, 1)
        self.up_ikc.a.message >> self.rigNode.a.up_ikc

        self.md_ikc = CrvNode(
            "md_ikc", pf=self.rigID, shape="squareR", scale=s * 4, color=DY
        )
        self.md_ikc.a.message >> self.rigNode.a.md_ikc

        self.lw_ikc = CrvNode(
            "lw_ikc", pf=self.rigID, shape="cube", scale=s * 7, color=DY
        )
        self.lw_ikc.cv_scale(1.2, 0.3, 1)
        self.lw_ikc.a.message >> self.rigNode.a.lw_ikc

        self.ctls_ik = [
            self.lw_ikc,
            self.md_ikc,
            self.up_ikc,
        ]

        self.build_fk()
        self.build_spine()
        self.build_ribbon()
        self.build_post()

    def build_fk(self):
        logging.info(self.rigID)

        D = self.rootJ.childrenJt[0].a.ty.get()
        s = self.rigSize

        self.fkJnt = []
        parentJ = None
        for i in range(self.FK_JNT_NUM):
            j = JntNode("fkj_#", pf=self.rigID)
            self.fkJnt.append(j)
            if parentJ:
                j | parentJ
            parentJ = j

        self.fkJnt[0].alignTo(self.rootJ)
        self.fkJnt[0] | self.SKL_DATA

        for j in self.fkJnt[1:]:
            j.a.ty.set(D / (self.FK_JNT_NUM - 1))

        self.ctls_fk = []
        for j in self.fkJnt[:-1]:
            c = CrvNode(
                "fkc_#",
                pf=self.rigID,
                scale=s * 4,
            )
            self.ctls_fk.append(c)

        self.build_fk_with_ctl2(self.fkJnt[1:], self.ctls_fk[1:], p=self.CTL_DATA)

        self.ctls_fk[0].color = Color.RED
        self.ctls_fk[0].snapAlignTo(self.fkJnt[1], self.fkJnt[0])
        self.ctls_fk[0].addOffsetGrp()
        self.ctls_fk[0].cv_move(0, s * -3, 0)

        self.rootJ.delete()
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_spine(self):

        s = self.rigSize
        logging.info(self.rigID)

        mg = self.master_guide
        self.lw_ikc.snapAlignTo(self.fkJnt[0], mg)
        self.md_ikc.snapAlignTo(self.fkJnt[-1], mg)
        self.up_ikc.snapAlignTo(self.fkJnt[-1], mg)
        self.cog_ctl.snapAlignTo(self.lw_ikc, mg)
        self.setting.alignTo(self.cog_ctl, ofs=(0, 0, -s * 10))

        (
            self.ctls_fk[0].offset,
            self.ctls_fk[1].offset,
            self.setting,
        ) | self.cog_ctl | self.CTL_DATA

        common.cstMulti(self.up_ikc, self.lw_ikc, self.md_ikc, cstType="poi", delete=1)

        self.cog_gmb = CrvNode(self.cog_ctl).add_gimbal()

        self.lw_ikc | self.ctls_fk[0]
        self.up_ikc | self.ctls_fk[-1]
        self.md_ikc | self.ctls_fk[len(self.ctls_fk) // 2]

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

        dummyG1 = GrpNode("g#", snap=self.rootJ)
        dummyG2 = GrpNode("g#", snap=self.rootJ.allChildren[-1])
        dummyG2.cstAim(dummyG1, keep=0, worldUpVector=(0, 0, 1))
        dummyG2 | dummyG1

        spine_RB = RbnNode(
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
        # self.ctls_fk[len(self.ctls_fk) // 2].cstPar(self.md_ikc.addOffsetGrp(), mo=1)

        self.md_ikc.cstParSca(spine_RB.mid_sknJ, mo=1)
        self.setting.a.add("keepVol", min=0, max=2, dv=1, k=0) >> spine_RB.volPower

        self.spine_RB = spine_RB
        self.add_bind_jnt_set(spine_RB.rbJnt)

    def build_post(self):

        # [c.a.lockHide(t=1, r=1, s=1) for c in (self.ctls_fk + self.ctls_ik)]
        # self.cog_ctl.a.lockHide(t=1, r=1, s=1)
        # self.pelvis_fkc.a.lockHide(t=1, r=1, s=1)
        # self.setting.a.lockHide()

        for c in self.ctls_fk + self.ctls_ik + [self.cog_ctl, self.cog_gmb]:
            c.a.ro.set(3)

        self.add_ctl_set(
            self.ctls_fk + self.ctls_ik + [self.setting, self.cog_ctl, self.cog_gmb]
        )

        self.setup_anchor()

        self.build_post_module()

    def setup_anchor(self):
        s = self.rigSize
        B = Color.L_BLUE
        anchorP1 = LocNode(self.rigID + "_anchorP1", size=s, color=B, p=self.masterC)
        anchorP1.a.message >> self.rigNode.a.anchorP1
        anchorP2 = LocNode(self.rigID + "_anchorP2", size=s, color=B, p=self.masterC)
        anchorP2.a.message >> self.rigNode.a.anchorP2
        self.lw_ikc.cstPar(anchorP1)
        self.up_ikc.cstPar(anchorP2)
        anchorP1.hide()
        anchorP2.hide()
