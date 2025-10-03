import os
import logging
from maya import mel
from maya import cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import common
from nl_modules.utils import file


def skinRefJnts(meshes=None, jnts=None, thld=5, uiPB=None):
    """Skin meshes to their _refJnt if found and within threshold distance."""
    weighted = 0
    ignored = 0

    if uiPB:
        uiPB.setMaximum(len(meshes))

    for i, mesh in enumerate(meshes):
        jnt = DagNode(mesh.name + "_refJnt")

        if jnt.exists():
            if mesh.skinCluster:
                ignored += 1
            else:
                closest = jnt.getClosestInList(jnts)
                if closest:
                    if closest.o.distanceTo(jnt) < thld:
                        MshNode(mesh).weightTo(closest, mi=1, tsb=1)
                        weighted += 1
                    else:
                        ignored += 1
                else:
                    ignored += 1
        else:
            ignored += 1

        if uiPB:
            uiPB.setValue(i)
    if uiPB:
        uiPB.setValue(0)

    logging.info(f"{weighted} weighted. {ignored} ignored.")


def autoBind_rbnJnts(tgts, uiPB=None):
    """Skin target meshes to their _rbJnt if found."""

    weighted = 0
    ignored = 0
    notFound = 0

    if uiPB:
        uiPB.setMaximum(len(tgts))

    for i, mesh in enumerate(tgts):

        jnt = DagNode(mesh.name + "_rbJnt")
        if jnt.exists():
            if mesh.skinCluster:
                ignored += 1
            else:
                mesh.weightTo(jnt, mi=1, tsb=1)
                weighted += 1
        else:
            notFound += 1

        if uiPB:
            uiPB.setValue(i)
    if uiPB:
        uiPB.setValue(0)

    logging.info(f"{weighted} weighted. {ignored} ignored. {notFound} NOT found.")


def delSkinForSel(*args):
    """Delete skinClusters for all meshes in the scene."""
    allMeshes = mc.ls(sl=1, tr=1)
    count = 0
    for msh in allMeshes:
        count += MshNode(msh).delSkin()

    logging.info(f"{count} skinClusters deleted.")


def loadWeight():
    """Load skin weight joints from a JSON file."""
    charPath = mc.optionVar(q="charPath")
    tgtFile = mc.fileDialog2(
        fileFilter="*.json", dialogStyle=2, fileMode=1, dir=charPath
    )
    if tgtFile is None:
        return

    tgtDir = os.path.dirname(tgtFile[0])
    weightJnt_dict = file.loadJson(tgtFile[0])
    for mesh in weightJnt_dict:

        # Skip if mesh not found
        if not mc.objExists(mesh):
            continue

        weightFile = tgtDir + "/" + mesh + ".xml"

        # Skip if weight file not found
        if not mc.file(weightFile, q=1, ex=1):
            logging.warning(f"Weight file NOT found: {weightFile}")
            continue

        # Delete skin if exists
        skinC = MshNode(mesh).skinCluster
        # skinC = DagNode(mel.eval("findRelatedSkinCluster " + mesh))
        if skinC.exists():
            skinC.delete()

        # Skin and load weights
        skinC = mc.skinCluster(mesh, weightJnt_dict[mesh], tsb=1)

        mc.select(mesh)
        mc.deformerWeights(
            mesh + ".xml",
            im=1,
            method="index",
            deformer=skinC,
            format="XML",
            path=tgtDir,
        )
        logging.info(f"{mesh} : Bound and weight loaded.")

    mc.select(cl=1)


def saveWeight():
    """Save skin weight joints for selected meshes to a JSON file."""
    charPath = mc.optionVar(q="charPath")
    if charPath == None or charPath == "":
        mc.confirmDialog(t="Error", m="Character path NOT set.     ", b="OK")
        return

    # mc.select(hi=1)
    # mc.select(mc.ls(type="mesh", sl=1))
    # mc.pickWalk(d="up")
    # selected = mc.ls(sl=1)
    weightJntDict = {}
    meshesToSave = common.getTypeBelow(mc.ls(sl=1), tgtType="mesh")

    for mesh in meshesToSave:
        skinC = MshNode(mesh).skinCluster
        # skinC = mel.eval("findRelatedSkinCluster " + mesh)
        if skinC:
            jntList = mc.listConnections(skinC + ".matrix", type="joint")
            # if jntList and len(jntList) > 0:
            weightJntDict[mesh.name] = jntList

    if not weightJntDict:
        logging.warning("No skin joints found.")
        return

    tgtFile = mc.fileDialog2(
        fileFilter="*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtFile is None:
        return
    else:
        file.saveJson(tgtFile[0], weightJntDict, force=1)
        tgtDir = os.path.dirname(tgtFile[0])

        for mesh in meshesToSave:
            skinC = MshNode(mesh).skinCluster
            # skinC = mel.eval("findRelatedSkinCluster " + mesh)
            if skinC:
                mc.deformerWeights(
                    mesh + ".xml", ex=1, deformer=skinC, format="XML", path=tgtDir
                )
        logging.info("Weight joints saved")
