import logging
import maya.cmds as mc

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils import common
from nl_modules.utils import proxy
from nl_modules.utils import utils_node as ut

# Import rig components, required for evalation
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
from nl_modules.build.finger import Finger

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
                rigObj.gen_sk()
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
        raise ValueError("master_ctl NOT found.")


def preRig():
    """Prepare for rigging"""
    if not mc.objExists("master_ctl"):
        loadBase()
    m = DagNode("master_ctl")
    m1 = m.offset
    for ctl in [m, m1]:
        ctl.a.showAttr(t=1, r=1)


@common.Undo("buildSelOrAll")
def buildSelOrAll(*arg):
    """Build rig for selected rigNodes or all if nothing selected"""
    rigNodes = getRigNodes_selOrAll()
    if rigNodes:
        preRig()
        for rigN in rigNodes:
            buildTgt(rigN)
        addProxyAttrsToMaster()
        postRig()
        proxy.genProxy()


def postRig():
    """Post rigging operations"""
    reset_all_ctl()
    update_anchor_conn()
    update_space_switch()
    reset_all_pv_ctl()

    RIG = DagNode("RIG")
    if RIG.exists():
        mc.hide(RIG)

    mc.select(cl=1)


def addProxyAttrsToMaster():
    """Add proxy attributes to master2_ctl"""
    ctl = DagNode("master2_ctl")
    prx = DagNode("PRX")

    if ctl.exists() and prx.exists():
        prx.a.overrideEnabled.set(1)

        proxy = ctl.a.add("proxy", k=0, attrType="bool", dv=1)
        proxy >> prx.a.v

        OPTIONS = "Normal:Template:Reference"
        proxyDsp = ctl.a.add("proxyDsp", attrType="enum", k=0, en=OPTIONS, dv=2)
        proxyDsp >> prx.a.overrideDisplayType


def unbuildTgt(rigN):
    """Unbuild target rigNode"""
    if rigN:
        state = rigN.a.nodeState.get()
        if state == 2:
            rigClass = rigN.a.rigClass.get()
            rigObj = eval(rigClass)(rigN)
            rigObj.unbuild_pre_module()


@common.Undo("unbuildSelOrAll")
def unbuildSelOrAll(*arg):
    """Unbuild rig for selected rigNodes or all if nothing selected"""
    rigNodes = getRigNodes_selOrAll()
    if rigNodes:
        for rigN in rigNodes:
            unbuildTgt(rigN)
        postRig()


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


@common.Undo("deleteSelOrAll")
def deleteSelOrAll(*arg):
    """Delete rigNodes for selected objects or all if nothing selected"""
    rigNodes = getRigNodes_selOrAll()
    if rigNodes:
        for rigN in rigNodes:
            deleteTgt(rigN)


def update_anchor_conn():
    """Update anchor connections for all rigNodes"""
    # logging.info("Update All Anchor Connections")

    rigNodes = getRigNodes_all()
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
                    logging.info(f"{fAnchor.name} -> {closestMaleAnchor.name}")
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
    logging.info("Reset All Ctl's Attr")
    for ctl in common.getRigCtlsAll():
        for attr in ctl.a.list(k=1, u=1, se=1, s=1):
            if attr.settable():
                attr.reset()


def reset_all_pv_ctl():
    """Reset all poleVector ctl's attr to default"""
    logging.info("Reset All pvc's Attr")
    for rigNode in getRigNodes_all():

        rID = rigNode.a.rigID.get()
        pvc = rigNode.a.pvc.inConnNode
        guide = DagNode(rID + "_pvc_guide")

        if pvc and guide and pvc.exists() and guide.exists():
            pvc.snapTo(guide)


def update_space_switch():
    """Update space switch for all rigNodes"""
    logging.info("Update All Space Switches")

    spaceData = collect_space_data()

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
    femaleAnchors = getAnchors([rigNode], startStr="anchorF")
    if femaleAnchors:
        drivingAnchors = femaleAnchors[0].getCstObjects(cstType="parentConstraint")
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


def getRigNodes_all():
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


def auto_attach_jnt_to_surf():
    """Auto attach joints to surface for all ribbon rigNodes"""
    from nl_modules.utils import common

    masterCtl = DagNode("master_ctl")
    if not masterCtl.exists():
        raise ValueError("master_ctl NOT found.")

    globalScale = masterCtl.a["globalScale"]
    if not globalScale.exists():
        raise ValueError("globalScale attr NOT found")

    for node in getRigNodes_all():
        if node.a.nodeState.get() != 2:
            continue

        rbJntSetAttr = node.a["rbJntSet"]
        if not rbJntSetAttr.exists():
            continue

        rbSrfAttr = node.a["rbSrf"]
        if not rbSrfAttr.exists():
            logging.warning(f"Attr rbSrf NOT found in {node}.")
            continue

        rbJntSetName = rbJntSetAttr.get()
        rbJntSet = DagNode(rbJntSetName)
        if not rbJntSet.exists():
            logging.warning(f"Set {rbJntSetName} NOT found.")
            continue

        rbJnts = mc.sets(rbJntSet, q=1)
        if not rbJnts:
            logging.warning(f"No joints found in Set {rbJntSet}.")
            continue

        rbSrf = rbSrfAttr.inConnNode
        if not rbSrf:
            logging.warning("Surface object NOT found.")
            continue

        # Attach joints in set to surface
        common.ribbonAttach(
            geo=rbSrf,
            tgtList=rbJnts,
            scaleAttr=globalScale,
            p=DagNode("RIG"),
        )
        logging.info(f"Attach joints in {rbJntSet} to {rbSrf.name}.")


def add_noise_logic(ctl=None, targets=None, rot=0):
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
#     """Disconnect all Female anchors"""
#     femaleAnchors = getRigNodeLinked("anchorF")
#     for fAnchor in femaleAnchors:
#         fAnchor.removeCstNodes()
#     for fAnchor in femaleAnchors:
#         fAnchor.removeCstNodes()
