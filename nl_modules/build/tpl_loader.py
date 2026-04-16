import logging
import os
import maya.cmds as mc


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
        from nl_modules.nodel.base.dag_node import DagNode
        from nl_modules.nodel.grp_node import GrpNode

        rID = self.rigID
        curr_dir = os.path.dirname(os.path.abspath(__file__))
        tplFile = os.path.join(curr_dir, "components", self.fileName + ".ma")

        if os.path.isfile(tplFile):
            mc.file(tplFile, i=1, mnc=0, renameAll=1, renamingPrefix=rID)
        else:
            logging.error(f"Template file not found: {tplFile}")
            return

        guide_grp = GrpNode("GUIDES")
        mg = DagNode(rID + "_master_guide")

        if mg.exists():
            mg | guide_grp
        else:
            logging.error(f"Master guide not found in imported template.")
            return

        mg.a["rigID"].set(rID, type="string")
        # self.masterGuide = mg
