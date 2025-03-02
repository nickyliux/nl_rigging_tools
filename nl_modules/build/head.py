import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils.color import Color
from nl_modules.build.rig_module import RigModule

PRX = 25
CY = Color.YELLOW
CR = Color.RED


class Head(RigModule):

    def __init__(self, rigNode):
        super().__init__(rigNode)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)
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

    def genGuideSk(self):
        self.genSk_module(["st", "ed"])
        rID = self.rigID
        jaw_list = self.genSkFrNames(["jaw", "jawEnd"], pf=rID)
        jaw_list[0] | self.rootJ
        lf_eye = self.genSkFrNames("lf_eye", pf=rID)[0]
        rt_eye = self.genSkFrNames("rt_eye", pf=rID)[0]
        (lf_eye, rt_eye) | self.rootJ

    def build(self):
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.head, self.headEnd, self.jaw, self.jawEnd, self.lf_eye, self.rt_eye = (
            self.joints
        )
        self.createCtl()
        self.fkCtl = [self.head_fkc, self.jaw_fkc]
        self.build_fk()
        self.post_setup()

    def createCtl(self):
        rID = self.rigID
        rSz = self.rigSize
        self.head_fkc = CurveNode(
            "head", pf=rID, sf="_fkc", shape="circleU", scale=rSz * 5, color=CY
        )
        self.jaw_fkc = CurveNode("jaw", pf=rID, sf="_fkc", up="z", scale=rSz, color=CR)

        self.rigNode.setMsg(
            {
                "head_fkc": self.head_fkc,
                "jaw_fkc": self.jaw_fkc,
            }
        )

    def build_fk(self):
        logging.info(self.rigID)
        (self.head_fkc, self.jaw_fkc) | self.CTL_DATA

        self.head_fkc.alignTo(self.head)
        self.head_fkc.addOffsetGrp()
        self.head_fkc.cstPar(self.head, mo=1)
        self.head_fkc.cv_moveTo(self.headEnd.o.pos)
        self.jaw_fkc.alignTo(self.jaw)
        self.jaw_fkc.addOffsetGrp()
        self.jaw_fkc.cstPar(self.jaw, mo=1)
        self.jaw_fkc.offset | self.head_fkc
        self.jaw_fkc.cv_moveTo(self.jawEnd.o.pos)
        self.isolateAlign(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC], dv=1)

    def proxy_setup(self):
        for j in [self.head, self.jaw, self.lf_eye, self.rt_eye]:
            JointNode(j).addProxyMesh(
                size=self.rigSize * PRX,
                aimDir=(0, 1, 0),
                skipEnd=1,
                p=self.PRX_GRP,
            )

    def vis_setup(self):
        pass
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.rootJ.a.v
        # visGrp[1] >> self.PRX_GRP.a.v

    def space_setup(self):
        self.rigNode.setMsg({"space_head": self.head_fkc})

    def post_setup(self):
        logging.info(self.rigID)
        self.addBindJntSet(self.joints)
        self.addCtlSet(self.fkCtl, pf=self.rigID)
        self.space_setup()
        self.anchor_setup_module({"anchorF1": self.head_fkc.offset})
        self.proxy_setup()
        self.vis_setup()
        self.post_module()


if __name__ == "__main__":
    for n in mc.ls("*RGN", type="script"):
        Head(DagNode(n)).build()
