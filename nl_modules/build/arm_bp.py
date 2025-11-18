import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color

from enum import Enum


class LimbType(Enum):
    BASIC = 0
    ROBOT = 1
    RIBBON = 2
    SKEL = 3


class ArmBp(RigModule):
    """Arm rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        rigNode = DagNode(rigNode) if isinstance(rigNode, str) else rigNode
        super().__init__(rigNode)

        guide_attrs = [
            "limbType",
            "rollJntNum",
            "rbnJntNum",
            "scapulaBone",
        ]
        for attr in guide_attrs:
            setattr(self, attr, self.get_guide_attr(attr))

        # Groups
        self.FK_GRP = GrpNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_GRP = GrpNode("IK", pf=self.rigID, p=self.CTL_DATA)
        self.BF_GRP = GrpNode("BF", pf=self.rigID, p=self.CTL_DATA)

        self.setting = None

        # Joint names and attributes
        self.jnt_names = ["clavicle", "upr", "lwr", "palm", "ball"]
        for name in self.jnt_names:
            setattr(self, name, None)
            setattr(self, f"{name}_fkc", None)

        # Joint and control lists
        self.jnts = []
        self.jnts_fk = []
        self.jnts_ik = []
        self.jnts_bf = []
        self.jnts_roll = []
        self.ctls_ik = []
        self.ctls_fk = []
        self.ikhs = []
        self.ctls_up = []

        # IK/FK/Blend/Other attributes
        self.ikc = None
        self.pvc = None
        self.pin_fkc = None
        self.palm_ikc = None
        self.ballRoll_loc = None
        self.toe_wiggle_grp = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.ikCstG = None
        self.ikH1 = None

    def gen_sk(self):
        """Generate the skeleton for the arm rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(self.jnt_names)

        for jnt in root_list:
            DagNode(jnt).a.ro.set(5)
        DagNode(root_list[0]).a.ro.set(2)

        self.rootJ = root_list[0]
        # self.rootJ.color = Color.BLACK
        self.rootJ | self.JNT_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build_ctl(self):
        """Build control nodes for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "gear", "x", scale * 2, 1, 2),
            ("clavicle_fkc", "stick2", "z", scale / 2, 1, 2),
            ("upr_fkc", "circle", "x", scale, 0, -1),
            ("lwr_fkc", "circle", "x", scale, 0, -1),
            ("palm_fkc", "circle", "x", scale, 0, -1),
            ("ikc", "cube", None, scale * 2, 0, -1),
            ("pvc", "diamond3", None, rSz * 2, 0, -1),
            ("palm_ikc", "squareR", "x", scale, 0, 2),
        ]

        if self.scapulaBone:
            ctl_defs.append(["scap_fkc", "triangle", "z", scale, 0, 2])

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.clavicle_fkc.cv_rotate(0, 0, 90)
        # self.clavicle_fkc.cv_move(scale * 30, 0, 0)
        if self.scapulaBone:
            self.scap_fkc.cv_move(0, 0, scale * 20)

        self.ikc.cv_rotate(0, 90, 0)
        self.pvc.cv_rotate(-90, 0, 0)

    def build(self):
        """Build the arm rig module."""
        self.build_pre_module()

        self.jnts = self.rootJ.allChildrenJt2
        self.clavicle, self.upr, self.lwr, self.palm, self.ball = self.jnts
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()

        self.jnts_bind = [self.palm, self.clavicle]

        # ---------------------------------------------------------------
        #   Setup base on LimbType
        # ---------------------------------------------------------------
        if self.limbType == LimbType.BASIC.value:
            self.jnts_bind += [self.upr, self.lwr]

        elif self.limbType == LimbType.ROBOT.value:
            self.jnts_bind += [self.lwr]
            proxy.add_height_attr([self.lwr], self.rigSize * 10)
            self.build_aimHelper([self.lwr])
            self.ctls_up = self.build_aimHelper([self.palm], addCtl=1)

            jnt_ro1 = self.build_uprRollJ(self.upr, self.lwr, num=self.rollJntNum)
            jnt_ro2 = self.build_lwrRollJ(self.palm, self.ball, num=self.rollJntNum)
            self.jnts_roll = [jnt_ro1, jnt_ro2]

        elif self.limbType == LimbType.RIBBON.value:
            self.build_bendy_ribbon(
                rbnJntNum=self.rbnJntNum,
                root=self.clavicle,
                upr=self.upr,
                lwr=self.lwr,
                palm=self.palm,
                kneeFix=0,
            )
        elif self.limbType == LimbType.SKEL.value:
            self.jnts_bind += [self.upr]
            self.build_dual_bones()

        if self.scapulaBone:
            self.build_armScapula()

        # self.build_nlAutoAim(
        #     self.clavicle, self.upr, fkc=self.clavicle_fkc, ikc=self.ikc
        # )

        self.build_post()

    def build_fk(self):
        """Build the FK controls and joints for the arm rig."""
        logging.info(self.rigID)

        self.jnts_fk = common.dupSk(
            self.jnts, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )
        self.ctls_fk = [self.clavicle_fkc, self.upr_fkc, self.lwr_fkc, self.palm_fkc]

        self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)
        self.isolate_align(
            self.upr_fkc,
            spaces=[self.upr_fkc.parent, self.masterC],
        )

    def build_ik(self):
        """Build the IK controls for the arm rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()

        self.ikc.alignTo(self.palm, p=self.IK_GRP)
        self.palm_ikc.alignTo(self.palm, p=self.IK_GRP)
        pvc_guide = DagNode(f"{rID}_pvc_guide")
        self.pvc.alignTo(pvc_guide, p=self.IK_GRP)

        self.jnts_ik = common.dupSk(
            self.jnts, "_ik", p=self.IK_GRP, r=rSz * 3, color=Color.RED
        )
        ikH1 = IkNode(
            "1",
            pf=rID,
            rSz=rSz,
            sj=self.upr,
            ee=self.palm,
            jsf="_ik",
            solver=Solver.RP,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            localScale=1,
            scaleFix=self.masterC.a["globalScale"],
            p_data=self.CTL_DATA,
        )
        self.ikH1 = ikH1
        self.ikc_gimbal = CrvNode(self.ikc).add_gimbal()

        # IK constraint group
        self.ikCstG = GrpNode("ikCstG", pf=rID, align=self.palm, p=self.IK_GRP)
        if xDr == 1:
            self.ikCstG.a.rx.set2(180, add=1)
        ikH1 | self.ikCstG

        # Constrain IK group to IK control
        self.ikc_gimbal.cstSca(self.ikCstG, mo=1)

        # Parent controls and lines
        self.pvc_line = CrvNode.buildLineLinked(
            tgt1=self.jnts_ik[2],
            tgt2=self.pvc,
            pf=rID,
            dspType=2,
            p=self.IK_GRP,
        )

        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        self.pvc_line.addOffsetGrp()

        # IK controls list
        self.ctls_ik += [self.ikc, self.pvc, self.ikc, self.ikc_gimbal]

        ikH1.stretchyIk(soft=1)
        self.ikhs = [ikH1]
        self.clavicle_fkc.cstPar(self.jnts_ik[0], mo=1)

        self.fk_pin_local_rot()

    def fk_pin_local_rot(self):
        """Setup palm IK control constraints."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        fkPin = self.pvc.a.add("fkPin", min=0, max=1)
        self.pin_fkc = CrvNode(
            "pin_fkc",
            pf=rID,
            shape="squareR",
            up="x",
            scale=rSz,
            align=self.palm,
            p=self.pvc,
            addOfs=1,
        )
        common.cstMulti(
            self.ikc_gimbal, self.pin_fkc, self.ikCstG, w=fkPin, cstType="par", mo=1
        )

        palm_ikj = self.jnts_ik[3]
        palm_ikc_ofs = self.palm_ikc.addOffsetGrp()
        self.ikc_gimbal.cstPoi(palm_ikc_ofs)

        common.cstMulti(
            self.ikc_gimbal,
            palm_ikj.offset,
            palm_ikc_ofs,
            w=self.ikc.a.add("localRot", min=0, max=1, dv=0),
            cstType="parR",
        )
        common.cstMulti(
            self.palm_ikc,
            self.pin_fkc,
            palm_ikj,
            w=fkPin,
            cstType="ori",
        )
        self.ctls_ik += [self.palm_ikc, self.pin_fkc]

    def blend_fk_ik(self):
        """Blend FK and IK joints for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        self.setting.alignTo(self.clavicle, p=self.CTL_DATA)
        self.ctls_fk[0].offset.cstPar(self.setting, mo=1)

        # Extract blend joints
        self.jnts_bf = common.dupSk(
            self.jnts, "_bf", p=self.BF_GRP, r=rSz * 4, color=Color.D_YELLOW
        )

        palmIn_guide = DagNode(f"{rID}_palmIn_guide")
        palmOut_guide = DagNode(f"{rID}_palmOut_guide")
        ball_guide = DagNode(f"{rID}_ball_guide")

        self.palmIn_loc = LocNode("palmIn", pf=rID, align=palmIn_guide, size=rSz)
        self.palmOut_loc = LocNode("palmOut", pf=rID, align=palmOut_guide, size=rSz)
        self.ballRoll_loc = LocNode("ballRoll", pf=rID, align=ball_guide, size=rSz)

        self.ballRoll_loc | self.palmOut_loc | self.palmIn_loc | self.jnts_bf[-1]

        self.palm_rolling(
            self.ikc,
            self.palm_fkc,
            self.pin_fkc,
            self.ballRoll_loc,
            self.palmIn_loc,
            self.palmOut_loc,
        )

        # Add blend attribute
        self.setting.a.addSep()
        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=0)
        total = len(self.jnts) - 1

        # Blend FK/IK to BF joints and drive output joints
        for i in range(total):
            fkj = self.jnts_fk[i]
            ikj = self.jnts_ik[i]
            bfj = self.jnts_bf[i]
            jnt = self.jnts[i]
            if i > 0:
                common.cstMulti(fkj, ikj, bfj, w=fkIk)
                # ut.blendN_(fkj.a.t, ikj.a.t, w=fkIk) >> bfj.a.t
                # ut.blendN_(fkj.a.r, ikj.a.r, w=fkIk) >> bfj.a.r

            if i == 0:
                self.clavicle_fkc.cstPar(jnt, mo=1)
                self.clavicle_fkc.cstPar(bfj, mo=1)
                bfj.a.r >> jnt.a.r
            elif i < total - 1:
                bfj.a.t >> jnt.a.t
                bfj.a.r >> jnt.a.r
            else:
                self.ballRoll_loc.cstPar(jnt, mo=1)

        # Add blend attribute to all controls
        for ctl in self.ctls_fk + self.ctls_ik:
            ctl.a.add("fkIk", proxy=fkIk, k=0)

        # Create matcher group for snapping
        GrpNode("matcher", pf=self.ikc, align=self.ikc, p=self.palm_fkc)

    def build_armScapula(self):
        """Build the scapula setup for the arm rig."""
        rID, rSz, xDr = self.getMyVar()
        self.CLV_GRP = GrpNode("CLAVICLE", pf=self.rigID, p=self.CTL_DATA)

        clavStart_guide = DagNode(f"{rID}_clavStart_guide")
        clavEnd_guide = DagNode(f"{rID}_clavEnd_guide")
        scapula_guide = DagNode(f"{rID}_scapula_guide")
        scapAim_guide = DagNode(f"{rID}_scapAim_guide")

        # Y = Color.YELLOW

        # SCAPULA -----------------------------------------------------------------
        scapJnts = JntNode.makeTwoJointChain(
            "scapula",
            pf=rID,
            snap=self.upr,
            aimTgt=scapula_guide,
            offset=(xDr, 0, 0),
            u=(0, xDr, 0),
            rad=rSz / 2,
            p=self.JNT_DATA,
        )
        # scapLoc = LocNode(
        #     "scapLoc", pf=rID, snap=self.upr, p=self.clavicle_fkc, size=rSz * 5, color=Y
        # )
        # scapAimLoc = LocNode(
        #     "scapAimLoc",
        #     pf=rID,
        #     snap=scapAim_guide,
        #     p=self.clavicle_fkc.offset,
        #     size=rSz * 5,
        #     color=Y,
        # )
        # scapAimLoc.cstAim(
        #     scapLoc,
        #     worldUpType="objectrotation",
        #     worldUpObject=self.clavicle_fkc.offset,
        #     aim=(xDr, 0, 0),
        #     u=(0, 0, 1),
        #     wu=(0, 0, 1),
        # )

        self.scap_fkc.snapAlignTo(self.upr, scapJnts[0], p=self.CLV_GRP)
        ofsGrps = self.scap_fkc.addOffsetGrp(count=3)
        self.clavicle_fkc.cstParT(ofsGrps[-1], mo=1)
        self.clavicle_fkc.offset.cstParR(ofsGrps[-1], mo=1)
        self.clavicle_fkc.a.ry >> ofsGrps[0].a.ry
        self.clavicle_fkc.a.rz * -0.25 >> ofsGrps[0].a.rz

        self.scap_fkc.cstPar(scapJnts[0], mo=1)

        # CLAVICLE -----------------------------------------------------------------
        clavJnts = JntNode.makeTwoJointChain(
            "clavicleSk",
            pf=rID,
            snap=clavStart_guide,
            aimTgt=clavEnd_guide,
            offset=(xDr, 0, 0),
            u=(0, xDr, 0),
            rad=rSz / 2,
            p=self.JNT_DATA,
        )
        clav_ikh = IkNode(
            "clav",
            solver=Solver.RP,
            pf=rID,
            sj=clavJnts[0],
            ee=clavJnts[1],
            vis=0,
            p=self.scap_fkc,
        )
        self.clavicle.cstPoi(clavJnts[0], mo=1)

        self.jnts_bind += [clavJnts[0], scapJnts[0]]

    def build_dual_bones(self):
        """Build dual bones for the lower arm."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()

        # Generate radius and ulna joint chains
        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], scale=0.6)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], scale=0.6)

        # Parent dual chains to lower arm
        (radius_JC[0], ulna_JC[0]) | self.lwr

        # Create locators for dual  orientation
        radius_loc = LocNode(
            "radius_loc", pf=rID, align=radius_JC[1], p=self.palm, size=rSz
        )
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm, size=rSz)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])

        # Aim constraints for dual  orientation
        uType = "objectrotation"
        aim = (xDr, 0, 0)
        z = (0, 0, 1)
        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.palm, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )

        self.jnts_bind += [radius_JC[0], ulna_JC[0]]

    def palm_rolling(self, ikc, fkc, fkPin, locRoll, locIn, locOut):
        """Setup palm rolling for the arm rig controls."""
        palmRoll = self.setting.a.add("palmRoll")
        palmRoll * -1 >> locRoll.a.rz
        fkc.a.add("palmRoll", proxy=palmRoll)
        fkPin.a.add("palmRoll", proxy=palmRoll)
        ikc.a.add("palmRoll", proxy=palmRoll)

        palmBank = self.setting.a.add("palmBank")
        ut.min_(palmBank, 0) * -1 >> locIn.a.rx
        ut.max_(0, palmBank) * -1 >> locOut.a.rx
        fkc.a.add("palmBank", proxy=palmBank)
        fkPin.a.add("palmBank", proxy=palmBank)
        ikc.a.add("palmBank", proxy=palmBank)

    def setup_vis(self):
        """Setup visibility toggles for the arm rig controls."""
        self.ctl_vis_toggle(
            self.setting.a["fkIk"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.ctls_fk[1:],
        )
        self.ctl_vis_toggle(
            self.pvc.a["fkPin"],
            onList=[self.pin_fkc],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("pvcVis", type="bool", dv=1, k=0),
            onList=[self.pvc.offset, self.pvc_line.offset],
        )

        # mc.hide(self.jnts_bf + self.jnts_fk + self.jnts_ik)
        self.setting.a.add("fkJntVis", type="bool", k=0) >> self.jnts_fk[0].a.v
        self.setting.a.add("ikJntVis", type="bool", k=0) >> self.jnts_ik[0].a.v
        self.setting.a.add("bfJntVis", type="bool", k=0) >> self.jnts_bf[0].a.v

        if self.limbType == LimbType.RIBBON.value:
            self.ctl_vis_toggle(
                self.setting.a.add("bendyVis", type="bool", k=0, dv=1),
                onList=self.all_bendy,
            )

        self.ikc.a.localRot >> self.palm_ikc.a.v
        mc.hide(self.ikhs)  # , self.setting)

    def setup_channel(self):
        """Setup channel attributes for the arm rig controls."""
        self.setting.a.showAttr()
        self.palm_ikc.a.showAttr(r=1)

        for ctl in self.ctls_fk + [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bendy or []:
            ctl.a.showAttr(t=1, r=1, s=1)
        for ctl in self.ctls_up or []:
            ctl.a.showAttr(t=0, r=1, s=0)
        if self.scapulaBone:
            self.scap_fkc.a.showAttr(t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the arm rig controls."""
        # for ctl in [self.ikc, self.clavicle_fkc]:
        #     ctl.a.ro.set(2)
        # self.lwr_fkc.a.ro.set(3)
        # self.upr_fkc.a.ro.set(4)
        # self.palm_fkc.a.ro.set(5)

        for ctl in self.ctls_fk + self.ctls_ik:
            ctl.a.ro.set(5)
        self.ctls_fk[0].a.ro.set(2)

    def setup_space(self):
        """Setup space switching for the arm rig controls."""
        # Add space names for UI or switching
        self.rigNode.a.add(
            "spaceName1",
            type="string",
            txt="master, COG, uprBody, lwrBody, head",
        )
        self.rigNode.a.add(
            "spaceName2",
            type="string",
            txt="arm, master, clavicle, COG, uprBody, lwrBody",
        )

        # Build pole vector and FK/IK pin setup
        self.ikH1.build_pvfkPinSetup(ikTarget=self.ikc)

        # Set up space switching message connections
        PALM_ID = 3
        self.rigNode.setMsg(
            {
                "spaceHolder1": self.ikc,
                "spaceHolder2": self.pvc,
                "space_master": self.masterC,
                "space_arm": self.ikH1.pvJnt[0],
                "space_palm": self.ballRoll_loc,
                "space_palmIK": self.jnts_bf[PALM_ID],
            }
        )

    def setup_anchor(self):
        """Setup anchor module for the arm rig controls."""
        WRIST_ID = 3
        self.setup_anchor_module(
            {
                "anchorP1": self.jnts_bf[WRIST_ID],
                "anchorS1": self.clavicle_fkc.offset,
            }
        )

    def setup_scale(self):
        """Setup scale for the arm rig module."""
        self.masterC.a.globalScale >> self.JNT_DATA.a.scale

    def setup_bindJnt(self):
        """Setup bind joints for the arm rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        proxy.add_radiusScale_attr([self.palm], 0.6)

    def setup_ctlSet(self):
        """Setup control sets for the arm rig module."""
        ctlSet = self.ctls_fk + self.ctls_ik + [self.setting, self.pin_fkc]
        if self.limbType == LimbType.RIBBON.value:
            ctlSet.extend(self.all_bendy)
        if self.ctls_up:
            ctlSet.extend(self.ctls_up)
        self.add_ctl_set(ctlSet)

    def build_post(self):
        """Post setup for the arm rig."""
        logging.info(self.rigID)

        common.add_mirror_attr([self.pvc])
        # if self.scapulaBone:
        #     common.add_mirror_attr([self.scap_fkc])

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
