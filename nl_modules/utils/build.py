import os.path
import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode

# from nl_modules.utils import common

# Must keep it ------------------------------
from nl_modules.build.leg_bp import LegBp
from nl_modules.build.hand import Hand
from nl_modules.build.arm_bp import ArmBp
from nl_modules.build.head import Head
from nl_modules.build.neck import Neck
from nl_modules.build.spine import Spine
from nl_modules.build.leg_qd import LegQd
from nl_modules.build.neck_qd import NeckQd
from nl_modules.build.spine_qd import SpineQd
from nl_modules.build.tail_fk import TailFk
from nl_modules.build.tail import Tail
from nl_modules.build.rig_module import RigModule
from contextlib import ContextDecorator


class Undo(ContextDecorator):
    def __init__(self, name=None):
        self.name = name

    def __enter__(self):
        mc.undoInfo(openChunk=True, infinity=True, chunkName=self.name)

    def __exit__(self, exc_type, exc_value, traceback):
        mc.undoInfo(closeChunk=True)


def getAnchors(rigNodes, name):
    """Return objects from all rigNodes connected thru attr, starting with name
    e.g.
        spine0_RGN
            AnchorM1 -> aa
            AnchorF1 -> bb
        lfLeg0_RGN
            AnchorM1 -> cc

        getAnchors('AnchorM')  # Return [aa, cc]
        getAnchors('AnchorF')  # Return [bb]
    """
    linkedObjs = []
    for rigNode in rigNodes:
        rN = DagNode(rigNode)
        if rN.a.nodeState.get() == 2:
            userAttrs = rN.a.list(ud=1, at="message")
            for ud in userAttrs:
                obj = ud.inConnNode
                if obj and type(obj) != list and ud.attr.startswith(name):
                    linkedObjs.append(obj)
    return linkedObjs


def buildTgt(rigN):
    if rigN:
        rigClass = rigN.a.rigClass.get()
        rigObj = eval(rigClass)(rigN)
        if rigObj:
            state = rigN.a.nodeState.get()
            if state == 0:
                rigObj.gen_guide_sk()
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

    m2.a.add("proxy", k=0, attrType="bool", dv=1)
    m2.a.add("debug", k=0, attrType="bool")


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

    maleAnchors = getAnchors(rigNodes, "anchorM")
    femaleAnchors = getAnchors(rigNodes, "anchorF")
    [fAnchor.removeCstNodes() for fAnchor in femaleAnchors]

    if femaleAnchors and maleAnchors:
        for fAnchor in femaleAnchors:
            # ---------------------------------------------------------------
            #  Find the closest male anchor for each female to constrain
            #  Ignore those from the same rigNode
            # ---------------------------------------------------------------
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
    rigNodes = mc.ls("*RGN", type="script")
    setList = []
    for rigNode in rigNodes:
        ctlSet = DagNode(rigNode).a.rigID.get() + "_ctl_set"
        ctlSet = mc.ls(ctlSet, type="objectSet")
        if ctlSet:
            setList.append(ctlSet[0])
    if setList:
        return mc.sets(setList, q=1)
    return []


def resetAllCtl():
    """Reset all ctl's attr to default"""
    for sel in getAllRigCtls():
        selN = DagNode(sel)
        for attr in selN.a.list(k=1, u=1, se=1, s=1):
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
            # ------------------------------------
            #   Delete space and related groups
            # ------------------------------------
            ctl.a.space.delete()
            cstNode = ctl.parent.getCstNodes(cstType="parentConstraint")
            if cstNode:
                spaceG = cstNode[0].a.target.inConnNode
                if spaceG:
                    if isinstance(spaceG, list):
                        [mc.delete(g.parent) for g in spaceG]
                    else:
                        mc.delete(spaceG.parent)

        # Collect space items
        # e.g.
        #   'COG': cog_ikc,
        #   'master': master_ctl,
        #   'arm': lf_arm_ikc
        spaceDict = collectSpaceObj(rigNode)

        # Filter non-existing item
        # e.g.
        #   'master': master_ctl,
        #   'arm': lf_arm_ikc
        # ------------------------------------
        resultDict = {}
        for s in spaceList:
            if s in spaceDict and spaceDict[s]:
                resultDict[s] = spaceDict[s]

        if resultDict:
            # print(ctl.name, resultDict)
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
        if udAttr.attr.startswith("space_"):
            obj = udAttr.inConnNode
            if obj and obj.exists():
                spaceName = udAttr.attr.split("_")[1]
                spaceDict[spaceName] = obj
    return spaceDict


def collectSpaceObj(rigNode):
    """Return space:obj dict for all rigNodes.
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
    # Get driving rigNode
    #
    femaleAnchors = getAnchors([rigNode], "anchorF")
    if femaleAnchors:
        drivingAnchors = femaleAnchors[0].getCstObjects(cstType="parentConstraint")
        if drivingAnchors:
            drivingRN = getRigNode(drivingAnchors[0])
            spaceDict.update(getSpaceObj(drivingRN))
    #
    # lf & rt arm ctl can have the same 'arm' space, so update its rigNode at last
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
            # Get spaceHolder* & spaceName*
            if udAttr.attr.startswith("spaceHolder"):
                obj = udAttr.inConnNode
                spaceNameAttr = rN.a["spaceName" + udAttr.attr[-1]]
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
