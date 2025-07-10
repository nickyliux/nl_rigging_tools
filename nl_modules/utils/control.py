import logging
import maya.cmds as mc
from nl_modules.utils import common


def mirrorCtlShape(ctl):
    """Mirror the control shape to its opposite counterpart."""
    from nl_modules.utils import guide
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.base.dag_node import DagNode
    import maya.cmds as mc

    ctl = DagNode(ctl)
    if not ctl.shape:
        logging.info(f"Missing shape in {ctl}")
        return

    pf = ctl.name.split("_")[0]
    mg = DagNode(pf + "_master_guide")

    if not mg.exists():
        logging.info(f"Missing master guide for {ctl}")
        return

    opp = guide.getOppositeCtl(ctl, strB4Pf=0)
    if not opp:
        logging.info(f"No opposite found for {ctl.name}")
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

    if dup.a.wsMirror.exists():
        myGrp.a.sx.set(-1)
    else:
        myGrp.a.s.set(-1, -1, -1)

    myGrp.freezeXf(t=0, r=0, s=1)
    mc.blendShape(dup.shape, opp.shape, w=(0, 1))
    opp.deleteHistory()
    mc.delete(dup, myGrp)

    return opp


def saveCtl():
    """Save control curves to a file."""
    allCtls = common.getRigCtlsAll()
    allCtls.extend(["master_ctl", "master1_ctl", "master2_ctl"])
    if allCtls:
        mc.select(allCtls)
        tgtFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2)
        if tgtFile:
            try:
                mc.file(tgtFile, type="mayaAscii", f=1, es=1, ch=0, chn=0, exp=0, con=0)
            except Exception as e:
                raise SystemError(f"Error saving {tgtFile}: {e}")

            logging.info("Curve shape exported OK.")
            mc.select(cl=1)


def loadCtl():
    """Load control curves from a file and replace existing controls."""
    from nl_modules.nodel.base.dag_node import DagNode

    tgtFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2, fileMode=1)
    if tgtFile:
        imported = None
        try:
            imported = mc.file(tgtFile, i=1, ns="ctl", returnNewNodes=1)
        except Exception as e:
            raise SystemError(f"Error loading {tgtFile}: {e}")

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
                mc.select(cl=1)


def setOnTopSel():
    """Toggle the always draw on top state for selected shapes."""
    from nl_modules.nodel.base.dag_node import DagNode

    selList = mc.ls(sl=1, tr=1)
    if selList:
        state = DagNode(selList[0]).shape.a.alwaysDrawOnTop.get()
        for s in selList:
            DagNode(s).shape.a.alwaysDrawOnTop.set(1 - state)


def dropSel():
    """Drop the selected control curves."""
    from nl_modules.nodel.crv_node import CrvNode

    for selList in mc.ls(sl=1, tr=1):
        CrvNode(selList).cv_drop()


def rotaCVForSel(*args):
    """Rotate the CVs of selected curves."""
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.crv_node import CrvNode

    for selList in [DagNode(selList) for selList in mc.ls(sl=1, tr=1)]:
        if selList.type == "nurbsCurve":
            CrvNode(selList).cv_rotate(*args)


def scaleCVForSel(value):
    """Scale the CVs of selected curves."""
    from nl_modules.nodel.base.dag_node import DagNode
    from nl_modules.nodel.crv_node import CrvNode

    for selList in [DagNode(selList) for selList in mc.ls(sl=1, tr=1)]:
        if selList.type == "nurbsCurve":
            CrvNode(selList).cv_scale(value)  # , atCVCetner=1)
