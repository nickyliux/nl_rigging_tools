import os.path
import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode

#
#   Require for eval(rigClass)
#
from nl_modules.build.head import Head
from nl_modules.build.neck_bp import NeckBp
from nl_modules.build.spine_bp import SpineBp
from nl_modules.build.arm_bp import ArmBp
from nl_modules.build.hand import Hand

from nl_modules.build.leg_bp import LegBp
from nl_modules.build.leg_qd import LegQd
from nl_modules.build.neck_qd import NeckQd
from nl_modules.build.spine_qd import SpineQd
from nl_modules.build.tail_fk import TailFk
from nl_modules.build.tail import Tail

from nl_modules.build.rig_module import RigModule
from contextlib import ContextDecorator

import nl_modules

MOD_DIR = os.path.dirname(nl_modules.__file__)
CTL_PRESET = MOD_DIR + "/build/control_presets"


class Undo(ContextDecorator):
    def __init__(self, name=None):
        self.name = name

    def __enter__(self):
        mc.undoInfo(openChunk=True, infinity=True, chunkName=self.name)

    def __exit__(self, exc_type, exc_value, traceback):
        mc.undoInfo(closeChunk=True)


def getAnchors(rigNodes, startStr=""):
    """Return objects from all rigNodes having attr starts with str"""
    linkedObjs = []
    for rigNode in rigNodes:
        rN = DagNode(rigNode)
        if rN.a.nodeState.get() == 2:
            userAttrs = rN.a.list(ud=1, at="message")
            for uAttr in userAttrs:
                obj = uAttr.inConnNode
                if obj and type(obj) != list and uAttr.name.startswith(startStr):
                    linkedObjs.append(obj)
    return linkedObjs


def buildTgt(rigN):
    if rigN:
        rigClass = rigN.a.rigClass.get()
        rigObj = eval(rigClass)(rigN)
        if rigObj:
            state = rigN.a.nodeState.get()
            if state == 0:
                rigObj.genSk()
                rigObj.build()
            elif state == 1:
                rigObj.build()
            mc.refresh(cv=1)


def loadBase():
    MAYA_TPL_DIR = "D:/_PROJECT/GIT/nl_rigging_tools/nl_modules/build/components"
    BASE_FILE = "base.ma"
    f = f"{MAYA_TPL_DIR}/{BASE_FILE}"
    if os.path.exists(f):
        mc.file(f, i=1)
        if not mc.objExists("master_ctl"):
            logging.error(f"master_ctl not found")
    else:
        logging.error(f"{f} not found")


def preRig():
    if not mc.objExists("master_ctl"):
        loadBase()
    m = DagNode("master_ctl")
    m1 = m.offset
    m2 = m1.offset
    for ctl in [m, m1]:
        ctl.a.showAttr(t=1, r=1)

    # m2.a.add("debug", k=0, attrType="bool", dv=1)
    # m2.a.add("primCtls", k=0, attrType="bool", dv=1)
    # m2.a.add("secCtls", k=0, attrType="bool", dv=1)
    # m2.a.add("facialCtls", k=0, attrType="bool", dv=1)
    # m2.a.add("bodyTweakers1", k=0, attrType="bool", dv=1)
    # m2.a.add("bodyTweakers2", k=0, attrType="bool", dv=1)
    # m2.a.add("tailIk", k=0, attrType="bool", dv=1)
    # m2.a.add("tailFk", k=0, attrType="bool", dv=1)


@Undo("buildSelOrAll")
def buildSelOrAll(*arg):
    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        preRig()
        for rigN in rigNodes:
            buildTgt(rigN)
        postRig()


def postRig():
    resetAllCtl()
    updateAnchorConn()
    updateSpaceSwitch()
    resetAllPvCtl()
    mc.select(cl=1)

    m2 = DagNode("master2_ctl")
    PRX = DagNode("PRX")

    if m2.exists() and PRX.exists():
        PRX.a.overrideEnabled.set(1)

        m2.a.add("proxy", k=0, attrType="bool", dv=1) >> PRX.a.v
        (
            m2.a.add(
                "proxyDsp", dv=0, attrType="enum", k=0, en="Normal:Template:Reference"
            )
            >> PRX.a.overrideDisplayType
        )

    RIG = DagNode("RIG")
    if RIG.exists():
        mc.hide(RIG)

    print()


def unbuildTgt(rigN):
    if rigN:
        state = rigN.a.nodeState.get()
        if state == 2:
            rigClass = rigN.a.rigClass.get()
            rigObj = eval(rigClass)(rigN)
            rigObj.unbuild_module()


@Undo("unbuildSelOrAll")
def unbuildSelOrAll(*arg):
    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        for rigN in rigNodes:
            unbuildTgt(rigN)
        resetAllCtl()
        updateAnchorConn()
        updateSpaceSwitch()
        resetAllPvCtl()
        mc.select(cl=1)
        print()


def deleteTgt(rigNode):
    """Delete guide component for input rigNode"""
    rigNode = DagNode(rigNode)
    if rigNode.exists():
        rigID = rigNode.a.rigID.get()
        state = rigNode.a.nodeState.get()
        if state == 2:
            rigClass = rigNode.a.rigClass.get()
            rigObj = eval(rigClass)(rigNode)
            rigObj.unbuild_module()
        obj = mc.ls(rigID + "_*")
        if obj:
            mc.delete(obj)
            rigNode.delete()


def deleteSelOrAll(*arg):
    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        for rigN in rigNodes:
            deleteTgt(rigN)


def updateAnchorConn():
    """Add/Update constraints between male & female anchors"""
    logging.info("Auto connect anchors")
    rigNodes = mc.ls("*RGN", type="script")

    if not rigNodes or len(rigNodes) < 2:
        return

    maleAnchors = getAnchors(rigNodes, startStr="anchorM")
    femaleAnchors = getAnchors(rigNodes, startStr="anchorF")
    [fAnchor.removeCstNodes() for fAnchor in femaleAnchors]

    if femaleAnchors and maleAnchors:
        for fAnchor in femaleAnchors:
            #
            #   Find the closest male anchor for each female to constrain
            #   Ignore those from the same rigNode
            #
            distList = []
            [distList.append(fAnchor.o.distanceTo(m)) for m in maleAnchors]
            tgtID = distList.index(min(distList))
            closestMaleAnchor = maleAnchors[tgtID]

            M_rigNode = getRigNode(closestMaleAnchor)
            F_rigNode = getRigNode(fAnchor)

            if F_rigNode and M_rigNode:
                if F_rigNode != M_rigNode:
                    closestMaleAnchor.cstPar(fAnchor, mo=1)
                else:
                    logging.debug("Ignore connecting anchors from the same rigNode.")

    # ---------------------------------------------------------------
    #
    #  Create isolate neck to spine setup for standard quadruped
    #
    # ---------------------------------------------------------------
    # neckCog = DagNode("neckQd0_cog_ctl")
    # spineCtl = DagNode("spineQd0_tp_ctl")
    # wSpaceObj = DagNode("master_ctl")
    # if all([neckCog.exists(), spineCtl.exists(), wSpaceObj.exists()]):
    #     RigModule.isolate_neck_to_spine(neckCog, spineCtl, wSpaceObj)


# "{ string $selection[]=`ls -sl`;string $attr, $udAttr[];float $dfv[];for ($c in $selection) {\
# 		$udAttr = `listAttr -ud -s -k $c`;\
#  		for ($attr in $udAttr) {\
#  			$dfv = `attributeQuery -node $c -ld $attr`;\
#  			if ( `size $dfv` && `getAttr -se ($c + \".\" + $attr)` ) setAttr ($c + \".\" + $attr) $dfv[0];}\
# 		if (`getAttr -se ($c + \".tx\")`) catch(`setAttr ($c + \".tx\") 0`);\
# 		if (`getAttr -se ($c + \".ty\")`) catch(`setAttr ($c + \".ty\") 0`);\
# 		if (`getAttr -se ($c + \".tz\")`) catch(`setAttr ($c + \".tz\") 0`);\
# 		if (`getAttr -se ($c + \".rx\")`) catch(`setAttr ($c + \".rx\") 0`);\
# 		if (`getAttr -se ($c + \".ry\")`) catch(`setAttr ($c + \".ry\") 0`);\
# 		if (`getAttr -se ($c + \".rz\")`) catch(`setAttr ($c + \".rz\") 0`);\
# 		if (`getAttr -se ($c + \".sx\")`) catch(`setAttr ($c + \".sx\") 1`);\
# 		if (`getAttr -se ($c + \".sy\")`) catch(`setAttr ($c + \".sy\") 1`);\
# 		if (`getAttr -se ($c + \".sz\")`) catch(`setAttr ($c + \".sz\") 1`);}\
# 		}\


def getAllRigCtls():
    return getRigCtls(mc.ls("*RGN", type="script"))


def getRigCtls(rigNodes):
    setList = []
    for rigNode in rigNodes:
        ctlSet = DagNode(rigNode).a.rigID.get() + "_ctl_set"
        ctlSet = mc.ls(ctlSet, type="objectSet")
        if ctlSet:
            setList.append(ctlSet[0])
    if setList:
        objs = mc.sets(setList, q=1)
        if objs:
            return [DagNode(obj) for obj in objs]
    else:
        return []


def resetAllCtl():
    """Reset all ctl's attr to default"""
    for ctl in getAllRigCtls():
        for attr in ctl.a.list(k=1, u=1, se=1, s=1):
            if attr.settable():
                attr.reset()


def resetAllPvCtl():
    rigNodes = mc.ls("*RGN", type="script")
    for rigNode in rigNodes:
        rN = DagNode(rigNode)
        rID = rN.a.rigID.get()
        pvc = rN.a.pvc.inConnNode
        guide = DagNode(rID + "_pvc_guide")
        if pvc and guide and pvc.exists() and guide.exists():
            pvc.snapTo(guide)


def updateSpaceSwitch():
    """Add/update space switch for ctl from rigNode's spaceHolder* attr
    e.g.
      'lfArm0_ikc', ['master', 'clavicle'], 'lfArm0_RGN'
      'lfArm0_pvc', ['arm', 'master'], 'lfArm0_RGN'
    """
    logging.info("Adding space switch")
    spaceData = collectSpaceData()

    for ctl, spaceList, rigNode in spaceData:
        if ctl.a.space.exists():
            #
            #   delete space and related groups
            #
            ctl.a.space.delete()
            cstNode = ctl.parent.getCstNodes(cstType="parentConstraint")
            if cstNode:
                spaceG = cstNode[0].a.target.inConnNode
                if spaceG:
                    if isinstance(spaceG, list):
                        [mc.delete(g.parent) for g in spaceG]
                    else:
                        mc.delete(spaceG.parent)
        #
        #   collect space items
        #       'COG': cog_ikc,
        #       'master': master_ctl,
        #       'arm': lf_arm_ikc
        #
        spaceDict = collectSpaceObj(rigNode)
        #
        #   filter non-existing item
        #       'master': master_ctl,
        #       'arm': lf_arm_ikc
        #
        resultDict = {}
        for s in spaceList:
            if s in spaceDict and spaceDict[s]:
                resultDict[s] = spaceDict[s]

        if resultDict:
            v = ctl.a["spaceType"]

            tgtCstType = "par"
            if v.exists() and v.get() == 1:
                tgtCstType = "ori"

            RigModule.space_align(
                ctl,
                cstType=tgtCstType,
                names=":".join(resultDict.keys()),
                spaces=resultDict.values(),
            )


def getSpaceObj(rigNode):
    """Return space:obj dict for rigNode
    e.g.
        rigNode.space_arm -> lfArm0_softJ
        rigNode.space_clavicle -> lfArm0_clavicle_fkc
        rigNode.space_master -> master_ctl

        Return
        {
            'arm':      'lfArm0_softJ',
            'clavicle': 'lfArm0_clavicle_fkc',
            'master':   'master_ctl'
        }
    """
    spaceDict = {}
    for udAttr in rigNode.a.list(ud=1):
        if udAttr.name.startswith("space_"):
            obj = udAttr.inConnNode
            if obj and obj.exists():
                spaceName = udAttr.name.split("_")[1]
                spaceDict[spaceName] = obj
    return spaceDict


def collectSpaceObj(rigNode):
    """
    Return space:obj dict for all rigNodes.

    For cases like palm roll, driving rigNode updated second last
    For cases like arm poleVector, its rigNode is updated last
    e.g.
        {
            'COG':      cog_ikc,
            'arm':      lf_arm_ikc
            'clavicle': lfArm0_clavicle_fkc,
            'master':   master_ctl,
        }
    """
    spaceDict = {}
    for r in mc.ls("*RGN", type="script"):
        if r != rigNode:
            spaceDict.update(getSpaceObj(DagNode(r)))
    #
    #   get all driving rigNodes
    #
    femaleAnchors = getAnchors([rigNode], startStr="anchorF")
    if femaleAnchors:
        drivingAnchors = femaleAnchors[0].getCstObjects(cstType="parentConstraint")
        if drivingAnchors:
            drivingRN = getRigNode(drivingAnchors[0])
            spaceDict.update(getSpaceObj(drivingRN))
    #
    #   as lf & rt arm ctl can have the same 'arm' space
    #   so its rigNode will be updated last
    #
    spaceDict.update(getSpaceObj(rigNode))
    return spaceDict


def collectSpaceData():
    """Return [ctl, objects, rigNode] from "spaceHolder*" attr from all rigNodes.
    e.g.
        spaceHolder1 -> lfArm0_ikc
        spaceHolder2 -> lfArm0_pvc
        spaceName1   -> master, clavicle, COG, uprBody
        spaceName2   -> arm, master, COG, uprBody, lwrBody

        Return
        {
            lfArm0_ikc, [master, clavicle, COG, uprBody],     lfArm0_RGN
            lfArm0_pvc, [arm, master, COG, uprBody, lwrBody], lfArm0_RGN
        }
    """
    ctlList = []
    for r in mc.ls("*RGN", type="script"):
        rN = DagNode(r)
        for udAttr in rN.a.list(ud=1):
            #
            #   get spaceHolder* & spaceName*
            #
            if udAttr.name.startswith("spaceHolder"):
                obj = udAttr.inConnNode
                spaceNameAttr = rN.a["spaceName" + udAttr.name[-1]]
                if obj and obj.exists() and spaceNameAttr.exists():
                    ctlList.append(
                        (
                            obj,
                            spaceNameAttr.get().split(", "),
                            rN,
                        )
                    )
    return ctlList


def getRigNodesSelOrAll():
    rigNodes = []
    selList = mc.ls(sl=1)
    if selList:
        for obj in selList:
            n = getRigNode(obj)
            if n:
                rigNodes.append(n)
    else:
        rigNodes = mc.ls("*RGN", type="script")
        if rigNodes:
            rigNodes = [DagNode(n) for n in rigNodes]
    return rigNodes


def getRigNode(obj):
    if mc.objExists(obj):
        nodes = DagNode(obj).a.message.outConnNode
        if nodes:
            for n in nodes:
                if n.type == "script":
                    return n
        else:
            logging.info(f"No connected rigNode found for {obj}")
    else:
        logging.info("Get rigNode for non-existing object.")


def delProxyMesh():
    pass


def genProxyMesh():
    from nl_modules.nodel.grp_node import GrpNode
    from nl_modules.nodel.jnt_node import JntNode

    MDL = GrpNode("MDL")
    PRX = GrpNode("PRX", p=MDL)
    bindSet = DagNode("bind_jnt_set")
    if bindSet.exists():
        bindJnts = mc.sets(bindSet, q=1)
        for j in bindJnts:
            grpStr = str(j).split("_")[0]
            PRX_GRP = GrpNode(grpStr + "_PRX", p=PRX)
            JntNode(j).addProxyMesh(p=PRX_GRP)
        mc.select(cl=1)
    else:
        logging.info("The set 'bind_jnt_set' NOT found.")


def saveCtl():
    """
    Save all the control curves, without connection or any unwanted
    """
    allCtls = getAllRigCtls()
    allCtls.extend(["master_ctl", "master1_ctl", "master2_ctl"])
    if allCtls:
        mc.select(allCtls)
        crvFile = mc.fileDialog2(fileFilter="*.ma", dialogStyle=2, dir=CTL_PRESET)
        if crvFile:
            mc.file(
                crvFile,
                type="mayaAscii",
                f=1,
                exportSelected=1,
                constructionHistory=0,
                channels=0,
                expressions=0,
                constraints=0,
            )
            logging.info("Curve shape exported OK.")
            mc.select(cl=1)


def loadCtl():
    """
    Replace all the control curve shapes by those found in the file
    """
    ctlFile = mc.fileDialog2(
        fileFilter="*.ma", dialogStyle=2, fileMode=1, dir=CTL_PRESET
    )
    if ctlFile:
        #
        #    import ctl file
        #
        ns = "ctl"
        imported = mc.file(ctlFile, i=1, ns=ns, returnNewNodes=1)
        ns = ""
        if imported:
            ns = imported[0].split(":")[0]
        else:
            return
        #
        #    replace shape
        #
        allCtls = getAllRigCtls()
        allCtls.extend(
            [DagNode("master2_ctl"), DagNode("master1_ctl"), DagNode("master_ctl")]
        )
        for ctl in allCtls:
            importCtl = DagNode(ns + ":" + ctl)
            if importCtl.exists():
                mc.delete(ctl.shapes)
                mc.parent(importCtl.shapes, ctl, s=1, r=1)
                for s in ctl.shapes:
                    s.rename(ctl + "Shape#")

        if imported:
            rootGrp = DagNode(ns + ":CHR")
            # if rootGrp.exists():
            #     print(rootGrp)
            # mc.delete(rootGrp)


def autoAttachJntToSurf():

    masterCtl = DagNode("master_ctl")
    if not masterCtl.exists():
        logging.info(f"master_ctl NOT found")
        return

    globalScale = masterCtl.a["globalScale"]
    if not globalScale.exists():
        logging.info(f"globalScale attr NOT found")
        return

    for rigNode in mc.ls("*RGN", type="script"):
        rN = DagNode(rigNode)
        if rN.a.nodeState.get() == 2:
            #
            #   Process only if rbJntSet found
            #
            rbJntSetAttr = rN.a["rbJntSet"]
            if rbJntSetAttr.exists():

                rbSrfAttr = rN.a["rbSrf"]
                if not rbSrfAttr.exists():
                    logging.info(f"Attr rbSrf NOT found in {rN}.")
                    continue
                #
                #   check set rbJntSet
                #
                rbJntSetName = rbJntSetAttr.get()
                rbJntSet = DagNode(rbJntSetName)
                if not rbJntSet.exists():
                    logging.info(f"Set {rbJntSetName} NOT found.")
                    continue

                rbJnts = mc.sets(rbJntSet, q=1)
                if not rbJnts:
                    logging.info(f"No joints found in Set {rbJntSet}.")
                    continue
                #
                #   check surface rbSrf
                #
                rbSrf = rbSrfAttr.inConnNode
                if not rbSrf:
                    logging.info(f"Surface object NOT found.")
                    continue
                #
                #   attach joints in set to srf
                #
                if rbSrf and rbJnts:
                    from nl_modules.utils import common

                    common.ribbonAttach(
                        geo=rbSrf,
                        tgtList=rbJnts,
                        scaleAttr=globalScale,
                        p=DagNode("RIG"),
                    )
                else:
                    logging.info("Ignore invalid surf and joints")
                logging.info(f"Attach joints in {rbJntSet} to {rbSrf.name}.")


# def getRigNodes(objList):
#     rigNodes = []
#     for obj in objList:
#         n = getRigNode(obj)
#         if n:
#             rigNodes.append(n)
#     return rigNodes


# startTime = time.time()
# endTime = time.time()
# print(f"--------- Build Time: {endTime - startTime:.2}s")

# def disconnectAnchors():
#     """Disconnect all Female anchors"""
#     femaleAnchors = getRigNodeLinked("anchorF")
#     for fAnchor in femaleAnchors:
#         fAnchor.removeCstNodes()
