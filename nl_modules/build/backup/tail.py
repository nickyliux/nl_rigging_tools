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


class Tail(rig_module.RigModule):
    def __init__(self, rigNode):

        super().__init__(rigNode)

        self.mg_ctlNum = self.master_guide.a.ctlNum.get()
        self.mg_jntPerCtl = self.master_guide.a.jntPerCtl.get()

        self.fkCtlGrp = None
        self.fkCtl = None
        self.bindJGrp = None

        self.setting = None

    def genGuideSk(self):
        self.genSk_module(["st", "ed"])

    def build(self):

        self.build_module()

        # self.setting = CurveNode(self.rigID + "_setting", shape="sphere", scale=s * 0.3)
        # self.setting.a.message >> self.rigNode.a.setting

        self.build_fk()
        self.post_setup()

    def build_fk(self):
        logging.info(self.rigID)

        D = self.rootJ.o.distanceTo(self.rootJ.childrenJt[0])

        jntNum = self.mg_ctlNum * self.mg_jntPerCtl
        SEG_LEN = D / jntNum

        # ----------------------------------------------
        # Create Joints
        #
        # For c=4, p=2, joints = 4 * 2 + 1 = 9
        # For c=3, p=3, joints = 3 * 3 + 1 = 10
        # ----------------------------------------------
        pre = None
        self.bindJGrp = []
        for x in range(jntNum + 1):
            g = GroupNode(f"{self.rigID}_{x}_jnt_ofs", p=pre)
            pre = g
            JointNode(f"{self.rigID}_{x}_jnt", p=g, color=Color.BLACK)
            g.a.tz.set(-SEG_LEN)
            self.bindJGrp.append(g)

        self.bindJGrp[0].a.tz.set(0)
        [g.freezeXf(r=0) for g in self.bindJGrp]

        # ----------------------------------------------
        # Create Controls
        # ----------------------------------------------
        pre = None
        self.fkCtlGrp = []
        self.fkCtl = []
        for x in range(jntNum):
            g = GroupNode(f"{self.rigID}_{x}_fkc_ofs", p=pre)
            pre = g
            if x % self.mg_jntPerCtl == 0:
                c = CurveNode(
                    f"{self.rigID}_{x}_fkc", up="z", scale=self.rigSize * 2, p=g
                )
                self.fkCtl.append(c)
                pre = c
            g.a.tz.set(-SEG_LEN)
            self.fkCtlGrp.append(g)

        self.fkCtlGrp[0].a.tz.set(0)
        [g.freezeXf(r=0) for g in self.fkCtlGrp]

        # ----------------------------------------------
        # Connect Chain
        # ----------------------------------------------
        for x in range(jntNum):
            if x % self.mg_jntPerCtl == 0:
                c = self.fkCtlGrp[x].children[0]
                for i in range(1, self.mg_jntPerCtl):
                    c.a.r >> self.fkCtlGrp[x + i].a.r
                    c.a.tz >> self.fkCtlGrp[x + i].a.tz

                c.a.t >> self.bindJGrp[x].a.t
                c.a.r >> self.bindJGrp[x].a.r
                c.a.s >> self.bindJGrp[x].a.s
                for i in range(1, self.mg_jntPerCtl):
                    c.a.r >> self.bindJGrp[x + i].a.r
                    c.a.tz >> self.bindJGrp[x + i].a.tz
                # for last ctl
                if x == self.mg_jntPerCtl * (self.mg_ctlNum - 1):
                    c.a.r >> self.bindJGrp[x + 2].a.r
                    c.a.tz >> self.bindJGrp[x + 2].a.tz

        self.fkCtlGrp[0] | self.CTL_DATA
        self.bindJGrp[0] | self.RIG_DATA

        self.fkCtlGrp[0].alignTo(self.rootJ)
        self.bindJGrp[0].addOffsetGrp().alignTo(self.rootJ)

    def anchor_setup(self):
        s = self.rigSize
        anchorF1 = LocNode(self.rigID + "_anchorF1", size=s, color=Color.PINK)
        anchorF1.a.message >> self.rigNode.a.anchorF1
        anchorF1.alignTo(self.rootJ)
        anchorF1.cstParSca(self.fkCtlGrp[0], mo=1)
        anchorF1.cstParSca(self.bindJGrp[0].offset, mo=1)
        anchorF1 | self.masterC

    def post_setup(self):

        # Proxy Mesh
        for j in self.bindJGrp:
            JointNode(j.childrenJt[0]).addProxyMesh(size=self.rigSize * 2)

        # Vis Enum
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.RIG_DATA.a.v

        for c in self.fkCtl:
            # c.a.lockHide(t=1, r=1)
            # c.a.tx.lockHide()
            # c.a.ty.lockHide()
            c.a.ro.set(3)

        mc.delete(self.rootJ)

        # SET
        # self.addBindJSet(self.bindJ)
        self.addCtlSet(self.fkCtl, pf=self.rigID)

        self.anchor_setup()

        self.post_module()
