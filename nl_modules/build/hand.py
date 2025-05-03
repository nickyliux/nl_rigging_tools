import maya.cmds as mc
import logging

from nl_modules.build.rig_module import RigModule

# from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.utils import common

# from nl_modules.utils.color import Color


class Hand(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)
        self.smart_ctl = None
        self.fgrsArr = None
        self.ctlsArr = None
        self.allIkJ = []
        self.allIkH = []
        self.hand_grp = None
        self.fgrRootCtlArr = None

    def genGuideSk(self):
        self.genSk_module(["handJ"])
        all_fgrs_names = [
            ["fgr00_1", "fgr00_2", "fgr00_3", "fgr00_4"],
            ["fgr01_1", "fgr01_2", "fgr01_3", "fgr01_4", "fgr01_5"],
            ["fgr02_1", "fgr02_2", "fgr02_3", "fgr02_4", "fgr02_5"],
            ["fgr03_1", "fgr03_2", "fgr03_3", "fgr03_4", "fgr03_5"],
            ["fgr04_1", "fgr04_2", "fgr04_3", "fgr04_4", "fgr04_5"],
        ]
        fgr_roots = []
        for fgrs_names in all_fgrs_names:
            fgr_jnts = self.genSkFrNames(fgrs_names)
            fgr_jnts[0].freezeXf()
            fgr_jnts[0] | self.rootJ
            fgr_roots.append(fgr_jnts[0])

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID
        # xDr = self.x_dir

        self.smart_ctl = CurveNode(
            "smart_ctl", pf=rID, shape="roll", up="x", scale=rSz * 2
        )
        self.rigNode.setMsg({"smart_ctl": self.smart_ctl})

    def build(self):
        self.build_module()
        self.createCtl()

        self.bindJnts = [self.rootJ]
        if self.rootJ:
            self.fgrsArr = []
            for root in self.rootJ.childrenJt:
                fgrJnts = [fgr for fgr in root.allChildrenJt2]
                self.fgrsArr.append(fgrJnts)
                self.bindJnts.extend(fgrJnts)
                root.a.segmentScaleCompensate.set(0)

            self.build_fk()
            self.build_ik()
            self.smart_setup()
            self.post_setup()

    def build_fk(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)

        self.ctlsArr = []
        for fgrs in self.fgrsArr:
            ctlList = []
            for fgr in fgrs[:-1]:
                ctl = CurveNode(
                    fgr + "_ctl", shape="squareR", align=fgr, scale=rSz / 3, up="z"
                )
                ctl.cv_move(0, 0, xDr * rSz * -10)
                ctlList.append(ctl)
            self.fkGivenCtl3(fgrs, ctlList, count=2, p=self.CTL_DATA)
            self.ctlsArr.append(ctlList)
            self.rootJ.cstPar(ctlList[0].offset.offset, mo=1)
            self.rootJ.a.s >> ctlList[0].offset.offset.a.s

    def build_ik(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir

        self.fgrRootCtlArr = []
        self.hand_grp = GroupNode(rID + "_grp", align=self.rootJ, p=self.RIG_DATA)

        for fgrs, ctls in zip(self.fgrsArr, self.ctlsArr):
            scale = xDr * rSz * 0.8
            ctl, ikJ, ikH = self.build_digit_ik(fgrs[1], scale=scale, p=self.hand_grp)
            self.fgrRootCtlArr.append(ctl)
            self.allIkJ.append(ikJ)
            self.allIkH.append(ikH)
            ikJ.a.r >> ctls[1].parent.parent.a.r

        # scalable
        self.rootJ.a.s >> self.PRX_GRP.a.s
        self.rootJ.cstSca(self.RIG_DATA)

    def smart_setup(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)

        if len(self.fgrsArr) != 5:
            logging.info("Smart setup for 5-fgr only")
            return

        # smart_ctl, with group scaling with rootJ
        scaleGrp = GroupNode("smartScale", pf=rID, align=self.rootJ, p=self.CTL_DATA)
        offset = (rSz * xDr * 110, 0, 0)
        self.smart_ctl.alignTo(self.rootJ, offset=offset, p=scaleGrp)
        self.smart_ctl.addOffsetGrp()

        # self.rootJ.cstPar(scaleGrp, mo=1)
        self.hand_grp.cstPar(scaleGrp, mo=1)
        self.rootJ.a.s >> scaleGrp.a.s

        drv = self.smart_ctl

        # fist
        # ------------------------
        for i in range(1, 5):
            for j in [1, 2, 3]:
                ofs = self.ctlsArr[i][j].offset
                common.sdk(drv, ofs, "ry", "ry", -200, -200)
                common.sdk(drv, ofs, "ry", "ry", 200, 200)
        for i in range(3):
            fistList = [
                [(-200, -50), (200, 50)],
                [(-200, -120), (200, 120)],
                [(-200, -140), (200, 140)],
            ]
            ofs = self.ctlsArr[0][i].offset
            common.sdk(drv, ofs, "ry", "ry", *fistList[i][0])
            common.sdk(drv, ofs, "ry", "ry", *fistList[i][1])

        # fist palm
        # ------------------------
        for i in range(2, 5):
            fistPalmList = [
                [(0, -10), (2, 10)],
                [(0, -20), (2, 20)],
                [(0, -40), (2, 40)],
            ]
            ofs = self.ctlsArr[i][0].offset
            common.sdk(drv, ofs, "sz", "ry", *fistPalmList[i - 2][0])
            common.sdk(drv, ofs, "sz", "ry", *fistPalmList[i - 2][1])

        # side
        # ------------------------
        # for i in range(1, 5):
        #     ofs = self.ctlsArr[i][1].offset
        #     common.sdk(drv, ofs, "rz", "rz", -90, -90)
        #     common.sdk(drv, ofs, "rz", "rz", 90, 90)

        # flap
        # ------------------------
        for i in range(1, 5):
            flapList = [
                [(-180, 180), (180, -180)],
                [(-180, 60), (180, -60)],
                [(-180, -60), (180, 60)],
                [(-180, -180), (180, 180)],
            ]
            ofs = self.ctlsArr[i][1].offset
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][0])
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][1])
            flapList = [
                [(-180, 18), (180, -18)],
                [(-180, 6), (180, -6)],
                [(-180, -6), (180, 6)],
                [(-180, -18), (180, 18)],
            ]
            ofs = self.ctlsArr[i][0].offset
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][0])
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][1])

        # spread
        # ------------------------
        for i in range(5):
            spreadList = [
                [(0, -10), (1, 0), (2, 60)],
                [(0, -10), (1, 0), (2, 60)],
                [(0, -3), (1, 0), (2, 20)],
                [(0, 3), (1, 0), (2, -20)],
                [(0, 10), (1, 0), (2, -60)],
            ]
            ofs = self.ctlsArr[i][1].offset
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][0])
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][1])
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][2])
            spreadList = [
                [(0, -1), (1, 0), (2, 6)],
                [(0, -1), (1, 0), (2, 6)],
                [(0, -0.3), (1, 0), (2, 2)],
                [(0, 0.3), (1, 0), (2, -2)],
                [(0, 1), (1, 0), (2, -6)],
            ]
            ofs = self.ctlsArr[i][0].offset
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][0])
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][1])
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][2])

        # up/dn
        # ------------------------
        for i in range(1, 5):
            ofs = self.ctlsArr[i][1].offset
            common.sdk(drv, ofs, "tz", "ry", 60, -180 * xDr)
            common.sdk(drv, ofs, "tz", "ry", -60, 180 * xDr)
            common.sdk(drv, ofs, "ty", "rz", 60, 180 * xDr)
            common.sdk(drv, ofs, "ty", "rz", -60, -180 * xDr)

        # cup
        # ------------------------
        for i in range(1, 5):
            cupList = [
                [(0, 30), (2, -30)],
                [(0, 10), (2, -10)],
                [(0, -10), (2, 10)],
                [(0, -30), (2, 30)],
            ]
            ofs = self.ctlsArr[i][1].offset
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][0])
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][1])

            cupList = [
                [(0, 10), (2, -10)],
                [(0, 3), (2, -3)],
                [(0, -3), (2, 3)],
                [(0, -10), (2, 10)],
            ]
            ofs = self.ctlsArr[i][0].offset
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][0])
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][1])

        self.smart_ctl.a.add("handScale", min=0, dv=1) >> self.rootJ.a.scale

        # thumb
        # ------------------------
        # ofs = self.ctlsArr[0][0].offset

        # common.sdk(drv, ofs, "tx", "rz", 20, -90)
        # common.sdk(drv, ofs, "tx", "rz", -20, 90)
        # common.sdk(drv, ofs, "ty", "rx", 20, 180)
        # common.sdk(drv, ofs, "ty", "rx", -20, -180)

    def space_setup(self):
        #
        # Add space to rootJ so that it is driven by ballRoll_loc
        #
        self.rigNode.setMsg({"spaceHolder1": self.rootJ})
        self.rigNode.a.add("spaceName1", attrType="string", txt="palm")

        #
        # Add space to hand_grp so that it is driven by palm_ikc
        #
        self.rigNode.setMsg({"spaceHolder2": self.hand_grp})
        self.rigNode.a.add("spaceName2", attrType="string", txt="palmIK")

    def proxy_setup(self):
        aim = (self.x_dir, 0, 0)
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(scale=2, aimDir=aim, skipEnd=1, p=self.PRX_GRP)

    def channel_setup(self):
        self.smart_ctl.a.showAttr(t=1, r=1, s=1)
        [c.a.showAttr(r=1) for c in self.fgrRootCtlArr]
        for fgrCtls in self.ctlsArr:
            for c in fgrCtls:
                c.a.showAttr(t=1, r=1)

    def ro_setup(self):
        self.smart_ctl.a.ro.set(3)
        for i in range(5):
            for j in [0, 1]:
                self.ctlsArr[i][j].offset.a.rotateOrder.set(3)

    def vis_setup(self):
        showCtls = self.smart_ctl.a.add("showCtls", k=0, min=0, max=1, dv=1)
        for fgrCtls in self.ctlsArr:
            showCtls >> fgrCtls[0].a.v

        # self.ctrlOnOffByAttr(self.masterC2.a["debug"], onList=self.allIkJ + self.allIkH)

    def post_setup(self):
        ctlSet = [self.smart_ctl] + self.fgrRootCtlArr
        [ctlSet.extend(x) for x in self.ctlsArr]
        self.addBindJntSet(self.bindJnts)
        self.addCtlSet(ctlSet)
        self.space_setup()
        self.anchor_setup_module({"anchorF1": self.rootJ})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
