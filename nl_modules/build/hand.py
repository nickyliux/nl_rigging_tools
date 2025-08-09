import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils import common


class Hand(RigModule):
    """Hand rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the Hand rig module."""
        super().__init__(rigNode)

        # Finger and control lists
        self.jnts_fgr = []
        self.jnts_ik = []
        self.ctls_fgr = []
        self.ctls_ik = []
        self.ikhs = []

        # Main controls/groups
        self.setting = None
        self.smart_ctl = None
        self.hand_grp = None

    def gen_sk(self):
        """Generate the skeleton for the hand rig."""
        HAND_SCALE = 0.4
        FINGER_SCALE = 3

        self.genSk_module()
        root_list = self.gen_sk_fr_names(["handJ"], scale=HAND_SCALE)
        ALL_FGR_NAMES = [
            ["fgr00_1", "fgr00_2", "fgr00_3", "fgr00_4"],
            ["fgr01_1", "fgr01_2", "fgr01_3", "fgr01_4", "fgr01_5"],
            ["fgr02_1", "fgr02_2", "fgr02_3", "fgr02_4", "fgr02_5"],
            ["fgr03_1", "fgr03_2", "fgr03_3", "fgr03_4", "fgr03_5"],
            ["fgr04_1", "fgr04_2", "fgr04_3", "fgr04_4", "fgr04_5"],
        ]
        fgr_roots = []
        for fgr_names in ALL_FGR_NAMES:
            jnts = self.gen_sk_fr_names(fgr_names, scale=FINGER_SCALE)
            jnts[0].freezeXf()
            jnts[0] | root_list[0]
            fgr_roots.append(jnts[0])

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rootGrp = self.rootJ.addOffsetGrp()
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build the controls for the hand rig module."""
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "bagua", "z", scale * 3, 1, 2),
            ("smart_ctl", "roll", "x", scale, 1, 2),
        ]
        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.rigNode.setMsg({"smart_ctl": self.smart_ctl})
        # self.smart_ctl.cv_rotate(0, 0, -90)

    def build(self):
        """Build the hand rig module."""
        self.build_pre_module()
        self.build_ctl()

        self.jnts_bind = [self.rootJ]
        for root in self.rootJ.childrenJt:
            digit_jnts = [jnt for jnt in root.allChildrenJt2]
            self.jnts_fgr.append(digit_jnts)
            self.jnts_bind.extend(digit_jnts[:-1])

        self.build_fk()
        self.build_ik()
        self.build_fgrs()
        self.build_post()

    def create_finger_ctl(self, fgrs):
        """Create finger controls for the hand rig module."""
        scale = self.rigSize * self.xDir

        ctlList = []
        for fgr in fgrs[:-1]:
            ctl = CrvNode(
                f"{fgr.name}_ctl", shape="circleZ", up="x", scale=scale / 2, align=fgr
            )
            ctlList.append(ctl)
        return ctlList

    def build_fk(self):
        """Build FK controls for the hand rig module."""
        logging.info(self.rigID)

        for fgrs in self.jnts_fgr:

            ctlList = self.create_finger_ctl(fgrs)
            self.build_fk_with_ctl3(fgrs, ctlList, count=2, p=self.CTL_DATA)
            self.ctls_fgr.append(ctlList)

            ctl_offset = ctlList[0].offset.offset
            self.rootJ.cstPar(ctl_offset, mo=1)
            self.rootJ.a.s >> ctl_offset.a.s

    def build_ik(self):
        """Build IK controls for the hand rig module."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        self.ctls_ik = []
        self.hand_grp = GrpNode(rID + "_grp", align=self.rootJ, p=self.CTL_DATA)
        for fgrs, ctls in zip(self.jnts_fgr, self.ctls_fgr):
            scale = xDr * rSz / 2
            ctl, ikJ, ikH = self.build_digit_ik(fgrs[1], scale=scale, p=self.hand_grp)
            self.ctls_ik.append(ctl)
            self.jnts_ik.append(ikJ)
            self.ikhs.append(ikH)
            ikJ.cstOri(ctls[1].parent.parent, mo=1)

    def setup_close_sdk(self):
        """Setup SDK for finger base controls."""
        drv = self.smart_ctl
        # ctl forward & backward
        dataList = [(-100, -100), (0, 0), (20, 20)]
        for i in range(1, 5):
            for j in range(1, 4):
                ofs = self.ctls_fgr[i][j].offset
                for k in range(3):
                    common.sdk(drv, ofs, "ry", "ry", *dataList[k], inf=1)

    def setup_grab_sdk(self):
        drv = self.smart_ctl
        # finger's RY ----------------------------------------
        dataList_baseFgr = [
            [(20, 5), (0, 0), (-90, -20)],
            [(20, 10), (0, 0), (-90, -45)],
            [(20, 20), (0, 0), (-90, -90)],
        ]
        for i in range(2, 5):
            ofs = self.ctls_fgr[i][1].offset
            for k in range(3):
                common.sdk(drv, ofs, "rx", "ry", *dataList_baseFgr[i - 2][k], inf=1)

        dataList = [
            [(0, 0), (-90, -3)],
            [(0, 0), (-90, -10)],
            [(0, 0), (-90, -45)],
        ]
        for i in range(2, 5):
            ofs = self.ctls_fgr[i][1].offset
            for k in range(2):
                common.sdk(drv, ofs, "rx", "rx", *dataList[i - 2][k], inf=1)

    def setup_meta_grab_sdk(self):
        drv = self.smart_ctl
        dataList_metaFgrRY = [
            [(0, 0), (20, -2)],
            [(0, 0), (20, -6)],
            [(0, 0), (20, -15)],
        ]
        dataList_metaFgrRX = [
            [(0, 0), (20, -2)],
            [(0, 0), (20, -6)],
            [(0, 0), (20, -15)],
        ]
        dataList_metaFgrRZ = [
            [(0, 0), (20, 2)],
            [(0, 0), (20, 4)],
            [(0, 0), (20, 8)],
        ]
        for i in range(2, 5):
            ofs = self.ctls_fgr[i][0].offset
            for k in range(2):
                common.sdk(drv, ofs, "rz", "rz", *dataList_metaFgrRZ[i - 2][k], inf=1)
                common.sdk(drv, ofs, "rz", "ry", *dataList_metaFgrRY[i - 2][k], inf=1)
                common.sdk(drv, ofs, "rz", "rx", *dataList_metaFgrRX[i - 2][k], inf=1)

    def setup_fist_sdk(self):
        """Setup SDK for fist pose on fingers."""
        drv = self.smart_ctl
        for i in range(1, 5):
            for j in [1, 2, 3]:
                ofs = self.ctls_fgr[i][j].offset
                common.sdk(drv, ofs, "ry", "ry", -200, -200)
                common.sdk(drv, ofs, "ry", "ry", 200, 200)
        for i in range(3):
            fistList = [
                [(-200, -50), (200, 50)],
                [(-200, -120), (200, 120)],
                [(-200, -140), (200, 140)],
            ]
            ofs = self.ctls_fgr[0][i].offset
            common.sdk(drv, ofs, "ry", "ry", *fistList[i][0])
            common.sdk(drv, ofs, "ry", "ry", *fistList[i][1])

    def setup_fistPalm_sdk(self):
        """Setup SDK for fist pose on palm."""
        drv = self.smart_ctl

        for i in range(2, 5):
            fistPalmList = [
                [(0, -10), (2, 10)],
                [(0, -20), (2, 20)],
                [(0, -40), (2, 40)],
            ]
            ofs = self.ctls_fgr[i][0].offset
            common.sdk(drv, ofs, "sz", "ry", *fistPalmList[i - 2][0])
            common.sdk(drv, ofs, "sz", "ry", *fistPalmList[i - 2][1])

    def setup_flap_sdk(self):
        """Setup SDK for flap pose on fingers."""
        drv = self.smart_ctl

        for i in range(1, 5):
            flapList = [
                [(-180, 180), (180, -180)],
                [(-180, 60), (180, -60)],
                [(-180, -60), (180, 60)],
                [(-180, -180), (180, 180)],
            ]
            ofs = self.ctls_fgr[i][1].offset
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][0])
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][1])
            flapList = [
                [(-180, 18), (180, -18)],
                [(-180, 6), (180, -6)],
                [(-180, -6), (180, 6)],
                [(-180, -18), (180, 18)],
            ]
            ofs = self.ctls_fgr[i][0].offset
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][0])
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][1])

    def setup_spread_sdk(self):
        """Setup SDK for spread pose on fingers."""
        drv = self.smart_ctl
        for i in range(4):
            spreadList = [
                [(0, -10), (1, 0), (2, 30)],
                [(0, -3), (1, 0), (2, 10)],
                [(0, 3), (1, 0), (2, -10)],
                [(0, 10), (1, 0), (2, -30)],
            ]
            ofs = self.ctls_fgr[i + 1][1].offset
            for k in range(3):
                common.sdk(drv, ofs, "sy", "rz", *spreadList[i][k], inf=1)
            spreadList = [
                [(0, -1), (1, 0), (2, 6)],
                [(0, -0.3), (1, 0), (2, 2)],
                [(0, 0.3), (1, 0), (2, -2)],
                [(0, 1), (1, 0), (2, -6)],
            ]
            ofs = self.ctls_fgr[i + 1][0].offset
            for k in range(3):
                common.sdk(drv, ofs, "sy", "rz", *spreadList[i][k], inf=1)

    def setup_updn_sdk(self):
        """Setup SDK for up/down pose on fingers."""
        drv = self.smart_ctl
        rID, rSz, xDr = self.getMyVar()
        for i in range(1, 5):
            ofs = self.ctls_fgr[i][1].offset
            common.sdk(drv, ofs, "tz", "ry", 60, -180 * xDr, inf=1)
            common.sdk(drv, ofs, "tz", "ry", -60, 180 * xDr, inf=1)
            common.sdk(drv, ofs, "ty", "rz", 60, 180 * xDr, inf=1)
            common.sdk(drv, ofs, "ty", "rz", -60, -180 * xDr, inf=1)

    def setup_cup_sdk(self):
        """Setup SDK for cup pose on fingers."""
        drv = self.smart_ctl

        for i in range(1, 5):
            cupList = [
                [(0, 30), (2, -30)],
                [(0, 10), (2, -10)],
                [(0, -10), (2, 10)],
                [(0, -30), (2, 30)],
            ]
            ofs = self.ctls_fgr[i][1].offset
            for k in range(2):
                common.sdk(drv, ofs, "sz", "rx", *cupList[i - 1][k])
            # common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][1])

            cupList = [
                [(0, 10), (2, -10)],
                [(0, 3), (2, -3)],
                [(0, -3), (2, 3)],
                [(0, -10), (2, 10)],
            ]
            ofs = self.ctls_fgr[i][0].offset
            for k in range(2):
                common.sdk(drv, ofs, "sz", "rx", *cupList[i - 1][k])
            # common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][1])

    def build_fgrs(self):
        """Build the finger logic for the hand rig module."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        if len(self.jnts_fgr) != 5:
            logging.info("Smart setup for 5-fgr only")
            return

        # smart_ctl, with group scaling with rootJ
        scaleGrp = GrpNode("smartScale", pf=rID, align=self.rootJ, p=self.CTL_DATA)
        offsetX = rSz * xDr * 100
        self.smart_ctl.alignTo(self.rootJ, ofs=(offsetX, 0, 0), p=scaleGrp)
        self.smart_ctl.addOffsetGrp()

        self.hand_grp.cstPar(scaleGrp, mo=1)
        self.rootJ.a.s >> scaleGrp.a.s

        # Add handScale attribute and connect to rootJ scale
        self.smart_ctl.a.add("handScale", min=0, dv=1) >> self.rootJ.a.scale

        # Uncomment below to enable pose SDK setups
        self.setup_close_sdk()
        self.setup_grab_sdk()
        self.setup_meta_grab_sdk()

        self.setup_spread_sdk()
        self.setup_cup_sdk()

        # self.setup_fist_sdk()
        # self.setup_fistPalm_sdk()
        # self.setup_flap_sdk()
        self.setup_updn_sdk()

        #
        #   thumb
        #
        # ofs = self.ctls_fgr[0][0].offset

        # common.sdk(drv, ofs, "tx", "rz", 20, -90)
        # common.sdk(drv, ofs, "tx", "rz", -20, 90)
        # common.sdk(drv, ofs, "ty", "rx", 20, 180)
        # common.sdk(drv, ofs, "ty", "rx", -20, -180)

    def setup_space(self):
        """Setup space switching for the hand rig controls."""
        self.rigNode.a.add("spaceName1", attrType="string", txt="palm")
        self.rigNode.a.add("spaceName2", attrType="string", txt="palmIK")

        self.rigNode.setMsg(
            {
                "spaceHolder1": self.rootJ,
                "spaceHolder2": self.hand_grp,
            }
        )

    def setup_channel(self):
        """Setup channels for the hand rig controls."""
        self.setting.a.showAttr()
        self.smart_ctl.a.showAttr(t=1, r=1, s=1)

        for ctl in self.ctls_ik:
            ctl.a.showAttr(r=1)
        for ctls in self.ctls_fgr:
            for ctl in ctls:
                ctl.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the hand rig controls."""
        # self.smart_ctl.a.ro.set(3)
        # for i in range(5):
        #     for j in [0, 1]:
        #         self.ctls_fgr[i][j].offset.a.rotateOrder.set(3)
        self.smart_ctl.a.ro.set(2)

    def setup_vis(self):
        """Setup visibility controls for the hand rig."""
        showCtls = self.setting.a.add("fkCtls", attrType="bool", dv=1, k=0)
        for ctls in self.ctls_fgr:
            showCtls >> ctls[0].a.v

        self.ctl_vis_toggle(
            self.setting.a.add("setupJnts", attrType="bool", dv=0, k=0),
            onList=self.jnts_ik,
        )
        mc.hide(self.ikhs)

    def setup_ctlSet(self):
        """Setup control sets for the hand rig module."""
        ctlSet = [self.smart_ctl] + self.ctls_ik
        [ctlSet.extend(x) for x in self.ctls_fgr]
        self.add_ctl_set(ctlSet)

    def setup_bindJnt(self):
        """Setup bind joints for the hand rig module."""
        self.add_bind_jnt_set(self.jnts_bind)

    def setup_scale(self):
        """Setup scaling for the hand rig module."""
        self.smart_ctl.a.add("handScale", min=0, dv=1) >> self.rootJ.a.scale
        for root in self.rootJ.childrenJt:
            root.a.segmentScaleCompensate.set(0)

        self.masterC.a.globalScale >> self.SKL_DATA.a.scale
        self.rootJ.cstSca(self.RIG_DATA)

    def build_post(self):
        """Post setup for the hand rig module."""
        logging.info(self.rigID)

        self.setting.snapTo(self.rootJ, p=self.CTL_DATA)
        self.rootJ.cstPar(self.setting, mo=1)

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        # self.setup_anchor_module({"anchorF1": self.rootJ})
        self.setup_anchor_module({"anchorF1": self.rootGrp})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
