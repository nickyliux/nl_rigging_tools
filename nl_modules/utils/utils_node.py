import maya.cmds as mc
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.base.dag_node import DagNode


def blendC_(attr1, attr2, w=0.5):
    """Blend inputs with blendColors node"""
    n = DepNode("blC__#", "blendColors")
    attr1 >> n.a.color2
    attr2 >> n.a.color1
    w >> n.a.blender
    return n.a.output


def blendN_(attr1, attr2, w=0.5):
    """Blend inputs with animBlendNodeAdditiveRotation node"""
    n = DepNode("blN__#", "animBlendNodeAdditiveRotation")
    attr1 >> n.a.inputB
    attr2 >> n.a.inputA
    w >> n.a.weightA
    ~w >> n.a.weightB
    return n.a.output


def blend2_(attr1, attr2, w=0.5):
    """Blend inputs with blendTwoAttr node"""
    n = DepNode("bl2__#", "blendTwoAttr")
    attr1 >> n.a.input
    attr2 >> n.a.input
    w >> n.a.attributesBlender
    return n.a.output


def min_(attr1, attr2):
    """Return min attr of the two inputs"""
    return (attr1 < attr2).setCdn(ifTrue=attr1, ifFalse=attr2, n="min__#")


def max_(attr1, attr2):
    """Return max attr of the two inputs"""
    return (attr1 > attr2).setCdn(ifTrue=attr1, ifFalse=attr2, n="max__#")


def clp_(attr, min=0, max=0):
    """Return clamp attr between min max"""
    n = DepNode("clp__#", "clamp")
    min >> n.a.minR
    max >> n.a.maxR
    attr >> n.a.inputR
    return n.a.outputR


def remap_(attr, minIn, maxIn, minOut, maxOut):
    """Return remap attr between minIn maxIn to minOut maxOut"""
    n = DepNode("rmp__#", "remapValue")
    minIn >> n.a.inputMin
    maxIn >> n.a.inputMax
    minOut >> n.a.outputMin
    maxOut >> n.a.outputMax
    attr >> n.a.inputValue
    return n.a.outValue


def setRange_(attr, minOld, maxOld, minNew, maxNew):
    """Return setRange attr between minOld maxOld to minNew maxNew"""
    n = DepNode("seR__#", "setRange")
    minOld >> n.a.oldMinX
    maxOld >> n.a.oldMaxX
    minNew >> n.a.minX
    maxNew >> n.a.maxX
    attr >> n.a.valueX
    return n.a.outValueX


def distDim_(obj1, obj2):
    """Return distanceDimension node between two objects"""
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.loc_node import LocNode

    grpN = GrpNode("distDim_grp#", p="distDim_GRP", pf=obj2.name)
    locA = LocNode("distLocA__#", p=grpN)
    locB = LocNode("distLocB__#", p=grpN)
    distDim = DagNode(mc.distanceDimension(locA, locB))
    distDim.parent | grpN

    DagNode(obj1).cstPoi(locA)
    DagNode(obj2).cstPoi(locB)
    return distDim.a.distance


def arcLenDim_(srfOrCrv):
    """Return arcLengthDimension node for srf/crv"""
    from nl_modules.nodel.srf_node import SrfNode

    arcLD = DagNode(srfOrCrv + "_arcLD__#", nodeType="arcLengthDimension")
    arcLD.parent | srfOrCrv
    srfOrCrv.shape.a.worldSpace >> arcLD.a.nurbsGeometry

    if srfOrCrv.type == "nurbsSurface":
        arcLD.a.uParamValue.set(SrfNode(srfOrCrv).uSeg)
        arcLD.a.vParamValue.set(SrfNode(srfOrCrv).vSeg)
    elif srfOrCrv.type == "nurbsCurve":
        arcLD.a.uParamValue.set(1)
        arcLD.a.vParamValue.set(1)
    arcLD.hide()
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
    """Create motionPath node for curve with uValue and options"""
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
    """Create twist nonlinear node for multiple targets"""
    dfm = mc.nonLinear(targets, n="dfm__#", type=nodeType)
    return [DepNode(dfm[0]), DagNode(dfm[1])]


def choice_(attrTargets, selector):
    """Create choice node for multiple attributes and selector"""
    n = DepNode("cho__#", "choice")
    for t in attrTargets:
        t >> n.a.input
    selector >> n.a.selector

    return n.a.output


def follicle_(inSurf, u=0, v=0):
    """Create follicle node for input surface with u, v parameters"""
    n = DepNode(n="flc__#", nodeType="follicle")
    folXf = DagNode(mc.listRelatives(n.fullPath, path=1, p=1)[0])

    inSurf.shape.a.local >> n.a.inputSurface
    inSurf.shape.a.worldMatrix >> n.a.inputWorldMatrix
    n.a.outTranslate >> folXf.a.t
    n.a.outRotate >> folXf.a.r
    n.a.parameterU.set(u)
    n.a.parameterV.set(v)
    return folXf


def sin_(input):
    """Create sine node for input"""
    n = DepNode("sin__#", "eulerToQuat")
    2 * input >> n.a.inputRotateX
    return n.a.outputQuatX


def noise_(input, shake):
    """Create noise node for input with specified noise type"""
    n = DepNode("noise__#", "noise")
    input >> n.a.time
    shake >> n.a.frequencyRatio
    n.a.noiseType.set(4)
    n.a.alphaOffset.set(-0.5)

    return 3 * n.a.outAlpha
