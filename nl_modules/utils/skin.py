import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.msh_node import MshNode


def skinRefJnts(tgts, closestSet, thld=5, uiPB=None):
    """
    Skin target meshes to joints in closestSet, acc to threshold
    """
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
    """
    Skin target meshes to it's _rbJnt if found
    """
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

    logging.info(f"{weighted} weighted. {ignored} ignored. {notFound} not found.")
