import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode

# Must keep it ------------------------------
from nl_modules.build.leg import Leg
from nl_modules.build.hand import Hand
from nl_modules.build.arm import Arm
from nl_modules.build.head import Head
from nl_modules.build.neckSrf import NeckSrf
from nl_modules.build.spineSrf import SpineSrf
from nl_modules.build.quadLeg import QuadLeg
from nl_modules.build.quadFLeg import QuadFLeg
from nl_modules.build.quadNeckSrf import QuadNeckSrf
from nl_modules.build.quadSpineSrf import QuadSpineSrf
from nl_modules.build.tailSrf import TailSrf

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
        spineSrf0_RGN
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
        rigObj = eval(rigClass)(rigN)  # Create component object of class 'rigClass'
        if rigObj:
            state = rigN.a.nodeState.get()
            if state == 0:
                rigObj.genSk()
                rigObj.build()
            elif state == 1:
                rigObj.build()
            mc.refresh(cv=1)


@Undo("buildSelOrAll")
def buildSelOrAll(*arg):
    rigNodes = getRigNodesSelOrAll()
    if rigNodes:
        for p in mc.getPanel(type="modelPanel"):
            mc.modelEditor(p, e=1, wos=1)  # , jx=1)
        mc.setAttr('hardwareRenderingGlobals.ssaoEnable', 1)
        # mc.setAttr('hardwareRenderingGlobals.multiSampleEnable', 1)
        for rigN in rigNodes:
            buildTgt(rigN)
        updateAnchorConn()
        updateSpaceSwitch()
        mc.select(cl=1)


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
        updateAnchorConn()
        updateSpaceSwitch()
        mc.select(cl=1)
        print()


def deleteTgt(rigNode):
    """Delete guide component for input rigNode"""
    # rN = DagNode(rigNode) if isinstance(rigNode, str) else rigNode
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
                    logging.debug(f'Connecting {closestMaleAnchor.name} to {fAnchor.name}')
                    closestMaleAnchor.cstPar(fAnchor, mo=1)
                else:
                    logging.debug('Ignore connecting anchors from the same rigNode.')

    # ---------------------------------------------------------------
    #  Create isolate neck to spine setup for standard quadruped
    # ---------------------------------------------------------------
    # neckCog = DagNode('qNeckSrf0_cog_ctl')
    # spineCtl = DagNode('qSpineSrf0_tp_ctl')
    # worldSpace = DagNode('master_ctl')
    # if all([neckCog.exists(), spineCtl.exists(), worldSpace.exists()]):
    #     RigModule.isolateNeckToSpine(neckCog, spineCtl, worldSpace)

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
            cstNode = ctl.parent.getCstNodes(cstType='parentConstraint')
            if cstNode:
                spaceG = cstNode[0].a.target.inConnNode
                if spaceG:
                    if isinstance(spaceG, list):
                        [mc.delete(g.parent) for g in spaceG]
                    else:
                        mc.delete(spaceG.parent)

        spaceDict = collectSpaceObj(rigNode)
        # ------------------------------------
        # e.g.
        #   'COG': cog_ikc,
        #   'master': master_ctl,
        #   'arm': lf_arm_ikc
        # ------------------------------------
        resultDict = {}
        for s in spaceList:
            if s in spaceDict and spaceDict[s]:
                resultDict[s] = spaceDict[s]
        # ------------------------------------
        # e.g.
        #   'master': master_ctl,
        #   'arm': lf_arm_ikc
        # ------------------------------------
        RigModule.spaceAlign(
            ctl, names=":".join(resultDict.keys()), spaces=resultDict.values()
        )


def getSpaceObj(rigNode):
    """ Return space:obj dict for rigNode
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
    """ Return space:obj dict for all rigNodes.
    [ Since both left and right arm ctl have the same 'arm', 'rigNode' is appended last ]
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
            return nodes[0]
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

# for p in mc.getPanel(type="modelPanel"):
#     mc.modelEditor(p, e=1, activeView=1, wos=1)

# def disconnectAnchors():
#     """Disconnect all Female anchors"""
#     femaleAnchors = getRigNodeLinked("anchorF")
#     for fAnchor in femaleAnchors:
#         fAnchor.removeCstNodes()
