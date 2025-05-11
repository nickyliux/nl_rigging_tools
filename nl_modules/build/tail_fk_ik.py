import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color


class TailFkIk(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_BONE_NUM = self.master_guide.a.fkBoneNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CurveNode(rID + "_line_guide")
        self.RT_GUIDE = CurveNode(rID + "_rt_guide")
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)
        self.FK_PART = GroupNode("FK", pf=rID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=rID, p=self.CTL_DATA)

        self.setting = None
        self.fkCtl = []
        self.fkJnt = []
        self.ikCtl = []
        self.ikJnt = []
        self.ikOffsetCtl = []
        self.ikOffsetJnt = []
        self.rbJnt = []
        self.rbSrf1 = None
        self.rbSrf2 = None
        self.REVERSE = 0
        self.bindJnts = []

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["rt", "md", "tp"])

    def build(self):
        rID, rSz, xDr = self.getMyVar()
        self.build_module()
        self.rbSrf1 = SurfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=1,
            spans=self.FK_BONE_NUM,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )

        self.rbSrf2 = self.rbSrf1.duplicate()
        self.rigNode.setMsg({"rbSrf": self.rbSrf2})

        self.build_ctl()
        self.build_ik()
        self.build_fk()
        self.build_stretchy_rbj()
        self.post_setup()

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
        self.rigNode.setMsg(
            {
                "setting": self.setting,
            }
        )

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()
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

        for i in range(0, 5):
            ctl = CurveNode(
                f"{i}_ikc",
                pf=rID,
                shape="sphere2",
                scale=rSz * 4,
                align=self.ikJnt[i],
                addOfs=1,
                p=self.IK_PART,
            )
            self.ikJnt[i] | ctl
            self.ikCtl.append(ctl)
            if i > 0:
                ctl.offset | self.ikCtl[0]

            self.rigNode.setMsg({f"ikc{i}": ctl})

        SurfNode(self.rbSrf1).weightTo(self.ikJnt, mi=4, dr=6, chain=0)

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        # ------------------------------------------
        # Build fkJ
        # ------------------------------------------
        self.fkJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            num=self.FK_BONE_NUM + 1,
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz,
            p=self.SKL_DATA,
        )
        # ------------------------------------------
        # Build pins for fkCtl
        # ------------------------------------------
        coord = []
        for i in range(self.FK_BONE_NUM + 1):
            coord.append((0.5, i / self.FK_BONE_NUM))

        pin, pinXf = common.nlRivet(geo=self.rbSrf1, coordList=coord, p=self.RIG_DATA)

        # ------------------------------------------
        # Build fkCtls
        # ------------------------------------------
        for i in range(self.FK_BONE_NUM + 1):
            ctl = CurveNode(
                f"{i}_fkc",
                pf=rID,
                shape="circleC",
                up="z",
                scale=rSz,
                align=self.fkJnt[i],
                color=Color.YELLOW,
            )
            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)

        # ------------------------------------------
        # Build group chain
        # ------------------------------------------
        chainGrps = []
        lastGrp = self.FK_PART
        for i in range(self.FK_BONE_NUM + 1):
            grp = GroupNode(f"{i}_chainGrp", pf=rID, align=self.fkCtl[i], p=lastGrp)
            pinXf[i].cstPar(grp, mo=1)
            chainGrps.append(grp)
            lastGrp = grp

        self.build_fk_with_ctl3(self.fkJnt, self.fkCtl, p=self.FK_PART)

        # ------------------------------------------
        # Cnnnect chain grps to fkCtl offset
        # ------------------------------------------
        for i in range(self.FK_BONE_NUM + 1):
            chainGrps[i].a.t >> self.fkCtl[i].offset.a.t
            chainGrps[i].a.r >> self.fkCtl[i].offset.a.r

        # SurfNode(self.rbSrf2).weightTo(self.fkJnt)
        # mc.delete(self.fkJnt)

        # ------------------------------------------
        # Build lowest ikCtl layer
        # ------------------------------------------
        for i in range(self.FK_BONE_NUM + 1):
            ctl = CurveNode(
                f"{i}_offset_ikc",
                pf=rID,
                shape="sphere2",
                scale=rSz / 2,
                align=self.fkCtl[i],
                p=self.fkCtl[i],
            )
            ctl.cv_move(0, rSz * 18, 0)
            jnt = JointNode(
                f"{i}_offset_ikj", pf=rID, align=ctl, p=ctl, color=Color.RED
            )

            self.ikOffsetCtl.append(ctl)
            self.ikOffsetJnt.append(jnt)

        SurfNode(self.rbSrf2).weightTo(self.ikOffsetJnt, chain=0, mi=2, dr=6)

        self.isolate_align(self.ikCtl[0], [self.ikCtl[0].offset, self.masterC])

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        # scalable
        self.ikCtl[0].a.s >> self.FK_PART.a.s

    def build_stretchy_rbj(self):
        rID, rSz, xDr = self.getMyVar()

        self.setting.snapTo(self.ikCtl[0])
        self.setting.addOffsetGrp(snapIt=1)
        self.setting.a.t.set(0, rSz * 50, 0)
        self.ikCtl[0].cstPar(self.setting.offset, mo=1)

        tailScale = self.setting.a.add("tailScale", min=0.01, dv=1)
        tailScale >> self.ikCtl[0].a.s
        tailScale >> self.setting.offset.a.s

        stretchy = self.setting.a.add("stretchy", min=0, max=1)
        self.ikCtl[-1].a.add("stretchy", proxy=stretchy)
        self.fkCtl[-1].a.add("stretchy", proxy=stretchy)

        crv = CurveNode(mc.duplicateCurve(self.rbSrf2 + ".u[0.5]", rn=0, local=0)[0])
        crv | self.RIG_DATA

        crvInfo = DagNode("crvInfo#", nodeType="curveInfo")
        crv.shape.a.worldSpace >> crvInfo.a.inputCurve

        ratio = (
            crvInfo.a.arcLength
            / self.masterC.a.globalScale
            / self.setting.a.tailScale
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

            self.rbSrf2.shape.a.worldSpace >> cpos.a.inputSurface
            cpos.a.parameterU >> posi.a.parameterU
            cpos.a.parameterV >> posi.a.parameterV

            self.rbSrf2.shape.a.worldSpace >> posi.a.inputSurface
            mc.connectAttr(f"{posi}.tangentV", f"{aimCst}.target[0].targetTranslate")
            posi.a.tangentU >> aimCst.a.worldUpVector
            posi.a.position >> loc.a.translate

            aimCst.a.constraintRotateX >> loc.a.rx
            aimCst.a.constraintRotateY >> loc.a.ry
            aimCst.a.constraintRotateZ >> loc.a.rz

            jnt = JointNode(
                f"{i}_rbj", pf=rID, align=loc, r=rSz, p=loc, reset=1, color=Color.D_RED
            )
            self.rbJnt.append(jnt)
            self.ikCtl[0].a.s >> loc.a.s

        self.bindJnts = self.rbJnt

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a.add("ikCtl", k=0, min=0, max=1, dv=1),
            onList=[self.ikCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtl", k=0, min=0, max=1, dv=1),
            onList=[self.fkCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("subCtl", k=0, min=0, max=1, dv=0),
            onList=self.ikOffsetCtl,
        )
        mc.hide(self.ikJnt, self.fkJnt, self.ikOffsetJnt, self.rbJnt)

    def setup_channel(self):
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

    def setup_rotate_order(self):
        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(
                p=self.PRX_GRP, scaler=self.setting.a["tailScale"], scale=1
            )

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.ikCtl + self.fkCtl + self.ikOffsetCtl + [self.setting])
        self.setup_anchor_module({"anchorF1": self.ikCtl[0].offset.offset})
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
