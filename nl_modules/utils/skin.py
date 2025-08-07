import logging
from maya import cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.msh_node import MshNode


def skinRefJnts(tgts, closestSet, thld=5, uiPB=None):
    """Skin target meshes to their _refJnt if found and within threshold distance."""

    weighted = 0
    ignored = 0

    if uiPB:
        uiPB.setMaximum(len(tgts))

    for i, mesh in enumerate(tgts):
        jnt = DagNode(mesh.name + "_refJnt")

        if jnt.exists():
            if mesh.skinCluster:
                ignored += 1
            else:
                closest = jnt.getClosestInList(closestSet)
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


def skinRbJnts(tgts, uiPB=None):
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


def delSkinForAllMeshes():
    """Delete skinClusters for all meshes in the scene."""

    allMeshes = mc.ls(type="mesh") or []
    count = 0
    for msh in allMeshes:
        count += MshNode(msh).delSkin()

    logging.info(f"{count} skinClusters deleted.")
