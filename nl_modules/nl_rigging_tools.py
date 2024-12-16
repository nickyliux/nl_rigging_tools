import os
import maya.cmds as mc
import maya.mel as mel
from functools import partial
import nl_modules
import logging
from importlib import reload
from nl_modules.utils import reload_all

reload(reload_all)

from PySide2 import QtWidgets
from PySide2.QtUiTools import QUiLoader
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.utils import common, file, guide, log, modeling
from nl_modules.utils.color import Color

# Must keep it ------------------------------
from nl_modules.build.leg import Leg
from nl_modules.build.hand import Hand
from nl_modules.build.arm import Arm
from nl_modules.build.head import Head
from nl_modules.build.neckSrf import NeckSrf
from nl_modules.build.spineSrf import SpineSrf
from nl_modules.build.quadLeg import QuadLeg
from nl_modules.build.quadFLeg import QuadFLeg
from nl_modules.build.quadNeckSrf import QuadNeckSrf
from nl_modules.build.quadSpineSrf import QuadSpineSrf
from nl_modules.build.tailSrf import TailSrf

log.updateRootLogger()

MOD_DIR = os.path.dirname(nl_modules.__file__)
PATH_PRESET = MOD_DIR + "/build/guide_presets"
PATH_SHAPE = MOD_DIR + "/build/shapes"
PATH_LIGHT = MOD_DIR + "/build/others"
# PATH_SKEL = MOD_DIR + "/../skeletons"
PATH_SKEL = "D:/_PROJECT/GIT/nl_rigging_tools_skeletons/"
PATH_UI = MOD_DIR + "/nl_rigging_tools.ui"
BIND_JNT_SET = "bind_jnt_set"
MAYA_TPL_DIR = MOD_DIR + "/build/components"

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
        self.setWindowTitle("nl AutoRig")
        self.setCentralWidget(self.UI)
        self.setGeometry(0, 0, 220, 680)
        self.connect_UI()

    def connect_UI(self):
        self.UI.component_load_BN.clicked.connect(self.component_load_BN_clicked)
        self.UI.component_open_BN.clicked.connect(self.component_open_BN_clicked)
        # self.UI.component_buildAll_BN.clicked.connect(build.buildSelOrAll)
        # self.UI.component_unbuildAll_BN.clicked.connect(build.unbuildSelOrAll)
        # self.UI.component_delete_BN.clicked.connect(build.deleteSelOrAll)
        # self.UI.component_copy_BN.clicked.connect(guide.copyGuideSel)

        self.UI.preset_load_BN.clicked.connect(self.preset_load_BN_clicked)
        self.UI.preset_save_BN.clicked.connect(self.preset_save_BN_clicked)
        self.UI.preset_new_BN.clicked.connect(self.preset_new_BN_clicked)
        self.UI.preset_del_BN.clicked.connect(self.preset_del_BN_clicked)
        self.UI.preset_importSkel_BN.clicked.connect(self.preset_importSkel_BN_clicked)
        self.UI.preset_openSkel_BN.clicked.connect(self.preset_openSkel_BN_clicked)
        self.UI.preset_refresh_BN.clicked.connect(self.preset_refresh_BN_clicked)

        self.UI.rigNode_LW.itemDoubleClicked.connect(self.rigNode_LW_dblClicked)
        self.UI.rigNode_refresh_BN.clicked.connect(self.rigNode_refresh_BN_clicked)

        self.UI.crvShape_LW.itemDoubleClicked.connect(self.crvShape_LW_dblClicked)
        self.UI.crvShape_copyAsInst_BN.clicked.connect(
            self.crvShape_copyAsInst_BN_clicked
        )
        self.UI.crvShape_removeFrInst_BN.clicked.connect(
            self.crvShape_removeFrInst_BN_clicked
        )
        self.UI.crvShape_create_BN.clicked.connect(self.crvShape_create_BN_clicked)
        self.UI.crvShape_save_BN.clicked.connect(self.crvShape_save_BN_clicked)
        self.UI.crvShape_new_BN.clicked.connect(self.crvShape_new_BN_clicked)
        self.UI.crvShape_del_BN.clicked.connect(self.crvShape_del_BN_clicked)
        self.UI.crvShape_refresh_BN.clicked.connect(self.crvShape_refresh_BN_clicked)

        # self.UI.leadColor_0_BN.clicked.connect(partial(self.setLeadColor, 0))
        # self.UI.leadColor_1_BN.clicked.connect(partial(self.setLeadColor, 1))
        # self.UI.refColor_0_BN.clicked.connect(partial(self.setRefColor, 0))
        # self.UI.refColor_1_BN.clicked.connect(partial(self.setRefColor, 1))

        self.UI.joint_addForSpine_BN.clicked.connect(
            partial(self.joint_add_BN_clicked, rb=1)
        )
        self.UI.joint_addForRef_BN.clicked.connect(
            partial(self.joint_add_BN_clicked, rb=0)
        )
        self.UI.joint_mirrorAllRef_BN.clicked.connect(
            self.joint_mirrorAllRef_BN_clicked
        )

        self.UI.skinning_attach_BN.clicked.connect(self.skinning_attach_BN_clicked)
        self.UI.skinning_skin_BN.clicked.connect(self.skinning_skin_BN_clicked)
        self.UI.skinning_oneClick_BN.clicked.connect(self.skinning_oneClick_BN_clicked)

        self.UI.misc_retopo50_BN.clicked.connect(
            partial(modeling.mesh_retopo, faceNum=50)
        )
        self.UI.misc_retopo150_BN.clicked.connect(
            partial(modeling.mesh_retopo, faceNum=150)
        )
        self.UI.misc_retopo500_BN.clicked.connect(
            partial(modeling.mesh_retopo, faceNum=500)
        )
        self.UI.misc_buildLineSel_BN.clicked.connect(CurveNode.buildLineLinkedSel)
        self.UI.misc_buildJntLineSel_BN.clicked.connect(JointNode.buildJntLineSel)
        self.UI.misc_importEnvAndShd_BN.clicked.connect(
            self.misc_importEnvAndShd_BN_clicked
        )

        self.UI.pickMaskCrv_BN.clicked.connect(self.pickMaskCrv_BN_clicked)
        self.UI.pickMaskAll_BN.clicked.connect(self.pickMaskAll_BN_clicked)
        self.UI.shapeScaleHalf_BN.clicked.connect(self.shapeScaleHalf_BN_clicked)
        self.UI.shapeScaleX2_BN.clicked.connect(self.shapeScaleX2_BN_clicked)

        self.rigNode_refresh_BN_clicked()
        self.preset_refresh_BN_clicked()
        self.crvShape_refresh_BN_clicked()

    def pickMaskCrv_BN_clicked(self):
        mel.eval('setObjectPickMask "All" 0')
        mel.eval('setObjectPickMask "Curve" 1')

    def pickMaskAll_BN_clicked(self):
        mel.eval('setObjectPickMask "All" 1')

    def shapeScaleHalf_BN_clicked(self):
        for sel in mc.ls(sl=1, tr=1):
            sel = DagNode(sel)
            if sel.type == "nurbsCurve":
                CurveNode(sel).cv_scale(0.5)

    def shapeScaleX2_BN_clicked(self):
        for sel in mc.ls(sl=1, tr=1):
            CurveNode(sel).cv_scale(2)

    def component_load_BN_clicked(self):
        items = self.UI.component_LW.selectedItems()
        if items:
            for item in items:
                names = guide.COMPONENT_DICT[item.text()]
                guide.loadGuide(names)
            self.rigNode_refresh_BN_clicked()
            mc.select(cl=1)
            mc.viewFit(all=1)
            mc.setAttr("hardwareRenderingGlobals.ssaoEnable", 1)
            # mc.setAttr('hardwareRenderingGlobals.multiSampleEnable', 1)

    def component_open_BN_clicked(self):
        items = self.UI.component_LW.selectedItems()
        if items:
            mc.refresh(su=1)
            for item in items:
                names = guide.COMPONENT_DICT[item.text()]
                tgtFile = f"{MAYA_TPL_DIR}/{names[0]}.ma"
                if os.path.isfile(tgtFile):
                    file.openFile(tgtFile)
                else:
                    logging.info(f"missing file: {tgtFile}")
            mc.refresh(su=0)
            mc.viewFit(all=1)
            mc.setAttr("hardwareRenderingGlobals.ssaoEnable", 1)
            # mc.setAttr('hardwareRenderingGlobals.multiSampleEnable', 1)
            self.rigNode_refresh_BN_clicked()

    def preset_load_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            f = f"{PATH_PRESET}\\{itemText}.json"
            if os.path.isfile(f):
                mc.refresh(su=1)
                logging.info(f'load preset "{itemText}"')
                guide.loadPreset(f)
                mc.select(cl=1)
                mc.viewFit(all=1)
                mc.setAttr("hardwareRenderingGlobals.ssaoEnable", 1)
                # mc.setAttr('hardwareRenderingGlobals.multiSampleEnable', 1)
                mc.refresh(su=0)
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

    def preset_importSkel_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            skelFile = f"{PATH_SKEL}/{itemText}_low.ma"

            if os.path.isfile(skelFile):
                file.importFile(skelFile)
                mc.viewFit(all=1)
                # for p in mc.getPanel(type="modelPanel"):
                #     mc.modelEditor(p, e=1, jx=1)  # wos=1, jx=1,xray=1
            else:
                logging.info(f"missing file: {skelFile}")

    def preset_openSkel_BN_clicked(self):
        items = self.UI.preset_LW.selectedItems()
        if items:
            itemText = items[0].text()
            skelFile = f"{PATH_SKEL}/{itemText}_low.ma"
            if os.path.isfile(skelFile):
                file.openFile(skelFile)
            else:
                logging.info(f"missing file: {skelFile}")

    def preset_refresh_BN_clicked(self):
        self.UI.preset_LW.clear()
        items = [
            f.split(".")[0]
            for f in os.listdir(PATH_PRESET)
            if os.path.isfile(PATH_PRESET + "/" + f)
        ]
        self.UI.preset_LW.addItems(items)

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
        CurveNode(item.text(), shape=item.text())

    def crvShape_save_BN_clicked(self):
        """Save selected shape to highlighted"""
        sel = mc.ls(sl=1, tr=1)
        if sel:
            tgt = CurveNode(sel[0])
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
                    CurveNode(tgt) >> newName
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

    def crvShape_create_BN_clicked(self):
        """Create new shape"""
        items = self.UI.crvShape_LW.selectedItems()
        if items:
            itemText = items[0].text()
            return CurveNode(itemText, shape=itemText)

    def crvShape_removeFrInst_BN_clicked(self):
        sel = mc.ls(sl=1, tr=1)
        if sel:
            CurveNode(sel[0]).uninstanceFromOthers()

    @Undo("crvShape_copyAsInst_BN_clicked")
    def crvShape_copyAsInst_BN_clicked(self):
        """Copy item shape as instance to selected"""
        sel = mc.ls(sl=1, tr=1)
        shape = self.crvShape_create_BN_clicked()
        if shape and sel:
            shape.copyShapeAsInst(sel, keepSrc=0)

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
            jnt_grp = GroupNode("jnt_grp")
            for sN in meshSel:
                sf = "_rbnJnt" if rb else "_refJnt"
                color = Color.RED if rb else Color.YELLOW
                jnt = JointNode(sN + sf, color=color, p=jnt_grp)
                jnt.a.t.set(*sN.o.bbCenter)
        mc.select(cl=1)

    def joint_mirrorAllRef_BN_clicked(self):
        """Mirror left reference(*_refJnt) joints"""
        sel = mc.ls("lf_*_refJnt", type="joint")
        if sel:
            guide.mirrorAttr(sel, wsMirrorAxis=1)
        else:
            mc.confirmDialog(t="Info", m="No refJnt found.    ", b="OK")

    def skinning_attach_BN_clicked(self):
        """Attach joints to surf for selected"""
        srfSel = []
        jntSel = []
        mc.select(hi=1)
        for s in mc.ls(sl=1):
            sN = DagNode(s)
            if sN.type == "joint":
                jntSel.append(sN)
            elif sN.type == "nurbsSurface":
                # srfSel.append(sN.parent)
                srfSel.append(sN)

        if jntSel and srfSel:
            common.ribbonAttach(tgtList=jntSel, p=DagNode("SKL"), geo=srfSel[0])
            mc.select(cl=1)
        else:
            logging.info("Ignore invalid surf and joints")

    def skinning_skin_BN_clicked(self):
        """Bind to *_rbnJnt OR the closest joint to *_refJnt for all meshes under selected, either"""
        meshSel = common.getMeshBelowSel()
        skinned = 0
        skinnedAlready = 0
        mc.progressWindow(
            title="Auto Skin", progress=100, status="Processing", isInterruptable=1
        )

        # Bind to rbnJnt found
        for mN in meshSel:
            rbnJnt = DagNode(mN.name + "_rbnJnt")
            if rbnJnt.exists():
                if mN.skinCluster is None:
                    mN.weightTo(rbnJnt, mi=1, tsb=1)
                    skinned += 1
                else:
                    skinnedAlready += 1
            mc.progressWindow(
                e=1, progress=skinned / len(meshSel) * 200, status=mN.name
            )

        # Find refJnt, bind to closest jnt in BIND_JNT_SET
        if DagNode(BIND_JNT_SET).exists():
            for mN in meshSel:
                refJnt = DagNode(mN.name + "_refJnt")
                if refJnt.exists():
                    if mN.skinCluster is None:
                        closest = refJnt.getClosestInList(mc.sets(BIND_JNT_SET, q=1))
                        mN.weightTo(closest, mi=1, tsb=1)
                        skinned += 1
                    else:
                        skinnedAlready += 1
                mc.progressWindow(
                    e=1, progress=skinned / len(meshSel) * 200, status=mN.name
                )
        else:
            logging.info("bind_jnt_set NOT found for refJnt skinning.")

        mc.select(cl=1)
        mc.progressWindow(ep=1)
        logging.info(f"{skinned} skinned. {skinnedAlready} ignored.")

    @Undo("skinning_oneClick_BN_clicked")
    def skinning_oneClick_BN_clicked(self):
        """One click automation
        * For skinning to ref joints, all model under mdl_grp is used
        * For skinning to rbn joints, search attr rbSrf & rbJSet for each rigNode
        """
        mc.select(cl=1)
        # ref jnt skinning
        self.skinning_skin_BN_clicked()

        # rbn jnt skinning
        for rigNode in mc.ls("*RGN", type="script"):
            rigNode = DagNode(rigNode)
            # rigClass = rigNode.a.rigClass.get()
            # if rigClass in ("SpineSrf", "QuadSpineSrf", "QuadNeckSrf", "TailSrf"):
            rbjSetAttr = rigNode.a["rbjSet"]
            rbSrfAttr = rigNode.a["rbSrf"]

            if rbjSetAttr.exists() and rbSrfAttr.exists():
                rbjSet = DagNode(rbjSetAttr.get())
                rbSrf = rbSrfAttr.inConnNode

                if rbjSet.exists() and rbSrf:
                    mc.select(rbSrf, mc.sets(rbjSet, q=1))
                    self.skinning_attach_BN_clicked()
                else:
                    logging.info("rbjSet / rbSrf objects NOT found at " + rigNode)

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

"""
import importlib
from nl_modules import nl_rigging_tools
importlib.reload(nl_rigging_tools)
nl_rigging_tools.main()
"""
