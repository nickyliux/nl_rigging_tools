import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


class HandBp(RigModule):
    """Hand rig module."""

    def __init__(self, rigNode):
        super().__init__(rigNode)

        # Finger and control lists
        self.jnts_fgr = []
        self.jnts_ik = []
        self.ctls_fgr = []
        # self.ctls_ik = []
        self.ikHs_fgr = []

        # Main controls/groups
        self.setting = None
        self.smart_ctl = None
        self.hand_grp = None

    def gen_sk(self):
        """Generate the skeleton for the hand rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["handJ"])
        ALL_FGR_NAMES = [
            ["fgr00_1", "fgr00_2", "fgr00_3", "fgr00_4"],
            ["fgr01_1", "fgr01_2", "fgr01_3", "fgr01_4", "fgr01_5"],
            ["fgr02_1", "fgr02_2", "fgr02_3", "fgr02_4", "fgr02_5"],
            ["fgr03_1", "fgr03_2", "fgr03_3", "fgr03_4", "fgr03_5"],
            ["fgr04_1", "fgr04_2", "fgr04_3", "fgr04_4", "fgr04_5"],
        ]
        fgr_roots = []
        for fgr_names in ALL_FGR_NAMES:
            jnts = self.gen_sk_fr_names(fgr_names)
            jnts[0].reOrient(upRef=jnts[1], xDir=self.xDir)
            jnts[0] | root_list[0]
            fgr_roots.append(jnts[0])

        self.rootJ = root_list[0]
        # self.rootJ.color = Color.BLACK
        self.rootJ | self.JNT_DATA
        self.rootGrp = self.rootJ.addOffsetGrp()
        self.rigNode.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build_ctl(self):
        """Build the controls for the hand rig module."""
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "screw_nut", "z", scale * 2, 0),
            ("palm_ctl", "rotate2_3d", None, -scale, 0),
            ("thumb_ctl", "rotate2_3d", "z", -scale, 0),
            ("smart_ctl", "rotate2_3d", "x", scale * 2, 0),
        ]
        for name, shape, up, sca, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, sca, top)

        self.rigNode.setMsg({"smart_ctl": self.smart_ctl})
        self.smart_ctl.cv_rotate(90, 0, 0)
        self.setting.cv_move(0, 0, -scale * 30)
        self.setting.color = Color.PINK
        self.palm_ctl.color = Color.PINK
        self.thumb_ctl.color = Color.PINK
        self.smart_ctl.color = Color.PINK

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
                f"{fgr.name}_ctl",
                up="z",
                shape="squareR",
                scale=scale * 0.25,
                align=fgr,
            )
            ctl.cv_move(scale * 4, 0, -scale * 8)
            ctlList.append(ctl)
        return ctlList

    def build_fk(self):
        """Build FK controls for the hand rig module."""
        logging.info("OK")

        for fgrs in self.jnts_fgr:

            ctlList = self.create_finger_ctl(fgrs)
            self.build_fk_with_ctl3(fgrs, ctlList, count=2, p=self.CTL_DATA)
            self.ctls_fgr.append(ctlList)

            ctl_offset = ctlList[0].offset.offset
            self.rootJ.cstPar(ctl_offset, mo=1)
            self.rootJ.a.s >> ctl_offset.a.s

    def build_ik(self):
        """Build IK controls for the hand rig module."""
        logging.info("OK")

        rID, rSz, xDr = self.getMyVar()
        self.hand_grp = GrpNode(rID + "_grp", align=self.rootJ, p=self.CTL_DATA)
        for fgrs, ctls in zip(self.jnts_fgr, self.ctls_fgr):

            scale = xDr * rSz / 2
            ikJ, ikH = self.build_digit_ik(fgrs[1], scale=scale, p=self.hand_grp)
            self.jnts_ik.append(ikJ)
            self.ikHs_fgr.append(ikH)

            tgtGrp = ctls[1].parent.parent
            tgtGrp.addOffsetGrp()
            ikJ.a.r >> tgtGrp.a.r

    def setSDK(self, drv, data, i=0, attr1="ry", attr2="ry", tgtOfs=0):
        """Setup SDK for finger base controls.
        tgtOfs = which seg of finger to start with
        """
        for j in range(len(data)):
            for k in range(len(data[j])):
                common.sdk(
                    drv,
                    self.ctls_fgr[i][j + tgtOfs].offset,
                    attr1,
                    attr2,
                    *data[j][k],
                    inf=1,
                    tangent=3,
                )

    def setup_claw_sdk(self):
        """Setup SDK for finger claw controls."""
        drv = self.smart_ctl

        for i in range(5):
            self.smart_ctl.a.add(f"claw{str(i)}", type="float", dv=0, k=1)

        # Fgr 1, 2, 3, 4
        data = [
            [(-90, -90), (0, 0), (90, 55)],  # id = 2
            [(-90, -70), (0, 0), (90, 35)],  # id = 3
        ]
        for i in range(1, 5):
            self.setSDK(drv, data, i=i, tgtOfs=2, attr1=f"claw{str(i)}")

        # Fgr 0
        data = [
            [(-90, -75), (0, 0), (90, 60)],  # id = 2
        ]
        self.setSDK(drv, data, i=0, tgtOfs=2, attr1="claw0")

    def setup_close_sdk(self):
        """Setup SDK for finger close controls."""
        drv = self.smart_ctl
        # Fgr 1, 2, 3, 4
        data = [
            [(-90, -90), (0, 0), (90, 60)],  # id = 1
            [(-90, -100), (0, 0), (90, 50)],  # id = 2
            [(-90, -90), (-45, -25), (0, 0), (90, 35)],  # id = 3
        ]
        for i in range(1, 5):
            self.setSDK(drv, data, i=i, tgtOfs=1)
        # Fgr 0
        data = [
            [(-90, -30), (0, 0), (90, 40)],  # id = 1
            [(-90, -75), (0, 0), (90, 60)],  # id = 2
        ]
        self.setSDK(drv, data, i=0, tgtOfs=1)

    def setup_flap_sdk(self):
        """Setup SDK for finger flap controls."""
        drv = self.smart_ctl
        data_ry = [
            [(90, -50), (0, 0), (-90, 50)],
            [(90, -30), (0, 0), (-90, 30)],
            [(90, 20), (0, 0), (-90, -20)],
            [(90, 90), (0, 0), (-90, -90)],
        ]
        data_rx = [
            [(90, -15), (0, 0), (-90, 15)],
            [(90, -5), (0, 0), (-90, 5)],
            [(90, 10), (0, 0), (-90, -10)],
            [(90, 40), (0, 0), (-90, -40)],
        ]
        for i in range(1, 5):
            ofs = self.ctls_fgr[i][1].offset
            for k in range(3):
                common.sdk(drv, ofs, "rx", "ry", *data_ry[i - 1][k], inf=1)
                common.sdk(drv, ofs, "rx", "rx", *data_rx[i - 1][k], inf=1)

    def setup_spread_sdk(self):
        """Setup SDK for spread pose on fingers."""
        drv = self.smart_ctl
        for i in range(4):
            # -------------------------------------------
            data_rz = [
                [(0, -20), (1, 0), (2, 30)],
                [(0, -8), (1, 0), (2, 10)],
                [(0, 8), (1, 0), (2, -10)],
                [(0, 20), (1, 0), (2, -30)],
            ]
            ofs = self.ctls_fgr[i + 1][1].offset
            for k in range(3):
                common.sdk(drv, ofs, "sy", "rz", *data_rz[i][k], inf=1, tangent=3)

            # -------------------------------------------
            data_rz2 = [
                [(0, -1), (1, 0), (2, 3)],
                [(0, -0.3), (1, 0), (2, 1)],
                [(0, 0.3), (1, 0), (2, -1)],
                [(0, 1), (1, 0), (2, -3)],
            ]
            ofs = self.ctls_fgr[i + 1][0].offset
            for k in range(3):
                common.sdk(drv, ofs, "sy", "rz", *data_rz2[i][k], inf=1, tangent=3)

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

    def set_pre_post_infinity(self):
        """Set pre and post infinity for the hand rig controls."""
        animCrvNodes = self.smart_ctl.a.r.outConnNode
        if animCrvNodes:
            mc.select(animCrvNodes)
            mc.selectKey()
            mc.setInfinity(pri="linear", poi="linear")

    def setup_thumbCtl(self):
        """Setup thumb control for the hand rig."""
        rID, rSz, xDr = self.getMyVar()
        fkc_ofs0 = self.ctls_fgr[0][0].offset.addOffsetGrp()

        self.thumb_ctl.alignTo(fkc_ofs0, p=self.CTL_DATA)
        self.thumb_ctl.addOffsetGrp()
        self.rootJ.cstPar(self.thumb_ctl.offset, mo=1)

        grp0 = GrpNode("ikZro#", pf=rID, align=self.ctls_fgr[0][0], p=self.hand_grp)
        grp0.addOffsetGrp()
        self.ikHs_fgr[0] | grp0
        self.thumb_ctl.a.r >> grp0.a.r
        self.thumb_ctl.a.r >> fkc_ofs0.a.r

    def setup_palmCtl(self):
        """Setup metacarpal controls for the hand rig."""
        rID, rSz, xDr = self.getMyVar()

        fkc_ofs2 = self.ctls_fgr[2][0].offset.addOffsetGrp()
        fkc_ofs3 = self.ctls_fgr[3][0].offset.addOffsetGrp()
        fkc_ofs4 = self.ctls_fgr[4][0].offset.addOffsetGrp()

        self.palm_ctl.alignTo(fkc_ofs3, p=self.CTL_DATA)
        self.palm_ctl.addOffsetGrp()
        self.rootJ.cstPar(self.palm_ctl.offset, mo=1)

        product2 = self.palm_ctl.a.r * (0.2, 0.2, 0.2)
        product3 = self.palm_ctl.a.r * (0.5, 0.5, 0.5)
        product4 = self.palm_ctl.a.r

        product2 >> fkc_ofs2.a.r
        product3 >> fkc_ofs3.a.r
        product4 >> fkc_ofs4.a.r

        # Add zro group for fgr ikH
        grp2 = GrpNode("ikZro#", pf=rID, align=fkc_ofs2, p=self.hand_grp)
        grp3 = GrpNode("ikZro#", pf=rID, align=fkc_ofs3, p=self.hand_grp)
        grp4 = GrpNode("ikZro#", pf=rID, align=fkc_ofs4, p=self.hand_grp)

        self.ikHs_fgr[2] | grp2
        self.ikHs_fgr[3] | grp3
        self.ikHs_fgr[4] | grp4

        grp2.addOffsetGrp()
        grp3.addOffsetGrp()
        grp4.addOffsetGrp()

        product2 >> grp2.a.r
        product3 >> grp3.a.r
        product4 >> grp4.a.r

    def build_fgrs(self):
        """Build the finger logic for the hand rig module."""
        logging.info("OK")

        rID, rSz, xDr = self.getMyVar()
        if len(self.jnts_fgr) != 5:
            logging.info("Smart setup for 5-fgr only.")
            return

        # smart_ctl, with group scaling with rootJ
        scaleGrp = GrpNode("smartScale", pf=rID, align=self.rootJ, p=self.CTL_DATA)
        offsetX = rSz * xDr * 60
        self.smart_ctl.alignTo(self.rootJ, p=scaleGrp, ofs=(offsetX, 0, 0))
        self.smart_ctl.addOffsetGrp()

        self.hand_grp.cstPar(scaleGrp, mo=1)
        self.rootJ.a.s >> scaleGrp.a.s

        self.setup_close_sdk()
        self.setup_claw_sdk()
        self.setup_flap_sdk()
        self.setup_spread_sdk()
        self.setup_updn_sdk()
        self.set_pre_post_infinity()
        self.setup_palmCtl()
        self.setup_thumbCtl()

    def setup_space(self):
        """Setup space switching for the hand rig controls."""
        self.rigNode.a.add("spaceName1", type="string", txt="palm")
        self.rigNode.a.add("spaceName2", type="string", txt="palmIK")
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
        self.palm_ctl.a.showAttr(r=1)

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
        fgrCtlVis = self.setting.a.add("showFgrCtl", type="bool", dv=1, k=0)

        for ctls in self.ctls_fgr:
            fgrCtlVis >> ctls[0].a.v

        for ctls in self.ctls_fgr:
            ctls[0].shape.hide()

        mc.hide(self.ikHs_fgr, self.jnts_ik)

    def setup_ctlSet(self):
        """Setup control sets for the hand rig module."""
        ctlSet = [self.smart_ctl, self.palm_ctl, self.thumb_ctl]
        [ctlSet.extend(x[1:]) for x in self.ctls_fgr]
        self.add_ctl_set(ctlSet)

    def setup_bindJnt(self):
        """Setup bind joints for the hand rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_bind_sk_set(self.jnts_bind)

    def setup_scale(self):
        """Setup scaling for the hand rig module."""
        handScale = self.setting.a.add("handScale", min=0, dv=1)
        self.smart_ctl.a.add("handScale", proxy=handScale)
        for tgt in [
            self.rootJ,
            self.thumb_ctl.offset,
            self.palm_ctl.offset,
            self.hand_grp,
        ]:
            handScale >> tgt.a.scale

        for root in self.rootJ.childrenJt:
            root.a.segmentScaleCompensate.set(0)

        self.masterC.a.globalScale >> self.JNT_DATA.a.scale

    def build_post(self):
        """Post setup for the hand rig module."""
        logging.info("OK")

        self.setting.alignTo(self.rootJ, p=self.CTL_DATA)
        self.rootJ.cstPar(self.setting, mo=1)

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor_module({"anchorS1": self.rootGrp})
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
