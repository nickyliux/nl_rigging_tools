import logging

import maya.cmds as mc

from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common, proxy
from nl_modules.utils import utils_node as ut
from nl_modules.utils.common import Vec


class ArmBp(RigModule):
    """Biped arm rig module."""

    def __init__(self, mg):
        # mg = DagNode(mg) if isinstance(mg, str) else mg
        super().__init__(mg)

        guide_attrs = ["ribbon", "scapulaBone", "dualBone", "rollJntNum", "rbnJntNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.masterGuide.a[attr].get())

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
        self.radiusJnt = None
        self.ulnaJnt = None
        self.scapJnt = None
        self.clavJnts = None
        self.ctls_ik = []
        self.ctls_fk = []
        self.ikhs = []
        self.ctls_up = []
        self.rollJnts = []
        self.aimJnts = []

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
        root_list = self.gen_sk_fr_names(self.jnt_names)  # , scale=0.5)

        for jnt in root_list:
            DagNode(jnt).a.ro.set(5)
        DagNode(root_list[0]).a.ro.set(2)

        self.rootJ = root_list[0]
        self.rootJ | self.JNT_DATA
        self.masterGuide.setMsg({"rootJ": self.rootJ})

        return self.rootJ

    def build_ctl(self):
        """Build control nodes for the arm rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()
        scale = xDr * rSz

        ctl_defs = [
            ("setting", "screw_nut", "z", rSz, 0),
            ("clavicle_fkc", "cube", None, scale / 2, 1),
            ("upr_fkc", "hexagon_3d", "x", scale, 0),
            ("lwr_fkc", "hexagon_3d", "x", scale, 0),
            ("palm_fkc", "hexagon_3d", "x", scale, 0),
            ("ikc", "trapezoid_3d", None, scale, 0),
            ("pvc", "sphere", None, rSz * 2, 0),
            ("palm_ikc", "hexagon_3d", "x", scale, 0),
        ]

        if self.scapulaBone:
            ctl_defs.append(["scap_fkc", "rotate2_3d", "z", scale * 0.7, 0])

        for name, shape, up, scale, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, scale, top)

        self.pvc.cv_rotate(-90, 0, 0)
        self.setting.cv_move(0, scale * 20, 0)
        self.ikc.cv_rotate(0, 90, 0)

    def build(self):
        """Build the arm rig module."""
        self.build_pre_module()

        self.jnts = self.rootJ.allChildrenJt2
        self.clavicle, self.upr, self.lwr, self.palm, self.ball = self.jnts
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        self.update_list(self.jnts_bind, add=[self.clavicle, self.palm])

        if self.ribbon:
            self.ribbon_up, self.ribbon_lw = self.build_bendy_ribbon(
                jntNum=self.rbnJntNum,
                root=self.clavicle,
                upr=self.upr,
                lwr=self.lwr,
                palm=self.palm,
                kneeFix=0,
                up1="ty",
                up2="tz",
            )
            self.ikc.a.add("autoVol", proxy=self.setting.a.autoVol)
            self.ikc.a.add("volType", proxy=self.setting.a.volType)
        else:
            self.update_list(self.jnts_bind, add=[self.upr, self.lwr])

        if self.dualBone:
            self.build_dual_bones()
            self.update_list(self.jnts_bind, rm=[self.lwr])

        if self.scapulaBone:
            self.build_armScapula()

        self.aimJnts, self.ctls_up = self.build_aimHelper([self.palm], addCtl=1)
        self.aimJnts.extend(self.build_aimHelper([self.lwr]))

        n = self.rollJntNum
        self.rollJnts.append(self.build_uprRollJ(self.upr, self.lwr, num=n, sf="_ro1"))
        self.rollJnts.append(self.build_uprRollJ(self.lwr, self.palm, num=n, sf="_ro2"))

        # self.build_nlAutoAim(
        #     self.clavicle, self.upr, fkc=self.clavicle_fkc, ikc=self.ikc
        # )
        self.build_post()

    def build_fk(self):
        """Build the FK controls and joints for the arm rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        self.jnts_fk = common.dupSk(self.jnts, "_fk", p=self.FK_GRP, r=rSz / 2)
        self.ctls_fk = [self.clavicle_fkc, self.upr_fkc, self.lwr_fkc, self.palm_fkc]

        self.build_fk_with_ctl2(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)
        self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        """Build the IK controls for the arm rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        self.ikc.alignTo(self.palm, p=self.IK_GRP)
        self.palm_ikc.alignTo(self.palm, p=self.IK_GRP)
        pvc_guide = DagNode(f"{rID}_pvc_guide")
        self.pvc.alignTo(pvc_guide, p=self.IK_GRP)

        self.jnts_ik = common.dupSk(self.jnts, "_ik", p=self.IK_GRP, r=rSz)
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
        self.ikc_gimbal = CrvNode(self.ikc).addGimbal()

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
            attrHolder=self.pvc,
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
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

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
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()
        scale = xDr * rSz

        self.setting.alignTo(self.upr, p=self.CTL_DATA)
        self.upr.cstPar(self.setting, mo=1)

        self.jnts_bf = common.dupSk(self.jnts, "_bf", p=self.BF_GRP, r=rSz * 3)

        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=0)

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
        total = len(self.jnts) - 1

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
                # bfj.a.r >> jnt.a.r
            elif i < total - 1:
                bfj.a.t >> jnt.a.t
                bfj.a.r >> jnt.a.r
            else:
                self.ballRoll_loc.cstPar(jnt, mo=1)

        # for ctl in self.ctls_fk + self.ctls_ik:
        #     ctl.a.add("fkIk", proxy=fkIk)

        GrpNode("matcher", pf=self.ikc, align=self.ikc, p=self.palm_fkc)

    def build_armScapula(self):
        """Build the scapula setup for the arm rig."""
        rID, rSz, xDr = self.get_short_form()
        self.CLV_GRP = GrpNode("CLAVICLE", pf=self.rigID, p=self.CTL_DATA)

        clavStart_guide = DagNode(f"{rID}_clavStart_guide")
        clavEnd_guide = DagNode(f"{rID}_clavEnd_guide")
        scapula_guide = DagNode(f"{rID}_scapula_guide")

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
        self.scapJnt = scapJnts[0]
        self.scapJnt.a.add("scapulaTag", dv=1, lock=1, k=0)

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
        self.clavJnt = clavJnts[0]

        IkNode(
            "clav",
            solver=Solver.RP,
            pf=rID,
            sj=clavJnts[0],
            ee=clavJnts[1],
            vis=0,
            p=self.scap_fkc,
        )
        self.clavicle_fkc.offset.cstPar(clavJnts[0], mo=1)

        self.update_list(self.jnts_bind, add=[clavJnts[0], scapJnts[0]])

    def build_dual_bones(self):
        """Build dual bones for the lower arm."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], r=0.5)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], r=0.5)
        (radius_JC[0], ulna_JC[0]) | self.lwr

        radius_loc = LocNode(
            "radius_loc", pf=rID, align=radius_JC[1], p=self.palm, size=rSz
        )
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm, size=rSz)

        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])

        uType = "objectrotation"
        aim = (xDr, 0, 0)
        z = (0, 0, 1)
        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.palm, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        self.update_list(self.jnts_bind, add=[radius_JC[0], ulna_JC[0]])

        self.radiusJnt = radius_JC[0]
        self.ulnaJnt = ulna_JC[0]

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
        self.ctl_vis_toggle_AS(
            self.setting.a["fkIk"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.ctls_fk[1:],
        )
        self.ctl_vis_toggle(
            self.pvc.a["fkPin"],
            onList=[self.pin_fkc],
        )
        self.ctl_vis_toggle(
            self.ikc.a.add("showPvc", type="bool", dv=1, k=0),
            onList=[self.pvc.offset, self.pvc_line.offset],
        )

        setupTgt = [self.jnts_fk[0], self.jnts_ik[0], self.jnts_bf[0]]
        if self.ribbon:
            setupTgt.extend([self.ribbon_up.RBN_GRP, self.ribbon_lw.RBN_GRP])
            # setupTgt.extend(
            #     [
            #         self.ribbon_up.SRF_GRP,
            #         self.ribbon_up.AIM_GRP,
            #         self.ribbon_lw.SRF_GRP,
            #         self.ribbon_lw.AIM_GRP,
            #     ]
            # )

        self.ctl_vis_toggle(
            self.setting.a.add("showRollJnts", type="bool", k=0),
            onList=self.rollJnts + self.aimJnts,
        )
        if self.ctls_up:
            self.ctl_vis_toggle(
                self.setting.a.add("showUpCtl", type="bool", k=0),
                onList=self.ctls_up,
            )

        if self.ribbon:
            self.ctl_vis_toggle(
                self.setting.a.add("showBendy", type="bool", k=0),  # , dv=1),
                onList=self.all_bendy,
            )

        self.ctl_vis_toggle(
            self.setting.a.add("debug", type="bool", k=0), onList=setupTgt
        )
        self.setting.a.fkIk * self.ikc.a.localRot >> self.palm_ikc.a.v
        mc.hide(self.ikhs)

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

        if self.ribbon:
            self.all_bendy[0].a.showAttr("sx", t=1, r=1)
            self.all_bendy[1].a.showAttr(t=1)
            self.all_bendy[2].a.showAttr("sx", t=1, r=1)

    def setup_rotate_order(self):
        """Setup rotate order for the arm rig controls."""
        for ctl in self.ctls_fk + self.ctls_ik:
            ctl.a.ro.set(5)
        self.ctls_fk[0].a.ro.set(2)

    def setup_space(self):
        """Setup space switching for the arm rig controls."""
        self.masterGuide.a.add(
            "spaceName1",
            type="string",
            txt="master, COG, uprBody, lwrBody, head",
        )
        self.masterGuide.a.add(
            "spaceName2",
            type="string",
            txt="arm, master, clavicle, COG, uprBody, lwrBody",
        )
        self.ikH1.build_pvfkPinSetup(ikTarget=self.ikc)

        PALM_ID = 3
        self.masterGuide.setMsg(
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
        proxy.add_proxyRadiusScale_attr(self.jnts_bind, 5)
        proxy.add_proxyRadiusScale_attr([self.palm], 2.5)
        if self.scapulaBone:
            proxy.add_proxyRadiusScale_attr([self.clavJnt, self.scapJnt], 2)

        if self.dualBone:
            proxy.add_proxyRadiusScale_attr([self.radiusJnt, self.ulnaJnt], 3)

        proxy.add_proxyHeight_attr([self.palm], self.rigSize * 4)

    def setup_ctlSet(self):
        """Setup control sets for the arm rig module."""
        ctlSet = self.ctls_fk + self.ctls_ik + [self.setting, self.pin_fkc]
        if self.ribbon:
            ctlSet.extend(self.all_bendy)
        if self.ctls_up:
            ctlSet.extend(self.ctls_up)
        if self.scapulaBone:
            ctlSet.append(self.scap_fkc)
        self.add_ctl_set(ctlSet)

    def build_post(self):
        """Post setup for the arm rig."""
        logging.info(".")

        common.add_wsMirror_attr([self.pvc])

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
