import glob
import logging
import os
import re
import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import file
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def addHelperSel(*args):
    """Add corrective joint system for Y-axis translation."""
    selList = [DagNode(s) for s in mc.ls(sl=1, tr=1)]
    for sel in selList:
        if sel.type == "joint":
            addHlpJnt(tgtJnt=sel, buildRZ=(args[0] == 1), buildRY=(args[0] == 2))
            addHlpJnt(
                tgtJnt=sel, buildRZ=(args[0] == 1), buildRY=(args[0] == 2), dir=-1
            )
    if selList:
        mc.select(selList)


@common.Undo("Add Helper Joints")
def addHlpJnt(
    tgtJnt=None, buildRY=False, buildRZ=False, dir=1, init=1, scaling1=0, scaling2=2
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    tgtJntN = DagNode(tgtJnt) if isinstance(tgtJnt, str) else tgtJnt
    return addHlpJntGeneral(
        tgtJnt=tgtJntN,
        parentJnt=tgtJntN.parent,
        holder=tgtJntN,
        buildRZ=buildRZ,
        buildRY=buildRY,
        dir=dir,
        init=init,
        scaling1=scaling1,
        scaling2=scaling2,
    )


def addHlpJntGeneral(
    tgtJnt=None,
    parentJnt=None,
    holder=None,
    buildRY=False,
    buildRZ=False,
    dir=1,
    init=1,
    scaling1=0,
    scaling2=2,
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    if not tgtJnt.exists() or not parentJnt.exists() or not holder.exists():
        mc.warning("Target or it's parent not found.")
        return

    if buildRZ:
        return hlpJntSetup(
            tgtJnt,
            parentJnt,
            holder,
            fr="rz",
            to="ty",
            dir=dir,
            init=init,
            scaling1=scaling1,
            scaling2=scaling2,
        )
    if buildRY:
        return hlpJntSetup(
            tgtJnt,
            parentJnt,
            holder,
            fr="ry",
            to="tz",
            dir=dir,
            init=init,
            scaling1=scaling1,
            scaling2=scaling2,
        )


def hlpJntSetup(
    tgtJnt=None,
    parentJnt=None,
    rotator=None,
    fr=None,
    to=None,
    dir=1,
    init=1,
    scaling1=0,
    scaling2=2,
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""

    xDr = 1 if tgtJnt.a.tx.get() > 0 else -1
    dir = 1 if dir > 0 else -1
    dirName = "A" if dir * xDr == 1 else "B"
    ro = tgtJnt.a.rotateOrder.get()

    # Delete existing setup -------------------
    hlpName = f"{tgtJnt.name}_{fr}_{dirName}"
    tgtGrp = DagNode(hlpName + "_grp")
    if tgtGrp.exists():
        mc.delete(tgtGrp)

    # Setup group hierarchy ----------------------
    pf = tgtJnt.name.split("_")[0]
    SKL_DATA = DagNode(f"{pf}_skl_data")
    p = SKL_DATA if SKL_DATA.exists() else None

    cstGrp = GrpNode(f"{hlpName}_grp", p=p)
    ofsGrp = GrpNode(f"{hlpName}_ofs")
    hlpJnt = JntNode(f"{hlpName}_jnt", r=tgtJnt.a.radius.get() * 0.75)
    cstGrp.a.rotateOrder.set(ro)
    hlpJnt.a.rotateOrder.set(ro)
    hlpJnt | ofsGrp | cstGrp

    common.cstMulti(parentJnt, tgtJnt, cstGrp, cstType="ori")
    tgtJnt.cstPoi(cstGrp)

    hlpJnt.color = Color.D_RED  # Color.D_BLUE if xDr * dir == 1 else Color.D_RED
    cstGrp.a.s.set(dir, dir, dir)

    CrvNode.buildLineLinked(tgt1=hlpJnt, tgt2=tgtJnt, dspType=2, top=1, p=cstGrp)

    # offset but keep corrective in the middle -------------
    # ofsInitRota = hlpJnt.a.add("ofsInitRota")
    # ofsInitRota * dir >> loc.a[driver]
    # ((90 + ofsInitRota) / (90 - ofsInitRota)) >> oriCst.a.w0
    # ------------------------------------------------------

    hlpJnt.a.add("fr", attrType="string", txt=fr)
    hlpJnt.a.add("to", attrType="string", txt=to)
    hlpJnt.a.add("helperTgt", attrType="message")
    tgtJnt.a.message >> hlpJnt.a.helperTgt

    scaling1_attr = hlpJnt.a.add("scaling1", dv=0, min=0)
    scaling2_attr = hlpJnt.a.add("scaling2", dv=2, min=0)
    scaling1_attr.set(scaling1)
    scaling2_attr.set(scaling2)
    hlpJnt.a.add("dir", dv=dir, k=0, cb=0)
    hlpJnt.a[to].set(init)
    r = rotator.a[fr]

    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)
    ofsScale = (r > 0).setCdn(ifTrue=scaling1_attr, ifFalse=scaling2_attr)
    hlpJnt.a[to] + ofsScale * rAbs / 90 >> ofsGrp.a[to]
    hlpJnt.a.showAttr(t=1)
    return hlpJnt


@common.Undo("mirror Helper Joints")
def mirrorHelper(*args):
    """Mirror helper joints for selected helper joints."""
    selList = [JntNode(j) for j in mc.ls("*_r?_?_jnt", sl=1, type="joint")]

    for hlp in selList:
        tgt = hlp.a.helperTgt.inConnNode
        if not tgt:
            continue

        opp = common.getOpposite(tgt)
        if not opp:
            continue

        helperJnt = addHlpJnt(
            tgtJnt=opp,
            buildRY=hlp.a.fr.get() == "ry",
            buildRZ=hlp.a.fr.get() == "rz",
            dir=1 - hlp.a.dir.get(),
            init=hlp.a["ty"].get() if hlp.a.to.get() == "ty" else hlp.a["tz"].get(),
            scaling1=hlp.a.scaling1.get(),
            scaling2=hlp.a.scaling2.get(),
        )
        logging.info(f"Helper joint {helperJnt.name} created.")


def selAllHlpGrps(*args):
    """Select all helper joint groups in the scene."""
    helperJnts = [JntNode(j) for j in mc.ls("*_r?_?_jnt", type="joint")]
    if helperJnts:
        mc.select(helperJnts)
        mc.pickWalk(d="up")
        mc.pickWalk(d="up")


@common.Undo("Load Helper Joints")
def loadHlpJnt(uiPB):
    """Load helper joint data from a JSON file and recreate the joints in the scene."""
    charPath = mc.optionVar(q="charPath")
    tgtFiles = []
    if charPath:
        tgtFiles = glob.glob(
            os.path.join(charPath, os.path.basename(charPath) + "_hlp*.json")
        )
        if not tgtFiles:
            tgtFiles = mc.fileDialog2(
                fileFilter="*.json", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtFiles:
        return

    corrDataList = file.loadJson(tgtFiles[-1])
    if uiPB:
        uiPB.setMaximum(len(corrDataList))

    i = 0
    for data in corrDataList:

        # Load data
        tgtJnt = DagNode(data["tgt"])
        buildRY = data["fr"] == "ry"
        buildRZ = data["fr"] == "rz"
        dir = data["dir"]
        init = data["init"]
        scaling1 = data["scaling1"]
        scaling2 = data["scaling2"]

        if uiPB:
            i += 1
            uiPB.setValue(i)

        if not tgtJnt.exists():
            logging.warning(f"Target joint {data['tgt']} NOT found.")
            continue

        # Add helper joint
        helperJnt = addHlpJnt(
            tgtJnt=tgtJnt,
            buildRY=buildRY,
            buildRZ=buildRZ,
            dir=dir,
            init=init,
            scaling1=scaling1,
            scaling2=scaling2,
        )

    if uiPB:
        uiPB.setValue(0)


def saveHlpJnt(*args):
    """Save skin weight joints for selected meshes to a JSON file."""
    charPath = mc.optionVar(q="charPath")
    if charPath == None or charPath == "":
        mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
        return

    tgtFile = mc.fileDialog2(
        fileFilter="*hlp*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtFile is None:
        return

    # Get all helper joints in the scene
    helperJnts = [JntNode(j) for j in mc.ls("*_r?_?_jnt", type="joint")]
    if not helperJnts:
        mc.confirmDialog(t="Info", m="No helper joint found.     ", b="OK")
        return

    # Store each data into lists
    corrJntList = []
    for hlp in helperJnts:
        tgt = hlp.a.helperTgt.inConnNode
        if tgt and tgt.exists():
            corrJntList.append(
                {
                    "tgt": tgt.name,
                    "fr": hlp.a.fr.get(),
                    "to": hlp.a.to.get(),
                    "dir": hlp.a.dir.get(),
                    "init": hlp.a[hlp.a.to.get()].get(),
                    "scaling1": hlp.a.scaling1.get(),
                    "scaling2": hlp.a.scaling2.get(),
                }
            )

    file.saveJson(tgtFile[0], corrJntList, force=1)
    logging.info(f"{len(helperJnts)} helper joints saved.")
