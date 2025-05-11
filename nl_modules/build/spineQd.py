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
        self.FK_BONE_NUM = self.master_guide.a.fkJntNum.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CurveNode(rID + "_line_guide")
        self.TP_GUIDE = DagNode(rID + "_tp_guide")
        self.MD_GUIDE = DagNode(rID + "_md_guide")
        self.RT_GUIDE = DagNode(rID + "_rt_guide")
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)
        self.FK_PART = GroupNode("FK", pf=rID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        pvtGuide = DagNode(rID + "_pivot_guide")
        self.PVT_GUIDE = pvtGuide if pvtGuide.exists() else None

        self.setting = None
        self.cog_ctl = None
        self.chest_ctl = None
        self.mid_ctl = None
        self.base_ctl = None
        self.chest2_ctl = None
        self.base2_ctl = None
        self.ctls = []
        self.fkCtl = []
        self.fkJnt = []
        self.ikCtl = []
        self.ikJnt = []
        # self.ikOffsetCtl = []
        # self.ikOffsetJnt = []
        self.rbJnt = []
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
        rID, rSz, xDr = self.getMyVar()
        self.build_module()
        self.rigSize = CurveNode(self.LINE_GUIDE).length / 100
        self.rbSrf = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            spans=self.FK_BONE_NUM + 1,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.build_ctl()
        self.build_ik()
        self.rbSrf.weightTo(self.ikJnt, mi=4, dr=6, chain=0)
        self.build_ribbon_jnt()
        self.build_volume()
        self.post_setup()

    def build_ribbon_jnt(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting.snapTo(self.ikCtl[0])
        self.setting.addOffsetGrp(snapIt=1)
        self.setting.a.t.set(0, rSz * 50, 0)
        self.ikCtl[0].cstPar(self.setting.offset, mo=1)

        spineScale = self.setting.a.add("spineScale", min=0.01, dv=1)
        spineScale >> self.IK_PART.a.s

        stretchy = self.setting.a.add("stretchy", min=0, max=1)

        crv = CurveNode(mc.duplicateCurve(self.rbSrf + ".u[0.5]", rn=0, local=0)[0])
        crv | self.RIG_DATA

        crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
        crv.shape.a.worldSpace >> crvInfo.a.inputCurve

        ratio = (
            crvInfo.a.arcLength
            / self.masterC.a.globalScale
            / self.setting.a["spineScale"]
            / crv.length
        )
        ratioOut = ut.blend2_(ratio, 1, stretchy)

        sep = 1 / (self.RBN_JNT_NUM - 1)
        locGrp = GroupNode("loc_grp", pf=rID, p=self.RIG_DATA)
        for i in range(self.RBN_JNT_NUM):

            mp = DagNode("mp_#", nodeType="motionPath")
            #
            #   Parametric Length at motionPath must be OFF for
            #   even sliding to work along the whole curve
            #
            mp.a.fm.set(1)
            # mp.a.uValue.set(i * sep)

            (i * sep) / ratioOut >> mp.a.uValue

            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
            posi.a.turnOnPercentage.set(1)

            aimCst = DagNode("aimCst_#", nodeType="aimConstraint")
            aimCst | self.RIG_DATA
            loc = LocNode(f"{i}_loc", pf=rID, p=locGrp)
            crv.shape.a.worldSpace >> mp.a.geometryPath
            mp.a.allCoordinates >> cpos.a.inPosition

            self.rbSrf.shape.a.worldSpace >> cpos.a.inputSurface
            cpos.a.parameterU >> posi.a.parameterU
            cpos.a.parameterV >> posi.a.parameterV

            self.rbSrf.shape.a.worldSpace >> posi.a.inputSurface
            mc.connectAttr(f"{posi}.tangentV", f"{aimCst}.target[0].targetTranslate")
            posi.a.tangentU >> aimCst.a.worldUpVector
            posi.a.position >> loc.a.translate

            aimCst.a.constraintRotateX >> loc.a.rx
            aimCst.a.constraintRotateY >> loc.a.ry
            aimCst.a.constraintRotateZ >> loc.a.rz

            jnt = JointNode(
                f"{i}_rbj",
                pf=rID,
                align=loc,
                r=rSz / self.RBN_JNT_NUM * 12,
                p=loc,
                reset=1,
                color=Color.D_RED,
            )
            self.rbJnt.append(jnt)
            self.ikCtl[0].a.s >> loc.a.s

        self.bindJnts = self.rbJnt

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()
        #
        #   build chain from crv
        #
        self.ikJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            num=5,
            name="ikj",
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz * 4,
            color=Color.BLUE,
        )
        #
        #   build 5 ik ctls
        #
        for i in range(0, 5):
            ctl = CurveNode(
                f"{i}_ikc",
                pf=rID,
                shape="fk_rotator",
                scale=rSz * 4,
                align=self.ikJnt[i],
                addOfs=1,
                p=self.IK_PART,
                width=2,
            )
            ctl.cv_rotate(0, 90, 0)
            self.ikJnt[i] | ctl
            self.ikCtl.append(ctl)
        #
        #   parenting for spine
        #
        self.ikCtl[1].offset | self.ikCtl[0]
        self.ikCtl[-2].offset | self.ikCtl[-1]
        loc0 = LocNode("loc#", pf=rID, align=self.ikCtl[2], p=self.ikCtl[0])
        loc1 = LocNode("loc#", pf=rID, align=self.ikCtl[2], p=self.ikCtl[-1])
        common.cstMulti(loc0, loc1, self.ikCtl[2].offset, cstType="par")

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
                "anchorM1": self.rbJnt[0],
                "anchorM2": self.rbJnt[-1],
            }
        )

    def post_setup(self):
        if self.RBN_JNT_NUM > 1:
            self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.ikCtl)
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
