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
        self.base_ctl = None
        self.fkCtl = []
        self.fkJnt = []
        self.ikCtl = []
        self.ikJnt = []
        self.rbJnt = []
        self.bindJnts = []
        self.fkJnt = []
        self.rbSrf = None
        self.rbCrv = None
        self.lenRatio = None

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
        self.setting.a.add("spineScale", min=0.01, dv=1)

        self.cog_ctl = CurveNode(
            "cog_ctl",
            pf=rID,
            shape="trapezoid",
            scale=(rSz * 0.8, rSz * 1.5, rSz * 2.5),
            color=Color.YELLOW,
            p=self.IK_PART,
        )
        self.cog_ctl.cv_move(0, 70 * rSz, 40 * rSz)

        self.chest_ctl = CurveNode(
            "chest_ctl",
            pf=rID,
            shape="squareR",
            up="z",
            scale=rSz * 3,
            color=Color.YELLOW,
        )
        self.base_ctl = CurveNode(
            "base_ctl",
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
            }
        )

    def build(self):
        rID, rSz, xDr = self.getMyVar()

        self.build_module()
        mc.delete(self.rootJ)
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
        #
        #   create crv on srf
        #
        self.rbCrv = CurveNode(
            mc.duplicateCurve(self.rbSrf + ".u[0.5]", rn=0, local=0)[0]
        )
        self.rbCrv | self.RIG_DATA

        spineScale = self.setting.a["spineScale"]
        spineScale >> self.IK_PART.a.s
        spineScale >> self.PRX_GRP.a.s

        crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
        self.rbCrv.shape.a.worldSpace >> crvInfo.a.inputCurve

        self.lenRatio = (
            crvInfo.a.arcLength
            / self.masterC.a.globalScale
            / spineScale
            / self.rbCrv.length
        )
        stretchy = self.setting.a.add("stretchy", min=0, max=1)
        for c in self.ikCtl:
            stretchy = c.a.add("stretchy", min=0, max=1, proxy=stretchy)

        ratioOut = ut.blend2_(self.lenRatio, 1, stretchy)
        sep = 1 / (self.RBN_JNT_NUM - 1)
        locGrp = GroupNode("loc_grp", pf=rID, p=self.RIG_DATA)
        for i in range(self.RBN_JNT_NUM):

            mp = DagNode("mp_#", nodeType="motionPath")
            #
            #   Parametric Length at motionPath must be OFF for
            #   even sliding to work along the whole curve
            #
            mp.a.fm.set(1)
            (i * sep) / ratioOut >> mp.a.uValue

            cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
            posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
            posi.a.turnOnPercentage.set(1)

            aimCst = DagNode("aimCst_#", nodeType="aimConstraint")
            aimCst | self.RIG_DATA
            loc = LocNode(f"{i}_loc", pf=rID, p=locGrp)
            self.rbCrv.shape.a.worldSpace >> mp.a.geometryPath
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
        #   position cog & setting
        #
        self.cog_ctl.snapTo(self.RT_GUIDE)
        self.cog_ctl.addOffsetGrp()
        self.setting.snapTo(self.RT_GUIDE, offset=(0, rSz * 70, 0))
        self.cog_ctl.cstPar(self.setting, mo=1)

        #
        #   build 5 ik ctls
        #
        for i in range(3):
            ctl = CurveNode(
                f"{i}_ikc",
                pf=rID,
                shape="fk_rotator",
                scale=rSz * 10,
                align=self.ikJnt[i * 2],
                addOfs=1,
                p=self.cog_ctl,
                width=2,
            )
            ctl.cv_rotate(0, 90, 0)
            self.ikCtl.append(ctl)

        self.base_ctl.alignTo(self.ikCtl[0], p=self.ikCtl[0])
        self.chest_ctl.alignTo(self.ikCtl[2], p=self.ikCtl[2])

        (self.ikJnt[1], self.ikJnt[0]) | self.base_ctl
        self.ikJnt[2] | self.ikCtl[1]
        (self.ikJnt[3], self.ikJnt[4]) | self.chest_ctl
        #
        #   parenting for spine
        #
        loc0 = LocNode("loc#", pf=rID, align=self.ikCtl[1], p=self.ikCtl[0], v=0)
        loc1 = LocNode("loc#", pf=rID, align=self.ikCtl[1], p=self.ikCtl[2], v=0)
        common.cstMulti(loc0, loc1, self.ikCtl[1].offset, cstType="par")
        #
        #   set tanget joint's distance depending on total length
        #
        d = ut.distDim_(self.base_ctl, self.chest_ctl)
        tz = self.ikJnt[1].a.tz.get()
        (
            d
            * (tz / d.get())
            / self.setting.a["spineScale"]
            / self.masterC.a["globalScale"]
            >> self.ikJnt[1].a.tz
        )
        self.ikJnt[1].a.tz * -1 >> self.ikJnt[3].a.tz

        self.add_movable_pivot(self.ikCtl[2], snap=self.MD_GUIDE)
        self.add_movable_pivot(self.ikCtl[0], snap=self.PVT_GUIDE)

    def build_volume(self):
        #
        #   add volume graph keys
        #
        volGraph = self.setting.a.add("volGraph", dv=0)
        mc.setKeyframe(volGraph, t=0, v=0)
        mc.setKeyframe(volGraph, t=(self.RBN_JNT_NUM - 1) / 2, v=1)
        mc.setKeyframe(volGraph, t=self.RBN_JNT_NUM - 1, v=0)
        mc.setAttr(volGraph, l=1)
        #
        #   set rbj scale acc to surf length
        #
        autoVol = self.setting.a.add("autoVol", dv=1)
        for i in range(self.RBN_JNT_NUM):

            fc = DagNode("fc__#", nodeType="frameCache")
            volGraph >> fc.a.stream
            fc.a.varyTime.set(i)
            ratio = (1 / self.lenRatio) ** (fc.a.varying * autoVol)
            ratio >> self.bindJnts[i].a.sy
            ratio >> self.bindJnts[i].a.sz

    def setup_vis(self):
        pass

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP)

    def setup_rotate_order(self):
        [c.a.ro.set(2) for c in self.ikCtl]

    def setup_channel(self):
        [ctl.a.showAttr(t=1, r=1) for ctl in self.ikCtl]
        self.setting.a.showAttr()
        self.chest_ctl.a.showAttr("sz", t=1, r=1)
        self.base_ctl.a.showAttr("sz", t=1, r=1)

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
