import logging
import os
from functools import partial
from importlib import reload

import maya.cmds as mc
from maya import mel

import nl_modules
from nl_modules.utils import (
    build,
    common,
    control,
    file,
    guide,
    helper,
    log,
    mocap,
    model,
    proxy,
    reload_all,
    skeleton,
    skin,
    tweak,
)
from nl_modules.utils.color import Color

reload(reload_all)

try:
    from PySide2 import QtCore, QtGui, QtWidgets
    from PySide2.QtGui import QIcon
    from PySide2.QtUiTools import QUiLoader
    # from PySide2.QtWidgets import QMenuBar, QMenu, QAction
except ImportError:
    from PySide6 import QtCore, QtGui, QtWidgets
    from PySide6.QtGui import QIcon
    from PySide6.QtUiTools import QUiLoader
    # from PySide6.QtWidgets import QMenuBar, QMenu
    # from PySide6.QtGui import QAction

# --- Maya UI ---
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

# --- Node Classes ---
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode

# --- Paths ---
MOD_DIR = os.path.dirname(nl_modules.__file__)
SHAPE_PATH = os.path.join(MOD_DIR, "build", "shapes")
LIGHT_PATH = os.path.join(MOD_DIR, "misc")
PRESET_GUIDE_PATH = os.path.join(MOD_DIR, "build", "components", "presets")
UI_PATH = os.path.join(MOD_DIR, "nl_rigging_tools.ui")
STYLE_PATH = os.path.join(MOD_DIR, "nl_rigging_tools.qss")
IMAGE_PATH = os.path.join(MOD_DIR, "build", "images")


LIGHTING_FILE = os.path.join(LIGHT_PATH, "lighting_set.ma")
AUTO_BIND_REF_GRP = "auto_bind_ref_grp"
MODEL_GRP = "geo_grp"
TWEAK_GRP = "tweak_guide_grp"


class MyToolWin(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):
    """Main window for the rigging tools UI."""

    def __init__(self, parent=None):
        """Initialize the main window and load the UI."""
        super(self.__class__, self).__init__(parent=parent)
        self.setWindowTitle("nlRT 0.1.0")
        self.UI = QUiLoader().load(UI_PATH)
        self.setCentralWidget(self.UI)
        self.connect_UI()
        log.update_root_logger(create_window=0)
        # self.addMenuBar()

    def close_window(self):
        """Close the main window."""
        self.close()

    # def addMenuBar(self):
    #     """Add menu bar to the main window."""
    #     addIcon_QA = QAction(self)
    #     addIcon_QA.setText("&Add Icon to Current Shelf")
    #     addIcon_QA.triggered.connect(addIcon2CurrShelf)

    #     ver_QM = QMenu("&2026.01.01", self)
    #     more_QM = QMenu("&More", self)
    #     more_QM.addAction(addIcon_QA)

    #     menuBar = QMenuBar(self)
    #     menuBar.addMenu(ver_QM)
    #     menuBar.addMenu(more_QM)
    #     self.setMenuBar(menuBar)

    def connect(self, btn, func, icon=None):
        """Connect a button to a function with an optional icon."""
        btn.clicked.connect(func)
        if icon:
            btn.setIcon(QIcon(icon))
            # if isinstance(icon, QtGui.QPixmap):
            # btn.setIconSize(icon.size())
            # btn.setIconSize(QtCore.QSize(24, 24))

    def connect2(self, btn, func, icon=None):
        """Connect a button to a function with an optional icon."""
        btn.clicked.connect(func)
        if icon:
            iconQP = QtGui.QPixmap(IMAGE_PATH + f"/{icon}.png")
            btn.setIcon(QIcon(iconQP))
            btn.setIconSize(QtCore.QSize(24, 24))

    def buildAll(self):
        """Build all rig components."""
        build.unbuildGuide()
        build.buildGuide()

        if not mc.ls(sl=1, tr=1):
            build.resetMasterCtlShapes()

    def unbuildAll(self):
        """Unbuild all rig components."""
        build.unbuildGuide()
        # self.masterGuide_UI_refresh()

    def loadWeightUI(self):
        skin.loadWeight(loadLatest=self.UI.loadLatest_CB.isChecked())

    def loadTweakUI(self):
        tweak.load_tweak(loadLatest=self.UI.loadLatest_CB.isChecked())

    def loadHelperUI(self):
        helper.loadHelper(loadLatest=self.UI.loadLatest_CB.isChecked())

    def loadProxyUI(self):
        proxy.loadProxy(loadLatest=self.UI.loadLatest_CB.isChecked())

    def loadControlUI(self):
        control.loadControl(loadLatest=self.UI.loadLatest_CB.isChecked())

    def loadReferenceUI(self):
        skeleton.load_reference(loadLatest=self.UI.loadLatest_CB.isChecked())

    def loadTemplateUI(self):
        """Load template for the guide."""
        guide.loadTemplate(loadLatest=self.UI.loadLatest_CB.isChecked())
        # self.masterGuide_UI_refresh()

    def connect_UI(self):
        """Connect UI buttons to their respective functions."""

        self.connect2(self.UI.head_BN, partial(self.loadGuide, "head"), "head")
        self.connect2(self.UI.neck_BN, partial(self.loadGuide, "neck"), "neck")
        self.connect2(self.UI.spineBp_BN, partial(self.loadGuide, "spineBp"), "spineBp")
        self.connect2(self.UI.spineQd_BN, partial(self.loadGuide, "spineQd"), "spineQd")
        self.connect2(self.UI.arm_BN, partial(self.loadGuide, "arm"), "arm")
        self.connect2(self.UI.legPLT_BN, partial(self.loadGuide, "legPLT"), "legPLT")
        self.connect2(
            self.UI.legDGT_UGL_BN, partial(self.loadGuide, "legDGT_UGL"), "legDGT_UGL"
        )
        self.connect2(self.UI.hand_BN, partial(self.loadGuide, "hand"), "hand")
        self.connect2(self.UI.tail_BN, partial(self.loadGuide, "tail"), "tail")
        self.connect2(self.UI.belt_BN, partial(self.loadGuide, "belt"), "belt")
        self.connect2(self.UI.finger_BN, partial(self.loadGuide, "finger"), "finger")
        self.connect2(
            self.UI.simple_BN, partial(self.loadGuide, "simpleFk"), "simpleFk"
        )
        self.connect2(self.UI.bTail_BN, partial(self.loadGuide, "bTail"), "bTail")
        self.connect2(self.UI.wing_BN, partial(self.loadGuide, "wing"), "wing")

        self.connect2(self.UI.human_BN, partial(self.loadGuide, "human"), "human")
        self.connect2(self.UI.equine_BN, partial(self.loadGuide, "equine"), "equine")
        self.connect2(self.UI.canine_BN, partial(self.loadGuide, "canine"), "canine")
        self.connect2(self.UI.avian_BN, partial(self.loadGuide, "avian"), "avian")
        self.connect2(self.UI.snake_BN, partial(self.loadGuide, "snake"), "snake")
        self.connect2(self.UI.spider_BN, partial(self.loadGuide, "spider"), "spider")
        self.connect2(self.UI.fish_BN, partial(self.loadGuide, "fish"), "fish")
        self.connect2(
            self.UI.elephant_BN, partial(self.loadGuide, "elephant"), "elephant"
        )

        # Guide
        # self.connect(self.UI.guide_load_BN, self.loadGuide, ":addClip.png")
        self.connect(self.UI.guide_explore_BN, guide.explore, ":searchEngine.png")
        self.UI.guide_LW.itemDoubleClicked.connect(partial(self.loadGuide, 0))

        # Char Path
        self.connect(self.UI.charPath_BN, self.set_char_path)  # , ":aselect.png")
        self.connect(self.UI.char_explore_BN, self.explore_char, ":searchEngine.png")
        self.UI.charFolder_CBB.currentTextChanged.connect(self.update_char_full_path)

        # From MDL to SK
        self.connect(self.UI.loadModel_BN, model.loadModel, ":teCreateClip.png")

        self.connect(self.UI.loadRef_BN, self.loadReferenceUI, ":teCreateClip.png")
        self.connect(self.UI.saveRef_BN, skeleton.save_reference, ":fileSave.png")

        self.connect(self.UI.loadTemplate_BN, self.loadTemplateUI, ":teCreateClip.png")
        self.connect(self.UI.saveTemplate_BN, guide.saveTemplate, ":fileSave.png")
        self.connect(self.UI.buildAll_BN, self.buildAll, ":play_S.png")
        self.connect(self.UI.unbuildAll_BN, self.unbuildAll, ":smallTrash.png")
        self.connect(self.UI.loadProxy_BN, self.loadProxyUI, ":teCreateClip.png")
        self.connect(self.UI.saveProxy_BN, proxy.saveProxy, ":fileSave.png")

        self.connect(self.UI.loadCtl_BN, self.loadControlUI, ":teCreateClip.png")
        self.connect(self.UI.saveCtl_BN, control.saveControl, ":fileSave.png")
        self.connect(self.UI.loadHlp_BN, self.loadHelperUI, ":teCreateClip.png")
        self.connect(self.UI.saveHlp_BN, helper.saveHelper, ":fileSave.png")

        self.connect(self.UI.loadTwk_BN, self.loadTweakUI, ":teCreateClip.png")
        self.connect(self.UI.saveTwk_BN, tweak.save_tweak, ":fileSave.png")

        self.connect(self.UI.boneAutoBind_BN, self.boneAutoBind, ":bind.png")
        # self.connect(self.UI.boneAutoUnBind_BN, self.boneAutoUnBind, ":smallTrash.png")

        # Weight
        self.connect(self.UI.loadWeight_BN, self.loadWeightUI, ":teCreateClip.png")
        self.connect(self.UI.saveWeight_BN, skin.saveWeight, ":fileSave.png")

        # Weight Edit
        self.connect(self.UI.mirrorSym_BN, partial(skin.mirrorWeightSel, 1))
        self.connect(self.UI.mirrorAsym_BN, partial(skin.mirrorWeightSel, 0))
        self.connect(self.UI.prune_BN, skin.pruneWeightSel)
        self.connect(self.UI.copyWeight_BN, skin.copyWeight)

        # Prepare
        self.connect(self.UI.addRbJnt_neck_BN, partial(self.addSkRefJoint, type=0))
        self.connect(self.UI.addRbJnt_spine_BN, partial(self.addSkRefJoint, type=1))
        self.connect(self.UI.addRbJnt_tail_BN, partial(self.addSkRefJoint, type=2))
        self.connect(self.UI.addRefJnt_BN, partial(self.addSkRefJoint, type=3))

        self.connect(self.UI.scapulaTag_BN, self.scapulaTag)
        self.connect(self.UI.mirrorAllRefJnt_BN, self.mirrorAllRefJnt)
        self.connect(self.UI.toggleClickDrag_BN, self.toggleClickDrag)

        # Skin
        self.connect(self.UI.loadWarpMesh_BN, self.loadWarpMesh)
        self.connect(
            self.UI.templateWarpMesh_BN, self.templateWarpMesh, ":templated.png"
        )
        self.connect(self.UI.isolateProxy_BN, self.isolateProxy)
        self.connect(self.UI.selAllProxy_BN, proxy.selectAllProxy)
        self.connect(self.UI.bindToSelProxy_BN, proxy.bind_to_proxy)

        # Tweak Ctl
        self.connect(self.UI.loadTweakMesh_BN, self.loadTweakMesh)
        self.connect(
            self.UI.templateTweakMesh_BN, self.templateTweakMesh, ":templated.png"
        )
        self.connect(self.UI.createTweak_BN, self.createTweakUI)
        self.connect(self.UI.addTweakJnt_BN, tweak.addTweakGuide)
        self.connect(self.UI.mirrorTweakJnt_BN, tweak.mirrorTweakGuide)
        self.connect(self.UI.isolateTweak_BN, tweak.isolateTweak)
        self.connect(self.UI.toggleTweak_BN, tweak.toggleTweak)
        self.connect(self.UI.delSelTweakCtl_BN, tweak.delSelTweakCtl)
        self.connect(self.UI.delAllTweakCtl_BN, tweak.delAllTweakCtl)

        # Master Guide
        # self.UI.masterGuide_LW.itemDoubleClicked.connect(self.UI_selectMasterGuide)
        # self.UI.masterGuide_LW.itemClicked.connect(self.UI_selectMasterGuide)
        # self.UI.masterGuide_LW.currentItemChanged.connect(self.UI_selectMasterGuide)
        # self.UI.refreshMG_BN.clicked.connect(self.masterGuide_UI_refresh)
        # self.UI.selectAllMG_BN.clicked.connect(self.masterGuide_selectAll)

        # Ctl Tab
        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)
        # self.connect(self.UI.crvShape_breakInst_BN, self.crvShape_breakInst)
        self.connect(self.UI.crvShape_new_BN, self.crvShape_new, ":fileSave.png")
        self.connect(
            self.UI.crvShape_apply_BN, self.crvShape_apply, ":teCreateClip.png"
        )
        self.connect(self.UI.crvShape_save_BN, self.crvShape_save, ":fileSave.png")
        self.connect(self.UI.crvShape_del_BN, self.crvShape_del, ":smallTrash.png")
        icon = ":colorPresetSpectrum.png"
        self.connect(self.UI.assignColor_BN, partial(common.assignColor, 0), icon)
        self.connect(self.UI.assignColor2_BN, partial(common.assignColor, 1), icon)

        self.connect(self.UI.shapeRotaX_BN, partial(control.rotaCVForSel, 90, 0, 0))
        self.connect(self.UI.shapeRotaY_BN, partial(control.rotaCVForSel, 0, 90, 0))
        self.connect(self.UI.shapeRotaZ_BN, partial(control.rotaCVForSel, 0, 0, 90))
        self.connect(self.UI.shapeScaleDn_BN, partial(control.scaleCVForSel, 3 / 4))
        self.connect(self.UI.shapeScaleUp_BN, partial(control.scaleCVForSel, 4 / 3))
        self.connect(self.UI.onTop_BN, partial(control.setOnTopSel, 1))
        self.connect(self.UI.onTopOff_BN, partial(control.setOnTopSel, 0))
        self.connect(self.UI.drop_BN, control.dropSel)
        self.connect(self.UI.lineWidthDefault_BN, partial(control.setLineWidth, -1))
        self.connect(self.UI.lineWidth2_BN, partial(control.setLineWidth, 2))
        self.connect(self.UI.lineWidth3_BN, partial(control.setLineWidth, 3))
        self.connect(self.UI.lineWidth5_BN, partial(control.setLineWidth, 5))

        # Retopo
        self.connect(self.UI.misc_retopo20_BN, partial(model.retopo, faceNum=20))
        self.connect(self.UI.misc_retopo50_BN, partial(model.retopo, faceNum=50))
        self.connect(self.UI.misc_retopo150_BN, partial(model.retopo, faceNum=150))
        self.connect(self.UI.misc_retopo500_BN, partial(model.retopo, faceNum=500))

        # Guide Tool
        self.connect(self.UI.addWSMirrorAttr_BN, common.add_wsMirror_attr)
        self.connect(self.UI.addFlipRXAttr_BN, partial(common.add_flipR_attr, axis="X"))
        self.connect(self.UI.addFlipRYAttr_BN, partial(common.add_flipR_attr, axis="Y"))
        self.connect(self.UI.addFlipRZAttr_BN, partial(common.add_flipR_attr, axis="Z"))
        self.connect(self.UI.misc_buildLineSel_BN, CrvNode.buildLineLinkedSel)
        self.connect(self.UI.importEnvSet_BN, self.import_env_set)

        # Joint Orientation
        self.connect(self.UI.createRefUpLoc_BN, JntNode.createRefUpLoc)
        self.connect(self.UI.reOrient_BN, JntNode.reOrientSel)

        # Misc
        self.connect(self.UI.dsp_normal_BN, partial(control.dspTypeSel, 0))
        self.connect(self.UI.dsp_template_BN, partial(control.dspTypeSel, 1))
        self.connect(self.UI.dsp_reference_BN, partial(control.dspTypeSel, 2))
        self.connect(self.UI.selectTypeBelow_BN, self.getTypeBelowSel)
        self.connect(self.UI.maxInfl_BN, self.setMaxInflSel)

        # Motion Maker
        self.connect(self.UI.addCharDef_BN, mocap.add_char_def_UI)
        self.connect(self.UI.addCustRigMap_BN, mocap.load_custom_rig_mapping)
        self.connect(self.UI.linkCanine_BN, mocap.link_canine)
        self.connect(self.UI.unlinkCanine_BN, mocap.unlink_canine)
        self.connect(self.UI.linkEquine_BN, mocap.link_equine)
        self.connect(self.UI.unlinkEquine_BN, mocap.unlink_equine)
        self.connect(self.UI.bakeMotion_BN, mocap.bake_motion_to_ik)

        # self.masterGuide_UI_refresh()
        self.crvShape_refresh()
        self.updateWarpTargetMesh()
        self.updateTweakTargetMesh()
        self.updateCharPathReloadUI()

    def setMaxInflSel(self):
        """Set maximum influences for selected skinned meshes."""
        selList = mc.ls(sl=1, tr=1)
        if selList:
            for s in selList:
                skin.setMaxInfl(DagNode(s))
                logging.info(f"Set max influences to 8 for {s}")

    def getTypeBelowSel(self):
        """Select objects of a specific type below the selected objects."""
        typeBelow = self.UI.typeBelow_CB.currentText()
        if typeBelow:
            sel = mc.ls(sl=1, tr=1)
            if sel:
                result = common.getObjectBelow(sel, tgtType=typeBelow)
                if result:
                    mc.select(result)

    def updateCharPathReloadUI(self):
        """Update the character path in the UI if it exists."""
        charPath = mc.optionVar(q="charDir")
        if charPath:
            if os.path.isdir(charPath):
                self.update_char_cbb(charPath)
            else:
                mc.optionVar(sv=("charDir", ""))
                # mc.savePrefs()

    def updateWarpTargetMesh(self):
        """Update the button text for loading wrap target mesh."""
        targetWarpMesh = mc.optionVar(q="targetWarpMesh")
        if targetWarpMesh:
            tgt = DagNode(targetWarpMesh)

            text = tgt.name if tgt.exists() and tgt.type == "mesh" else ""
            self.UI.warpMesh_LE.setText(text)

    def updateTweakTargetMesh(self):
        """Update the button text for loading tweak target mesh."""
        targetTweakMesh = mc.optionVar(q="targetTweakMesh")
        if targetTweakMesh:
            tgt = DagNode(targetTweakMesh)

            text = tgt.name if tgt.exists() and tgt.type == "mesh" else ""
            self.UI.tweakMesh_LE.setText(text)

    def isolateProxy(self):
        """Isolate selected proxy mesh in the viewport."""
        targetWarpMesh = mc.optionVar(q="targetWarpMesh")
        if targetWarpMesh:
            tgt = DagNode(targetWarpMesh)
            if tgt.exists() and tgt.type == "mesh":
                proxy.selectAllProxy()
                mc.select(tgt, add=1)
                s = mc.isolateSelect("modelPanel4", q=1, state=1)
                for p in mc.getPanel(type="modelPanel"):
                    mc.isolateSelect(p, state=1 - s)
                    mc.isolateSelect(p, addSelected=1)
                    mc.isolateSelect(p, update=1)
                mc.select(cl=1)

    @common.Undo("loadGuide")
    def loadGuide(self, *args):
        """Load selected guide components."""
        allTgtMG = []

        isM = self.UI.guideSide_M_CB.isChecked()
        isL = self.UI.guideSide_L_CB.isChecked()
        isR = self.UI.guideSide_R_CB.isChecked()

        # items = self.UI.guide_LW.selectedItems()
        # item.text()
        itemText = args[0] if args else None
        if itemText in guide.COMPONENT_DICT:
            names = guide.COMPONENT_DICT[itemText]

            if isM and "M" in names:
                mg = guide.loadGuide(names["M"])
                allTgtMG.append(mg)
            if isL and "L" in names:
                mg = guide.loadGuide(names["L"])
                allTgtMG.append(mg)
            if isR and "R" in names:
                mg = guide.loadGuide(names["R"])
                allTgtMG.append(mg)

        elif itemText == "human":
            self.loadPresetGuide("human_tpl")
        elif itemText == "canine":
            self.loadPresetGuide("canine_tpl")
        elif itemText == "equine":
            self.loadPresetGuide("equine_tpl")
        elif itemText == "avian":
            self.loadPresetGuide("avian_tpl")

        mc.select(allTgtMG)
        common.setView(fit=1)
        mc.setToolTo("moveSuperContext")

    def loadPresetGuide(self, name):
        tpl = os.path.join(PRESET_GUIDE_PATH, name + ".json")
        rigID_dict = file.loadJson(tpl)
        if rigID_dict:
            guide.loadGuideFrIdDict(rigID_dict)

    # def UI_selectMasterGuide(self, item):
    #     """Select item in the scene when clicked in the UI."""
    #     if item:
    #         itemSel = mc.ls(item.text())
    #         if itemSel:
    #             obj = DagNode(itemSel[0])
    #             if obj and obj.exists():
    #                 mc.select(itemSel)
    #                 mc.AttributeEditor()

    # def masterGuide_UI_refresh(self):
    #     """Refresh UI master guide list"""
    #     allMGs = build.collectMasterGuide()
    #     self.UI.masterGuide_LW.clear()
    #     self.UI.masterGuide_LW.addItems([r.name for r in allMGs])

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

    def addSkRefJoint(self, type=0):
        """Add reference joint or rb joint for selected mesh."""
        mc.select(hi=1)
        meshSel = [DagNode(m).parent for m in mc.ls(sl=1, type="mesh")]

        if meshSel:
            jDict = {
                "sf": ["_rbJnt", "_rbJnt", "_rbJnt", "_refJnt"],
                "name": [
                    "auto_bind_neck_grp",
                    "auto_bind_spine_grp",
                    "auto_bind_tail_grp",
                    "auto_bind_side_grp",
                ],
                "color": [Color.PINK, Color.RED, Color.PINK, Color.L_BLUE],
            }
            grp = GrpNode(
                jDict["name"][type],
                p=GrpNode(AUTO_BIND_REF_GRP),
            )
            addedJnts = []
            for mesh in meshSel:
                jnt = JntNode(
                    mesh + jDict["sf"][type], color=jDict["color"][type], p=grp, r=0.5
                )
                jnt.a.t.set(*mesh.o.bbCenter)
                addedJnts.append(jnt)

            # Add extra group to created joints
            # mc.group(addedJnts, n=grp.name + "_#")

            # Add set
            # if rb == 1 and len(addedJnts) > 0:
            #     setNames = ["neck_rbj_set", "spine_rbj_set", "tail_rbj_set"]
            #     mc.sets(addedJnts, n=setNames[type])

    def toggleClickDrag(self):
        """Toggle click and drag selection preference."""
        state = mc.selectPref(clickDrag=not mc.selectPref(clickDrag=1, q=1))
        mc.selectPref(clickDrag=state)

    def scapulaTag(self):
        for sel in mc.ls(sl=1, tr=1):
            DagNode(sel).a.add("scapulaTag", k=0, dv=1, lock=1)

    def mirrorAllRefJnt(self):
        """Mirror all reference joints in the scene."""
        selectedJnt = mc.ls("lf_*_refJnt", type="joint")
        if selectedJnt:
            guide.mirrorCtl(selectedJnt, wsMirror=1)
        else:
            mc.confirmDialog(t="Info", m="No refJnt found.    ", b="OK")

    @common.Undo("boneAutoUnBind")
    def boneAutoUnBind(self):
        """Unbind all meshes in MODEL_GRP by deleting skinClusters."""
        charPath = mc.optionVar(q="charDir")
        if charPath == None or charPath == "":
            mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
            return

        charNameGrp = DagNode(os.path.basename(charPath))
        count = 0

        if charNameGrp.exists():
            selList = mc.ls(charNameGrp)
            tgtMeshes = common.getObjectBelow(selList)
            for mesh in tgtMeshes:
                count += skin.delSkin(mesh)

        mc.confirmDialog(t="Info", m=f"{count} skinCluster deleted.    ", b="OK")

    @common.Undo("boneAutoBind")
    def boneAutoBind(self):
        """Bind all meshes in MODEL_GRP to reference joints and ribbon joints."""
        if not mc.objExists(AUTO_BIND_REF_GRP):
            mc.confirmDialog(t="Info", m=f"{AUTO_BIND_REF_GRP} not found.    ", b="OK")
            return

        charPath = mc.optionVar(q="charDir")
        if charPath == None or charPath == "":
            mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
            return

        # Get all meshes under MODEL_GRP
        mdlGrp = DagNode(MODEL_GRP)
        if mdlGrp.exists():
            selList = mc.ls(mdlGrp)
            tgtMeshes = common.getObjectBelow(selList)
            if not tgtMeshes:
                mc.confirmDialog(
                    t="Info",
                    m=f"No mesh found in the group '{MODEL_GRP}'.    ",
                    b="OK",
                )
                return
        else:
            mc.confirmDialog(
                t="Info",
                m=f'"{MODEL_GRP}" containing bone meshes not found.    ',
                b="OK",
            )
            return

        # Bind meshes to ref joints
        skin.autoBind_refJnts(meshes=tgtMeshes, thld=20)

        # Bind meshes to rb joints & attach rb joints to surface
        skin.autoBind_rbJnts(meshes=tgtMeshes)
        build.boneAutoAttach()
        skeleton.rib_setup()

        mc.hide(AUTO_BIND_REF_GRP)

        # master2_ctl = DagNode("master2_ctl")
        # if master2_ctl.exists():
        # master2_ctl.a.jointVis.set(0)
        # master2_ctl.a.proxyVis.set(0)

        mc.select(cl=1)

    def templateWarpMesh(self):
        """Toggle display type of the target wrap mesh."""
        targetWarpMesh = mc.optionVar(q="targetWarpMesh")
        tgt = DagNode(targetWarpMesh)
        if tgt.exists():
            tgt.dspType = 1 - tgt.dspType

    def templateTweakMesh(self):
        """Toggle display type of the target tweak mesh."""
        targetTweakMesh = mc.optionVar(q="targetTweakMesh")
        tgt = DagNode(targetTweakMesh)
        if tgt.exists():
            tgt.dspType = 1 - tgt.dspType

    def loadWarpMesh(self):
        """Set the selected mesh as the target wrap mesh."""
        selList = mc.ls(sl=1, tr=1)
        if selList:
            tgt = DagNode(selList[0])
            if tgt.type == "mesh":
                mc.optionVar(sv=("targetWarpMesh", tgt.name))
                # mc.savePrefs()
                self.updateWarpTargetMesh()

    def createTweakUI(self):
        """Create tweak setup for the target tweak mesh using selected joints as reference."""
        targetTweakMesh = mc.optionVar(q="targetTweakMesh")
        if not targetTweakMesh:
            mc.confirmDialog(t="Info", m="Target tweak mesh not found.    ", b="OK")
            return

        targetTweakMesh = DagNode(targetTweakMesh)
        if not targetTweakMesh.exists():
            mc.confirmDialog(t="Info", m="Target tweak mesh not found.    ", b="OK")
            return

        sel = mc.ls(sl=1, tr=1)
        guides = common.getObjectBelow(sel, tgtType="curve")
        if guides:
            tweak.createTweak(targetTweakMesh, tgts=guides)
            local_grp = DagNode("tweak_local_grp")
            if local_grp.exists():
                local_grp.hide()
            logging.info(
                f"Tweak created for {targetTweakMesh.name} with {len(guides)} reference joints."
            )
        else:
            mc.confirmDialog(t="Info", m="Select tweak guides.    ", b="OK")

    def loadTweakMesh(self):
        """Set the selected mesh as the target tweak mesh."""
        selList = mc.ls(sl=1, tr=1)
        if selList:
            tgt = DagNode(selList[0])
            if tgt.type == "mesh":
                mc.optionVar(sv=("targetTweakMesh", tgt.name))
                # mc.savePrefs()
                self.updateTweakTargetMesh()

    def import_env_set(self):
        """Import env set if not already present."""
        if not mc.objExists("env_grp"):
            if os.path.isfile(LIGHTING_FILE):
                file.importFile(LIGHTING_FILE)
                # file.openFile(str(LIGHTING_FILE))
                print("Env set loaded.")

    def set_char_path(self):
        """Set character path via file dialog."""
        charPath = mc.optionVar(q="charDir")
        new_charPaths = mc.fileDialog2(
            dialogStyle=2,
            fileMode=3,
            dir=charPath,
            cap="Set Character Library Directory",
            okc="Set",
        )
        if new_charPaths:
            charPath = new_charPaths[0]
            mc.optionVar(sv=("charDir", charPath))
            self.update_char_cbb(charPath)
            # mc.savePrefs() # check if causing slowness in maya opening

    def update_char_full_path(self):
        """Update charFullPath optionVar from charDir + selected folder."""
        charDir = mc.optionVar(q="charDir")
        folder = self.UI.charFolder_CBB.currentText()
        if charDir and folder:
            charFullPath = os.path.join(charDir, folder)
            mc.optionVar(sv=("charFullPath", charFullPath))
        else:
            mc.optionVar(sv=("charFullPath", ""))

    def update_char_cbb(self, path):
        """Update charFolder_CBB combo box with folder names at the given path."""
        self.UI.charFolder_CBB.clear()
        if path and os.path.isdir(path):
            # Get last Folder from charFullPath
            charFullPath = mc.optionVar(q="charFullPath")
            lastFolder = ""
            if charFullPath:
                lastFolder = os.path.basename(charFullPath)

            # Loop get folders in path
            folders = [
                n for n in os.listdir(path) if os.path.isdir(os.path.join(path, n))
            ]
            self.UI.charFolder_CBB.addItems(folders)
            if lastFolder in folders:
                self.UI.charFolder_CBB.setCurrentText(lastFolder)

    def explore_char(self):
        """Open the character path in the file explorer."""
        import subprocess

        charPath = mc.optionVar(q="charFullPath")
        if not charPath:
            mc.confirmDialog(t="Info", m="Character path not set.     ", b="OK")
            return
        path = os.path.realpath(charPath)
        if not os.path.isdir(path):
            mc.confirmDialog(t="Info", m="Character path not found.     ", b="OK")
            return

        subprocess.Popen(f'explorer "{path}"')


global nlRT_win


def showUI():
    """Main function to initialize and show the rigging tools UI."""
    closeUI()

    global nlRT_win
    nlRT_win = MyToolWin()
    # nlRT_win.show(dockable=1, floating=0, area="right")
    nlRT_win.show(dockable=1, floating=0, area="left")
    addScriptJob()

    with open(STYLE_PATH, "r") as f:
        style = f.read()
        nlRT_win.setStyleSheet(style)


def closeUI():
    """Close the rigging tools UI."""
    global nlRT_win
    try:
        nlRT_win.close_window()
    except:
        pass


def addIcon2CurrShelf():
    """Add icon to current shelf"""
    currDir = os.path.dirname(__file__)
    base = os.path.basename(__file__)
    icon = base.replace(".py", ".bmp")

    shelfCmd = (
        "import nl_modules.nl_rigging_tools as nlRT\n"
        + "from importlib import reload\n"
        + "reload(nlRT)\n"
        + "nlRT.showUI()\n"
    )
    shelfLayout = mel.eval(
        "global string $gShelfTopLevel; string $tmp = $gShelfTopLevel;"
    )
    currShelf = mc.tabLayout(shelfLayout, q=1, selectTab=1)

    mc.setParent(currShelf)
    mc.shelfButton(
        c=shelfCmd,
        annotation="nl_rigging_tools",
        label="nl_rigging_tools",
        image=icon,
        image1=icon,
        sourceType="python",
    )
    logging.info("Shelve icon added at the current shelf.")


def addScriptJob():
    """Add a scriptJob to reload menus when something is selected."""
    job_event = "SomethingSelected"
    job_desc = "addScriptJob"

    def reloadMenusAutorig():

        import nl_modules.utils.marking_menu_autorig as mma

        reload(mma)

    # Check existing jobs
    exists = 0
    for job in mc.scriptJob(listJobs=1) or []:
        if job_event in job and job_desc in job:
            exists = 1
            break

    if not exists:
        job_num = mc.scriptJob(ct=[job_event, reloadMenusAutorig], kws=1)
        logging.info(f"Created new scriptJob with ID: {job_num}")


if __name__ == "__main__":
    showUI()
