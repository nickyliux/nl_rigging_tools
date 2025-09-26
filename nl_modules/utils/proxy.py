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


def genProxy():
    """Generate proxy meshes for all bind joints in the scene."""
    MDL = GrpNode("MDL")
    PRX = GrpNode("PRX", p=MDL)
    BIND_JNT_SET = "bind_jnt_set"
    bindSet = DagNode(BIND_JNT_SET)

    if bindSet.exists():
        bindJnts = mc.sets(bindSet, q=1)
        if bindJnts == None:
            logging.warning(f"Joints NOT found in set '{BIND_JNT_SET}'.")
            return
    else:
        logging.warning(f"Set '{BIND_JNT_SET}' not found.")
        return

    for j in bindJnts:
        grpName = str(j).split("_")[0]
        PRX_GRP = GrpNode(grpName + "_PRX", p=PRX)
        JntNode(j).genProxyMesh(p=PRX_GRP)

    mc.select(cl=1)
    common.setViewport()  # jx=1, wos=1)
    logging.info("Gen Proxy Mesh OK")


def saveProxy():
    """Export all proxy meshes to a file."""
    if not mc.ls("PRX"):
        mc.confirmDialog(t="Info", m="PRX group NOT found.     ", b="OK")
        return

    mc.select("PRX")
    tgtFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2)
    if tgtFile:
        mc.file(tgtFile, type="mayaAscii", f=1, es=1, ch=0, chn=0, exp=0, con=0)
        logging.info("Proxies exported OK.")
        mc.select(cl=1)


def loadProxy():
    """Load proxy meshes from a file and match them to existing bind joints."""
    from nl_modules.utils import control

    charPath = mc.optionVar(q="charPath")
    tgtFile = mc.fileDialog2(
        fileFilter="*_prx*", dialogStyle=2, fileMode=1, dir=charPath
    )
    if tgtFile:
        genProxy()
        imported = mc.file(tgtFile, i=1, ns="prx", returnNewNodes=1)
        ns = ""
        if imported:
            tempStr = imported[0].replace(":", " ").replace("|", " ")
            ns = tempStr.split()[0]
        else:
            return

        allGeo = mc.ls("*_pxGeo")
        control.reset_all_ctl()
        for geo in allGeo:
            geo = DagNode(geo)
            imported = DagNode(ns + ":" + geo)
            if imported.exists():
                common.matchMove([geo, imported], mode="a")
                mc.blendShape(imported, geo, w=(0, 1), topologyCheck=0)
                geo.deleteHistory()

        if imported:
            rootGrp = DagNode(ns + ":CHR")
            if rootGrp.exists():
                rootGrp.delete()
            logging.info("Proxies imported OK.")


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
                common.assignPresetShd([dup])

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


def bind_to_sel_proxy():
    """Combine all proxy meshes into a single one and create vertex sets for each original proxy mesh."""

    targetWrapMesh = mc.optionVar(q="targetWrapMesh")
    tgtMesh = DagNode(targetWrapMesh)
    if not tgtMesh.exists():
        mc.confirmDialog(t="Error", m="Target wrap mesh NOT found.     ", b="OK")
        # logging.warning(f"Missing target wrap mesh")
        return

    skinC = mel.eval("findRelatedSkinCluster " + tgtMesh)
    if skinC:
        mc.confirmDialog(
            t="Error", m="Target wrap mesh is already skinned.     ", b="OK"
        )
        # logging.warning(f"Target wrap mesh is already skinned.")
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

    skinC = mel.eval("findRelatedSkinCluster " + combinedMesh)
    bindJnts = mc.skinCluster(skinC, q=1, inf=1)

    for j in bindJnts:
        ptSet = DagNode(j + "_pxGeo_PS")
        if ptSet.exists():
            mc.skinPercent(skinC, ptSet, tv=[(j, 1)])


# def selAllProxyGrp():
#     """Select all groups under the 'PRX' group."""
#     PRX = DagNode("PRX")
#     if PRX.exists():
#         allBelow = PRX.children
#         if allBelow:
#             mc.select(allBelow)


def selAllProxyMesh():
    """Select all proxy meshes under the 'PRX' group."""
    PRX = DagNode("PRX")
    if PRX.exists():
        allBelow = PRX.children
        if allBelow:
            result = common.getTypeBelow(allBelow, tgtType="mesh")
            if result:
                mc.select(result)


def showHideProxy():
    """Toggle visibility of the proxy meshes under the 'PRX' group."""
    m2 = DagNode("master2_ctl")
    if m2.exists():
        m2.a.proxy.set(1 - m2.a.proxy.get())


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


# def refProxy():
#     """Toggle the display type of all proxy meshes between normal and reference."""
#     for s in mc.ls("*_pxGeo") or []:
#         DagNode(s).dspType = abs(DagNode(s).dspType - 2)
