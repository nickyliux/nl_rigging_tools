import maya.cmds as mc
import logging
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

IK_SOLVER = [
    "ikSCsolver",
    "ikRPsolver",
    "ikSplineSolver",
    "ikSpringSolver",
    "ik2Bsolver",
]


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
    t = r = s = 0
    if mode is None:
        t = r = 1
    elif mode == "t":
        t = 1
    elif mode == "r":
        r = 1
    elif mode == "s":
        s = 1
    elif mode == "a":
        t = r = s = 1

    *others, last = targetList
    mc.matchTransform(*others, last, position=t, rotation=r, scale=s)


def assignProxyShader(geo):
    """Assign shaders to proxy mesh"""

    CPG = (0.4, 0.4, 0.4)  # Color Proxy Green
    CPY = (0.3, 0.5, 0.3)  # Color Proxy Yellow
    CPR = (0.5, 0.2, 0.2)  # Color Proxy Red
    CPB = (0.2, 0.2, 0.8)  # Color Proxy Blue

    from nl_modules.nodel.base.dag_node import DagNode

    geo = DagNode(geo)
    # SHADER FOR ENTIRE
    shd, sg = addShader("proxy_default_shd", color=CPG)
    mc.sets(geo, forceElement=sg)

    # SHADER FOR LEFT / RIGHT
    if geo.name.startswith("lf"):
        name = "proxy_lf_shd"
        faceID = [0, 2]
        color = CPB
    elif geo.name.startswith("rt"):
        name = "proxy_rt_shd"
        faceID = [0, 2]
        color = CPR
    else:
        name = "proxy_md_shd"
        faceID = [4, 5]
        color = CPY

    shd, sg = addShader(name, color=color)
    for fID in faceID:
        mc.sets(f"{geo}.f[{fID}]", forceElement=sg)


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
        shd.a.ambientColor.set(0.5, 0.5, 0.5)
        # create shadingEngine (shading group)
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
            # print(cst)
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
    geo=None, coordList=None, normal=0, tangent=2, normalize=0, scaleAttr=None, p=None
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

    for i in range(len(coordList)):
        loc = LocNode("rivetLoc_#")
        scaleAttr >> loc.a.scaleX
        scaleAttr >> loc.a.scaleY
        scaleAttr >> loc.a.scaleZ
        uvPinN.a.outputMatrix >> loc.a.offsetParentMatrix
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateU", coordList[i][0])
        mc.setAttr(uvPinN + f".coordinate[{i}].coordinateV", coordList[i][1])
        pinLocs.append(loc)
        if p:
            loc | p

    return uvPinN, pinLocs


def ribbonAttach_reset(tgt):
    """Parent target to world, and delete parent if it is locator"""
    pa = tgt.parent
    if pa:
        tgt.parentToWorld()
        if pa.shape and pa.shape.type == "locator":
            pa.delete()


def ribbonAttach(tgtList=None, geo=None, scaleAttr=None, p=None):
    """Attach objects to geometry (nurbs / meshes)"""

    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.group_node import GroupNode

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
        logging.error("Attachment not working on ", geo)
        return
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
            coordList = [mc.polyEditUV(q=1)]
        elif geoType == "nurbsSurface":
            u = cpos.a.parameterU.get()
            v = cpos.a.parameterV.get()
            coordList = [(u, v)]

        grp = GroupNode(geo + "_rvtGrp", p=p)
        pin, pinXf = nlRivet(geo=geo, coordList=coordList, scaleAttr=scaleAttr, p=grp)
        if pinXf:
            tgt | pinXf[0]
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


def extractSk(tgtJList, sf="", p=None):
    """Duplicate joint chain with suffix
    e.g.
        fkJList = extractSk(jointList, sf='_fk)
        ikJList = extractSk(jointList, sf='_ik)
    """
    from nl_modules.nodel.base.dag_node import DagNode

    dupJList = mc.duplicate(tgtJList, po=1, rc=1)
    newJList = [
        DagNode(dupJ).rename(tgtJ + sf) for dupJ, tgtJ in zip(dupJList, tgtJList)
    ]
    if p:
        mc.parent(newJList[0], p)
    return newJList


def showAllRO():
    """Set rotate order visible in channelBox for all"""
    for o in mc.ls(tr=1):
        mc.setAttr(o + ".ro", cb=1)


def shelfSep():
    """Add separator to current shelf"""
    import maya.mel as mel

    mc.separator(
        width=12,
        height=35,
        style="shelf",
        hr=False,
        parent=mel.eval("tabLayout -q -selectTab $gShelfTopLevel"),
    )


def printIkStat():
    """Print all IK types and info"""
    for ik in mc.ls(type="ikHandle"):
        nt = mc.ikHandle(ik, q=1, solver=1)
        pv = mc.getAttr(ik + ".poleVector")
        print(f"{nt} {ik} {pv} ")


def addNonRollJ(tgtJ):
    """Add non-roll joint"""
    from nl_modules.utils.color import Color
    from nl_modules.nodel.ik_node import IkNode
    from nl_modules.nodel.loc_node import LocNode

    child = tgtJ.children[0]

    twistJ = tgtJ.duplicate(n="twist_jnt", po=1)
    twistJ.setRadius(1.5, rel=1)
    twistJ.color = Color.YELLOW
    rollJ = twistJ.duplicate(n="rollJ", po=1)
    rollJ_end = twistJ.duplicate(n="rollEnd_jnt", po=1)
    rollJ_end | rollJ
    rollJ_end.alignTo(rollJ, offset=(5, 0, 0))

    mc.select(rollJ)
    mc.move(0, 0, -2, os=1, r=1)

    roll_loc = LocNode("roll_loc")
    roll_loc.alignTo(rollJ, p=rollJ, offset=(0, 0, -5))
    roll_ikh = IkNode("roll", sj=rollJ, ee=rollJ_end, sol=1, quat=1)
    roll_ikh.alignTo(tgtJ.children[0], p=child, offset=(0, 0, 0))


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
    else:
        logging.error("Obj to point to MUST have shape node")


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


def sdk(dvr, dvn, attr1, attr2, v1, v2, tangent=0):
    """Create set driven key, using object, attr
    e.g.
        sdk2(obj1, obj2, 'ty', 'ty', 0, 0)
        sdk2(obj1, obj2, 'ty', 'ty', 1, 2)
    """
    opt = ["linear", "auto", "stepnext"]
    # itt = "linear" if auto == 0 else "auto"
    # ott = "linear" if auto == 0 else "auto"
    mc.setDrivenKeyframe(
        f"{dvn}.{attr2}",
        cd=f"{dvr}.{attr1}",
        dv=v1,
        v=v2,
        itt=opt[tangent],
        ott=opt[tangent],
    )
    # mc.setInfinity(dvr, pri="linear", poi="linear")


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
    from nl_modules.nodel.mesh_node import MeshNode

    if mc.objExists(grp):
        mc.select(grp)
    else:
        logging.info(f"Model set {grp} NOT found.")
        return []

    mc.select(hi=1)
    meshes = mc.ls(sl=1, et="mesh") or []
    mc.select(cl=1)
    return [MeshNode(mesh) for mesh in meshes] or []


def setViewport(jx=1, xray=0, wos=0):
    mc.select(cl=1)
    mc.viewFit(all=1)
    # mc.setAttr("hardwareRenderingGlobals.ssaoEnable", 1)
    # mc.setAttr('hardwareRenderingGlobals.multiSampleEnable', 1)
    for p in mc.getPanel(type="modelPanel"):
        # mc.modelEditor(p, e=1, jx=jx, xray=xray, wos=wos)
        mc.modelEditor(p, e=1, jx=jx)

    mc.refresh(f=1)


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
#     from nl_modules.nodel.group_node import GroupNode
#
#     g1 = GroupNode("space_#", pf=space.name, align=space, p=sp1, addOfs=1)
#     g2 = GroupNode("space_#", pf=space.name, align=space, p=sp2, addOfs=1)
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
