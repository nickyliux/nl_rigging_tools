import logging
from platform import node
import maya.cmds as mc

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common
from nl_modules.utils import control
from nl_modules.utils import log
from nl_modules.utils import proxy
from nl_modules.utils import matrix
from nl_modules.utils import utils_node as ut

# Import rig components, required for evalation
from nl_modules.build.head import Head
from nl_modules.build.neck_bp import NeckBp
from nl_modules.build.spine_bp import SpineBp
from nl_modules.build.arm_bp import ArmBp
from nl_modules.build.hand_bp import HandBp

from nl_modules.build.leg_bp import LegBp
from nl_modules.build.leg_qd import LegQd
from nl_modules.build.neck_qd import NeckQd
from nl_modules.build.spine_qd import SpineQd
from nl_modules.build.tail import Tail
from nl_modules.build.belt import Belt
from nl_modules.build.finger_fk import FingerFk
from nl_modules.build.simple_fk import SimpleFk

from nl_modules.build.rig_module import RigModule


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
        rigClass = rigN.a["rigClass"].get()
        rigObj = eval(rigClass)(rigN)
        if rigObj:
            state = rigN.a["nodeState"].get()
            if state == 0:
                sk = rigObj.gen_sk()
                if sk:
                    rigObj.build()
                else:
                    logging.warning(f"Skip building {rigN.name}, no skeleton found.")


def toggleGuide(*args):
    """Show guide and hide rig if state is True, else show rig and hide guide"""
    chr = DagNode("CHR")
    g = DagNode("modules_grp")
    if chr.exists() and g.exists():
        chrVis = chr.a.v.get()
        if chrVis:
            chr.hide()
            for child in g.getChildren():
                child.show()
        else:
            chr.show()
            for node in getRigNodes_all():
                if node.a.nodeState.get() == 2:
                    grp = node.a.moduleG.inConnNode
                    if grp and grp.exists():
                        grp.hide()


@common.Undo("buildSelOrAll")
def buildSelOrAll(*args):
    """Build rig for selected rigNodes or all if nothing selected"""
    rigNodes = getRigNodes_selOrAll()
    rigNodesToBuild = []

    for rN in rigNodes:
        state = rN.a.nodeState.get()
        if state == 0:
            rigNodesToBuild.append(rN)

    if rigNodesToBuild:

        chr = DagNode("CHR")
        if chr.exists():
            chr.show()

        buildCount = len(rigNodesToBuild)
        common.pauseVP(1)
        # showLog = args and len(args) > 1 and args[1] == 1
        log.update_root_logger(create_window=False)

        mc.progressWindow(
            t="Build", pr=0, status="\nPreparing ...", ii=0, maxValue=buildCount
        )
        for i, rN in enumerate(rigNodesToBuild):
            logging.info(f"({i+1}) {rN.name}")
            buildTgt(rN)
            mc.progressWindow(e=1, pr=i, status=f"\n{rN}  [ {i} / {buildCount} ]")
            mc.refresh(f=1)
        postRig()
        if args and args[0] == 1:
            proxy.genProxyForSet()

        mc.progressWindow(ep=1)

        logging.info(f"{buildCount} modules built.")
        logging.info("Build completed.")
        print()

        mc.select(cl=1)
        common.pauseVP(0)


def postRig():
    """Post rigging operations"""
    logging.info(".")
    addMasterAttrs()
    control.reset_all_ctl()
    update_anchor_conn()
    update_space_switch()
    common.showRO()


def addMasterAttrs():
    """Add proxy attributes to master2_ctl"""
    ctl = DagNode("master2_ctl")
    if not ctl.exists():
        logging.warning("master2_ctl NOT found.")
        return

    grp = DagNode("CTL_VIS")
    if grp.exists():
        ctl.a.add("ctlVis", k=0, type="bool", dv=1) >> grp.a.v

    ctl.a.addSep()

    grp = DagNode("JNT")
    if grp.exists():
        ctl.a.add("jointVis", k=0, type="bool", dv=1) >> grp.a.v
        grp.a.overrideEnabled.set(1)
        ctl.a.add("jointLock", k=0, type="bool", dv=0) * 2 >> grp.a.overrideDisplayType

    ctl.a.addSep()

    grp = DagNode("PRX")
    if grp.exists():
        ctl.a.add("proxyVis", k=0, type="bool", dv=1) >> grp.a.v
        grp.a.overrideEnabled.set(1)
        ctl.a.add("proxyLock", k=0, type="bool", dv=0) * 2 >> grp.a.overrideDisplayType

    ctl.a.addSep()

    grp = DagNode("MDL")
    if grp.exists():
        ctl.a.add("modelVis", k=0, type="bool", dv=1) >> grp.a.v
        grp.a.overrideEnabled.set(1)
        ctl.a.add("modelLock", k=0, type="bool", dv=0) * 2 >> grp.a.overrideDisplayType


def unbuildTgt(rN):
    """Unbuild target rigNode"""
    rN = DagNode(rN) if isinstance(rN, str) else rN
    if rN.exists():
        state = rN.a.nodeState.get()
        if state == 2:
            rigClass = rN.a.rigClass.get()
            rigObj = eval(rigClass)(rN)
            logging.info(f"Un-building {rN.name} ...")
            rigObj.unbuild_pre_module()
            return 1
    return 0


@common.Undo("unbuildSelOrAll")
def unbuildSelOrAll(*arg):
    """Unbuild rig for selected rigNodes or all if nothing selected"""
    rigNodes = getRigNodes_selOrAll()
    control.reset_all_ctl()
    mc.refresh(f=1)

    unBuilt = 0
    for rN in rigNodes:
        unBuilt += unbuildTgt(rN)

    logging.info(f"{unBuilt} modules un-built.")
    logging.info("Un-build completed.")
    print()

    allMG = [n.a.master_guide.inConnNode for n in rigNodes]
    if allMG:
        mc.select(allMG)


def deleteTgt(rN):
    """Delete guide component for input rigNode"""
    rN = DagNode(rN) if isinstance(rN, str) else rN
    if rN.exists():
        rigID = rN.a.rigID.get()
        obj = mc.ls(rigID + "_*")
        if obj:
            mc.delete(obj)
            rN.delete()


@common.Undo("deleteSelOrAll")
def deleteSelOrAll(*arg):
    """Delete rigNodes for selected objects or all if nothing selected"""
    rigNodes = getRigNodes_selOrAll()
    for rN in rigNodes:
        deleteTgt(rN)
    logging.info(f"Deleted {len(rigNodes)} rigNodes.")


def update_anchor_conn():
    """Update anchor connections for all rigNodes"""
    rigNodes = getRigNodes_all()
    if not rigNodes or len(rigNodes) < 2:
        logging.warning("No anchor connection made for no or single rigNode found.")
        return

    socketAnchors = getAnchors(rigNodes, startStr="anchorS")
    if socketAnchors:
        [anchor.removeCstNodes() for anchor in socketAnchors]
    else:
        logging.warning("No socket anchors found.")
        return

    update_count = 0
    # Iterate through each rigNode to find and connect the closest plug anchor
    for node in rigNodes:
        for anchor in ["anchorS1", "anchorS2"]:
            socket = node.a[anchor].inConnNode
            if not socket or not socket.exists():
                continue

            master_guide = node.a.master_guide.inConnNode
            if not master_guide or not master_guide.exists():
                continue

            parentNameMatch = master_guide.a.parentNameMatch.get()
            parentRigNodes = getRigNodes_all(match=parentNameMatch)

            # if not parentRigNodes:
            #     logging.warning(f"No parent rigNode found for {node.name}.")
            #     continue

            if (
                parentRigNodes and node in parentRigNodes
            ):  # Remove self if in parent list
                parentRigNodes.remove(node)

            if len(parentRigNodes) == 0:  # No parent rigNode found
                logging.warning(f"No parent rigNode found for {node.name}.")
                continue

            plugAnchors = getAnchors(parentRigNodes, startStr="anchorP")
            if not plugAnchors or len(plugAnchors) == 0:
                continue

            dist_dict = {}
            for anchorP in plugAnchors:
                dist_dict[anchorP] = socket.o.distanceTo(anchorP)

            closestPlugAnchor = min(dist_dict, key=dist_dict.get)

            closestPlugAnchor.cstPar(socket, mo=1)
            update_count += 1
            # logging.info(f"{closestPlugAnchor.name} >> {socket.name}.")

    logging.info(f"{update_count} anchor connections updated.")


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


def update_space_switch():
    """Update space switch for all rigNodes"""
    spaceData = collect_space_data()
    update_count = 0
    for ctl, spaceList, rigNode in spaceData:
        if ctl.a.space.exists():
            # delete space and related groups
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
        spaceDict = collect_space_obj(rigNode)
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
            update_count += 1

    logging.info(f"{update_count} space switches updated.")


def get_space_obj(rigNode):
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


def collect_space_obj(rigNode):
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
    for node in getRigNodes_all():
        if node != rigNode:
            spaceDict.update(get_space_obj(node))
    #
    #   get all driving rigNodes
    #
    socketAnchors = getAnchors([rigNode], startStr="anchorS")
    if socketAnchors:
        drivingAnchors = socketAnchors[0].getCstObjects(cstType="parentConstraint")
        if drivingAnchors:
            drivingRN = getRigNode(drivingAnchors[0])
            spaceDict.update(get_space_obj(drivingRN))
    #
    #   as lf & rt arm ctl can have the same 'arm' space
    #   so its rigNode will be updated last
    #
    spaceDict.update(get_space_obj(rigNode))
    return spaceDict


def collect_space_data():
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
    for node in getRigNodes_all():
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


def cleanUpScene():
    """Clean up scene by removing configuration script nodes."""
    n = mc.ls("*_sceneConfigurationScriptNode", "*_uiConfigurationScriptNode")
    if n:
        mc.delete(n)


def removeOrphanRigNodes():
    """Remove rigNodes with no skeleton."""

    import maya.mel as mel

    mel.eval("MLdeleteUnused;")

    rigNodes = getRigNodes_all()
    removeCount = 0
    for node in rigNodes:
        mg = node.a.moduleG.inConnNode
        if not mg or not mc.objExists(mg):
            node.delete()
            removeCount += 1
    logging.info(f"{removeCount} orphan rigNodes removed.")


def getRigNodes_selOrAll():
    """Return rigNodes from selected objects or all rigNodes if nothing selected"""
    rigNodes = []
    selList = mc.ls(sl=1)
    if selList:
        for obj in selList:
            n = getRigNode(obj)
            if n:
                rigNodes.append(n)
    else:
        rigNodes = getRigNodes_all()

    return rigNodes


def getRigNodes_all(match="*"):
    """Return all rigNodes in the scene, optional name match filter"""
    parts = match.split(",")
    returnNodes = []
    for part in parts:
        returnNodes.extend([DagNode(r) for r in mc.ls(part + "RGN", type="script")])
    return returnNodes


def getRigNode(obj):
    """Return rigNode for input object"""
    if mc.objExists(obj):
        nodes = DagNode(obj).a.message.outConnNode
        if nodes:
            for n in nodes:
                if n.type == "script":
                    return n
        # else:
        #     logging.info(f"No connected rigNode found for {obj}")
    else:
        logging.info("Get rigNode for non-existing object.")


def boneAutoAttach():
    """Auto attach joints to surface for all rigNodes."""
    masterCtl = DagNode("master_ctl")
    if not masterCtl.exists():
        raise ValueError("master_ctl NOT found.")

    globalScale = masterCtl.a["globalScale"]
    if not globalScale.exists():
        raise ValueError("globalScale attr NOT found")

    for node in getRigNodes_all():

        if node.a.nodeState.get() != 2:
            continue

        rbJntSetName = node.a["rbJntSet"].get()
        rbJnts = common.getSetMembersInOrder(rbJntSetName)
        if not rbJnts:
            continue

        rbSrf = node.a["rbSrf"].inConnNode
        rbSrfSk = node.a["rbSrfSk"].inConnNode
        rigID = node.a.rigID.get()

        if not all([rbSrfSk, rbSrf]):
            logging.warning(f"{node.name}: Missing srf & srfSk for attachment.")
            continue

        attachToTwoSrfUVPin(rigID, rbJnts, rbSrf, rbSrfSk, globalScale, DagNode("JNT"))


# def attachToTwoSrfMtx(rigID, tgts, srf, srfSk, globalScale, grp):
#     """Attach joints with matrix, position from srfSk, orientation from srf """
#     outLocs = []
#     tmpLoc = LocNode('temp_#')

#     attachGrp = GrpNode(f'{rigID}_attachGrp', p=grp)
#     for j in tgts:
#         tmpLoc.snapTo(j)
#         dcpM_t = matrix.attachMtx(srfSk, refLoc=tmpLoc)
#         dcpM_r = matrix.attachMtx(srf, refLoc=tmpLoc)

#         outLoc = LocNode('attach_loc_#', p=attachGrp)
#         dcpM_t.a.outputTranslate >> outLoc.a.translate
#         dcpM_r.a.outputRotate >> outLoc.a.rotate
#         outLocs.append(outLoc)
#     tmpLoc.delete()

#     for loc, jnt in zip(outLocs, tgts):
#         jnt | loc
#         globalScale >> loc.a.s


def attachToTwoSrfUVPin(rigID, tgts, srf, srfSk, globalScale, grp):
    """Attach joints with uvPin, position from srfSk, orientation from srf"""
    logging.info(f"Attach joints for {rigID}")
    dcpM_ts = common.attachUVPin(tgtList=tgts, geo=srfSk)
    dcpM_rs = common.attachUVPin(tgtList=tgts, geo=srf)

    attachGrp = GrpNode(f"{rigID}_attachGrp", p=grp)
    for i, tgt in enumerate(tgts):
        loc = LocNode("attach_loc_#", p=attachGrp)
        dcpM_ts[i].a.outputTranslate >> loc.a.translate
        dcpM_rs[i].a.outputRotate >> loc.a.rotate
        tgt | loc
        globalScale >> loc.a.s


def addNoiseLogic(ctl=None, targets=None, rot=0):
    """Build the sine wave motion for the tail rig.
    Example use:
        from nl_modules.utils import build
        build.add_noise_logic('nurbsCircle1', ['locator1'])
    """
    ctl = DagNode(ctl)
    if not ctl.exists():
        raise ValueError(f"Control NOT found.")
    if not isinstance(targets, list):
        raise ValueError(f"Targets must be a list.")

    frame = DagNode("time1").a.outTime
    # Control attributes for sine wave motion
    fps = ctl.a.add("fps", dv=24, k=0)
    freq = ctl.a.add("freq", dv=1)
    drag = ctl.a.add("drag", dv=3)
    falloff = ctl.a.add("falloff", dv=0.8, min=0, max=1)

    xA = ctl.a.add("xAmplitude")
    yA = ctl.a.add("yAmplitude")
    zA = ctl.a.add("zAmplitude")
    xOffset = ctl.a.add("xOffset", dv=0)
    yOffset = ctl.a.add("yOffset", dv=0)
    zOffset = ctl.a.add("zOffset", dv=0)
    noiseShake = ctl.a.add("noiseShake", min=0.01, dv=1)
    xN = ctl.a.add("xNoise", dv=0)
    yN = ctl.a.add("yNoise", dv=0)
    zN = ctl.a.add("zNoise", dv=0)

    total = len(targets)
    for i, tgt in enumerate(targets):

        frame_delayed = freq * frame - i * drag

        xTime = (frame_delayed - xOffset) / fps
        yTime = (frame_delayed - yOffset) / fps
        zTime = (frame_delayed - zOffset) / fps

        tgt = DagNode(tgt)
        valX = xA * ut.sin_(360 * xTime) + xN * ut.noise_(xTime, noiseShake)
        valY = yA * ut.sin_(360 * yTime) + yN * ut.noise_(yTime, noiseShake)
        valZ = zA * ut.sin_(360 * zTime) + zN * ut.noise_(zTime, noiseShake)

        blend = ut.blend2_(1, (i / total), w=falloff)
        if rot == 0:
            valX * blend >> tgt.a.tx
            valY * blend >> tgt.a.ty
            valZ * blend >> tgt.a.tz
        else:
            valX * blend >> tgt.a.rx
            valY * blend >> tgt.a.ry
            valZ * blend >> tgt.a.rz


def attachFgrRef(targets, xDir=1):
    """
    Attach finger references to the specified targets.
    # run below to add cross mesh for entire hand

    from nl_modules.utils import build
    for i in range(5):
        build.attachFgrRef(mc.ls('fgr0' + str(i) + '_?_guide'), xDir=1)
    """
    fgrRefSrc = DagNode("fgrRef")
    grp = GrpNode("fgrRef_grp")

    if not fgrRefSrc.exists():
        raise NameError('Missing object "fgrRef"')
    if not isinstance(targets, list) or len(targets) < 2:
        raise NameError("At least 2 objects must be provided in a list")

    for tgt, tgtAim in zip(targets[:-1], targets[1:]):
        # Create a new instance of the finger reference
        fgrRef = DagNode(mc.instance(fgrRefSrc)[0])
        fgrRef.dspType = 2
        fgrRef | grp

        tgtPos = DagNode(tgt)
        tgtPos.cstPoi(fgrRef)

        DagNode(tgtAim).cstAim(
            fgrRef,
            aimVector=(xDir, 0, 0),
            worldUpType="objectrotation",
            worldUpObject=tgtPos,
        )


def quickSnapMidFgr(pf=""):
    """
    from nl_modules.utils import build
    build.quickSnapMidFgr('lfHand0')
    build.quickSnapMidFgr('rtHand0')
    """
    """Quick snap the mid finger guides."""
    guides_01 = mc.ls(pf + "_fgr01_?_guide")
    guides_02 = mc.ls(pf + "_fgr02_?_guide")
    guides_03 = mc.ls(pf + "_fgr03_?_guide")
    guides_04 = mc.ls(pf + "_fgr04_?_guide")

    common.cstMulti(
        guides_01[1], guides_04[1], guides_02[1], cstType="ori", w=2 / 3, delete=1
    )
    common.cstMulti(
        guides_01[1], guides_04[1], guides_03[1], cstType="ori", w=1 / 3, delete=1
    )
    for i, g in enumerate(guides_01):
        common.cstMulti(
            guides_01[i], guides_04[i], guides_02[i], cstType="poi", w=2 / 3, delete=1
        )
        common.cstMulti(
            guides_01[i], guides_04[i], guides_03[i], cstType="poi", w=1 / 3, delete=1
        )


#
# EXPRESSION
#
# $fps = tail_CON.fps;
# $freq = tail_CON.freq;
# $delay = tail_CON.delay;
# $xAmp = tail_CON.xAmplitude;
# $yAmp = tail_CON.yAmplitude;
# $zAmp = tail_CON.zAmplitude;
# $xOfs = tail_CON.xOffset;
# $yOfs = tail_CON.yOffset;
# $zOfs = tail_CON.zOffset;
# $xN = tail_CON.xNoise;
# $yN = tail_CON.yNoise;
# $zN = tail_CON.zNoise;

# proc float calc(int $i, float $localOffset) {
#     return ($freq * (time * $fps) - $i * $delay - $localOffset) / $fps;
# }

# tgt1.tx = $xAmp * sind(360 * calc(1, $xOfs)) + $xN * noise (calc(1, $xOfs));
# tgt2.tx = $xAmp * sind(360 * calc(2, $xOfs)) + $xN * noise (calc(2, $xOfs));
# tgt3.tx = $xAmp * sind(360 * calc(3, $xOfs)) + $xN * noise (calc(3, $xOfs));

# tgt1.ty = $yAmp * sind(360 * calc(1, $yOfs)) + $yN * noise (calc(1, $yOfs));
# tgt2.ty = $yAmp * sind(360 * calc(2, $yOfs)) + $yN * noise (calc(2, $yOfs));
# tgt3.ty = $yAmp * sind(360 * calc(3, $yOfs)) + $yN * noise (calc(3, $yOfs));

# tgt1.tz = $zAmp * sind(360 * calc(1, $zOfs)) + $zN * noise (calc(1, $zOfs));
# tgt2.tz = $zAmp * sind(360 * calc(2, $zOfs)) + $zN * noise (calc(2, $zOfs));
# tgt3.tz = $zAmp * sind(360 * calc(3, $zOfs)) + $zN * noise (calc(3, $zOfs));


# startTime = time.time()
# endTime = time.time()
# print(f"--------- Build Time: {endTime - startTime:.2}s")

# def disconnectAnchors():
#     """Disconnect all socket anchors"""
#     socketAnchors = getRigNodeLinked("anchorS")
#     for sAnchors in socketAnchors:
#         sAnchors.removeCstNodes()
#     for sAnchors in socketAnchors:
#         sAnchors.removeCstNodes()
