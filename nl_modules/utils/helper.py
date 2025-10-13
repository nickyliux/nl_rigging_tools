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

    SKL = GrpNode("SKL")
    if buildRZ:
        return hlpJntSetup(tgtJnt, parentJnt, holder, fr="rz", to="ty", dir=dir, p=SKL)
    if buildRY:
        return hlpJntSetup(tgtJnt, parentJnt, holder, fr="ry", to="tz", dir=dir, p=SKL)


def hlpJntSetup(
    tgtJnt=None, parentJnt=None, rotator=None, fr=None, to=None, dir=1, p=None
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""
    # ---------------------------------------------
    xDr = 1 if tgtJnt.a.tx.get() > 0 else -1
    dir = 1 if dir > 0 else -1

    dir_name = "pos" if dir * xDr == -1 else "neg"

    ro = tgtJnt.a.rotateOrder.get()

    tgt_grp = DagNode(f"{dir_name}_{fr}_grp")
    if tgt_grp.exists():
        mc.delete(tgt_grp)
    cstGrp = GrpNode(f"{dir_name}_{fr}_grp", pf=tgtJnt, p=p)
    ofsGrp = GrpNode(f"{dir_name}_{fr}_ofs", pf=tgtJnt, p=p)
    hlpJnt = JntNode(f"{dir_name}_{fr}_jnt", pf=tgtJnt, r=tgtJnt.a.radius.get() * 0.8)
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

    hlpJnt.a.add("dir", dv=dir, lock=1)
    hlpJnt.a[to].set(1)
    scalePos = hlpJnt.a.add("scalePos", dv=0, min=0)
    scaleNeg = hlpJnt.a.add("scaleNeg", dv=2, min=0)

    r = rotator.a[fr]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    ofsScale = (r > 0).setCdn(ifTrue=scalePos, ifFalse=scaleNeg)
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
        scalePos = data["scalePos"]
        scaleNeg = data["scaleNeg"]
        helperJnt = addSysSetup2(
            tgtJnt=tgtJnt, buildRY=buildRY, buildRZ=buildRZ, dir=dir
        )
        if helperJnt:
            helperJnt.a[data["to"]].set(init)
            helperJnt.a.scalePos.set(scalePos)
            helperJnt.a.scaleNeg.set(scaleNeg)


def selAllHlpGrp(*args):
    helperJnts = [JntNode(j) for j in mc.ls("*_???_r?_jnt", type="joint")]
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
                        "scalePos": hlp.a.scalePos.get(),
                        "scaleNeg": hlp.a.scaleNeg.get(),
                    }
                )

        file.saveJson(tgtFile[0], corrJntList, force=1)
        logging.info(f"{len(helperJnts)} helper joints saved.")
