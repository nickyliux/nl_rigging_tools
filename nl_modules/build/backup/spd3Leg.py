import maya.cmds as mc
import nl_modules.build.rig_module as rig_module
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.utils import common
import logging

# import maya.mel as mel


class Spd3Leg(rig_module.RigModule):
    def __init__(self, rigNode):
        """
        CHR
        |____RIG
             |____SETUP
                  |____FK_SETUP
                  |____IK_SETUP
        |____CTL
        |____MODEL
        |____SK

        """
        super().__init__(rigNode)

        logging.info("load rigNode's connected into attr")

        self.FK_SETUP = GrpNode("FK_SETUP", pf=self.rigID, p=self.CTL_DATA)
        self.IK_SETUP = GrpNode("IK_SETUP", pf=self.rigID, p=self.CTL_DATA)

        self.leg_01 = rigNode.a.leg_01.inConnNode
        self.leg_02 = rigNode.a.leg_02.inConnNode
        self.leg_03 = rigNode.a.leg_03.inConnNode
        self.leg_04 = rigNode.a.leg_04.inConnNode
        self.leg_05 = rigNode.a.leg_05.inConnNode

        self.leg_01_fkc = rigNode.a.leg_01_fkc.inConnNode
        self.leg_02_fkc = rigNode.a.leg_02_fkc.inConnNode
        self.leg_03_fkc = rigNode.a.leg_03_fkc.inConnNode
        self.leg_04_fkc = rigNode.a.leg_04_fkc.inConnNode
        self.fkCtl = [
            self.leg_01_fkc,
            self.leg_02_fkc,
            self.leg_03_fkc,
            self.leg_04_fkc,
        ]

        self.main_ikc = rigNode.a.foot_ikc.inConnNode
        self.main_pvc = rigNode.a.knee_pvc.inConnNode

        self.joints = [self.leg_01, self.leg_02, self.leg_03, self.leg_04, self.leg_05]
        self.joints_fk = []
        self.joints_ik = []

        self.anchor = rigNode.a.anchor.inConnNode
        self.setting = rigNode.a.setting.inConnNode

    def build(self):

        self.build_module()

        """Build basic groups and custom setup"""

        self.leg_01.parentTo(self.SKL)
        self.moduleG.parentTo(self.masterC)
        self.anchor.snapTo(self.leg_01, p=self.masterC)

        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        # self.singleBallCtlSetup()
        self.postSetup()

    # def singleBallCtlSetup(self):
    #     # Single ball control for both fk ik
    #
    #     self.ball_fkc.alignTo(self.ball, p=self.FK_SETUP)
    #     self.ball_fkc.makeOffsetGrp()
    #     self.ball_fkc.cstPar(self.ball)
    #
    #     fkIk = self.setting.a.fkIk
    #     self.cstMultiPar(
    #         self.joints_ik[-2], self.foot, self.ball_fkc.parent, w=fkIk, mo=1
    #     )

    def build_fk(self):
        logging.info(".")

        self.joints_fk = common.extractSk(self.joints, "_fk", p=self.FK_SETUP)

        # for ctl, jnt in zip(self.fkCtl, self.joints_fk):
        #     ctl.alignTo(jnt)
        self.build_fk_with_ctl(self.joints_fk, self.fkCtl, p=self.FK_SETUP)

        self.anchor.cstPar(self.leg_01_fkc.offset, mo=1)
        self.masterC.cstSca(self.FK_SETUP)

        self.isolate_align(self.leg_02_fkc, [self.leg_02_fkc.parent, self.masterC], 1)

    def build_ik(self):
        logging.info(".")

        rigID = self.rigID

        ikc = self.main_ikc
        pvc = self.main_pvc

        self.joints_ik = common.extractSk(self.joints, "_ik", p=self.IK_SETUP)

        ikH1 = IkNode(
            "1",
            pf=rigID,
            sj=self.leg_01,
            ee=self.leg_05,
            jsf="_ik",
            sol=3,
            ikc=ikc,
            pvc=pvc,
        )

        foot_ik_cst = GrpNode("ik_cst", pf=rigID, snap=self.leg_05)

        # Foot ik setup
        ikH1.parentTo(foot_ik_cst)

        ikc.snapTo(self.leg_05)
        ikc.cstPar(foot_ik_cst, mo=1)

        (foot_ik_cst, pvc, ikc) | self.IK_SETUP
        self.masterC.cstSca(self.IK_SETUP)

        ikc.addOffsetGrp()
        pvc.addOffsetGrp()

        spaces = [self.leg_01_fkc, self.masterC]
        self.isolate_align(ikc, spaces, 0, cstType="par")
        self.isolate_align(pvc, spaces, 0, cstType="par")

        self.leg_01_fkc.cstPar(self.joints_ik[0], mo=1)

    def blend_fk_ik(self):
        logging.info(".")

        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=1)

        self.setting.parentTo(self.IK_SETUP)
        self.setting.addOffsetGrp()
        self.main_ikc.cstPar(self.setting.parent, mo=1)

        for i in range(0, 4):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            jnt = self.joints[i]

            # ut.blendC_(fkj.a.r, ikj.a.r, w=weight) >> jnt.a.r
            # if i == 0:
            #     common.cstMulti(fkj, ikj, jnt, cstType="poi")
            # else:
            #     ut.blendNAR_(fkj.a.tx, ikj.a.tx, w=weight) >> jnt.a.tx

            common.cstMulti(ikJ, fkJ, jnt, w=fkIk, cstType="par")

    def postSetup(self):
        logging.info(".")

        for jnt in self.joints:
            jnt.addProxyMesh(p=self.PRX)

        # self.main_ikc.a.lockHide(t=1, r=1, s=1, v=0)
        # self.main_pvc.a.lockHide(t=1)
        # self.setting.a.lockHide()
        # for ctl in self.fkCtl:
        #     ctl.a.lockHide(t=1, r=1)

        self.joints_fk[0].hide()
        self.joints_ik[0].hide()


if __name__ == "__main__":
    for n in mc.ls("*RGN", type="script"):
        Spd3Leg(DagNode(n)).build()
