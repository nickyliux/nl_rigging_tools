import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils import common
from nl_modules.utils import maths


class Hand(RigModule):
    """Hand rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the Hand rig module."""

        super().__init__(rigNode)

        # Finger and control lists
        self.finger_jnts = []
        self.finger_ctls = []
        self.fgrRoot_ctls = []
        self.allIkJ = []
        self.allIkH = []

        # Main controls/groups
        self.smart_ctl = None
        self.hand_grp = None

    def genSk(self):
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
            fgr_jnts = self.gen_sk_fr_names(fgr_names, scale=FINGER_SCALE)
            fgr_jnts[0].freezeXf()
            fgr_jnts[0] | root_list[0]
            fgr_roots.append(fgr_jnts[0])

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build the controls for the hand rig module."""

        rID, rSz, xDr = self.getMyVar()
        self.smart_ctl = CrvNode("smart_ctl", pf=rID, shape="roll", up="x", scale=rSz)
        self.rigNode.setMsg({"smart_ctl": self.smart_ctl})

    def build(self):
        """Build the hand rig module."""

        self.build_pre_module()
        self.build_ctl()
        self.bindJnts = [self.rootJ]

        for root in self.rootJ.childrenJt:
            digit_jnts = [jnt for jnt in root.allChildrenJt2]
            self.finger_jnts.append(digit_jnts)
            self.bindJnts.extend(digit_jnts)
            root.a.segmentScaleCompensate.set(0)

        self.build_fk()
        self.build_ik()
        self.build_fgrs()
        self.build_post()

    def create_finger_ctl(self, fgrs):
        """Create finger controls for the hand rig module."""

        ctlList = []
        for fgr in fgrs[:-1]:
            ctl = CrvNode(
                f"{fgr.name}_ctl",
                shape="squR",
                up="x",
                scale=maths.mul(1, 0.2, 1, self.rigSize / 2),
                align=fgr,
                width=2,
            )
            ctlList.append(ctl)
        return ctlList

    def build_fk(self):
        """Build FK controls for the hand rig module."""

        logging.info(self.rigID)
        for fgrs in self.finger_jnts:

            ctlList = self.create_finger_ctl(fgrs)
            self.build_fk_with_ctl3(fgrs, ctlList, count=2, p=self.CTL_DATA)
            self.finger_ctls.append(ctlList)
            self.rootJ.cstPar(ctlList[0].offset.offset, mo=1)
            self.rootJ.a.s >> ctlList[0].offset.offset.a.s

    def build_ik(self):
        """Build IK controls for the hand rig module."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        self.fgrRoot_ctls = []
        self.hand_grp = GrpNode(rID + "_grp", align=self.rootJ, p=self.CTL_DATA)

        for fgrs, ctls in zip(self.finger_jnts, self.finger_ctls):
            scale = xDr * rSz / 2
            ctl, ikJ, ikH = self.build_digit_ik(fgrs[1], scale=scale, p=self.hand_grp)
            self.fgrRoot_ctls.append(ctl)
            self.allIkJ.append(ikJ)
            self.allIkH.append(ikH)
            ikJ.cstOri(ctls[1].parent.parent, mo=1)

        # scalable
        self.rootJ.cstSca(self.RIG_DATA)

    def setup_fist_sdk(self):
        """Setup SDK for fist pose on fingers."""

        drv = self.smart_ctl
        for i in range(1, 5):
            for j in [1, 2, 3]:
                ofs = self.finger_ctls[i][j].offset
                common.sdk(drv, ofs, "ry", "ry", -200, -200)
                common.sdk(drv, ofs, "ry", "ry", 200, 200)
        for i in range(3):
            fistList = [
                [(-200, -50), (200, 50)],
                [(-200, -120), (200, 120)],
                [(-200, -140), (200, 140)],
            ]
            ofs = self.finger_ctls[0][i].offset
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
            ofs = self.finger_ctls[i][0].offset
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
            ofs = self.finger_ctls[i][1].offset
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][0])
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][1])
            flapList = [
                [(-180, 18), (180, -18)],
                [(-180, 6), (180, -6)],
                [(-180, -6), (180, 6)],
                [(-180, -18), (180, 18)],
            ]
            ofs = self.finger_ctls[i][0].offset
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][0])
            common.sdk(drv, ofs, "rx", "ry", *flapList[i - 1][1])

    def setup_spread_sdk(self):
        """Setup SDK for spread pose on fingers."""

        drv = self.smart_ctl

        for i in range(5):
            spreadList = [
                [(0, -10), (1, 0), (2, 60)],
                [(0, -10), (1, 0), (2, 60)],
                [(0, -3), (1, 0), (2, 20)],
                [(0, 3), (1, 0), (2, -20)],
                [(0, 10), (1, 0), (2, -60)],
            ]
            ofs = self.finger_ctls[i][1].offset
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
            ofs = self.finger_ctls[i][0].offset
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][0])
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][1])
            common.sdk(drv, ofs, "sy", "rz", *spreadList[i][2])

    def setup_updn_sdk(self):
        """Setup SDK for up/down pose on fingers."""

        drv = self.smart_ctl
        rID, rSz, xDr = self.getMyVar()
        for i in range(1, 5):
            ofs = self.finger_ctls[i][1].offset
            common.sdk(drv, ofs, "tz", "ry", 60, -180 * xDr)
            common.sdk(drv, ofs, "tz", "ry", -60, 180 * xDr)
            common.sdk(drv, ofs, "ty", "rz", 60, 180 * xDr)
            common.sdk(drv, ofs, "ty", "rz", -60, -180 * xDr)

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
            ofs = self.finger_ctls[i][1].offset
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][0])
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][1])

            cupList = [
                [(0, 10), (2, -10)],
                [(0, 3), (2, -3)],
                [(0, -3), (2, 3)],
                [(0, -10), (2, 10)],
            ]
            ofs = self.finger_ctls[i][0].offset
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][0])
            common.sdk(drv, ofs, "sx", "rx", *cupList[i - 1][1])

    def build_fgrs(self):
        """Build the finger logic for the hand rig module."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        if len(self.finger_jnts) != 5:
            logging.info("Smart setup for 5-fgr only")
            return

        # smart_ctl, with group scaling with rootJ
        scaleGrp = GrpNode("smartScale", pf=rID, align=self.rootJ, p=self.CTL_DATA)
        offset = (rSz * xDr * 110, 0, 0)
        self.smart_ctl.alignTo(self.rootJ, ofs=offset, p=scaleGrp)
        self.smart_ctl.addOffsetGrp()

        # self.rootJ.cstPar(scaleGrp, mo=1)
        self.hand_grp.cstPar(scaleGrp, mo=1)
        self.rootJ.a.s >> scaleGrp.a.s

        self.setup_fist_sdk()
        self.setup_fistPalm_sdk()
        self.setup_flap_sdk()
        self.setup_spread_sdk()
        self.setup_updn_sdk()
        self.setup_cup_sdk()

        self.smart_ctl.a.add("palmScale", min=0, dv=1) >> self.rootJ.a.scale
        #
        #   thumb
        #
        # ofs = self.finger_ctls[0][0].offset

        # common.sdk(drv, ofs, "tx", "rz", 20, -90)
        # common.sdk(drv, ofs, "tx", "rz", -20, 90)
        # common.sdk(drv, ofs, "ty", "rx", 20, 180)
        # common.sdk(drv, ofs, "ty", "rx", -20, -180)

    def setup_space(self):
        """Setup space switching for the hand rig controls."""

        self.rigNode.setMsg({"spaceHolder1": self.rootJ})
        self.rigNode.a.add("spaceName1", attrType="string", txt="palm")

        self.rigNode.setMsg({"spaceHolder2": self.hand_grp})
        self.rigNode.a.add("spaceName2", attrType="string", txt="palmIK")

    def setup_channel(self):
        """Setup channels for the hand rig controls."""

        self.smart_ctl.a.showAttr(t=1, r=1, s=1)
        [c.a.showAttr(r=1) for c in self.fgrRoot_ctls]
        for fgrCtls in self.finger_ctls:
            for c in fgrCtls:
                c.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the hand rig controls."""

        self.smart_ctl.a.ro.set(3)
        for i in range(5):
            for j in [0, 1]:
                self.finger_ctls[i][j].offset.a.rotateOrder.set(3)

    def setup_vis(self):
        """Setup visibility controls for the hand rig."""

        showCtls = self.smart_ctl.a.add("showCtls", k=0, min=0, max=1, dv=1)
        for fgrCtls in self.finger_ctls:
            showCtls >> fgrCtls[0].a.v
        # mc.hide(self.allIkH, self.allIkJ)

    def setup_ctlSet(self):
        """Setup control sets for the hand rig module."""

        ctlSet = [self.smart_ctl] + self.fgrRoot_ctls
        [ctlSet.extend(x) for x in self.finger_ctls]
        self.add_ctl_set(ctlSet)

    def setup_bindJnt(self):
        """Setup bind joints for the hand rig module."""

        self.add_bind_jnt_set(self.bindJnts)

    def setup_scale(self):
        """Setup scaling for the hand rig module."""

        self.masterC.a.globalScale >> self.SKL_DATA.a.scale

    def build_post(self):
        """Post setup for the hand rig module."""

        logging.info(self.rigID)
        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor_module({"anchorF1": self.rootJ})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
