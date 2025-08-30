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
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color


class ArmBp(RigModule):
    """Arm rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        # Accept DagNode or string for rigNode
        rigNode = DagNode(rigNode) if isinstance(rigNode, str) else rigNode
        super().__init__(rigNode)

        # Guide attributes
        guide_attrs = [
            "dualBones",
            "rbnBones",
            "rollJntNum",
            "rbnJntNum",
            "scapularBone",
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
        self.ctls_ik = []
        self.ctls_fk = []
        self.ikhs = []

        # IK/FK/Blend/Other attributes
        self.ikc = None
        self.pvc = None
        self.pin_fkc = None
        self.palm_ikc = None
        self.ballRoll_loc = None
        self.clavBone = None
        self.toe_wiggle_grp = None
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
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build_ctl(self):
        """Build control nodes for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "setting", "z", scale * 2, 1, 2),
            ("clavicle_fkc", "stickC", None, scale, 0, 2),
            ("upr_fkc", "circle", "x", scale, 0, -1),
            ("lwr_fkc", "circle", "x", scale, 0, -1),
            ("palm_fkc", "circle", "x", scale, 0, -1),
            ("ikc", "cube", None, scale * 1.5, 0, -1),
            ("pvc", "pvc", None, rSz, 0, -1),
            ("palm_ikc", "squareR", "x", scale * 1.2, 0, 2),
        ]

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.clavicle_fkc.cv_rotate(0, 0, -45)
        self.ikc.cv_rotate(0, 90, 0)
        self.pvc.cv_rotate(-90, 0, 0)
        self.palm_ikc.cv_move(scale * 5, 0, 0)

    def build(self):
        """Build the arm rig module."""
        self.build_pre_module()

        self.jnts = self.rootJ.allChildrenJt2
        self.clavicle, self.upr, self.lwr, self.palm, self.ball = self.jnts
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        # self.build_nlAutoAim(self.clavicle, self.upr, fkc=self.clavicle_fkc, ikc=self.ikc)
        # self.jnts_bind = [self.clavicle]
        self.build_extra([self.lwr, self.palm])

        if not self.rbnBones:
            self.build_uprRollJ(self.upr, self.lwr, num=self.rollJntNum)
            self.build_lwrRollJ(self.palm, self.ball, num=self.rollJntNum)
        else:
            self.build_bendy_ribbon(
                rbJNum=self.rbnJntNum,
                root=self.clavicle,
                upr=self.upr,
                lwr=self.lwr,
                palm=self.palm,
                kneeFix=0,
            )
            self.dualBones = 0

        if self.dualBones:
            self.build_dual_bones()

        if self.scapularBone:
            self.build_armScapular()

        self.build_post()

    def build_fk(self):
        """Build the FK controls and joints for the arm rig."""
        logging.info(self.rigID)

        self.jnts_fk = common.dupSk(
            self.jnts, "_fk", p=self.FK_GRP, r=self.rigSize * 2, color=Color.BLUE
        )
        self.ctls_fk = [self.clavicle_fkc, self.upr_fkc, self.lwr_fkc, self.palm_fkc]

        self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)
        self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        """Build the IK controls for the arm rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()

        # Align IK controls to palm
        self.ikc.alignTo(self.palm)
        self.palm_ikc.alignTo(self.palm, p=self.IK_GRP)

        # Align PVC to guide
        pvc_guide = DagNode(f"{rID}_pvc_guide")
        self.pvc.alignTo(pvc_guide)

        # Create IK joints
        self.jnts_ik = common.dupSk(
            self.jnts, "_ik", p=self.IK_GRP, r=rSz * 3, color=Color.D_RED
        )

        # Create IK handle
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
            RIG_DATA=self.RIG_DATA,
        )
        self.ikH1 = ikH1

        # IK constraint group
        self.ikCstG = GrpNode("ikCstG", pf=rID, align=self.palm)
        if xDr == 1:
            self.ikCstG.a.rx.set2(180, add=1)
        ikH1 | self.ikCstG

        # Constrain IK group to IK control
        self.ikc.cstSca(self.ikCstG, mo=1)

        # Pin FK control
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
            self.ikc, self.pin_fkc, self.ikCstG, w=fkPin, cstType="par", mo=1
        )

        # Parent controls and lines
        (self.ikc, self.pvc, self.ikCstG) | self.IK_GRP
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

        ikH1.stretchyIk(soft=1)
        self.ikhs = [ikH1]
        self.clavicle_fkc.cstPar(self.jnts_ik[0], mo=1)

        # IK controls list
        self.ctls_ik = [self.ikc, self.pvc, self.ikc, self.palm_ikc, self.pin_fkc]

        # palm_ikc setup
        palm_ik = self.jnts_ik[3]
        palm_ikc_ofs = self.palm_ikc.addOffsetGrp()
        self.ikc.cstPoi(palm_ikc_ofs)

        localRot = self.ikc.a.add("localRot", min=0, max=1, dv=0)
        common.cstMulti(
            self.ikc, palm_ik.offset, palm_ikc_ofs, w=localRot, cstType="parR"
        )

        common.cstMulti(self.palm_ikc, self.pin_fkc, palm_ik, w=fkPin, cstType="ori")

    def blend_fk_ik(self):
        """Blend FK and IK joints for the arm rig."""
        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()

        self.setting.alignTo(
            self.clavicle, p=self.CTL_DATA, ofs=(xDr * rSz * 15, 0, xDr * rSz * -15)
        )
        self.clavicle.cstPar(self.setting, mo=1)

        # Extract blend joints
        self.jnts_bf = common.dupSk(
            self.jnts, "_bf", p=self.BF_GRP, r=rSz * 4, color=Color.SKY
        )

        palmIn_guide = DagNode(f"{rID}_palmIn_guide")
        palmOut_guide = DagNode(f"{rID}_palmOut_guide")
        ball_guide = DagNode(f"{rID}_ball_guide")

        self.palmIn_loc = LocNode("palmIn", pf=rID, align=palmIn_guide, size=rSz)
        self.palmOut_loc = LocNode("palmOut", pf=rID, align=palmOut_guide, size=rSz)
        self.ballRoll_loc = LocNode("ballRoll", pf=rID, align=ball_guide, size=rSz)

        self.ballRoll_loc | self.palmOut_loc | self.palmIn_loc | self.jnts_bf[-1]

        self.palm_rolling(
            self.palm_ikc,
            self.palm_fkc,
            self.pin_fkc,
            self.ballRoll_loc,
            self.palmIn_loc,
            self.palmOut_loc,
        )

        # Add blend attribute
        self.setting.a.addSep()
        fkToIk = self.setting.a.add("fkToIk", min=0, max=1, dv=1)
        total = len(self.jnts) - 1

        # Blend FK/IK to BF joints and drive output joints
        for i in range(total):
            fkj = self.jnts_fk[i]
            ikj = self.jnts_ik[i]
            bfj = self.jnts_bf[i]
            jnt = self.jnts[i]
            if i > 0:
                common.cstMulti(fkj, ikj, bfj, w=fkToIk)
                # ut.blendN_(fkj.a.t, ikj.a.t, w=fkToIk) >> bfj.a.t
                # ut.blendN_(fkj.a.r, ikj.a.r, w=fkToIk) >> bfj.a.r

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

            ctl.a.add("fkToIk", proxy=fkToIk, k=0)

        # Create matcher group for snapping
        GrpNode("matcher", pf=self.ikc, align=self.ikc, p=self.palm_fkc)

    def build_armScapular(self):
        """Build the scapular setup for the arm rig."""
        rID, rSz, xDr = self.getMyVar()

        # Guides for clavicle end and scapular
        clavEnd_guide = DagNode(f"{rID}_clavEnd_guide")
        scapular_guide = DagNode(f"{rID}_scapular_guide")

        # Create scapular joint and parent to clavicle
        scapularJ = JntNode(
            "scapularJ", pf=rID, align=scapular_guide, r=rSz * 10, color=4
        )
        scapularJ.freezeXf()
        scapularJ | self.clavicle

        # Locator for aiming
        scapuLoc = LocNode(
            "scapuLoc", pf=rID, snap=clavEnd_guide, p=scapularJ, size=rSz * 10
        )

        # Generate and aim clavicle joints
        clavJnts = self.gen_sk_fr_names(["clavicle", "upr"], scale=3)
        scapuLoc.cstAim(clavJnts[0], aim=(xDr, 0, 0), u=(0, xDr, 0), keep=0)
        clavJnts[0].freezeXf()

        # IK handle for clavicle
        clav_ikh = IkNode(
            "clav",
            solver=Solver.RP,
            pvc=scapularJ,
            pf=rID,
            sj=clavJnts[0],
            ee=clavJnts[1],
            vis=0,
            p=self.RIG_DATA,
        )
        scapuLoc.cstPoi(clav_ikh)

        # Set up bind joints and constraints
        self.clavBone = clavJnts[0]
        self.clavBone | self.SKL_DATA
        self.clavicle.cstPoi(self.clavBone)

        self.updateBindJntList(remove=[self.clavicle], extend=[self.clavBone])

    def build_dual_bones(self):
        """Build dual bones for the lower arm."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()

        # Generate radius and ulna joint chains
        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], scale=2)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], scale=2)

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

        # Update bind joints
        self.updateBindJntList(remove=[self.lwr], extend=[radius_JC[0], ulna_JC[0]])

    def palm_rolling(self, tgt, fkc, fkPin, locRoll, locIn, locOut):
        """Setup palm rolling for the arm rig controls."""
        palmRoll = tgt.a.add("palmRoll")
        palmRoll * -1 >> locRoll.a.rz
        fkc.a.add("palmRoll", proxy=palmRoll)
        fkPin.a.add("palmRoll", proxy=palmRoll)

        palmBank = tgt.a.add("palmBank")
        ut.min_(palmBank, 0) * -1 >> locIn.a.rx
        ut.max_(0, palmBank) * -1 >> locOut.a.rx
        fkc.a.add("palmBank", proxy=palmBank)
        fkPin.a.add("palmBank", proxy=palmBank)

    def setup_vis(self):
        """Setup visibility toggles for the arm rig controls."""
        self.ctl_vis_toggle(
            self.setting.a["fkToIk"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.ctls_fk[1:],
        )
        self.ctl_vis_toggle(
            self.pvc.a["fkPin"],
            onList=[self.pin_fkc],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("pvc", attrType="bool", dv=1, k=0),
            onList=[self.pvc.offset, self.pvc_line.offset],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("setupJnts", attrType="bool", dv=0, k=0),
            onList=self.jnts_fk + self.jnts_ik + self.jnts_bf,
        )
        if self.rbnBones:
            self.ctl_vis_toggle(
                self.setting.a.add("bendyCtls", attrType="bool", dv=0, k=0),
                onList=self.all_bend,
            )

        self.ikc.a.v >> self.palm_ikc.a.v
        mc.hide(self.ikhs)

    def setup_channel(self):
        """Setup channel attributes for the arm rig controls."""
        self.setting.a.showAttr()
        self.palm_ikc.a.showAttr(r=1)

        for ctl in self.ctls_fk + [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

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
            attrType="string",
            txt="master, COG, uprBody, lwrBody, head",
        )
        self.rigNode.a.add(
            "spaceName2",
            attrType="string",
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
                "anchorM1": self.jnts_bf[WRIST_ID],
                "anchorF1": self.clavicle_fkc.offset,
            }
        )

    def setup_scale(self):
        """Setup scale for the arm rig module."""
        self.masterC.a.globalScale >> self.SKL_DATA.a.scale

    def setup_bindJnt(self):
        """Setup bind joints for the arm rig module."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_proxy_radiusScale(self.jnts_bind, 2)

        h = self.rigSize * 10
        if self.rbnBones:
            h /= self.rbnJntNum * 0.5
        self.add_proxy_height(self.jnts_bind, h)

    def setup_ctlSet(self):
        """Setup control sets for the arm rig module."""
        ctlSet = self.ctls_fk + self.ctls_ik + [self.setting, self.pin_fkc]
        if self.rbnBones:
            ctlSet.extend(self.all_bend)
        self.add_ctl_set(ctlSet)

    def build_post(self):
        """Post setup for the arm rig."""
        logging.info(self.rigID)

        common.add_mirror_attr([self.pvc])

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
