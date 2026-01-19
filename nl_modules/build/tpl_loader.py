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
        self.rigNode = None
        self.masterC = None

    def load_base_tpl(self):
        from nl_modules.nodel.base.dag_node import DagNode
        from nl_modules.nodel.grp_node import GrpNode

        rID = self.rigID
        rigNode_name = rID + "_RGN"

        if mc.objExists(rigNode_name):
            raise ValueError(f"{rigNode_name} already exist")

        curr_dir = os.path.dirname(os.path.abspath(__file__))
        tplFile = os.path.join(curr_dir, "components", self.fileName + ".ma")

        if os.path.isfile(tplFile):
            mc.file(tplFile, i=1, mnc=0, renameAll=1, renamingPrefix=rID)
        else:
            logging.error(f"Template file not found: {tplFile}")
            return

        scale_grp = GrpNode("modules_grp")
        mod_grp = DagNode(rID + "_module_grp")

        if mod_grp.exists():
            mod_grp | scale_grp

        rigNode = DagNode(rigNode_name)
        if not rigNode.exists():
            raise ValueError(f"{rigNode_name} not found")

        rigNode.a["rigID"].set(rID, type="string")
        self.rigNode = rigNode
