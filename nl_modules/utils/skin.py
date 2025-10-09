import os
import glob
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
        if uiPB:
            uiPB.setValue(i)

        if mesh.skinCluster.exists():
            ignored += 1
            continue

        refJ = DagNode(mesh.name + "_refJnt")
        if not refJ.exists():
            ignored += 1
            continue

        closest = refJ.getClosestInList(jnts)
        if closest:
            if closest.o.distanceTo(refJ) < thld:
                mesh.weightTo(closest, mi=1, tsb=1)
                weighted += 1
            else:
                ignored += 1
        else:
            ignored += 1

    if uiPB:
        uiPB.setValue(0)

    logging.info(f"refJnts : {weighted} weighted. {ignored} already bind.")


def autoBind_rbnJnts(meshes=None, uiPB=None):
    """Skin target meshes to their _rbJnt if found."""

    weighted = 0
    ignored = 0
    notFound = 0

    if uiPB:
        uiPB.setMaximum(len(meshes))

    for i, mesh in enumerate(meshes):
        if uiPB:
            uiPB.setValue(i)

        rbJnt = DagNode(mesh.name + "_rbJnt")
        if not rbJnt.exists():
            notFound += 1
            continue

        if mesh.skinCluster.exists():
            ignored += 1
            continue

        mesh.weightTo(rbJnt, mi=1, tsb=1)
        weighted += 1

    if uiPB:
        uiPB.setValue(0)

    logging.info(
        f"rbJnts : {weighted} weighted. {ignored} already bind. {notFound} unfound."
    )


def selSkinned(*args):
    """Select all skinned meshes/joint."""
    selJnts = mc.ls(sl=1, type="joint")

    skinned = []
    if selJnts:
        for jnt in selJnts:
            skinCs = DagNode(jnt).a.lockInfluenceWeights.outConnNode
            for skinC in skinCs:
                skinnedShape = skinC.a.outputGeometry.outConnNode
                if skinnedShape:
                    skinned.append(skinnedShape[0].offset)
    else:
        selMeshes = mc.ls(sl=1, tr=1)
        for msh in selMeshes:
            skinC = MshNode(msh).skinCluster
            if skinC:
                jntList = mc.listConnections(skinC + ".matrix", type="joint")
                if jntList:
                    skinned.extend(jntList)
    if skinned:
        mc.select(skinned)


def delSkinForSel(*args):
    """Delete skinClusters for all meshes in the scene."""
    allMeshes = mc.ls(sl=1, tr=1)
    count = 0
    for msh in allMeshes:
        count += MshNode(msh).delSkin()

    logging.info(f"{count} skinClusters deleted.")


def loadWeight(uiPB):
    """Load skin weight joints from a JSON file."""
    charPath = mc.optionVar(q="charPath")
    tgtFiles = []
    if charPath:
        tgtFiles = glob.glob(
            os.path.join(charPath, "weight", os.path.basename(charPath) + "_skn*.json")
        )
        if not tgtFiles:
            tgtFiles = mc.fileDialog2(
                fileFilter="*.json", dialogStyle=2, fileMode=2, dir=charPath
            )
    if not tgtFiles:
        return

    tgtDir = os.path.dirname(tgtFiles[-1])
    weightJnt_dict = file.loadJson(tgtFiles[-1])

    i = 0
    loadCount = 0
    for mesh in weightJnt_dict:
        i += 1
        if not mc.objExists(mesh):
            continue

        if uiPB:
            uiPB.setMaximum(len(weightJnt_dict))

        weightFile = tgtDir + "/" + mesh + ".xml"

        # Skip if weight file not found
        if not mc.file(weightFile, q=1, ex=1):
            logging.warning(f"Weight file NOT found: {weightFile}")
            continue

        # Delete skin if exists
        skinC = MshNode(mesh).skinCluster
        if skinC.exists():
            skinC.delete()

        try:
            skinC = mc.skinCluster(mesh, weightJnt_dict[mesh], tsb=1)
        except Exception as e:
            logging.warning(f"{mesh} weight loading failed: {e}")
            continue

        mc.select(mesh)
        mc.deformerWeights(
            mesh + ".xml",
            im=1,
            method="index",
            deformer=skinC,
            format="XML",
            path=tgtDir,
        )
        loadCount += 1
        logging.info(mesh)

        if uiPB:
            uiPB.setValue(i)

    if uiPB:
        uiPB.setValue(0)

    logging.info(f"Weight file loaded: {tgtFiles[-1]}.")
    logging.info(f"{loadCount} objects' weight loaded.")
    mc.select(cl=1)


def skinAndLoadW(meshes=None, jnts=None, thld=5, uiPB=None):
    pass


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
    skinDict = {}
    meshesToSave = common.getObjectBelow(mc.ls(sl=1), tgtType="mesh")

    for mesh in meshesToSave:
        skinC = MshNode(mesh).skinCluster
        if skinC.exists():
            jntList = mc.listConnections(skinC + ".matrix", type="joint")
            weightJntDict[mesh.name] = jntList
            skinDict[mesh] = skinC

    if not weightJntDict:
        logging.warning("No skin joints found.")
        return

    tgtFile = mc.fileDialog2(
        fileFilter="*weight*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtFile is None:
        return
    else:
        file.saveJson(tgtFile[0], weightJntDict, force=1)
        tgtDir = os.path.dirname(tgtFile[0])

        for mesh, skinC in skinDict.items():
            mc.deformerWeights(
                mesh.name + ".xml", ex=1, deformer=skinC, format="XML", path=tgtDir
            )
        logging.info(f"{len(skinDict)} objects' weight saved.")


def copyWeight(*args):
    """Copy skin weights from selected mesh to other selected meshes."""
    sel = mc.ls(sl=1)
    if len(sel) < 2:
        mc.confirmDialog(
            t="Error", m="Select clean mesh first, then source mesh.     ", b="OK"
        )
        return

    src = MshNode(sel[-1])
    tgts = sel[:-1]

    if not src.skinCluster.exists():
        mc.confirmDialog(
            t="Error", m=f"Source mesh has NO skinCluster: {src}     ", b="OK"
        )
        return

    for tgt in tgts:
        src.copyWeightsTo(tgts)

    logging.info(f"Weight copied from {src.name} to {len(tgts)} meshes.")
