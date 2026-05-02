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
from nl_modules.utils import utils_node as ut

# Import rig components, required for evalation
from nl_modules.build.head import Head

# from nl_modules.build.neck_bp import NeckBp
from nl_modules.build.spine_bp import SpineBp
from nl_modules.build.arm_bp import ArmBp
from nl_modules.build.hand_bp import HandBp

from nl_modules.build.leg_bp import LegBp
from nl_modules.build.leg_qd import LegQd
from nl_modules.build.neck import Neck
from nl_modules.build.spine_qd import SpineQd
from nl_modules.build.tail import Tail
from nl_modules.build.belt import Belt
from nl_modules.build.finger_fk import FingerFk
from nl_modules.build.simple_fk import SimpleFk

from nl_modules.build.rig_module import RigModule


def getAnchors(targets, startStr=""):
    """Return objects from all targets having attr starts with str"""
    linkedObjs = []
    for node in [DagNode(r) for r in targets]:
        if node.a.nodeState.get() == 2:
            userAttrs = node.a.list(ud=1, at="message")
            for uAttr in userAttrs:
                obj = uAttr.inConnNode
                if obj and type(obj) != list and uAttr.name.startswith(startStr):
                    linkedObjs.append(obj)
    return linkedObjs


def buildTgt(mg):
    """Build target mgode"""
    if mg:
        rigClass = mg.a["rigClass"].get()
        rigObj = eval(rigClass)(mg)
        if rigObj:
            state = mg.a["nodeState"].get()
            if state == 0:
                sk = rigObj.gen_sk()
                if sk:
                    rigObj.build()
                else:
                    logging.warning(f"Skip building {mg.name}, no skeleton found.")


@common.Undo("buildGuide")
def buildGuide(*args):
    """Build rig for selected or all master guides."""
    MGs = collectMasterGuide(isSel=1)
    guidesToBuild = []

    for mg in MGs:
        state = mg.a.nodeState.get()
        if state == 0:
            guidesToBuild.append(mg)

    if guidesToBuild:
        chr = DagNode("CHR")
        if chr.exists():
            chr.show()

        guideCount = len(guidesToBuild)
        log.update_root_logger(create_window=0)

        mc.progressWindow(
            t="Build", pr=0, status="\nPreparing ...", ii=0, maxValue=guideCount
        )
        common.pauseVP(1)
        for i, mg in enumerate(guidesToBuild):
            logging.info(f"({i+1}) {mg.name}")
            buildTgt(mg)
            mc.progressWindow(e=1, pr=i, status=f"\n{mg.name}  [ {i} / {guideCount} ]")
            mc.refresh()
        postRig()
        common.pauseVP(0)

        mc.progressWindow(ep=1)
        logging.info(f"{guideCount} guide(s) built.")
        print()

        mc.select(cl=1)
        master2_ctl = DagNode("master2_ctl")
        if master2_ctl.exists():
            master2_ctl.a.ctlVis.set(1)


def postRig():
    """Post rigging operations"""
    logging.info(".")
    addMasterAttrs()
    control.reset_all_ctl()
    update_anchor_conn()
    update_space_switch()
    common.showRO()

    proxy.genProxyForSet()

    guide_grp = DagNode("GUIDES")
    if guide_grp.exists():
        guide_grp.hide()


def addMasterAttrs():
    """Add proxy attributes to master2_ctl"""
    master2_ctl = DagNode("master2_ctl")

    if not master2_ctl.exists():
        logging.warning("master2_ctl NOT found.")
        return

    _GROUPS = [
        ("_" * 8, "master1_ctl", "ctlVis", None),
        ("_" * 9, "PRX", "proxyVis", "proxyRef"),
        ("_" * 10, "JNT", "jointVis", "jointRef"),
        ("_" * 11, "MDL", "modelVis", "modelRef"),
    ]
    for sep, grpName, visAttr, lockAttr in _GROUPS:
        grp = DagNode(grpName)
        if grp.exists():
            master2_ctl.a.addSep(sep)
            master2_ctl.a.add(visAttr, k=0, type="bool", dv=1) >> grp.a.v
            if lockAttr:
                grp.a.overrideEnabled.set(1)
                (
                    master2_ctl.a.add(lockAttr, k=0, type="bool", dv=0) * 2
                    >> grp.a.overrideDisplayType
                )
    DagNode("master_ctl").a.showAttr(t=1, r=1)
    DagNode("master1_ctl").a.showAttr(t=1, r=1)

    logging.info(f"Added attrs to {master2_ctl.name}.")


def unbuildTgt(mg):
    """Unbuild for target master guide"""
    mg = DagNode(mg) if isinstance(mg, str) else mg
    if mg.exists():
        state = mg.a.nodeState.get()
        if state == 2:
            rigClass = mg.a.rigClass.get()
            rigObj = eval(rigClass)(mg)
            logging.info(f"Unbuilding {mg.name}")
            rigObj.unbuild_pre_module()
            return 1
    return 0


@common.Undo("unbuildGuide")
def unbuildGuide(*arg):
    """Unbuild rig for selected or all master guides."""
    MGs = collectMasterGuide(isSel=1)
    if MGs:
        control.reset_all_ctl()

        count = 0
        for mg in MGs:
            count += unbuildTgt(mg)

        logging.info(f"{count} guide(s) unbuilt.")
        logging.info("Unbuild done.")

        mc.select(cl=1)
        if MGs:
            mc.select(MGs)


def deleteTgt(mg):
    """Delete guide component the master guide"""
    mg = DagNode(mg) if isinstance(mg, str) else mg
    if mg.exists():
        rigID = mg.a.rigID.get()
        obj = mc.ls(rigID + "_*")
        if obj:
            mc.delete(obj)
            mg.delete()


def update_anchor_conn():
    """Update anchor connections for all master guides"""
    allMGs = collectMasterGuide()
    if not allMGs or len(allMGs) < 2:
        logging.warning(
            "No anchor connection made for no or single master guide found."
        )
        return

    socketAnchors = getAnchors(allMGs, startStr="anchorS")
    if socketAnchors:
        [anchor.removeCstNodes() for anchor in socketAnchors]
    else:
        logging.warning("No socket anchors found.")
        return

    update_count = 0
    # Iterate through each master guide to find and connect the closest plug anchor
    for mg in allMGs:
        for anchor in ["anchorS1", "anchorS2"]:
            socket = mg.a[anchor].inConnNode
            if not socket or not socket.exists():
                continue

            parentNameMatch = mg.a.parentNameMatch.get()
            parentMGs = collectMasterGuide(match=parentNameMatch)

            if parentMGs and mg in parentMGs:  # Remove self if in parent list
                parentMGs.remove(mg)

            if len(parentMGs) == 0:  # No parent master guide found
                logging.info(f"No parent master guide found for {mg.name}.")
                continue

            plugAnchors = getAnchors(parentMGs, startStr="anchorP")
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
    """Update space switch for all master guides"""
    spaceData = collect_space_data()

    update_count = 0
    for ctl, spaceList, mg in spaceData:

        if ctl.a.paSpace.exists():

            # delete space and related groups
            ctl.a.paSpace.delete()

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
        spaceDict = collect_space_obj(mg)
        # print(spaceDict)

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
            tgtCstType = "par"
            v = ctl.a["spaceType"]
            if v.exists():
                if v.get() == 1:
                    tgtCstType = "ori"
                elif v.get() == 2:
                    tgtCstType = "pos"

            RigModule.space_align(
                ctl,
                cstType=tgtCstType,
                names=":".join(resultDict.keys()),
                spaces=resultDict.values(),
            )
            update_count += 1

    logging.info(f"{update_count} space switches updated.")


def get_space_obj(mg):
    """Return space:obj dict for mg
    e.g.
        mg.space_arm -> lfArm0_softJ
        mg.space_clavicle -> lfArm0_clavicle_fkc
        mg.space_master -> master_ctl

        Return
        {
            'arm':      'lfArm0_softJ',
            'clavicle': 'lfArm0_clavicle_fkc',
            'master':   'master_ctl'
        }
    """
    spaceDict = {}
    for udAttr in mg.a.list(ud=1):  # , hasData=1):
        if udAttr.name.startswith("space_"):
            obj = udAttr.inConnNode
            if obj and obj.exists():
                spaceName = udAttr.name.split("_")[1]
                spaceDict[spaceName] = obj
    return spaceDict


def collect_space_obj(mg):
    """
    Return space:obj dict for all master guides.

    For cases like palm roll, driving master guide updated second last
    For cases like arm poleVector, its master guide is updated last
    e.g.
        {
            'COG':      cog_ikc,
            'arm':      lf_arm_ikc
            'clavicle': lfArm0_clavicle_fkc,
            'master':   master_ctl,
        }
    """
    spaceDict = {}
    for m in collectMasterGuide():
        if m != mg:
            spaceDict.update(get_space_obj(m))
    #
    #   get all driving master guides
    #
    socketAnchors = getAnchors([mg], startStr="anchorS")
    if socketAnchors:
        drivingAnchors = socketAnchors[0].getCstObjects(cstType="parentConstraint")
        if drivingAnchors:
            driverMG = getMGFrName(drivingAnchors[0])
            spaceDict.update(get_space_obj(driverMG))
    #
    #   as lf & rt arm ctl can have the same 'arm' space
    #   so its master guide will be updated last
    #
    spaceDict.update(get_space_obj(mg))
    return spaceDict


def collect_space_data():
    """Return [ctl, objects, master guide] from "spaceHolder*" attr from all master guides.
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
    allMGs = collectMasterGuide()
    for mg in allMGs:
        for udAttr in mg.a.list(ud=1):  # , hasData=1):
            if udAttr.name.startswith("spaceHolder"):
                obj = udAttr.inConnNode
                spaceNameAttr = mg.a["spaceName" + udAttr.name[-1]]
                if obj and obj.exists() and spaceNameAttr.exists():
                    ctlList.append(
                        (
                            obj,
                            spaceNameAttr.get().split(", "),
                            mg,
                        )
                    )
    return ctlList


def cleanUpScene():
    """Clean up scene by removing configuration script nodes."""
    n = mc.ls("*_sceneConfigurationScriptNode", "*_uiConfigurationScriptNode")
    if n:
        mc.delete(n)


def collectMasterGuide(isSel=0, isAll=1, match="*"):
    """Collect master guides based on selection or all in the scene, with optional name matching.
    By default, it collects all master guides in the scene
    For isSel: 1, isAll: 0 it collects selected only
    For isSel: 1, isAll: 1 it collects selected, or all if nothing selected
    """
    if isSel == 1:
        selList = mc.ls(sl=1, tr=1)
        if selList:
            MGs = []
            for sel in selList:
                n = getMGFrName(sel)
                if n and n not in MGs:
                    MGs.append(n)
            return MGs

    if isAll == 1:
        ns = common.getNsFrOptVar()
        parts = match.split(",")
        MGs = []
        for part in parts:
            mgs = mc.ls(ns + part + "*_master_guide")
            # print(mgs)
            MGs.extend([DagNode(r) for r in mgs])
        return MGs
    return []


def getMGFrName(tgt):
    """Return master guide from given name, return None if not found."""
    # if tgt:
    #     name = DagNode(tgt).name.split("_")[0] + "_master_guide"
    #     if mc.objExists(name):
    #         return DagNode(name)

    tgtN = DagNode(tgt) if isinstance(tgt, str) else tgt
    mgName = tgtN.noNsName.split("_")[0] + "_master_guide"

    ns = tgtN.namespace
    if ns:
        mgName = ns + ":" + mgName

    if mc.objExists(mgName):
        return DagNode(mgName)

    # if tgt:
    #     # ns = common.getNsFrOptVar()
    #     ns = ""
    #
    #     nsSplit = tgtN.name.split(":")
    #     if len(nsSplit) == 2:
    #         ns = nsSplit[0] + ":"
    #     mgName = noNS.split("_")[0] + "_master_guide"
    #     print(mgName)
    #     if mc.objExists(mgName):
    #         return DagNode(mgName)


def boneAutoAttach():
    """Auto attach joints to surface for all master guides."""
    masterCtl = DagNode("master_ctl")
    if not masterCtl.exists():
        mc.confirmDialog(title="Error", message="master_ctl NOT found.", button=["OK"])
        return

    globalScale = masterCtl.a["globalScale"]
    if not globalScale.exists():
        raise ValueError("globalScale attr NOT found")

    for mg in collectMasterGuide():

        if mg.a.nodeState.get() != 2:
            continue

        rbJntSetName = mg.a["rbJntSet"].get()
        rbJnts = common.getSetMembersInOrder(rbJntSetName)
        if not rbJnts:
            continue

        rbSrf = mg.a["rbSrf"].inConnNode
        rbSrfSk = mg.a["rbSrfSk"].inConnNode
        rigID = mg.a.rigID.get()
        grp = DagNode("JNT")

        if rigID.startswith("tail") or rigID.startswith("neck"):
            attachToOneSrfUVPin(rigID, rbJnts, rbSrfSk, globalScale, grp)

        elif rigID.startswith("spineBp") or rigID.startswith("neck"):
            attachToOneSrfUVPin(rigID, rbJnts, rbSrf, globalScale, grp)

        elif rigID.startswith("spineQd"):
            attachToTwoSrfUVPin(rigID, rbJnts, rbSrf, rbSrfSk, globalScale, grp)


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


def attachToOneSrfUVPin(rigID, tgts, srf, globalScale, grp):
    """Attach joints with uvPin, position from srfSk, orientation from srf"""
    logging.info(f"Attach joints for {rigID}")
    dcpMs = common.attachUVPin(tgtList=tgts, geo=srf)

    attachGrp = GrpNode(f"{rigID}_attachGrp", p=grp)
    for i, tgt in enumerate(tgts):
        loc = LocNode("attach_loc_#", p=attachGrp)
        dcpMs[i].a.outputTranslate >> loc.a.translate
        dcpMs[i].a.outputRotate >> loc.a.rotate
        tgt | loc
        globalScale >> loc.a.s


def attachToTwoSrfUVPin(rigID, tgts, srfR, srfT, globalScale, grp):
    """Attach joints with uvPin, orientation from srfR, position from srfT"""
    logging.info(f"Attach joints for {rigID}")
    dcpM_rs = common.attachUVPin(tgtList=tgts, geo=srfR)
    dcpM_ts = common.attachUVPin(tgtList=tgts, geo=srfT)

    attachGrp = GrpNode(f"{rigID}_attachGrp", p=grp)
    for i, tgt in enumerate(tgts):
        loc = LocNode("attach_loc_#", p=attachGrp)
        dcpM_rs[i].a.outputRotate >> loc.a.rotate
        dcpM_ts[i].a.outputTranslate >> loc.a.translate
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
