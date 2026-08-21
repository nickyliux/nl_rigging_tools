import logging

import maya.cmds as mc

from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common, proxy
from nl_modules.utils.color import Color
from nl_modules.utils.common import Vec


class IkFkSpline(RigModule):
    """rig module."""

    def __init__(self, mg):
        super().__init__(mg)
        # Guide attributes
        guide_attrs = ["fkJntNum", "rbnJntNum", "ikJntNum"]
        for attr in guide_attrs:
            setattr(self, attr, self.masterGuide.a[attr].get())

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
        self.rbCrvSk = None

        # --- Control and joint lists ---
        self.ctls_fk = []
        self.ctls_ik = []
        self.ctls_ofs = []

        self.jnts_fk = []
        self.jnts_ik = []
        self.jnts_ofs = []
        self.jnts_bind = []

    def gen_sk(self):
        """Generate the skeleton for the rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["rt", "md", "tp"])
        self.rootJ = root_list[0]
        self.masterGuide.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build_ctl(self):
        """Build control nodes for the rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        ctl_defs = [
            ("setting", "screw_nut", "z", rSz * 2, 1),
            ("main", "arrow", "z", rSz * 3, 1),
        ]
        for name, shape, up, sca, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, sca, top)

        self.setting.a.add("stretchy", min=0, max=1, dv=1)
        self.setting.a.add("localScale", min=0.01, dv=1)
        self.setting.a.addSep()
        self.main.cv_rotate(0, 0, 180)
        # self.setting.cv_move(0, rSz * 30, 0)

    def build(self):
        """Build the rig."""
        self.build_pre_module()
        self.build_ctl()
        self.build_ik()
        self.build_fk()
        self.build_sub_ik()
        self.build_ribbon()
        # build.add_noise_logic(ctl=self.setting, targets=self.jnts_ofs[1:])

        self.build_post()

    def build_ribbon(self):
        """Create the ribbon for the rig."""
        logging.info(".")

        crvLenRatio, self.jnts_rb, crv = common.build_ribbon_rivet(
            rbSrf=self.rbSrf2,
            rivetNum=self.rbnJntNum,
            scaleAttr=self.setting.a.localScale * self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
            pf=self.rigID + "_RB",
            p=self.CTL_DATA,
            JNT_DATA=self.JNT_DATA,
            atMidOrEnd=1,
        )

        # Let fk ctl -> rivet's rotation for both ends
        for i in [0, -1]:
            rv = self.jnts_rb[i].offset
            rv.removeCstNodes()
            self.ctls_fk[i].cstOri(rv, mo=1)

        self.rbCrvSk = crv
        self.masterGuide.setMsg({"rbCrvSk": self.rbCrvSk})
        self.update_list(self.jnts_bind, add=self.jnts_rb)

    def build_ik(self):
        """Build the IK controls for the rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()
        last = self.ikJntNum - 1
        normal = -1 if self.rigID.startswith("tail") else 1

        resetEnd = self.__class__.__name__ == "Tail"

        self.jnts_ik = JntNode.createJntsFrCrv(
            self.LINE_GUIDE,
            num=self.ikJntNum,
            name="ikj",
            pf=rID,
            aimV=(0, 0, normal),
            size=rSz * 3,
            color=Color.D_YELLOW,
            wldUpObj=self.masterGuide,
            resetEnd=resetEnd,
        )
        self.main.alignTo(self.RT_GUIDE)
        self.main | self.IK_GRP
        msg_batch = {}
        for i in range(self.ikJntNum):
            isEnding = i == 0 or i == last
            name = "base_ikc" if i == 0 else ("fore_ikc" if i == last else f"{i}_ikc")
            ctl = CrvNode(
                name,
                pf=rID,
                shape="rotate3_3d" if isEnding else "cube",
                up=None if isEnding else "z",
                scale=Vec((3, 3, 3)) * rSz if isEnding else rSz / 2,
                align=self.jnts_ik[i],
                addOfs=1,
                top=0 if isEnding else 1,
                p=self.main,
            )
            self.jnts_ik[i] | ctl
            self.ctls_ik.append(ctl)
            msg_batch[f"ikc{i}"] = ctl

        self.masterGuide.setMsg(msg_batch)

        if self.ikJntNum >= 4:
            self.ctls_ik[1].offset | self.ctls_ik[0]
            self.ctls_ik[-2].offset | self.ctls_ik[-1]

        self.rbSrf1 = self.create_rbSrf(
            span=last,
            crv=self.LINE_GUIDE,
            snap=self.RT_GUIDE,
            normal=normal,
        )
        self.masterGuide.setMsg({"rbSrf": self.rbSrf1})

        SrfNode(self.rbSrf1).weightTo(self.jnts_ik, mi=4, dr=6)

        self.setting.snapTo(self.ctls_ik[-1], p=self.ctls_ik[-1])
        # self.ctls_ik[0].cstPar(self.setting, mo=1)

        RigModule.isolate_align(
            self.main, spaces=[self.main.addOffsetGrp(), self.masterC], dv=0
        )

    def build_fk(self):
        """Build the FK controls for the rig."""
        logging.info(".")

        rID, rSz, xDr = self.get_short_form()
        self.jnts_fk = JntNode.createJntsFrCrv(
            self.LINE_GUIDE,
            num=self.fkJntNum,
            pf=rID,
            aimV=(0, 0, -1),
            size=rSz * 2,
            color=Color.BLUE,
            p=self.FK_GRP,
            wldUpObj=self.masterGuide,
        )
        for i in range(self.fkJntNum):
            ctl = CrvNode(
                f"{i}_fkc",
                pf=rID,
                up="z",
                shape="hexagon_3d",
                scale=rSz * 2,
                align=self.jnts_fk[i],
            )
            self.masterGuide.setMsg({f"fkc{i}": ctl})
            self.ctls_fk.append(ctl)

        self.build_fk_with_ctl3(self.jnts_fk, self.ctls_fk, p=self.FK_GRP)

        crvLenRatio, pinXf, crv = common.build_ribbon_rivet(
            rbSrf=self.rbSrf1,
            rivetNum=self.fkJntNum,
            atMidOrEnd=1,
            scaleAttr=self.setting.a.localScale * self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
            pf=rID,
            rSz=rSz * 2,
            outputJnt=0,
            p=self.CTL_DATA,
            JNT_DATA=self.JNT_DATA,
        )

        chainGrps = []
        lastGrp = self.FK_GRP
        for i in range(self.fkJntNum):
            grp = GrpNode(f"{i}_chainGrp", pf=rID, align=self.ctls_fk[i], p=lastGrp)
            pinXf[i].cstPar(grp, mo=1)
            chainGrps.append(grp)
            lastGrp = grp

        for i in range(self.fkJntNum):
            chainGrps[i].a.t >> self.ctls_fk[i].offset.a.t
            chainGrps[i].a.r >> self.ctls_fk[i].offset.a.r

    def build_sub_ik(self):
        """Build offset IK controls for the rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        for i in range(self.fkJntNum):
            ctl = CrvNode(
                f"{i}_ofs_ctl",
                pf=rID,
                shape="cube",
                scale=rSz / 3,
                align=self.ctls_fk[i],
                p=self.ctls_fk[i],
                color=Color.L_BLUE,
                top=1,
            )
            jnt = JntNode(f"{i}_ofs_jnt", pf=rID, align=ctl, p=ctl)
            self.ctls_ofs.append(ctl)
            self.jnts_ofs.append(jnt)

        self.rbSrf2 = self.create_rbSrf(
            span=self.fkJntNum - 1,
            crv=self.LINE_GUIDE,
            snap=self.RT_GUIDE,
            normal=-1 if self.rigID.startswith("tail") else 1,
        )

        self.masterGuide.setMsg({"rbSrfSk": self.rbSrf2})
        SrfNode(self.rbSrf2).weightTo(self.jnts_ofs, mi=2, dr=6)

    def setup_vis(self):
        """Setup visibility toggles for the rig controls."""
        self.ctl_vis_toggle(
            self.setting.a.add("showIkCtl", k=0, type="bool", dv=1),
            onList=self.ctls_ik,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("showFkCtl", k=0, type="bool", dv=1),
            onList=self.ctls_fk,
            shape=1,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("showSubIkCtl", k=0, type="bool", dv=0),
            onList=self.ctls_ofs,
        )
        self.ctl_vis_toggle(
            self.setting.a.add("showBaseIkCtl", type="bool", k=0, dv=0),
            onList=[self.ctls_ik[0].shape],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("debug", k=0, type="bool", dv=0),
            onList=[self.rbSrf1, self.rbSrf2, self.rbCrvSk]
            + self.jnts_fk
            + self.jnts_ik
            + self.jnts_ofs,
        )

        # mc.hide(self.rbSrf1, self.rbSrf2, self.rbCrvSk)  # , self.JNT_DATA)
        # mc.hide(self.jnts_fk + self.jnts_ik + self.jnts_ofs)

    def setup_channel(self):
        """Setup channel attributes for the rig controls."""
        for ctl in self.ctls_fk + self.ctls_ik + self.ctls_ofs + [self.main]:
            ctl.a.showAttr(t=1, r=1)
        self.setting.a.showAttr()

        self.ctls_ik[-1].a.add("stretchy", proxy=self.setting.a.stretchy)
        self.ctls_fk[-1].a.add("stretchy", proxy=self.setting.a.stretchy)

    def setup_rotate_order(self):
        """Setup rotate order for the rig controls."""
        for ctl in self.ctls_fk:
            ctl.a.ro.set(3)

    def setup_anchor(self):
        """Setup anchor module for the arm rig controls."""
        self.setup_anchor_module(
            {
                "anchorS1": self.main.offset.offset,
                "anchorP1": self.jnts_rb[-1],
            }
        )

    def setup_scale(self):
        """Setup scale attributes for the rig controls."""
        self.setting.a["localScale"] >> self.IK_GRP.a.s
        self.setting.a["localScale"] >> self.FK_GRP.a.s

    def setup_ctlSet(self):
        """Setup control sets for the rig controls."""
        self.add_ctl_set(
            self.ctls_ik + self.ctls_fk + self.ctls_ofs + [self.setting, self.main],
        )

    def setup_bindJnt(self):
        """Setup bind joints for the rig controls."""
        self.add_bind_jnt_set(self.jnts_bind)
        proxy.add_proxyRadiusScale_attr(self.jnts_bind, 5)

    def setup_space(self):
        """Setup space switching for the rig controls."""
        self.ctls_ik[-1].a.add("spaceType", dv=2, k=0, cb=0)

        self.masterGuide.a.add(
            "spaceName1", type="string", txt="localBase, COG, master"
        )
        # self.masterGuide.a.add("spaceName2", type="string", txt="chest, COG, master")

        self.masterGuide.setMsg(
            {
                "spaceHolder1": self.ctls_ik[-1],
                "space_localBase": self.main,
                "space_master": self.masterC,
            }
        )

    def build_post(self):
        """Post setup for the rig."""
        logging.info(".")

        mc.delete(self.rootJ)
        self.rootJ = self.jnts_fk[0]
        self.masterGuide.setMsg({"rootJ": self.rootJ})

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
