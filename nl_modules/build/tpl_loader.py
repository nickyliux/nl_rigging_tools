import os.path
import maya.cmds as mc
import logging

from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils.color import Color

MAYA_TPL_DIR = "D:/_PROJECT/GIT/nl_rigging_tools/nl_modules/build/components"
BASE_FILE = "base.ma"


class TplLoader:
    """
    Class for loading base & guide for the component
    e.g.
        loader = TplLoader('lfArm.ma', 'lfArm0')
        loader.load_base_tpl()
    """

    def __init__(self, tpl_name, rigID):
        self.tpl_name = tpl_name
        self.rigID = rigID
        self.rigNode = None
        self.masterC = None

    def load_base_tpl(self):

        from nl_modules.nodel.base.dag_node import DagNode

        rigNodeStr = self.rigID + "_RGN"
        if mc.objExists(rigNodeStr):
            logging.error(f"{rigNodeStr} already exist")
            return

        if self.load_tpl(self.tpl_name):

            scale_grp = GroupNode("modules_scale_grp")

            mod_grp = DagNode(self.rigID + "_module_grp")
            if mod_grp.exists():
                mod_grp | scale_grp

            n = DagNode(rigNodeStr)
            if n.exists():
                n.a.rigID.set(self.rigID, type="string")
                self.rigNode = n
            else:
                logging.error(f"{rigNodeStr} not found")

    def load_tpl(self, name):
        f = f"{MAYA_TPL_DIR}/{name}"
        if os.path.exists(f):
            mc.file(f, i=1, mnc=0, renameAll=1, renamingPrefix=self.rigID)
            return True
        else:
            logging.error(f"Tpl file not found: {f}")
            return False
