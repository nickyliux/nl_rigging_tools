import glob
import logging
import os
import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import file
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def addSysSetup2(tgtJnt=None, buildRY=False, buildRZ=False, dir=1):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    tgtJntN = DagNode(tgtJnt) if isinstance(tgtJnt, str) else tgtJnt
    return addSysSetup(
        tgtJnt=tgtJntN,
        parentJnt=tgtJntN.parent,
        holder=tgtJntN,
        buildRZ=buildRZ,
        buildRY=buildRY,
        dir=dir,
    )


def addSysSetup(
    tgtJnt=None, parentJnt=None, holder=None, buildRY=False, buildRZ=False, dir=1
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    if not tgtJnt.exists() or not parentJnt.exists() or not holder.exists():
        mc.warning("Target or it's parent not found.")
        return

    if buildRZ:
        return hlpJntSetup(tgtJnt, parentJnt, holder, fr="rz", to="ty", dir=dir)
    if buildRY:
        return hlpJntSetup(tgtJnt, parentJnt, holder, fr="ry", to="tz", dir=dir)


def hlpJntSetup(tgtJnt=None, parentJnt=None, rotator=None, fr=None, to=None, dir=1):
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
    hlpJnt = JntNode(f"{hlpName}_jnt", r=tgtJnt.a.radius.get() * 0.8)
    cstGrp.a.rotateOrder.set(ro)
    hlpJnt.a.rotateOrder.set(ro)
    hlpJnt | ofsGrp | cstGrp

    common.cstMulti(parentJnt, tgtJnt, cstGrp, cstType="ori")
    tgtJnt.cstPoi(cstGrp)

    hlpJnt.color = Color.RED if xDr * dir == 1 else Color.YELLOW
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

    scaling1 = hlpJnt.a.add("scaling1", dv=0, min=0)
    scaling2 = hlpJnt.a.add("scaling2", dv=2, min=0)
    hlpJnt.a.add("dir", dv=dir, k=0, cb=0)
    hlpJnt.a[to].set(1)
    r = rotator.a[fr]

    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)
    ofsScale = (r > 0).setCdn(ifTrue=scaling1, ifFalse=scaling2)
    hlpJnt.a[to] + ofsScale * rAbs / 90 >> ofsGrp.a[to]

    hlpJnt.a.showAttr(t=1)
    return hlpJnt


def loadHlpJnt(*args):
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
    for data in corrDataList:
        tgtJnt = DagNode(data["tgt"])
        if not tgtJnt.exists():
            logging.warning(f"Target joint {data['tgt']} NOT found.")
            continue

        buildRY = data["fr"] == "ry"
        buildRZ = data["fr"] == "rz"
        dir = data["dir"]
        init = data["init"]
        scaling1 = data["scaling1"]
        scaling2 = data["scaling2"]
        helperJnt = addSysSetup2(
            tgtJnt=tgtJnt, buildRY=buildRY, buildRZ=buildRZ, dir=dir
        )
        if helperJnt:
            helperJnt.a[data["to"]].set(init)
            helperJnt.a.scaling1.set(scaling1)
            helperJnt.a.scaling2.set(scaling2)


def selAllHlpGrp(*args):
    helperJnts = [JntNode(j) for j in mc.ls("*_r?_?_jnt", type="joint")]
    if helperJnts:
        mc.select(helperJnts)
        mc.pickWalk(d="up")
        mc.pickWalk(d="up")


def saveHlpJnt(*args):
    """Save skin weight joints for selected meshes to a JSON file."""
    charPath = mc.optionVar(q="charPath")
    if charPath == None or charPath == "":
        mc.confirmDialog(t="Info", m="Character path NOT set.     ", b="OK")
        return

    # corrJntDict = {}
    corrJntList = []

    tgtFile = mc.fileDialog2(
        fileFilter="*hlp*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtFile is None:
        return
    else:
        helperJnts = [JntNode(j) for j in mc.ls("*_???_r?_jnt", type="joint")]
        if not helperJnts:
            mc.confirmDialog(t="Info", m="No helper joint found.     ", b="OK")
            return

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
