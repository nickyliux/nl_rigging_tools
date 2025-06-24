import maya.cmds as mc
import logging
import os
import re
from nl_modules.build.tpl_loader import TplLoader
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import common, file
import nl_modules

COMPONENT_DICT = {
    "head": ["head"],
    "limb": ["lfLimb"],
    "bp neck": ["neckBp"],
    "bp spine": ["spineBp"],
    "bp arm": ["lfArmBp", "rtArmBp"],
    "bp leg": ["lfLegBp", "rtLegBp"],
    "hand": ["lfHand", "rtHand"],
    "qd neck": ["neckQd"],
    "qd spine": ["spineQd"],
    "qd arm": ["lfArmQd", "rtArmQd"],
    "qd leg": ["lfLegQd", "rtLegQd"],
    "tail fk": ["tailFk"],
    "tail": ["tail"],
    "wing": [""],
}


def loadGuide(names):
    """Load component(s) for names"""

    def genNextRigID(n):
        """Generate next rigID name for newly created component"""
        count = 0
        for rN in mc.ls("*RGN", type="script"):
            rN = DagNode(rN)
            if rN.a.rigID.get().startswith(n):
                count += 1
        return f"{n}{count}"

    for name in names:
        nextRigID = genNextRigID(name)
        TplLoader(name + ".ma", nextRigID).load_base_tpl()

    mc.select(cl=1)


def copyGuideSel():
    """Copy guide settings from 1st to 2nd selected"""
    from nl_modules.utils import build

    selList = mc.ls(sl=1)
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
                    copyGuideAttr(g1, g2, skipMasterXf=1)
            else:
                logging.info("Ignore copy for different rig classes")
        else:
            logging.info("Can not find rigNodes to copy")


def mirrorGuideSelOrAll(*arg):
    """Mirror guides for selected / all *lf*_guide"""
    selList = mc.ls(sl=1, ap=1) or mc.ls("*lf*_guide", ap=1)
    if selList:
        mirrorGuideAttr(selList)


def getOppositeCtl(tgtN, pfL="lf", pfR="rt", strB4Pf=1):
    """Return opposite ctl
    e.g.
        lf_leg0_ikc =>              rt_leg0_ikc
        head0_lf_eye, pfB4Pf=1 =>   head0_rt_eye
    """
    patternL = (
        re.compile(rf"^(\w*){pfL}(\w+)$") if strB4Pf else re.compile(rf"^{pfL}(\w+)$")
    )
    patternR = (
        re.compile(rf"^(\w*){pfR}(\w+)$") if strB4Pf else re.compile(rf"^{pfR}(\w+)$")
    )
    matchL = re.match(patternL, tgtN.name)
    matchR = re.match(patternR, tgtN.name)

    if matchL:
        oppName = (
            f"{matchL.group(1)}{pfR}{matchL.group(2)}"
            if strB4Pf
            else f"{pfR}{matchL.group(1)}"
        )
        if mc.objExists(oppName):
            return DagNode(oppName)
    elif matchR:
        oppName = (
            f"{matchR.group(1)}{pfL}{matchR.group(2)}"
            if strB4Pf
            else f"{pfL}{matchR.group(1)}"
        )
        if mc.objExists(oppName):
            return DagNode(oppName)


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
            if wsMirror or A.a.wsMirror.exists():
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


def mirrorGuideAttr(tgtList, wsMirror=0):
    """Mirror xform for tgtList objects"""
    for tgt in tgtList:
        tgt = DagNode(tgt)
        oppN = getOppositeCtl(tgt)
        if oppN:
            copyGuideAttr(tgt, oppN, wsMirror=wsMirror, mirror=1)
        else:
            print(f"opposite not found for {tgt.name}")


def mirrorPose(*arg):
    """Mirror pose for selected ctl / all in set lf*_ctl_set"""
    selList = mc.ls(sl=1, ap=1)
    if not selList:
        tgtSet = "lf*_ctl_set"
        if mc.ls(tgtSet, type="objectSet"):
            selList = mc.sets(tgtSet, q=1)
    if selList:
        mirrorGuideAttr(selList)


def loadTemplate(removeUnused=1):
    """Load preset from json file"""
    from nl_modules.utils import build

    tgtFile = mc.fileDialog2(fileFilter="*.json", dialogStyle=2, fileMode=1)
    if tgtFile is None:
        return
    else:
        tgtFile = tgtFile[0]

    idDict = file.loadJson(tgtFile)
    if removeUnused:  # Remove unused components
        idInPreset = [k + "_RGN" for k in idDict.keys()]
        for rN in mc.ls("*RGN", type="script"):
            if rN not in idInPreset:
                build.deleteTgt(rN)

    pattern = re.compile(rf"^([a-zA-Z_]+)")  # letter without digi

    for rigID in idDict:
        mg = DagNode(rigID + "_master_guide")
        if mg.exists():
            logging.info(f"master_guide for {rigID} already exists!")
        else:
            fName = re.match(pattern, str(rigID))  # e.g. lfLeg0 => 'lfLeg'
            loadGuide([fName.group(1)])
            mc.refresh(cv=1)

        for guideN, attrs in idDict[rigID].items():  # Load settings from preset
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
    common.setViewport()


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
    rigNodes = mc.ls("*RGN", type="script")
    if not rigNodes:
        mc.confirmDialog(t="Info", m="No rigNode found.       \nSave ignored.", b="OK")
        return

    for rN in rigNodes:
        rN = DagNode(rN)
        rigID = rN.a.rigID.get()
        objsToSave = [DagNode(obj) for obj in mc.ls(rigID + "_*_guide", tr=1)]
        objsToSave.append(rN.a.moduleG.inConnNode)

        guideDict = {}
        for obj in objsToSave:
            guideDict[obj.name] = genAttrDict(obj)

        idDict[rigID] = guideDict

    tgtFile = mc.fileDialog2(fileFilter="*.json", dialogStyle=2, fileMode=0)
    if tgtFile is None:
        return
    else:
        tgtFile = tgtFile[0]

    file.saveJson(tgtFile, idDict, force=True)
    logging.info("guides saved")
