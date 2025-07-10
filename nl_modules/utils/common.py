import logging
import maya.cmds as mc
from collections import OrderedDict

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


def assignShd(n, geo=None, color=(0, 0, 0), faceID=None):
    """Assign shader to entire or faceID"""

    shd, sg = addShader(n, color=color)
    if faceID:
        for fID in faceID:
            mc.sets(f"{geo}.f[{fID}]", forceElement=sg)
    else:
        mc.sets(geo, forceElement=sg)


def assignPresetShd(tgts=None):
    """Assign preset shader to target objects"""

    from nl_modules.nodel.base.dag_node import DagNode

    if not tgts:
        tgts = mc.ls(sl=1, tr=1)

    for t in tgts:
        t = DagNode(t)

        color = DagNode.YELLOW
        name = "yellow_shd"
        if t.name.startswith("lf"):
            color = DagNode.BLUE
            name = "blue_shd"
        elif t.name.startswith("rt"):
            color = DagNode.RED
            name = "red_shd"

        if t.type == "mesh":
            shd, sg = addShader(name, color=color)
            mc.sets(t, forceElement=sg)
        elif t.type == "nurbsCurve":
            t.color = color

    mc.select(cl=1)


def addShader(n, shaderType="lambert", color=(1, 1, 1)):
    """Create shader and return shader, shading group"""

    from nl_modules.nodel.base.dep_node import DepNode

    sg = None
    shd = DepNode(n)

    if shd.exists():
        nodes = shd.a.outColor.outConnNode
        if nodes:
            sg = nodes[0]
    else:
        shd = DepNode(mc.shadingNode(shaderType, name=n, asShader=1))
        shd.a.color.set(*color)
        # shd.a.transparency.set(0.5, 0.5, 0.5)
        # shd.a.ambientColor.set(0.1, 0.1, 0.1)
        shd.a.diffuse.set(0.6)
        sg = DepNode(mc.sets(name=f"{n}SG", empty=1, renderable=1, noSurfaceShader=1))
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

    # Look like that shortest is a better option for orientation transition
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
        return cst


def nlRivet(
    geo=None,
    coordList=None,
    normal=0,  # 0,1,2 => x,y,z
    tangent=2,  # 0,1,2 => x,y,z
    normalize=0,
    scaleAttr=None,
    p=None,
    size=1,
):
    """Create Rivets and return uvPin, locators
    ( Benefit over mc.Rivet is not using selection )
    e.g.
        nlRivet(geo='surf', coordList=[(0.5,0.5), (0,1)])
        nlRivet(geo='mesh', coordList=[(0.5,0.5), (0,1)])
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
    elif geoType == "nurbsSurface":
        origN.a.local >> uvPinN.a.originalGeometry
        geo.shape.a.worldSpace >> uvPinN.a.deformedGeometry
    else:
        logging.info("Ignore unwanted geometry type")
        return None, None

    pinLocs = []

    for i, coord in enumerate(coordList):
        loc = LocNode(f"rivetLoc_{i}_#", size=size, color=13)
        scaleAttr >> loc.a.scaleX
        scaleAttr >> loc.a.scaleY
        scaleAttr >> loc.a.scaleZ
        uvPinN.a.outputMatrix >> loc.a.offsetParentMatrix
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateU", coord[0])
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateV", coord[1])
        pinLocs.append(loc)
        if p:
            loc | p
    #
    #   no aim needed for rivet
    #
    # if i > 0:
    #     pinLocs[i - 1].cstAim(
    #         loc,
    #         aim=(0, 1, 0),
    #         u=(1, 0, 0),
    #         wu=(0, 0, 1),
    #         worldUpType="objectrotation",
    #         worldUpObject=pinLocs[i - 1],
    #     )
    return uvPinN, pinLocs


def ribbonAttach_reset(tgt):
    """Reset ribbon attach target"""

    pa = tgt.parent
    if pa:
        tgt.parentToWorld()
        if pa.shape and pa.shape.type == "locator":
            pa.delete()


def ribbonAttach(tgtList=None, geo=None, scaleAttr=None, p=None):
    """Attach target list to geo, using closestPointOnMesh or closestPointOnSurface"""

    if not isinstance(tgtList, list):
        raise TypeError("Input objects must be in list.")
    if not mc.objExists(geo):
        raise ValueError(f"Missing object: {geo}")

    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.grp_node import GrpNode

    geo = DagNode(geo)
    geoType = geo.shape.type
    # ------------------------------
    #  create closest node
    # ------------------------------
    cpos = None
    if geoType == "mesh":
        cpos = DagNode("myCPO_#", nodeType="closestPointOnMesh")
        geo.shape.a.worldMesh >> cpos.a.inMesh
    elif geoType == "nurbsSurface":
        cpos = DagNode("myCPOS_#", nodeType="closestPointOnSurface")
        geo.shape.a.worldSpace >> cpos.a.inputSurface
    else:
        raise TypeError(f"Attachment not working on {geo}")
    # ------------------------------
    #  create coordList
    # ------------------------------
    coordList = []
    for tgt in tgtList:
        tgt = DagNode(tgt)
        ribbonAttach_reset(tgt)
        tgt.a.t >> cpos.a.inPosition

        if geoType == "mesh":
            vId = cpos.a.closestVertexIndex.get()
            mc.select(f"{geo}.vtx[{vId}]")
            mc.ConvertSelectionToUVs()
            coordList.append(mc.polyEditUV(q=1))
        elif geoType == "nurbsSurface":
            u = cpos.a.parameterU.get()
            v = cpos.a.parameterV.get()
            coordList.append((u, v))

    grp = GrpNode(geo + "_rvtGrp", p=p)
    pin, pinXf = nlRivet(geo=geo, coordList=coordList, scaleAttr=scaleAttr, p=grp)

    for i, pin in enumerate(pinXf):
        DagNode(tgtList[i]) | pin

    cpos.delete()


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


def extractSk(tgtJList, sf="", p=None, color=None, r=1):
    """Duplicate joint chain with suffix
    e.g.
        fkJList = extractSk(jointList, sf='_fk)
        ikJList = extractSk(jointList, sf='_ik)
    """
    # from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.jnt_node import JntNode

    dupJList = mc.duplicate(tgtJList, po=1, rc=1)
    # newJList = [
    #     DagNode(dupJ).rename(tgtJ + sf) for dupJ, tgtJ in zip(dupJList, tgtJList)
    # ]
    newJList = []
    for dupJ, tgtJ in zip(dupJList, tgtJList):
        j = JntNode(dupJ).rename(tgtJ + sf)
        j.setRadius(r)
        newJList.append(j)

    if color:
        newJList[0].color = color
    if p:
        mc.parent(newJList[0], p)
    return newJList


def showAllRO():
    """Show all rotation order in the scene"""

    for o in mc.ls(tr=1):
        mc.setAttr(o + ".ro", cb=1)


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

    from nl_modules.utils.color import Color
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
    ctl.a.add(attrName, attrType="long", k=0, dv=2, min=0, max=2)
    v0 = (ctl.a[attrName] > 1).setCdn(ifTrue=1, ifFalse=0)
    v1 = (ctl.a[attrName] > 0).setCdn(ifTrue=1, ifFalse=0)
    return [v0, v1]


def sdk(dvr, dvn, attr1, attr2, v1, v2, tangent=0, infinity=0):
    """Create set driven key, using object, attr
    e.g.
        sdk2(obj1, obj2, 'ty', 'ty', 0, 0)
        sdk2(obj1, obj2, 'ty', 'ty', 1, 2)
    """
    opt = ["linear", "auto", "stepnext", "spline"]
    mc.setDrivenKeyframe(
        f"{dvn}.{attr2}",
        cd=f"{dvr}.{attr1}",
        dv=v1,
        v=v2,
        itt=opt[tangent],
        ott=opt[tangent],
    )
    if infinity:
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


def getMeshBelow(grp):
    """Get all meshes below the group, return list of MshNode"""

    from nl_modules.nodel.msh_node import MshNode

    if not mc.objExists(grp):
        logging.warning(f"Model set {grp} NOT found.")
        return []

    mc.select(grp, hi=1)
    meshes = mc.ls(sl=1, et="mesh") or []
    mc.select(cl=1)

    if meshes:
        return [MshNode(mesh) for mesh in meshes]

    return []


def setViewport(jx=0, xray=0, wos=0, fit=0):
    """Set viewport options"""

    mc.setAttr("hardwareRenderingGlobals.ssaoEnable", 1)
    # mc.setAttr('hardwareRenderingGlobals.multiSampleEnable', 1)
    for p in mc.getPanel(type="modelPanel"):
        mc.modelEditor(p, e=1, jx=jx, xray=xray, wos=wos)
    if fit:
        mc.viewFit(all=1)
    mc.refresh(f=1)


def getRigCtlsAll():
    """Get all rig controls in the scene"""

    return getRigCtls(mc.ls("*RGN", type="script"))


def getRigCtls(rigNodes):
    """Get all rig controls from rig nodes"""

    from nl_modules.nodel.base.dag_node import DagNode

    setList = []
    for rigNode in rigNodes:
        ctlSet = DagNode(rigNode).a.rigID.get() + "_ctl_set"
        ctlSet = mc.ls(ctlSet, type="objectSet")
        if ctlSet:
            setList.append(ctlSet[0])
    if setList:
        objs = mc.sets(setList, q=1)
        if objs:
            return [DagNode(obj) for obj in objs]
    else:
        return []


def add_mirror_attr(tgts=None):
    """Add mirror attribute to targets"""

    from nl_modules.nodel.base.dag_node import DagNode

    if not tgts:
        tgts = mc.ls(sl=1, tr=1)

    for t in tgts:
        t = DagNode(t)
        if t.exists():
            t.a.add("wsMirror", lock=1, cb=0)


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
