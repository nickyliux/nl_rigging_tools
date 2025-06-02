import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils.color import Color


class Head(RigModule):

    def __init__(self, rigNode):
        super().__init__(rigNode)

        rID, rSz, xDr = self.getMyVar()
        self.PRX_GRP = GrpNode("PRX", pf=rID, p=self.PRX)
        self.joints = []
        self.head = None
        self.headEnd = None
        self.jaw = None
        self.jawEnd = None
        self.lf_eye = None
        self.rt_eye = None
        self.head_fkc = None
        self.jaw_fkc = None
        self.fkCtl = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["st", "ed"])
        jaw_list = self.gen_sk_fr_names(["jaw", "jawEnd"], scale=2)
        jaw_list[0] | self.rootJ
        lf_eye = self.gen_sk_fr_names("lf_eye")[0]
        rt_eye = self.gen_sk_fr_names("rt_eye")[0]
        (lf_eye, rt_eye) | self.rootJ

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()
        self.head_fkc = CrvNode(
            "head", pf=rID, sf="_fkc", shape="squR", scale=rSz, moveY=rSz * 8
        )
        self.jaw_fkc = CrvNode("jaw", pf=rID, sf="_fkc", up="x", scale=rSz / 2)
        self.rigNode.setMsg(
            {
                "head_fkc": self.head_fkc,
                "jaw_fkc": self.jaw_fkc,
            }
        )

    def build(self):
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.head, self.headEnd, self.jaw, self.jawEnd, self.lf_eye, self.rt_eye = (
            self.joints
        )
        self.bindJnts = [self.head, self.jaw]
        self.build_ctl()
        self.fkCtl = [self.head_fkc, self.jaw_fkc]
        self.build_fk()
        self.post_setup()

    def build_fk(self):
        # rID, rSz, xDr = self.getMyVar()
        (self.head_fkc, self.jaw_fkc) | self.CTL_DATA
        self.head_fkc.alignTo(self.head)
        self.head_fkc.addOffsetGrp()
        self.head_fkc.cv_moveTo(self.headEnd.o.pos)
        self.head_fkc.cstPar(self.head, mo=1)

        self.jaw_fkc.snapTo(self.jaw, p=self.head_fkc)
        self.jaw_fkc.addOffsetGrp()
        self.jaw_fkc.cstPar(self.jaw, mo=1)
        self.jaw_fkc.cv_moveTo(self.jawEnd.o.pos)

        # scalable
        self.head_fkc.a.s >> self.SKL_DATA.a.s
        self.head_fkc.a.s >> self.PRX_GRP.a.s

        # self.isolate_align(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC])
        # self.isolate_align(self.head_fkc, spaces=[self.head_fkc.parent, self.masterC])

    def setup_vis(self):
        pass

    def setup_proxy(self):
        for j in self.bindJnts:
            JntNode(j).addProxyMesh(aimDir=(0, 1, 0), p=self.PRX_GRP)

    def setup_rotate_order(self):
        pass

    def setup_channel(self):
        self.head_fkc.a.showAttr(r=1, s=1)
        self.jaw_fkc.a.showAttr(t=1, r=1)

    def setup_space(self):
        self.head_fkc.a.add("spaceType", dv=1, k=0, cb=0)
        self.rigNode.setMsg({"spaceHolder1": self.head_fkc})
        spaces = "neck, COG, master"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_head": self.head_fkc})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(self.fkCtl)
        self.setup_space()
        self.setup_anchor_module({"anchorF1": self.head_fkc.offset})
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
