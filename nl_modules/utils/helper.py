import glob
import logging
import os
import re
import maya.cmds as mc
from nl_modules.utils import build
from nl_modules.utils import common
from nl_modules.utils import file
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def addHlpJnt_sel(*args):
    """Add helper joints to selected joints based on the specified rotation axis."""
    selList = [DagNode(s) for s in mc.ls(sl=1, type="joint")]
    for sel in selList:
        isRZ = args[0] == 1
        isRY = args[0] == 2
        j1 = addHlpJnt(tgtJnt=sel, buildRZ=isRZ, buildRY=isRY)
        j2 = addHlpJnt(tgtJnt=sel, buildRZ=isRZ, buildRY=isRY, dir=-1)
        if j1 and j2:
            mc.select(j1, j2)


@common.Undo("Add Helper Joints")
def addHlpJnt(
    tgtJnt=None,
    buildRY=0,
    buildRZ=0,
    dir=1,
    init=1,
    initAngle=0,
    ofsMultiA=0,
    ofsMultiB=2,
    angleMultiA=0,
    angleMultiB=0,
    mirror=0,
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    # Normalize inputs: accept either a DagNode or a name
    if tgtJnt is None:
        mc.warning("No target joint specified for addHlpJnt.")
        return

    tgt_node = DagNode(tgtJnt) if isinstance(tgtJnt, str) else tgtJnt

    # Validate that the resolved node exists
    if not hasattr(tgt_node, "exists") or not tgt_node.exists():
        mc.warning(f"Target joint {tgtJnt} NOT found.")
        return

    parent = tgt_node.parent
    holder = tgt_node

    return addHlpJntGeneral(
        tgtJnt=tgt_node,
        parentJnt=parent,
        holder=holder,
        buildRZ=buildRZ,
        buildRY=buildRY,
        dir=dir,
        init=init,
        initAngle=initAngle,
        ofsMultiA=ofsMultiA,
        ofsMultiB=ofsMultiB,
        angleMultiA=angleMultiA,
        angleMultiB=angleMultiB,
        mirror=mirror,
    )


def addHlpJntGeneral(
    tgtJnt=None,
    parentJnt=None,
    holder=None,
    buildRY=0,
    buildRZ=0,
    dir=1,
    init=1,
    initAngle=0,
    ofsMultiA=0,
    ofsMultiB=2,
    angleMultiA=0,
    angleMultiB=0,
    mirror=0,
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    # Defensive normalization: allow names or DagNode objects for parent/holder
    tgt = DagNode(tgtJnt) if isinstance(tgtJnt, str) else tgtJnt
    parent = DagNode(parentJnt) if isinstance(parentJnt, str) else parentJnt
    hold = DagNode(holder) if isinstance(holder, str) else holder

    if (
        not (hasattr(tgt, "exists") and tgt.exists())
        or not (hasattr(parent, "exists") and parent.exists())
        or not (hasattr(hold, "exists") and hold.exists())
    ):
        mc.warning("Target or its parent/holder not found.")
        return

    # Determine which axis mapping to build; ensure only one is requested
    if buildRZ:
        fr, to = "rz", "ty"
    elif buildRY:
        fr, to = "ry", "tz"
    else:
        mc.warning("No rotation axis specified (buildRY or buildRZ).")
        return

    return hlpJntSetup(
        tgtJnt=tgt,
        parentJnt=parent,
        rotator=hold,
        fr=fr,
        to=to,
        dir=dir,
        init=init,
        initAngle=initAngle,
        ofsMultiA=ofsMultiA,
        ofsMultiB=ofsMultiB,
        angleMultiA=angleMultiA,
        angleMultiB=angleMultiB,
        mirror=mirror,
    )


def hlpJntSetup(
    tgtJnt=None,
    parentJnt=None,
    rotator=None,
    fr=None,
    to=None,
    dir=1,
    init=1,
    initAngle=0,
    ofsMultiA=0,
    ofsMultiB=2,
    angleMultiA=0,
    angleMultiB=0,
    mirror=0,
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""
    # Cache commonly accessed values to avoid repeated attribute lookups
    tx = tgtJnt.a.tx.get()
    xDr = 1 if tx > 0 else -1
    dir_sign = 1 if dir > 0 else -1
    dir_name = "A" if dir_sign * xDr == 1 else "B"
    ro = tgtJnt.a.rotateOrder.get()

    # Name and quick existence check for pre-existing setup
    hlpName = f"{tgtJnt.name}_{fr}_{dir_name}"
    tgtGrp = DagNode(hlpName + "_grp")
    if tgtGrp.exists():
        tgtHlp = DagNode(hlpName + "_jnt")
        if tgtHlp.exists():
            if mirror == 1:
                # Update parameters on mirror instead of recreating
                tgtHlp.a.init.set(init)
                tgtHlp.a.initAngle.set(initAngle)
                tgtHlp.a.ofsMultiA.set(ofsMultiA)
                tgtHlp.a.ofsMultiB.set(ofsMultiB)
                tgtHlp.a.angleMultiA.set(angleMultiA)
                tgtHlp.a.angleMultiB.set(angleMultiB)

                logging.info(f"Helper joint {tgtHlp.name} updated")
                return tgtHlp
            else:
                logging.warning(f"Helper joint {tgtHlp.name} already exists.")
                return

    # Setup group hierarchy ----------------------
    pf = tgtJnt.name.split("_")[0]
    JNT_DATA = DagNode(f"{pf}_JNT_DATA")
    parent_for_group = JNT_DATA if JNT_DATA.exists() else None

    cstGrp = GrpNode(f"{hlpName}_grp", p=parent_for_group)
    ofsGrp = GrpNode(f"{hlpName}_ofs")
    bseJnt = JntNode(f"{hlpName}_bse", r=0.1)
    hlpJnt = JntNode(f"{hlpName}_jnt", r=tgtJnt.a.radius.get() / 2)

    # Configure rotation order once
    cstGrp.a.rotateOrder.set(ro)
    hlpJnt.a.rotateOrder.set(ro)

    # Build hierarchy quickly
    hlpJnt | bseJnt | ofsGrp | cstGrp
    bseJnt.dspType = 2

    # Create constraints and visual helpers
    common.cstMulti(parentJnt, tgtJnt, cstGrp, cstType="ori")
    tgtJnt.cstPoi(cstGrp)

    hlpJnt.color = Color.PINK  # (0.0, 0.1, 0.0)
    cstGrp.a.s.set(dir_sign, dir_sign, dir_sign)

    # CrvNode.buildLineLinked(tgt1=ofsGrp, tgt2=cstGrp, dspType=2, top=1, p=cstGrp)

    # Add attributes (grouped for clarity)
    attr_defs = [
        ("fr", {"type": "string", "txt": fr}),
        ("to", {"type": "string", "txt": to}),
        ("helperTgt", {"type": "message"}),
        ("dir", {"dv": dir, "k": 0, "cb": 0}),
        ("init", {"dv": 1, "min": 0}),
        ("initAngle", {"dv": 0}),
        ("ofsMultiA", {"dv": 0}),
        ("angleMultiA", {"min": -2, "max": 2, "dv": 0}),
        ("ofsMultiB", {"dv": 2}),
        ("angleMultiB", {"min": -2, "max": 2, "dv": 0}),
    ]

    for name, kwargs in attr_defs:
        # avoid re-adding if the attribute already exists
        # if name not in hlpJnt.a._attrDict:
        hlpJnt.a.add(name, **kwargs)

    # connect and initialize values
    tgtJnt.a.message >> hlpJnt.a.helperTgt
    hlpJnt.a.ofsMultiA.set(ofsMultiA)
    hlpJnt.a.ofsMultiB.set(ofsMultiB)
    hlpJnt.a.angleMultiA.set(angleMultiA)
    hlpJnt.a.angleMultiB.set(angleMultiB)
    hlpJnt.a.init.set(init)
    hlpJnt.a.initAngle.set(initAngle)
    hlpJnt.a.initAngle >> ofsGrp.a[fr]

    # Build conditional nodes and wire up behavior
    r = rotator.a[fr]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    outScale = (r > 0).setCdn(ifTrue=hlpJnt.a.ofsMultiA, ifFalse=hlpJnt.a.ofsMultiB)
    hlpJnt.a.init >> bseJnt.a[to]
    outScale * rAbs / 90 >> hlpJnt.a[to]

    outRot = (r > 0).setCdn(ifTrue=hlpJnt.a.angleMultiA, ifFalse=hlpJnt.a.angleMultiB)
    r * outRot >> bseJnt.a[fr]

    hlpJnt.a.showAttr()

    logging.info(f"Helper joint {hlpJnt.name} created.")
    return hlpJnt


@common.Undo("mirror Helper Joints")
def mirrorHelper(*args):
    """Mirror helper joints for selected helper joints."""
    selList = [JntNode(j) for j in mc.ls("*_r?_?_jnt", sl=1, type="joint")]

    for sel in selList:
        tgt = sel.a.helperTgt.inConnNode
        if not tgt:
            logging.warning(f"Target joint for {sel.name} NOT found.")
            continue

        opp = common.getOpposite(tgt)
        if not opp:
            logging.warning(f"Opposite joint for {tgt.name} NOT found.")
            continue

        addHlpJnt(
            tgtJnt=opp,
            buildRY=sel.a.fr.get() == "ry",
            buildRZ=sel.a.fr.get() == "rz",
            dir=1 - sel.a.dir.get(),
            init=sel.a.init.get(),
            initAngle=sel.a.initAngle.get(),
            ofsMultiA=sel.a.ofsMultiA.get(),
            angleMultiA=sel.a.angleMultiA.get(),
            ofsMultiB=sel.a.ofsMultiB.get(),
            angleMultiB=sel.a.angleMultiB.get(),
            mirror=1,
        )
    if selList:
        mc.select(selList)


@common.Undo("Delete Helper Joint Groups")
def delGrpAllOrSel(*args):
    """Delete helper joint groups for selected / all helper joints."""
    selList = mc.ls(sl=1)
    selList = [JntNode(j) for j in mc.ls("*_r?_?_jnt", sl=bool(selList), type="joint")]

    try:
        for sel in selList:
            grp = sel.parent.parent.parent
            if grp.exists():
                logging.info(f"Helper joint group {grp.name} deleted.")
                grp.delete()
    except Exception as e:
        logging.warning(f"Failed to delete group for {sel.name}: {e}")


def selAllHlp(*args):
    """Select all helper joint groups in the scene."""
    helperJnts = [JntNode(j) for j in mc.ls("*_r?_?_jnt", type="joint")]
    if helperJnts:
        mc.select(helperJnts)
    else:
        mc.select(cl=1)


@common.Undo("Load Helper Joints")
def loadHlpJnt(uiPB):
    """Load helper joint data from a JSON file and recreate the joints in the scene."""

    at_least_one_built = 0
    for node in build.getRigNodes_all():
        if node.a.nodeState.get() == 2:
            at_least_one_built = 1

    if at_least_one_built == 0:
        mc.confirmDialog(t="Info", m="The rig is not built !     ", b="OK")
        return

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

    fileDataList = file.loadJson(tgtFiles[-1])
    if uiPB:
        uiPB.setMaximum(len(fileDataList))

    i = 0
    load_count = 0
    for data in fileDataList:

        # Load data
        tgtJnt = DagNode(data["tgt"])
        buildRY = data["fr"] == "ry"
        buildRZ = data["fr"] == "rz"
        dir = data["dir"]
        init = data["init"]
        initAngle = data["initAngle"]
        ofsMultiA = data["ofsMultiA"]
        ofsMultiB = data["ofsMultiB"]
        angleMultiA = data["angleMultiA"] if "angleMultiA" in data else 0
        angleMultiB = data["angleMultiB"] if "angleMultiB" in data else 0

        if uiPB:
            i += 1
            uiPB.setValue(i)

        if not tgtJnt.exists():
            logging.warning(f"Target joint {data['tgt']} NOT found.")
            continue

        # Add helper joint
        j = addHlpJnt(
            tgtJnt=tgtJnt,
            buildRY=buildRY,
            buildRZ=buildRZ,
            dir=dir,
            init=init,
            initAngle=initAngle,
            ofsMultiA=ofsMultiA,
            angleMultiA=angleMultiA,
            ofsMultiB=ofsMultiB,
            angleMultiB=angleMultiB,
        )
        if j:
            load_count += 1

    if uiPB:
        uiPB.setValue(0)
    mc.refresh(f=1)
    # mc.confirmDialog(t="Info", m=f"{load_count} helper joints loaded.     ", b="OK")
    logging.info(f"{load_count} helper joints loaded.")


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
                    "init": hlp.a.init.get(),
                    "initAngle": hlp.a.initAngle.get(),
                    "ofsMultiA": hlp.a.ofsMultiA.get(),
                    "angleMultiA": hlp.a.angleMultiA.get(),
                    "ofsMultiB": hlp.a.ofsMultiB.get(),
                    "angleMultiB": hlp.a.angleMultiB.get(),
                }
            )

    file.saveJson(tgtFile[0], corrJntList, force=1)
    logging.info(f"{len(helperJnts)} helper joints saved.")
