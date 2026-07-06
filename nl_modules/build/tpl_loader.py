import os
import logging
import maya.cmds as mc
from nl_modules.utils.color import Color
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode


class TplLoader:
    """
    Class for loading base & guide for the component
    e.g.
        loader = TplLoader('lfArm', 'lfArm0')
        loader.load_base_tpl()
    """

    def __init__(self, fileName, rigID):
        self.fileName = fileName
        self.rigID = rigID
        self.masterGuide = None
        self.masterC = None

    def load_base_tpl(self):
        """Load base template for the component"""

        rID = self.rigID
        curr_dir = os.path.dirname(os.path.abspath(__file__))
        tplFile = os.path.join(curr_dir, "components", self.fileName + ".ma")

        if os.path.isfile(tplFile):
            mc.file(tplFile, i=1, mnc=0, renameAll=1, renamingPrefix=rID)
        else:
            logging.error(f"Template file not found: {tplFile}")
            return

        guides_grp = DagNode("GUIDES")
        if not guides_grp.exists():
            guides_grp = CrvNode(
                "GUIDES", shape="hexagon", color=Color.BLACK, width=2, scale=12
            )

        mg = DagNode(rID + "_master_guide")

        if mg.exists():
            mg | guides_grp
        else:
            logging.error("Master guide not found in imported template.")
            return

        mg.a["rigID"].set(rID, type="string")
