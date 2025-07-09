import logging
import maya.cmds as mc
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common


class Tail(RigModule):
    """Tail rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        super().__init__(rigNode)

        self.fkBoneNum = self.get_guide_attr("fkBoneNum")
        self.rbnBones = self.get_guide_attr("rbnBones")
        self.rbnJntNum = self.get_guide_attr("rbnJntNum")

        rID, rSz, xDr = self.getMyVar()
        self.LINE_GUIDE = CrvNode(rID + "_line_guide")
        self.RT_GUIDE = CrvNode(rID + "_rt_guide")
        self.FK_GRP = GrpNode("FK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)
        self.IK_GRP = GrpNode("IK", pf=rID, p=self.CTL_DATA, snap=self.RT_GUIDE)

        self.setting = None
        self.fkCtl = []
        self.fkJnt = []
        self.ikCtl = []
        self.ikJnt = []
        self.ofsCtl = []
        self.ofsJnt = []
        self.rbJnt = []
        self.rbSrf1 = None
        self.rbSrf2 = None
        self.REVERSE = 0
        self.bindJnts = []

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

        ctl_defs = [
            ("setting", "cross", "z", rSz, 1, 2),
        ]
        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

        self.setting.cv_move(0, rSz * 50, 0)
        self.setting.a.add("stretchy", min=0, max=1)
        self.setting.a.add("localScale", min=0.01, dv=1)

    def build(self):
        """Build the tail rig."""
        rID, rSz, xDr = self.getMyVar()
        self.build_module()
        self.rbSrf1 = SrfNode.buildRbSrf(
            pf=rID,
            crv=self.LINE_GUIDE,
            normal=1,
            spans=self.fkBoneNum,
            p=self.RIG_DATA,
            snap=self.RT_GUIDE,
        )

        self.rbSrf2 = self.rbSrf1.duplicate()
        self.rigNode.setMsg({"rbSrf": self.rbSrf2})

        self.build_ctl()
        self.build_ik()
        self.build_fk()
        crvLenRatio, self.rbJnts = self.build_motionPath_ribbon(
            rbSrf=self.rbSrf2,
            jntNum=self.rbnJntNum,
            scaleAttr=self.setting.a.localScale * self.masterC.a.globalScale,
            stretchyAttr=self.setting.a.stretchy,
        )
        self.bindJnts = self.rbJnts

        self.setting.a["localScale"] >> self.IK_GRP.a.s
        self.setting.a["localScale"] >> self.FK_GRP.a.s
        self.post_setup()

    def build_ik(self):
        """Build the IK controls for the tail rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        self.ikJnt = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=5,
            name="ikj",
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz,
        )
        SrfNode(self.rbSrf1).weightTo(self.ikJnt, mi=4, dr=6, chain=0)

        for i in range(0, 5):
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

        self.setting.snapTo(self.ikCtl[0], p=self.FK_GRP)
        self.ikCtl[0].cstPar(self.setting, mo=1)

    def build_fk(self):
        """Build the FK controls for the tail rig."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        #
        #   build fkJ
        #
        self.fkJnt = JntNode.createJntFrCrv(
            self.LINE_GUIDE,
            num=self.fkBoneNum + 1,
            pf=rID,
            aimV=(0, 0, -1),
            upV=(0, 1, 0),
            wuV=(0, 1, 0),
            size=rSz,
            p=self.FK_GRP,
        )
        #
        #   build pins for fkCtl
        #
        coord = []
        for i in range(self.fkBoneNum + 1):
            coord.append((0.5, i / self.fkBoneNum))

        pin, pinXf = common.nlRivet(geo=self.rbSrf1, coordList=coord, p=self.RIG_DATA)
        #
        #   build fkCtls
        #
        for i in range(self.fkBoneNum + 1):
            ctl = CrvNode(
                f"{i}_fkc", pf=rID, shape="squR", up="z", scale=rSz, align=self.fkJnt[i]
            )
            self.rigNode.setMsg({f"fkc{i}": ctl})
            self.fkCtl.append(ctl)
        #
        #   build group chain
        #
        chainGrps = []
        lastGrp = self.FK_GRP
        for i in range(self.fkBoneNum + 1):
            grp = GrpNode(f"{i}_chainGrp", pf=rID, align=self.fkCtl[i], p=lastGrp)
            pinXf[i].cstPar(grp, mo=1)
            chainGrps.append(grp)
            lastGrp = grp

        self.build_fk_with_ctl3(self.fkJnt, self.fkCtl, p=self.FK_GRP)
        #
        #   cnnnect chain grps to fkCtl offset
        #
        # for ctl in self.fkCtl:
        #     ctl.addOffsetGrp()

        for i in range(self.fkBoneNum + 1):
            chainGrps[i].a.t >> self.fkCtl[i].offset.a.t
            chainGrps[i].a.r >> self.fkCtl[i].offset.a.r
        #
        #   build offset ctl layer
        #
        for i in range(self.fkBoneNum + 1):
            ctl = CrvNode(
                f"{i}_ofs_ctl",
                pf=rID,
                shape="sphere2",
                scale=rSz / 2,
                align=self.fkCtl[i],
                p=self.fkCtl[i],
                moveY=rSz * 25,
            )
            jnt = JntNode(f"{i}_ofs_jnt", pf=rID, align=ctl, p=ctl)

            self.ofsCtl.append(ctl)
            self.ofsJnt.append(jnt)

        SrfNode(self.rbSrf2).weightTo(self.ofsJnt, chain=0, mi=2, dr=6)
        # self.fkCtl[-1].a.add("stretchy", proxy=self.setting.a.stretchy)
        # self.isolate_align(self.ikCtl[0], [self.ikCtl[0].offset, self.masterC])

        mc.delete(self.rootJ)
        self.rootJ = self.fkJnt[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def setup_vis(self):
        """Setup visibility toggles for the tail rig controls."""
        self.ctl_vis_toggle(
            self.setting.a.add("IKCtl", k=0, attrType="bool", dv=1),
            onList=[self.ikCtl[0]],
        )
        self.ctl_vis_toggle(
            self.setting.a.add("FKCtl", k=0, attrType="bool", dv=1),
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

    def post_setup(self):
        """Post setup for the tail rig."""
        logging.info(self.rigID)

        self.add_bind_jnt_set(self.bindJnts)

        self.add_ctl_set(self.ikCtl + self.fkCtl + self.ofsCtl + [self.setting])
        self.setup_anchor_module({"anchorF1": self.ikCtl[0].offset.offset})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
