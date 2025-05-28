import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color


class Tail(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_BONE_NUM = self.master_guide.a.fkBoneNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CurveNode(rID + "_line_guide")
        self.RT_GUIDE = CurveNode(rID + "_rt_guide")
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)
        self.FK_PART = GroupNode("FK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)
        self.IK_PART = GroupNode("IK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        self.setting = None
        self.fkCtl = []
        self.fkJnt = []
        self.ikCtl = []
        self.ikJnt = []
        self.ikOffsetCtl = []
        self.ikOffsetJnt = []
        self.rbJnt = []
        self.rbSrf1 = None
        self.rbSrf2 = None
        self.REVERSE = 0
        self.bindJnts = []

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="sphere2",
            scale=rSz * 3,
            color=25,
            top=1,
            p=self.CTL_DATA,
        )
        self.setting.a.add("stretchy", min=0, max=1)
        moduleScale = self.setting.a.add("moduleScale", min=0.01, dv=1)
        moduleScale >> self.IK_PART.a.s
        moduleScale >> self.FK_PART.a.s
        moduleScale >> self.PRX_GRP.a.s

        self.rigNode.setMsg(
            {
                "setting": self.setting,
            }
        )

    def build(self):
        rID, rSz, xDr = self.getMyVar()
        self.build_module()
        self.rbSrf1 = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=1,
            spans=self.FK_BONE_NUM,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )

        self.rbSrf2 = self.rbSrf1.duplicate()
        self.rigNode.setMsg({"rbSrf": self.rbSrf2})

        self.build_ctl()
        self.build_ik()
        self.build_fk()
        crvLenRatio, self.rbJnts = self.build_motionPath_ribbon(
            rbSrf=self.rbSrf2,
            jntNum=self.RBN_JNT_NUM,
            scaleAttr=self.setting.a.moduleScale,
            stretchyAttr=self.setting.a.stretchy,
        )
        self.bindJnts = self.rbJnts
        self.post_setup()

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()
        self.ikJnt = JointNode.createJntFrCrv(
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

        for i in range(0, 5):
            ctl = CurveNode(
                f"{i}_ikc",
                pf=rID,
                shape="sphere2",
                scale=rSz * 5,
                align=self.ikJnt[i],
                addOfs=1,
                color=20,
                p=self.IK_PART,
            )
            self.ikJnt[i] | ctl
            self.ikCtl.append(ctl)
            if i > 0:
                ctl.offset | self.ikCtl[0]

            self.rigNode.setMsg({f"ikc{i}": ctl})

        SurfNode(self.rbSrf1).weightTo(self.ikJnt, mi=4, dr=6, chain=0)

        self.setting.snapTo(self.ikCtl[0], offset=(0, rSz * 30, 0))
        self.ikCtl[0].cstPar(self.setting, mo=1)

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        # ------------------------------------------
        # Build fkJ
        # ------------------------------------------
        self.fkJnt = JointNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=self.FK_BONE_NUM + 1,
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz,
            p=self.SKL_DATA,
        )
        # ------------------------------------------
        # Build pins for fkCtl
        # ------------------------------------------
        coord = []
        for i in range(self.FK_BONE_NUM + 1):
            coord.append((0.5, i / self.FK_BONE_NUM))

        pin, pinXf = common.nlRivet(geo=self.rbSrf1, coordList=coord, p=self.RIG_DATA)

        # ------------------------------------------
        # Build fkCtls
        # ------------------------------------------
        for i in range(self.FK_BONE_NUM + 1):
            ctl = CurveNode(
                f"{i}_fkc",
                pf=rID,
                shape="circleC",
                up="z",
                scale=rSz,
                align=self.fkJnt[i],
            )
            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)

        # ------------------------------------------
        # Build group chain
        # ------------------------------------------
        chainGrps = []
        lastGrp = self.FK_PART
        for i in range(self.FK_BONE_NUM + 1):
            grp = GroupNode(f"{i}_chainGrp", pf=rID, align=self.fkCtl[i], p=lastGrp)
            pinXf[i].cstPar(grp, mo=1)
            chainGrps.append(grp)
            lastGrp = grp

        self.build_fk_with_ctl3(self.fkJnt, self.fkCtl, p=self.FK_PART)

        # ------------------------------------------
        # Cnnnect chain grps to fkCtl offset
        # ------------------------------------------
        for i in range(self.FK_BONE_NUM + 1):
            chainGrps[i].a.t >> self.fkCtl[i].offset.a.t
            chainGrps[i].a.r >> self.fkCtl[i].offset.a.r
        # ------------------------------------------
        # Build lowest ikCtl layer
        # ------------------------------------------
        for i in range(self.FK_BONE_NUM + 1):
            ctl = CurveNode(
                f"{i}_offset_ikc",
                pf=rID,
                shape="sphere2",
                scale=rSz / 2,
                align=self.fkCtl[i],
                p=self.fkCtl[i],
                move=(0, rSz * 18, 0),
            )
            jnt = JointNode(f"{i}_offset_ikj", pf=rID, align=ctl, p=ctl, color=13)

            self.ikOffsetCtl.append(ctl)
            self.ikOffsetJnt.append(jnt)

        SurfNode(self.rbSrf2).weightTo(self.ikOffsetJnt, chain=0, mi=2, dr=6)

        self.isolate_align(self.ikCtl[0], [self.ikCtl[0].offset, self.masterC])

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        # scalable
        self.ikCtl[0].a.s >> self.FK_PART.a.s

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a.add("ikCtl", k=0, min=0, max=1, dv=1),
            onList=[self.ikCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtl", k=0, min=0, max=1, dv=1),
            onList=[self.fkCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("subCtl", k=0, min=0, max=1, dv=0),
            onList=self.ikOffsetCtl,
        )
        mc.hide(self.ikJnt, self.fkJnt, self.ikOffsetJnt, self.rbJnt)

    def setup_channel(self):
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

    def setup_rotate_order(self):
        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP)

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.ikCtl + self.fkCtl + self.ikOffsetCtl + [self.setting])
        self.setup_anchor_module({"anchorF1": self.ikCtl[0].offset.offset})
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
