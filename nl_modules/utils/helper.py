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


@common.Undo("addHlpJnt_sel")
def addHlpJnt_sel(*args):
    """Add helper joints to selected joints based on the specified rotation axis."""
    selList = [DagNode(s) for s in mc.ls(sl=1, type="joint")]
    hlpJnts = []
    for sel in selList:
        j1 = addHlpJnt(tgtJnt=sel, fr=args[0], to=args[1])
        j2 = addHlpJnt(tgtJnt=sel, fr=args[0], to=args[1], dir=-1)
        if j1 and j2:
            hlpJnts.extend([j1, j2])

    common.showRotateOrder()
    if hlpJnts:
        mc.select(hlpJnts)


@common.Undo("addHlpJnt")
def addHlpJnt(
    tgtJnt=None,
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

    parentJnt = DagNode(tgtJnt.parent)
    if not parentJnt.exists():
        logging.warning("Target joint's parent NOT found.")
        return

    tx = tgtJnt.a.tx.get()
    xDr = 1 if tx > 0 else -1
    dir_sign = 1 if dir > 0 else -1
    dir_name = "A" if dir_sign * xDr == 1 else "B"
    ro = tgtJnt.a.rotateOrder.get()

    # Name and quick existence check for pre-existing setup
    hlpName = f"{tgtJnt.name}_{fr}_{to}_{dir_name}"
    tgtGrp = DagNode(hlpName + "_grp")
    if tgtGrp.exists():
        tgtHlp = DagNode(hlpName + "_jnt")
        if tgtHlp.exists():
            if mirror == 1:
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
            else:
                logging.warning(f"Helper joint {tgtHlp.name} already exists.")
                return

    # Setup group hierarchy ----------------------
    pf = tgtJnt.name.split("_")[0]
    JNT_DATA = DagNode(f"{pf}_JNT_DATA")
    parent_for_group = JNT_DATA if JNT_DATA.exists() else None

    cstGrp = GrpNode(f"{hlpName}_grp", p=parent_for_group)
    ofsGrp = GrpNode(f"{hlpName}_ofs")
    rad = tgtJnt.a.radius.get()
    bseJnt = JntNode(f"{hlpName}_bse", r=rad / 4)
    hlpJnt = JntNode(f"{hlpName}_jnt", r=rad)

    cstGrp.a.rotateOrder.set(ro)
    hlpJnt.a.rotateOrder.set(ro)

    hlpJnt | bseJnt | ofsGrp | cstGrp | parentJnt
    bseJnt.dspType = 2
    hlpJnt.dspType = 0

    common.cstMulti(parentJnt, tgtJnt, cstGrp, cstType="ori")
    tgtJnt.cstPoi(cstGrp)

    cstGrp.a.s.set(dir_sign, dir_sign, dir_sign)

    attr_defs = [
        ("fr", {"type": "string", "txt": fr}),
        ("to", {"type": "string", "txt": to}),
        ("helperTgt", {"type": "message"}),
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
    for attr, val in [
        ("init", init),
        ("initAngle", initAngle),
        ("offset1", offset1),
        ("offset2", offset2),
        ("offsetAngle1", offsetAngle1),
        ("offsetAngle2", offsetAngle2),
    ]:
        hlpJnt.a[attr].set(val)

    hlpJnt.a["initAngle"] >> ofsGrp.a[fr]

    # Build conditional nodes and wire up behavior
    r = tgtJnt.a[fr]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    outScale = (r > 0).setCdn(ifTrue=hlpJnt.a.offset1, ifFalse=hlpJnt.a.offset2)
    hlpJnt.a.init >> bseJnt.a[to]
    outScale * rAbs / 90 >> hlpJnt.a[to]

    outRot = (r > 0).setCdn(ifTrue=hlpJnt.a.offsetAngle1, ifFalse=hlpJnt.a.offsetAngle2)
    r * outRot >> bseJnt.a[fr]

    hlpJnt.a.showAttr()
    CrvNode.buildLineLinked(tgt1=bseJnt, tgt2=ofsGrp, dspType=2, top=1, p=cstGrp)

    logging.info(f"Helper {hlpJnt.name} created.")
    return hlpJnt


@common.Undo("mirror Helper Joints")
def mirrorHelper(*args):
    """Mirror helper joints for selected helper joints."""
    selList = [JntNode(j) for j in mc.ls("*_r?_t?_?_jnt", sl=1, type="joint")]

    pairs = []
    for sel in selList:
        tgt = sel.a.helperTgt.inConnNode
        if not tgt:
            logging.warning(f"Target joint for {sel.name} NOT found.")
            continue

        opp = common.getOpposite(tgt)
        if not opp:
            logging.warning(f"Opposite joint for {tgt.name} NOT found.")
            continue
        pairs.append((sel, opp))

    for sel, opp in pairs:
        s = sel.a
        addHlpJnt(
            tgtJnt=opp,
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
def delHlpJnts(*args):
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

        tgtJnt = DagNode(data["tgt"])
        if not tgtJnt.exists():
            logging.warning(f"Target joint {data['tgt']} NOT found.")
            continue

        if uiPB:
            i += 1
            uiPB.setValue(i)

        j = addHlpJnt(
            tgtJnt=tgtJnt,
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
        if j:
            load_count += 1

    if uiPB:
        uiPB.setValue(0)
    mc.refresh(f=1)
    common.showRotateOrder()
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
    tgtList = []
    for hlp in helperJnts:
        tgt = hlp.a.helperTgt.inConnNode
        if tgt and tgt.exists():
            tgtList.append(
                {
                    "tgt": tgt.name,
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

    file.saveJson(tgtFile[0], tgtList, force=1)
    logging.info(f"{len(helperJnts)} helper joints saved.")
