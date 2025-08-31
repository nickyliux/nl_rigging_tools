import logging
import os
from functools import partial
from importlib import reload
import maya.cmds as mc
import nl_modules
from nl_modules.utils import (
    reload_all,
    common,
    file,
    guide,
    log,
    model,
    build,
    proxy,
    control,
    skin,
)
from nl_modules.utils.color import Color

reload(reload_all)

from PySide2 import QtWidgets
from PySide2.QtGui import QIcon
from PySide2.QtUiTools import QUiLoader
from PySide2.QtWidgets import QMenuBar, QMenu, QAction

# --- Maya UI ---
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

# --- Node Classes ---
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode

# --- Logging ---
log.update_root_logger()

# --- Paths ---
MOD_DIR = os.path.dirname(nl_modules.__file__)
SHAPE_PATH = os.path.join(MOD_DIR, "build", "shapes")
LIGHT_PATH = os.path.join(MOD_DIR, "build", "others")
UI_PATH = os.path.join(MOD_DIR, "nl_rigging_tools.ui")
STYLE_PATH = os.path.join(MOD_DIR, "style.qss")
LIGHTING_FILE = os.path.join(LIGHT_PATH, "lighting3.ma")
SHADER_FILE = os.path.join(LIGHT_PATH, "bone_SHD.ma")
BIND_JNT_SET = "bind_jnt_set"
MODEL_GRP = "mdl_grp"
BIND_REF_GRP = "jnt_grp"


class MyWindow(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):
    """Main window for the rigging tools UI."""

    def __init__(self, parent=None):
        """Initialize the main window and load the UI."""
        super(MyWindow, self).__init__(parent)
        logging.info("load " + UI_PATH)
        self.UI = QUiLoader().load(UI_PATH)

        self.setWindowTitle("nlRT 0.1.0")
        self.setCentralWidget(self.UI)
        self.setGeometry(200, 300, 200, 590)
        self.connect_UI()
        # self.addMenuBar()

    def addMenuBar(self):
        """Add a menu bar with an 'About' section."""
        menuBar = QMenuBar(self)
        more_QM = QMenu("&More", self)
        # about_QM = QMenu("&About", self)

        addIcon_QA = QAction(self)
        addIcon_QA.setText("&Add Icon to Current Shelf")
        addIcon_QA.triggered.connect(self.addIconToCurrShelf)

        clickDrag_QA = QAction(self)
        clickDrag_QA.setText("&Toggle Click Drag")
        clickDrag_QA.triggered.connect(self.toggleClickDrag)

        more_QM.addAction(addIcon_QA)
        more_QM.addAction(clickDrag_QA)

        menuBar.addMenu(more_QM)
        # menuBar.addMenu(about_QM)
        self.setMenuBar(menuBar)

    def addIconToCurrShelf(self):
        """Add the rigging tools icon to the current shelf."""
        common.addIconToCurrShelf()

    def toggleClickDrag(self):
        """Toggle the click drag preference in Maya."""
        mc.selectPref(clickDrag=not mc.selectPref(clickDrag=1, q=1))

    def connect(self, btn, func, icon=None):
        """Connect a button to a function with an optional icon."""
        btn.clicked.connect(func)
        if icon:
            btn.setIcon(QIcon(icon))

    def buildAll(self):
        build.buildSelOrAll()
        self.rigNode_refresh()

    def unbuildAll(self):
        build.unbuildSelOrAll()
        self.rigNode_refresh()

    def connect_UI(self):
        """Connect UI buttons to their respective functions."""
        # Pick mask & click drag
        # self.connect(self.UI.pickMaskCrv_BN, self.pickMaskCrv, ":pickCurveObj.png")
        # self.connect(self.UI.pickMaskMsh_BN, self.pickMaskMsh, ":pickGeometryObj.png")
        # self.connect(self.UI.pickMaskAll_BN, self.pickMaskAll)

        # self.UI.clickDrag_CB.stateChanged.connect(self.clickDrag_CB_stateChanged)
        # if mc.selectPref(clickDrag=1, q=1):
        #     self.UI.clickDrag_CB.setChecked(1)

        # Guide
        self.connect(self.UI.guide_load_BN, self.guide_load, ":openScript.png")
        self.connect(self.UI.guide_explore_BN, guide.explore, ":searchEngine.png")
        self.UI.guide_LW.itemDoubleClicked.connect(self.guide_load)

        # Char Path
        self.connect(self.UI.charPath_BN, self.set_char_path, ":openScript.png")
        self.connect(self.UI.char_explore_BN, self.explore_char, ":searchEngine.png")

        # Model
        self.connect(self.UI.loadModel_BN, model.import_model, ":openScript.png")

        # Template
        self.connect(self.UI.loadTemplate_BN, guide.loadTemplate, ":openScript.png")
        self.connect(self.UI.saveTemplate_BN, guide.saveTemplate, ":fileSave.png")

        # Build
        self.connect(self.UI.buildAll_BN, self.buildAll, ":play_S.png")
        self.connect(self.UI.unbuildAll_BN, self.unbuildAll, ":smallTrash.png")

        # Control
        self.connect(self.UI.loadCtl_BN, control.loadCtl, ":openScript.png")
        self.connect(self.UI.saveCtl_BN, control.saveCtl, ":fileSave.png")

        # Proxy
        self.connect(self.UI.loadProxy_BN, proxy.loadProxy, ":openScript.png")
        self.connect(self.UI.saveProxy_BN, proxy.saveProxy, ":fileSave.png")
        self.connect(self.UI.genProxy_BN, proxy.genProxy, ":play_S.png")
        self.connect(self.UI.selAllProxyGrp_BN, proxy.selAllProxyMesh, ":aselect.png")
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
        self.UI.rigNode_refresh_BN.clicked.connect(self.rigNode_refresh)

        # Ctl
        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)
        self.connect(self.UI.crvShape_breakInst_BN, self.crvShape_breakInst)

        self.connect(self.UI.crvShape_new_BN, self.crvShape_new, ":fileNew.png")
        self.connect(self.UI.crvShape_apply_BN, self.crvShape_apply, ":openScript.png")
        self.connect(self.UI.crvShape_save_BN, self.crvShape_save, ":fileSave.png")
        self.connect(self.UI.crvShape_del_BN, self.crvShape_del, ":smallTrash.png")

        self.connect(self.UI.shapeRotaX_BN, partial(control.rotaCVForSel, 90, 0, 0))
        self.connect(self.UI.shapeRotaY_BN, partial(control.rotaCVForSel, 0, 90, 0))
        self.connect(self.UI.shapeRotaZ_BN, partial(control.rotaCVForSel, 0, 0, 90))
        self.connect(self.UI.shapeScaleUp_BN, partial(control.scaleCVForSel, 4 / 3))
        self.connect(self.UI.shapeScaleDn_BN, partial(control.scaleCVForSel, 3 / 4))
        self.connect(self.UI.onTop_BN, partial(control.setOnTopSel, 1))
        self.connect(self.UI.onTopOff_BN, partial(control.setOnTopSel, 0))
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

        # Retopo
        self.connect(self.UI.misc_retopo20_BN, partial(model.retopo, faceNum=20))
        self.connect(self.UI.misc_retopo50_BN, partial(model.retopo, faceNum=50))
        self.connect(self.UI.misc_retopo150_BN, partial(model.retopo, faceNum=150))
        self.connect(self.UI.misc_retopo500_BN, partial(model.retopo, faceNum=500))

        # Guide Tool
        self.connect(self.UI.addMirrorAttr_BN, common.add_mirror_attr)
        self.connect(self.UI.misc_buildLineSel_BN, CrvNode.buildLineLinkedSel)
        self.connect(self.UI.misc_importEnvAndShd_BN, self.misc_importEnvAndShd)

        # Joint Orientation
        self.connect(self.UI.createRefUpLoc_BN, JntNode.createRefUpLoc)
        self.connect(self.UI.reOrient_BN, JntNode.reOrientSel)

        # Coloring
        self.connect(self.UI.assignPresetColor_BN, common.assignPresetShd)

        # Misc
        self.connect(self.UI.dsp_normal_BN, partial(control.dspTypeSel, 0))
        self.connect(self.UI.dsp_template_BN, partial(control.dspTypeSel, 1))
        self.connect(self.UI.dsp_reference_BN, partial(control.dspTypeSel, 2))
        self.connect(self.UI.selectTypeBelow_BN, self.getTypeBelowSel)

        self.rigNode_refresh()
        self.crvShape_refresh()
        self.updateLoadWrapTargetMesh()
        self.updateCharPath()

    def getTypeBelowSel(self):
        """Select objects of a specific type below the selected objects."""
        typeBelow = self.UI.typeBelow_LW.selectedItems()
        if typeBelow:
            sel = mc.ls(sl=1, tr=1)
            if sel:
                result = common.getTypeBelow(sel, tgtType=typeBelow[0].text())
                if result:
                    mc.select(result)

    def updateCharPath(self):
        """Update the character path in the UI if it exists."""
        # Set character path if exists
        charPath = mc.optionVar(q="charPath")
        if charPath:
            if os.path.isdir(charPath):
                self.UI.charPath_LE.setText(charPath)
            else:
                mc.optionVar(sv=("charPath", ""))

    def updateLoadWrapTargetMesh(self):
        """Update the button text for loading wrap target mesh."""
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        if targetWrapMesh:
            tgt = DagNode(targetWrapMesh)
            if tgt.exists() and tgt.type == "mesh":
                self.UI.loadWrapTargetMesh_BN.setText(f"< {tgt.name} >")
            else:
                self.UI.loadWrapTargetMesh_BN.setText("< None >")

    # def clickDrag_CB_stateChanged(self, state):
    #     """Set the click drag preference based on the checkbox state."""
    #     mc.selectPref(clickDrag=state)

    # def pickMaskCrv(self):
    #     """Set the object pick mask to curves."""
    #     mel.eval('setObjectPickMask "All" 0')
    #     mel.eval('setObjectPickMask "Curve" 1')

    # def pickMaskMsh(self):
    #     """Set the object pick mask to geometry."""
    #     mel.eval('setObjectPickMask "All" 0')
    #     mel.eval('setObjectPickMask "Surface" 1')

    # def pickMaskAll(self):
    #     """Set the object pick mask to all."""
    #     mel.eval('setObjectPickMask "All" 1')

    @common.Undo("guide_load")
    def guide_load(self, *args):
        """Load selected guide components."""

        items = self.UI.guide_LW.selectedItems()
        side_L = self.UI.component_left_RB.isChecked()
        side_R = self.UI.component_right_RB.isChecked()

        allTgtMG = []
        if items:
            for item in items:
                names = guide.COMPONENT_DICT[item.text()]

                guideToLoad = []
                if len(names) == 1:
                    guideToLoad.append(names[0])
                else:
                    if not side_L:
                        guideToLoad.append(names[1])
                    if not side_R:
                        guideToLoad.append(names[0])

                for n in guideToLoad:
                    mg = guide.loadGuide(n)
                    allTgtMG.append(mg)
                # guide.loadGuide(names)

            self.rigNode_refresh()
            common.setViewport(fit=1)
            mc.select(allTgtMG)
            mc.setToolTo("moveSuperContext")

    def rigNode_LW_dblClicked(self, item):
        """Show attribute editor for rigNode"""
        itemSel = mc.ls(item.text())
        if itemSel:
            mc.select(itemSel)
            mc.AttributeEditor()

    def rigNode_refresh(self):
        """Refresh UI rigNode list"""
        rigNodes = build.getRigNodes_all()
        self.UI.rigNode_LW.clear()
        self.UI.rigNode_LW.addItems([r.name for r in rigNodes])

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
        """Create a new curve shape from selected curve object"""
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
        """Delete selected curve shape file"""
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

    def crvShape_breakInst(self):
        """Remove selected curve shape from all instances"""
        selList = mc.ls(sl=1, tr=1)
        if selList:
            CrvNode(selList[0]).break_instance()
            mc.select(selList[0])

    @common.Undo("crvShape_apply")
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
        meshSel = [DagNode(m).parent for m in mc.ls(sl=1, type="mesh")]

        if meshSel:
            jnt_grp = GrpNode("jnt_grp")
            for mesh in meshSel:
                sf = "_rbJnt" if rb else "_refJnt"
                color = Color.RED if rb else Color.WHITE
                jnt = JntNode(mesh + sf, color=color, p=jnt_grp)
                jnt.a.t.set(*mesh.o.bbCenter)

        mc.select(cl=1)

    def addBladeAttr(self):
        """Add attribute 'isBlade' to selected joints"""
        for s in mc.ls(sl=1, tr=1):
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

    @common.Undo("boneAutoBind")
    def boneAutoBind(self):
        """Bind all meshes in MODEL_GRP to reference joints and rb joints."""
        if not mc.objExists(MODEL_GRP):
            mc.confirmDialog(t="Info", m=f"{MODEL_GRP} NOT found.    ", b="OK")
            return
        if not mc.objExists(BIND_REF_GRP):
            mc.confirmDialog(t="Info", m=f"{BIND_REF_GRP} NOT found.    ", b="OK")
            return

        meshSel = common.getTypeBelow(MODEL_GRP)
        #
        #   bind to closest refJnt in MODEL_GRP, and _rbnJnt For each in MODEL GRP
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
        build.auto_attach_jnt_to_surf()
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

    def set_char_path(self):
        CHAR_PATH = "D:/_PROJECT/GIT/nl_rigging_tools_examples"
        charPaths = mc.fileDialog2(
            dialogStyle=2,
            fileMode=3,
            dir=CHAR_PATH,
            cap="Select Character Path",
            okc="Select",
        )
        if charPaths:
            charPath = charPaths[0]
            mc.optionVar(sv=("charPath", charPath))
            self.UI.charPath_LE.setText(charPath)

    def explore_char(self):
        """Open the character path in the file explorer."""
        import subprocess

        charPath = mc.optionVar(q="charPath")
        if not charPath:
            mc.confirmDialog(t="Info", m="Character path not set.     ", b="OK")
            return
        path = os.path.realpath(charPath)
        if not os.path.isdir(path):
            mc.confirmDialog(t="Info", m=f"Character path NOT found.     ", b="OK")
            return
        subprocess.Popen(f'explorer "{path}"')


global UI_win


def main():
    """Main function to initialize and show the rigging tools UI."""
    global UI_win
    try:
        UI_win.close()
    except:
        pass
    UI_win = MyWindow()
    UI_win.show()

    with open(STYLE_PATH, "r") as f:
        style = f.read()
        UI_win.setStyleSheet(style)


if __name__ == "__main__":
    main()

mc.evalDeferred("reloadMenus()")
mc.scriptJob(permanent=1, runOnce=1, event=["SelectionChanged", "reloadMenusAutorig"])

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
