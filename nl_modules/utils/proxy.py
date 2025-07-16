import logging
import maya.cmds as mc
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
    bindSet = DagNode("bind_jnt_set")

    if not bindSet.exists():
        raise NameError("Set 'bind_jnt_set' NOT found.")

    bindJnts = mc.sets(bindSet, q=1)
    for j in bindJnts:
        grpName = str(j).split("_")[0]
        PRX_GRP = GrpNode(grpName + "_PRX", p=PRX)
        JntNode(j).addProxyMesh(p=PRX_GRP)

    mc.select(cl=1)
    common.setViewport(jx=1, wos=1)
    logging.info("Gen Proxy Mesh OK")


def saveProxy():
    """Export all proxy meshes to a file."""

    mc.select("PRX")
    tgtFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2)
    if tgtFile:
        mc.file(tgtFile, type="mayaAscii", f=1, es=1, ch=0, chn=0, exp=0, con=0)
        logging.info("Proxies exported OK.")
        mc.select(cl=1)


def loadProxy():
    """Load proxy meshes from a file and match them to existing bind joints."""

    tgtFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2, fileMode=1)
    if tgtFile:
        genProxy()
        imported = mc.file(tgtFile, i=1, ns="prx", returnNewNodes=1)
        ns = ""
        if imported:
            tempStr = imported[0].replace(":", " ").replace("|", " ")
            ns = tempStr.split()[0]
        else:
            return

        allTgts = mc.ls("*_pxGeo")
        for tgt in allTgts:
            tgt = DagNode(tgt)
            imported = DagNode(ns + ":" + tgt)
            if imported.exists():
                # print(imported)
                common.matchMove([tgt, imported], mode="a")
                mc.blendShape(imported, tgt, w=(0, 1), topologyCheck=0)
                tgt.deleteHistory()

        if imported:
            rootGrp = DagNode(ns + ":CHR")
            if rootGrp.exists():
                rootGrp.delete()


def resetProxy():
    """Reset proxy meshes by deleting existing ones and re-adding them to the joints."""

    for selList in mc.ls(sl=1, tr=1):
        if selList.endswith("_pxGeo"):
            jnt = JntNode(selList[:-6])
            if jnt.exists():
                mc.delete(selList)
                jnt.addProxyMesh(p="PRX")
    mc.select(cl=1)


def mirrorProxy():
    """Mirror proxy meshes by duplicating and flipping them across the X-axis."""

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
                common.assignPresetShd([dup])
    mc.select(cl=1)


def wrapProxy():
    """Wrap selected meshes to the target wrap mesh using a shrinkWrap deformer."""

    selList = mc.ls(sl=1, tr=1)
    if selList:
        targetWrapMesh = mc.optionVar(q="targetWrapMesh")

        tgt = DagNode(targetWrapMesh)
        if not tgt.exists():
            raise ValueError(f"Missing object: {tgt}")

        nlShrinkWrap(tgt, selList)


def combineProxy():
    """Combine all proxy meshes into a single mesh and create vertex sets for each original proxy mesh."""

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
    """Set skin weights for the combined proxy mesh based on the original proxy meshes."""

    import maya.mel as mel

    skinC = mel.eval("findRelatedSkinCluster " + combined)
    bindJnts = mc.skinCluster(skinC, q=1, inf=1)

    for p in proxies:
        ptSet = DagNode(p + "_PS")
        if ptSet.exists():
            proxyJ = DagNode(mc.substitute("_pxGeo", p, ""))
            if proxyJ.exists() and proxyJ.type == "joint":
                pass

    # mc.skinPercent(proxyJ, tv=1, skinC, ptSet)


def selAllProxyGrp():
    """Select all proxy meshes under the 'PRX' group."""

    PRX = DagNode("PRX")
    if PRX.exists():
        allBelow = PRX.children
        if allBelow:
            mc.select(allBelow)


def showHideProxy():
    """Toggle visibility of the proxy meshes under the 'PRX' group."""

    m2 = DagNode("master2_ctl")
    if m2.exists():
        m2.a.proxyVis.set(1 - m2.a.proxyVis.get())


def refProxy():
    """Toggle the display type of all proxy meshes between normal and reference."""

    for s in mc.ls("*_pxGeo") or []:
        DagNode(s).dspType = abs(DagNode(s).dspType - 2)
