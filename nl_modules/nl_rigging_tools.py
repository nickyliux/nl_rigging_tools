import os
import maya.cmds as mc
import maya.mel as mel
from functools import partial
import nl_modules
import logging
from importlib import reload
from nl_modules.utils import reload_all
import subprocess

reload(reload_all)

from PySide2 import QtWidgets
from PySide2.QtUiTools import QUiLoader
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
from PySide2 import QtGui

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import common, file, guide, log, modeling, build
from nl_modules.utils.color import Color

#
#   must keep it to use eval(cls)
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
PATH_PRESET = MOD_DIR + "/build/guide_presets"
CTL_PRESET = MOD_DIR + "/build/control_presets"
PATH_SHAPE = MOD_DIR + "/build/shapes"
PATH_LIGHT = MOD_DIR + "/build/others"
PATH_SKEL = "D:/_PROJECT/GIT/nl_rigging_tools_skeletons/"
MAYA_TPL_DIR = MOD_DIR + "/build/components"
PATH_UI = MOD_DIR + "/nl_rigging_tools.ui"
BIND_JNT_SET = "bind_jnt_set"
MODEL_GRP = "mdl_grp"

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
        """
        CHECK UI ELEMENTS

        uiObj = mc.loadUI(f=PATH_UI)
        for i in mc.lsUI(dumpWidgets=1):
            if uiObj in i:
                print(i)
        """
        self.setWindowTitle("nlRT 0.1.0")
        self.setCentralWidget(self.UI)
        self.setGeometry(0, 0, 233, 680)
        QtWidgets.QApplication.setStyle(QtWidgets.QStyleFactory.create("compact"))
        self.connect_UI()

    def connect_UI(self):
        #
        #   component
        #
        self.UI.component_load_BN.clicked.connect(self.component_load_BN_clicked)
        self.UI.component_load_BN.setIcon(QtGui.QIcon(":openScript.png"))
        self.UI.component_explore_BN.clicked.connect(self.component_explore_BN_clicked)
        self.UI.component_explore_BN.setIcon(QtGui.QIcon(":searchEngine.png"))
        self.UI.component_LW.itemDoubleClicked.connect(self.component_load_BN_clicked)

        self.UI.component_buildAll_BN.clicked.connect(build.buildSelOrAll)
        self.UI.component_buildAll_BN.setIcon(QtGui.QIcon(":play_hover.png"))
        self.UI.component_unbuildAll_BN.clicked.connect(build.unbuildSelOrAll)
        self.UI.component_unbuildAll_BN.setIcon(QtGui.QIcon(":undo_s.png"))
        self.UI.component_delete_BN.clicked.connect(build.deleteSelOrAll)
        self.UI.component_delete_BN.setIcon(QtGui.QIcon(":smallTrash.png"))
        self.UI.component_copy_BN.clicked.connect(guide.copyGuideSel)
        self.UI.component_copy_BN.setIcon(QtGui.QIcon(":copySkinWeight.png"))
        # ------------------------------
        self.UI.preset_save_BN.clicked.connect(self.preset_save_BN_clicked)
        self.UI.preset_save_BN.setIcon(QtGui.QIcon(":fileSave.png"))
        self.UI.preset_new_BN.clicked.connect(self.preset_new_BN_clicked)
        self.UI.preset_new_BN.setIcon(QtGui.QIcon(":fileNew.png"))
        self.UI.preset_del_BN.clicked.connect(self.preset_del_BN_clicked)
        self.UI.preset_del_BN.setIcon(QtGui.QIcon(":smallTrash.png"))
        self.UI.viewSkel_BN.clicked.connect(self.viewSkel_BN_clicked)
        self.UI.viewSkel_BN.setIcon(QtGui.QIcon(":searchEngine.png"))
        self.UI.importSkel_BN.clicked.connect(self.importSkel_BN_clicked)
        self.UI.importSkel_BN.setIcon(QtGui.QIcon(":polySphere.png"))  # kinReroot
        # self.UI.preset_openSkel_BN.clicked.connect(self.preset_openSkel_BN_clicked)
        # self.UI.preset_refresh_BN.clicked.connect(self.preset_refresh_BN_clicked)
        # self.UI.preset_refresh_BN.setIcon(QtGui.QIcon(":refresh.png"))
        self.UI.preset_LW.itemDoubleClicked.connect(self.preset_load_BN_dbClicked)
        self.UI.preset_load_BN.clicked.connect(self.preset_load_BN_clicked)
        self.UI.preset_load_BN.setIcon(QtGui.QIcon(":openScript.png"))
        # ------------------------------
        self.UI.rigNode_LW.itemDoubleClicked.connect(self.rigNode_LW_dblClicked)
        # self.UI.rigNode_refresh_BN.clicked.connect(self.rigNode_refresh_BN_clicked)
        # self.UI.rigNode_refresh_BN.setIcon(QtGui.QIcon(":refresh.png"))
        # ------------------------------
        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)
        self.UI.crvShape_removeFrInst_BN.clicked.connect(
            self.crvShape_removeFrInst_BN_clicked
        )
        # self.UI.crvShape_create_BN.clicked.connect(self.crvShape_create_BN_clicked)
        self.UI.crvShape_load_BN.clicked.connect(self.crvShape_load_BN_clicked)
        self.UI.crvShape_load_BN.setIcon(QtGui.QIcon(":openScript.png"))
        self.UI.crvShape_save_BN.clicked.connect(self.crvShape_save_BN_clicked)
        self.UI.crvShape_save_BN.setIcon(QtGui.QIcon(":fileSave.png"))
        self.UI.crvShape_new_BN.clicked.connect(self.crvShape_new_BN_clicked)
        self.UI.crvShape_new_BN.setIcon(QtGui.QIcon(":fileNew.png"))
        self.UI.crvShape_del_BN.clicked.connect(self.crvShape_del_BN_clicked)
        self.UI.crvShape_del_BN.setIcon(QtGui.QIcon(":smallTrash.png"))
        # self.UI.crvShape_refresh_BN.clicked.connect(self.crvShape_refresh_BN_clicked)
        # self.UI.crvShape_refresh_BN.setIcon(QtGui.QIcon(":refresh.png"))
        # self.UI.leadColor_0_BN.clicked.connect(partial(self.setLeadColor, 0))
        # self.UI.leadColor_1_BN.clicked.connect(partial(self.setLeadColor, 1))
        # self.UI.refColor_0_BN.clicked.connect(partial(self.setRefColor, 0))
        # self.UI.refColor_1_BN.clicked.connect(partial(self.setRefColor, 1))
        # ------------------------------

        self.UI.joint_addForSpine_BN.clicked.connect(
            partial(self.joint_add_BN_clicked, rb=1)
        )
        self.UI.joint_addForRef_BN.clicked.connect(
            partial(self.joint_add_BN_clicked, rb=0)
        )
        self.UI.joint_mirrorAllRef_BN.clicked.connect(
            self.joint_mirrorAllRef_BN_clicked
        )

        # self.UI.skin_attachJntsToSurf_BN.clicked.connect(
        #     self.skin_attachJntsToSurf_BN_clicked
        # )
        # self.UI.skin_refJnt_BN.clicked.connect(self.bindJnts)
        self.UI.skin_oneClick_BN.clicked.connect(self.skin_oneClick)
        self.UI.skin_delForAllMeshes_BN.clicked.connect(self.skin_delForAllMeshes)

        self.UI.saveCtl_BN.setIcon(QtGui.QIcon(":fileSave.png"))
        self.UI.saveCtl_BN.clicked.connect(self.saveCtl)
        self.UI.loadCtl_BN.setIcon(QtGui.QIcon(":openScript.png"))
        self.UI.loadCtl_BN.clicked.connect(self.loadCtl)

        self.UI.misc_retopo20_BN.clicked.connect(partial(modeling.retopo, faceNum=20))
        self.UI.misc_retopo50_BN.clicked.connect(partial(modeling.retopo, faceNum=50))
        self.UI.misc_retopo150_BN.clicked.connect(partial(modeling.retopo, faceNum=150))
        self.UI.misc_retopo500_BN.clicked.connect(partial(modeling.retopo, faceNum=500))

        self.UI.misc_buildLineSel_BN.clicked.connect(CrvNode.buildLineLinkedSel)
        # self.UI.misc_buildJntLineSel_BN.clicked.connect(JntNode.buildJntLineSel)
        self.UI.misc_importEnvAndShd_BN.clicked.connect(
            self.misc_importEnvAndShd_BN_clicked
        )

        self.UI.pickMaskCrv_BN.clicked.connect(self.pickMaskCrv_BN_clicked)
        self.UI.pickMaskCrv_BN.setIcon(QtGui.QIcon(":pickCurveObj.png"))
        self.UI.pickMaskMsh_BN.clicked.connect(self.pickMaskMsh_BN_clicked)
        self.UI.pickMaskMsh_BN.setIcon(QtGui.QIcon(":pickGeometryObj.png"))

        self.UI.pickMaskAll_BN.clicked.connect(self.pickMaskAll_BN_clicked)
        self.UI.clickDrag_CB.stateChanged.connect(self.clickDrag_CB_stateChanged)

        if mc.selectPref(clickDrag=1, q=1):
            self.UI.clickDrag_CB.setChecked(1)

        self.UI.shapeScaleUp_BN.clicked.connect(partial(self.shapeScale, 4 / 3))
        self.UI.shapeScaleUp_BN.setIcon(QtGui.QIcon(":moveUVUp.png"))
        self.UI.shapeScaleDn_BN.clicked.connect(partial(self.shapeScale, 3 / 4))
        self.UI.shapeScaleDn_BN.setIcon(QtGui.QIcon(":moveUVDown.png"))

        self.UI.shapeRotaX_BN.clicked.connect(partial(self.shapeRota, 90, 0, 0))
        self.UI.shapeRotaY_BN.clicked.connect(partial(self.shapeRota, 0, 90, 0))
        self.UI.shapeRotaZ_BN.clicked.connect(partial(self.shapeRota, 0, 0, 90))
        self.UI.onTop_BN.clicked.connect(partial(self.alwaysOnTop, 1))
        self.UI.onTopOff_BN.clicked.connect(partial(self.alwaysOnTop, 0))

        self.rigNode_refresh_BN_clicked()
        self.preset_refresh_BN_clicked()
        self.crvShape_refresh_BN_clicked()

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

    def shapeRota(self, *args):
        for sel in mc.ls(sl=1, tr=1):
            sel = DagNode(sel)
            if sel.type == "nurbsCurve":
                CrvNode(sel).cv_rotate(*args)

    def alwaysOnTop(self, value):
        for sel in mc.ls(sl=1):
            DagNode(sel).shape.a.alwaysDrawOnTop.set(value)

    def shapeScale(self, value):
        for sel in mc.ls(sl=1, tr=1):
            sel = DagNode(sel)
            if sel.type == "nurbsCurve":
                CrvNode(sel).cv_scale(value)  # , atCVCetner=1)

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
            common.setViewport()

    def component_explore_BN_clicked(self):
        path = os.path.realpath(MAYA_TPL_DIR)
        subprocess.Popen(f'explorer "{path}"')

    def viewSkel_BN_clicked(self):
        path = os.path.realpath(PATH_SKEL)
        subprocess.Popen(f'explorer "{path}"')

    def preset_load_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            self.load_preset(itemText)

    def preset_load_BN_dbClicked(self, item):
        itemText = item.text()
        self.load_preset(itemText)

    def load_preset(self, preset_name):
        f = f"{PATH_PRESET}\\{preset_name}.json"
        if os.path.isfile(f):
            mc.refresh(su=1)
            logging.info(f'load preset "{preset_name}"')
            guide.loadPreset(f)
            common.setViewport()
            mc.refresh(su=0)
            mc.select(cl=1)
            self.rigNode_refresh_BN_clicked()
        else:
            logging.info(f"missing file: {f}")

    def preset_save_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            result = mc.confirmDialog(
                t="Save Preset",
                m=f'Overwrite "{itemText}" ?        ',
                b=["Yes", "No"],
                db="No",
            )
            if result == "Yes":
                guide.savePreset(itemText)

    def preset_new_BN_clicked(self):
        result = mc.promptDialog(
            t="New Preset", m="Enter name:", b=["OK", "Cancel"], db="OK"
        )
        if result == "OK":
            newName = mc.promptDialog(q=1, t=1)
            guide.savePreset(newName)
            self.preset_refresh_BN_clicked()

    def preset_del_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            result = mc.confirmDialog(
                t="Delete Preset ",
                m=f'Delete "{itemText}" ?        ',
                b=["Yes", "No"],
                db="No",
            )
            if result == "Yes":
                tgtFile = f"{PATH_PRESET}\\{itemText}.json"
                file.deleteFile(tgtFile)
                self.preset_refresh_BN_clicked()

    def importSkel_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            skelFile = f"{PATH_SKEL}/{itemText}_low.ma"

            if os.path.isfile(skelFile):
                file.importFile(skelFile)
                common.setViewport()
            else:
                logging.info(f"missing file: {skelFile}")

    # def preset_openSkel_BN_clicked(self):
    #     items = self.UI.preset_LW.selectedItems()
    #     if items:
    #         itemText = items[0].text()
    #         skelFile = f"{PATH_SKEL}/{itemText}_low.ma"
    #         if os.path.isfile(skelFile):
    #             file.openFile(skelFile)
    #         else:
    #             logging.info(f"missing file: {skelFile}")

    def preset_refresh_BN_clicked(self):
        self.UI.preset_LW.clear()
        # self.UI.preset_CBB.clear()
        items = [
            f.split(".")[0]
            for f in os.listdir(PATH_PRESET)
            if os.path.isfile(PATH_PRESET + "/" + f)
        ]
        self.UI.preset_LW.addItems(items)
        # self.UI.preset_CBB.addItems(items)

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
        crv = CrvNode(item.text(), shape=item.text())
        mc.select(crv)

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
                tgtFile = f"{PATH_SHAPE}\\{itemText}.json"
                file.deleteFile(tgtFile)
                self.crvShape_refresh_BN_clicked()

    # def crvShape_create_BN_clicked(self):
    #     """Create new shape"""
    #     items = self.UI.crvShape_LW.selectedItems()
    #     if items:
    #         itemText = items[0].text()
    #         return CrvNode(itemText, shape=itemText)

    def crvShape_removeFrInst_BN_clicked(self):
        sel = mc.ls(sl=1, tr=1)
        if sel:
            CrvNode(sel[0]).uninstanceFromOthers()

    @Undo("crvShape_load_BN_clicked")
    def crvShape_load_BN_clicked(self):
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
            for f in os.listdir(PATH_SHAPE)
            if os.path.isfile(PATH_SHAPE + "/" + f)
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
                color = Color.RED if rb else Color.L_BLUE
                jnt = JntNode(sN + sf, color=color, p=jnt_grp)
                jnt.a.t.set(*sN.o.bbCenter)
        mc.select(cl=1)

    def joint_mirrorAllRef_BN_clicked(self):
        """Mirror left reference(*_refJnt) joints"""
        sel = mc.ls("lf_*_refJnt", type="joint")
        if sel:
            guide.mirrorAttr(sel, wsMirror=1)
        else:
            mc.confirmDialog(t="Info", m="No refJnt found.    ", b="OK")

    def bindRefJnts(self, meshSel, closestSet=None, threshold=5):
        weighted = 0
        ignored = 0

        if not DagNode(closestSet).exists():
            logging.info(f"Set {closestSet} NOT found for auto skin.")
            return

        for i, mN in enumerate(meshSel):
            jnt = DagNode(mN.name + "_refJnt")
            if jnt.exists():
                if mN.skinCluster:
                    ignored += 1
                else:
                    closest = jnt.getClosestInList(mc.sets(closestSet, q=1))
                    if closest:
                        if closest.o.distanceTo(jnt) < threshold:
                            MshNode(mN).weightTo(closest, mi=1, tsb=1)
                            weighted += 1
                        else:
                            ignored += 1
                    else:
                        ignored += 1
            self.UI.oneClick_PB.setValue(i)

        self.UI.oneClick_PB.setValue(0)
        logging.info(f"{weighted} weighted. {ignored} ignored.")

    def bindRbnJnts(self, meshSel):
        """
        Bind meshes to a joint found which is ended with _rbnJnt
        """
        weighted = 0
        ignored = 0
        notFound = 0
        for i, mN in enumerate(meshSel):
            jnt = DagNode(mN.name + "_rbJnt")
            if jnt.exists():
                if mN.skinCluster:
                    ignored += 1
                else:
                    mN.weightTo(jnt, mi=1, tsb=1)
                    weighted += 1
            else:
                notFound += 1
            self.UI.oneClick_PB.setValue(i)

        self.UI.oneClick_PB.setValue(0)
        logging.info(f"{weighted} weighted. {ignored} ignored. {notFound} not found.")

    @Undo("skin_oneClick")
    def skin_oneClick(self):

        meshSel = common.getMeshBelow(MODEL_GRP)
        #
        #   bind to closest refJnt in MODEL_GRP
        #
        self.bindRefJnts(meshSel, closestSet=BIND_JNT_SET, threshold=15)
        #
        #   bind to _rbnJnt For each in MODEL GRP
        #
        self.bindRbnJnts(meshSel)
        #
        #   search the attr rbSrf & rbJSet for each rigNode and attach joints
        #   to surface with 'closest point on surface' node
        #
        self.autoAttachJntToSurf()

        common.setViewport()
        mc.select(cl=1)

    def skin_delForAllMeshes(self):
        from nl_modules.nodel.msh_node import MshNode

        #
        #   collect all skincluster and delete
        #
        allSkin = []
        for m in set(mc.ls(type="mesh")):
            sk = MshNode(m).skinCluster
            if sk and sk not in allSkin:
                allSkin.append(sk)

        num = len(allSkin)
        for sk in allSkin:
            sk.delete()

        logging.info(f"{num} skinClusters deleted.")

    def saveCtl(self):
        """
        Save all the control curves, without connection or any unwanted
        """
        allCtls = build.getAllRigCtls()
        if allCtls:
            mc.select(allCtls)
            crvFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2)
            if crvFile:
                mc.file(
                    crvFile,
                    type="mayaAscii",
                    exportSelected=1,
                    constructionHistory=0,
                    channels=0,
                    expressions=0,
                    constraints=0,
                )
                mc.select(cl=1)
                logging.info("Curve shape exported OK.")

    def loadCtl(self):
        """
        Replace all the control curve shapes by those found in the file
        """
        ctlFile = mc.fileDialog2(
            fileFilter="*.ma", dialogStyle=2, fileMode=1, dir=CTL_PRESET
        )
        if ctlFile:
            #
            #    import ctl file
            #
            imported = mc.file(ctlFile, i=1, ns="ctl", returnNewNodes=1)
            ns = ""
            if imported:
                ns = imported[0].split(":")[0] + ":"
            #
            #    replace shape
            #
            allCtls = build.getAllRigCtls()
            for ctl in allCtls:
                importCtl = DagNode(ns + ctl)
                if importCtl.exists():
                    mc.delete(ctl.shapes)
                    mc.parent(importCtl.shapes, ctl, s=1, r=1)
            for obj in imported:
                if mc.objExists(obj):
                    mc.delete(obj)

    def autoAttachJntToSurf(self):

        masterCtl = DagNode("master_ctl")
        if not masterCtl.exists():
            logging.info(f"master_ctl NOT found")
            return

        globalScale = masterCtl.a["globalScale"]
        if not globalScale.exists():
            logging.info(f"globalScale attr NOT found")
            return

        for rigNode in mc.ls("*RGN", type="script"):
            rN = DagNode(rigNode)
            if rN.a.nodeState.get() == 2:
                #
                #   Process only if rbJntSet found
                #
                rbJntSetAttr = rN.a["rbJntSet"]
                if rbJntSetAttr.exists():

                    rbSrfAttr = rN.a["rbSrf"]
                    if not rbSrfAttr.exists():
                        logging.info(f"Attr rbSrf NOT found in {rN}.")
                        continue
                    #
                    #   check set rbJntSet
                    #
                    rbJntSetName = rbJntSetAttr.get()
                    rbJntSet = DagNode(rbJntSetName)
                    if not rbJntSet.exists():
                        logging.info(f"Set {rbJntSetName} NOT found.")
                        continue

                    rbJnts = mc.sets(rbJntSet, q=1)
                    if not rbJnts:
                        logging.info(f"No joints found in Set {rbJntSet}.")
                        continue
                    #
                    #   check surface rbSrf
                    #
                    rbSrf = rbSrfAttr.inConnNode
                    if not rbSrf:
                        logging.info(f"Surface object NOT found.")
                        continue
                    #
                    #   attach joints in set to srf
                    #
                    if rbSrf and rbJnts:
                        common.ribbonAttach(
                            geo=rbSrf,
                            tgtList=rbJnts,
                            scaleAttr=globalScale,
                            p=DagNode("RIG"),
                        )
                    else:
                        logging.info("Ignore invalid surf and joints")
                    logging.info(f"Attach joints in {rbJntSet} to {rbSrf.name}.")

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
#
import maya.cmds as cmds
for item in cmds.resourceManager(nf='*png'):
    cmds.resourceManager(s=(item, "C:/temp/mayaicons/{0}".format(item)))
#
getenv "XBMLANGPATH" ;

"""
