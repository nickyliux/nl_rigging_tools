import logging
import maya.cmds as mc
from nl_modules.utils import common
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


class Undo(ContextDecorator):
    """Context manager for undo chunk in Maya"""

    def __init__(self, name=None):
        self.name = name

    def __enter__(self):
        mc.undoInfo(openChunk=1, infinity=1, chunkName=self.name)

    def __exit__(self, exc_type, exc_value, traceback):
        mc.undoInfo(closeChunk=1)


def getAnchors(rigNodes, startStr=""):
    """Return objects from all rigNodes having attr starts with str"""

    linkedObjs = []
    for node in [DagNode(r) for r in rigNodes]:
        if node.a.nodeState.get() == 2:
            userAttrs = node.a.list(ud=1, at="message")
            for uAttr in userAttrs:
                obj = uAttr.inConnNode
                if obj and type(obj) != list and uAttr.name.startswith(startStr):
                    linkedObjs.append(obj)
    return linkedObjs


def buildTgt(rigN):
    """Build target rigNode"""

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
    """Load base template file for rigging"""

    MAYA_TPL_DIR = "D:/_PROJECT/GIT/nl_rigging_tools/nl_modules/build/components"
    BASE_FILE_NAME = "base.ma"
    base_file = f"{MAYA_TPL_DIR}/{BASE_FILE_NAME}"

    try:
        mc.file(base_file, i=1)
    except Exception as e:
        raise ValueError(f"Error loading {base_file}: {e}")

    if not mc.objExists("master_ctl"):
        raise ValueError("master_ctl not found.")


def preRig():
    """Prepare for rigging"""

    if not mc.objExists("master_ctl"):
        loadBase()
    m = DagNode("master_ctl")
    m1 = m.offset
    for ctl in [m, m1]:
        ctl.a.showAttr(t=1, r=1)


@Undo("buildSelOrAll")
def buildSelOrAll(*arg):
    """Build rig for selected rigNodes or all if nothing selected"""

    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        preRig()
        for rigN in rigNodes:
            buildTgt(rigN)
        postRig()


def postRig():
    """Post rigging operations"""

    reset_all_ctl()
    update_anchor_conn()
    update_space_switch()
    reset_all_pv_ctl()
    mc.select(cl=1)

    m2 = DagNode("master2_ctl")
    PRX = DagNode("PRX")

    if m2.exists() and PRX.exists():
        PRX.a.overrideEnabled.set(1)

        m2.a.add("proxyVis", k=0, attrType="bool", dv=1) >> PRX.a.v
        (
            m2.a.add(
                "proxyDsp", attrType="enum", dv=2, k=0, en="Normal:Template:Reference"
            )
            >> PRX.a.overrideDisplayType
        )

    RIG = DagNode("RIG")
    if RIG.exists():
        mc.hide(RIG)


def unbuildTgt(rigN):
    """Unbuild target rigNode"""

    if rigN:
        state = rigN.a.nodeState.get()
        if state == 2:
            rigClass = rigN.a.rigClass.get()
            rigObj = eval(rigClass)(rigN)
            rigObj.unbuild_pre_module()


@Undo("unbuildSelOrAll")
def unbuildSelOrAll(*arg):
    """Unbuild rig for selected rigNodes or all if nothing selected"""

    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        for rigN in rigNodes:
            unbuildTgt(rigN)
        reset_all_ctl()
        update_anchor_conn()
        update_space_switch()
        reset_all_pv_ctl()
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
            rigObj.unbuild_pre_module()
        obj = mc.ls(rigID + "_*")
        if obj:
            mc.delete(obj)
            rigNode.delete()


def deleteSelOrAll(*arg):
    """Delete rigNodes for selected objects or all if nothing selected"""

    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        for rigN in rigNodes:
            deleteTgt(rigN)


def update_anchor_conn():
    """Update anchor connections for all rigNodes"""

    logging.info("Update all anchor connections")

    rigNodes = getRigNodesAll()
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
                    logging.warning("Ignore connecting anchors from the same rigNode.")

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


def reset_all_ctl():
    """Reset all ctl's attr to default"""

    logging.info("Reset all ctl's attr")

    for ctl in common.getRigCtlsAll():
        for attr in ctl.a.list(k=1, u=1, se=1, s=1):
            if attr.settable():
                attr.reset()


def reset_all_pv_ctl():
    """Reset all poleVector ctl's attr to default"""

    logging.info("Reset all pv ctl's attr")
    for rigNode in getRigNodesAll():

        rID = rigNode.a.rigID.get()
        pvc = rigNode.a.pvc.inConnNode
        guide = DagNode(rID + "_pvc_guide")

        if pvc and guide and pvc.exists() and guide.exists():
            pvc.snapTo(guide)


def update_space_switch():
    """Update space switch for all rigNodes"""

    logging.info("Update all space switches")
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
    for node in getRigNodesAll():
        if node != rigNode:
            spaceDict.update(getSpaceObj(node))
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
    for node in getRigNodesAll():
        for udAttr in node.a.list(ud=1):
            if udAttr.name.startswith("spaceHolder"):
                obj = udAttr.inConnNode
                spaceNameAttr = node.a["spaceName" + udAttr.name[-1]]
                if obj and obj.exists() and spaceNameAttr.exists():
                    ctlList.append(
                        (
                            obj,
                            spaceNameAttr.get().split(", "),
                            node,
                        )
                    )
    return ctlList


def getRigNodesSelOrAll():
    """Return rigNodes from selected objects or all rigNodes if nothing selected"""

    rigNodes = []
    selList = mc.ls(sl=1)
    if selList:
        for obj in selList:
            n = getRigNode(obj)
            if n:
                rigNodes.append(n)
    else:
        rigNodes = getRigNodesAll()

    return rigNodes


def getRigNodesAll():
    """Return all rigNodes in the scene"""

    return [DagNode(r) for r in mc.ls("*RGN", type="script")]


def getRigNode(obj):
    """Return rigNode for input object"""

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


def autoAttachJntToSurf():
    """Auto attach joints to surface for all ribbon rigNodes"""

    masterCtl = DagNode("master_ctl")
    if not masterCtl.exists():
        raise ValueError("master_ctl NOT found.")

    globalScale = masterCtl.a["globalScale"]
    if not globalScale.exists():
        raise ValueError("globalScale attr NOT found")

    for node in getRigNodesAll():
        if node.a.nodeState.get() == 2:
            #
            #   Process only if rbJntSet found
            #
            rbJntSetAttr = node.a["rbJntSet"]
            if rbJntSetAttr.exists():

                rbSrfAttr = node.a["rbSrf"]
                if not rbSrfAttr.exists():
                    raise ValueError(f"Attr rbSrf NOT found in {node}.")
                #
                #   check set rbJntSet
                #
                rbJntSetName = rbJntSetAttr.get()
                rbJntSet = DagNode(rbJntSetName)
                if not rbJntSet.exists():
                    raise ValueError(f"Set {rbJntSetName} NOT found.")

                rbJnts = mc.sets(rbJntSet, q=1)
                if not rbJnts:
                    raise ValueError(f"No joints found in Set {rbJntSet}.")
                #
                #   check surface rbSrf
                #
                rbSrf = rbSrfAttr.inConnNode
                if not rbSrf:
                    raise ValueError("Surface object NOT found.")
                #
                #   attach joints in set to srf
                #
                # if rbSrf and rbJnts:
                from nl_modules.utils import common

                common.ribbonAttach(
                    geo=rbSrf,
                    tgtList=rbJnts,
                    scaleAttr=globalScale,
                    p=DagNode("RIG"),
                )
                # else:
                #     logging.info("Ignore invalid surf and joints")

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
