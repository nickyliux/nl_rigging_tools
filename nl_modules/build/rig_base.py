import logging
import os
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode


class RigBase:
    """Create grouping structure for given rigNode.
    e.g.
        n = RigBase('lfArm0_RGN')
        n.__dict__
    """

    def __init__(self, rigNode):
        """Create grouping structure for given rigNode."""

        self.rigNode = DagNode(rigNode)
        if not self.rigNode.exists():
            logging.error("Missing rigNode")
            raise RuntimeError("Missing rigNode !")

        if not mc.objExists("master_ctl"):
            self.loadBase()

        self.masterC = CrvNode("master_ctl")
        self.masterC1 = self.masterC.offset
        self.masterC2 = self.masterC1.offset

        self.rigID = self.rigNode.a["rigID"].get()

        self.CHR = GrpNode("CHR")
        self.MDL = GrpNode("MDL", p=self.CHR)
        self.PRX = GrpNode("PRX", p=self.CHR)
        self.JNT = GrpNode("JNT", p=self.CHR)
        self.CTL = GrpNode("CTL", p=self.CHR)
        self.DIM = GrpNode("distDim")

        root = self.masterC2
        if not root.parent:
            root | self.CTL

        if not self.DIM.parent:
            self.DIM | self.CTL
            self.DIM.hide()

    def loadBase(self):
        """Load base template file for rigging"""
        if mc.objExists("master_ctl"):
            return

        util_dir = os.path.dirname(os.path.abspath(__file__))
        MAYA_TPL_DIR = os.path.join(util_dir, "..", "build", "components")
        base_file = f"{MAYA_TPL_DIR}/base.ma"

        try:
            mc.file(base_file, i=1)
        except Exception as e:
            raise ValueError(f"Error loading {base_file}: {e}")

        if not mc.objExists("master_ctl"):
            raise ValueError("master_ctl NOT found.")

        ctl = DagNode("master_ctl")
        ctl.a.showAttr(t=1, r=1)
        ctl.offset.a.showAttr(t=1, r=1)
