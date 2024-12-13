from maya import OpenMaya as om


def toMObject(node):
    """get MObj"""
    if node:
        obj = om.MObject()
        sl = om.MSelectionList()
        sl.add(node)
        sl.getDependNode(0, obj)
        return obj

    return None


def toDpNode(node):
    """get MDependency node"""
    if node:
        obj = toMObject(node)
        return om.MFnDependencyNode(obj)
    return None


def toMDagPath(node):
    """get MDag node"""
    if node:
        obj = toMObject(node)
        if obj.hasFn(om.MFn.kDagNode):
            return om.MDagPath.getAPathTo(obj)
    return None


def getKnotsList(crvShape):
    """get knots from shape"""
    mObj = om.MObject()
    sel = om.MSelectionList()
    sel.add(crvShape)
    sel.getDependNode(0, mObj)

    fnCrv = om.MFnNurbsCurve(mObj)
    tmp = om.MDoubleArray()
    fnCrv.getKnots(tmp)

    return [tmp[i] for i in range(tmp.length())]
