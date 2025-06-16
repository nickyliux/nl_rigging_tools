import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.msh_node import MshNode


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


def mirrorProxy():
    for p in mc.ls(sl=1):

        curr = MshNode(p)
        isLf = curr.name.startswith("lf")
        isRt = curr.name.startswith("rt")
        if isLf or isRt:
            oppPf = "rt" if isLf else "lf"
            oppName = oppPf + DagNode(p).name[2:]
            opp = DagNode(oppName)
            if opp.exists():
                oppParent = opp.parent
                #
                #   delete opposite and create mirrored
                #
                opp.delete()
                dup = curr.duplicate()
                dup.rename(oppName)
                g = GrpNode("temp#")
                dup.parentTo(g)
                g.a.sx.set(-1)
                dup | oppParent
                g.delete()
    mc.select(cl=1)


def combineProxy():
    """
    Create ptSet for combined proxy using closestPointOnMesh
    Return combined mesh
    """
    proxies = mc.ls("*_pxGeo")
    dup = mc.duplicate(proxies)
    combined = DagNode(mc.polyUnite(dup, n="combinedProxy#", ch=0)[0])

    cpom = DagNode("cpom", nodeType="closestPointOnMesh")
    combined.shape.a.outMesh >> cpom.a.inMesh

    ptSet = []
    for p in proxies:
        count = mc.polyEvaluate(p, v=1)
        for i in range(count):
            xf = mc.xform(f"{p}.vtx[{i}]", q=1, ws=1, t=1)
            cpom.a.inPosition.set(*xf)
            id = cpom.a.closestVertexIndex.get()
            ptSet.append(f"{p}.vtx[{id}]")
        mc.sets(ptSet, name=p + "_PS")

    cpom.delete()
    return combined


def setProxyWeight(combined, proxies):
    import maya.mel as mel

    skinC = mel.eval("findRelatedSkinCluster " + combined)
    bindJnts = mc.skinCluster(skinC, q=1, inf=1)

    for p in proxies:
        ptSet = DagNode(p + "_PS")
        if ptSet.exists():
            proxyJ = DagNode(mc.substitute("_pxGeo", p, ""))
            if proxyJ.exists() and proxyJ.type == "joint":
                pass


# 			# mc.skinPercent(proxyJ, tv=1, skinC, ptSet)
