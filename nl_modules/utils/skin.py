from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.msh_node import MshNode


def skinTgtToClosest(tgts, closestSet, threshold):

    weighted = 0
    ignored = 0

    for i, mesh in enumerate(tgts):
        jnt = DagNode(mesh.name + "_refJnt")
        if jnt.exists():
            if mesh.skinCluster:
                ignored += 1
            else:
                closest = jnt.getClosestInList(closestSet)
                if closest:
                    if closest.o.distanceTo(jnt) < threshold:
                        MshNode(mesh).weightTo(closest, mi=1, tsb=1)
                        weighted += 1
                    else:
                        ignored += 1
                else:
                    ignored += 1
        else:
            ignored += 1

    return ignored, weighted
