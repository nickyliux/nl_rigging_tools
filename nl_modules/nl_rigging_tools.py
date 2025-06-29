"""
File: nl_rigging_tools.py
Author: Nicky Liu
Date: 2024-06-23
Version: 0.1.0
Contact: nickyliux@gmail.com / www.nickyliu.com
Description: Main file to load Qt UI file and connect functions
"""

import os
import logging
import maya.cmds as mc
import maya.mel as mel
from functools import partial
from importlib import reload
import nl_modules
from nl_modules.utils import (
    reload_all,
    common,
    file,
    guide,
    log,
    modeling,
    build,
    proxy,
    control,
)
from nl_modules.utils.color import Color

reload(reload_all)

from PySide2 import QtWidgets
from PySide2.QtGui import QIcon
from PySide2.QtUiTools import QUiLoader

# from PyQt5.QtWidgets import QMenuBar
from PySide2.QtWidgets import QMenuBar, QMenu, QAction

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.msh_node import MshNode

#
#   Must keep for valid call eval(cls)
#
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

log.updateRootLogger()

MOD_DIR = os.path.dirname(nl_modules.__file__)

IMAGES_PATH = MOD_DIR + "/images"
SHAPE_PATH = MOD_DIR + "/build/shapes"
PATH_LIGHT = MOD_DIR + "/build/others"
MAYA_TPL_DIR = MOD_DIR + "/build/components"
PATH_UI = MOD_DIR + "/nl_rigging_tools.ui"
BIND_JNT_SET = "bind_jnt_set"
MODEL_GRP = "mdl_grp"
PATH_MODEL = "D:/_PROJECT/GIT/nl_rigging_tools_examples"

from contextlib import ContextDecorator


class Undo(ContextDecorator):
    def __init__(self, name=None):
        self.name = name

    def __enter__(self):
        mc.undoInfo(openChunk=True, infinity=True, chunkName=self.name)

    def __exit__(self, exc_type, exc_value, traceback):
        mc.undoInfo(closeChunk=True)


class MainWindow(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        logging.info("load " + PATH_UI)
        self.UI = QUiLoader().load(PATH_UI)

        self.setWindowTitle("nlRT 0.1.0")
        self.setCentralWidget(self.UI)
        self.setGeometry(0, 0, 233, 700)
        # self.addMenuBar()
        self.connect_UI()

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

    def connect_UI(self):
        #
        #   Pick mask & click drag
        #
        self.UI.pickMaskCrv_BN.clicked.connect(self.pickMaskCrv_BN_clicked)
        self.UI.pickMaskCrv_BN.setIcon(QIcon(":pickCurveObj.png"))
        self.UI.pickMaskMsh_BN.clicked.connect(self.pickMaskMsh_BN_clicked)
        self.UI.pickMaskMsh_BN.setIcon(QIcon(":pickGeometryObj.png"))
        self.UI.pickMaskAll_BN.clicked.connect(self.pickMaskAll_BN_clicked)
        self.UI.clickDrag_CB.stateChanged.connect(self.clickDrag_CB_stateChanged)
        if mc.selectPref(clickDrag=1, q=1):
            self.UI.clickDrag_CB.setChecked(1)
        #
        #   Component
        #
        self.UI.component_LW.itemDoubleClicked.connect(self.component_load_BN_clicked)
        self.UI.component_load_BN.clicked.connect(self.component_load_BN_clicked)
        self.UI.component_load_BN.setIcon(QIcon(":openScript.png"))
        self.UI.component_explore_BN.clicked.connect(self.component_explore_BN_clicked)
        self.UI.component_explore_BN.setIcon(QIcon(":searchEngine.png"))
        #
        #   RigNode
        #
        self.UI.rigNode_LW.itemDoubleClicked.connect(self.rigNode_LW_dblClicked)

        # self.UI.component_delete_BN.clicked.connect(build.deleteSelOrAll)
        # self.UI.component_delete_BN.setIcon(QIcon(":smallTrash.png"))
        # self.UI.component_copy_BN.clicked.connect(guide.copyGuideSel)
        # self.UI.component_copy_BN.setIcon(QIcon(":copySkinWeight.png"))

        # self.UI.template_new_BN.clicked.connect(self.template_new_BN_clicked)
        # self.UI.template_new_BN.setIcon(QIcon(":fileNew.png"))
        # self.UI.template_del_BN.clicked.connect(self.template_del_BN_clicked)
        # self.UI.template_del_BN.setIcon(QIcon(":smallTrash.png"))
        # self.UI.viewSkel_BN.clicked.connect(self.viewSkel_BN_clicked)
        # self.UI.viewSkel_BN.setIcon(QIcon(":searchEngine.png"))
        # self.UI.importSkel_BN.clicked.connect(self.importSkel_BN_clicked)
        # self.UI.importSkel_BN.setIcon(QIcon(":polySphere.png"))
        # self.UI.preset_openSkel_BN.clicked.connect(self.preset_openSkel_BN_clicked)
        # self.UI.preset_refresh_BN.clicked.connect(self.preset_refresh_BN_clicked)
        # self.UI.preset_refresh_BN.setIcon(QIcon(":refresh.png"))
        # self.UI.preset_LW.itemDoubleClicked.connect(self.loadTemplate_BN_dbClicked)
        # ------------------------------
        # self.UI.rigNode_refresh_BN.clicked.connect(self.rigNode_refresh_BN_clicked)
        # self.UI.rigNode_refresh_BN.setIcon(QIcon(":refresh.png"))

        self.UI.loadModel_BN.clicked.connect(self.importModel)
        self.UI.loadModel_BN.setIcon(QIcon(":openScript.png"))
        #
        #   Template
        #
        self.UI.loadTemplate_BN.clicked.connect(guide.loadTemplate)
        self.UI.loadTemplate_BN.setIcon(QIcon(":openScript.png"))
        self.UI.saveTemplate_BN.clicked.connect(guide.saveTemplate)
        self.UI.saveTemplate_BN.setIcon(QIcon(":fileSave.png"))
        #
        #   Build
        #
        self.UI.component_buildAll_BN.clicked.connect(build.buildSelOrAll)
        self.UI.component_buildAll_BN.setIcon(QIcon(":play_S.png"))
        self.UI.component_unbuildAll_BN.clicked.connect(build.unbuildSelOrAll)
        self.UI.component_unbuildAll_BN.setIcon(QIcon(":smallTrash.png"))
        #
        #   Control
        #
        self.UI.saveCtl_BN.setIcon(QIcon(":fileSave.png"))
        self.UI.saveCtl_BN.clicked.connect(control.saveCtl)
        self.UI.loadCtl_BN.setIcon(QIcon(":openScript.png"))
        self.UI.loadCtl_BN.clicked.connect(control.loadCtl)
        #
        #   Proxy
        #
        self.UI.loadProxy_BN.clicked.connect(proxy.loadProxy)
        self.UI.loadProxy_BN.setIcon(QIcon(":openScript.png"))
        self.UI.saveProxy_BN.clicked.connect(proxy.saveProxy)
        self.UI.saveProxy_BN.setIcon(QIcon(":fileSave.png"))

        self.UI.genProxy_BN.clicked.connect(self.genProxy)
        self.UI.genProxy_BN.setIcon(QIcon(":play_S.png"))
        self.UI.selAllProxyGrp_BN.clicked.connect(self.selAllProxyGrp)
        self.UI.selAllProxyGrp_BN.setIcon(QIcon(":aselect.png"))
        self.UI.showHideProxy_BN.clicked.connect(self.showHideProxy)
        self.UI.showHideProxy_BN.setIcon(QIcon(":visible.png"))
        self.UI.refProxy_BN.clicked.connect(self.refProxy)
        self.UI.refProxy_BN.setIcon(QIcon(":templated.png"))
        self.UI.wrapProxy_BN.clicked.connect(self.wrapProxy)
        self.UI.wrapProxy_BN.setIcon(QIcon(":shrinkwrap.png"))
        self.UI.resetProxy_BN.clicked.connect(self.resetProxy)
        self.UI.resetProxy_BN.setIcon(QIcon(":refresh.png"))
        self.UI.mirrorProxy_BN.clicked.connect(self.mirrorProxy)
        self.UI.mirrorProxy_BN.setIcon(QIcon(":polyMirrorGeometry.png"))
        self.UI.loadWrapTargetMesh_BN.clicked.connect(self.loadWrapTargetMesh)
        self.UI.templateTarget_BN.clicked.connect(self.templateTarget)
        self.UI.templateTarget_BN.setIcon(QIcon(":templated.png"))
        self.UI.bindUsingProxy_BN.clicked.connect(self.bindUsingProxy)
        #
        #   bind
        #
        self.UI.boneAutoBind_BN.clicked.connect(self.boneAutoBind)
        self.UI.delSkinForAllMeshes_BN.clicked.connect(self.delSkinForAllMeshes)
        #
        #   ctl
        #
        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)

        self.UI.crvShape_removeFrInst_BN.clicked.connect(
            self.crvShape_removeFrInst_BN_clicked
        )
        self.UI.crvShape_new_BN.clicked.connect(self.crvShape_new_BN_clicked)
        self.UI.crvShape_new_BN.setIcon(QIcon(":fileNew.png"))
        self.UI.crvShape_apply_BN.clicked.connect(self.crvShape_apply_BN_clicked)
        self.UI.crvShape_apply_BN.setIcon(QIcon(":openScript.png"))
        self.UI.crvShape_save_BN.clicked.connect(self.crvShape_save_BN_clicked)
        self.UI.crvShape_save_BN.setIcon(QIcon(":fileSave.png"))
        self.UI.crvShape_del_BN.clicked.connect(self.crvShape_del_BN_clicked)
        self.UI.crvShape_del_BN.setIcon(QIcon(":smallTrash.png"))

        self.UI.shapeRotaX_BN.clicked.connect(partial(control.rotaCVForSel, 90, 0, 0))
        self.UI.shapeRotaY_BN.clicked.connect(partial(control.rotaCVForSel, 0, 90, 0))
        self.UI.shapeRotaZ_BN.clicked.connect(partial(control.rotaCVForSel, 0, 0, 90))
        self.UI.shapeScaleUp_BN.clicked.connect(partial(control.scaleCVForSel, 4 / 3))
        self.UI.shapeScaleDn_BN.clicked.connect(partial(control.scaleCVForSel, 3 / 4))
        self.UI.onTop_BN.clicked.connect(control.setOnTopSel)
        self.UI.drop_BN.clicked.connect(control.dropSel)
        # self.UI.crvShape_refresh_BN.clicked.connect(self.crvShape_refresh_BN_clicked)
        # self.UI.crvShape_refresh_BN.setIcon(QIcon(":refresh.png"))
        # self.UI.leadColor_0_BN.clicked.connect(partial(self.setLeadColor, 0))
        # self.UI.leadColor_1_BN.clicked.connect(partial(self.setLeadColor, 1))
        # self.UI.refColor_0_BN.clicked.connect(partial(self.setRefColor, 0))
        # self.UI.refColor_1_BN.clicked.connect(partial(self.setRefColor, 1))
        #
        #   prepare
        #
        self.UI.joint_addForSpine_BN.clicked.connect(
            partial(self.joint_add_BN_clicked, rb=1)
        )
        self.UI.joint_addForSpine_BN.setIcon(QIcon(":addClip.png"))

        self.UI.joint_addForRef_BN.clicked.connect(
            partial(self.joint_add_BN_clicked, rb=0)
        )
        self.UI.joint_addForRef_BN.setIcon(QIcon(":addClip.png"))
        self.UI.mirrorAllRefJnt_BN.clicked.connect(self.mirrorAllRefJnt_BN_clicked)
        self.UI.mirrorAllRefJnt_BN.setIcon(QIcon(":kinMirrorJoint_S.png"))
        self.UI.addBladeAttr_BN.clicked.connect(self.addBladeAttr_BN_clicked)

        self.UI.misc_retopo20_BN.clicked.connect(partial(modeling.retopo, faceNum=20))
        self.UI.misc_retopo50_BN.clicked.connect(partial(modeling.retopo, faceNum=50))
        self.UI.misc_retopo150_BN.clicked.connect(partial(modeling.retopo, faceNum=150))
        self.UI.misc_retopo500_BN.clicked.connect(partial(modeling.retopo, faceNum=500))

        self.UI.addMirrorAttr_BN.clicked.connect(self.addMirrorAttr)

        self.UI.misc_buildLineSel_BN.clicked.connect(CrvNode.buildLineLinkedSel)
        self.UI.misc_importEnvAndShd_BN.clicked.connect(
            self.misc_importEnvAndShd_BN_clicked
        )

        self.UI.assignPresetColor_BN.clicked.connect(self.assignPresetColor)

        # self.preset_refresh_BN_clicked()
        self.rigNode_refresh_BN_clicked()
        self.crvShape_refresh_BN_clicked()
        self.updateLoadWrapTargetMesh()

    def addMirrorAttr(self):
        common.add_mirror_attr(mc.ls(sl=1, tr=1))

    def assignPresetColor(self):
        common.assignPresetShd(mc.ls(sl=1, tr=1))

    def updateLoadWrapTargetMesh(self):
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        if targetWrapMesh:
            tgt = DagNode(targetWrapMesh)
            if tgt.exists() and tgt.type == "mesh":
                self.UI.loadWrapTargetMesh_BN.setText(f"< {tgt.name} >")

    def clickDrag_CB_stateChanged(self, state):
        mc.selectPref(clickDrag=state)

    def pickMaskCrv_BN_clicked(self):
        mel.eval('setObjectPickMask "All" 0')
        mel.eval('setObjectPickMask "Curve" 1')

    def pickMaskMsh_BN_clicked(self):
        mel.eval('setObjectPickMask "All" 0')
        mel.eval('setObjectPickMask "Surface" 1')

    def pickMaskAll_BN_clicked(self):
        mel.eval('setObjectPickMask "All" 1')

    def component_load_BN_doubleClicked(self, item):
        names = guide.COMPONENT_DICT[item.text()]
        guide.loadGuide(names)

    def component_load_BN_clicked(self):
        items = self.UI.component_LW.selectedItems()
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
            self.rigNode_refresh_BN_clicked()
            common.setViewport(fit=1)

    def component_explore_BN_clicked(self):
        import subprocess

        path = os.path.realpath(MAYA_TPL_DIR)
        subprocess.Popen(f'explorer "{path}"')

    #     items = self.UI.preset_LW.selectedItems()
    #     if items:
    #         itemText = items[0].text()
    #         self.load_preset(itemText)

    # def loadTemplate_BN_dbClicked(self, item):
    #     itemText = item.text()
    #     self.load_preset(itemText)

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

    def importModel(self):
        tgtFile = mc.fileDialog2(
            fileFilter="*.ma", dialogStyle=2, fileMode=1, dir=PATH_MODEL
        )
        if tgtFile:
            file.importFile(tgtFile[0])
            common.setViewport(fit=1)

    def rigNode_LW_dblClicked(self, item):
        """Show attribute editor for rigNode"""
        sel = mc.ls(item.text())
        if sel:
            mc.select(sel)
            mc.AttributeEditor()

    def rigNode_refresh_BN_clicked(self):
        rigNodes = mc.ls("*RGN", type="script")
        self.UI.rigNode_LW.clear()
        self.UI.rigNode_LW.addItems(rigNodes)

    def crvShape_LW_dblClicked(self, item):
        """Add curve object"""
        crv = CrvNode(item.text() + "#", shape=item.text())
        mc.select(crv)
        #     items = self.UI.crvShape_LW.selectedItems()
        #     if items:
        #         itemText = items[0].text()
        #         return CrvNode(itemText, shape=itemText)

    def crvShape_save_BN_clicked(self):
        """Save selected shape to highlighted"""
        sel = mc.ls(sl=1, tr=1)
        if sel:
            tgt = CrvNode(sel[0])
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

    def crvShape_new_BN_clicked(self):
        sel = mc.ls(sl=1, tr=1)
        if sel:
            tgt = DagNode(sel[0])
            if tgt.type == "nurbsCurve":
                result = mc.promptDialog(
                    t="New Shape", m="Enter name:", b=["OK", "Cancel"], db="OK"
                )
                if result == "OK":
                    newName = mc.promptDialog(q=1, t=1)
                    CrvNode(tgt) >> newName
                    self.crvShape_refresh_BN_clicked()

    def crvShape_del_BN_clicked(self):
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
                self.crvShape_refresh_BN_clicked()

    def crvShape_removeFrInst_BN_clicked(self):
        sel = mc.ls(sl=1, tr=1)
        if sel:
            CrvNode(sel[0]).uninstanceFromOthers()

    @Undo("crvShape_apply_BN_clicked")
    def crvShape_apply_BN_clicked(self):
        """Copy item shape as instance to selected"""
        sel = mc.ls(sl=1, tr=1)
        items = self.UI.crvShape_LW.selectedItems()
        if sel and items:
            itemText = items[0].text()
            shape = CrvNode(itemText, shape=itemText)
            shape.copy_shape_as_inst(sel, keepSrc=0)
            mc.select(sel)

    def crvShape_refresh_BN_clicked(self):
        """Refresh crvShape_LW"""
        self.UI.crvShape_LW.clear()
        items = [
            f.split(".")[0]
            for f in os.listdir(SHAPE_PATH)
            if os.path.isfile(SHAPE_PATH + "/" + f)
        ]
        self.UI.crvShape_LW.addItems(items)

    def joint_add_BN_clicked(self, rb=0):
        """Add ribbon / reference joint at the position of selected mesh.
        The joints will be parented to 'jnt_grp'"""
        mc.select(hi=1)
        sel = mc.ls(sl=1, type="mesh")
        meshSel = []
        [meshSel.append(DagNode(s).parent) for s in sel]

        if meshSel:
            jnt_grp = GrpNode("jnt_grp")
            for sN in meshSel:
                sf = "_rbJnt" if rb else "_refJnt"
                color = Color.RED if rb else Color.WHITE
                jnt = JntNode(sN + sf, color=color, p=jnt_grp)
                jnt.a.t.set(*sN.o.bbCenter)
        mc.select(cl=1)

    def addBladeAttr_BN_clicked(self):
        for s in mc.ls(sl=1, tr=1) or []:
            DagNode(s).a.add("isBlade", lock=1, dv=1)

    def mirrorAllRefJnt_BN_clicked(self):
        """Mirror left reference(*_refJnt) joints"""
        sel = mc.ls("lf_*_refJnt", type="joint")
        if sel:
            guide.mirrorGuideAttr(sel, wsMirror=1)
        else:
            mc.confirmDialog(t="Info", m="No refJnt found.    ", b="OK")

    def bindRefJnts(self, meshes, searchSet=None, thld=5, uiPB=None):
        """
        As the scapular joint is overlapping the upper leg joint,
        attribute "isBlade" is used to identify what is blade which is not.

        So
        1. meshes with isBlade is skinned to closest _scapular bind joints
        2. other meshes is skinned to closest non _scapular bind joints

        """
        from nl_modules.utils import skin

        if not DagNode(searchSet).exists():
            logging.info(f"Set {searchSet} NOT found for auto skin.")
            return

        jntList = set(mc.sets(searchSet, q=1))
        jntsScap = set([o for o in jntList if o.endswith("_scapular")])
        jntsNoScap = jntList - jntsScap

        meshesScap = [o for o in meshes if o.a["isBlade"].exists()]
        meshesNoScap = set(meshes) - set(meshesScap)

        skin.skinRefJnts(meshesNoScap, jntsNoScap, thld=thld, uiPB=uiPB)
        skin.skinRefJnts(meshesScap, jntsScap, thld=thld, uiPB=uiPB)

    @Undo("boneAutoBind")
    def boneAutoBind(self):

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
        #
        #   search the attr rbSrf & rbJSet for each rigNode and attach joints
        #   to surface with 'closest point on surface' node
        #
        build.autoAttachJntToSurf()
        common.setViewport()
        mc.select(cl=1)

    def delSkinForAllMeshes(self):
        from nl_modules.nodel.msh_node import MshNode

        sel = mc.ls(type="mesh") or []
        count = 0
        for s in sel:
            count += MshNode(s).delSkin()
        logging.info(f"{count} skinClusters deleted.")

    def bindUsingProxy(self):
        pass

    def templateTarget(self):
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        tgt = DagNode(targetWrapMesh)
        if tgt.exists():
            tgt.dspType = 1 - tgt.dspType

    def loadWrapTargetMesh(self):
        sel = mc.ls(sl=1)
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")
        tgt = DagNode(targetWrapMesh)
        if tgt.exists():
            tgt.dspType = 0
        if sel:
            mc.optionVar(sv=("targetWrapMesh", sel[0]))
            self.updateLoadWrapTargetMesh()
        else:
            mc.select(tgt)

    def genProxy(self):
        proxy.genProxyMesh()

    def selAllProxyGrp(self):
        PRX = DagNode("PRX")
        if PRX.exists():
            allBelow = PRX.children
            if allBelow:
                mc.select(allBelow)

        # mc.select(mc.ls("*_pxGeo") or [])

    def showHideProxy(self):
        m2 = DagNode("master2_ctl")
        if m2.exists():
            m2.a.proxyVis.set(1 - m2.a.proxyVis.get())

    def refProxy(self):
        for s in mc.ls("*_pxGeo") or []:
            DagNode(s).dspType = abs(DagNode(s).dspType - 2)

    @Undo("wrapProxy")
    def wrapProxy(self):
        proxy.wrapProxy()

    @Undo("resetProxy")
    def resetProxy(self):
        proxy.resetProxy()

    @Undo("mirrorProxy")
    def mirrorProxy(self):
        proxy.mirrorProxy()

    def misc_importEnvAndShd_BN_clicked(self):
        """Import lighting & shader scenes for better look"""
        if not mc.objExists("env_grp"):
            lighting_file = PATH_LIGHT + "/lighting3.ma"
            if os.path.isfile(lighting_file):
                file.importFile(lighting_file)
        if not mc.objExists("bone_SHD"):
            shader_file = PATH_LIGHT + "/bone_SHD.ma"
            if os.path.isfile(shader_file):
                file.importFile(shader_file)

    # def setLeadColor(self, id=0):
    #     """Change wireframe color"""
    #     color = (0, 0, 0) if id == 0 else (0.263, 1, 0.639)
    #     mc.displayRGBColor("lead", *color)
    #
    # def setRefColor(self, id=0):
    #     """Change reference object color"""
    #     color = (0, 0, 0) if id == 0 else (0.5, 0.9, 1)
    #     mc.displayRGBColor("referenceLayer", *color)


global UI_win


def main():
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
