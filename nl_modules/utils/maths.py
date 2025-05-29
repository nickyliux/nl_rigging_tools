import maya.cmds as mc
import math
from nl_modules.nodel.base.dag_node import DagNode


def getDistBetwObj(obj1, obj2):
    """Get distance between two objects"""
    obj1 = DagNode(obj1)
    obj2 = DagNode(obj2)

    if obj1.exists() and obj2.exists():
        pt1 = mc.xform(obj1, ws=1, t=1, q=1)
        pt2 = mc.xform(obj2, ws=1, t=1, q=1)
        return getDistBetwPt(pt1, pt2)


def getDistBetwPt(pt1, pt2):
    """Get distance between two points"""

    if isinstance(pt1, (tuple, list)) and isinstance(pt2, (tuple, list)):
        xD = pt2[0] - pt1[0]
        yD = pt2[1] - pt1[1]

        if len(pt1) > 2 and len(pt2) > 2:
            zD = pt2[2] - pt1[2]
            return math.sqrt(xD * xD + yD * yD + zD * zD)
        else:
            return math.sqrt(xD * xD + yD * yD)


def mul(*inVal):
    """Scalar multi of vector with last value"""
    return [n * inVal[-1] for n in inVal[:-1]]
