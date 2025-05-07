import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.surf_node import SurfNode

from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color


class SpineQd(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.CTL_NUM = 3
        self.FK_JNT_NUM = self.master_guide.a.fkJntNum.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()
        self.LINE_GUIDE = CurveNode(self.rigID + "_line_guide")
        self.TP_GUIDE = DagNode(self.rigID + "_tp_guide")
        self.MD_GUIDE = DagNode(self.rigID + "_md_guide")
        self.RT_GUIDE = DagNode(self.rigID + "_rt_guide")

        self.PV_GUIDE = None
        pvtGuide = DagNode(self.rigID + "_pivot_guide")
        if pvtGuide.exists():
            self.PV_GUIDE = pvtGuide

        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.cog_ctl = None
        self.fore_ctl = None
        self.mid_ctl = None
        self.base_ctl = None
        self.fore2_ctl = None
        self.base2_ctl = None
        self.setting = None
        self.ctls = []

        self.bindJnts = []
        self.fkJnt = []
        self.fkJ_A = []
        self.fkJ_B = []
        self.ctlJnts = []
        self.rbSrf = None
        self.crv = None
        self.crvRev = None
        self.rbCrv = None
        self.rbCrvR = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID = self.rigID
        rSz = self.rigSize
        scale = (rSz * 4, rSz * 4, rSz)
        scale2 = (rSz * 3.5, rSz * 3.5, rSz)

        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="diamond",
            scale=rSz * 2,
            color=Color.BLACK,
            top=1,
            width=2,
            p=self.CTL_DATA,
        )
        self.cog_ctl = CurveNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            scale=(rSz * 0.8, rSz * 1.5, rSz * 2.5),
            color=Color.YELLOW,
        )
        self.cog_ctl.cv_move(0, 70 * rSz, 40 * rSz)

        self.fore_ctl = CurveNode(
            "fore_ctl", pf=rID, shape="circleC", scale=scale, up="z", width=2
        )
        self.mid_ctl = CurveNode(
            "_mid_ctl", pf=rID, shape="circleC", scale=scale2, up="z", width=2
        )
        self.base_ctl = CurveNode(
            "base_ctl", pf=rID, shape="circleC", scale=scale, up="z", width=2
        )
        self.fore2_ctl = CurveNode(
            "fore2_ctl",
            pf=rID,
            shape="squareR",
            up="z",
            scale=rSz * 3,
            color=Color.D_YELLOW,
        )
        self.base2_ctl = CurveNode(
            "base2_ctl",
            pf=rID,
            shape="squareR",
            up="z",
            scale=rSz * 3,
            color=Color.D_YELLOW,
        )
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "fore_ctl": self.fore_ctl,
                "mid_ctl": self.mid_ctl,
                "base_ctl": self.base_ctl,
                "fore2_ctl": self.fore2_ctl,
                "base2_ctl": self.base2_ctl,
            }
        )

    def build(self):
        self.build_module()
        self.rigSize = rSz = CurveNode(self.LINE_GUIDE).length / 100
        self.build_ctl()
        self.build_fk()
        self.build_ik(sliding=0)
        self.post_setup()

    def build_fk(self):
        rID = self.rigID
        logging.info(rID)
        self.fkJnt = self.make_jc_fr_crv("fkJ")
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def make_jc_fr_crv(self, name, addEndJ=0, rev=0, size=1, color=Color.BLUE):
        jc = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            pf=self.rigID,
            name=name,
            rev=rev,
            jntNum=self.FK_JNT_NUM,
            p=self.SKL_DATA,
            size=size,
            addEndJ=addEndJ,
            color=color,
        )
        return jc

    def make_stretchy_ik(self, name, sj=None, ej=None, crv=None, axis="tz", axisDir=1):
        """Build stretcy IK for given joints and curve"""
        ikH = IkNode(
            name,
            pf=self.rigID,
            sj=sj,
            ee=ej,
            sol=2,
            createCrv=0,
            inputCrv=crv,
            setting=self.cog_ctl,
            scaleFix=self.masterC.a["globalScale"],
            p=self.RIG_DATA,
        )
        ikH.stretchySp(axis=axis, axisDir=axisDir)
        return ikH

    def build_ik(self, sliding=1):
        rID = self.rigID
        rSz = self.rigSize
        logging.info(rID)

        self.rbCrv = self.LINE_GUIDE.duplicate(n=rID + "_spCrv_#")
        self.rbCrv | self.RIG_DATA
        if sliding:
            self.rbCrvR = self.rbCrv.duplicate(n=rID + "_spCrvR_#").reverse()

        ikH_1, ikH_A, ikH_B = None, None, None

        if sliding == 0:
            ikH_1 = self.make_stretchy_ik(
                "sp", sj=self.fkJnt[0], ej=self.fkJnt[-1], crv=self.rbCrv
            )
        else:
            self.fkJ_A = self.make_jc_fr_crv("fkJ_A", addEndJ=1, size=rSz)
            self.fkJ_B = self.make_jc_fr_crv("fkJ_B", addEndJ=1, rev=1, size=rSz)

            ikH_A = self.make_stretchy_ik(
                "spA", sj=self.fkJ_A[0], ej=self.fkJ_A[-2], crv=self.rbCrv
            )
            ikH_B = self.make_stretchy_ik(
                "spB", sj=self.fkJ_B[-1], ej=self.fkJ_B[1], crv=self.rbCrvR, axisDir=-1
            )

            baseAttach = self.cog_ctl.a.add("baseAttach", min=0, max=1, dv=1)
            for i in range(self.FK_JNT_NUM):
                if i == 0:
                    common.cstMulti(
                        self.fkJ_B[i + 1],
                        self.fkJ_A[i],
                        self.fkJnt[i],
                        w=baseAttach,
                        cstType="poi",
                    )
                    self.base2_ctl.cstOri(self.fkJnt[0], mo=1)
                else:
                    common.cstMulti(
                        self.fkJ_B[i + 1],
                        self.fkJ_A[i],
                        self.fkJnt[i],
                        w=baseAttach,
                        cstType="par",
                    )

        self.base_ctl.snapAlignTo(self.fkJnt[0], self.RT_GUIDE)
        self.mid_ctl.alignTo(self.MD_GUIDE)
        self.fore_ctl.snapAlignTo(self.fkJnt[-1], self.TP_GUIDE)

        if self.PV_GUIDE:
            self.cog_ctl.alignTo(self.PV_GUIDE)
        else:
            self.cog_ctl.alignTo(self.RT_GUIDE)

        (self.fore_ctl, self.mid_ctl, self.base_ctl) | self.cog_ctl | self.CTL_DATA
        self.cog_ctl.addOffsetGrp()

        fore_gimbal = self.fore_ctl.addGimbal()
        base_gimbal = self.base_ctl.addGimbal()

        self.ctlJnts = self.build_ctl_jnt(
            [base_gimbal, self.mid_ctl, fore_gimbal],
            r=rSz * 8,
        )
        # Orient control last fkJ by tip ctl
        self.fkJnt[-1].a.r.disconnect()
        self.fore_ctl.cstOri(self.fkJnt[-1], mo=1)

        # Bind curve to ctl joints
        self.rbCrv.weightTo(self.ctlJnts, weightDir=1)
        self.rbCrv.a.inheritsTransform.set(0)
        if sliding:
            self.rbCrvR.weightTo(self.ctlJnts, weightDir=-1)
            self.rbCrvR.a.inheritsTransform.set(0)

        # Setup spline ik twist
        self.fore_ctl.addOffsetGrp(below=1)
        self.base_ctl.addOffsetGrp(below=1)

        if sliding:
            ikH_A.spline_twist_setup(self.base_ctl, self.fore_ctl, twistAxis="+z")
            ikH_B.spline_twist_setup(self.fore_ctl, self.base_ctl, twistAxis="-z")
            mc.hide(ikH_A, ikH_B)
        else:
            ikH_1.spline_twist_setup(self.base_ctl, self.fore_ctl, twistAxis="+z")
            mc.hide(ikH_1)

        self.base_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp(count=2)
        self.fore_ctl.addOffsetGrp()

        # Mid ctl setup
        common.cstMulti(
            # self.fore_ctl,
            # self.base_ctl,
            fore_gimbal,
            base_gimbal,
            self.mid_ctl.offset.offset,
            cstType="par",
            mo=1,
        )
        self.fore_ctl.a.rz * 0.3 >> self.mid_ctl.offset.a.rz
        # self.fore_ctl.a.rz @ self.base_ctl.a.rz >> self.mid_ctl.offset.a.rz

        self.rbSrf = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            snap=self.rootJ,
            spans=self.FK_JNT_NUM - 1,
            p=self.RIG_DATA,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})
        self.bindJnts = SurfNode.buildRbJnt(
            self.RBN_JNT_NUM,
            pf=rID,
            size=rSz,
            surf=self.rbSrf,
            rigData=self.RIG_DATA,
            sklData=self.SKL_DATA,
        )
        self.rbSrf.weightTo(self.rootJ.allChildrenJt2, mi=1, chain=0)

        # ----------------------
        #  Add gimbal
        # ----------------------
        # fore_gimbal = self.fore_ctl.addGimbal()
        # base_gimbal = self.base_ctl.addGimbal()
        # fore_gimbal.cstPar(self.fore2_ctl.addOffsetGrp())
        # self.base_ctl.cstPar(self.base2_ctl.addOffsetGrp())

        # ----------------------
        #  Setup tangent ctls
        # ----------------------
        (self.fore2_ctl, self.base2_ctl) | self.CTL_DATA
        base_gimbal.cstPar(self.base2_ctl.addOffsetGrp())
        fore_gimbal.cstPar(self.fore2_ctl.addOffsetGrp())

        self.base2_ctl.a.r >> self.ctlJnts[0].a.r
        self.fore2_ctl.a.r >> self.ctlJnts[2].a.r
        (
            self.base2_ctl.a.add("tangentScale", min=0, max=5, dv=1)
            >> self.ctlJnts[0].a.s
        )
        (
            self.fore2_ctl.a.add("tangentScale", min=0, max=5, dv=1)
            >> self.ctlJnts[2].a.s
        )
        self.ctls = [
            self.fore_ctl,
            self.mid_ctl,
            self.base_ctl,
            self.cog_ctl,
            fore_gimbal,
            base_gimbal,
            self.fore2_ctl,
            self.base2_ctl,
        ]

        for ctl in [self.base_ctl, self.mid_ctl, self.fore_ctl]:
            ctl.a.addSep()
            ctl.a.add("stretchy", proxy=self.cog_ctl.a.stretchy)
            ctl.a.add("stretchMin", proxy=self.cog_ctl.a.stretchMin, k=0)
            ctl.a.add("stretchMax", proxy=self.cog_ctl.a.stretchMax, k=0)

        self.volume_setup()
        self.setting.alignTo(self.cog_ctl, offset=(0, rSz * 90, 0))
        self.cog_ctl.cstPar(self.setting, mo=1)

        self.add_movable_pivot(self.fore_ctl, scale=self.rigSize)
        self.add_movable_pivot(self.base_ctl, scale=self.rigSize)

    def volume_setup(self):
        """Scale ribbon joints according to length of the surface"""

        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf)
        d = arcLD.a.arcLengthInV
        D = d.get()

        autoVol = self.setting.a.add("autoVol", dv=1)
        self.fore_ctl.a.add("autoVol", proxy=autoVol)
        self.base_ctl.a.add("autoVol", proxy=autoVol)

        # keys for volume squash
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.RBN_JNT_NUM - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.RBN_JNT_NUM - 1, v=0)
        mc.setAttr(volGraph, l=1)

        for i in range(self.RBN_JNT_NUM):

            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)

            ratio = (D / (d / scaleFix)) ** (fc.a.varying * autoVol)
            ratio >> self.bindJnts[i].a.sx
            ratio >> self.bindJnts[i].a.sy

    def setup_vis(self):

        # if self.bindJnts:
        #     # mc.hide(self.bindJnts, self.rbSrf)
        #     self.ctl_vis_toggle(
        #         self.masterC2.a["debug"], onList=self.bindJnts + [self.rbSrf]
        #     )

        # self.ctl_vis_toggle(
        #     self.masterC2.a["debug"],
        #     onList=self.ctlJnts + self.fkJ_A + self.fkJ_B + [self.RIG_DATA],
        # )
        pass

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(scale=2, p=self.PRX_GRP, scaler=JointNode(j).a.s)

    def setup_rotate_order(self):
        [c.a.ro.set(2) for c in self.ctls]

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ctls]
        self.setting.a.showAttr()
        self.fore2_ctl.a.showAttr(r=1)
        self.base2_ctl.a.showAttr(r=1)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorM1": self.rootJ,
                "anchorM2": self.rootJ.allChildrenJt[-1],
            }
        )

    def post_setup(self):
        if self.RBN_JNT_NUM > 1:
            self.addBindJntSet(self.bindJnts)
        self.addCtlSet(self.ctls)
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
