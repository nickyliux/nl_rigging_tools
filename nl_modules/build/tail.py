import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common


class Tail(RigModule):
    """Tail rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        super().__init__(rigNode)

        # Guide attributes
        guide_attrs = ["fkJntNum", "rbnJntNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        # --- Naming and group setup ---
        self.LINE_GUIDE = CrvNode(f"{self.rigID}_line_guide")
        self.RT_GUIDE = CrvNode(f"{self.rigID}_rt_guide")

        # Group nodes
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        # --- Main rig attributes ---
        self.setting = None
        self.rbSrf1 = None
        self.rbSrf2 = None

        # --- Control and joint lists ---
        self.fkCtl = []  # FK controls
        self.fkJnt = []  # FK joints
        self.ikCtl = []  # IK controls
        self.ikJnt = []  # IK joints
        self.ofsCtl = []  # Offset controls
        self.ofsJnt = []  # Offset joints
        self.rbJnt = []  # Ribbon joints
        self.bindJnts = []  # Bind joints

    def genSk(self):
        """Generate the skeleton for the tail rig."""

        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])

        self.rootJ = root_list[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build control nodes for the tail rig."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        ctl_defs = [("setting", "bagua", "z", rSz, 1, 2)]
        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        # self.setting.cv_move(0, rSz * 50, 0)
        self.setting.a.add("stretchy", min=0, max=1)
        self.setting.a.add("localScale", min=0.01, dv=1)

    def build(self):
        """Build the tail rig."""

        self.build_pre_module()

        # Create and register rbSrf
        self.rbSrf1 = self.create_rbSrf()
        self.rbSrf2 = self.create_rbSrf()
        self.rigNode.setMsg({"rbSrf": self.rbSrf2})

        self.build_ctl()
        self.build_ik()
        self.build_fk()
        self.build_ribbon()
        self.build_post()

    def create_rbSrf(self):
        """Create the ribbon surface for the tail rig."""

        return SrfNode.buildRbSrf(
            pf=self.rigID,
            crv=self.LINE_GUIDE,
            normal=1,
            spans=self.fkJntNum,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )

    def build_ribbon(self):
        """Create the ribbon for the tail rig."""
        logging.info(self.rigID)
        crvLenRatio, self.rbJnts = self.build_motionPath_ribbon(
            rbSrf=self.rbSrf2,
            jntNum=self.rbnJntNum,
            scaleAttr=self.setting.a.localScale * self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
        )
        self.bindJnts = self.rbJnts

    def build_ik(self):
        """Build the IK controls for the tail rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Create IK joint chain from guide curve ---
        self.ikJnt = JntNode.createJntFrCrv(
            self.LINE_GUIDE, num=5, name="ikj", pf=rID, aimV=(0, 0, -1), size=rSz
        )

        # --- Attach ribbon surface weights to IK joints ---
        SrfNode(self.rbSrf1).weightTo(self.ikJnt, mi=4, dr=6, chain=0)

        # --- Create and parent IK controls ---
        for i in range(5):
            ctl = CrvNode(
                f"{i}_ikc",
                pf=rID,
                shape="sphere",
                scale=rSz * 3,
                align=self.ikJnt[i],
                addOfs=1,
                p=self.IK_GRP,
            )
            self.ikJnt[i] | ctl
            self.ikCtl.append(ctl)
            if i > 0:
                ctl.offset | self.ikCtl[0]
            self.rigNode.setMsg({f"ikc{i}": ctl})

        # --- Snap setting control to first IK control and constrain ---
        self.setting.snapTo(self.ikCtl[0], p=self.FK_GRP)
        self.ikCtl[0].cstPar(self.setting, mo=1)

    def build_fk(self):
        """Build the FK controls for the tail rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        # --- Build FK joint chain from guide curve ---
        self.fkJnt = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=self.fkJntNum + 1,
            pf=rID,
            aimV=(0, 0, -1),
            size=rSz,
            p=self.FK_GRP,
        )

        # --- Build pin constraints for FK controls ---
        coord = [(0.5, i / self.fkJntNum) for i in range(self.fkJntNum + 1)]
        pin, pinXf = common.nlRivet(geo=self.rbSrf1, coordList=coord, p=self.RIG_DATA)

        # --- Create FK controls and register ---
        for i in range(self.fkJntNum + 1):
            ctl = CrvNode(
                f"{i}_fkc",
                pf=rID,
                shape="cubeR",
                up="-z",
                scale=rSz,
                top=1,
                align=self.fkJnt[i],
            )
            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)

        # --- Build group chain and connect pins ---
        chainGrps = []
        lastGrp = self.FK_GRP
        for i in range(self.fkJntNum + 1):
            grp = GrpNode(f"{i}_chainGrp", pf=rID, align=self.fkCtl[i], p=lastGrp)
            pinXf[i].cstPar(grp, mo=1)
            chainGrps.append(grp)
            lastGrp = grp

        # --- Build FK with controls ---
        self.build_fk_with_ctl3(self.fkJnt, self.fkCtl, p=self.FK_GRP)

        # --- Connect chain groups to FK control offsets ---
        for i in range(self.fkJntNum + 1):
            chainGrps[i].a.t >> self.fkCtl[i].offset.a.t
            chainGrps[i].a.r >> self.fkCtl[i].offset.a.r

        # --- Build offset control layer ---
        for i in range(self.fkJntNum + 1):
            ctl = CrvNode(
                f"{i}_ofs_ctl",
                pf=rID,
                shape="sphere2",
                scale=rSz / 2,
                align=self.fkCtl[i],
                p=self.fkCtl[i],
            )
            # moveY=rSz * 25,
            jnt = JntNode(f"{i}_ofs_jnt", pf=rID, align=ctl, p=ctl)
            self.ofsCtl.append(ctl)
            self.ofsJnt.append(jnt)

        # --- Attach ribbon surface weights to offset joints ---
        SrfNode(self.rbSrf2).weightTo(self.ofsJnt, chain=0, mi=2, dr=6)

        # --- Cleanup and update root joint ---
        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def setup_vis(self):
        """Setup visibility toggles for the tail rig controls."""

        self.ctl_vis_toggle(
            self.setting.a.add("ikCtl", k=0, attrType="bool", dv=0),
            onList=[self.ikCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("fkCtl", k=0, attrType="bool", dv=1),
            onList=[self.fkCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("subIkCtl", k=0, attrType="bool", dv=0),
            onList=self.ofsCtl,
        )
        mc.hide(self.ikJnt, self.fkJnt, self.ofsJnt, self.rbSrf1, self.rbSrf2)

    def setup_channel(self):
        """Setup channel attributes for the tail rig controls."""

        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

    def setup_rotate_order(self):
        """Setup rotate order for the tail rig controls."""

        for ctl in self.fkCtl:
            ctl.a.ro.set(3)

    def setup_scale(self):
        """Setup scale attributes for the tail rig controls."""

        self.setting.a["localScale"] >> self.IK_GRP.a.s
        self.setting.a["localScale"] >> self.FK_GRP.a.s

    def setup_ctlSet(self):
        """Setup control sets for the tail rig controls."""

        self.add_ctl_set(self.ikCtl + self.fkCtl + self.ofsCtl + [self.setting])

    def setup_bindJnt(self):
        """Setup bind joints for the tail rig controls."""

        self.add_bind_jnt_set(self.bindJnts)

    def build_post(self):
        """Post setup for the tail rig."""

        logging.info(self.rigID)
        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_anchor_module({"anchorF1": self.ikCtl[0].offset.offset})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
