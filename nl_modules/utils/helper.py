import glob
import logging
import os
import maya.cmds as mc
from nl_modules.utils import build
from nl_modules.utils import common
from nl_modules.utils import file
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


@common.Undo("addHlpJnt_sel")
def addHelpers(*args):
    """Add helper joints to selected joints based on the specified rotation axis."""
    selList = [DagNode(s) for s in mc.ls(sl=1, type="joint")]
    hlpJnts = []
    fr, to = args[0], args[1]

    for sel in selList:
        j1 = addOrUpdateHlp(tgtJnt=sel, fr=fr, to=to)
        j2 = addOrUpdateHlp(tgtJnt=sel, fr=fr, to=to, dir=-1)
        if j1 and j2:
            hlpJnts.extend([j1, j2])

    common.showRO()
    if hlpJnts:
        mc.select(hlpJnts)


@common.Undo("addHelpers2")
def addHelpers2(*args):
    """Add helper joints to selected joints based on the specified rotation axis."""
    selList = [DagNode(s) for s in mc.ls(sl=1, type="joint")]
    hlpJnts = []
    fr, to = args[0], args[1]

    if len(selList) == 2:
        j1 = addOrUpdateHlp(tgtJnt=selList[0], fr=fr, to=to, rollJnt=selList[1])
        j2 = addOrUpdateHlp(tgtJnt=selList[0], fr=fr, to=to, rollJnt=selList[1], dir=-1)
        if j1 and j2:
            hlpJnts.extend([j1, j2])

    common.showRO()
    if hlpJnts:
        mc.select(hlpJnts)


@common.Undo("addOrUpdateHlp")
def addOrUpdateHlp(
    tgtJnt=None,
    rollJnt=None,
    fr="ry",
    to="tz",
    dir=1,
    init=1,
    initAngle=0,
    offset1=0,
    offset2=2,
    offsetAngle1=0,
    offsetAngle2=0,
    mirror=0,
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""
    # Cache commonly accessed values to avoid repeated attribute lookups
    tgtJnt = DagNode(tgtJnt)
    if not tgtJnt.exists():
        logging.warning(f"Target joint {tgtJnt} NOT found.")
        return

    rollJnt = DagNode(rollJnt) if isinstance(rollJnt, str) else rollJnt
    isRoll = rollJnt.exists()

    parentJnt = DagNode(tgtJnt.parent) if not isRoll else rollJnt
    if not parentJnt.exists():
        logging.warning("Target joint's parent NOT found.")
        return

    tx = tgtJnt.a.tx.get()
    xDr = 1 if tx > 0 else -1
    dir_sign = 1 if dir > 0 else -1
    dir_name = "A" if dir_sign * xDr == 1 else "B"

    # Name and quick existence check for pre-existing setup
    hlpName = f"{tgtJnt.name}_{fr}_{to}_{dir_name}"
    tgtGrp = DagNode(hlpName + "_grp")
    tgtHlp = DagNode(hlpName + "_jnt")

    if tgtGrp.exists() and tgtHlp.exists():
        if mirror == 0:
            logging.warning(f"Helper joint {tgtHlp.name} already exists.")
            return
        else:
            for attr, val in [
                ("init", init),
                ("initAngle", initAngle),
                ("offset1", offset1),
                ("offset2", offset2),
                ("offsetAngle1", offsetAngle1),
                ("offsetAngle2", offsetAngle2),
            ]:
                tgtHlp.a[attr].set(val)

            logging.info(f"Helper joint {tgtHlp.name} updated")
            return tgtHlp

    cstGrp = GrpNode(f"{hlpName}_grp")
    ofsGrp = GrpNode(f"{hlpName}_ofs")

    rad = tgtJnt.a.radius.get()
    bseJnt = JntNode(f"{hlpName}_bse", r=rad / 4)
    hlpJnt = JntNode(f"{hlpName}_jnt", r=rad)

    ro = tgtJnt.a.rotateOrder.get()
    for xf in [cstGrp, ofsGrp, bseJnt, hlpJnt]:
        xf.a.rotateOrder.set(ro)

    hlpJnt | bseJnt | ofsGrp | cstGrp | parentJnt
    bseJnt.dspType = 2
    hlpJnt.dspType = 0

    if not isRoll:
        tgtJnt.cstPoi(cstGrp)
        common.cstMulti(parentJnt, tgtJnt, cstGrp, cstType="ori")
    else:
        cstGrp.alignTo(rollJnt)
        tgtJnt.a.r * (0, -0.5, -0.5) >> cstGrp.a.r

    cstGrp.a.s.set(dir_sign, dir_sign, dir_sign)

    attr_defs = [
        ("fr", {"type": "string", "txt": fr}),
        ("to", {"type": "string", "txt": to}),
        ("helperTgt", {"type": "message"}),
        ("rollTgt", {"type": "message"}),
        ("dir", {"dv": dir, "k": 0, "cb": 0}),
        ("init", {"dv": 1, "min": 0}),
        ("initAngle", {"dv": 0}),
        ("offset1", {"dv": 0}),
        ("offsetAngle1", {"dv": 0}),
        ("offset2", {"dv": 2}),
        ("offsetAngle2", {"dv": 0}),
    ]
    for name, kwargs in attr_defs:
        hlpJnt.a.add(name, **kwargs)

    tgtJnt.a.message >> hlpJnt.a.helperTgt
    if isRoll:
        rollJnt.a.message >> hlpJnt.a.rollTgt

    for attr, val in [
        ("init", init),
        ("initAngle", initAngle),
        ("offset1", offset1),
        ("offset2", offset2),
        ("offsetAngle1", offsetAngle1),
        ("offsetAngle2", offsetAngle2),
    ]:
        hlpJnt.a[attr].set(val)

    # Build conditional nodes and wire up behavior
    hlpJnt.a.init >> bseJnt.a[to]
    hlpJnt.a["initAngle"] >> ofsGrp.a[fr]

    r = tgtJnt.a[fr]
    outOfs = (r > 0).setCdn(ifTrue=hlpJnt.a.offset1, ifFalse=hlpJnt.a.offset2)
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)
    outOfs * rAbs / 90 >> hlpJnt.a[to]

    outRot = (r > 0).setCdn(ifTrue=hlpJnt.a.offsetAngle1, ifFalse=hlpJnt.a.offsetAngle2)
    r * outRot >> bseJnt.a[fr]

    hlpJnt.a.showAttr()
    CrvNode.buildLineLinked(tgt1=bseJnt, tgt2=ofsGrp, dspType=2, top=1, p=cstGrp)

    logging.info(f"Helper {hlpJnt.name} created.")
    return hlpJnt


@common.Undo("mirror Helper Joints")
def mirrorHelpers(*args):
    """Mirror helper joints for selected helper joints."""
    selList = [JntNode(j) for j in mc.ls("*_r?_t?_?_jnt", sl=1, type="joint")]

    pairs = []
    rollTgtOpp = None
    for sel in selList:
        tgt = sel.a.helperTgt.inConnNode
        if not tgt:
            logging.warning(f"Target joint for {sel.name} NOT found.")
            continue
        tgtOpp = common.getOpposite(tgt)
        if not tgtOpp:
            logging.warning(f"Opposite joint for {tgt.name} NOT found.")
            continue

        rollTgt = sel.a.rollTgt.inConnNode
        if rollTgt:
            rollTgtOpp = common.getOpposite(rollTgt)

        pairs.append((sel, tgtOpp, rollTgtOpp))

    for sel, tgtOpp, rollTgtOpp in pairs:
        s = sel.a
        addOrUpdateHlp(
            tgtJnt=tgtOpp,
            rollJnt=rollTgtOpp,
            fr=s.fr.get(),
            to=s.to.get(),
            dir=1 - s.dir.get(),
            init=s.init.get(),
            initAngle=s.initAngle.get(),
            offset1=s.offset1.get(),
            offsetAngle1=s.offsetAngle1.get(),
            offset2=s.offset2.get(),
            offsetAngle2=s.offsetAngle2.get(),
            mirror=1,
        )


@common.Undo("Delete helper joints with group")
def deleteHelpers(*args):
    """Delete helper joint groups for selected / all helper joints."""
    selList = mc.ls(sl=1)
    selList = [
        JntNode(j) for j in mc.ls("*_r?_t?_?_jnt", sl=bool(selList), type="joint")
    ]
    grps = []
    for sel in selList:
        grp = sel.parent.parent.parent
        if grp not in grps:
            grps.append(grp)

    if grps:
        logging.info(f"Deleting {len(grps)} helper joint groups...")
        mc.delete(grps)


@common.Undo("Load Helper Joints")
def loadHlp(uiPB):
    """Load helper joint data from a JSON file and recreate the joints in the scene."""
    at_least_one_built = 0
    for node in build.getRigNodes_all():
        if node.a.nodeState.get() == 2:
            at_least_one_built = 1

    if at_least_one_built == 0:
        mc.confirmDialog(t="Info", m="NO built rig found !     ", b="OK")
        return

    charPath = mc.optionVar(q="charPath")
    tgtPaths = []
    if charPath:
        tgtPaths = glob.glob(
            os.path.join(charPath, os.path.basename(charPath) + "_hlp*.json")
        )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*.json", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    fileDataList = file.loadJson(tgtPaths[-1])
    if uiPB:
        uiPB.setMaximum(len(fileDataList))

    load_count = 0
    for i, data in enumerate(fileDataList, start=1):

        tgtJnt = DagNode(data["tgt"])
        if not tgtJnt.exists():
            logging.warning(f"Target joint {data['tgt']} NOT found.")
            continue

        rollTgtJnt = DagNode(data["rollTgt"])
        if not tgtJnt.exists():
            rollTgtJnt = None

        if uiPB:
            uiPB.setValue(i)

        jnt = addOrUpdateHlp(
            tgtJnt=tgtJnt,
            rollJnt=rollTgtJnt,
            fr=data["fr"],
            to=data["to"],
            dir=data["dir"],
            init=data["init"],
            initAngle=data["initAngle"],
            offset1=data["offset1"],
            offset2=data["offset2"],
            offsetAngle1=data["offsetAngle1"],
            offsetAngle2=data["offsetAngle2"],
        )
        if jnt:
            load_count += 1

    if uiPB:
        uiPB.setValue(0)
    mc.refresh(f=1)
    common.showRO()
    logging.info(f"{load_count} helper joints loaded.")


def saveHlp(*args):
    """Save skin weight joints for selected meshes to a JSON file."""
    charPath = mc.optionVar(q="charPath")
    if charPath == None or charPath == "":
        mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
        return

    tgtPaths = mc.fileDialog2(
        fileFilter="*hlp*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtPaths is None:
        return

    # Get all helper joints in the scene
    helperJnts = [JntNode(j) for j in mc.ls("*_r?_t?_?_jnt", type="joint")]
    if not helperJnts:
        mc.confirmDialog(t="Info", m="No helper joint found.     ", b="OK")
        return

    # Store each data into lists
    tgtList = []
    for hlp in helperJnts:
        tgt = hlp.a.helperTgt.inConnNode
        if not (tgt and tgt.exists()):
            continue

        rollTgt = hlp.a.rollTgt.inConnNode

        tgtList.append(
            {
                "tgt": tgt.name,
                "rollTgt": rollTgt.name if rollTgt else None,
                "fr": hlp.a.fr.get(),
                "to": hlp.a.to.get(),
                "dir": hlp.a.dir.get(),
                "init": hlp.a.init.get(),
                "initAngle": hlp.a.initAngle.get(),
                "offset1": hlp.a.offset1.get(),
                "offsetAngle1": hlp.a.offsetAngle1.get(),
                "offset2": hlp.a.offset2.get(),
                "offsetAngle2": hlp.a.offsetAngle2.get(),
            }
        )

    file.saveJson(tgtPaths[0], tgtList, force=1)
    logging.info(f"{len(helperJnts)} helper joints saved.")
