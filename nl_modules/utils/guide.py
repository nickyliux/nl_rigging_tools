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
    "neck": {"M": "neck"},
    "spine / bp": {"M": "spineBp"},
    "spine / qd": {"M": "spineQd"},
    "tail": {"M": "tail"},
    "arm / bp": {"L": "lfArmBp", "R": "rtArmBp"},
    "hand / bp": {"L": "lfHandBp", "R": "rtHandBp"},
    "leg / bp": {"L": "lfLegBp", "R": "rtLegBp"},
    "leg / qd": {"L": "lfLegQd", "R": "rtLegQd"},
    "leg / bird": {"L": "lfLegBird", "R": "rtLegBird"},
    "finger fk": {"L": "lfFingerFk", "R": "rtFingerFk"},
    "simple fk": {"M": "mdSimpleFk", "L": "lfSimpleFk", "R": "rtSimpleFk"},
    "belt": {"M": "belt"},
}


def loadGuide(name):
    """Load component(s) for names"""
    common.clearNs()

    def genNextRigID(n):
        """Generate next rigID name for newly created component"""
        count = 0
        for mg in build.collectMasterGuide():
            if mg.a.rigID.get().startswith(n):
                count += 1
        return f"{n}{count}"

    nextRigID = genNextRigID(name)
    TplLoader(name, nextRigID).load_base_tpl()
    mg = DagNode(nextRigID + "_master_guide")

    return mg


def mirrorGuide(*arg):
    """Mirror guides for selList / all *lf*_guide"""
    MGs = build.collectMasterGuide(isSel=1, isAll=1)
    for mg in MGs:
        rigID = mg.a.rigID.get()
        oppRigID = common.getOppositeStr(rigID)

        if not oppRigID:
            copyGuideWithinMG(mg)
            continue

        oppMG = DagNode(oppRigID + "_master_guide")
        if oppMG.exists():
            copyGuideBetwMG(mg, oppMG, mirror=1)

    mc.select(cl=1)


def copyGuideWithinMG(mg):
    """Mirror guides within the same master guide when no opposite rigID is found"""
    rigID = mg.a.rigID.get()
    guideList = mc.ls(rigID + "*lf_*guide", tr=1)
    for g in guideList:
        oppStr = common.getOppositeStr(g)
        if oppStr:
            copyCtlAttr(g, DagNode(oppStr), mirror=1)


def copyGuideUI(*arg):
    """Copy guide settings from 1st to 2nd selected master guide"""
    MGs = build.collectMasterGuide(isSel=1, isAll=0)
    if len(MGs) == 2:
        copyGuideBetwMG(MGs[0], MGs[1], ignoreMG=1)


def copyGuideBetwMG(mg1, mg2, mirror=0, ignoreMG=0):
    """Transfer guide settings from 1st to 2nd selected"""
    rigClass = [
        mg1.a.rigClass.get(),
        mg2.a.rigClass.get(),
    ]
    if rigClass[0] and rigClass[1] and rigClass[0] == rigClass[1]:
        rigID = [
            mg1.a.rigID.get(),
            mg2.a.rigID.get(),
        ]
        guideList = [
            mc.ls(rigID[0] + "_*_guide", tr=1),
            mc.ls(rigID[1] + "_*_guide", tr=1),
        ]
        for g1, g2 in zip(guideList[0], guideList[1]):

            copyCtlAttr(g1, g2, mirror=mirror, ignoreMG=ignoreMG)
    else:
        logging.info("Copy guide setting failed.")


def duplicateGuideSel(*arg, mirror=0):
    """Duplicate selected master guides and transfer guide settings"""
    MGs = build.collectMasterGuide(isSel=1, isAll=0)
    resultMGs = []
    for mg in MGs:
        rigID = mg.a.rigID.get()
        if mirror:
            rigID = common.getOppositeStr(rigID)
            oppMG = DagNode(rigID + "_master_guide")
            if oppMG.exists():
                logging.info(f"{mg.name}: Opposite guide already exists. Ignore.")
                continue

        dupMG = loadGuide(removeEndDigits(rigID))
        copyGuideBetwMG(mg, dupMG, mirror=mirror)
        resultMGs.append(dupMG)

    if resultMGs:
        mc.select(resultMGs)
        mc.setToolTo("moveSuperContext")


def copyCtlAttr(A, B, wsMirror=0, mirror=0, ignoreMG=0):
    """Copy/mirror transform & user defined attribute values"""
    A = DagNode(A) if isinstance(A, str) else A
    B = DagNode(B) if isinstance(B, str) else B

    if ignoreMG == 1:
        if A.name.endswith("_master_guide"):
            return

    tx, ty, tz = A.a.t.get()
    rx, ry, rz = A.a.r.get()

    if mirror:
        tx *= -1
        if wsMirror == 1 or A.a["wsMirror"].exists():
            ry *= -1
            rz *= -1
        else:
            ty *= -1
            tz *= -1

        if A.a["flipRX"].exists():
            rx -= 180
        if A.a["flipRY"].exists():
            ry -= 180
        if A.a["flipRZ"].exists():
            rz -= 180

    B.a.t.set(tx, ty, tz)
    B.a.r.set(rx, ry, rz)
    B.a.s.set(*A.a.s.get())

    for ud in A.a.list(ud=1, u=1, hasData=1) or []:

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


def mirrorCtl(tgtList, wsMirror=0):
    """Mirror transform & user defined attribute values for tgtList"""
    for tgt in tgtList:
        tgt = DagNode(tgt) if isinstance(tgt, str) else tgt
        opp = common.getOpposite(tgt)
        if opp:
            copyCtlAttr(tgt, opp, mirror=1, wsMirror=wsMirror)
        else:
            logging.info(f"{tgt.name}: No opposite ctl found.")


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

    # common.setView(fit=1)
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
    for ua in obj.a.list(ud=1, u=1, hasData=1) or []:
        uaName = ua.name
        attrDict[uaName] = obj.a[uaName].get()
    return attrDict


def saveTemplate():
    """Save preset into json file"""
    allMGs = build.collectMasterGuide()

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


def toggleGuide(*args):
    """Show guide and hide rig if state is True, else show rig and hide guide."""
    guides_grp = DagNode("GUIDES")
    master2_ctl = DagNode("master2_ctl")

    if master2_ctl.exists() and guides_grp.exists():
        vis = guides_grp.a.v.get()

        master2_ctl.a.ctlVis.set(vis)
        # master2_ctl.a.proxyVis.set(vis)
        master2_ctl.a.jointVis.set(vis)

        if vis == 1:
            guides_grp.hide()
        else:
            guides_grp.show()
