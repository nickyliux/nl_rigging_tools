import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


class TailFk(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_BONE_NUM = self.master_guide.a.fkBoneNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.get_short_form()
        self.LINE_GUIDE = CrvNode(rID + "_line_guide")
        self.RT_GUIDE = CrvNode(rID + "_rt_guide")

        self.setting = None
        self.ctls_fk = []
        self.fkJnt = []
        self.rbJnt = []
        self.jnts_bind = []
        self.rbSrf = None
        self.allClusters = []
        self.REVERSE = 0

    def gen_sk(self):
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])

        self.rootJ = root_list[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build(self):
        """
        Logic for ribbon tail
            FK -> rbSrf by skin
            rbSrf -> joints by pin
        """
        rID, rSz, xDr = self.get_short_form()

        self.build_pre_module()
        self.rbSrf = SrfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=-1,
            spans=self.FK_BONE_NUM,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_fk()

        if self.RBN_BONES:
            self.rbJnt = SrfNode.buildRbJnt(
                self.RBN_JNT_NUM,
                pf=rID,
                surf=self.rbSrf,
                size=rSz,
                rigData=self.RIG_DATA,
                jntGrp=self.JNT_DATA,
            )
            self.jnts_bind = self.rbJnt
        else:
            mc.delete(self.allClusters, self.rbSrf)
            self.jnts_bind = self.fkJnt

        self.build_post()

    def build_ctl(self):
        rID, rSz, xDr = self.get_short_form()

        self.setting = CrvNode(
            "setting",
            pf=rID,
            shape="diamond",
            scale=rSz * 3,
            color=1,
            p=self.CTL_DATA,
            top=1,
            width=2,
        )
        self.rigNode.setMsg(
            {
                "setting": self.setting,
            }
        )

    def build_fk(self):
        rID, rSz, xDr = self.get_short_form()
        cluName = rID + "clu_#"

        self.fkJnt = JntNode.createJntsFrCrv(
            self.LINE_GUIDE,
            num=self.FK_BONE_NUM + 1,
            pf=rID,
            aimV=(0, 0, -1),
            size=rSz * 2,
            color=6,
        )
        for i in range(0, self.FK_BONE_NUM + 1):
            currJnt = self.fkJnt[i]

            cv = f"{self.rbSrf}.cv[*][{i+1}]"
            if i == 0:
                cv = f"{self.rbSrf}.cv[*][0:1]"
            elif i == self.FK_BONE_NUM:
                cv = (
                    f"{self.rbSrf}.cv[*][{self.FK_BONE_NUM + 1}:{self.FK_BONE_NUM + 2}]"
                )
            clu = DagNode(
                mc.cluster(cv, n=cluName)[1],
            )
            ctl = CrvNode(
                f"{i}_fkc_#",
                pf=rID,
                shape="circleC",
                up="z",
                scale=rSz * 1.5,
                align=currJnt,
            )
            ctl.cstPar(clu, mo=1)

            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.ctls_fk.append(ctl)
            self.allClusters.append(clu)

        self.build_fk_with_ctl3(self.fkJnt, self.ctls_fk, p=self.CTL_DATA)

        # ADD FOLLOW ALIGN ON 1 ST FK CTL
        self.isolate_align(self.ctls_fk[0], [self.ctls_fk[0].parent, self.masterC])

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rootJ | self.JNT_DATA

        self.rigNode.setMsg({"rootJ": self.rootJ})

        cluGrp1 = GrpNode("cluGrp1", pf=rID, p=self.RIG_DATA)
        [self.masterC.a["globalScale"] >> cluGrp1.a[x] for x in ["sx", "sy", "sz"]]
        cluGrp2 = GrpNode("cluGrp2", pf=rID, p=cluGrp1)
        [x | cluGrp2 for x in self.allClusters]

        # scalable
        self.ctls_fk[0].a.s >> self.JNT_DATA.a.s
        self.ctls_fk[0].a.s >> cluGrp2.a.s

        self.setting.snapTo(self.ctls_fk[0])
        self.setting.addOffsetGrp(snapIt=1)
        self.setting.a.t.set(0, rSz * 50, 0)
        self.ctls_fk[0].cstPar(self.setting.offset, mo=1)

        self.setting.a.add("tailScale", min=0.01, dv=1) >> self.ctls_fk[0].a.s

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtl", k=0, min=0, max=1, dv=1),
            onList=[self.ctls_fk[0]],
        )
        if self.RBN_BONES:
            mc.hide(self.allClusters)

    def setup_channel(self):
        for ctl in self.ctls_fk:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

    def setup_rotate_order(self):
        for ctl in self.ctls_fk:
            ctl.a.ro.set(3)

    def build_post(self):
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_ctl_set(self.ctls_fk)
        self.setup_anchor_module({"anchorS1": self.ctls_fk[0].offset})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
