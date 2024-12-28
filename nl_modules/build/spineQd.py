import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.utils import common
from nl_modules.utils.color import Color
from nl_modules.build.rig_module import RigModule


class SpineQd(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.CTL_NUM = 3
        self.FK_JNT_NUM = self.master_guide.a.fkJntNum.get()
        self.BIND_JNT_NUM = self.master_guide.a.bindJntNum.get()
        self.LINE_GUIDE = CurveNode(self.rigID + "_line_guide")
        self.MD_GUIDE = DagNode(self.rigID + "_md_guide")
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.cog_ctl = None
        self.tp_ctl = None
        self.md_ctl = None
        self.rt_ctl = None
        self.tangent_tp_ctl = None
        self.tangent_rt_ctl = None
        self.ctls = []

        self.bindJ = []
        self.fkJnt = []
        self.fkJ_A = []
        self.fkJ_B = []
        self.ctlJnts = []
        self.rbSrf = None
        self.crv = None
        self.crvRev = None

    def genSk(self):
        self.genSk_module(["rt", "md", "tp"])

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID
        CDY = Color.D_YELLOW

        self.cog_ctl = CurveNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            scale=(rSz * 0.5, rSz * 1.5, rSz * 2),
            color=CDY,
        )
        self.cog_ctl.cv_move(0, rSz * 80, 0)
        self.tp_ctl = CurveNode(
            "tp_ctl", pf=rID, shape="cube", scale=rSz * 3, color=CDY
        )
        self.md_ctl = CurveNode(
            "_md_ctl", pf=rID, shape="square", up="z", scale=rSz * 3, color=CDY
        )
        self.rt_ctl = CurveNode(
            "rt_ctl", pf=rID, shape="cube", scale=rSz * 3, color=CDY
        )
        self.tangent_tp_ctl = CurveNode(
            "tangent_tp_ctl", pf=rID, shape="T_side", scale=rSz, color=CDY
        )
        self.tangent_tp_ctl.cv_move(0, rSz * 40, 0)
        self.tangent_rt_ctl = CurveNode(
            "tangent_rt_ctl", pf=rID, shape="T_side", scale=rSz, color=CDY
        )
        self.tangent_rt_ctl.cv_move(0, rSz * 40, 0)

        self.rigNode.setMsg(
            {
                "cog_ctl": self.cog_ctl,
                "tp_ctl": self.tp_ctl,
                "md_ctl": self.md_ctl,
                "rt_ctl": self.rt_ctl,
                "tangent_tp_ctl": self.tangent_tp_ctl,
                "tangent_rt_ctl": self.tangent_rt_ctl,
            }
        )

    def build(self):
        rID = self.rigID
        rSz = self.rigSize

        self.build_module()
        self.createCtl()
        self.rbSrf = SurfNode.buildRbSrf(
            rID,
            rSz,
            crv=self.LINE_GUIDE,
            snap=self.rootJ,
            # spans=6,
            spans=self.FK_JNT_NUM - 1,
            p=self.RIG_DATA,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})
        self.bindJ = SurfNode.buildRbJnt(
            rID,
            rSz,
            self.BIND_JNT_NUM,
            surf=self.rbSrf,
            rigData=self.RIG_DATA,
            sklData=self.SKL_DATA,
        )
        self.build_fk()
        self.build_ik(sliding=1)
        self.post_setup()

    def makeJC(self, name, alongCrv=1, addEndJ=0):
        jc = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            pf=self.rigID,
            name=name,
            alongCrv=alongCrv,
            jntNum=self.FK_JNT_NUM,
            p=self.SKL_DATA,
            addEndJ=addEndJ,
        )
        return jc

    def build_fk(self):
        rID = self.rigID
        logging.info(rID)
        self.fkJnt = self.makeJC("fkJ")
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def makeStretchyIk(self, name, sj=None, ej=None, crv=None, axis="tz", axisDir=1):
        """Build stretcy IK for given joints and curve"""
        ikH = IkNode(
            name,
            pf=self.rigID,
            sj=sj,
            ee=ej,
            sol=2,
            createCrv=0,
            inputCrv=crv,
            # setting=self.md_ctl,
            setting=self.cog_ctl,
            scaleFix=self.masterC.a.globalScale,
            p=self.RIG_DATA,
        )
        ikH.stretchySp(axis=axis, axisDir=axisDir)
        return ikH

    def build_ik(self, sliding=1):
        rID = self.rigID
        logging.info(rID)
        self.spCrv = self.LINE_GUIDE.duplicate(n=rID + "_spCrv_#")
        self.spCrv | self.RIG_DATA
        # crv.rebuild(spans=4)
        ikH_1, ikH_A, ikH_B = None, None, None

        if sliding == 0:
            ikH_1 = self.makeStretchyIk(
                "sp", sj=self.fkJnt[0], ej=self.fkJnt[-1], crv=self.spCrv
            )
        else:
            # joint chain A
            self.fkJ_A = self.makeJC("fkJ_A", addEndJ=1)
            ikH_A = self.makeStretchyIk(
                "spA", sj=self.fkJ_A[0], ej=self.fkJ_A[-2], crv=self.spCrv
            )
            # joint chain B
            self.fkJ_B = self.makeJC("fkJ_B", addEndJ=1, alongCrv=0)
            self.spCrvR = self.spCrv.duplicate(n=rID + "_spCrvR_#").reverse()
            ikH_B = self.makeStretchyIk(
                "spB", sj=self.fkJ_B[-1], ej=self.fkJ_B[1], crv=self.spCrvR, axisDir=-1
            )

            baseAttach = self.cog_ctl.a.add("baseAttach", min=0, max=1)
            for i in range(self.FK_JNT_NUM):
                common.cstMulti(
                    self.fkJ_B[i + 1],
                    self.fkJ_A[i],
                    self.fkJnt[i],
                    w=baseAttach,
                    cstType="par",
                )

        self.rt_ctl.snapTo(self.fkJnt[0])
        self.md_ctl.snapTo(self.MD_GUIDE)
        self.tp_ctl.snapTo(self.fkJnt[-1])
        self.cog_ctl.snapTo(self.md_ctl)
        (self.tp_ctl, self.md_ctl, self.rt_ctl) | self.cog_ctl | self.CTL_DATA
        self.cog_ctl.addOffsetGrp()

        self.ctlJnts = self.createCtlJ(
            self.rt_ctl, self.md_ctl, self.tp_ctl, color=Color.RED
        )

        # Orient control last fkJ by tip ctl
        self.fkJnt[-1].a.r.disconnect()
        self.tp_ctl.cstOri(self.fkJnt[-1], mo=1)

        # Bind curve to ctl joints
        self.spCrv.weightTo(self.ctlJnts, weightDir=1)
        self.spCrv.a.inheritsTransform.set(0)
        if sliding:
            self.spCrvR.weightTo(self.ctlJnts, weightDir=-1)
            self.spCrvR.a.inheritsTransform.set(0)

        # Setup spline ik twist
        self.tp_ctl.addOffsetGrp(below=1)
        self.rt_ctl.addOffsetGrp(below=1)

        if sliding:
            ikH_A.spline_twist_setup(self.rt_ctl, self.tp_ctl, twistAxis="+z")
            ikH_B.spline_twist_setup(self.tp_ctl, self.rt_ctl, twistAxis="-z")
            mc.hide(ikH_A, ikH_B)
        else:
            ikH_1.spline_twist_setup(self.rt_ctl, self.tp_ctl, twistAxis="+z")
            mc.hide(ikH_1)

        self.rt_ctl.addOffsetGrp()
        self.md_ctl.addOffsetGrp(count=2)
        self.tp_ctl.addOffsetGrp()

        # Mid ctl setup
        # common.cstMulti(
        #     self.tp_ctl, self.rt_ctl, self.md_ctl.offset.offset, cstType="poi", mo=1
        # )
        self.tp_ctl.a.rz @ self.rt_ctl.a.rz >> self.md_ctl.offset.a.rz

        # if not sliding:
        #     self.tp_ctl.cstOri(self.fkJnt[-1], mo=1)
        # self.cog_ctl.cstSca(self.fkJnt[0])
        # self.fkJnt[0].childrenJoint[0].a.segmentScaleCompensate.set(0)
        self.rbSrf.weightTo(self.rootJ.allChildrenJt2, mi=3, dr=3)
        self.addPivOffset(self.cog_ctl, scale=self.rigSize, upDown=1)

        # ----------------------
        #  Add gimbal
        # ----------------------
        tp_gimbal = self.tp_ctl.addGimbal()
        rt_gimbal = self.rt_ctl.addGimbal()
        # tp_gimbal.cstPar(self.tangent_tp_ctl.addOffsetGrp())
        # self.rt_ctl.cstPar(self.tangent_rt_ctl.addOffsetGrp())

        # ----------------------
        #  Setup tangent ctls
        # ----------------------
        (self.tangent_tp_ctl, self.tangent_rt_ctl) | self.CTL_DATA
        rt_gimbal.cstPar(self.tangent_rt_ctl.addOffsetGrp())
        tp_gimbal.cstPar(self.tangent_tp_ctl.addOffsetGrp())

        self.tangent_rt_ctl.a.r >> self.ctlJnts[0].a.r
        self.tangent_tp_ctl.a.r >> self.ctlJnts[2].a.r
        (
            self.tangent_rt_ctl.a.add("tangentScale", min=0, max=2, dv=1)
            >> self.ctlJnts[0].a.s
        )
        (
            self.tangent_tp_ctl.a.add("tangentScale", min=0, max=2, dv=1)
            >> self.ctlJnts[2].a.s
        )
        self.ctls = [
            self.tp_ctl,
            self.md_ctl,
            self.rt_ctl,
            self.cog_ctl,
            tp_gimbal,
            rt_gimbal,
            self.tangent_tp_ctl,
            self.tangent_rt_ctl,
        ]
        # self.addPivOffset(self.tp_ctl, scale=self.rigSize, dnwd=0)
        # self.addPivOffset(self.rt_ctl, scale=self.rigSize, dnwd=0)

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.SKL_DATA.a.v
        # visGrp[1] >> self.RIG_DATA.a.v
        # visGrp[1] >> self.PRX_GRP.a.v
        if self.bindJ:
            mc.hide(self.bindJ, self.rbSrf)
        mc.hide(self.ctlJnts, self.fkJ_A, self.fkJ_B)

    def proxy_setup(self):
        rSz = self.rigSize
        if self.bindJ:
            for j in self.bindJ:
                JointNode(j).addProxyMesh(
                    size=rSz * 80 / len(self.bindJ), p=self.PRX_GRP
                )

    def ro_setup(self):
        [c.a.ro.set(2) for c in self.ctls]

    def channel_setup(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ctls]
        self.tangent_tp_ctl.a.showAttr(r=1)
        self.tangent_rt_ctl.a.showAttr(r=1)

    def anchor_setup(self):
        self.anchor_setup_module(
            {
                "anchorM1": self.rootJ,
                "anchorM2": self.rootJ.allChildrenJt[-1],
            }
        )

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)
        if self.BIND_JNT_NUM > 1:
            self.addBindJntSet(self.bindJ)
        self.addCtlSet(self.ctls, pf=rID)
        self.anchor_setup()
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
