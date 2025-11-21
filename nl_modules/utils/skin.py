import os
import glob
import logging
from maya import cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import common
from nl_modules.utils import control
from nl_modules.utils import file


def skinRefJnts(meshes=None, jnts=None, thld=5, uiPB=None):
    """Skin meshes to their _refJnt if found and within threshold distance."""
    weighted = 0
    ignored = 0

    if uiPB:
        uiPB.setMaximum(len(meshes))

    common.xRayAllGeo(1)
    for i, mesh in enumerate(meshes):
        mc.select(mesh)
        mc.refresh(f=1)
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
    common.xRayAllGeo(0)

    if uiPB:
        uiPB.setValue(0)
    logging.info(f"refJnts : {weighted} weighted. {ignored} already bind.")


def autoBind_rbnJnts(meshes=None, uiPB=None):
    """Skin target meshes to their _rbJnt if found."""

    found = 0
    ignored = 0
    weighted = 0

    if uiPB:
        uiPB.setMaximum(len(meshes))

    for i, mesh in enumerate(meshes):
        if uiPB:
            uiPB.setValue(i)

        rbJnt = DagNode(mesh.name + "_rbJnt")
        if not rbJnt.exists():
            continue

        found += 1
        if mesh.skinCluster.exists():
            ignored += 1
            continue

        mc.select(mesh)
        mc.refresh(f=1)
        mesh.weightTo(rbJnt, mi=1, tsb=1)
        weighted += 1

    if uiPB:
        uiPB.setValue(0)

    logging.info(f"{found} rbJnts found, {ignored} ignored, {weighted} weighted.")


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
            os.path.join(charPath, "weight", os.path.basename(charPath) + "_wgh*.json")
        )
        if not tgtFiles:
            tgtFiles = mc.fileDialog2(
                fileFilter="*.json", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtFiles:
        return

    tgtDir = os.path.dirname(tgtFiles[-1])
    weightJnt_dict = file.loadJson(tgtFiles[-1])
    logging.info(f"Weight file {tgtFiles[-1]} loaded.")

    if uiPB:
        uiPB.setMaximum(len(weightJnt_dict))
    i = 0
    loadCount = 0
    common.xRayAllGeo(1)
    mc.setToolTo("selectSuperContext")
    control.reset_all_ctl()

    for mesh in weightJnt_dict:

        if not mc.objExists(mesh):
            continue

        weightFile = tgtDir + "/" + mesh + ".xml"
        if not mc.file(weightFile, q=1, ex=1):
            logging.warning(f"Weight file NOT found: {weightFile}")
            continue

        loadCount += skinAndLoadW(mesh, weightJnt_dict[mesh], tgtDir)

        if uiPB:
            i += 1
            uiPB.setValue(i)
    if uiPB:
        uiPB.setValue(0)

    logging.info(f"{loadCount} objects weight loaded.")
    # mc.confirmDialog(t="Info", m=f"{loadCount} objects weight loaded.     ", b="OK")
    mc.select(cl=1)
    common.xRayAllGeo(0)


def skinAndLoadW(mesh=None, bindJnts=None, tgtDir=None):
    """Skin a mesh to joints and load skin weights from XML file."""
    # Delete skin if exists
    skinC = MshNode(mesh).skinCluster
    if skinC.exists():
        skinC.delete()

    for jnt in bindJnts:
        if not mc.objExists(jnt):
            logging.info(f"{mesh}'s weight NOT loaded. Bind joint missing: {jnt}.")
            mc.confirmDialog(t="Info", m=f"Bind joint Missing.\n'{jnt}'     ", b="OK")
            return 0
    try:
        skinC = mc.skinCluster(mesh, bindJnts, tsb=1)
    except Exception as e:
        logging.warning(f"Skinning {mesh}failed: {e}")
        return 0

    mc.select(mesh)
    mc.refresh(f=1)
    mc.deformerWeights(
        mesh + ".xml",
        im=1,
        method="index",
        deformer=skinC,
        format="XML",
        path=tgtDir,
    )
    # logging.info(f"{mesh}'s weight loaded.")
    return 1


def saveWeight():
    """Save skin weight joints for selected meshes to a JSON file.
    If nothing selected, look up at the "character" group.
    """
    charPath = mc.optionVar(q="charPath")
    if charPath == None or charPath == "":
        mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
        return

    weightJntDict = {}
    skinDict = {}

    tgtFile = mc.fileDialog2(
        fileFilter="*wgh*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtFile is None:
        return

    selList = mc.ls(sl=1, tr=1)
    if not selList:
        charName = os.path.basename(charPath)
        mdlGrp = DagNode(charName)
        if mdlGrp.exists():
            selList = mc.ls(mdlGrp)
        else:
            return
    meshesToSave = common.getObjectBelow(selList, tgtType="mesh")

    for mesh in meshesToSave:
        skinC = MshNode(mesh).skinCluster
        if skinC.exists():
            jntList = mc.listConnections(skinC + ".matrix", type="joint")
            weightJntDict[mesh.name] = jntList
            skinDict[mesh] = skinC

    if not weightJntDict:
        mc.confirmDialog(
            t="Info", m="No skinned mesh found under selected.     ", b="OK"
        )
        return

    file.saveJson(tgtFile[0], weightJntDict, force=1)
    tgtDir = os.path.dirname(tgtFile[0])

    for mesh, skinC in skinDict.items():
        mc.deformerWeights(
            mesh.name + ".xml", ex=1, deformer=skinC, format="XML", path=tgtDir
        )
    logging.info(f"{len(skinDict)} object weights saved.")


def copyWeight(*args):
    """Copy skin weights from selected mesh to other selected meshes."""
    sel = mc.ls(sl=1)
    if len(sel) < 2:
        mc.confirmDialog(
            t="Info", m="Select clean mesh first, then source mesh.     ", b="OK"
        )
        return

    src = MshNode(sel[-1])
    tgts = sel[:-1]

    if not src.skinCluster.exists():
        mc.confirmDialog(
            t="Info", m=f"Source mesh has NO skinCluster: {src}     ", b="OK"
        )
        return

    for tgt in tgts:
        src.copyWeightsTo(tgts)

    logging.info(f"Weight copied from {src.name} to {len(tgts)} meshes.")


def mirrorWeight(*args):
    """Mirror skin weights symmetrically for selected meshes."""
    sel = mc.ls(sl=1, tr=1)
    if not sel:
        mc.confirmDialog(t="Info", m="Select skinned meshes to mirror.     ", b="OK")
        return

    for msh in sel:
        MshNode(msh).mirrorWeight(sym=args[0])

    logging.info(f"Symmetrical skin weights mirrored for {len(sel)} meshes.")


def pruneWeight(*args):
    """Prune skin weights below threshold for selected meshes."""
    sel = mc.ls(sl=1, tr=1)
    if not sel:
        mc.confirmDialog(t="Info", m="Select skinned meshes to prune.     ", b="OK")
        return

    for msh in sel:
        MshNode(msh).pruneWeight()

    logging.info(f"Skin weights pruned for {len(sel)} meshes.")
