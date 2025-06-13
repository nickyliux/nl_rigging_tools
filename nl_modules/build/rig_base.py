import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
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

        self.masterC = CrvNode("master_ctl")
        self.masterC1 = self.masterC.offset
        self.masterC2 = self.masterC1.offset

        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        self.rigNode = rigNode
        self.rigID = rigNode.a.rigID.get()

        self.CHR = GrpNode("CHR")
        self.RIG = GrpNode("RIG", p=self.CHR)
        self.MDL = GrpNode("MDL", p=self.CHR)
        self.PRX = GrpNode("PRX", p=self.MDL)
        self.SKL = GrpNode("SKL", p=self.CHR)
        self.CTL = GrpNode("CTL", p=self.CHR)
        self.DIM = GrpNode("distDim_GRP")

        root = self.masterC2
        if not root.parent:
            root | self.CTL

        if not self.DIM.parent:
            self.DIM | self.RIG
            self.DIM.hide()
