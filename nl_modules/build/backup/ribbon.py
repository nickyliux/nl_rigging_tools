import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color


class Ribbon(RigModule):
    def __init__(self, mg):
        """
        Initialize the Ribbon rig module.
        Structure:
            CHR
            |__RIG
               |__SETUP
                  |__FK_SETUP
                  |__IK_SETUP
            |__CTL
            |__MODEL
            |__SK
        """
        super().__init__(mg)

        # Joint references
        logging.info("Load mg's connected into attr.")
        self.startJ: JntNode = mg.a.upr.inConnNode
        self.midJ: JntNode = mg.a.lwr.inConnNode
        self.endJ: JntNode = mg.a.foot.inConnNode

        # Ribbon group nodes
        self.RB_GRP = GrpNode("RB_GRP", pf=self.rigID, p=self.RIG)
        self.RB_DEFORM = GrpNode("RB_DEFORM", pf=self.rigID, p=self.RB_GRP)
        self.RB_SCALE = GrpNode("RB_SCALE", pf=self.rigID, p=self.RB_GRP)
        self.RB_JOINT = GrpNode("RB_JOINT", pf=self.rigID, p=self.RB_GRP)

        # Scale constraint
        self.masterC.cstSca(self.RB_SCALE)

    def build(self):
        """
              * c0 |  rbCtl 0
           *  *    |
        c1 *       |  rbCtl 1
           *  *    |
              * c2 |
                      rbCtl 2
              * c3 |
           *  *    |
        c4 *       |  rbCtl 3
           *  *    |
              * c5 |  rbCtl 4

        """
        axis = -1 if self.startJ.a.tx.get() < 0 else 1

        logging.info("Make ribbon bezier curves -----------------------------------")

        rbCrv0, rbCrvLine0 = self.buildSurf(
            self.startJ, self.midJ, segNum=5, p=self.RB_GRP
        )
        rbCrv1, rbCrvLine1 = self.buildSurf(
            self.midJ, self.endJ, segNum=5, p=self.RB_GRP
        )
        (rbCrv0, rbCrv1) | self.RB_GRP
        rbCrv = [rbCrv0, rbCrv1]

        logging.info("Add ribbon controls -----------------------------------")
        rbCtl0 = self.addRibbonCtl(self.startJ, idx=0)
        rbCtl1 = self.addRibbonCtl(self.startJ, idx=1, offsetValue=0.5)
        rbCtl2 = self.addRibbonCtl([self.startJ, self.midJ], idx=2)
        rbCtl3 = self.addRibbonCtl(self.midJ, idx=3, offsetValue=0.5)
        rbCtl4 = self.addRibbonCtl(self.endJ, idx=4)
        rbCtl = [rbCtl0, rbCtl1, rbCtl2, rbCtl3, rbCtl4]
        rbCrvLine0 | rbCtl0
        rbCrvLine1 | rbCtl2

        logging.info("Add clusters to controls -----------------------------------")
        self.addClusterToCtl(rbCrv, rbCtl)

        logging.info("Add twist readers -----------------------------------")
        rbRdr0 = self.addTwistReader(self.startJ, axis, idx=0, p=self.RB_GRP)
        rbRdr1 = self.addTwistReader(self.midJ, axis, idx=1, p=self.RB_GRP)
        # rbRdr = [rbRdr0, rbRdr1]

        logging.info("Add ribbon joints -----------------------------------")
        # rbJnts = self.addRibbonJnt(rbCrv, axis, seg=6, upObj=[self.startJ, self.midJ])

        logging.info("Add twist & squash -----------------------------------")
        # half = int(len(rbJnts) / 2)
        #
        # self.deformTwist(rbJnts[:half], rbCtl1, start=rbRdr0, end=self.startJ)
        # self.deformTwist(rbJnts[half:], rbCtl3, start=rbRdr1, end=None)

    def buildSurf(self, startJ, endJ, segNum=5, p=None):
        """Build a ribbon surface from two joints and a specified number of segments."""

        rbCrv = CrvNode.buildLine(
            startJ, endJ, n="rbCrv_#", bezier=1, insertMid=1, pf=self.rigID
        )
        rbCrvLine = CrvNode.buildLine(
            (0, 0, -2), (0, 0, 2), n="rbCrvWidth_#", pf=self.rigID
        )
        startJ.cstPoi(rbCrvLine, keep=0)
        rbCrvLine | startJ

        rbSurf = DagNode(
            mc.extrude(
                rbCrvLine,
                rbCrv,
                n=f"{self.rigID}rbSurf_#",
                ch=1,
                rn=0,
                po=0,
                et=1,
                fpt=0,
                upn=1,
            )[0]
        )

        mc.rebuildSurface(
            rbSurf,
            ch=1,
            rpo=1,
            rt=0,
            end=1,
            kr=0,
            kcp=0,
            kc=0,
            su=segNum,
            du=3,
            sv=1,
            dv=1,
            tol=0.01,
            fr=0,
            dir=2,
        )

        mc.select(rbSurf + ".sf[:][0]")
        rivetPin, rivetLoc = common.makeRivet(p=p)

        for loc in rivetLoc:
            locN = LocNode(loc)
            locN.scaleLocal(3)

            jnt = JntNode("rb_jnt_#", pf=self.rigID, r=1, color=1, align=locN, p=locN)
            jnt.set_LRA()
            jnt.genProxyMesh(p=self.PRX)

        if p:
            rbSurf | p

        return [rbCrv, rbCrvLine]

    def addRibbonCtl(self, targetJ, idx: int = 0, offsetValue=-1.0):
        """
        Args:
            idx:          index
            targetJ:      target joint
            offsetValue:  offset value, connect if in [0,1]

        rigID_RB_SCALE
            rigID_bow_0_grp
                rigID_bowCtl_0_ofs   <--　targetJ's child tx * 0.5
                    rigID_bow_0_ctl

        """
        rID, rSz, xDr = self.get_short_form()

        bow_grp = GrpNode(f"bow_{idx}_grp", pf=rID, p=self.RB_SCALE)
        bow_ctl = CrvNode(
            f"bow_{idx}", pf=rID, color=Color.PINK, scale=3, p=bow_grp, addOfs=1
        )
        # bow_ctl.a.lockHide("sy", "sz", t=1, r=1, s=1)

        if isinstance(targetJ, list):
            targetJ[-1].cstPar(bow_grp, keep=0)
            common.cstMulti(*targetJ, bow_grp, cstType="par", mo=1)
        else:
            targetJ.cstPar(bow_grp)

        if offsetValue >= 0:
            targetJ.children[0].a.tx * offsetValue >> bow_ctl.parent.a.tx

        return bow_ctl

    def addTwistReader(self, target, axis, idx=0, p=None):
        """
        Args:
            target:  target object to create reader
            idx:     index
            p:       parent object
            axis:    -1 for -X, 1 for +X

        Returns:     locator

        e.g.
            reader grp   <--pa  target
            |__ reader   am-->  target children

        """
        reader_loc = LocNode(f"{target.name}_reader_{idx}", size=8, p=p)
        reader_ofs = reader_loc.addOffsetGrp()

        target.cstPar(reader_ofs)
        child = target.children

        if child:
            child[0].cstAim(
                reader_loc,
                aimVector=(axis, 0, 0),
                upVector=(0, 0, 1),
                worldUpType="objectrotation",
                worldUpVector=(0, 0, 1),
                worldUpObject=child[0],
            )
        return reader_loc

    # def addRibbonJnt(self, crvs, axis, seg=6, upObj=None):
    #     """
    #     Args:
    #         crvs:   upper and lower curves
    #         seg:    number of joints
    #         axis:   -1 for -X, 1 for +X
    #         upObj:  upper and lower rotation up object
    #
    #     Returns:    ribbon joints
    #
    #         S-----------M------------E
    #         +    +    +    +    +    +
    #         |
    #         loc
    #         |__jnt
    #
    #     """
    #     if not crvs:
    #         logging.error("Missing curves")
    #         return
    #
    #     ribbonJnts = []
    #
    #     for j in [0, 1]:
    #         prevUpObj = upObj[j]
    #
    #         for i in range(seg):
    #             loc = LocNode(
    #                 "rb_loc_#", pf=self.rigID, color=18, p=self.RB_GRP
    #             )
    #             loc.displayLocalAxis()
    #             jnt = JntNode("rb_jnt_#", pf=self.rigID, r=1, color=1, p=loc)
    #             jnt.addProxyCube(size=2)
    #
    #             ut.motionPath_(
    #                 crvs[j],
    #                 uValue=i / seg + 0.01,
    #                 worldUpObject=prevUpObj,
    #                 inverseFront=1 if axis == -1 else 0,
    #                 driven=loc,
    #             )
    #             prevUpObj = loc
    #
    #             self.masterC.cstSca(loc)
    #             ribbonJnts.append(jnt)
    #
    #     return ribbonJnts

    # def setupLimb(self, rbJnts, rbCtl, rbReaders):
    #     """
    #     Args:
    #         rbJnts:      target joints
    #         rbReaders:   driving reader loc
    #         rbCtl:       ribbon controls
    #
    #     Returns:
    #
    #     """
    #     half = int(len(rbJnts) / 2)
    #     self.deformTwist(rbJnts[:half], rbCtl[1], drivers=[rbReaders[0], self.startJ])
    #     self.deformTwist(rbJnts[half:], rbCtl[3], drivers=[rbReaders[1], None])

    # def deformTwist(self, targetJnts, attrObj, start=None, end=None):
    #     """
    #     Args:
    #         targetJnts:   target joints
    #         attrObj:      attribute object
    #         start:        start driver
    #         end:          end driver
    #
    #     """
    #     rigID = self.rigID
    #     count = len(targetJnts)
    #
    #     twist_srf = DagNode(
    #         mc.nurbsPlane(
    #             n=f"{rigID}_twist_surf",
    #             ax=(0, 0, 1),
    #             lr=2 / (count - 1),
    #             d=1,
    #             w=count - 1,
    #             u=count - 1,
    #             v=1,
    #             ch=0,
    #         )[0]
    #     )
    #
    #     twist_node, twist_hdl = ut.nonlinear_(twist_srf, dfmType="twist")
    #     twist_hdl.a.rz.set(90)
    #     (twist_hdl, twist_srf) | self.RB_DEFORM
    #
    #     attrObj.a.add("startTwist", k=0)
    #     attrObj.a.startTwist >> twist_node.a.startAngle
    #
    #     attrObj.a.add("endTwist", k=0)
    #     attrObj.a.endTwist >> twist_node.a.endAngle
    #
    #     for i in range(count):
    #         folXf = ut.follicle_(twist_srf, u=i / (count - 1), v=0.5)
    #         attrObj.a.add(f"twistW{i}", dv=1)
    #
    #         ofs = targetJnts[i].addOffsetGrp()
    #         folXf.a.rx * attrObj.a["twistW" + str(i)] >> ofs.a.rx
    #         folXf | self.RB_DEFORM
    #
    #     if start:
    #         start.a.rx * -1 >> attrObj.a.startTwist
    #     if end:
    #         end.a.rx >> attrObj.a.endTwist

    def addClusterToCtl(self, rbCrv, rbCtl):
        """
              * c0 |  rbCtl 0
           *  *    |
        c1 *       |  rbCtl 1
           *  *    |
              * c2 |
                      rbCtl 2
              * c3 |
           *  *    |
        c4 *       |  rbCtl 3
           *  *    |
              * c5 |  rbCtl 4

        """
        clu = [
            DagNode(mc.cluster(rbCrv[0] + ".cv[0:1]", n="clu_0")[1]),
            DagNode(mc.cluster(rbCrv[0] + ".cv[2:4]", n="clu_1")[1]),
            DagNode(mc.cluster(rbCrv[0] + ".cv[5:6]", n="clu_2")[1]),
            DagNode(mc.cluster(rbCrv[1] + ".cv[0:1]", n="clu_3")[1]),
            DagNode(mc.cluster(rbCrv[1] + ".cv[2:4]", n="clu_4")[1]),
            DagNode(mc.cluster(rbCrv[1] + ".cv[5:6]", n="clu_5")[1]),
        ]

        def addTangentAttr(ctl, aimTarget, cluster):
            """
            Args:
                ctl:        target control
                aimTarget:  object to aim at
                cluster:    target cluster

            Returns:
                ctl
                |__ctl_ofs    * x-axis aiming at target
                   |__cluster
            """
            grp = ctl.addOffsetGrp(below=1, relink=0)
            aimTarget.cstAim(grp, keep=0)
            cluster | grp

            ctl.a.add("tangentOn", min=0, max=1)  # , dv=1)
            ctl.a.tangentOn >> grp.a.sx

        addTangentAttr(rbCtl[0], self.midJ, clu[0])
        clu[1] | rbCtl[1]
        addTangentAttr(rbCtl[2], self.startJ, clu[2])
        addTangentAttr(rbCtl[2], self.endJ, clu[3])
        clu[4] | rbCtl[3]
        addTangentAttr(rbCtl[4], self.midJ, clu[5])
