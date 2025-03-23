import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ribbon_node import RibbonNode
from nl_modules.nodel.surf_node import SurfNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


class Tail(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_CTL_NUM = self.master_guide.a.fkCtlNum.get()
        self.BIND_JNT_NUM = self.master_guide.a.bindJntNum.get()
        self.fkCtl = None
        self.fkJnt = None
        self.bindJ = None
        self.setting = None
        self.rbSrf = None
        self.REVERSE_RB = 0

    def genGuideSk(self):
        self.genSk_module(["st", "md", "ed"])

    def build(self):
        self.build_module()
        self.build_rbSrf()
        self.build_fk()
        self.build_rbJ()
        self.post_setup()

    def build_rbSrf(self):
        rID = self.rigID
        rSz = self.rigSize
        line_guide = DagNode(rID + "_line_guide")
        widthLine = CurveNode.buildLine(
            (rSz, 0, 0), (-rSz, 0, 0), n="rbCrvWidth_#", pf=rID
        )
        if self.REVERSE_RB:
            mc.reverseCurve(widthLine, ch=0, rpo=1)
        self.rootJ.cstPoi(widthLine, keep=0)

        rebuiltLine = CurveNode(
            mc.rebuildCurve(
                line_guide,
                n=rID + "_line_#",
                ch=0,
                rpo=0,
                rt=0,
                end=1,
                kr=2,
                kcp=0,
                kep=1,
                kt=0,
                s=self.FK_CTL_NUM - 1,
                d=3,
                tol=0.01,
            )[0]
        )
        rebuiltLine | self.RIG_DATA

        self.rbSrf = DagNode(
            mc.extrude(
                widthLine,
                rebuiltLine,
                n=rID + "_rbSrf",
                ch=0,
                rn=0,
                po=0,
                et=1,
                fpt=0,
                upn=1,
            )[0]
        )
        self.rbSrf | self.RIG_DATA
        rebuiltLine.delete()
        widthLine.delete()

    def build_fk(self):
        rID = self.rigID
        rSz = self.rigSize
        self.fkCtl = []
        self.fkJnt = []
        clusters = []
        cluName = rID + "clu_#"
        CY = Color.YELLOW

        # -----------------------------------------
        # LAST 2 CLUSTERS, UNDER FIRST CTL
        # -----------------------------------------
        clu1 = DagNode(mc.cluster(f"{self.rbSrf}.cv[0][*]", n=cluName)[1])
        clu2 = DagNode(mc.cluster(f"{self.rbSrf}.cv[1][*]", n=cluName)[1])
        jnt = JointNode("1_fkj", pf=rID, align=clu1, p=self.SKL_DATA)
        ctl = CurveNode(
            "1_fkc",
            shape="circle_round",
            pf=rID,
            up="x",
            scale=rSz * 2,
            addOfs=1,
            color=CY,
            p=self.CTL_DATA,
        )
        self.rigNode.setMsg({"fkc1": ctl})
        self.fkCtl.append(ctl)
        self.fkJnt.append(jnt)
        clusters.extend([clu1, clu2])

        if self.FK_CTL_NUM < 2:
            logging.error("ctl num must be >= 2")
            return

        # -----------------------------------------
        # MID CLUSTERS PARENTED UNDER CORR. CTL
        # -----------------------------------------
        for i in range(2, self.FK_CTL_NUM):
            clu = DagNode(
                mc.cluster(f"{self.rbSrf}.cv[{i}][*]", n=cluName)[1],
            )
            jnt = JointNode(f"{i}_fkj", pf=self.rigID, align=clu)
            ctl = CurveNode(
                f"{i}_fkc",
                pf=rID,
                shape="circle_round",
                up="x",
                scale=rSz * 1.5,
                addOfs=1,
                color=Color.D_YELLOW,
            )
            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)
            self.fkJnt.append(jnt)
            clusters.append(clu)

        # -----------------------------------------
        # LAST 2 CLUSTERS, UNDER LAST CTL
        # -----------------------------------------
        clu2_ = DagNode(
            mc.cluster(f"{self.rbSrf}.cv[{self.FK_CTL_NUM}][*]", n=cluName)[1]
        )
        clu1_ = DagNode(
            mc.cluster(f"{self.rbSrf}.cv[{self.FK_CTL_NUM + 1}][*]", n=cluName)[1]
        )
        jnt = JointNode(f"{self.FK_CTL_NUM}_fkj", pf=rID, align=clu2_)
        ctl = CurveNode(
            f"{self.FK_CTL_NUM}_fkc",
            shape="circle_round",
            pf=rID,
            up="x",
            scale=rSz * 1.5,
            addOfs=1,
            color=Color.D_YELLOW,
        )
        self.rigNode.setMsg({f"fkc{self.FK_CTL_NUM}": ctl})
        self.fkCtl.append(ctl)
        self.fkJnt.append(jnt)
        clusters.extend([clu2_, clu1_])
        # ADJUST FKJ POS CLOSER TO SURF
        SurfNode.moveCloseToSurf(self.fkJnt, self.rbSrf)

        # PARENT FK JNT
        for i in range(1, len(self.fkJnt)):
            self.fkJnt[i].cstAim(self.fkJnt[i - 1], keep=0, u=(0, 0, 1))
            self.fkJnt[i] | self.fkJnt[i - 1]
        self.fkJnt[0].freezeXf()
        self.fkJnt[-1].a.jointOrient.reset()

        # PARENT FK CTL & CST JNT
        for i in range(len(self.fkCtl)):
            self.fkCtl[i].offset.alignTo(self.fkJnt[i])
            if i > 0:
                self.fkCtl[i].offset | self.fkCtl[i - 1]
            self.fkCtl[i].cstPar(self.fkJnt[i], mo=1)

        # CST CLUSTERS TO JNT
        self.fkJnt[0].cstPar(clusters[0], mo=1)
        self.fkJnt[0].cstPar(clusters[1], mo=1)
        for i in range(1, self.FK_CTL_NUM):
            self.fkJnt[i].cstPar(clusters[i + 1], mo=1)
        self.fkJnt[-1].cstPar(clusters[-2], mo=1)
        self.fkJnt[-1].cstPar(clusters[-1], mo=1)

        # ADD FOLLOW ALIGN ON 1 ST FK CTL
        self.isolateAlign(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC])

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        # cleanup
        [c | self.RIG_DATA for c in clusters]
        mc.hide(clusters)

    def build_rbJ(self):
        if self.BIND_JNT_NUM > 1:
            self.bindJ = []
            coord = []
            sep = (self.FK_CTL_NUM - 1) / (self.BIND_JNT_NUM - 1)
            for i in range(self.BIND_JNT_NUM):
                coord.append((i * sep, 0.5))
            pin, pinXf = common.nlRivet(
                geo=self.rbSrf, coordList=coord, p=self.RIG_DATA
            )

            for loc in pinXf:
                j = JointNode(
                    self.rigID + "_rbJ_#", align=loc, color=Color.RED, p=self.SKL_DATA
                )
                loc.cstPar(j)
                self.bindJ.append(j)

    def vis_setup(self):
        if self.bindJ:
            self.rbSrf.hide()

    def ro_setup(self):
        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def proxy_setup(self):
        rSz = self.rigSize * 6
        if self.bindJ:
            for j in self.bindJ:
                JointNode(j).addProxyMesh(size=rSz, p=self.PRX)

    def post_setup(self):
        rID = self.rigID
        self.addBindJntSet(jntList=self.bindJ)
        self.addCtlSet(ctlList=self.fkCtl)
        self.anchor_setup_module({"anchorF1": self.fkCtl[0].offset})
        self.proxy_setup()
        self.vis_setup()
        self.ro_setup()
        self.post_module()
