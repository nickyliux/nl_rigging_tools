import maya.cmds as mc


def blendC_(attr1, attr2, w=0.5):
    """Blend inputs with blendColors node
    e.g.
        blendC_(1, 5)       # (3,0,0)
        blendC_(1, 5, w=0)  # (1,0,0)
        blendC_(1, 5, w=1)  # (5,0,0)
    """
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("blC__#", "blendColors")
    attr1 >> n.a.color2
    attr2 >> n.a.color1
    w >> n.a.blender
    return n.a.output


def blendN_(attr1, attr2, w=0.5):
    """Blend inputs with animBlendNodeAdditiveRotation node
    e.g.
        blendN_(1, 5)       # (3,0,0)
        blendN_(1, 5, w=0)  # (1,0,0)
        blendN_(1, 5, w=1)  # (5,0,0)
    """
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("blN__#", "animBlendNodeAdditiveRotation")
    attr1 >> n.a.inputB
    attr2 >> n.a.inputA
    w >> n.a.weightA
    ~w >> n.a.weightB
    return n.a.output


def blend2_(attr1, attr2, w=0.5):
    """Return blend attr of two input and weight
    e.g.
        blend2_(1, 5)       # 3
        blend2_(1, 5, w=0)  # 1
        blend2_(1, 5, w=1)  # 5
    """
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("bl2__#", "blendTwoAttr")
    attr1 >> n.a.input
    attr2 >> n.a.input
    w >> n.a.attributesBlender
    return n.a.output


def min_(attr1, attr2):
    """Return min attr of the two inputs
    e.g.
        min(1,5)  # 1
    """
    return (attr1 < attr2).setCdn(ifTrue=attr1, ifFalse=attr2, n="min__#")


def max_(attr1, attr2):
    """Return max attr of the two inputs
    e.g.
        max(1,5)  # 5
    """
    return (attr1 > attr2).setCdn(ifTrue=attr1, ifFalse=attr2, n="max__#")


def clp_(attr, min=0, max=0):
    """Return clamp attr between min max
    e.g.
        clamp(3, 10, 20)  # 10
        clamp(3, -10, 5)  # 3
    """
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("clp__#", "clamp")
    min >> n.a.minR
    max >> n.a.maxR
    attr >> n.a.inputR
    return n.a.outputR


def remap_(attr, minIn, maxIn, minOut, maxOut):
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("rmp__#", "remapValue")
    minIn >> n.a.inputMin
    maxIn >> n.a.inputMax
    minOut >> n.a.outputMin
    maxOut >> n.a.outputMax
    attr >> n.a.inputValue
    return n.a.outValue


def setRange_(attr, minOld, maxOld, minNew, maxNew):
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("seR__#", "setRange")
    minOld >> n.a.oldMinX
    maxOld >> n.a.oldMaxX
    minNew >> n.a.minX
    maxNew >> n.a.maxX
    attr >> n.a.valueX
    return n.a.outValueX


def distDim_(obj1, obj2):
    """Return distance attr for two objects with distanceDimension
    e.g.
        d = distDim_(obj1, obj2)
    """
    from nl_modules.nodel.group_node import GroupNode
    from nl_modules.nodel.loc_node import LocNode
    from nl_modules.nodel.base.dag_node import DagNode

    grpN = GroupNode("distDim_grp#", p="distDim_GRP", pf=obj2.name)
    locA = LocNode("distLocA__#", p=grpN)
    locB = LocNode("distLocB__#", p=grpN)
    distDim = DagNode(mc.distanceDimension(locA, locB))
    distDim.parent | grpN

    DagNode(obj1).cstPoi(locA)
    DagNode(obj2).cstPoi(locB)
    grpN.hide()
    return distDim.a.distance


def arcLenDim_(crv, u=1, v=1):
    """Return arcLengthDimension node for curve"""
    from nl_modules.nodel.base.dag_node import DagNode

    arcLD = DagNode(crv + "_arcLD__#", nodeType="arcLengthDimension")
    arcLD.parent | crv

    crv.shape.a.worldSpace >> arcLD.a.nurbsGeometry
    arcLD.a.uParamValue.set(u)
    arcLD.a.vParamValue.set(v)
    return arcLD


def motionPath_(
    crv,
    uValue=0,
    fractionMode=1,
    follow=1,
    worldUpType=2,
    worldUpVector=(0, 1, 0),
    worldUpObject=None,
    frontAxis=0,
    inverseFront=0,
    upAxis=1,
    driven=None,
):
    """Create motion path for curve
    e.g.
        motionPath_(crv1, driven=obj1)
    """
    from nl_modules.nodel.base.dep_node import DepNode

    n = DepNode("mpt__#", "motionPath")
    if crv:
        crv.shape.a.worldSpace >> n.a.geometryPath

    n.a.uValue.set(uValue)
    n.a.fractionMode.set(fractionMode)
    n.a.follow.set(follow)
    n.a.frontAxis.set(frontAxis)
    n.a.upAxis.set(upAxis)
    n.a.worldUpType.set(worldUpType)
    n.a.inverseFront.set(inverseFront)
    n.a.worldUpVectorX.set(worldUpVector[0])
    n.a.worldUpVectorY.set(worldUpVector[1])
    n.a.worldUpVectorZ.set(worldUpVector[2])

    if worldUpObject:
        worldUpObject.a.worldMatrix >> n.a.worldUpMatrix
    if driven:
        n.a.r >> driven.a.r
        n.a.ro >> driven.a.ro
        n.a.allCoordinates + driven.a.transMinusRotatePivot >> driven.a.t
    return n


def nonlinear_(targets, nodeType="twist"):
    """Create non-linear deformer for targets
    e.g.
        nonlinear_([obj1,obj2], nodeType='twist'  # [dfm_node, dfm_handle]
    """
    from nl_modules.nodel.base.dep_node import DepNode
    from nl_modules.nodel.base.dag_node import DagNode

    dfm = mc.nonLinear(targets, n="dfm__#", type=nodeType)
    return [DepNode(dfm[0]), DagNode(dfm[1])]


def follicle_(inSurf, u=0, v=0):
    """Create follicle on surface and return follicle xform"""
    from nl_modules.nodel.base.dep_node import DepNode
    from nl_modules.nodel.base.dag_node import DagNode

    n = DepNode(n="flc__#", nodeType="follicle")
    folXf = DagNode(mc.listRelatives(n.fullPath, path=1, p=1)[0])

    inSurf.shape.a.local >> n.a.inputSurface
    inSurf.shape.a.worldMatrix >> n.a.inputWorldMatrix
    n.a.outTranslate >> folXf.a.t
    n.a.outRotate >> folXf.a.r
    n.a.parameterU.set(u)
    n.a.parameterV.set(v)
    return folXf
