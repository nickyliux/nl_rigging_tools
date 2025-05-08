import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


class TailFk(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_BONE_NUM = self.master_guide.a.fkBoneNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CurveNode(rID + "_line_guide")
        self.RT_GUIDE = CurveNode(rID + "_rt_guide")
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)

        self.setting = None
        self.fkCtl = []
        self.fkJnt = []
        self.rbJnt = []
        self.bindJnts = []
        self.rbSrf = None
        self.allClusters = []
        self.REVERSE = 0

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build(self):
        """
        Logic for ribbon tail
            FK -> rbSrf by skin
            rbSrf -> joints by pin
        """
        rID, rSz, xDr = self.getMyVar()

        self.build_module()
        self.rbSrf = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=1,
            spans=self.FK_BONE_NUM,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_fk()

        if self.RBN_BONES:
            self.rbJnt = SurfNode.buildRbJnt(
                self.RBN_JNT_NUM,
                pf=rID,
                surf=self.rbSrf,
                size=rSz,
                rigData=self.RIG_DATA,
                sklData=self.SKL_DATA,
            )
            self.bindJnts = self.rbJnt
        else:
            mc.delete(self.allClusters, self.rbSrf)
            self.bindJnts = self.fkJnt

        self.post_setup()

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="diamond",
            scale=rSz * 3,
            color=Color.BLACK,
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
        rID, rSz, xDr = self.getMyVar()

        cluName = rID + "clu_#"
        self.fkJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            jntNum=self.FK_BONE_NUM + 1,
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz * 2,
            color=Color.BLUE,
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
            ctl = CurveNode(
                f"{i}_fkc_#",
                pf=rID,
                shape="circleC",
                up="z",
                scale=rSz * 1.5,
                align=currJnt,
            )
            ctl.cstPar(clu, mo=1)

            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)
            self.allClusters.append(clu)

        self.build_fk_with_ctl3(self.fkJnt, self.fkCtl, p=self.CTL_DATA)

        # ADD FOLLOW ALIGN ON 1 ST FK CTL
        self.isolate_align(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC])

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rootJ | self.SKL_DATA

        self.rigNode.setMsg({"rootJ": self.rootJ})

        cluGrp1 = GroupNode("cluGrp1", pf=rID, p=self.RIG_DATA)
        [self.masterC.a["globalScale"] >> cluGrp1.a[x] for x in ["sx", "sy", "sz"]]
        cluGrp2 = GroupNode("cluGrp2", pf=rID, p=cluGrp1)
        [x | cluGrp2 for x in self.allClusters]

        # scalable
        self.fkCtl[0].a.s >> self.SKL_DATA.a.s
        self.fkCtl[0].a.s >> self.PRX_GRP.a.s
        self.fkCtl[0].a.s >> cluGrp2.a.s

        self.setting.snapTo(self.fkCtl[0])
        self.setting.addOffsetGrp(snapIt=1)
        self.setting.a.t.set(0, rSz * 50, 0)
        self.fkCtl[0].cstPar(self.setting.offset, mo=1)

        self.setting.a.add("tailScale", min=0.01, dv=1) >> self.fkCtl[0].a.s

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtl", k=0, min=0, max=1, dv=1),
            onList=[self.fkCtl[0]],
        )
        if self.RBN_BONES:
            mc.hide(self.allClusters)

    def setup_channel(self):
        for ctl in self.fkCtl:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

    def setup_rotate_order(self):
        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(scale=1, p=self.PRX_GRP)

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.fkCtl)
        self.setup_anchor_module({"anchorF1": self.fkCtl[0].offset})
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
