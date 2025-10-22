import os
import glob
import logging
import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import guide
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode


def reset_all_ctl():
    """Reset all ctl's attr to default"""
    logging.info("Reset All Ctl's Attr")
    for ctl in common.getRigCtlsAll():
        for attr in ctl.a.list(k=1, u=1, se=1, s=1):
            if attr.settable():
                attr.reset()


# def getRigNodes_all():
#     """Return all rigNodes in the scene"""
#     return [DagNode(r) for r in mc.ls("*RGN", type="script")]


# def reset_all_pv_ctl():
#     """Reset all poleVector ctl's attr to default"""
#     logging.info("Reset All pvc's Attr")
#     for rigNode in getRigNodes_all():

#         rID = rigNode.a.rigID.get()
#         pvc = rigNode.a.pvc.inConnNode
#         guide = DagNode(rID + "_pvc_guide")

#         if pvc and guide and pvc.exists() and guide.exists():
#             pvc.snapTo(guide)


def mirrorCtlShape(ctl):
    """Mirror the control shape to its opposite counterpart."""
    ctl = DagNode(ctl)
    if not ctl.shape:
        logging.info(f"Missing shape in {ctl}.")
        return

    pf = ctl.name.split("_")[0]
    mg = DagNode(pf + "_master_guide")

    if not mg.exists():
        logging.info(f"Missing master guide for {ctl}.")
        return

    opp = common.getOpposite(ctl)
    if not opp:
        logging.info(f"No opposite found for {ctl.name}.")
        return

    dup = ctl.duplicate()
    dup.a.showAttr(t=1, r=1, s=1)
    if dup.children:
        mc.delete(dup.children)

    # Group the duplicated
    # Neg scale it
    # Blend to opposite
    myGrp = GrpNode("myG", align=mg, snap=dup)
    dup | myGrp

    if dup.a["wsMirror"].exists():
        myGrp.a.sx.set(-1)
    else:
        myGrp.a.s.set(-1, -1, -1)

    myGrp.freezeXf(t=0, r=0, s=1)
    try:
        mc.blendShape(dup.shape, opp.shape, w=(0, 1))
    except Exception as e:
        logging.error(f"Error blending shapes: {e}")
        return

    opp.deleteHistory()
    mc.delete(dup, myGrp)

    return opp


def saveCtl():
    """Save control curves to a file."""
    allCtls = common.getRigCtlsAll()
    if len(allCtls) == 0:
        mc.confirmDialog(t="Info", m="Control curves NOT found.     ", b="OK")
        return

    allCtls.extend(["master_ctl", "master1_ctl", "master2_ctl"])
    if allCtls:
        mc.select(allCtls)
        charPath = mc.optionVar(q="charPath")
        tgtFile = mc.fileDialog2(fileFilter="*_ctl*.ma", dialogStyle=2, dir=charPath)
        if tgtFile:
            try:
                mc.file(tgtFile, type="mayaAscii", f=1, es=1, ch=0, chn=0, exp=0, con=0)
            except Exception as e:
                raise SystemError(f"Error saving {tgtFile}: {e}")

            logging.info("Curve shape exported.")
            mc.select(cl=1)


def loadCtl():
    """Load control curves from a file and replace existing controls."""
    charPath = mc.optionVar(q="charPath")
    tgtFiles = []
    if charPath:
        tgtFiles = glob.glob(
            os.path.join(charPath, os.path.basename(charPath) + "_ctl*.ma")
        )
        if not tgtFiles:
            tgtFiles = mc.fileDialog2(
                fileFilter="*_ctl*", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtFiles:
        return

    imported = None
    try:
        imported = mc.file(tgtFiles[-1], i=1, ns="ctl", returnNewNodes=1)
    except Exception as e:
        raise SystemError(f"Error loading {tgtFiles}: {e}")

    ns = ""
    if imported:
        tempStr = imported[0].replace(":", " ").replace("|", " ")
        ns = tempStr.split()[0]
    else:
        return

    allTgts = common.getRigCtlsAll()
    allTgts.extend(
        [DagNode("master2_ctl"), DagNode("master1_ctl"), DagNode("master_ctl")]
    )
    for tgt in allTgts:
        imported = DagNode(ns + ":" + tgt)
        if imported.exists():
            mc.delete(tgt.shapes)
            mc.parent(imported.shapes, tgt, s=1, r=1)
            for s in tgt.shapes:
                s.rename(tgt + "Shape#")
    if imported:
        rootGrp = DagNode(ns + ":CHR")
        if rootGrp.exists():
            rootGrp.delete()
            logging.info(f"Control shapes loaded.")
            mc.select(cl=1)


@common.Undo("setOnTopSel")
def setOnTopSel(*args):
    """Toggle the always draw on top state for selected shapes."""
    selList = [DagNode(n) for n in mc.ls(sl=1, tr=1)]
    for sel in selList:
        if sel.type == "nurbsCurve":
            sel.shape.a.alwaysDrawOnTop.set(args[0])


@common.Undo("toggleOnTopSel")
def toggleOnTopSel(*args):
    """Toggle the always draw on top state for selected shapes."""
    selList = [DagNode(n) for n in mc.ls(sl=1, tr=1)]
    for sel in selList:
        if sel.type == "nurbsCurve":
            state = sel.shape.a.alwaysDrawOnTop.get()
            sel.shape.a.alwaysDrawOnTop.set(not state)


@common.Undo("dspTypeSel")
def dspTypeSel(*args):
    selList = [DagNode(n) for n in mc.ls(sl=1, tr=1)]
    for sel in selList:
        sel.dspType = args[0]


@common.Undo("dropSel")
def dropSel():
    """Drop the selected control curves."""
    for selList in mc.ls(sl=1, tr=1):
        GrpNode(selList).cv_drop()


@common.Undo("rotaCVForSel")
def rotaCVForSel(*args):
    """Rotate the CVs of selected curves."""
    for selList in [DagNode(selList) for selList in mc.ls(sl=1, tr=1)]:
        if selList.type == "nurbsCurve":
            GrpNode(selList).cv_rotate(*args)


@common.Undo("scaleCVForSel")
def scaleCVForSel(value):
    """Scale the CVs of selected curves."""
    for selList in [DagNode(selList) for selList in mc.ls(sl=1, tr=1)]:
        if selList.type == "nurbsCurve":
            GrpNode(selList).cv_scale(value)  # , atCVCetner=1)


@common.Undo("updateLineWidthForSel")
def setLineWidthForSel(value):
    """Update the line width of selected curves."""
    for sel in [DagNode(selList) for selList in mc.ls(sl=1, tr=1)]:
        if sel.type == "nurbsCurve":
            # GrpNode(sel).setLineWidth(value)  # , atCVCetner=1)
            GrpNode(sel).width = value
