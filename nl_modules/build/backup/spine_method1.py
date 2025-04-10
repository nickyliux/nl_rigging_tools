import maya.cmds as mc
import nl_modules.build.rig_module as rig_module

# from nl_modules.build.ribbon import Ribbon
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode

from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color
from nl_modules.nodel.ik_node import IkNode
import logging


class Spine(rig_module.RigModule):
    def __init__(self, rigNode):
        """
        CHR
        |____RIG
             |____SETUP
                  |____SPINE_SETUP
        |____CTL
        |____MODEL
        |____SK

        """
        super().__init__(rigNode)

        logging.info("load rigNode's connected into attr")

        self.SPINE_SETUP = GroupNode("spine_setup", pf=self.rigID, p=self.CTL_DATA)

        self.rootJ: JointNode = rigNode.a.rootJ.inConnNode
        self.cog_ctl = rigNode.a.cog_ctl.inConnNode

        self.sta_fkc = rigNode.a.sta_fkc.inConnNode
        self.mid_fkc = rigNode.a.mid_fkc.inConnNode
        self.end_fkc = rigNode.a.end_fkc.inConnNode

        self.fkCtl = [self.sta_fkc, self.mid_fkc, self.end_fkc]

        self.sta_ikc = rigNode.a.sta_ikc.inConnNode
        self.mid_ikc = rigNode.a.mid_ikc.inConnNode
        self.end_ikc = rigNode.a.end_ikc.inConnNode
        self.ikCtl = [self.sta_ikc, self.mid_ikc, self.end_ikc]

        self.anchor1 = rigNode.a.anchor1.inConnNode
        self.anchor2 = rigNode.a.anchor2.inConnNode

        self.joints_as = []
        self.ctlJnts = None
        self.setting = rigNode.a.setting.inConnNode

    def build(self):

        logging.info("build : %s" % self.rigID)

        joints = [self.rootJ] + self.rootJ.allChildren

        self.awesomeSpine(joints, self.cog_ctl, self.ikCtl, self.fkCtl, self.setting)
        self.postSetup()

    def volumeSetup(self, joints, ratio):
        """
        Args:
            joints:   target joints
            ratio:    ratio node

        Returns:
            nurbs surface with pinned locators with squash

        """
        SPINE_VOL_SETUP = GroupNode("spine_vol_setup", pf=self.rigID, p=self.RIG)

        # Create surface & squash
        surf = SurfNode("volume", pf=self.rigID, v=len(joints) - 2, p=SPINE_VOL_SETUP)
        squash, squashHdl = ut.nonlinear_(surf, nodeType="squash")
        squashHdl | SPINE_VOL_SETUP

        ratio - 1 >> squash.a.factor
        surf.a.tx.set(1)
        self.setting.a.add("volume", dv=1) >> squash.a.expand

        # Create pins and connect joints
        mc.select(surf.patches)
        pin, pinXf = common.makeRivet(p=SPINE_VOL_SETUP)

        for i in range(len(pinXf)):
            ptMM = DepNode("pointMtx_#", nodeType="pointMatrixMult")
            pinXf[i].a.parentMatrix >> ptMM.a.inMatrix
            ptMM.a.outputX >> joints[i + 1].a.sy
            ptMM.a.outputX >> joints[i + 1].a.sz

    def createCtlJ(self, jointList, NUM, p=None):

        staJ = JointNode("sta_ikj", pf=self.rigID, r=8, color=Color.RED)
        staJ.snapTo(jointList[0])
        midJ = JointNode("mid_ikj", pf=self.rigID, r=8, color=Color.RED)
        midJ.snapTo(jointList[int(NUM / 2)])
        endJ = JointNode("end_ikj", pf=self.rigID, r=8, color=Color.RED)
        endJ.snapTo(jointList[-1])

        if p:
            (staJ, midJ, endJ) | p

        return [staJ, midJ, endJ]

    def awesomeSpine(self, joints, cog_ctl, ikCtl, fkCtl, setting):
        """
        Args:
            joints:     target joints
            cog_ctl:    cog control
            ikCtl:      ik controls
            fkCtl:      fk controls
            setting:    setting control

        Returns:

            cog_ctl
                sta_fkc
                    mid_fkc
                        end_fkc
                            end_ikc *   paCst->  end J
                        mid_ikc *       paCst->  mid J
                sta_ikc *               paCst->  sta J
                                        pCst-->  joint_op root
        """
        rigID = self.rigID

        NUM = len(joints)

        cog_ctl.snapTo(joints[0])
        joints[0] | cog_ctl | self.SPINE_SETUP

        self.joints_as = common.extractSk(joints, "_as")

        self.ctlJnts = self.createCtlJ(joints, NUM, p=cog_ctl)
        staJ, midJ, endJ = self.ctlJnts

        sta_ikc, mid_ikc, end_ikc = ikCtl
        sta_fkc, mid_fkc, end_fkc = fkCtl
        [x.a.ro.set(1) for x in (self.ctlJnts + ikCtl + fkCtl)]

        sta_ikc.snapTo(staJ)
        mid_ikc.snapTo(midJ)
        end_ikc.snapTo(endJ)

        sta_ikc.cstPar(staJ)
        mid_ikc.cstPar(midJ)
        end_ikc.cstPar(endJ)

        end_ikc | end_fkc | mid_fkc | sta_fkc | cog_ctl
        (setting, sta_ikc) | cog_ctl
        mid_ikc | mid_fkc

        staJ.cstPoi(joints[0])
        endJ.cstOri(joints[-1], mo=1)

        [x.addOffsetGrp() for x in (ikCtl + fkCtl)]
        cog_ctl.addOffsetGrp()

        # SINGLE PLANE IK FOR OP JOINTS
        for i in range(NUM - 1):
            ikH1 = IkNode(
                "1",
                pf=rigID,
                sj=joints[i],
                ee=joints[i + 1],
                ikc=setting,
                pv=1,
                scaleFix=self.masterC.parent.parent,
            )
            ofs = ikH1.addOffsetGrp()
            ofs | self.joints_as[i + 1]

            self.joints_as[i + 1].a.tx >> joints[i + 1].a.tx

            common.blendNAR_(staJ.a.ry, endJ.a.ry, w=i / (NUM - 1)) >> ofs.a.rx

        # SPLINE IK FOR AS JOINTS
        spIkH = IkNode(
            "as",
            pf=rigID,
            sj=self.joints_as[0],
            ee=self.joints_as[-1],
            sol=2,
            setting=setting,
            scaleFix=self.masterC.parent.parent,
        )
        ratio = spIkH.stretchySp()
        spCrv = spIkH.getCrv()
        spCrv.a.inheritsTransform.set(0)
        (spIkH, spCrv) | self.SPINE_SETUP

        twist_loc = LocNode("advUp_loc_#", pf=rigID, align=joints[0], p=cog_ctl)
        spIkH.spline_twist_setup(twist_loc)

        # spCrv.weightTo(ctlJnts, mi=3, dr=5, bindMethod=0)
        self.clusterSetup(spCrv, self.ikCtl)
        self.volumeSetup(joints, ratio)

        for jnt in joints:
            JointNode(jnt).addProxyMesh(p=self.PRX)

        spCrv.hide()
        spIkH.hide()

    def clusterSetup(self, crv, ikCtl):
        allCV = CurveNode(crv).cvs
        clu = []
        if len(allCV) == 5:
            [clu.append(DagNode(mc.cluster(c)[1])) for c in allCV]

            mc.group(clu[0], n=self.rigID + "_clu_zro#") | ikCtl[0]
            mc.group(clu[1], n=self.rigID + "_clu_zro#") | ikCtl[0]
            mc.group(clu[2], n=self.rigID + "_clu_zro#") | ikCtl[1]
            mc.group(clu[3], n=self.rigID + "_clu_zro#") | ikCtl[2]
            mc.group(clu[4], n=self.rigID + "_clu_zro#") | ikCtl[2]

            ikCtl[2].a.add("tangent") * -1 >> clu[3].a.ty
            ikCtl[0].a.add("tangent") >> clu[1].a.ty

            mc.hide(clu)

    def postSetup(self):
        self.masterC.cstSca(self.SPINE_SETUP)

        (self.anchor1, self.anchor2) | self.SPINE_SETUP

        self.anchor1.snapTo(self.sta_ikc)
        self.sta_ikc.cstPar(self.anchor1)
        self.anchor2.snapTo(self.end_ikc)
        self.end_ikc.cstPar(self.anchor2)

        # [x.a.lockHide(t=1, r=1) for x in ([self.cog_ctl] + self.ikCtl + self.fkCtl)]
        # self.ikCtl[1].a.lockHide(t=1)
        # self.setting.a.lockHide()

        self.joints_as[0].hide()
        [j.hide() for j in self.ctlJnts]

        mc.delete(self.moduleG)
