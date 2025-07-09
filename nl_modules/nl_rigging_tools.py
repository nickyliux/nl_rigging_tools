"""
File: nl_rigging_tools.py
Author: Nicky Liu
Date: 2024-07-09
Version: 0.1.0
Contact: nickyliux@gmail.com / www.nickyliu.com
Description: Main file to load Qt UI file and connected functions
Dependency:
    maya.cmds
    nl_modules (internal)
"""

import os
import logging
import maya.cmds as mc
import maya.mel as mel
from functools import partial
from importlib import reload
import nl_modules
from nl_modules.utils import reload_all
from nl_modules.utils import common
from nl_modules.utils import file
from nl_modules.utils import guide
from nl_modules.utils import log
from nl_modules.utils import modeling
from nl_modules.utils import build
from nl_modules.utils import proxy
from nl_modules.utils import control
from nl_modules.utils import skin
from nl_modules.utils.color import Color

reload(reload_all)

from PySide2 import QtWidgets
from PySide2.QtGui import QIcon
from PySide2.QtUiTools import QUiLoader

from PySide2.QtWidgets import QMenuBar
from PySide2.QtWidgets import QMenu
from PySide2.QtWidgets import QAction

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.msh_node import MshNode

# Must keep for valid call eval(cls)

from nl_modules.build.leg_bp import LegBp
from nl_modules.build.hand import Hand
from nl_modules.build.arm_bp import ArmBp
from nl_modules.build.head import Head
from nl_modules.build.neck_bp import NeckBp
from nl_modules.build.spine_bp import SpineBp
from nl_modules.build.leg_qd import LegQd
from nl_modules.build.neck_qd import NeckQd
from nl_modules.build.spine_qd import SpineQd
from nl_modules.build.tail_fk import TailFk
from nl_modules.build.tail import Tail

log.update_root_logger()

MOD_DIR = os.path.dirname(nl_modules.__file__)

MODEL_PATH = "D:/_PROJECT/GIT/nl_rigging_tools_examples"
SHAPE_PATH = MOD_DIR + "/build/shapes"
LIGHT_PATH = MOD_DIR + "/build/others"
UI_PATH = MOD_DIR + "/nl_rigging_tools.ui"

LIGHTING_FILE = LIGHT_PATH + "/lighting3.ma"
SHADER_FILE = LIGHT_PATH + "/bone_SHD.ma"

BIND_JNT_SET = "bind_jnt_set"
MODEL_GRP = "mdl_grp"


from contextlib import ContextDecorator


class Undo(ContextDecorator):
    """Context manager for undo chunk in Maya."""

    def __init__(self, name=None):
        self.name = name

    def __enter__(self):
        mc.undoInfo(openChunk=True, infinity=True, chunkName=self.name)

    def __exit__(self, exc_type, exc_value, traceback):
        mc.undoInfo(closeChunk=True)


class MainWindow(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):
    """Main window for the rigging tools UI."""

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        logging.info("load " + UI_PATH)
        self.UI = QUiLoader().load(UI_PATH)

        self.setWindowTitle("nlRT 0.1.0")
        self.setCentralWidget(self.UI)
        self.setGeometry(0, 0, 233, 700)
        self.connect_UI()
        # self.addMenuBar()

    # def addMenuBar(self):
    #     menuBar = QMenuBar(self)

    #     about_qm = QMenu("&More", self)

    #     self.newAction = QAction(self)
    #     self.newAction.setText("&About")
    #     about_qm.addAction(self.newAction)
    #     about_qm.triggered.connect(self.about_action)

    #     menuBar.addMenu(about_qm)
    #     self.setMenuBar(menuBar)

    # def about_action(self):
    #     print("Developed by Nicky Liu")

    def connect(self, btn, func, icon=None):
        """Connect a button to a function with an optional icon."""
        btn.clicked.connect(func)
        if icon:
            btn.setIcon(QIcon(icon))

    def connect_UI(self):
        """Connect UI buttons to their respective functions."""
        # Pick mask & click drag
        self.connect(self.UI.pickMaskCrv_BN, self.pickMaskCrv, ":pickCurveObj.png")
        self.connect(self.UI.pickMaskMsh_BN, self.pickMaskMsh, ":pickGeometryObj.png")
        self.connect(self.UI.pickMaskAll_BN, self.pickMaskAll)

        self.UI.clickDrag_CB.stateChanged.connect(self.clickDrag_CB_stateChanged)
        if mc.selectPref(clickDrag=1, q=1):
            self.UI.clickDrag_CB.setChecked(1)

        # Guide
        self.connect(self.UI.guide_load_BN, self.guide_load, ":openScript.png")
        self.connect(self.UI.guide_explore_BN, guide.explore, ":searchEngine.png")
        self.UI.guide_LW.itemDoubleClicked.connect(self.guide_load)

        # Model
        self.connect(self.UI.loadModel_BN, self.importModel, ":openScript.png")

        # Template
        self.connect(self.UI.loadTemplate_BN, guide.loadTemplate, ":openScript.png")
        self.connect(self.UI.saveTemplate_BN, guide.saveTemplate, ":fileSave.png")

        # Build
        self.connect(self.UI.component_buildAll_BN, build.buildSelOrAll, ":play_S.png")
        self.connect(
            self.UI.component_unbuildAll_BN, build.unbuildSelOrAll, ":smallTrash.png"
        )

        # Control
        self.connect(self.UI.saveCtl_BN, control.saveCtl, ":fileSave.png")
        self.connect(self.UI.loadCtl_BN, control.loadCtl, ":openScript.png")

        # Proxy
        self.connect(self.UI.loadProxy_BN, proxy.loadProxy, ":openScript.png")
        self.connect(self.UI.saveProxy_BN, proxy.saveProxy, ":fileSave.png")
        self.connect(self.UI.genProxy_BN, proxy.genProxy, ":play_S.png")
        self.connect(self.UI.selAllProxyGrp_BN, proxy.selAllProxyGrp, ":aselect.png")
        self.connect(self.UI.showHideProxy_BN, proxy.showHideProxy, ":visible.png")
        self.connect(self.UI.refProxy_BN, proxy.refProxy, ":templated.png")
        self.connect(self.UI.wrapProxy_BN, proxy.wrapProxy, ":shrinkwrap.png")
        self.connect(self.UI.resetProxy_BN, proxy.resetProxy, ":refresh.png")
        self.connect(
            self.UI.mirrorProxy_BN, proxy.mirrorProxy, ":polyMirrorGeometry.png"
        )
        self.connect(self.UI.templateTarget_BN, self.templateTarget, ":templated.png")
        self.connect(self.UI.loadWrapTargetMesh_BN, self.loadWrapTargetMesh)
        self.connect(self.UI.bindUsingProxy_BN, self.bindUsingProxy)

        # Bind
        self.connect(self.UI.boneAutoBind_BN, self.boneAutoBind)
        self.connect(self.UI.delSkinForAllMeshes_BN, skin.delSkinForAllMeshes)

        # RigNode
        self.UI.rigNode_LW.itemDoubleClicked.connect(self.rigNode_LW_dblClicked)

        # Ctl
        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)
        self.connect(self.UI.crvShape_removeFrInst_BN, self.crvShape_removeFrInst)

        self.connect(self.UI.crvShape_new_BN, self.crvShape_new, ":fileNew.png")
        self.connect(self.UI.crvShape_apply_BN, self.crvShape_apply, ":openScript.png")
        self.connect(self.UI.crvShape_save_BN, self.crvShape_save, ":fileSave.png")
        self.connect(self.UI.crvShape_del_BN, self.crvShape_del, ":smallTrash.png")

        self.connect(self.UI.shapeRotaX_BN, partial(control.rotaCVForSel, 90, 0, 0))
        self.connect(self.UI.shapeRotaY_BN, partial(control.rotaCVForSel, 0, 90, 0))
        self.connect(self.UI.shapeRotaZ_BN, partial(control.rotaCVForSel, 0, 0, 90))
        self.connect(self.UI.shapeScaleUp_BN, partial(control.scaleCVForSel, 4 / 3))
        self.connect(self.UI.shapeScaleDn_BN, partial(control.scaleCVForSel, 3 / 4))
        self.connect(self.UI.onTop_BN, control.setOnTopSel)
        self.connect(self.UI.drop_BN, control.dropSel)

        # Prepare
        self.connect(
            self.UI.joint_addRb_BN, partial(self.addJoint, rb=1), ":addClip.png"
        )
        self.connect(
            self.UI.joint_addRef_BN, partial(self.addJoint, rb=0), ":addClip.png"
        )
        self.connect(
            self.UI.mirrorAllRefJnt_BN, self.mirrorAllRefJnt, ":kinMirrorJoint_S.png"
        )
        self.connect(self.UI.addBladeAttr_BN, self.addBladeAttr)

        self.connect(self.UI.misc_retopo20_BN, partial(modeling.retopo, faceNum=20))
        self.connect(self.UI.misc_retopo50_BN, partial(modeling.retopo, faceNum=50))
        self.connect(self.UI.misc_retopo150_BN, partial(modeling.retopo, faceNum=150))
        self.connect(self.UI.misc_retopo500_BN, partial(modeling.retopo, faceNum=500))

        self.connect(self.UI.addMirrorAttr_BN, common.add_mirror_attr)
        self.connect(self.UI.misc_buildLineSel_BN, CrvNode.buildLineLinkedSel)
        self.connect(self.UI.misc_importEnvAndShd_BN, self.misc_importEnvAndShd)
        self.connect(self.UI.assignPresetColor_BN, common.assignPresetShd)

        self.rigNode_refresh()
        self.crvShape_refresh()
        self.updateLoadWrapTargetMesh()

    def updateLoadWrapTargetMesh(self):
        """Update the button text for loading wrap target mesh."""
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        if targetWrapMesh:
            tgt = DagNode(targetWrapMesh)
            if tgt.exists() and tgt.type == "mesh":
                self.UI.loadWrapTargetMesh_BN.setText(f"< {tgt.name} >")
            else:
                self.UI.loadWrapTargetMesh_BN.setText("< None >")

    def clickDrag_CB_stateChanged(self, state):
        """Set the click drag preference based on the checkbox state."""
        mc.selectPref(clickDrag=state)

    def pickMaskCrv(self):
        """Set the object pick mask to curves."""
        mel.eval('setObjectPickMask "All" 0')
        mel.eval('setObjectPickMask "Curve" 1')

    def pickMaskMsh(self):
        """Set the object pick mask to geometry."""
        mel.eval('setObjectPickMask "All" 0')
        mel.eval('setObjectPickMask "Surface" 1')

    def pickMaskAll(self):
        """Set the object pick mask to all."""
        mel.eval('setObjectPickMask "All" 1')

    @Undo("guide_load")
    def guide_load(self, *args):
        """Load selected guide components."""
        items = self.UI.guide_LW.selectedItems()
        side_L = self.UI.component_left_RB.isChecked()
        side_R = self.UI.component_right_RB.isChecked()
        if items:
            for item in items:
                names = guide.COMPONENT_DICT[item.text()]
                if len(names) == 2:
                    if side_L:
                        names = [names[0]]
                    if side_R:
                        names = [names[1]]
                guide.loadGuide(names)
            self.rigNode_refresh()
            common.setViewport(fit=1)

    def getModelFile(self):
        """Open file dialog to select a model file."""
        tgtFile = mc.fileDialog2(
            fileFilter="*.ma", dialogStyle=2, fileMode=1, dir=MODEL_PATH
        )
        return tgtFile[0] if tgtFile else None

    def importModel(self):
        """Import model file into the scene."""
        tgtFile = self.getModelFile()
        if tgtFile:
            file.importFile(tgtFile)
            common.setViewport(fit=1)

    def rigNode_LW_dblClicked(self, item):
        """Show attribute editor for rigNode"""
        textObj = mc.ls(item.text())
        if textObj:
            mc.select(textObj)
            mc.AttributeEditor()

    def rigNode_refresh(self):
        """Refresh rigNode list"""
        rigNodes = mc.ls("*RGN", type="script")
        self.UI.rigNode_LW.clear()
        self.UI.rigNode_LW.addItems(rigNodes)

    def crvShape_LW_dblClicked(self, item):
        """Add curve object"""
        crv = CrvNode(item.text() + "#", shape=item.text())
        mc.select(crv)

    def crvShape_save(self):
        """Save selList shape to highlighted"""
        selList = mc.ls(sl=1, tr=1)
        if selList:
            tgt = CrvNode(selList[0])
            if tgt.type == "nurbsCurve":
                item = self.UI.crvShape_LW.selectedItems()
                if item:
                    itemText = item[0].text()
                    result = mc.confirmDialog(
                        t="Save Shape",
                        m=f'Overwrite "{itemText}" ?       ',
                        b=["Yes", "No"],
                        db="No",
                    )
                    if result == "Yes":
                        tgt >> itemText

    def crvShape_new(self):
        selList = mc.ls(sl=1, tr=1)
        if selList:
            tgt = DagNode(selList[0])
            if tgt.type == "nurbsCurve":
                result = mc.promptDialog(
                    t="New Shape", m="Enter name:", b=["OK", "Cancel"], db="OK"
                )
                if result == "OK":
                    newName = mc.promptDialog(q=1, t=1)
                    CrvNode(tgt) >> newName
                    self.crvShape_refresh()

    def crvShape_del(self):
        items = self.UI.crvShape_LW.selectedItems()
        if items:
            itemText = items[0].text()
            result = mc.confirmDialog(
                t="Delete Shape",
                m=f'Delete "{itemText}" ?        ',
                b=["Yes", "No"],
                db="No",
            )
            if result == "Yes":
                file.deleteFile(f"{SHAPE_PATH}\\{itemText}.json")
                self.crvShape_refresh()

    def crvShape_removeFrInst(self):
        selList = mc.ls(sl=1, tr=1)
        if selList:
            CrvNode(selList[0]).uninstanceFromOthers()

    @Undo("crvShape_apply")
    def crvShape_apply(self):
        """Apply selected curve shape to selList"""
        selList = mc.ls(sl=1, tr=1)
        items = self.UI.crvShape_LW.selectedItems()
        if selList and items:
            itemText = items[0].text()
            shape = CrvNode(itemText, shape=itemText)
            shape.copy_shape_as_inst(selList, keepSrc=0)
            mc.select(selList)

    def crvShape_refresh(self):
        """Refresh curve shape list"""
        self.UI.crvShape_LW.clear()
        items = [
            f.split(".")[0]
            for f in os.listdir(SHAPE_PATH)
            if os.path.isfile(os.path.join(SHAPE_PATH, f))
        ]
        self.UI.crvShape_LW.addItems(items)

    def addJoint(self, rb=0):
        """Add reference joint or rb joint for selected mesh."""
        mc.select(hi=1)
        selectedMesh = mc.ls(sl=1, type="mesh")
        meshSel = []
        [meshSel.append(DagNode(s).parent) for s in selectedMesh]

        if meshSel:
            jnt_grp = GrpNode("jnt_grp")
            for sN in meshSel:
                sf = "_rbJnt" if rb else "_refJnt"
                color = Color.RED if rb else Color.WHITE
                jnt = JntNode(sN + sf, color=color, p=jnt_grp)
                jnt.a.t.set(*sN.o.bbCenter)
        mc.select(cl=1)

    def addBladeAttr(self):
        """Add attribute 'isBlade' to selected joints"""
        for s in mc.ls(sl=1, tr=1) or []:
            DagNode(s).a.add("isBlade", lock=1, dv=1)

    def mirrorAllRefJnt(self):
        """Mirror all reference joints in the scene."""
        selectedJnt = mc.ls("lf_*_refJnt", type="joint")
        if selectedJnt:
            guide.mirrorGuideAttr(selectedJnt, wsMirror=1)
        else:
            mc.confirmDialog(t="Info", m="No refJnt found.    ", b="OK")

    def bindRefJnts(self, meshes, searchSet=None, thld=5, uiPB=None):
        """Bind meshes to reference joints in a specified set."""
        from nl_modules.utils import skin

        if not DagNode(searchSet).exists():
            raise ValueError(f"Set {searchSet} NOT found for auto skin.")

        jntList = set(mc.sets(searchSet, q=1))
        jntsScap = set([o for o in jntList if o.endswith("_scapular")])
        jntsNoScap = jntList - jntsScap

        meshesScap = [o for o in meshes if o.a["isBlade"].exists()]
        meshesNoScap = set(meshes) - set(meshesScap)

        skin.skinRefJnts(meshesNoScap, jntsNoScap, thld=thld, uiPB=uiPB)
        skin.skinRefJnts(meshesScap, jntsScap, thld=thld, uiPB=uiPB)

    @Undo("boneAutoBind")
    def boneAutoBind(self):
        """Bind all meshes in MODEL_GRP to reference joints and rb joints."""
        meshSel = common.getMeshBelow(MODEL_GRP)
        #
        #   bind to closest refJnt in MODEL_GRP
        #   bind to _rbnJnt For each in MODEL GRP
        #
        self.bindRefJnts(
            meshSel, searchSet=BIND_JNT_SET, thld=15, uiPB=self.UI.progress_PB
        )
        # self.bindRbnJnts(meshSel, uiPB=self.UI.progress_PB)
        from nl_modules.utils import skin

        skin.skinRbJnts(meshSel, uiPB=self.UI.progress_PB)
        #   search the attr rbSrf & rbJSet for each rigNode and attach joints
        #   to surface with 'closest point on surface' node
        #
        build.autoAttachJntToSurf()
        common.setViewport()
        mc.select(cl=1)

    def bindUsingProxy(self):
        """Bind all meshes in MODEL_GRP to proxy joints and rb joints."""
        pass

    def templateTarget(self):
        """Toggle template target mesh for wrap deformer."""
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        tgt = DagNode(targetWrapMesh)
        if tgt.exists():
            tgt.dspType = 1 - tgt.dspType

    def loadWrapTargetMesh(self):
        """Load target mesh for wrap deformer."""
        selList = mc.ls(sl=1, tr=1)
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        tgt = DagNode(targetWrapMesh)
        if tgt.exists():
            tgt.dspType = 0
        if selList:
            mc.optionVar(sv=("targetWrapMesh", selList[0]))
            self.updateLoadWrapTargetMesh()
        else:
            mc.select(tgt)

    def misc_importEnvAndShd(self):
        """Import lighting and shader files if not exists."""
        if not mc.objExists("env_grp"):
            if os.path.isfile(LIGHTING_FILE):
                file.importFile(LIGHTING_FILE)
        if not mc.objExists("bone_SHD"):
            if os.path.isfile(SHADER_FILE):
                file.importFile(SHADER_FILE)


global UI_win


def main():
    """Main function to initialize and show the rigging tools UI."""
    global UI_win
    try:
        UI_win.close()
    except:
        pass

    UI_win = MainWindow()
    UI_win.show(dockable=1)


if __name__ == "__main__":
    main()

mc.evalDeferred("reloadMenus()")
mc.scriptJob(permanent=1, runOnce=1, event=["SelectionChanged", "reloadMenusAutorig"])

"""
    import importlib
    from nl_modules import nl_rigging_tools
    importlib.reload(nl_rigging_tools)
    nl_rigging_tools.main()
"""
"""
    toeNum = DagNode('master_guide').a.toeNum
    cond = (toeNum <= 4)
    for c in mc.ls('toe00_*_guide', 'toe_line_grp1'):
        cond >> DagNode(c).a.v
    cond = (toeNum <= 3)
    for c in mc.ls('toe04_*_guide', 'toe_line_grp5'):
        cond >> DagNode(c).a.v
    cond = (toeNum <= 2)
    for c in mc.ls('toe01_*_guide', 'toe_line_grp2'):
        cond >> DagNode(c).a.v

        from PySide2 import QtCore, QtGui, QtWidgets

button = QtWidgets.QPushButton("X")
button.setStyleSheet("font-size: 100px")

layout = QtWidgets.QVBoxLayout()
layout.addWidget(button)

window = QtWidgets.QWidget()
window.setLayout(layout)
window.show()
"""
"""
import maya.cmds as cmds
for item in cmds.resourceManager(nf='*png'):
    cmds.resourceManager(s=(item, "C:/temp/mayaicons/{0}".format(item)))
#
getenv "XBMLANGPATH" ;
"""

# items = self.UI.preset_LW.selectedItems()
# if items:
#     itemText = items[0].text()
#     result = mc.confirmDialog(
#         t="Save Preset",
#         m=f'Overwrite "{itemText}" ?        ',
#         b=["Yes", "No"],
#         db="No",
#     )
#     if result == "Yes":
#         guide.savePreset(itemText)

# def template_new_BN_clicked(self):
#     result = mc.promptDialog(
#         t="New Preset", m="Enter name:", b=["OK", "Cancel"], db="OK"
#     )
#     if result == "OK":
#         newName = mc.promptDialog(q=1, t=1)
#         guide.savePreset(newName)
#         self.preset_refresh_BN_clicked()

# def template_del_BN_clicked(self):
#     items = self.UI.preset_LW.selectedItems()
#     if items:
#         itemText = items[0].text()
#         result = mc.confirmDialog(
#             t="Delete Preset ",
#             m=f'Delete "{itemText}" ?        ',
#             b=["Yes", "No"],
#             db="No",
#         )
#         if result == "Yes":
#             tgtFile = f"{PATH_PRESET}\\{itemText}.json"
#             file.deleteFile(tgtFile)
#             self.preset_refresh_BN_clicked()


#     mc.displayRGBColor("lead", *color)
#     mc.displayRGBColor("referenceLayer", *color)
