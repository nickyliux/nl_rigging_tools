import os
import glob
import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import common
from nl_modules.utils import control
from nl_modules.utils import file


def skinRefJnts(meshes=None, jnts=None, thld=5):
    """Skin meshes to their _refJnt if found and within threshold distance."""
    weighted = 0
    ignored = 0

    mc.progressWindow(
        t="Auto Bind Sk", pr=0, status="\nPreparing ...", ii=0, maxValue=len(meshes)
    )
    for i, mesh in enumerate(meshes):

        mc.select(mesh)
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
                mesh.weightTo(closest, mi=1)  # , tsb=1)
                weighted += 1
            else:
                ignored += 1
        else:
            ignored += 1
        mc.progressWindow(e=1, pr=i, status=f"\n{mesh.name}")

    mc.progressWindow(ep=1)
    logging.info(f"Ref Joints: weighted {weighted}, and skipped {ignored}.")


def skinRbJnts(meshes=None):
    """Skin target meshes to their _rbJnt if found."""
    ignored = 0
    weighted = 0
    for i, mesh in enumerate(meshes):

        rbJnt = DagNode(mesh.name + "_rbJnt")
        if not rbJnt.exists():
            continue
        if mesh.skinCluster.exists():
            ignored += 1
            continue

        mesh.weightTo(rbJnt, mi=1)  # , tsb=1)
        weighted += 1

    logging.info(f"Rbn Joints: weighted {weighted}, and skipped {ignored}.")


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
            skinC = DagNode(msh).skinCluster
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
        count += delSkin(DagNode(msh))

    logging.info(f"{count} skinClusters deleted.")


def delSkin(tgt):
    """Delete the skinCluster connected to the mesh"""
    sc = tgt.skinCluster
    if sc.exists():
        try:
            sc.delete()
            return 1
        except RuntimeError:
            mc.warning(f"Failed to delete skinCluster: {sc}")
    return 0


def loadWeight(loadLatest=1):
    """Load skin weight joints from a JSON file."""
    # charPath = mc.optionVar(q="charDir")
    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        if loadLatest:
            tgtPaths = glob.glob(
                os.path.join(
                    charPath, "weight", os.path.basename(charPath) + "_wgh*.json"
                )
            )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*.json", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)

    weightJnt_dict = file.loadJson(tgtPaths[-1])
    logging.info(f"Weight file {tgtPaths[-1]} loaded.")

    mc.progressWindow(
        t="Loading", pr=0, status="\nRunning ...", ii=0, maxValue=len(weightJnt_dict)
    )
    loadCount = 0

    common.xRayAllGeo(1)
    control.reset_all_ctl()

    tgtDir = os.path.dirname(tgtPaths[-1])
    for i, mesh in enumerate(weightJnt_dict):

        if not mc.objExists(mesh):
            continue
        else:
            mesh = DagNode(mesh)

        weightFile = tgtDir + "/" + mesh + ".xml"
        if not mc.file(weightFile, q=1, ex=1):
            logging.warning(f"Weight file NOT found: {weightFile}")
            continue
        loadCount += skinAndLoadW(mesh, weightJnt_dict[mesh], tgtDir)

        mc.progressWindow(e=1, pr=i, status=f"\n{mesh.name}")

    mc.progressWindow(ep=1)

    logging.info(f"{loadCount} objects weight loaded.")
    common.xRayAllGeo(0)
    mc.select(cl=1)


def skinAndLoadW(mesh=None, bindJnts=None, tgtDir=None):
    """Skin a mesh to joints and load skin weights from XML file."""
    sc = DagNode(mesh).skinCluster
    if sc.exists():
        sc.delete()

    for jnt in bindJnts:
        if not mc.objExists(jnt):
            logging.info(f"{mesh}'s weight NOT loaded. Bind joint missing: {jnt}.")
            return 0
    try:
        sc = mc.skinCluster(mesh, bindJnts, tsb=1)
    except Exception as e:
        logging.warning(f"Skinning {mesh}failed: {e}")
        return 0

    mc.select(mesh)
    mc.deformerWeights(
        mesh + ".xml",
        im=1,
        method="index",
        deformer=sc,
        format="XML",
        path=tgtDir,
    )
    pruneWeightSel()
    mc.refresh(f=1)
    return 1


def saveWeight():
    """Save skin weight joints for selected meshes to a JSON file.
    If nothing selected, look up at the "character" group.
    """
    charPath = mc.optionVar(q="charFullPath")
    if charPath == None or charPath == "":
        mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
        return

    weightJntDict = {}
    skinDict = {}

    tgtPaths = mc.fileDialog2(
        fileFilter="*wgh*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtPaths is None:
        return

    selList = mc.ls(sl=1, tr=1)

    for t in ["mesh", "surface"]:
        meshesToSave = common.getObjectBelow(selList, tgtType=t)
        for mesh in meshesToSave:
            sc = mesh.skinCluster
            if sc.exists():
                jntList = mc.listConnections(sc + ".matrix", type="joint")
                weightJntDict[mesh.name] = jntList
                skinDict[mesh] = sc

    if not weightJntDict:
        mc.confirmDialog(
            t="Info", m="No skinned mesh found under selected.     ", b="OK"
        )
        return

    file.saveJson(tgtPaths[0], weightJntDict, force=1)
    tgtDir = os.path.dirname(tgtPaths[0])

    for mesh, sc in skinDict.items():
        mc.deformerWeights(
            mesh.name + ".xml", ex=1, deformer=sc, format="XML", path=tgtDir
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


def mirrorWeightSel(*args):
    """Mirror skin weights symmetrically for selected meshes."""
    sel = mc.ls(sl=1, tr=1)
    if not sel:
        mc.confirmDialog(t="Info", m="Select skinned meshes to mirror.     ", b="OK")
        return

    for msh in sel:
        GrpNode(msh).mirrorWeight(sym=args[0])

    logging.info(f"Symmetrical skin weights mirrored for {len(sel)} meshes.")


def pruneWeightSel(*args):
    """Prune skin weights below threshold for selected meshes."""
    sel = [DagNode(s) for s in mc.ls(sl=1, tr=1)]
    if not sel:
        mc.confirmDialog(t="Info", m="Select skinned meshes to prune.     ", b="OK")
        return

    threshold = 0.001
    for msh in sel:
        if msh.skinCluster.exists():
            mc.skinCluster(
                msh.skinCluster.name, e=1, pr=threshold, forceNormalizeWeights=1
            )

    logging.info(f"Skin weights pruned with 0.001 for {len(sel)} meshes.")


def setMaxInfl(tgt, val=8):
    """Set maximum influences for the skinCluster of the mesh"""
    if tgt.skinCluster.exists():
        mc.skinCluster(tgt, e=1, mi=val)
