import os
import maya.cmds as mc


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
        from nl_modules.nodel.grp_node import GrpNode

        rID = self.rigID
        rigNode_name = rID + "_RGN"

        if mc.objExists(rigNode_name):
            raise ValueError(f"{rigNode_name} already exist")

        build_dir = os.path.dirname(os.path.abspath(__file__))
        MAYA_TPL_DIR = os.path.join(build_dir, "components")

        try:
            tplFile = f"{MAYA_TPL_DIR}/{self.tpl_name}"
            mc.file(tplFile, i=1, mnc=0, renameAll=1, renamingPrefix=rID)
        except Exception as e:
            print(f"Load template file error: {e}")

        scale_grp = GrpNode("modules_scale_grp")
        mod_grp = DagNode(rID + "_module_grp")

        if mod_grp.exists():
            mod_grp | scale_grp

        rigNode = DagNode(rigNode_name)
        if not rigNode.exists():
            raise ValueError(f"{rigNode_name} not found")

        rigNode.a["rigID"].set(rID, type="string")
        self.rigNode = rigNode
