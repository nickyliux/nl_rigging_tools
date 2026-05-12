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
    """Create distanceDimension node between two objects
    
    Inputs:
        obj1: First object to measure from
        obj2: Second object to measure to
    
    Process:
        Creates a group for the distance dimension setup
        Creates two locators parented to the group
        Creates distanceDimension node connected between locators
        Constrains locators to input objects with point constraints
        Parents dimension to group
    
    Output:
        distance: Distance value from distanceDimension node
    """
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.loc_node import LocNode

    grpN = GrpNode("#", p="distDim", pf=obj2.name)
    locA = LocNode("distLoc_#", p=grpN)
    locB = LocNode("distLoc_#", p=grpN)
    distDim = DagNode(mc.distanceDimension(locA, locB))
    distDim.parent | grpN

    DagNode(obj1).cstPoi(locA)
    DagNode(obj2).cstPoi(locB)
    return distDim.a.distance


def distDim2_(obj1, obj2):
    """Create distanceDimension node between two objects with alignment
    
    Inputs:
        obj1: First object to measure from
        obj2: Second object to measure to
    
    Process:
        Creates a group for the distance dimension setup
        Creates two locators aligned to the input objects
        Creates distanceDimension node connected between locators
        Parents dimension to group
    
    Output:
        distance: Distance value from distanceDimension node
    """
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.loc_node import LocNode

    grpN = GrpNode("distDim")
    locA = LocNode("distLoc_#", align=obj1, p=obj1)
    locB = LocNode("distLoc_#", align=obj2, p=obj2)
    distDim = DagNode(mc.distanceDimension(locA, locB))
    distDim.parent | grpN

    return distDim.a.distance


def arcLenDim_(srfOrCrv, u=1, v=1):
    """Create arcLengthDimension node for surface or curve
    
    Inputs:
        srfOrCrv: Surface or curve object to measure
        u: U parameter value (default 1)
        v: V parameter value (default 1)
    
    Process:
        Creates arcLengthDimension node connected to input geometry
        Sets U and V parameter values based on geometry type
        Hides the dimension node
    
    Output:
        arcLD: arcLengthDimension node
    """
    from nl_modules.nodel.srf_node import SrfNode

    arcLD = DagNode(srfOrCrv + "_arcLD__#", nodeType="arcLengthDimension")
    arcLD.parent | srfOrCrv
    srfOrCrv.shape.a.worldSpace >> arcLD.a.nurbsGeometry

    if srfOrCrv.type == "nurbsSurface":
        arcLD.a.uParamValue.set(SrfNode(srfOrCrv).uSeg)
        arcLD.a.vParamValue.set(SrfNode(srfOrCrv).vSeg)
    elif srfOrCrv.type == "nurbsCurve":
        arcLD.a.uParamValue.set(u)
        arcLD.a.vParamValue.set(v)

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
    driven=None
):
    """Create motionPath node along curve
    
    Inputs:
        crv: Curve object to follow
        uValue: U parameter value on curve (default 0)
        fractionMode: Use fraction mode if 1 (default 1)
        follow: Follow curve direction if 1 (default 1)
        worldUpType: World up vector type (default 2)
        worldUpVector: World up vector (0, 1, 0) (default)
        worldUpObject: Object to use as world up (default None)
        frontAxis: Front axis orientation (default 0)
        inverseFront: Inverse front axis if 1 (default 0)
        upAxis: Up axis orientation (default 1)
        driven: Target transform to drive with motion path (default None)
    
    Process:
        Creates motionPath node connected to input curve
        Sets all parameters for path following behavior
        Optionally drives target transform with output
    
    Output:
        n: motionPath node
    """
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
    """Create nonlinear deformer on targets
    
    Inputs:
        targets: Target object(s) to deform
        nodeType: Type of nonlinear deformer (default "twist")
    
    Process:
        Creates nonlinear deformer node connected to targets
        Returns both deformer and handle transform nodes
    
    Output:
        [deformerNode, handleTransform]: Deformer and its handle
    """
    dfm = mc.nonLinear(targets, n="dfm__#", type=nodeType)
    return [DepNode(dfm[0]), DagNode(dfm[1])]


def choice_(attrTargets, selector):
    """Create choice node to select between multiple inputs
    
    Inputs:
        attrTargets: List of attributes to choose from
        selector: Attribute controlling which input to output
    
    Process:
        Creates choice node connected to input attributes
        Selector controls which input is passed through
    
    Output:
        output: Selected attribute based on selector value
    """
    n = DepNode("cho__#", "choice")
    for t in attrTargets:
        t >> n.a.input
    selector >> n.a.selector

    return n.a.output

def cpos_(srf, obj, dynamic=0):
    """Create closestPointOnSurface node
    
    Inputs:
        srf: Surface or mesh object
        obj: Object to find closest point on surface
    
    Process:
        Creates closestPointOnSurface / closestPointOnMesh node
        Connected to input surface/mesh and object position
    
    Output:
        The closestPointOnSurface / closestPointOnMesh node
    """
    from nl_modules.nodel.loc_node import LocNode

    if isinstance(srf, str):
        srf = DagNode(srf)
    if isinstance(obj, str):
        obj = DagNode(obj)

    if srf.type == 'nurbsSurface':
        n = DagNode("cpos__#", nodeType="closestPointOnSurface")
        srf.shape.a.worldSpace >> n.a.inputSurface
    elif srf.type == 'mesh':
        n = DagNode("cpom__#", nodeType="closestPointOnMesh")
        srf.shape.a.outMesh >> n.a.inMesh

    if dynamic:
        loc = LocNode('tmpLoc', p=obj, align=obj)
        loc.shape.a.worldPosition >> n.a.inPosition
        loc.hide()
    else:
        worldPos = mc.xform(obj, q=1, ws=1, t=1)    
        n.a.inPosition.set(*worldPos)

    return n

def follicle2_(srf, obj, u=0.5, v=0.5, dynamic=0):
    """Create follicle node at closest point on surface
    
    Inputs:
        srf: Surface or mesh object
        obj: Object to find closest point on surface
        u: U parameter value (default 0.5)
        v: V parameter value (default 0.5)
        dynamic: Use dynamic locator if 1, else static position (default 0)
    
    Process:
        Creates closestPointOnSurface/Mesh node to find closest point
        Creates follicle node at that position
        Connects u,v parameters from closest point to follicle
    
    Output:
        folXf: Transform node of follicle
    """
    cpos = cpos_(srf, obj, dynamic=dynamic)
    v = cpos.a.parameterV
    u = cpos.a.parameterU
    if dynamic:
        return follicle_(srf, u, v)
    else:
        return follicle_(srf, u.get(), v.get())

def follicle_(srf, u=0.5, v=0.5):
    """Create follicle node on surface
    
    Inputs:
        srf: Surface or mesh object
        u: U parameter value (default 0)
        v: V parameter value (default 0)
        nurbs: Use NURBS surface if 1, else mesh (default 1)
    
    Process:
        Creates follicle node connected to input surface
        Sets u,v parameters and connects transforms
    
    Output:
        folXf: Transform node of follicle
    """
    n = DagNode(n="flc__#", nodeType="follicle")

    if isinstance(srf, str):
        srf = DagNode(srf)
    
    if srf.type == 'nurbsSurface':
        srf.shape.a.local >> n.a.inputSurface
    elif srf.type == 'mesh':
        srf.shape.a.outMesh >> n.a.inputMesh
        
    srf.shape.a.worldMatrix >> n.a.inputWorldMatrix
    folXf = n.parent
    n.a.outTranslate >> folXf.a.t
    n.a.outRotate >> folXf.a.r
    u >> n.a.parameterU
    v >> n.a.parameterV
    n.a.simulationMethod.set(0)
    return folXf


def sin_(input):
    """Create sine node for input"""
    n = DepNode("sin__#", "eulerToQuat")
    2 * input >> n.a.inputRotateX
    return n.a.outputQuatX


def noise_(input, noiseShake=2):
    """Create noise node for input
    
    Inputs:
        input: Attribute to drive noise time
        noiseShake: Frequency ratio for noise (default 2)
    
    Process:
        Creates noise node connected to input attribute
        Sets frequency ratio and noise type to perlin
        Scales output to [-1, 1] range
    
    Output:
        Scaled noise output in range [-1, 1]
    """
    n = DepNode("noise__#", "noise")
    input >> n.a.time
    noiseShake >> n.a.frequencyRatio
    n.a.noiseType.set(4)
    n.a.alphaOffset.set(-0.5)

    return 2 * n.a.outAlpha
