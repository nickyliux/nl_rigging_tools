import logging
import os
import maya.mel as mel
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
    helper,
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
from nl_modules.nodel.msh_node import MshNode

# --- Paths ---
MOD_DIR = os.path.dirname(nl_modules.__file__)
SHAPE_PATH = os.path.join(MOD_DIR, "build", "shapes")
LIGHT_PATH = os.path.join(MOD_DIR, "build", "others")
PRESET_GUIDE_PATH = os.path.join(MOD_DIR, "build", "presets")
UI_PATH = os.path.join(MOD_DIR, "nl_rigging_tools.ui")
STYLE_PATH = os.path.join(MOD_DIR, "nl_rigging_tools.qss")
LIGHTING_FILE = os.path.join(LIGHT_PATH, "lighting4.ma")
SHADER_FILE = os.path.join(LIGHT_PATH, "bone_SHD.ma")
SK_AUTO_BIND_GRP = "sk_auto_bind_grp"


class MyToolWin(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):
    """Main window for the rigging tools UI."""

    def __init__(self, parent=None):
        """Initialize the main window and load the UI."""
        super(self.__class__, self).__init__(parent=parent)
        self.setWindowTitle("nlRT")
        self.UI = QUiLoader().load(UI_PATH)
        self.setCentralWidget(self.UI)
        self.connect_UI()
        # self.addMenuBar()

    def close_window(self):
        """Close the main window."""
        self.close()

    # def addMenuBar(self):
    #     """Add menu bar to the main window."""
    #     addIcon_QA = QAction(self)
    #     addIcon_QA.setText("&Add Icon to Current Shelf")
    #     addIcon_QA.triggered.connect(addIcon2CurrShelf)

    #     ver_QM = QMenu("&2026.01.21", self)
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

    def buildAll(self):
        """Build all rig components."""
        build.buildSelOrAll(1)
        self.rigNode_UI_refresh()

    def unbuildAll(self):
        """Unbuild all rig components."""
        build.unbuildSelOrAll()
        self.rigNode_UI_refresh()

    def loadTpl(self):
        """Load template for the guide."""
        guide.loadTemplate()
        self.rigNode_UI_refresh()

    def connect_UI(self):
        """Connect UI buttons to their respective functions."""
        # Guide
        self.connect(self.UI.guide_load_BN, self.guide_load)  # , ":openScript.png")
        self.connect(self.UI.guide_explore_BN, guide.explore, ":searchEngine.png")
        self.UI.guide_LW.itemDoubleClicked.connect(partial(self.guide_load, 0))

        # Char Path
        self.connect(self.UI.charPath_BN, self.set_char_path)  # , ":openScript.png")
        self.connect(self.UI.char_explore_BN, self.explore_char, ":searchEngine.png")

        # From MDL to SK
        self.connect(self.UI.loadModel_BN, model.loadModel)  # , ":openScript.png")
        self.connect(self.UI.loadTemplate_BN, self.loadTpl)  # , ":openScript.png")
        self.connect(self.UI.saveTemplate_BN, guide.saveTemplate)  # , ":fileSave.png")
        self.connect(self.UI.buildAll_BN, self.buildAll)  # , ":play_S.png")
        self.connect(self.UI.unbuildAll_BN, self.unbuildAll)  # , ":smallTrash.png")
        self.connect(self.UI.loadProxy_BN, proxy.loadProxy)  # , ":openScript.png")
        self.connect(self.UI.saveProxy_BN, proxy.saveProxy)  # , ":fileSave.png")
        self.connect(self.UI.genProxy_BN, proxy.genProxyForSet)  # , ":play_S.png")
        self.connect(self.UI.loadWrapTargetMesh_BN, self.loadWrapTargetMesh)
        self.connect(self.UI.templateTarget_BN, self.templateTarget, ":templated.png")
        self.connect(self.UI.selAllProxyGrp_BN, proxy.selectAllProxy)
        # , ":aselect.png")
        self.connect(self.UI.bindToSelProxy_BN, proxy.bind_to_proxy)  # , ":bind.png")
        self.connect(self.UI.toggleProxy_BN, proxy.toggleVis)  # , ":visible.png")
        self.connect(self.UI.loadCtl_BN, control.loadCtl)  # , ":openScript.png")
        self.connect(self.UI.saveCtl_BN, control.saveCtl)  # , ":fileSave.png")
        self.connect(self.UI.loadHlp_BN, helper.loadHlp)  # , ":openScript.png")
        self.connect(self.UI.saveHlp_BN, helper.saveHlp)  # , ":fileSave.png")
        self.connect(self.UI.boneAutoBind_BN, self.boneAutoBind)  # , ":bind.png")
        self.connect(self.UI.boneAutoUnBind_BN, self.boneAutoUnBind)  # , ":unbind.png")

        # Weight
        self.connect(self.UI.loadWeight_BN, skin.loadWeight)  # , ":openScript.png")
        self.connect(self.UI.saveWeight_BN, skin.saveWeight)  # , ":fileSave.png")

        # Weight Edit
        self.connect(self.UI.mirrorSym_BN, partial(skin.mirrorWeightSel, 1))
        self.connect(self.UI.mirrorAsym_BN, partial(skin.mirrorWeightSel, 0))
        self.connect(self.UI.prune_BN, skin.pruneWeightSel)
        self.connect(self.UI.copyWeight_BN, skin.copyWeight)

        # RigNode
        self.UI.rigNode_LW.itemDoubleClicked.connect(self.rigNode_LW_dblClicked)
        self.UI.rigNode_LW.itemClicked.connect(self.rigNode_LW_clicked)
        self.UI.rigNode_refresh_BN.clicked.connect(self.rigNode_UI_refresh)
        self.UI.rigNode_selectAll_BN.clicked.connect(self.rigNode_selectAll)

        # Ctl Tab
        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)
        # self.connect(self.UI.crvShape_breakInst_BN, self.crvShape_breakInst)
        self.connect(self.UI.crvShape_new_BN, self.crvShape_new)  # , ":fileNew.png")
        self.connect(
            self.UI.crvShape_apply_BN, self.crvShape_apply
        )  # , ":openScript.png")
        self.connect(self.UI.crvShape_save_BN, self.crvShape_save)  # , ":fileSave.png")
        self.connect(self.UI.crvShape_del_BN, self.crvShape_del)  # , ":smallTrash.png")
        icon = ":colorPresetSpectrum.png"
        self.connect(
            self.UI.assignColor_BN, partial(common.assignColor, preset=0), icon
        )
        self.connect(
            self.UI.assignColor2_BN, partial(common.assignColor, preset=1), icon
        )
        # icon = ":colorPresetGrayscale.png"
        # self.connect(self.UI.assignShd2_BN, partial(common.assignShd, 1), icon)

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
        # self.connect(self.UI.addBladeAttr_BN, self.addBladeAttr)

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

        # Misc
        self.connect(self.UI.dsp_normal_BN, partial(control.dspTypeSel, 0))
        self.connect(self.UI.dsp_template_BN, partial(control.dspTypeSel, 1))
        self.connect(self.UI.dsp_reference_BN, partial(control.dspTypeSel, 2))
        self.connect(self.UI.selectTypeBelow_BN, self.getTypeBelowSel)
        self.connect(self.UI.maxInfl_BN, self.setMaxInflSel)

        self.rigNode_UI_refresh()
        self.crvShape_refresh()
        self.updateLoadWrapTargetMesh()
        self.updateCharPath()

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

    def updateCharPath(self):
        """Update the character path in the UI if it exists."""
        # Set character path if exists
        charPath = mc.optionVar(q="charPath")
        if charPath:
            if os.path.isdir(charPath):
                self.UI.charPath_LE.setText(charPath)
            else:
                mc.optionVar(sv=("charPath", ""))
                mc.savePrefs()

    def updateLoadWrapTargetMesh(self):
        """Update the button text for loading wrap target mesh."""
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        if targetWrapMesh:
            tgt = DagNode(targetWrapMesh)
            if tgt.exists() and tgt.type == "mesh":
                self.UI.loadWrapTargetMesh_BN.setText(f"[ {tgt.name} ]")
            else:
                self.UI.loadWrapTargetMesh_BN.setText("<< Load Wrap Mesh >>")

    @common.Undo("guide_load")
    def guide_load(self, *args):
        """Load selected guide components."""
        items = self.UI.guide_LW.selectedItems()
        allTgtMG = []
        SIDE_OFFSET = 20

        isM = self.UI.guideSide_M_CB.isChecked()
        isL = self.UI.guideSide_L_CB.isChecked()
        isR = self.UI.guideSide_R_CB.isChecked()

        if items:
            for item in items:
                itemText = item.text()
                if itemText in guide.COMPONENT_DICT:
                    names = guide.COMPONENT_DICT[item.text()]

                    if isM and "M" in names:
                        mg = guide.loadGuide(names["M"], 0)
                        allTgtMG.append(mg)
                    if isL and "L" in names:
                        mg = guide.loadGuide(names["L"], SIDE_OFFSET)
                        allTgtMG.append(mg)
                    if isR and "R" in names:
                        mg = guide.loadGuide(names["R"], -SIDE_OFFSET)
                        allTgtMG.append(mg)

                elif itemText == "biped":
                    self.loadPresetGuide("biped_tpl")
                elif itemText == "quad / planti":
                    self.loadPresetGuide("quad_planti_tpl")
                elif itemText == "quad / digiti":
                    self.loadPresetGuide("quad_digiti_tpl")
                elif itemText == "quad / unguli":
                    self.loadPresetGuide("quad_unguli_tpl")

            self.rigNode_UI_refresh()
            mc.select(allTgtMG)
            mc.setToolTo("moveSuperContext")
            common.setVP(fit=1)

    def loadPresetGuide(self, name):
        tpl = os.path.join(PRESET_GUIDE_PATH, name + ".json")
        rigID_dict = file.loadJson(tpl)
        if rigID_dict:
            guide.loadGuideFrIdDict(rigID_dict)

    def rigNode_LW_clicked(self, item):
        """Select rigNode in the scene when clicked in the UI."""
        itemSel = mc.ls(item.text())
        if itemSel:
            mc.select(itemSel)

    def rigNode_LW_dblClicked(self, item):
        """Show attribute editor for rigNode"""
        itemSel = mc.ls(item.text())
        if itemSel:
            mg = DagNode(itemSel[0]).a.master_guide.inConnNode
            # mg = DagNode(itemSel[0])
            if mg and mg.exists():
                mc.select(mg)
                mc.AttributeEditor()

    def rigNode_UI_refresh(self):
        """Refresh UI rigNode list"""
        rigNodes = build.getRigNodes_all()
        self.UI.rigNode_LW.clear()
        self.UI.rigNode_LW.addItems([r.name for r in rigNodes])

    def rigNode_selectAll(self):
        """Select all rig nodes"""
        rigNodes = build.getRigNodes_all()
        if rigNodes:
            mc.select(rigNodes)

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
            grp = GrpNode(SK_AUTO_BIND_GRP)
            for mesh in meshSel:
                sf = "_rbJnt" if rb else "_refJnt"
                color = Color.RED if rb else Color.WHITE
                jnt = JntNode(mesh + sf, color=color, p=grp, r=0.3)
                jnt.a.t.set(*mesh.o.bbCenter)

        mc.select(cl=1)

    def mirrorAllRefJnt(self):
        """Mirror all reference joints in the scene."""
        selectedJnt = mc.ls("lf_*_refJnt", type="joint")
        if selectedJnt:
            guide.mirrorRef(selectedJnt, wsMirror=1)
        else:
            mc.confirmDialog(t="Info", m="No refJnt found.    ", b="OK")

    def autoBind_refJnts(self, meshes=None, thld=999):
        """Bind meshes to the closest reference joints."""
        JNT_SET = "auto_bind_sk_set"

        if not DagNode(JNT_SET).exists():
            raise ValueError(f"Set {JNT_SET} NOT found for auto skin.")

        jntList = set(mc.sets(JNT_SET, q=1))
        jntsScap = set([n for n in jntList if "scapula" in DagNode(n).name.lower()])
        jntsNoScap = jntList - jntsScap

        meshesScap = [n for n in meshes if "scapula" in DagNode(n).name.lower()]
        meshesNoScap = set(meshes) - set(meshesScap)

        skin.skinRefJnts(meshes=meshesNoScap, jnts=jntsNoScap, thld=thld)
        skin.skinRefJnts(meshes=meshesScap, jnts=jntsScap, thld=thld)

    @common.Undo("boneAutoUnBind")
    def boneAutoUnBind(self):
        charPath = mc.optionVar(q="charPath")
        if charPath == None or charPath == "":
            mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
            return

        charName = os.path.basename(charPath)
        count = 0
        mdlGrp = DagNode(charName)
        if mdlGrp.exists():
            selList = mc.ls(mdlGrp)
            tgtMeshes = common.getObjectBelow(selList)
            for mesh in tgtMeshes:
                count += skin.delSkin(mesh)

        mc.confirmDialog(t="Info", m=f"{count} skinCluster deleted.    ", b="OK")

    @common.Undo("boneAutoBind")
    def boneAutoBind(self):
        """Bind all meshes in MODEL_GRP to reference joints and ribbon joints."""

        if not mc.objExists(SK_AUTO_BIND_GRP):
            mc.confirmDialog(t="Info", m=f"{SK_AUTO_BIND_GRP} NOT found.    ", b="OK")
            return

        charPath = mc.optionVar(q="charPath")
        if charPath == None or charPath == "":
            mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
            return

        charName = os.path.basename(charPath)
        mdlGrp = DagNode(charName)
        if mdlGrp.exists():
            selList = mc.ls(mdlGrp)
            tgtMeshes = common.getObjectBelow(selList)
            if not tgtMeshes:
                mc.confirmDialog(
                    t="Info",
                    m=f"No mesh found under group '{charName}'.    ",
                    b="OK",
                )
                return
        else:
            mc.confirmDialog(
                t="Info", m=f"Model group '{charName}' not found.    ", b="OK"
            )
            return

        # Bind meshes to ref joints
        self.autoBind_refJnts(meshes=tgtMeshes, thld=15)

        # Bind meshes to rb joints & attach rb joints to surface
        skin.skinRbJnts(meshes=tgtMeshes)
        build.autoAttach()

        mc.hide(SK_AUTO_BIND_GRP)
        mc.select(cl=1)

    def templateTarget(self):
        """Toggle display type of the target wrap mesh."""
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        tgt = DagNode(targetWrapMesh)
        if tgt.exists():
            tgt.dspType = 1 - tgt.dspType

    def loadWrapTargetMesh(self):
        """Load target mesh for wrap deformer."""
        selList = mc.ls(sl=1, tr=1)
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        tgt = DagNode(targetWrapMesh)

        if selList:
            mc.optionVar(sv=("targetWrapMesh", selList[0]))
            mc.savePrefs()
            self.updateLoadWrapTargetMesh()
        elif tgt.exists():
            tgt.dspType = 0
            mc.select(tgt)

    def misc_importEnvAndShd(self):
        """Import environment and shader files if not already present."""
        if not mc.objExists("env_grp"):
            if os.path.isfile(LIGHTING_FILE):
                file.importFile(LIGHTING_FILE)
        if not mc.objExists("bone_SHD"):
            if os.path.isfile(SHADER_FILE):
                file.importFile(SHADER_FILE)

    def set_char_path(self):
        """Set character path via file dialog."""
        charPath = self.UI.charPath_LE.text()
        new_charPaths = mc.fileDialog2(
            dialogStyle=2,
            fileMode=3,
            dir=charPath,
            cap="Select Character Path",
            okc="Select",
        )
        if new_charPaths:
            charPath = new_charPaths[0]
            self.UI.charPath_LE.setText(charPath)
            mc.optionVar(sv=("charPath", charPath))
            mc.savePrefs()

    def explore_char(self):
        """Open the character path in the file explorer."""
        import subprocess

        charPath = self.UI.charPath_LE.text()
        if not charPath:
            mc.confirmDialog(t="Info", m="Character path not set.     ", b="OK")
            return
        path = os.path.realpath(charPath)
        if not os.path.isdir(path):
            mc.confirmDialog(t="Info", m=f"Character path NOT found.     ", b="OK")
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


mc.scriptJob(permanent=1, runOnce=1, event=["SelectionChanged", "reloadMenusAutorig"])

if __name__ == "__main__":
    showUI()
