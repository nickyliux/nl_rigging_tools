import os
import glob
import logging
import re
import maya.cmds as mc
import nl_modules
from nl_modules.build.tpl_loader import TplLoader
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import build, common, file

MOD_DIR = os.path.dirname(nl_modules.__file__)
COMPONENT_PATH = MOD_DIR + "/build/components"
LF_CTL_SET = "lf*_ctl_set"
RT_CTL_SET = "rt*_ctl_set"
ALL_CTL_SET = "*_ctl_set"

COMPONENT_DICT = {
    "head": {"M": "head"},
    "neck / bp": {"M": "neckBp"},
    "spine / bp": {"M": "spineBp"},
    "neck / qd": {"M": "neckQd"},
    "spine / qd": {"M": "spineQd"},
    "tail": {"M": "tail"},
    "arm / bp": {"L": "lfArmBp", "R": "rtArmBp"},
    "hand / bp": {"L": "lfHandBp", "R": "rtHandBp"},
    "leg / bp": {"L": "lfLegBp", "R": "rtLegBp"},
    "leg / qd": {"L": "lfLegQd", "R": "rtLegQd"},
    "finger fk": {"L": "lfFingerFk", "R": "rtFingerFk"},
    "simple fk": {"M": "mdSimpleFk", "L": "lfSimpleFk", "R": "rtSimpleFk"},
    "belt": {"M": "belt"},
}


def loadGuide(name):
    """Load component(s) for names"""
    # common.clearNs()

    def genNextRigID(n):
        """Generate next rigID name for newly created component"""
        count = 0
        for mg in build.getMasterGuide_all():
            if mg.a.rigID.get().startswith(n):
                count += 1
        return f"{n}{count}"

    nextRigID = genNextRigID(name)
    TplLoader(name, nextRigID).load_base_tpl()
    mg = DagNode(nextRigID + "_master_guide")

    return mg


def xferGuideAtoB(*arg):
    """Transfer guide settings from 1st to 2nd selected"""
    selList = mc.ls(sl=1, tr=1)
    if len(selList) == 2:
        mg1 = DagNode(selList[0])
        mg2 = DagNode(selList[1])
        if mg1 and mg2:
            rigClass1 = mg1.a.rigClass.get()
            rigClass2 = mg2.a.rigClass.get()

            if rigClass1 and rigClass2 and rigClass1 == rigClass2:

                rigID1 = mg1.a.rigID.get()
                rigID2 = mg2.a.rigID.get()
                guideList1 = mc.ls(rigID1 + "_*_guide")
                guideList2 = mc.ls(rigID2 + "_*_guide")

                for g1, g2 in zip(guideList1, guideList2):
                    copyCtlAttr(g1, g2)
            else:
                logging.info("Ignore copy for different rig classes.")
        else:
            logging.info("Can not find master guides to copy.")


def duplicateGuideSel(*arg):
    """Duplicate selected guide controls"""
    selList = mc.ls("*_master_guide", sl=1, tr=1)
    allTgtMG = []
    for sel in selList:
        mg = DagNode(sel) if isinstance(sel, str) else sel
        if mg and mg.exists():
            rigID = mg.a.rigID.get()
            tgtMG = loadGuide(removeEndDigits(rigID))
            allTgtMG.append(tgtMG)

            # Copy xform & attributes
            mc.select(mg, tgtMG)
            xferGuideAtoB()

    mc.select(allTgtMG)
    mc.setToolTo("moveSuperContext")


def duplicateGuideSymSel(*arg):
    """Duplicate selected guide controls"""
    selList = mc.ls(sl=1, tr=1)
    allTgtMG = []
    for sel in selList:
        mg = DagNode(sel) if isinstance(sel, str) else sel
        if mg and mg.exists():
            rigID = mg.a.rigID.get()
            tgtMG = loadGuide(removeEndDigits(rigID))
            allTgtMG.append(tgtMG)

            # Copy xform & attributes
            mc.select(mg, tgtMG)
            xferGuideAtoB()

    mc.select(allTgtMG)
    mc.setToolTo("moveSuperContext")


def mirrorGuideSelOrAll(*arg):
    """Mirror guides for selList / all *lf*_guide"""
    selList = mc.ls(sl=1, tr=1) or mc.ls("*lf*_guide", tr=1)
    selList = [s for s in selList if DagNode(s).type == "nurbsCurve"]
    selList = list(set(selList))
    if selList:
        mirrorCtl(selList)


def copyCtlAttr(A, B, wsMirror=0, mirror=0):
    """Copy/mirror transform & user defined attribute values"""
    A = DagNode(A) if isinstance(A, str) else A
    B = DagNode(B) if isinstance(B, str) else B

    # if not A.name.endswith("_master_guide"):
    tx, ty, tz = A.a.t.get()
    rx, ry, rz = A.a.r.get()

    if mirror:
        tx *= -1
        if wsMirror or A.a["wsMirror"].exists():
            ry *= -1
            rz *= -1
        else:
            ty *= -1
            tz *= -1

        if A.a["flipRX"].exists():
            rx -= 180

    B.a.t.set(tx, ty, tz)
    B.a.r.set(rx, ry, rz)
    B.a.s.set(*A.a.s.get())

    for ud in A.a.list(ud=1, u=1) or []:

        if ud.name in ["rigID", "rigClass"]:
            continue
        try:
            val = ud.get()
            if isinstance(val, str):
                B.a[ud.name].set(val, type="string")
            else:
                B.a[ud.name].set(val)
        except Exception as e:
            print(e)


def mirrorCtl(tgtList):
    """Mirror xform for tgtList objects"""
    for tgt in tgtList:
        tgt = DagNode(tgt)
        opp = common.getOpposite(tgt)
        if opp:
            copyCtlAttr(tgt, opp, mirror=1)
        else:
            logging.info(f"{tgt.name}: No opposite ctl found.")


def mirrorRef(tgtList, wsMirror=0):
    """Mirror xform for tgtList objects"""
    for tgt in tgtList:
        tgt = DagNode(tgt) if isinstance(tgt, str) else tgt
        opp = common.getOpposite(tgt)
        if opp:
            copyCtlAttr(tgt, opp, wsMirror=wsMirror, mirror=1)
        else:
            logging.info(f"{tgt.name}: No opposite ref found.")


def mirrorPose(*arg):
    """Mirror pose for selList ctl / all in set lf*_ctl_set"""
    selList = mc.ls(sl=1, tr=1)
    selList = list(set(selList))

    lf = []
    rt = []
    all = []
    if not selList:
        ns = common.getNsFrOptVar()
        tgtSet = ns + LF_CTL_SET
        if mc.ls(tgtSet, type="objectSet"):
            lf = common.getSetMembersInOrder(tgtSet)

        tgtSet = ns + RT_CTL_SET
        if mc.ls(tgtSet, type="objectSet"):
            rt = common.getSetMembersInOrder(tgtSet)

        tgtSet = ns + ALL_CTL_SET
        if mc.ls(tgtSet, type="objectSet"):
            all = common.getSetMembersInOrder(tgtSet)

        # selList = list(set(all) - set(rt))
        if lf:
            selList = list(set(lf))

    if selList:
        mirrorCtl(selList)


def removeEndDigits(name):
    """Remove trailing digits from a name
    e.g. lfLeg10 => 'lfLeg'
    """
    pattern = re.compile(rf"^([a-zA-Z_]+)")
    result = re.match(pattern, str(name))
    if result:
        return result.group(1)
    else:
        raise ValueError("Invalid input name")


def loadTemplate(loadLatest=1):
    """Load preset from json file"""
    charPath = mc.optionVar(q="charFullPath")

    tgtPaths = []
    if charPath:
        if loadLatest:
            tgtPaths = glob.glob(
                os.path.join(charPath, os.path.basename(charPath) + "_tpl*.json")
            )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*tpl*.json", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)
    rigID_dict = file.loadJson(tgtPaths[-1])
    loadGuideFrIdDict(rigID_dict)

    common.setView(fit=1)
    mc.select(cl=1)
    logging.info(f"Template loaded: {os.path.basename(tgtPaths[-1])}.")

    # build.cleanUpScene()


def loadGuideFrIdDict(rigID_dict):
    """Load guides from rigID_dict"""
    # Remove unused
    # idInPreset = {k + "_RGN" for k in rigID_dict}
    # for mg in build.getMasterGuide_all():
    #     if mg not in idInPreset:
    #         build.deleteTgt(mg)

    for rID in rigID_dict:
        if rID == "GUIDES":  # Special case for modules grp
            setAttrFrDict("GUIDES", rigID_dict[rID])
        else:
            mg = DagNode(rID + "_master_guide")
            if not mg.exists():
                loadGuide(removeEndDigits(rID))

            for guide, attrs in rigID_dict[rID].items():
                setAttrFrDict(guide, attrs)


def setAttrFrDict(tgt, attrs):
    """Set attribute values for tgt from attrs dict"""
    tgtNode = DagNode(tgt) if isinstance(tgt, str) else tgt

    if tgtNode.exists():
        for attr in attrs:
            if tgtNode.a[attr].exists():
                if str(attr) in "trs":
                    v = attrs[attr]
                    for i, axis in enumerate("xyz"):
                        if tgtNode.a[attr + axis].settable():
                            tgtNode.a[attr + axis].set(v[i])
                else:
                    if tgtNode.a[attr].settable():
                        v = attrs[attr]
                        if isinstance(v, (int, float)):
                            tgtNode.a[attr].set(v)
                        elif isinstance(v, str):
                            tgtNode.a[attr].set(v, type="string")
                        elif isinstance(v, list):
                            tgtNode.a[attr].set(*v)


def genAttrDict(obj):
    """Gen dict containing transform attr and user defined attr"""
    obj = DagNode(obj)
    attrDict = {
        "t": obj.a.t.get(),
        "r": obj.a.r.get(),
        "s": obj.a.s.get(),
    }
    for ua in obj.a.list(ud=1, u=1) or []:
        uaName = ua.name
        attrDict[uaName] = obj.a[uaName].get()
    return attrDict


def saveTemplate():
    """Save preset into json file"""
    allMGs = build.getMasterGuide_all()
    # for mg in allMGs:
    #     rigID = mg.a.rigID.get()
    #     print(mg, rigID)
    # return

    if not allMGs:
        mc.confirmDialog(t="Info", m="Master Guides NOT found.     ", b="OK")
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = mc.fileDialog2(
        fileFilter="*_tpl*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if not tgtPaths:
        return

    idDict = {}
    for mg in allMGs:
        rigID = mg.a.rigID.get()
        guideDict = {o: genAttrDict(o) for o in mc.ls(rigID + "_*_guide", tr=1)}
        # guideDict[mg.name] = genAttrDict(mg)
        idDict[rigID] = guideDict

    idDict["GUIDES"] = genAttrDict("GUIDES")

    file.saveJson(tgtPaths[0], idDict, force=True)
    logging.info(f"Template saved: {tgtPaths[0]}.")


def explore(*args):
    """Open the directory containing component files in the file explorer."""
    import subprocess

    path = os.path.realpath(COMPONENT_PATH)
    subprocess.Popen(f'explorer "{path}"')
