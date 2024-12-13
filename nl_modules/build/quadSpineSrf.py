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
from nl_modules.build import rig_module


class QuadSpineSrf(rig_module.RigModule):
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
        self.fkJntA = []
        self.fkJntB = []
        self.ctlJnts = []
        self.rbSrf = None

    def genSk(self):
        self.genSk_module(["rt", "md", "tp"])

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID
        CDY = Color.D_YELLOW
        CY = Color.YELLOW

        self.cog_ctl = CurveNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            scale=(rSz, rSz * 1.5, rSz * 2),
            color=CY,
        )
        self.cog_ctl.cv_move(0, rSz * 80, 0)
        self.tp_ctl = CurveNode(
            "tp_ctl", pf=rID, up="x", shape="cube", scale=rSz * 8, color=CDY
        )
        self.tp_ctl.cv_scale(1, 0.8, 0.5)
        self.md_ctl = CurveNode(
            "_md_ctl", pf=rID, shape="diamond", scale=rSz * 3, color=CDY
        )
        self.md_ctl.cv_move(0, rSz * 40, 0)
        self.rt_ctl = CurveNode(
            "rt_ctl", pf=rID, shape="cube", scale=rSz * 8, color=CDY
        )
        self.rt_ctl.cv_scale(1, 0.8, 0.5)

        self.tangent_tp_ctl = CurveNode(
            "tangent_tp_ctl", pf=rID, up="x", shape="T", scale=rSz * 2, color=CDY
        )
        self.tangent_tp_ctl.cv_rotate(90, 0, 0)
        self.tangent_tp_ctl.cv_move(0, rSz * 40, 0)
        self.tangent_rt_ctl = CurveNode(
            "tangent_rt_ctl", pf=rID, up="x", shape="T", scale=rSz * 2, color=CDY
        )
        self.tangent_rt_ctl.cv_rotate(90, 0, 0)
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
        self.build_module()
        self.createCtl()
        self.rbSrf = SurfNode.buildRbSrf(
            self.rigID,
            self.rigSize,
            crv=self.LINE_GUIDE,
            snap=self.rootJ,
            spans=6,
            p=self.RIG_DATA,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.bindJ = SurfNode.buildRbJnt(
            self.rigID,
            self.rigSize,
            self.BIND_JNT_NUM,
            surf=self.rbSrf,
            rigData=self.RIG_DATA,
            sklData=self.SKL_DATA,
        )
        self.build_fk()
        self.build_ik(twoChains=1)
        self.post_setup()

    def build_fk(self):
        logging.info(self.rigID)
        self.fkJnt = JointNode.makeJChainFrCrv(
            self.LINE_GUIDE,
            name="fkJ",
            crvDir=1,
            jntNum=self.FK_JNT_NUM,
            pf=self.rigID,
            p=self.SKL_DATA,
        )

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ik(self, twoChains=1):
        logging.info(self.rigID)
        spCrv = self.LINE_GUIDE.duplicate(n=self.rigID + "_spCrv_#")
        # crv.rebuild(spans=4)
        spCrvRev = spCrv.duplicate(n=self.rigID + "_spCrvRev_#")
        spCrvRev.reverse()
        (spCrv, spCrvRev) | self.RIG_DATA
        ikH_1, ikH_A, ikH_B = None, None, None

        if twoChains == 0:
            ikH_1 = IkNode(
                "sp",
                pf=self.rigID,
                sj=self.fkJnt[0],
                ee=self.fkJnt[-1],
                sol=2,
                createCrv=0,
                inputCrv=spCrv,
                setting=self.md_ctl,
                scaleFix=self.masterC.a.globalScale,
            )
            ikH_1 | self.RIG_DATA
            ikH_1.stretchySp(axis="+z", ignoreX_dir=1)
        else:
            # ---------------------------------------------------
            #   Create chain A and ikSpline
            # ---------------------------------------------------
            self.fkJntA = JointNode.makeJChainFrCrv(
                self.LINE_GUIDE,
                pf=self.rigID,
                name="fkJ_A",
                crvDir=1,
                jntNum=self.FK_JNT_NUM,
                r=2,
                color=Color.YELLOW,
                p=self.SKL_DATA,
                addEnd=1,
            )

            ikH_A = IkNode(
                "spA",
                pf=self.rigID,
                sj=self.fkJntA[0],
                ee=self.fkJntA[-1],
                sol=2,
                createCrv=0,
                inputCrv=spCrv,
                setting=self.md_ctl,
                scaleFix=self.masterC.a.globalScale,
            )

            # ---------------------------------------------------
            #   Create chain B and ikSpline
            # ---------------------------------------------------
            self.fkJntB = JointNode.makeJChainFrCrv(
                self.LINE_GUIDE,
                pf=self.rigID,
                name="fkJ_B",
                crvDir=0,
                jntNum=self.FK_JNT_NUM,
                r=2,
                color=Color.RED,
                p=self.SKL_DATA,
                addEnd=1,
            )
            ikH_B = IkNode(
                "spB",
                pf=self.rigID,
                sj=self.fkJntB[-1],
                ee=self.fkJntB[0],
                sol=2,
                createCrv=0,
                inputCrv=spCrvRev,
                setting=self.md_ctl,
                scaleFix=self.masterC.a.globalScale,
            )

            # ---------------------------------------------------
            #   Parent constraint main to chain A & B
            # ---------------------------------------------------
            spineSlider = self.md_ctl.a.add("spineSlider", min=0, max=1, dv=0.5)

            for i in range(self.FK_JNT_NUM):
                # fkJntA  is j1     j2 ... j4    j4_end
                # fkJntB  is j1_end j1 ... j4
                common.cstMulti(
                    self.fkJntB[i + 1],
                    self.fkJntA[i],
                    self.fkJnt[i],
                    w=spineSlider,
                    cstType="par",
                )

            (ikH_A, ikH_B) | self.RIG_DATA

            # ikH_A.stretchySp(axis="+z", ignoreX_dir=1)
            # ikH_B.stretchySp(axis="-z", ignoreX_dir=1)

        self.rt_ctl.snapTo(self.fkJnt[0])
        self.md_ctl.snapTo(self.MD_GUIDE)
        self.tp_ctl.snapTo(self.fkJnt[-1])
        self.cog_ctl.snapTo(self.md_ctl)
        (self.tp_ctl, self.md_ctl, self.rt_ctl) | self.cog_ctl | self.CTL_DATA
        self.cog_ctl.addOffsetGrp()

        # --------------------------------------------
        # Create ctl joints
        # Skin to crv
        # --------------------------------------------
        self.ctlJnts = self.createCtlJ(
            self.rt_ctl, self.md_ctl, self.tp_ctl, color=Color.RED
        )

        spCrv.weightTo(self.ctlJnts, custom=1)  # mi=2, dr=3)
        spCrv.a.inheritsTransform.set(0)
        spCrvRev.weightTo(self.ctlJnts, custom=-1)  # mi=2, dr=3)
        spCrvRev.a.inheritsTransform.set(0)

        # --------------------------------------------
        # Setup spline ik twist
        # --------------------------------------------
        self.tp_ctl.addOffsetGrp(below=1)
        self.rt_ctl.addOffsetGrp(below=1)

        if twoChains:
            ikH_A.spline_twist_setup(self.rt_ctl, self.tp_ctl, twistAxis="+z")
            ikH_B.spline_twist_setup(self.tp_ctl, self.rt_ctl, twistAxis="-z")
            mc.hide(ikH_A, ikH_B)
        else:
            ikH_1.spline_twist_setup(self.rt_ctl, self.tp_ctl, twistAxis="+z")
            mc.hide(ikH_1)

        self.rt_ctl.addOffsetGrp()
        self.md_ctl.addOffsetGrp(count=2)
        self.tp_ctl.addOffsetGrp()

        # --------------------------------------------
        # Mid ctl setup
        # --------------------------------------------
        common.cstMulti(
            self.tp_ctl, self.rt_ctl, self.md_ctl.offset.offset, cstType="par", mo=1
        )

        # self.tp_ctl.a.rz @ self.rt_ctl.a.rz >> self.md_ctl.offset.a.rz
        if not twoChains:
            self.tp_ctl.cstOri(self.fkJnt[-1], mo=1)
        # self.cog_ctl.cstSca(self.fkJnt[0])
        # self.fkJnt[0].childrenJoint[0].a.segmentScaleCompensate.set(0)
        self.rbSrf.weightTo(self.rootJ.allChildrenJt2, mi=3, dr=3)
        # self.addPivOffset(self.cog_ctl, scale=self.rigSize)

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
        # if self.cog:
        #     self.ctls.append(self.rt_ctl)
        #     self.ctls.append(self.cog_ctl)
        #     self.ctls.append(rt_gimbal)

        self.addPivOffset(self.tp_ctl, scale=self.rigSize, dnwd=0)
        self.addPivOffset(self.rt_ctl, scale=self.rigSize, dnwd=0)

        mc.hide(spCrv, spCrvRev)

    # def anchor_setup(self):
    #     rS = self.rigSize
    #     anchorM1 = LocNode(self.rigID + "_anchorM1", size=rS, color=CLB, p=self.masterC)
    #     self.rigNode.setMsg({"anchorM1": anchorM1})
    #     anchorM2 = LocNode(self.rigID + "_anchorM2", size=rS, color=CLB, p=self.masterC)
    #     self.rigNode.setMsg({"anchorM2": anchorM2})
    #     self.rootJ.cstPoi(anchorM1)
    #     self.rootJ.allChildrenJt[-1].cstPoi(anchorM2)
    #     mc.hide(anchorM1, anchorM2)

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.SKL_DATA.a.v
        # visGrp[1] >> self.RIG_DATA.a.v
        # visGrp[1] >> self.PRX_GRP.a.v
        if self.bindJ:
            mc.hide(self.bindJ, self.rbSrf)
        mc.hide(self.ctlJnts, self.fkJntA, self.fkJntB)

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
