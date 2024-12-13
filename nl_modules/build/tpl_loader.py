import os.path
import maya.cmds as mc
import logging

MAYA_TPL_DIR = "D:/_PROJECT/GIT/nl_rigging_tools/nl_modules/build/components"
BASE_FILE = "base.ma"


class TplLoader:
    """
    Class for loading base & guide for the component
    e.g.
        loader = TplLoader('lfArm.ma', 'lfArm0')
        loader.load_baseTpl()
    """

    def __init__(self, tpl_name, rigID):
        self.tpl_name = tpl_name
        self.rigID = rigID
        self.rigNode = None
        self.masterC = None

    def load_baseTpl(self):

        from nl_modules.nodel.base.dag_node import DagNode
        from nl_modules.nodel.curve_node import CurveNode

        rigNodeStr = self.rigID + "_RGN"
        if mc.objExists(rigNodeStr):
            logging.error(f"{rigNodeStr} already exist")
            return
        if not mc.objExists("master_ctl"):
            self.load_base(BASE_FILE)

        self.masterC = CurveNode("master_ctl")
        if self.load_tpl(self.tpl_name):
            n = DagNode(rigNodeStr)
            if n.exists():
                n.a.rigID.set(self.rigID, type="string")
                self.rigNode = n
                mc.select(self.rigID + "_master_guide")
            else:
                logging.error(f"{rigNodeStr} not found")

    def load_base(self, name):
        f = f"{MAYA_TPL_DIR}/{name}"
        if os.path.exists(f):
            mc.file(f, i=1)
            if not mc.objExists("master_ctl"):
                logging.error(f"master_ctl not found")
        else:
            logging.error(f"{f} not found")

    def load_tpl(self, name):
        f = f"{MAYA_TPL_DIR}/{name}"
        if os.path.exists(f):
            mc.file(f, i=1, mnc=0, renameAll=1, renamingPrefix=self.rigID)
            return True
        else:
            logging.error(f"Tpl file not found: {f}")
            return False
