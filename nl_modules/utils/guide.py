import logging
import os
import re
import maya.cmds as mc
import nl_modules
from nl_modules.build.tpl_loader import TplLoader
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import build, common, file

MOD_DIR = os.path.dirname(nl_modules.__file__)
COMPONENT_PATH = MOD_DIR + "/build/components"
LF_CTL_SET = "lf*_ctl_set"

COMPONENT_DICT = {
    "head": ["head"],
    "limb": ["lfLimb"],
    "neck / bp": ["neckBp"],
    "spine / bp": ["spineBp"],
    "arm / bp": ["lfArmBp", "rtArmBp"],
    "leg / bp": ["lfLegBp", "rtLegBp"],
    "hand / bp": ["lfHandBp", "rtHandBp"],
    "neck / qd": ["neckQd"],
    "spine / qd": ["spineQd"],
    "arm / qd": ["lfArmQd", "rtArmQd"],
    "leg / qd": ["lfLegQd", "rtLegQd"],
    "tail fk": ["tailFk"],
    "tail": ["tail"],
    "wing": [""],
    "finger fk": ["lfFingerFk", "rtFingerFk"],
    "simple fk": ["lfSimpleFk", "rtSimpleFk"],
}


def loadGuide(name):
    """Load component(s) for names"""

    def genNextRigID(n):
        """Generate next rigID name for newly created component"""
        count = 0
        for node in build.getRigNodes_all():
            if node.a.rigID.get().startswith(n):
                count += 1
        return f"{n}{count}"

    # if not isinstance(names, list):
    #     raise TypeError("names should be a list of string")

    # for name in names:
    nextRigID = genNextRigID(name)
    TplLoader(name + ".ma", nextRigID).load_base_tpl()
    return DagNode(nextRigID + "_master_guide")


def xferGuideSel(*arg, skipMasterXf=1):
    """Transfer guide settings from 1st to 2nd selected"""
    selList = mc.ls(sl=1, tr=1)
    if len(selList) == 2:
        rigNode1 = build.getRigNode(selList[0])
        rigNode2 = build.getRigNode(selList[1])

        if rigNode1 and rigNode2:
            rigClass1 = rigNode1.a.rigClass.get()
            rigClass2 = rigNode2.a.rigClass.get()

            if rigClass1 == rigClass2:
                rigID1 = rigNode1.a.rigID.get()
                rigID2 = rigNode2.a.rigID.get()
                guideList1 = mc.ls(rigID1 + "_*_guide")
                guideList2 = mc.ls(rigID2 + "_*_guide")
                for g1, g2 in zip(guideList1, guideList2):
                    copyGuideAttr(g1, g2, skipMasterXf=skipMasterXf)
            else:
                logging.info("Ignore copy for different rig classes")
        else:
            logging.info("Can not find rigNodes to copy")


def duplicateGuideSel(*arg):
    """Duplicate selected guide controls"""
    selList = mc.ls(sl=1, tr=1)
    allTgtMG = []
    for sel in selList:
        rigNode = build.getRigNode(sel)
        if rigNode:
            # Duplicate guide
            rigID = rigNode.a.rigID.get()
            src_mg = DagNode(rigID + "_master_guide")
            tgt_mg = loadGuide(removeEndDigits(rigID))
            allTgtMG.append(tgt_mg)

            # Copy xform & attributes
            mc.select(src_mg, tgt_mg)
            xferGuideSel(skipMasterXf=0)

    mc.select(allTgtMG)
    mc.setToolTo("moveSuperContext")


def mirrorGuideSelOrAll(*arg):
    """Mirror guides for selList / all *lf*_guide"""
    selList = mc.ls(sl=1, tr=1) or mc.ls("*lf*_guide", tr=1)
    selList = list(set(selList))
    if selList:
        mirrorGuide(selList)


def getOppositeCtl(tgtN, pfL="lf", pfR="rt", strB4Pf=1):
    """Return opposite ctl
    e.g.
        lf_leg0_ikc =>              rt_leg0_ikc
        head0_lf_eye, pfB4Pf=1 =>   head0_rt_eye
    """
    patternL = (
        re.compile(rf"^(\w*){pfL}(\w+)$") if strB4Pf else re.compile(rf"^{pfL}(\w+)$")
    )
    matchL = re.match(patternL, tgtN.name)
    if matchL:
        oppName = (
            f"{matchL.group(1)}{pfR}{matchL.group(2)}"
            if strB4Pf
            else f"{pfR}{matchL.group(1)}"
        )
        opp = DagNode(oppName)
        if opp.exists():
            return opp
    else:
        patternR = (
            re.compile(rf"^(\w*){pfR}(\w+)$")
            if strB4Pf
            else re.compile(rf"^{pfR}(\w+)$")
        )
        matchR = re.match(patternR, tgtN.name)
        if matchR:
            oppName = (
                f"{matchR.group(1)}{pfL}{matchR.group(2)}"
                if strB4Pf
                else f"{pfL}{matchR.group(1)}"
            )
            opp = DagNode(oppName)
            if opp.exists():
                return opp


def copyGuideAttr(A, B, wsMirror=0, mirror=0, skipMasterXf=0):
    """Copy/mirror transform & user defined attribute values"""
    A = DagNode(A) if isinstance(A, str) else A
    B = DagNode(B) if isinstance(B, str) else B
    if skipMasterXf and A.name.endswith("_master_guide"):
        pass
    else:
        tx, ty, tz = A.a.t.get()
        rx, ry, rz = A.a.r.get()
        sx, sy, sz = A.a.s.get()
        if mirror:
            tx *= -1
            if wsMirror or A.a["wsMirror"].exists():
                ry *= -1
                rz *= -1
            else:
                ty *= -1
                tz *= -1
        B.a.t.set(tx, ty, tz)
        B.a.r.set(rx, ry, rz)
        B.a.s.set(sx, sy, sz)

    udAttrs = A.a.list(ud=1, u=1) or []
    for ud in udAttrs:
        try:
            B.a[ud.name].set(ud.get())
        except Exception as e:
            print(e)


def mirrorGuide(tgtList, wsMirror=0):
    """Mirror xform for tgtList objects"""
    for tgt in tgtList:
        tgt = DagNode(tgt)
        opp = getOppositeCtl(tgt)
        if opp:
            rigNode = build.getRigNode(opp)
            mg = rigNode.a.master_guide.inConnNode if rigNode else None
            if mg and mg.a.mirrorable.get():
                copyGuideAttr(tgt, opp, wsMirror=wsMirror, mirror=1)
        else:
            logging.warning(f"opposite not found for {tgt.name}")


def mirrorPose(*arg):
    """Mirror pose for selList ctl / all in set lf*_ctl_set"""
    selList = mc.ls(sl=1, tr=1)
    selList = list(set(selList))

    if not selList:
        if mc.ls(LF_CTL_SET, type="objectSet"):
            selList = mc.sets(LF_CTL_SET, q=1)
    if selList:
        mirrorGuide(selList)


def removeEndDigits(name):
    """Remove trailing digits from a name"""
    # e.g. lfLeg0 => 'lfLeg'
    pattern = re.compile(rf"^([a-zA-Z_]+)")
    result = re.match(pattern, str(name))
    if result:
        return result.group(1)
    else:
        raise ValueError("Invalid input name")


def loadTemplate(removeUnused=1):
    """Load preset from json file"""
    charPath = mc.optionVar(q="charPath")

    tgtFile = mc.fileDialog2(
        fileFilter="*tpl*.json", dialogStyle=2, fileMode=1, dir=charPath
    )
    if tgtFile is None:
        return
    else:
        tgtFile = tgtFile[0]

    rigID_dict = file.loadJson(tgtFile)
    if removeUnused:  # Remove unused components
        idInPreset = [k + "_RGN" for k in rigID_dict.keys()]
        for node in build.getRigNodes_all():
            if node not in idInPreset:
                build.deleteTgt(node)

    allTgtMG = []
    for rID in rigID_dict:
        mg = DagNode(rID + "_master_guide")
        if mg.exists():
            logging.info(f"master_guide for {rID} already exists!")
        else:
            tgt_mg = loadGuide(removeEndDigits(rID))
            allTgtMG.append(tgt_mg)
            mc.refresh(cv=1)

        for guideN, attrs in rigID_dict[rID].items():  # Load settings from preset
            guideN = DagNode(guideN)
            if guideN.exists():
                for attr in attrs:
                    if guideN.a[attr].exists():
                        if str(attr) in "trs":
                            v = attrs[attr]
                            for i, axis in enumerate("xyz"):
                                if guideN.a[attr + axis].settable():
                                    guideN.a[attr + axis].set(v[i])
                        else:
                            if guideN.a[attr].settable():
                                v = attrs[attr]
                                if isinstance(v, (int, float)):
                                    guideN.a[attr].set(v)
                                elif isinstance(v, str):
                                    guideN.a[attr].set(v, type="string")
                                elif isinstance(v, list):
                                    guideN.a[attr].set(*v)
    common.setViewport(fit=1)
    mc.select(allTgtMG)


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
    idDict = {}
    rigNodes = build.getRigNodes_all()

    if not rigNodes:
        mc.confirmDialog(t="Info", m="RigNode NOT found.     ", b="OK")
        return

    for node in rigNodes:
        rigID = node.a.rigID.get()
        objsToSave = [DagNode(o) for o in mc.ls(rigID + "_*_guide", tr=1)]
        objsToSave.append(node.a.moduleG.inConnNode)

        guideDict = {}
        for obj in objsToSave:
            guideDict[obj.name] = genAttrDict(obj)

        idDict[rigID] = guideDict

    charPath = mc.optionVar(q="charPath")
    tgtFile = mc.fileDialog2(
        fileFilter="*.json", dialogStyle=2, fileMode=0, dir=charPath
    )
    if tgtFile is None:
        return
    else:
        tgtFile = tgtFile[0]

    file.saveJson(tgtFile, idDict, force=True)
    logging.info("guides saved")


def explore(*args):
    """Open the directory containing component files in the file explorer."""
    import subprocess

    path = os.path.realpath(COMPONENT_PATH)
    subprocess.Popen(f'explorer "{path}"')
