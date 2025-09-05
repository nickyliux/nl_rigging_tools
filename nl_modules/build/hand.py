import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


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
            jnts[1].reOrient(upRef=jnts[1], xDir=self.xDir)
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
            ("setting", "setting", None, scale, 1, 2),
            ("palm_ctl", "rotator", None, scale * -1, 0, 2),
            ("smart_ctl", "roll", "x", scale, 0, -1),
        ]
        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.rigNode.setMsg({"smart_ctl": self.smart_ctl})
        self.smart_ctl.cv_scale(1, 2, 1)

    def build(self):
        """Build the hand rig module."""
        self.build_pre_module()

        for root in self.rootJ.childrenJt:
            digit_jnts = [jnt for jnt in root.allChildrenJt2]
            self.jnts_fgr.append(digit_jnts)
            self.jnts_bind.extend(digit_jnts[:-1])

        self.build_ctl()
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
                f"{fgr.name}_ctl", shape="circleZ", up="x", scale=scale / 1.5, align=fgr
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
        dataList1 = [(-90, -90), (0, 0), (90, 90)]
        dataList2 = [(-90, -80), (0, 0), (90, 80)]

        for i in range(1, 5):
            for ctl in self.ctls_fgr[i][1:]:
                for k in range(3):
                    common.sdk(drv, ctl.offset, "ry", "ry", *dataList1[k], inf=1)

        for ctl in self.ctls_fgr[0][1:]:
            for k in range(3):
                common.sdk(drv, ctl.offset, "ry", "ry", *dataList2[k], inf=1)

    def setup_flap_sdk(self):
        """Setup SDK for finger flap controls."""
        drv = self.smart_ctl
        dataList_ry = [
            [(90, -50), (0, 0), (-90, 50)],
            [(90, -30), (0, 0), (-90, 30)],
            [(90, 20), (0, 0), (-90, -20)],
            [(90, 90), (0, 0), (-90, -90)],
        ]
        dataList_rx = [
            [(90, -15), (0, 0), (-90, 15)],
            [(90, -5), (0, 0), (-90, 5)],
            [(90, 10), (0, 0), (-90, -10)],
            [(90, 40), (0, 0), (-90, -40)],
        ]
        # dataList_rz = [
        #     [(90, -5), (-90, 5)],
        #     [(90, -10), (-90, 10)],
        #     [(90, -20), (-90, 20)],
        #     [(90, -40), (-90, 40)],
        # ]
        for i in range(1, 5):
            ofs = self.ctls_fgr[i][1].offset
            for k in range(3):
                common.sdk(drv, ofs, "rx", "ry", *dataList_ry[i - 1][k], inf=1)
                common.sdk(drv, ofs, "rx", "rx", *dataList_rx[i - 1][k], inf=1)
                # common.sdk(drv, ofs, "rx", "rz", *dataList_rz[i - 1][k], inf=1)

    def setup_spread_sdk(self):
        """Setup SDK for spread pose on fingers."""
        drv = self.smart_ctl
        for i in range(4):
            dataList_rz = [
                [(0, -6), (1, 0), (2, 30)],
                [(0, -3), (1, 0), (2, 10)],
                [(0, 3), (1, 0), (2, -10)],
                [(0, 6), (1, 0), (2, -30)],
            ]
            ofs = self.ctls_fgr[i + 1][1].offset
            for k in range(3):
                common.sdk(drv, ofs, "sy", "rz", *dataList_rz[i][k], inf=1)

            dataList_rz2 = [
                [(0, -1), (1, 0), (2, 5)],
                [(0, -0.3), (1, 0), (2, 2)],
                [(0, 0.3), (1, 0), (2, -2)],
                [(0, 1), (1, 0), (2, -5)],
            ]
            ofs = self.ctls_fgr[i + 1][0].offset
            for k in range(3):
                common.sdk(drv, ofs, "sy", "rz", *dataList_rz2[i][k], inf=1)

            # Thumb
            # dataList_rz3 = [
            #     [(0, -50), (1, 0), (2, 20)],
            # ]
            # ofs = self.ctls_fgr[0][0].offset
            # for k in range(3):
            #     common.sdk(drv, ofs, "sy", "rz", *dataList_rz3[0][k], inf=1)
            # ofs = self.ctls_fgr[0][1].offset
            # for k in range(3):
            #     common.sdk(drv, ofs, "sy", "rz", *dataList_rz3[0][k], inf=1)

    def setup_updn_sdk(self):
        """Setup SDK for up/down pose on fingers."""
        drv = self.smart_ctl
        rID, rSz, xDr = self.getMyVar()
        for i in range(1, 5):
            ofs = self.ctls_fgr[i][1].offset
            common.sdk(drv, ofs, "tz", "ry", 10, -90 * xDr, inf=1)
            common.sdk(drv, ofs, "tz", "ry", -10, 90 * xDr, inf=1)
            common.sdk(drv, ofs, "ty", "rz", 10, 90 * xDr, inf=1)
            common.sdk(drv, ofs, "ty", "rz", -10, -90 * xDr, inf=1)

    def setup_metacarpal(self):
        """Setup metacarpal controls for the hand rig."""

        fkc_ofs2 = self.ctls_fgr[2][0].offset.addOffsetGrp()
        fkc_ofs3 = self.ctls_fgr[3][0].offset.addOffsetGrp()
        fkc_ofs4 = self.ctls_fgr[4][0].offset.addOffsetGrp()

        # Align palm_ctl to fkc_ofs3
        self.palm_ctl.alignTo(fkc_ofs3, p=self.CTL_DATA)
        self.palm_ctl.addOffsetGrp()
        self.rootJ.cstPar(self.palm_ctl.offset, mo=1)

        # Connect palm_ctl rotation to meta carpal
        self.palm_ctl.a.r * (0.2, 0.2, 0.2) >> fkc_ofs2.a.r
        self.palm_ctl.a.r * (0.5, 0.5, 0.5) >> fkc_ofs3.a.r
        self.palm_ctl.a.r >> fkc_ofs4.a.r

        # Connect palm_ctl rotation to ik ctls
        self.palm_ctl.a.r * (0.2, 0.2, 0.2) >> self.ctls_ik[2].offset.a.r
        self.palm_ctl.a.r * (0.5, 0.5, 0.5) >> self.ctls_ik[3].offset.a.r
        self.palm_ctl.a.r >> self.ctls_ik[4].offset.a.r

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

        self.setup_close_sdk()
        self.setup_flap_sdk()
        self.setup_spread_sdk()
        self.setup_updn_sdk()
        self.set_pre_post_infinity()

        self.setup_metacarpal()
        # self.setup_flap_meta_sdk()

    def set_pre_post_infinity(self):
        """Set pre and post infinity for the hand rig controls."""
        animCrvNodes = self.smart_ctl.a.r.outConnNode
        if animCrvNodes:
            mc.select(animCrvNodes)
            mc.selectKey()
            mc.setInfinity(pri="linear", poi="linear")

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

        for ctl in self.ctls_ik + [self.palm_ctl]:
            ctl.a.showAttr(r=1)
        for ctls in self.ctls_fgr:
            for ctl in ctls:
                ctl.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the hand rig controls."""
        for ctls in self.ctls_fgr:
            for ctl in ctls:
                ctl.offset.a.rotateOrder.set(3)
        # for i in range(5):
        #     for j in [0, 1]:
        #         self.ctls_fgr[i][j].offset.a.rotateOrder.set(3)
        self.smart_ctl.a.ro.set(3)

    def setup_vis(self):
        """Setup visibility controls for the hand rig."""
        showCtls = self.setting.a.add("fkCtls", attrType="bool", dv=1, k=0)
        for ctls in self.ctls_fgr:
            showCtls >> ctls[0].a.v

        self.ctl_vis_toggle(
            self.setting.a.add("debugVis", attrType="bool", dv=0, k=0),
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
        handScale = self.smart_ctl.a.add("handScale", min=0, dv=1)
        handScale >> self.rootJ.a.scale
        handScale >> self.palm_ctl.offset.a.scale

        for root in self.rootJ.childrenJt:
            root.a.segmentScaleCompensate.set(0)

        self.masterC.a.globalScale >> self.SKL_DATA.a.scale
        self.rootJ.cstSca(self.RIG_DATA)

    def build_post(self):
        """Post setup for the hand rig module."""
        logging.info(self.rigID)

        self.setting.alignTo(self.smart_ctl, p=self.smart_ctl)
        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        # self.setup_anchor_module({"anchorS1": self.rootJ})
        self.setup_anchor_module({"anchorS1": self.rootGrp})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
