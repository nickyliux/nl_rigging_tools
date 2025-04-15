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

CDR = Color.D_RED


class Tail(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_JNT_NUM = self.master_guide.a.fkJntNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        self.LINE_GUIDE = DagNode(self.rigID + "_line_guide")
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.fkCtl = None
        self.fkJnt = None
        self.bindJ = None
        self.setting = None
        self.rbSrf = None
        self.allClusters = []
        self.REVERSE_RB = 0

    def genGuideSk(self):
        self.genSk_module(["st", "md", "ed"])

    def build(self):
        self.build_module()
        self.build_rbSrf()
        self.build_fk()
        if self.RBN_BONES:
            self.build_rbJ()
        else:
            mc.delete(self.allClusters, self.rbSrf)

        self.post_setup()

    def build_rbSrf(self):
        rID = self.rigID
        rSz = self.rigSize
        line_guide = DagNode(rID + "_line_guide")
        widthLine = CurveNode.buildLine(
            (rSz * 4, 0, 0), (-rSz * 4, 0, 0), n="rbCrvWidth_#", pf=rID
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
                s=self.FK_JNT_NUM - 1,
                d=2,  # 5 cv
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
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        rebuiltLine.delete()
        widthLine.delete()

    def build_fk(self):
        rID = self.rigID
        rSz = self.rigSize
        logging.info(rID)

        self.fkCtl = []
        self.fkJnt = []
        cluName = rID + "clu_#"

        self.fkJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            jntNum=self.FK_JNT_NUM + 1,
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            jntRad=rSz,
        )

        lastJnt = None
        for i in range(self.FK_JNT_NUM + 1):
            currJnt = self.fkJnt[i]
            clu = DagNode(
                mc.cluster(f"{self.rbSrf}.cv[{i}][*]", n=cluName)[1],
            )
            clu.cstPoi(currJnt, keep=0)  # move jnt to cv

            ctl = CurveNode(
                f"{i}_fkc_#",
                pf=rID,
                shape="squareR",
                up="z",
                scale=rSz * 1.5,
                align=clu,
                alignR=currJnt,
                addOfs=1,
                p=self.CTL_DATA,
            )
            ctl.cstPar(self.fkJnt[i], mo=1)
            ctl.cstPar(clu, mo=1)

            if lastJnt:
                lastJnt.cstPar(ctl.offset, mo=1)
            lastJnt = currJnt

            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)
            self.allClusters.append(clu)

        # ADD FOLLOW ALIGN ON 1 ST FK CTL
        self.isolateAlign(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC], dv=1)

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rootJ | self.SKL_DATA

        self.rigNode.setMsg({"rootJ": self.rootJ})
        self.bindJnts = self.fkJnt

        [c | self.RIG_DATA for c in self.allClusters]

        # scalable
        self.fkCtl[0].a.s >> self.SKL_DATA.a.s
        self.fkCtl[0].a.s >> self.PRX_GRP.a.s
        for ctl in self.fkCtl[1:]:
            self.fkCtl[0].a.s >> ctl.offset.a.s

    def build_rbJ(self):
        rID = self.rigID
        logging.info(rID)

        coord = []
        sep = (self.FK_JNT_NUM - 1) / (self.RBN_JNT_NUM - 1)
        for i in range(self.RBN_JNT_NUM):
            coord.append((i * sep, 0.5))
        pin, pinXf = common.nlRivet(geo=self.rbSrf, coordList=coord, p=self.RIG_DATA)

        rSz = self.rigSize
        self.bindJnts = []
        for loc in pinXf:
            r = rSz / self.RBN_JNT_NUM * 8
            j = JointNode(
                self.rigID + "_rbJ_#", align=loc, r=r, color=CDR, p=self.SKL_DATA
            )
            loc.cstPar(j)
            self.bindJnts.append(j)

    def vis_setup(self):
        if self.RBN_BONES:
            self.ctrlOnOffByAttr(
                self.masterC.a["debug"],
                onList=[self.rbSrf, self.RIG_DATA, self.SKL_DATA],
            )

    def channel_setup(self):
        for ctl in self.fkCtl[1:]:
            ctl.a.showAttr(t=1, r=1)

    def ro_setup(self):
        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def proxy_setup(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(scale=2, p=self.PRX_GRP)

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)

        self.addBindJntSet(self.bindJnts)
        self.addCtlSet(self.fkCtl)
        self.anchor_setup_module({"anchorF1": self.fkCtl[0].offset})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
