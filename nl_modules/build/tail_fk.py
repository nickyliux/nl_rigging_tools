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


class TailFk(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.FK_BONE_NUM = self.master_guide.a.fkBoneNum.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()

        self.LINE_GUIDE = CurveNode(self.rigID + "_line_guide")
        self.RT_GUIDE = CurveNode(self.rigID + "_rt_guide")
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.setting = None
        self.fkCtl = []
        self.fkJnt = []
        self.bindJnts = []
        self.rbSrf = None
        self.allClusters = []
        self.REVERSE = 0

    def genGuideSk(self):
        self.genSk_module(["rt", "md", "tp"])

    def build(self):
        """
        Logic for ribbon tail
            FK -> rbSrf by skin
            rbSrf -> joints by pin
        """
        self.build_module()
        self.rbSrf = self.build_rbSrf(
            span=self.FK_BONE_NUM, p=self.RIG_DATA, rootPos=self.RT_GUIDE
        )
        self.rigNode.setMsg({"rbSrf": self.rbSrf})

        self.createCtl()
        self.build_fk()
        if self.RBN_BONES:
            self.build_rbJ()
        else:
            self.bindJnts = self.fkJnt
            mc.delete(self.allClusters, self.rbSrf)

        self.post_setup()

    def createCtl(self):
        rID = self.rigID
        rSz = self.rigSize
        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="sphere2",
            scale=rSz * 2,
            top=1,
            color=Color.BLACK,
            p=self.CTL_DATA,
        )

        self.rigNode.setMsg(
            {
                "setting": self.setting,
            }
        )

    def build_rbSrf(self, n="rbSrf", span=5, p=None, rootPos=None):
        rID = self.rigID
        rSz = self.rigSize
        widthLine = CurveNode.buildLine(
            (-rSz * 8, 0, 0), (rSz * 8, 0, 0), pf=rID, snap=rootPos
        )
        if self.REVERSE:
            mc.reverseCurve(widthLine, ch=0, rpo=1)

        rebuiltLine = CurveNode(
            mc.rebuildCurve(
                self.LINE_GUIDE,
                n=rID + "_line_#",
                ch=0,
                rpo=0,
                rt=0,
                end=1,
                kr=0,  #
                kcp=0,
                kep=1,
                kt=0,
                s=span,
                d=3,
                tol=0.01,
            )[0]
        )
        rbSrf = DagNode(
            mc.extrude(
                rebuiltLine,
                widthLine,
                fixedPath=1,
                n=f"{rID}_{n}",
                extrudeType=1,
                ch=0,
            )[0]
        )
        if p:
            rbSrf | p

        mc.delete(rebuiltLine, widthLine)
        return rbSrf

    def build_fk(self):
        rID = self.rigID
        rSz = self.rigSize
        logging.info(rID)
        cluName = rID + "clu_#"

        self.fkJnt = JointNode.makeJCFrCrv(
            self.LINE_GUIDE,
            jntNum=self.FK_BONE_NUM + 1,
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            jntRad=rSz,
        )
        for i in range(0, self.FK_BONE_NUM + 1):
            currJnt = self.fkJnt[i]

            cv = f"{self.rbSrf}.cv[*][{i+1}]"
            if i == 0:
                cv = f"{self.rbSrf}.cv[*][0:1]"
            elif i == self.FK_BONE_NUM:
                cv = (
                    f"{self.rbSrf}.cv[*][{self.FK_BONE_NUM + 1}:{self.FK_BONE_NUM + 2}]"
                )
            clu = DagNode(
                mc.cluster(cv, n=cluName)[1],
            )
            ctl = CurveNode(
                f"{i}_fkc_#",
                pf=rID,
                shape="circleC",
                up="z",
                scale=rSz * 1.5,
                align=currJnt,
            )
            ctl.cstPar(clu, mo=1)

            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)
            self.allClusters.append(clu)

        self.fkGivenCtl3(self.fkJnt, self.fkCtl, p=self.CTL_DATA)

        # ADD FOLLOW ALIGN ON 1 ST FK CTL
        self.isolateAlign(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC], dv=1)

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rootJ | self.SKL_DATA

        self.rigNode.setMsg({"rootJ": self.rootJ})

        cluGrp1 = GroupNode("cluGrp1", pf=rID, p=self.RIG_DATA)
        [self.masterC.a["globalScale"] >> cluGrp1.a[x] for x in ["sx", "sy", "sz"]]
        cluGrp2 = GroupNode("cluGrp2", pf=rID, p=cluGrp1)
        [x | cluGrp2 for x in self.allClusters]

        # scalable
        self.fkCtl[0].a.s >> self.SKL_DATA.a.s
        self.fkCtl[0].a.s >> self.PRX_GRP.a.s
        self.fkCtl[0].a.s >> cluGrp2.a.s

        self.setting.snapTo(self.fkCtl[0])
        self.setting.addOffsetGrp(snapIt=1)
        self.setting.a.t.set(0, rSz * 30, 0)
        self.fkCtl[0].cstPar(self.setting.offset, mo=1)

        self.setting.a.add("tailScale", min=0.01, dv=1) >> self.fkCtl[0].a.s

    def build_rbJ(self):
        rID = self.rigID
        # rSz = self.rigSize
        logging.info(rID)

        # ------------------------------------------
        # Build pins for rbJnt
        # ------------------------------------------
        coord = []
        for i in range(self.RBN_JNT_NUM):
            coord.append((0.5, i / (self.RBN_JNT_NUM - 1)))
        pin, pinXf = common.nlRivet(geo=self.rbSrf, coordList=coord, p=self.RIG_DATA)

        for loc in pinXf:
            # r = rSz / self.RBN_JNT_NUM * 8
            jnt = JointNode("rbJ_#", pf=rID, align=loc, p=self.SKL_DATA)
            loc.cstPar(jnt)
            self.bindJnts.append(jnt)

    def vis_setup(self):
        pass

    def channel_setup(self):
        for ctl in self.fkCtl:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

    def ro_setup(self):
        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def proxy_setup(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(scale=1, p=self.PRX_GRP)

    def post_setup(self):
        self.addBindJntSet(self.bindJnts)
        self.addCtlSet(self.fkCtl)
        self.anchor_setup_module({"anchorF1": self.fkCtl[0].offset})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
