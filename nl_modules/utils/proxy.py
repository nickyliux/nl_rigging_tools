import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode


def nlShrinkWrap(target=None, meshes=None, keep=0, **kwargs):
    """
    Example
        from nl_modules.utils import proxy
        proxy.create_shrink_wrap('tgtMesh', ['obj1'])
    """
    settings = [
        ("projection", 4),
        #   0: To inner
        #   1: To center
        #   2: // to axis
        #   3:  vtx normal
        #   4: closest
        ("closestIfNoIntersection", 1),
        ("reverse", 0),
        ("bidirectional", 1),
        ("boundingBoxCenter", 1),
        ("axisReference", 1),
        ("alongX", 0),
        ("alongY", 0),
        ("alongZ", 1),
        ("offset", 0),
        ("targetInflation", 0),
        ("targetSmoothLevel", 0),
        ("falloff", 0),
        ("falloffIterations", 1),
        ("shapePreservationEnable", 0),
        ("shapePreservationSteps", 1),
    ]

    shWrap = DagNode(mc.deformer(meshes, type="shrinkWrap")[0])

    for param, val in settings:
        shWrap.a[param].set(kwargs.get(param, val))

    connections = [
        ("worldMesh", "targetGeom"),
        ("continuity", "continuity"),
        ("smoothUVs", "smoothUVs"),
        ("keepBorder", "keepBorder"),
        ("boundaryRule", "boundaryRule"),
        ("keepHardEdge", "keepHardEdge"),
        ("propagateEdgeHardness", "propagateEdgeHardness"),
        ("keepMapBorders", "keepMapBorders"),
    ]

    tgtShape = DagNode(target).shape

    for outPlug, inPlug in connections:
        tgtShape.a[outPlug] >> shWrap.a[inPlug]

    if keep:
        return shWrap
    else:
        [DagNode(m).deleteHistory() for m in meshes]
