import os
import glob
import logging
import maya.cmds as mc
import maya.mel as mel
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import common


def nlShrinkWrap(target=None, meshes=None, keep=0, **kwargs):
    """Create a shrinkWrap deformer on the given meshes, projecting them onto the target mesh."""

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


def genProxy(*args, tgtSet="auto_bind_jnt_set"):
    """Generate proxy meshes for all bind joints in the scene."""
    CHR = GrpNode("CHR")
    MDL = GrpNode("MDL")
    PRX = GrpNode("PRX", p=CHR)
    bindSet = DagNode(tgtSet)

    if bindSet.exists():
        bindJnts = mc.sets(bindSet, q=1)
        if bindJnts == None:
            logging.warning(f"Joints NOT found in set '{tgtSet}'.")
            return
    else:
        logging.warning(f"Set '{tgtSet}' not found.")
        return

    proxy_count = 0
    for j in bindJnts:
        grpName = str(j).split("_")[0]
        PRX_GRP = GrpNode(grpName + "_PRX", p=PRX)
        JntNode(j).genProxyMesh(p=PRX_GRP)
        proxy_count += 1

    mc.select(cl=1)
    common.setVP(wos=1)
    logging.info(f"{proxy_count} proxy meshes generated.")


def saveProxy():
    """Export all proxy meshes to a file."""
    prx = mc.ls("PRX", tr=1)
    if not prx:
        mc.confirmDialog(t="Info", m="Group PRX not found.     ", b="OK")
        return

    charPath = mc.optionVar(q="charPath")
    tgtFile = mc.fileDialog2(fileFilter="*prx*.ma", dialogStyle=2, dir=charPath)
    if tgtFile:
        mc.select("PRX")
        mc.file(tgtFile, type="mayaAscii", f=1, es=1, ch=0, chn=0, exp=0, con=0)
        logging.info("Proxies exported.")
        mc.select(cl=1)


def loadProxy():
    """Load proxy meshes from a file and match them to existing bind joints."""
    from nl_modules.utils import control

    charPath = mc.optionVar(q="charPath")
    tgtFiles = []
    if charPath:
        fileToSearch = os.path.join(charPath, os.path.basename(charPath) + "*_prx*.ma")
        tgtFiles = glob.glob(fileToSearch)
        if not tgtFiles:
            tgtFiles = mc.fileDialog2(
                fileFilter="*_prx*", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtFiles:
        return

    genProxy()
    imported = mc.file(tgtFiles[-1], i=1, ns="proxy", returnNewNodes=1)
    ns = ""
    if imported:
        tempStr = imported[0].replace(":", " ").replace("|", " ")
        ns = tempStr.split()[0]
    else:
        logging.warning("No proxies imported.")
        return

    allGeo = [DagNode(geo) for geo in mc.ls("*_pxGeo")]
    control.reset_all_ctl()
    load_count = 0
    for geo in allGeo:
        imported = DagNode(ns + ":" + geo)
        if imported.exists():
            common.matchMove([geo, imported], mode="a")
            mc.blendShape(imported, geo, w=(0, 1), topologyCheck=0)
            geo.deleteHistory()
            load_count += 1

    mc.refresh(f=1)
    if imported:
        rootGrp = DagNode(ns + ":*")
        if rootGrp.exists():
            rootGrp.delete()
        mc.refresh(f=1)
        logging.info(f"{load_count} proxy loaded.")
        # mc.confirmDialog(t="Info", m=f"{load_count} proxy loaded.     ", b="OK")


@common.Undo("resetProxy")
def resetProxy(*args):
    """Reset proxy meshes by deleting existing ones and re-adding them to the joints."""
    for selList in mc.ls(sl=1, tr=1):
        if selList.endswith("_pxGeo"):
            jnt = JntNode(selList[:-6])
            if jnt.exists():
                mc.delete(selList)
                jnt.genProxyMesh(p="PRX")
    mc.select(cl=1)


@common.Undo("mirrorProxy")
def mirrorProxy(*args):
    """Mirror proxy meshes by duplicating and flipping them across the X-axis."""
    processedList = []
    targets = [DagNode(x) for x in mc.ls(sl=1, tr=1) if DagNode(x).type == "mesh"]
    for tgt in targets:
        isLf = tgt.name.startswith("lf")
        isRt = tgt.name.startswith("rt")
        if isLf or isRt:
            oppPf = "rt" if isLf else "lf"
            oppName = oppPf + tgt.name[2:]
            opp = DagNode(oppName)
            if opp.exists() and opp not in processedList:
                oppParent = opp.parent

                # Delete opposite and create mirrored
                opp.delete()
                dup = tgt.duplicate()
                dup.rename(oppName)
                g = GrpNode("temp#")
                dup.parentTo(g)
                g.a.sx.set(-1)
                dup | oppParent
                g.delete()
                common.assignShd(0, tgts=[dup])

                # Add to process list
                processedList.append(opp)
    mc.select(cl=1)


@common.Undo("wrapProxy")
def wrapProxy(*args):
    """Wrap selected meshes to the target wrap mesh using a shrinkWrap deformer."""
    selList = mc.ls(sl=1, tr=1)
    if selList:
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")

        tgt = DagNode(targetWrapMesh)
        if not tgt.exists():
            raise ValueError(f"Missing object: {tgt}")

        nlShrinkWrap(tgt, selList)


def build_combined_mesh(proxies):
    """Combine multiple proxy meshes into a single mesh."""
    dup = mc.duplicate(proxies)
    combinedMesh = DagNode(mc.polyUnite(dup, n="combinedProxy#")[0])
    mc.delete(combinedMesh, ch=1)
    return combinedMesh


def build_sets_for_binding(combinedMesh, proxies):
    """Create vertex sets on the combinedMesh corresponding to each original proxy mesh."""
    # Build sets for binding
    cpom = DagNode("cpom", nodeType="closestPointOnMesh")
    combinedMesh.shape.a.outMesh >> cpom.a.inMesh

    for p in proxies:
        ptSet = []
        count = mc.polyEvaluate(p, v=1)
        for i in range(count):
            xf = mc.xform(f"{p}.vtx[{i}]", q=1, ws=1, t=1)
            cpom.a.inPosition.set(*xf)
            id = cpom.a.closestVertexIndex.get()
            ptSet.append(f"{combinedMesh}.vtx[{id}]")
            # ptSet.append(f"{p}.vtx[{id}]")
        mc.sets(ptSet, name=p + "_PS")

    cpom.delete()


def bind_to_proxy():
    """Combine all proxy meshes into a single one and create vertex sets for each original proxy mesh."""

    targetWrapMesh = mc.optionVar(q="targetWrapMesh")
    tgtMesh = DagNode(targetWrapMesh)
    if not tgtMesh.exists():
        mc.confirmDialog(t="Info", m="Target wrap mesh NOT found.     ", b="OK")
        return

    sc = MshNode(tgtMesh).skinCluster
    if sc.exists():
        mc.confirmDialog(t="Info", m="Target wrap mesh already skinned.     ", b="OK")
        return

    proxies = mc.ls("*_pxGeo", sl=1)
    if not proxies:
        logging.warning("No proxy meshes selected.")
        return
    else:
        proxies = [DagNode(p) for p in proxies if DagNode(p).type == "mesh"]

    combinedMesh = build_combined_mesh(proxies)
    build_sets_for_binding(combinedMesh, proxies)
    bind_combined(combinedMesh, proxies)
    set_combined_weight(combinedMesh)

    mc.polySmooth(combinedMesh, mth=1)
    MshNode(combinedMesh).copyWeightsTo(tgtMesh)
    combinedMesh.delete()
    mc.select(cl=1)

    logging.info("Bind to selected proxy OK.")


def bind_combined(combinedMesh, proxies):
    """Bind the combinedMesh proxy mesh to the corresponding joints."""
    bindJnts = []
    for p in proxies:
        j = DagNode(p.name.replace("_pxGeo", ""))
        if j.exists() and j.type == "joint":
            bindJnts.append(j)

    if bindJnts:
        mc.skinCluster(bindJnts, combinedMesh, mi=4, nw=1, dr=4, tsb=1)[0]


def set_combined_weight(combinedMesh):
    """Set skin weights for the combinedMesh proxy mesh based on the original proxy meshes."""
    sc = MshNode(combinedMesh).skinCluster
    bindJnts = mc.skinCluster(sc, q=1, inf=1)

    for j in bindJnts:
        ptSet = DagNode(j + "_pxGeo_PS")
        if ptSet.exists():
            mc.skinPercent(sc, ptSet, tv=[(j, 1)])


def selectAllProxy(*args):
    """Select all proxy meshes under the 'PRX' group."""
    PRX = DagNode("PRX")
    if PRX.exists():
        allBelow = PRX.children
        if allBelow:
            result = common.getObjectBelow(allBelow, tgtType="mesh")
            if result:
                mc.select(result)


def toggleProxy():
    """Toggle visibility of the proxy meshes under the 'PRX' group."""
    m = DagNode("master2_ctl")
    if m.exists():
        prxAttr = m.a.showPrx
        if prxAttr.exists():
            prxAttr.set(not prxAttr.get())
            logging.info(f"Toggle proxy visibility.")


def add_radiusScale_attr(tgtJnts, v):
    """Add proxyRadiusScale attribute to target joints"""
    for jnt in tgtJnts:
        tgt = DagNode(jnt)
        if tgt.exists():
            tgt.a.add("proxyRadiusScale", k=0, dv=v)


def add_proxyDiv_attr(tgtJnts, div=2):
    """Add proxyDiv attribute to target joints"""
    for jnt in tgtJnts:
        tgt = DagNode(jnt)
        if tgt.exists():
            tgt.a.add("proxyDiv", k=0, dv=div)


def add_height_attr(tgtJnts, v):
    """Add proxyHeight attribute to target joints"""
    for jnt in tgtJnts:
        tgt = DagNode(jnt)
        if tgt.exists():
            tgt.a.add("proxyHeight", k=0, dv=v)


def add_up_attr(tgtJnts, v):
    """Add proxyUp attribute to target joints"""
    # 0: x, 1: y, 2: z
    for jnt in tgtJnts:
        tgt = DagNode(jnt)
        if tgt.exists():
            tgt.a.add("proxyUp", k=0, dv=v)


# def refProxy():
#     """Toggle the display type of all proxy meshes between normal and reference."""
#     for s in mc.ls("*_pxGeo") or []:
#         DagNode(s).dspType = abs(DagNode(s).dspType - 2)
