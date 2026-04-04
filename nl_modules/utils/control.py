import os
import glob
import logging
import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import guide
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode


def reset_all_ctl():
    """Reset all ctl's attr to default"""
    reset_count = 0
    for ctl in common.getRigCtlsAll():
        for attr in ctl.a.list(k=1, u=1, se=1, s=1):
            if attr.settable():
                attr.reset()
        reset_count += 1
    logging.info(f"{reset_count} ctls reset.")


def mirrorCtlShape(ctl):
    """Mirror the control shape to its opposite counterpart."""
    ctl = DagNode(ctl)
    if not ctl.shape:
        logging.info(f"Missing shape in {ctl}.")
        return

    mg = DagNode(ctl.name.split("_")[0] + "_master_guide")
    if not mg.exists():
        logging.info(f"Missing master guide for {ctl}.")
        return

    opp = common.getOpposite(ctl)
    if not opp:
        logging.info(f"No opposite found for {ctl}.")
        return

    dup = ctl.duplicate()
    dup.a.showAttr(t=1, r=1, s=1)
    if dup.children:
        mc.delete(dup.children)

    tempGrp = GrpNode("tempGrp", align=dup, snap=dup)
    dup | tempGrp

    if dup.a["wsMirror"].exists():
        tempGrp.a.sx.set(-1)
    else:
        tempGrp.a.s.set(-1, -1, -1)
    tempGrp.freezeXf(t=0, r=0, s=1)

    if opp.shapes:
        mc.delete(opp.shapes)
    for shape in dup.shapes:
        mc.parent(shape, opp, s=1, r=1)

    w = ctl.shape.a.lineWidth.get()
    for shape in opp.shapes:
        shape.rename(opp.name + "Shape#")
        shape.a.lineWidth.set(w)

    opp.color = ctl.get_opp_side_color()
    opp.deleteHistory()

    mc.delete(tempGrp)
    mc.select(cl=1)
    return opp


@common.Undo("removeAllCst")
def removeAllCst():
    """Remove all constraints in scene."""
    allCsts = mc.ls(type="constraint")
    mc.delete(allCsts)


def saveCtl():
    """Save control curves to a file."""
    allCtls = common.getRigCtlsAll()
    if len(allCtls) == 0:
        mc.confirmDialog(t="Info", m="Control curves NOT found.     ", b="OK")
        return

    allCtls.extend(["master_ctl", "master1_ctl", "master2_ctl"])
    if allCtls:
        charPath = mc.optionVar(q="charFullPath")
        tgtPaths = mc.fileDialog2(fileFilter="*_ctl*.ma", dialogStyle=2, dir=charPath)
        if tgtPaths:
            try:
                removeAllCst()
                mc.select(allCtls)
                mc.file(
                    tgtPaths, type="mayaAscii", f=1, es=1, ch=0, chn=0, exp=0, con=0
                )
                mc.undo()
                mc.undo()
            except Exception as e:
                raise SystemError(f"Error saving {tgtPaths}: {e}")

            logging.info("Curve shape exported.")
            mc.select(cl=1)


@common.Undo("loadCtl")
def loadCtl():
    """Load control curves from a file and replace existing controls."""
    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        tgtPaths = glob.glob(
            os.path.join(charPath, os.path.basename(charPath) + "_ctl*.ma")
        )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*_ctl*", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    try:
        newNodes = mc.file(tgtPaths[-1], i=1, ns="ctl", returnNewNodes=1)
    except Exception as e:
        raise SystemError(f"Error loading {tgtPaths}: {e}")

    if not newNodes:
        return

    ns = newNodes[0].replace(":", " ").replace("|", " ").split()[0]

    allTgts = common.getRigCtlsAll()
    allTgts.extend(
        [DagNode("master2_ctl"), DagNode("master1_ctl"), DagNode("master_ctl")]
    )
    for tgt in allTgts:
        src = DagNode(ns + ":" + tgt)
        if src.exists():
            mc.delete(tgt.shapes)
            mc.parent(src.shapes, tgt, s=1, r=1)
            for s in tgt.shapes:
                s.rename(tgt + "Shape#")

    rootGrp = DagNode(ns + ":CHR")
    if rootGrp.exists():
        rootGrp.delete()
        mc.select(cl=1)

    logging.info("Control shapes loaded.")


@common.Undo("setOnTopSel")
def setOnTopSel(*args):
    """Toggle the always draw on top state for selected shapes."""
    selList = [DagNode(n) for n in mc.ls(sl=1, tr=1)]
    for sel in selList:
        if sel.type == "nurbsCurve":
            CrvNode(sel).setOnTop(args[0])


@common.Undo("toggleOnTopSel")
def toggleOnTopSel(*args):
    """Toggle the always draw on top state for selected shapes."""
    selList = [DagNode(n) for n in mc.ls(sl=1, tr=1)]
    for sel in selList:
        if sel.type == "nurbsCurve":
            state = sel.shape.a.alwaysDrawOnTop.get()
            CrvNode(sel).setOnTop(not state)


@common.Undo("dspTypeSel")
def dspTypeSel(*args):
    selList = [DagNode(n) for n in mc.ls(sl=1, tr=1)]
    for sel in selList:
        sel.dspType = args[0]


@common.Undo("dropSel")
def dropSel(*args):
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
def setLineWidth(value):
    """Update the line width of selected curves."""
    for sel in [DagNode(selList) for selList in mc.ls(sl=1, tr=1)]:
        if sel.type == "nurbsCurve":
            # GrpNode(sel).setLineWidth(value)  # , atCVCetner=1)
            GrpNode(sel).width = value
