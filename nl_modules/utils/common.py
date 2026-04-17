import logging
import os
import re
import maya.cmds as mc
from collections import OrderedDict
from nl_modules.utils.color import Color


CST_DICT = OrderedDict(
    poi=mc.pointConstraint,
    ori=mc.orientConstraint,
    sca=mc.scaleConstraint,
    par=mc.parentConstraint,
    parT=mc.parentConstraint,
    parR=mc.parentConstraint,
    aim=mc.aimConstraint,
    geo=mc.geometryConstraint,
    nml=mc.normalConstraint,
    pvt=mc.poleVectorConstraint,
)


class Vec(tuple):
    """A simple vector class that extends tuple functionality"""

    def __mul__(self, scalar):
        return Vec(x * scalar for x in self)

    def __rmul__(self, scalar):
        return self.__mul__(scalar)


from contextlib import ContextDecorator


class Undo(ContextDecorator):
    """Context manager for undo chunk in Maya."""

    def __init__(self, name=None):
        self.name = name

    def __enter__(self):
        mc.undoInfo(openChunk=True, infinity=True, chunkName=self.name)

    def __exit__(self, exc_type, exc_value, traceback):
        mc.undoInfo(closeChunk=True)


def getUniqueCstDictNames():
    """Return unique constraint names from CST_DICT"""
    cstTypeList = [cst.__name__ for cst in CST_DICT.values()]
    return list(OrderedDict.fromkeys(cstTypeList))


def matchMove(targetList, mode=None):
    """MatchMove all to the last one, default is t=1, r=1, s=0"""
    if not isinstance(targetList, (list, tuple)):
        raise ValueError("matchMove input MUST be a list")
    elif len(targetList) < 2:
        raise ValueError("matchMove input MUST BE > 1")

    mode_dict = {
        None: (1, 1, 0),
        "t": (1, 0, 0),
        "r": (0, 1, 0),
        "s": (0, 0, 0),
        "a": (1, 1, 1),
    }
    if mode not in mode_dict:
        raise ValueError(f"Invalid mode: {mode}")

    t, r, s = mode_dict[mode]
    *others, last = targetList
    mc.matchTransform(*others, last, position=t, rotation=r, scale=s)


def assignColor(preset, tgts=None):
    """Assign preset color to target objects"""
    from nl_modules.nodel.base.dag_node import DagNode

    tgts = tgts or mc.ls(sl=1, tr=1)
    if not tgts:
        return

    for tgt in tgts:
        tgt = DagNode(tgt)
        if tgt.type == "nurbsCurve":
            tgt.color = tgt.get_side_color(preset=preset)

    mc.select(cl=1)


def assignShd(*args, tgts=None):
    """Assign preset shader to target objects"""
    from nl_modules.nodel.base.dag_node import DagNode

    tgts = tgts or mc.ls(sl=1, tr=1)
    if not tgts:
        return
    faceDict = {
        18: [0, 1, 4, 5, 8, 9, 12, 13],
        26: [0, 1, 4, 5, 8, 9, 12, 13, 16, 17, 20, 21],
        34: [0, 1, 4, 5, 8, 9, 12, 13, 16, 17, 20, 21, 24, 25, 28, 29],
    }
    for tgt in tgts:
        tgtN = DagNode(tgt)
        if tgtN.type == "mesh":
            shd, sg = addShader("proxy_grey", color=(0.3, 0.3, 0.3))
            mc.sets(tgtN, forceElement=sg)

            shd, sg = addShader("proxy_orange")
            faceNum = mc.polyEvaluate(tgtN, f=1)
            face_ids = faceDict.get(faceNum, [])
            if face_ids:
                face_components = [f"{tgtN}.f[{fID}]" for fID in face_ids]
                mc.sets(face_components, forceElement=sg)

    mc.select(cl=1)


def addShader(name, shaderType="lambert", color=(0.75, 0.39, 0.26)):
    """Create shader and return shader, shading group"""
    # (1, 0.52, 0.35)
    from nl_modules.nodel.base.dep_node import DepNode

    sg = None
    shd = DepNode(name)

    if shd.exists():
        nodes = shd.a.outColor.outConnNode
        if nodes:
            sg = nodes[0]
    else:
        shd = DepNode(mc.shadingNode(shaderType, name=name, asShader=1))
        shd.a.diffuse.set(0.8)
        shd.a.color.set(*color)

        sg = DepNode(mc.sets(name=f"{name}SG", em=1, r=1, noSurfaceShader=1))
        mc.connectAttr(f"{shd}.outColor", f"{sg}.surfaceShader")
    return shd, sg


def cstMulti(*args, cstType="par", delete=False, w=None, **kwargs):
    """Constrain last one to multiple objects
    cstType:
        poi, ori, sca, par, parT, parR, aim, geo, mnl, pvt
    e.g.
        cstMulti([obj1, obj2])
        cstMulti([obj1, obj2, obj3], cstType='ori')
        cstMulti([obj1, obj2, obj3], cstType='poi', w=obj3.a.myAttr)

    NOTE: the weight will be added to parT in the following lines. (to be fixed)
        common.cstMulti(a, b, c, cstType="parT", mo=1)
        common.cstMulti(a, b, c, cstType="parR", mo=1, w=myW)
    """
    from nl_modules.nodel.base.dag_node import DagNode

    lastObj = DagNode(args[-1])
    skipR = ["x", "y", "z"] if cstType == "parT" else []
    skipT = ["x", "y", "z"] if cstType == "parR" else []

    name = f"{lastObj.name}_{cstType}Cst_#"
    cstCmd = CST_DICT[cstType]

    cst = None
    if cstType.startswith("par"):
        cst = cstCmd(args[:-1], lastObj, n=name, st=skipT, sr=skipR, **kwargs)[0]
    else:
        cst = cstCmd(args[:-1], lastObj, n=name, **kwargs)[0]

    # 'shortest' for orientation and parent constraint
    if cstCmd:
        if cstCmd == mc.orientConstraint or cstCmd == mc.parentConstraint:
            mc.setAttr(cst + ".interpType", 2)

    weightList = lastObj.getCstWeightAttr(cstType=cstCmd.__name__)

    if weightList:
        wCount = len(weightList)
        if w is not None:
            if isinstance(w, (float, int)):
                if wCount == 2:
                    weightList[0].set(w)
                    weightList[1].set(1 - w)
            else:
                for i in range(wCount):
                    for j in range(wCount):
                        sdk2(w, weightList[j], i, 1 if i == j else 0)
    if delete:
        mc.delete(cst)
    else:
        return DagNode(cst)


# def nlRivet(
#     geo=None, coordList=None, normal=0, tangent=2, normalize=0, scaleAttr=None, p=None, size=1
# ):
#     """Create Rivets and return uvPin, locators ( Better than mc.Rivet by not using selection )
#     e.g.
#         nlRivet(geo='surf', coordList=[(0.5,0.5), (0,1)])
#     """
#     from nl_modules.nodel.base.dag_node import DagNode
#     from nl_modules.nodel.grp_node import GrpNode
#     from nl_modules.nodel.loc_node import LocNode

#     geo = DagNode(geo)
#     origPlug = mc.deformableShape(geo, cog=1)[0]
#     origN = DagNode(origPlug.split(".")[0])

#     uvPinN = DagNode("myUvPin_#", nodeType="uvPin")
#     uvPinN.a.normalizedIsoParms.set(normalize)
#     uvPinN.a.normalAxis.set(normal)
#     uvPinN.a.tangentAxis.set(tangent)
#     geoType = geo.shape.type

#     # if geoType == "mesh":
#     # origN.a.outMesh >> uvPinN.a.originalGeometry
#     # geo.shape.a.worldMesh >> uvPinN.a.deformedGeometry
#     if geoType == "nurbsSurface":
#         origN.a.local >> uvPinN.a.originalGeometry
#         geo.shape.a.worldSpace >> uvPinN.a.deformedGeometry
#     else:
#         logging.info("Ignore non-nurbsSurface.")
#         return None, None

#     pinLocs = []

#     for i, coord in enumerate(coordList):
#         pos_grp = GrpNode(f"pos_{i}_#", p=p)
#         uvPinN.a.outputMatrix >> pos_grp.a.offsetParentMatrix
#         loc = LocNode(f"rivet_loc_{i}_#", size=size, color=13, p=p)
#         pos_grp.cstPoi(loc)

#         mc.setAttr(uvPinN + f".coordinate[{i}].coordinateU", coord[0])
#         mc.setAttr(uvPinN + f".coordinate[{i}].coordinateV", coord[1])

#         aimAlongSrfUV(srf=geo, loc=loc, inPos=uvPinN.a.outputTranslate, p=p)
#         scaleAttr >> loc.a.s
#         pinLocs.append(loc)

#     return uvPinN, pinLocs


def nlRivet2(
    geo=None,
    coordList=None,
    normal=0,
    tangent=2,
    normalize=0,
    scaleAttr=None,
    p=None,
    size=10,
):
    """Create Rivets and return uvPin, locators ( Better than mc.Rivet by not using selection )
    e.g.
        nlRivet(geo='surf', coordList=[(0.5,0.5), (0,1)])
    """
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.loc_node import LocNode

    geo = DagNode(geo)
    origPlug = mc.deformableShape(geo, cog=1)[0]
    origN = DagNode(origPlug.split(".")[0])

    uvPinN = DagNode("myUvPin_#", nodeType="uvPin")
    uvPinN.a.normalizedIsoParms.set(normalize)
    uvPinN.a.normalAxis.set(normal)
    uvPinN.a.tangentAxis.set(tangent)
    geoType = geo.shape.type

    if geoType == "mesh":
        origN.a.outMesh >> uvPinN.a.originalGeometry
        geo.shape.a.worldMesh >> uvPinN.a.deformedGeometry
    if geoType == "nurbsSurface":
        origN.a.local >> uvPinN.a.originalGeometry
        geo.shape.a.worldSpace >> uvPinN.a.deformedGeometry
    else:
        logging.info("Ignore non-nurbsSurface.")
        return None, None

    pinLocs = []

    for i, coord in enumerate(coordList):
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateU", coord[0])
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateV", coord[1])

        loc = LocNode(f"rivet_loc_{i}_#", size=size, color=13, p=p)
        # uvPinN.a.outputMatrix >> loc.a.offsetParentMatrix
        mc.connectAttr(uvPinN + f".outputMatrix[{i}]", loc + ".offsetParentMatrix")

        scaleAttr >> loc.a.s
        pinLocs.append(loc)

    return uvPinN, pinLocs


def nlRivet3(
    geo=None, coordList=None, normal=0, tangent=2, normalize=0, scaleAttr=None, p=None
):
    """Create Rivets and return uvPin, locators ( Better than mc.Rivet by not using selection )
    e.g.
        nlRivet(geo='surf', coordList=[(0.5,0.5), (0,1)])
    """
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.base.dep_node import DepNode

    geo = DagNode(geo)
    origPlug = mc.deformableShape(geo, cog=1)[0]
    origN = DagNode(origPlug.split(".")[0])

    uvPinN = DepNode("uvPin_#", nodeType="uvPin")
    uvPinN.a.normalizedIsoParms.set(normalize)
    uvPinN.a.normalAxis.set(normal)
    uvPinN.a.tangentAxis.set(tangent)

    origN.a.local >> uvPinN.a.originalGeometry
    geo.shape.a.worldSpace >> uvPinN.a.deformedGeometry

    outputMtxs = []
    for i, coord in enumerate(coordList):
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateU", coord[0])
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateV", coord[1])

        dcpMtx = DepNode(f"dcpMtx_{i}_#", nodeType="decomposeMatrix")
        mc.connectAttr(uvPinN + f".outputMatrix[{i}]", dcpMtx + ".inputMatrix")
        # uvPinN.a.outputMatrix >> dcpMtx.a.inputMatrix

        # if createLoc:
        #     loc = LocNode(f"rivetLoc_{i}_#", size=size, p=p)
        #     dcpMtx.a.outputTranslate >> loc.a.translate
        #     dcpMtx.a.outputRotate >> loc.a.rotate
        #     # uvPinN.a.outputMatrix >> loc.a.offsetParentMatrix
        #     scaleAttr >> loc.a.s
        #     outputMtxs.append(loc)
        # else:
        outputMtxs.append(dcpMtx)

    return outputMtxs


def aimAlongSrfUV(srf=None, loc=None, inPos=None, p=None, setLocPos=False):
    """Make rivet loc's rotation follow UV of surface"""
    from nl_modules.nodel.base.dag_node import DagNode

    cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
    inPos >> cpos.a.inPosition

    posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")
    posi.a.turnOnPercentage.set(1)

    aim_cst = DagNode("aimCst_#", nodeType="aimConstraint")
    if p:
        aim_cst | p

    srf = DagNode(srf) if isinstance(srf, str) else srf
    srf.shape.a.worldSpace >> cpos.a.inputSurface
    srf.shape.a.worldSpace >> posi.a.inputSurface
    cpos.a.parameterU >> posi.a.parameterU
    cpos.a.parameterV >> posi.a.parameterV

    # Connect tangent and position for orientation
    mc.connectAttr(f"{posi}.tangentV", f"{aim_cst}.target[0].targetTranslate")
    posi.a.tangentU >> aim_cst.a.worldUpVector
    aim_cst.a.constraintRotate >> loc.a.r

    if setLocPos:
        posi.a.position >> loc.a.translate

    loc.shape.hide()


def ribbonAttach_reset(tgt):
    """Reset ribbon attach target"""
    pa = tgt.parent
    if pa:
        tgt.parentToWorld()
        if pa.shape and pa.shape.type == "locator":
            pa.delete()


# def attachTgtPosToSrf(tgtList=None, srf=None, crv=None, p=None):
#     """Attach target list to srf along crv, only for position"""
#     from nl_modules.nodel.base.dag_node import DagNode
#     from nl_modules.nodel.grp_node import GrpNode
#     from nl_modules.nodel.loc_node import LocNode

#     rvtGrp = GrpNode(srf + "_grp", p=p)
#     cpos = DagNode("temp_#", nodeType="closestPointOnSurface")
#     srf.shape.a.worldSpace >> cpos.a.inputSurface

#     tgtList = [DagNode(tgt) for tgt in tgtList]

#     # Collect closest coords for all targets
#     coordList = []
#     for tgt in tgtList:
#         ribbonAttach_reset(tgt)
#         tgt.a.t >> cpos.a.inPosition
#         coordList.append(cpos.a.parameterV.get())
#     cpos.delete()

#     outLocs = []
#     # Use motionPath to attach targets to curve
#     for i, tgt in enumerate(tgtList):
#         mp = DagNode("mp_#", nodeType="motionPath")
#         mp.a.fractionMode.set(1)
#         mp.a.uValue.set(coordList[i])
#         crv.shape.a.worldSpace >> mp.a.geometryPath

#         loc = LocNode(f"rivet_loc_{i}_#", p=rvtGrp)
#         loc.a.inheritsTransform.set(0)
#         outLocs.append(loc)
#         mp.a.allCoordinates >> loc.a.t

#     logging.info(f"Attached to {srf.name}, along {crv.name}.")
#     return outLocs


# def aimOutListToSrf(tgtList=None, srf=None, outList=None, p=None):
#     """Make outList's orientation follow surface normal at tgtList's position"""
#     from nl_modules.nodel.base.dag_node import DagNode

#     for tgt, out in zip(tgtList, outList):
#         setTwistFromRibbon(tgt=DagNode(tgt), srf=srf, out=DagNode(out), p=p)


def setTwistFromRibbon(tgt=None, srf=None, out=None, p=None):
    """Set out's rotation according to tgt at ribbon surface"""
    from nl_modules.nodel.base.dag_node import DagNode

    dcpm = DagNode("dcpm_#", nodeType="decomposeMatrix")
    cpos = DagNode("cpos_#", nodeType="closestPointOnSurface")
    posi = DagNode("posi_#", nodeType="pointOnSurfaceInfo")

    tgt.a.worldMatrix >> dcpm.a.inputMatrix
    dcpm.a.outputTranslate >> cpos.a.inPosition
    srf.shape.a.worldSpace >> cpos.a.inputSurface
    cpos.a.parameterU >> posi.a.parameterU
    cpos.a.parameterV >> posi.a.parameterV

    # Aim constraint for orientation
    aim_cst = DagNode("aimCst_#", nodeType="aimConstraint")
    if p:
        aim_cst | p

    srf.shape.a.worldSpace >> posi.a.inputSurface
    mc.connectAttr(f"{posi}.tangentV", f"{aim_cst}.target[0].targetTranslate")
    posi.a.turnOnPercentage.set(1)
    posi.a.tangentU >> aim_cst.a.worldUpVector
    aim_cst.a.constraintRotate >> out.a.r


def attachUVPin(tgtList=None, geo=None, scaleAttr=None, p=None):
    """Attach target list to surface, only for position, using rivet method"""
    if not isinstance(tgtList, list):
        raise TypeError("Input objects must be in list.")
    if not mc.objExists(geo):
        raise ValueError(f"Missing object: {geo}")

    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.base.dep_node import DepNode

    if isinstance(geo, str):
        geo = DagNode(geo)

    cpos = DepNode("cpos_#", nodeType="closestPointOnSurface")
    geo.shape.a.worldSpace >> cpos.a.inputSurface

    # Collect uv coordinates for all targets
    coordList = []
    for tgt in tgtList:
        if isinstance(tgt, str):
            tgt = DagNode(tgt)

        ribbonAttach_reset(tgt)
        tgt.a.t >> cpos.a.inPosition
        coordList.append((cpos.a.parameterU.get(), cpos.a.parameterV.get()))
    cpos.delete()

    return nlRivet3(geo=geo, coordList=coordList, scaleAttr=scaleAttr)


def makeChain(start, end, count=5):
    """Create joint chain at start and end position
    e.g.
        makeChain(startJ, endJ)
        makeChain(startJ, obj1, count=3)
    """
    from nl_modules.nodel.base.dag_node import DagNode

    chain = []
    prev = None
    start = DagNode(start)
    end = DagNode(end)

    if start.type == "joint":
        for i in range(count):
            chain.append(start.duplicate(n=start.name + "_jc_#", po=1))
            cstMulti(
                end, start, chain[i], cstType="poi", delete=True, w=i / (count - 1)
            )
            if prev:
                chain[i] | prev
            prev = chain[i]
        return chain


def dupSk(jntList, sf="", p=None, color=None, r=1):
    """Extract joint chain with suffix
    e.g.
        fkJList = extractSk(jointList, sf='_fk)
        ikJList = extractSk(jointList, sf='_ik)
    """
    from nl_modules.nodel.jnt_node import JntNode
    from nl_modules.nodel.base.dag_node import DagNode

    dupJList = mc.duplicate(jntList, po=1, rc=1)

    newJList = []
    for dupJ, jnt in zip(dupJList, jntList):
        newName = jnt + sf
        if DagNode(newName).exists():
            logging.warning(f"Joint {newName} exists, rename skipped.")
            continue

        j = JntNode(dupJ).rename(newName)
        j.setRadius(r)
        newJList.append(j)

    if sf.endswith("_fk"):
        newJList[0].color = Color.BLUE
    elif sf.endswith("_ik"):
        newJList[0].color = Color.RED
    elif sf.endswith("_bf"):
        newJList[0].color = Color.ORANGE
    else:
        newJList[0].color = color or Color.YELLOW
    if p:
        mc.parent(newJList[0], p)

    return newJList


def showAllRO(state):
    """Show all rotation order in the scene"""
    for o in mc.ls(tr=1):
        mc.setAttr(o + ".ro", cb=state)


def shelfSep():
    """Add separator to shelf"""
    import maya.mel as mel

    mc.separator(
        width=12,
        height=35,
        style="shelf",
        hr=False,
        parent=mel.eval("tabLayout -q -selectTab $gShelfTopLevel"),
    )


def printIkStat():
    """Print IK handle type and pole vector"""
    for ik in mc.ls(type="ikHandle"):
        nt = mc.ikHandle(ik, q=1, solver=1)
        pv = mc.getAttr(ik + ".poleVector")
        print(f"{nt} {ik} {pv} ")


def addNonRollJ(tgtJ):
    """Add non-roll joint to target joint, for roll control"""
    from nl_modules.nodel.ik_node import IkNode, Solver
    from nl_modules.nodel.loc_node import LocNode

    child = tgtJ.children[0]

    twistJ = tgtJ.duplicate(n="twist_jnt", po=1)
    twistJ.setRadius(1.5, rel=1)
    twistJ.color = Color.YELLOW
    rollJ = twistJ.duplicate(n="rollJ", po=1)
    rollJ_end = twistJ.duplicate(n="rollEnd_jnt", po=1)
    rollJ_end | rollJ
    rollJ_end.alignTo(rollJ, ofs=(5, 0, 0))

    mc.select(rollJ)
    mc.move(0, 0, -2, os=1, r=1)

    roll_loc = LocNode("roll_loc")
    roll_loc.alignTo(rollJ, p=rollJ, ofs=(0, 0, -5))
    roll_ikh = IkNode("roll", sj=rollJ, ee=rollJ_end, solver=Solver.RP, quat=1)
    roll_ikh.alignTo(tgtJ.children[0], p=child)


def addAnnotation(frObj=None, toObj=None, p=None):
    """Build connecting line with annotate"""
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.loc_node import LocNode

    frObj = DagNode(frObj)
    toObj = DagNode(toObj)
    loc = LocNode(toObj + "_anno_loc_#", snap=toObj, p=toObj)
    ann = DagNode(mc.annotate(loc, tx="")).parent
    ann.rename(toObj + "_anno")
    frObj.cstPoi(ann)
    ann.a.template.set(1)
    loc.hide()
    if p:
        ann | p
    return ann


def addAnnotation2(frObj=None, toObj=None):
    """Build connecting line with annotationShape"""
    from nl_modules.nodel.base.dag_node import DagNode

    ann = DagNode("ann_#", nodeType="annotationShape")
    frObj = DagNode(frObj)
    toObj = DagNode(toObj)
    if toObj.shape:
        toObj.shape.a.worldMatrix >> ann.a.dagObjectMatrix
        ann.parent.alignTo(frObj, p=frObj)
        return ann


def showHiddenInRig():
    """Show strongly hidden nodes in character rigs"""
    for s in mc.ls(sl=1):
        mc.lockNode(s, lock=False)
        mc.setAttr(s + ".ihi", 1)
        mc.setAttr(s + ".io", 0)


def addMovablePivot(tgt):
    """Add tgt a movable pivot object"""
    tgt.addOffsetGrp()
    ofs_below = tgt.addOffsetGrp(below=1)
    tgt.a.t * (-1, -1, -1) >> ofs_below.a.t


def addVisOption(ctl, attrName):
    """Add vis attribute to ctl, return drivers [v0, v1]"""
    attrName = str(attrName)
    ctl.a.add(attrName, type="long", k=0, dv=2, min=0, max=2)
    v0 = (ctl.a[attrName] > 1).setCdn(ifTrue=1, ifFalse=0)
    v1 = (ctl.a[attrName] > 0).setCdn(ifTrue=1, ifFalse=0)
    return [v0, v1]


def sdk(dvr, dvn, attr1, attr2, v1, v2, tangent=0, inf=0):
    """Create set driven key, using object, attr
    e.g.
        sdk2(obj1, obj2, 'ty', 'ty', 0, 0)
        sdk2(obj1, obj2, 'ty', 'ty', 1, 2)
    """
    opt = ["clamped", "auto", "stepnext", "spline"]  # 'linear'
    # opt = ["linear", "auto", "stepnext", "spline"]  # 'clampled'
    mc.setDrivenKeyframe(
        f"{dvn}.{attr2}",
        cd=f"{dvr}.{attr1}",
        dv=v1,
        v=v2,
        itt=opt[tangent],
        ott=opt[tangent],
    )
    if inf:
        mc.setInfinity(dvn, pri="linear", poi="linear", attribute=attr2)


def sdk2(attr1, attr2, v1, v2, tangent=0):
    """Create set driven key, using full attr
    e.g.
        sdk2(obj1.a.ty, obj2.a.ty, 0, 0)
        sdk2(obj1.a.ty, obj2.a.ty, 1, 2)
    """
    opt = ["linear", "auto", "stepnext"]
    # itt = "linear" if auto == 0 else "auto"
    # ott = "linear" if auto == 0 else "auto"
    mc.setDrivenKeyframe(
        attr2, cd=attr1, dv=v1, v=v2, itt=opt[tangent], ott=opt[tangent]
    )


def addTwistReader(target, pf="", p=None):
    """Add twist reader"""
    from nl_modules.nodel.loc_node import LocNode

    if pf and pf[-1] != "_":
        pf += "_"

    reader_loc = LocNode(f"{pf}{target.name}_reader", size=8, p=p)
    zro = reader_loc.addOffsetGrp()

    target.cstPar(zro)
    child = target.children
    axis = 1 if child[0].a.tx.get() > 0 else -1

    if child:
        child[0].cstAim(
            reader_loc,
            aimVector=(axis, 0, 0),
            upVector=(0, 0, 1),
            worldUpType="objectrotation",
            worldUpVector=(0, 0, 1),
            worldUpObject=child[0],
        )
    return reader_loc


def getObjectBelow(tgt, tgtType="mesh"):
    """Get all objects of a specific type below the target"""
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.crv_node import CrvNode
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.jnt_node import JntNode
    from nl_modules.nodel.loc_node import LocNode
    from nl_modules.nodel.msh_node import MshNode
    from nl_modules.nodel.srf_node import SrfNode

    mc.select(tgt, hi=1)
    nodes = mc.ls(sl=1, tr=1)
    mc.select(cl=1)
    if not nodes:
        return []

    class_map = {
        "joint": ("joint", "JntNode"),
        "loc": ("locator", "LocNode"),
        "mesh": ("mesh", "MshNode"),
        "curve": ("nurbsCurve", "CrvNode"),
        "surface": ("nurbsSurface", "SrfNode"),
        "group": ("transform", "GrpNode"),
    }
    returnNodes = []

    for n in nodes:
        if DagNode(n).type == class_map[tgtType][0]:
            node_class = eval(class_map[tgtType][1])
            returnNodes.append(node_class(n))
    return returnNodes


def pauseVP(state=1):
    mc.optionVar(iv=("vp2PauseState", state))


def setView(jx=0, xray=0, wos=0, fit=0, ao=0, aa=0):
    """Set viewport options"""
    panel_flags = {k: v for k, v in {"jx": jx, "xray": xray, "wos": wos}.items() if v}
    if panel_flags:
        for p in mc.getPanel(type="modelPanel"):
            for flag, val in panel_flags.items():
                if not mc.modelEditor(p, q=1, **{flag: 1}):
                    mc.modelEditor(p, e=1, **{flag: val})
    if fit:
        mc.viewFit(all=1)
    if ao:
        mc.setAttr("hardwareRenderingGlobals.ssaoEnable", 1)
    if aa:
        mc.setAttr("hardwareRenderingGlobals.multiSampleEnable", 1)

    mc.refresh(f=1)


def getNsFrOptVar():
    """Get current namespace from optionVar"""
    curr_ns = mc.optionVar(q="curr_ns")
    return curr_ns + ":" if curr_ns else ""


def setNsFrSel(*args):
    """Get the namespace from the first selected object"""
    from nl_modules.nodel.base.dag_node import DagNode

    selected = mc.ls(sl=1, tr=1)
    ns = DagNode(selected[0]).namespace if selected else ""
    mc.optionVar(sv=("curr_ns", ns))
    logging.info(f"Namespace set to {ns}." if ns else "Namespace cleared.")


def clearNs():
    """Clear current namespace in optionVar"""
    mc.optionVar(sv=("curr_ns", ""))
    # logging.info("Namespace cleared.")


def getRigCtlsAll():
    """Get all rig controls in the scene"""
    from nl_modules.utils import build

    allMGs = build.collectMasterGuide()
    if allMGs:
        return getRigCtls(allMGs)


def getRigCtls(MGs):
    """Get all rig controls from rig nodes"""
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.utils import common

    ns = getNsFrOptVar()

    ctlList = []
    for mg in MGs:
        ctlSet = ns + DagNode(mg).a.rigID.get() + "_ctl_set"
        ctls = common.getSetMembersInOrder(ctlSet)
        if ctls:
            ctlList.extend(ctls)

    return ctlList


def add_wsMirror_attr(tgts=None):
    """Add mirror attribute to targets"""
    from nl_modules.nodel.base.dag_node import DagNode

    if not tgts:
        tgts = mc.ls(sl=1, tr=1) or []

    for t in tgts:
        t = DagNode(t)
        if t.exists():
            t.a.add("wsMirror", lock=1, k=0, cb=0, dv=1)


def add_flipRX_attr(tgts=None):
    """Add flip X attribute to targets"""
    from nl_modules.nodel.base.dag_node import DagNode

    if not tgts:
        tgts = mc.ls(sl=1, tr=1) or []

    for t in tgts:
        t = DagNode(t)
        if t.exists():
            t.a.add("flipRX", lock=1, k=0, cb=0, dv=1)


def build_ribbon_rivet(
    rbSrf=None,
    rivetNum=5,
    scaleAttr=None,
    stretchyAttr=1,
    pf="",
    rSz=1,
    atMidOrEnd=0,  # 0=mid, 1=end
    outputJnt=1,
    p=None,
    JNT_DATA=None,
):
    """Build a motion path ribbon on the given surface with specified joint number.

    from nl_modules.utils import common
    common.build_ribbon_rivet(rbSrf='srf', pf='tmp')
    """
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.crv_node import CrvNode
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.jnt_node import JntNode
    from nl_modules.nodel.loc_node import LocNode
    from nl_modules.utils import utils_node as ut
    from nl_modules.utils import proxy

    # ---
    # Create a curve on the surface and calculate curve length ratio
    # ---
    crv = CrvNode(mc.duplicateCurve(f"{rbSrf}.u[0.5]", rn=0, local=0)[0])
    crv.a.inheritsTransform.set(0)
    if p:
        crv | p
    crv_info = DagNode("crvInfo#", nodeType="curveInfo")
    crv.shape.a.worldSpace >> crv_info.a.inputCurve

    # ---
    # Calculate curve length ratio and steps
    # ---
    crv_len_ratio = crv_info.a.arcLength / scaleAttr / crv.length
    ratio_out = ut.blend2_(crv_len_ratio, 1, stretchyAttr)

    step = 1 / (rivetNum - 1)
    if atMidOrEnd == 0:
        step = 1 / rivetNum

    loc_grp = GrpNode("loc_grp", pf=pf, p=JNT_DATA)
    outputs = []

    # ---
    # Create rivets along the curve
    # ---
    for i in range(rivetNum):

        mp = DagNode("mp_#", nodeType="motionPath")
        mp.a.fractionMode.set(1)

        j = i + 0.5 if atMidOrEnd == 0 else i
        (j * step) / ratio_out >> mp.a.uValue

        crv.shape.a.worldSpace >> mp.a.geometryPath
        loc = LocNode(f"rivet_loc_{i}_#", p=loc_grp)

        aimAlongSrfUV(
            srf=rbSrf, loc=loc, inPos=mp.a.allCoordinates, p=loc_grp, setLocPos=1
        )
        if outputJnt:
            jnt = JntNode(f"{i}_rbj", pf=pf, align=loc, r=rSz, p=loc, reset=1)
            outputs.append(jnt)
        else:
            outputs.append(loc)

        if scaleAttr:
            scaleAttr >> loc.a.s
        loc.a.inheritsTransform.set(0)

    prx_height = mc.arclen(crv) / rivetNum / 1.5
    proxy.add_proxyHeight_attr(outputs, prx_height)
    crv.hide()

    return crv_len_ratio, outputs, crv


# def calcBB(tgt):
#     from nl_modules.nodel.base.dag_node import DagNode
#
#     allX = []
#     allY = []
#     allZ = []
#     for obj in DagNode(tgt).allChildren2:
#         allX.append(obj.o.pos[0])
#         allY.append(obj.o.pos[1])
#         allZ.append(obj.o.pos[2])
#     return [min(allX), min(allY), min(allZ), max(allX), max(allY), max(allZ)]
#
#
# def calcBBVol(tgt):
#     minX, minY, minZ, maxX, maxY, maxZ = calcBB(tgt)
#     diffX = max(maxX - minX, 1)
#     diffY = max(maxY - minY, 1)
#     diffZ = max(maxZ - minZ, 1)
#     logging.info(f"{diffX}, {diffY}, {diffZ}")
#     return diffX * diffY * diffZ

# def spaceCst(
#     space=None,
#     tgt=None,
#     sp1=None,
#     sp2=None,
#     driver=None,
#     cstType=None,
#     **kwargs,
# ):
#     from nl_modules.nodel.group_node import GrpNode
#
#     g1 = GrpNode("space_#", pf=space.name, align=space, p=sp1, addOfs=1)
#     g2 = GrpNode("space_#", pf=space.name, align=space, p=sp2, addOfs=1)
#
#     cstType = [cstType] if not isinstance(cstType, list) else cstType
#     for c in cstType:
#         cstMulti(g1, g2, tgt, w=driver, cstType=c, **kwargs)


# def removeSuffix(name: str):
#     """remove suffix"""
#     parts = name.split("_")[:-1]  #  or name
#     if len(parts):
#         return "_".join(parts)
#     return name


# def makeRivet(p=None, normal=0, tangent=2):
#     from nl_modules.nodel.base.dag_node import DagNode
#
#     mc.Rivet()
#
#     uvPinOut = mc.ls(sl=1)
#     uvPin = DagNode(uvPinOut.pop(0))
#     uvPinOut = [DagNode(p) for p in uvPinOut]
#
#     if uvPin is None:
#         logging.info("Error creating uvPin")
#         return
#
#     uvPin.a.normalAxis.set(normal)
#     uvPin.a.tangentAxis.set(tangent)
#
#     if p:
#         [po | p for po in uvPinOut]
#
#     return uvPin, uvPinOut


def sortFile(n):
    """Sort file name by number at the end of the name
    e.g.
        ['d:/ .../file2.json', 'd:/ .../file10.json', 'd:/ .../file.json']
        =>
        ['d:/ .../file.json', 'd:/ .../file2.json', 'd:/ .../file10.json']
    """
    import re

    file_name = os.path.basename(n)
    name_only = os.path.splitext(file_name)[0]

    pattern = re.compile(rf"[A-Za-z_]*([\d]+)$")
    match = re.match(pattern, name_only)
    if match:
        return int(match.group(1))
    return 0


def getOppositeForSide(text, pfL="lf", pfR="rt"):
    """Return opposite
    e.g.
        lf_leg0_ikc => rt_leg0_ikc
        aa_lf_leg0_ikc => aa_rt_leg0_ikc
        ns:lf_leg0_ikc => ns:rt_leg0_ikc
        ns:bb_lf_leg0_ikc => ns:bb_rt_leg0_ikc
    """
    pattern = re.compile(rf"^{pfL}(\w+)$")
    match = re.match(pattern, text)

    result = ""
    if match:
        result = f"{pfR}{match.group(1)}"
    else:
        pattern = re.compile(rf"^([a-zA-Z0-9_:]*){pfL}(\w+)$")
        match = re.match(pattern, text)
        if match:
            result = f"{match.group(1)}{pfR}{match.group(2)}"
    return result


def getOppositeStr(tgtStr, pfL="lf", pfR="rt"):
    """Return opposite string if the target string contains left or right prefix"""
    oppStr = None
    nonFullPathStr = tgtStr.split("|")[-1]

    if nonFullPathStr.startswith(pfL) or f":{pfL}" in nonFullPathStr:
        oppStr = getOppositeForSide(nonFullPathStr, pfL, pfR)
    elif nonFullPathStr.startswith(pfR) or f":{pfR}" in nonFullPathStr:
        oppStr = getOppositeForSide(nonFullPathStr, pfR, pfL)
    return oppStr


def getOpposite(tgt, pfL="lf", pfR="rt"):
    """Return opposite node if exists, based on the name of the target node"""
    from nl_modules.nodel.base.dag_node import DagNode

    oppStr = getOppositeStr(str(tgt), pfL, pfR)
    if oppStr:
        opp = DagNode(oppStr)
        if opp.exists():
            return opp


def addKeys(tgt, attrName=None, data=None):
    """Add keyframes to target attributes"""
    from nl_modules.nodel.base.dag_node import DagNode

    tgt = DagNode(tgt) if isinstance(tgt, str) else tgt
    if not tgt.exists():
        logging.info(f"Target {tgt} does not exist.")
        return

    attr = tgt.a.add(attrName, dv=0)
    for pair in data:
        mc.setKeyframe(attr, t=pair[0], v=pair[1])

    mc.setAttr(attr, l=1)
    return attr


def setupFrameCache(graph=None, joints=None, base=None, autoVol=0):
    """Setup frame cache scaling on joints"""
    from nl_modules.nodel.base.dag_node import DagNode

    for i in range(len(joints)):
        fc = DagNode("fc__#", nodeType="frameCache")
        graph >> fc.a.stream
        fc.a.varyTime.set(i)
        ratio = base ** (fc.a.varying * autoVol)
        ratio >> joints[i].a.sy
        ratio >> joints[i].a.sz


def xRayAllGeo(state=1):
    """Set xRay on mesh shapes"""
    selList = mc.ls(type=["nurbsSurface", "mesh"], l=1, ni=1)
    for sel in selList:
        mc.displaySurface(sel, xRay=state)


def modelPanelShow(jnt=1):
    """Set model panel to show joints"""
    allModelPanel = mc.getPanel(type="modelPanel")
    for modelP in allModelPanel:
        mc.modelEditor(modelP, e=1, joints=jnt)


def showRO():
    """Show rotate order attribute in channelBox"""
    from nl_modules.nodel.base.dag_node import DagNode

    allCtls = getRigCtlsAll()
    for ctl in allCtls:
        mc.setAttr(ctl + ".ro", cb=1)
        # nodeN = DagNode(node)
        # if (
        #     nodeN.type == "joint" or nodeN.type == "nurbsCurve"
        # ) and not nodeN.name.endswith("_guide"):
        #     mc.setAttr(nodeN + ".ro", cb=1)


def getSetMembersInOrder(tgt):
    """Get members of set in order
    e.g.
        getSetMembersInOrder('lf*ctl_set')
    """
    from nl_modules.nodel.base.dag_node import DagNode

    if tgt and mc.ls(tgt, type="objectSet"):
        members = mc.listConnections(tgt, s=1, d=0, p=0, c=0) or []
        return [DagNode(n) for n in members]


def addFollowCam(*args):
    """Add a follow camera to the scene."""
    from nl_modules.nodel.base.dag_node import DagNode

    sel = mc.ls(sl=1)
    if sel:
        cam = DagNode(mc.camera(n="followCam_#")[0])
        DagNode(sel[0]).cstPoi(cam.addOffsetGrp())
        cam.offset.a.ty.disconnect()
        cam.offset.a.ty.set(0)
    else:
        mc.confirmDialog(t="Info", m="Please select an object to follow.    ", b=["OK"])
