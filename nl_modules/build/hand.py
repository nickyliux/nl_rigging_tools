import maya.cmds as mc
import logging

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils.color import Color
from nl_modules.build.rig_module import RigModule


class Hand(RigModule):
    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)
        self.smart_ctl = None
        self.fgrsArr = None
        self.ctlsArr = None
        self.ball_fkc = None

    def genGuildSk(self):
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
            fgr_jnts = self.genSkFrNames(fgrs_names, pf=self.rigID)
            fgr_jnts[0].freezeXf()
            fgr_jnts[0] | self.rootJ
            fgr_roots.append(fgr_jnts[0])

    def build(self):
        self.build_module()
        rSz = self.rigSize
        rID = self.rigID

        self.smart_ctl = CurveNode(
            "smart_ctl", pf=rID, shape="cube", scale=(rSz * 2, rSz * 2, rSz)
        )
        self.rigNode.setMsg({"smart_ctl": self.smart_ctl})
        if self.rootJ:
            self.fgrsArr = []
            for root in self.rootJ.childrenJt:
                self.fgrsArr.append([fgr for fgr in root.allChildrenJt2])
                root.a.segmentScaleCompensate.set(0)
            self.build_fk()
            self.smart_setup()
            self.digits_setup()
            self.post_setup()

    def build_fk(self):
        rID = self.rigID
        rSz = self.rigSize
        logging.info(rID)
        self.ctlsArr = []
        for fgrs in self.fgrsArr:
            ctlList = []
            for fgr in fgrs[:-1]:
                ctl = CurveNode(fgr + "_ctl", align=fgr, scale=rSz * 0.8, up="x")
                ctlList.append(ctl)
            self.fkGivenCtl3(fgrs, ctlList, count=2, p=self.CTL_DATA)
            self.ctlsArr.append(ctlList)
            self.rootJ.cstParSca(ctlList[0].offset.offset, mo=1)

    def smart_setup(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)
        # self.smart_ctl.alignTo(self.rootJ, offset=(rSz * xDr * 60, 0, rSz * -xDr * 50), p=self.CTL_DATA)
        self.smart_ctl.alignTo(
            self.rootJ, offset=(rSz * xDr * 150, 0, 0), p=self.CTL_DATA
        )
        ofs = self.smart_ctl.addOffsetGrp()
        self.rootJ.cstPar(ofs, mo=1)

        drv = self.smart_ctl
        if len(self.fgrsArr) != 5:
            logging.info("Smart setup for 5-fgr only")
            return
        for i in range(5):  # Set joint rotate order
            for j in [0, 1]:
                self.ctlsArr[i][j].offset.a.rotateOrder.set(3)

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
            common.sdk(drv, ofs, "sx", "ry", *fistPalmList[i - 2][0])
            common.sdk(drv, ofs, "sx", "ry", *fistPalmList[i - 2][1])

        # side
        # ------------------------
        for i in range(1, 5):
            ofs = self.ctlsArr[i][1].offset
            common.sdk(drv, ofs, "rz", "rz", -90, -90)
            common.sdk(drv, ofs, "rz", "rz", 90, 90)

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
            common.sdk(drv, ofs, "tz", "ry", 60, -180)
            common.sdk(drv, ofs, "tz", "ry", -60, 180)

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
            common.sdk(drv, ofs, "sz", "rx", *cupList[i - 1][0])
            common.sdk(drv, ofs, "sz", "rx", *cupList[i - 1][1])

            cupList = [
                [(0, 10), (2, -10)],
                [(0, 3), (2, -3)],
                [(0, -3), (2, 3)],
                [(0, -10), (2, 10)],
            ]
            ofs = self.ctlsArr[i][0].offset
            common.sdk(drv, ofs, "sz", "rx", *cupList[i - 1][0])
            common.sdk(drv, ofs, "sz", "rx", *cupList[i - 1][1])

        # thumb
        # ------------------------
        ofs = self.ctlsArr[0][0].offset

        common.sdk(drv, ofs, "tx", "rz", 20, -90)
        common.sdk(drv, ofs, "tx", "rz", -20, 90)
        common.sdk(drv, ofs, "ty", "rx", 20, 180)
        common.sdk(drv, ofs, "ty", "rx", -20, -180)

    def digits_setup(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        scale = xDr * rSz / 10
        ball_guide = DagNode(rID + "_ball_guide")
        self.ball_fkc = CurveNode(
            "ball_fkc",
            pf=rID,
            align=ball_guide,
            scale=rSz * 2,
            addOfs=1,
            p=self.CTL_DATA,
        )
        self.rootJ.cstPar(self.ball_fkc.offset, mo=1)

        for fgrs, ctls in zip(self.fgrsArr[1:], self.ctlsArr[1:]):
            dupTgt = DagNode(fgrs[1])
            ctl, digit_ikh, digit_ikj = self.singleDigit_setup(dupTgt, scale)
            digit_ikh | self.ball_fkc
            digit_ikj.a.r >> ctls[1].parent.parent.a.r

    def space_setup(self):
        self.rigNode.setMsg({"spaceHolder1": self.ball_fkc})
        self.rigNode.a.add("spaceName1", attrType="string", txt="armIkc")

    def proxy_setup(self):
        proxyList = [self.rootJ]
        for fgrs in self.fgrsArr:
            proxyList.extend(fgrs)

        rSz = self.rigSize * 10
        xDr = self.x_dir
        for j in proxyList:
            JointNode(j).addProxyMesh(
                size=rSz, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )

    def channel_setup(self):
        self.smart_ctl.a.showAttr(t=1, r=1, s=1)

    def ro_setup(self):
        self.smart_ctl.a.ro.set(3)

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.rootJ.a.v
        # visGrp[1] >> self.PRX_GRP.a.v
        fgrCtlVis = self.smart_ctl.a.add("fgrCtls", k=0, min=0, max=1, dv=1)
        for fgrCtls in self.ctlsArr:
            fgrCtlVis >> fgrCtls[0].a.v
            # for c in fgrCtls:
            #     fgrCtlVis >> c.a.v

        # self.addMinusScaleGrp(self.smart_ctl)

    def post_setup(self):
        self.addBindJntSet(self.rootJ.allChildrenJt2)
        ctlSet = [self.smart_ctl]
        [ctlSet.extend(x) for x in self.ctlsArr]
        self.addCtlSet(ctlSet, pf=self.rigID)
        self.space_setup()
        self.anchor_setup_module({"anchorF1": self.rootJ})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()


if __name__ == "__main__":
    for n in mc.ls("*RGN", type="script"):
        Hand(DagNode(n)).build()
