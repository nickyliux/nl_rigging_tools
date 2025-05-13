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

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CurveNode(rID + "_line_guide")
        self.TP_GUIDE = DagNode(rID + "_tp_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")
        self.RT_GUIDE = DagNode(rID + "_rt_guide")

        self.PVT_GUIDE = None
        pvtGuide = DagNode(rID + "_pivot_guide")
        if pvtGuide.exists():
            self.PVT_GUIDE = pvtGuide

        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)

        self.cog_ctl = None
        self.chest_ctl = None
        self.mid_ctl = None
        self.base_ctl = None
        self.chest2_ctl = None
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

        self.endFix_base = None
        self.endFix_chest = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()

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

        self.chest_ctl = CurveNode(
            "chest_ctl", pf=rID, shape="fk_rotator", scale=rSz * 8, width=2
        )
        self.chest_ctl.cv_rotate(0, 90, 0)

        self.mid_ctl = CurveNode(
            "mid_ctl", pf=rID, shape="circleC", scale=rSz * 4, up="z", width=2
        )
        self.base_ctl = CurveNode(
            "base_ctl", pf=rID, shape="fk_rotator", scale=rSz * 8, width=2
        )
        self.base_ctl.cv_rotate(0, 90, 0)

        self.chest2_ctl = CurveNode(
            "chest2_ctl",
            pf=rID,
            shape="squareR",
            up="z",
            scale=rSz * 3,
            color=Color.YELLOW,
        )
        self.base2_ctl = CurveNode(
            "base2_ctl",
            pf=rID,
            shape="squareR",
            up="z",
            scale=rSz * 3,
            color=Color.YELLOW,
        )
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "cog_ctl": self.cog_ctl,
                "chest_ctl": self.chest_ctl,
                "mid_ctl": self.mid_ctl,
                "base_ctl": self.base_ctl,
                "chest2_ctl": self.chest2_ctl,
                "base2_ctl": self.base2_ctl,
            }
        )

    def build(self):
        self.build_module()
        self.rigSize = CurveNode(self.LINE_GUIDE).length / 100
        self.build_ctl()
        self.build_fk()
        self.build_ik(sliding=0)
        self.post_setup()

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()
        self.fkJnt = JointNode.createJntFrCrv(
            self.LINE_GUIDE,
            pf=rID,
            name="fkj",
            num=self.FK_JNT_NUM,
            size=rSz,
            p=self.SKL_DATA,
        )
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

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
            setting=self.setting,
            scaleFix=self.masterC.a["globalScale"],
            p=self.RIG_DATA,
        )
        ikH.stretchySp(axis=axis, axisDir=axisDir)
        return ikH

    def build_ik(self, sliding=0):
        rID, rSz, xDr = self.getMyVar()

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
            self.fkJ_A = JointNode.createJntFrCrv(
                self.LINE_GUIDE,
                pf=rID,
                name="fkj_A",
                num=self.FK_JNT_NUM,
                size=rSz,
                p=self.SKL_DATA,
                addEndJ=1,
            )
            self.fkJ_B = JointNode.createJntFrCrv(
                self.LINE_GUIDE,
                pf=rID,
                name="fkj_B",
                num=self.FK_JNT_NUM,
                size=rSz,
                p=self.SKL_DATA,
                addEndJ=1,
                rev=1,
            )
            ikH_A = self.make_stretchy_ik(
                "spA", sj=self.fkJ_A[0], ej=self.fkJ_A[-2], crv=self.rbCrv
            )
            ikH_B = self.make_stretchy_ik(
                "spB", sj=self.fkJ_B[-1], ej=self.fkJ_B[1], crv=self.rbCrvR, axisDir=-1
            )

            endAttach = self.setting.a.add("endAttach", min=0, max=1, dv=1)

            for i in range(self.FK_JNT_NUM):
                if i == 0:
                    common.cstMulti(
                        self.fkJ_B[i + 1],
                        self.fkJ_A[i],
                        self.fkJnt[i],
                        w=endAttach,
                        cstType="poi",
                    )
                    self.base2_ctl.cstOri(self.fkJnt[0], mo=1)
                else:
                    common.cstMulti(
                        self.fkJ_B[i + 1],
                        self.fkJ_A[i],
                        self.fkJnt[i],
                        w=endAttach,
                        cstType="par",
                    )

        self.base_ctl.snapAlignTo(self.fkJnt[0], self.RT_GUIDE)
        self.mid_ctl.alignTo(self.MD_GUIDE)
        # self.chest_ctl.snapAlignTo(self.fkJnt[-1], self.TP_GUIDE)
        self.chest_ctl.snapTo(self.TP_GUIDE)

        self.cog_ctl.snapTo(self.RT_GUIDE)

        (self.chest_ctl, self.mid_ctl, self.base_ctl) | self.cog_ctl | self.CTL_DATA
        self.cog_ctl.addOffsetGrp()

        self.setting.alignTo(self.cog_ctl, offset=(0, rSz * 70, 0))
        self.cog_ctl.cstPar(self.setting, mo=1)

        chest_gimbal = self.chest_ctl.add_gimbal()
        base_gimbal = self.base_ctl.add_gimbal()

        self.ctlJnts = self.build_ctl_jnt(
            [base_gimbal, self.mid_ctl, chest_gimbal],
            r=rSz * 12,
        )
        #
        #   orient control last fkJ by tip ctl
        #
        self.fkJnt[-1].a.r.disconnect()
        self.chest_ctl.cstOri(self.fkJnt[-1], mo=1)

        self.rbCrv.weightTo(self.ctlJnts, weightDir=1)
        self.rbCrv.a.inheritsTransform.set(0)

        #
        #   spline IK twist
        #
        self.chest_ctl.addOffsetGrp(below=1)
        self.base_ctl.addOffsetGrp(below=1)

        if sliding:
            self.rbCrvR.weightTo(self.ctlJnts, weightDir=-1)
            self.rbCrvR.a.inheritsTransform.set(0)

            ikH_A.spline_twist_setup(self.base_ctl, self.chest_ctl, twistAxis="+z")
            ikH_B.spline_twist_setup(self.chest_ctl, self.base_ctl, twistAxis="-z")
            mc.hide(ikH_A, ikH_B)
        else:
            ikH_1.spline_twist_setup(self.base_ctl, self.chest_ctl, twistAxis="+z")
            mc.hide(ikH_1)

        self.base_ctl.addOffsetGrp()
        self.mid_ctl.addOffsetGrp(count=2)
        self.chest_ctl.addOffsetGrp()
        #
        #   mid ctl setup
        #
        common.cstMulti(
            chest_gimbal, base_gimbal, self.mid_ctl.offset.offset, cstType="par", mo=1
        )
        self.chest_ctl.a.rz * 0.3 >> self.mid_ctl.offset.a.rz
        #
        #   build Srf
        #
        self.rbSrf = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            snap=self.RT_GUIDE,
            spans=self.FK_JNT_NUM - 1,
            p=self.RIG_DATA,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})
        #
        #   use closestPointOnSurface to fix wiggle at both ends
        #
        self.endFix_base = self.fix_crv_wiggle(
            jnt=self.fkJnt[0], srf=self.rbSrf, p=self.RIG_DATA, ctl=self.base2_ctl
        )
        self.endFix_chest = self.fix_crv_wiggle(
            jnt=self.fkJnt[-1], srf=self.rbSrf, p=self.RIG_DATA, ctl=self.chest2_ctl
        )

        self.bindJnts = SurfNode.buildRbJnt(
            self.RBN_JNT_NUM,
            pf=rID,
            size=rSz,
            surf=self.rbSrf,
            rigData=self.RIG_DATA,
            sklData=self.SKL_DATA,
        )
        self.rbSrf.weightTo(self.rootJ.allChildrenJt2, mi=1)  # , chain=0)
        #
        #   local chest & base setup
        #
        (self.chest2_ctl, self.base2_ctl) | self.CTL_DATA
        base_gimbal.cstPar(self.base2_ctl.addOffsetGrp())
        chest_gimbal.cstPar(self.chest2_ctl.addOffsetGrp())

        self.base2_ctl.a.r >> self.ctlJnts[0].a.r
        self.chest2_ctl.a.r >> self.ctlJnts[2].a.r
        self.base2_ctl.a.add("tangentScale", min=0, dv=1) >> self.ctlJnts[0].a.s
        self.chest2_ctl.a.add("tangentScale", min=0, dv=1) >> self.ctlJnts[2].a.s

        for ctl in [self.base_ctl, self.mid_ctl, self.chest_ctl]:
            ctl.a.addSep()
            ctl.a.add("stretchy", proxy=self.setting.a.stretchy)
            ctl.a.add("stretchMin", proxy=self.setting.a.stretchMin, k=0)
            ctl.a.add("stretchMax", proxy=self.setting.a.stretchMax, k=0)

        self.build_volume()

        self.add_movable_pivot(self.chest_ctl, snap=self.MD_GUIDE)
        self.add_movable_pivot(self.base_ctl, snap=self.PVT_GUIDE)

        self.ctls = [
            self.chest_ctl,
            self.mid_ctl,
            self.base_ctl,
            self.cog_ctl,
            chest_gimbal,
            base_gimbal,
            self.chest2_ctl,
            self.base2_ctl,
        ]

    def fix_crv_wiggle(self, jnt=None, srf=None, p=None, ctl=None):

        cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
        dcmp = DagNode("dcmp_#", nodeType="decomposeMatrix")
        loc = LocNode(f"fix_loc_#", pf=self.rigID, p=p)

        srf.shape.a.worldSpace >> cpos.a.inputSurface
        jnt.a.worldMatrix >> dcmp.a.inputMatrix
        dcmp.a.outputTranslate >> cpos.a.inPosition
        cpos.a.position >> loc.a.t

        # jnt.cstOri(loc, mo=1)
        ctl.cstOri(loc, mo=1)
        return loc

    def build_volume(self):
        """Scale ribbon joints according to length of the surface"""

        scaleFix = self.masterC.a["globalScale"]
        arcLD = ut.arcLenDim_(self.rbSrf)
        d = arcLD.a.arcLengthInV
        D = d.get()

        autoVol = self.setting.a.add("autoVol", dv=1)
        self.chest_ctl.a.add("autoVol", proxy=autoVol)
        self.base_ctl.a.add("autoVol", proxy=autoVol)
        #
        #   add graph keys
        #
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
        pass

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP, scaler=JointNode(j).a.s)

    def setup_rotate_order(self):
        [c.a.ro.set(2) for c in self.ctls]

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ctls]
        self.setting.a.showAttr()
        self.chest2_ctl.a.showAttr(r=1)
        self.base2_ctl.a.showAttr(r=1)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorM1": self.endFix_base,
                "anchorM2": self.endFix_chest,
            }
        )

    def post_setup(self):
        if self.RBN_JNT_NUM > 1:
            self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.ctls)
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
