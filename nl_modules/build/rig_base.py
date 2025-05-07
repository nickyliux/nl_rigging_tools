import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils.color import Color


class RigBase:
    """Create grouping structure for given rigNode.
    e.g.
        n = RigBase('lfArm0_RGN')
        n.__dict__
    """

    def __init__(self, rigNode):
        if not mc.objExists("master_ctl"):
            logging.warning("Missing master_ctl")
            return

        self.masterC = CurveNode("master_ctl")
        self.masterC1 = self.masterC.offset
        self.masterC2 = self.masterC1.offset

        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        self.rigNode = rigNode
        self.rigID = rigNode.a.rigID.get()

        self.CHR = GroupNode("CHR")
        self.RIG = GroupNode("RIG", p=self.CHR)
        self.MDL = GroupNode("MDL", p=self.CHR)
        self.PRX = GroupNode("PRX", p=self.MDL)
        self.SKL = GroupNode("SKL", p=self.CHR)
        self.CTL = GroupNode("CTL", p=self.CHR)
        self.DIM = GroupNode("distDim_GRP")

        if self.SKL.a.s.settable():
            self.masterC.a["globalScale"] >> self.SKL.a.s
        if self.PRX.a.s.settable():
            self.masterC.a["globalScale"] >> self.PRX.a.s

        root = self.masterC2
        if not root.parent:
            root | self.CTL

        if not self.DIM.parent:
            self.DIM | self.RIG
            self.DIM.hide()
