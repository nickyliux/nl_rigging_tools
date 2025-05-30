import maya.cmds as mc
import logging

from nl_modules.build import rig_module

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode

from nl_modules.utils import common
from nl_modules.utils.color import Color


class SpineQdCrv(rig_module.RigModule):
    def __init__(self, rigNode):

        super().__init__(rigNode)

        self.mg_jntNum = self.master_guide.a.jntNum.get()

        self.setting = None

        self.cog_ctl = None
        self.st_ctl = None
        self.md_ctl = None
        self.ed_ctl = None
        self.ctls = None

        self.joints = []

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["st", "md", "ed"])

    def build(self):

        self.build_module()

        s = self.rigSize
        Y = Color.YELLOW
        DY = Color.D_YELLOW

        self.setting = CrvNode("setting", pf=self.rigID, shape="sphere", scale=s * 0.3)
        self.setting.a.message >> self.rigNode.a.setting

        self.cog_ctl = CrvNode(
            "cog_ctl", pf=self.rigID, up="x", shape="cube", scale=s, color=Y
        )
        self.cog_ctl.cv_move(0, self.rigSize * 6, 0)
        self.cog_ctl.a.message >> self.rigNode.a.cog_ctl

        self.st_ctl = CrvNode(
            "st_ctl", pf=self.rigID, up="x", shape="cube", scale=s * 4, color=DY
        )
        self.st_ctl.a.message >> self.rigNode.a.st_ctl

        self.md_ctl = CrvNode("_md_ctl", pf=self.rigID, up="z", scale=s * 3, color=DY)
        self.md_ctl.a.message >> self.rigNode.a.md_ctl

        self.ed_ctl = CrvNode(
            "ed_ctl", pf=self.rigID, up="x", shape="cube", scale=s * 4, color=DY
        )
        self.ed_ctl.a.message >> self.rigNode.a.ed_ctl

        self.ctls = [self.cog_ctl, self.st_ctl, self.md_ctl, self.ed_ctl]

        self.tigerSpine()
        self.post_setup()

    def build_ctl_jnt(
        self,
        st_ctl,
        md_ctl,
        ed_ctl,
    ):
        s = self.rigSize * 2

        st_skinJ = JntNode(
            "st_skinJ", pf=self.rigID, r=s, color=13, align=st_ctl, p=st_ctl
        )
        md_skinJ = JntNode(
            "md_skinJ", pf=self.rigID, r=s, color=13, align=md_ctl, p=md_ctl
        )
        ed_skinJ = JntNode(
            "ed_skinJ", pf=self.rigID, r=s, color=13, align=ed_ctl, p=ed_ctl
        )

        return [
            st_skinJ,
            md_skinJ,
            ed_skinJ,
        ]

    def tigerSpine(self):

        logging.info(self.rigID)

        crv = DagNode(self.rigID + "_line_guide")
        if crv is None:
            logging.info("Missing line guide")
            return

        # BUILD JOINT CHAIN
        self.joints = JntNode.createJntFrCrv(
            crv, num=self.mg_jntNum, pf=self.rigID, p=self.SKL_DATA
        )

        mc.delete(self.rootJ)
        self.rootJ = self.joints[0]
        self.rigNode.setMsg({"rootJ": self.rootJ})

        # BUILD SPLINE IK
        spIkH = IkNode(
            "sp",
            pf=self.rigID,
            sj=self.joints[0],
            ee=self.joints[-1],
            sol=2,
            numSpans=4,
            setting=self.setting,
            scaleFix=self.masterC.a["globalScale"],
        )

        spCrv = spIkH.getCrv()
        (spIkH, spCrv) | self.RIG_DATA

        # PARENTING
        st_ctl = self.st_ctl
        md_ctl = self.md_ctl
        ed_ctl = self.ed_ctl
        cog_ctl = self.cog_ctl

        st_ctl.snapTo(self.joints[0])
        md_ctl.snapTo(self.joints[int(len(self.joints) / 2)])
        cog_ctl.snapTo(md_ctl)
        ed_ctl.snapTo(self.joints[-1])
        self.setting.snapTo(md_ctl, ofs=(0, self.rigSize * 8, 0))

        (self.setting, st_ctl, md_ctl, ed_ctl) | cog_ctl | self.CTL_DATA

        # SKINNING CRV
        ctlJnts = self.build_ctl_jnt(st_ctl, md_ctl, ed_ctl)
        spCrv.weightTo(ctlJnts, mi=3, dr=5)
        spCrv.a.inheritsTransform.set(0)
        mc.hide(ctlJnts)

        # TWIST
        st_ctlG = st_ctl.addOffsetGrp(below=1)
        ed_ctlG = ed_ctl.addOffsetGrp(below=1)
        spIkH.spline_twist_setup(ed_ctlG, st_ctlG)

        st_ctl.addOffsetGrp()
        ed_ctl.addOffsetGrp()
        cog_ctl.addOffsetGrp()

        # MID TWIST
        st_cstG = GrpNode("st_cstG", pf=self.rigID, snap=md_ctl, p=st_ctl)
        ed_cstG = GrpNode("ed_cstG", pf=self.rigID, snap=md_ctl, p=ed_ctl)
        mid_ofs = md_ctl.addOffsetGrp()
        common.cstMulti(st_cstG, ed_cstG, mid_ofs, cstType="par")
        st_ctl.a.rz @ ed_ctl.a.rz >> mid_ofs.a.rz

        # END CST
        self.ed_ctl.cstOri(self.joints[-1], mo=1)

        self.cog_ctl.cstSca(self.joints[0])
        self.joints[0].childrenJt[0].a.segmentScaleCompensate.set(0)

        spIkH.stretchySp()
        spIkH.hide()

    def setup_anchor(self):
        s = self.rigSize
        B = Color.L_BLUE
        anchorM1 = LocNode(self.rigID + "_anchorM1", size=s, color=B, p=self.masterC)
        anchorM1.a.message >> self.rigNode.a.anchorM1
        anchorM2 = LocNode(self.rigID + "_anchorM2", size=s, color=B, p=self.masterC)
        anchorM2.a.message >> self.rigNode.a.anchorM2
        self.st_ctl.cstPar(anchorM1)
        self.rootJ.allChildrenJt[-1].cstPar(anchorM2)
        anchorM1.hide()
        anchorM2.hide()

    def post_setup(self):

        # PROXY MESH
        for j in self.rootJ.allChildrenJt2:
            JntNode(j).addProxyMesh(skipEnd=1, p=self.PRX)

        # [x.a.lockHide(t=1, r=1) for x in [self.cog_ctl, self.st_ctl, self.ed_ctl]]
        # self.md_ctl.a.lockHide(t=1)
        # self.setting.a.lockHide()

        # RO
        [c.a.ro.set(2) for c in self.ctls]

        # SET
        self.add_bind_jnt_set(self.joints)
        self.add_ctl_set(self.ctls + [self.setting])

        self.setup_anchor()

        self.post_module()
