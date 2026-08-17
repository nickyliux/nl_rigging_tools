import logging
import os

import maya.cmds as mc
from maya import mel

import nl_modules
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import anim, build, common

MOD_DIR = os.path.dirname(nl_modules.__file__)
HIK_MAP_FILE = os.path.join(MOD_DIR, "misc", "hik_custom_rig_map.xml")

LINK_GRP = "moma_link_grp_"
HIK_CHAR = "nlRigChar"

CANINE_MAP = {
    "cstPar": [
        # SPINE
        ("c_pelvis", "spineQd0_cog_ctl"),
        ("c_spine_01", "spineQd0_base_ikc"),
        ("c_spine_03", "spineQd0_mid_ikc"),
        ("c_spine_06", "spineQd0_fore_ikc"),
        # L LEGS
        ("l_scapula", "lfLegQd1_hip_fkc"),
        ("l_hip", "lfLegQd0_upr_fkc"),
        # R LEGS
        ("r_scapula", "rtLegQd1_hip_fkc"),
        ("r_hip", "rtLegQd0_upr_fkc"),
    ],
    "cstOri": [
        # HEAD
        ("c_head_01", "neck0_fore_ikc"),
        # SPINE
        ("c_pelvis", "spineQd0_end_ctl"),
        # L LEGS
        ("l_shoulder", "lfLegQd1_upr_fkc"),
        ("l_elbow", "lfLegQd1_lwr_fkc"),
        ("l_wrist", "lfLegQd1_palm_fkc"),
        ("l_hand_01", "lfLegQd1_digit_fkc"),
        ("l_hand_02", "lfLegQd1_ball_fkc"),
        ("l_knee", "lfLegQd0_lwr_fkc"),
        ("l_ankle", "lfLegQd0_palm_fkc"),
        ("l_foot_01", "lfLegQd0_ball_fkc"),
        ("l_foot_02", "lfLegQd0_ball_fkc"),
        # R LEGS
        ("r_shoulder", "rtLegQd1_upr_fkc"),
        ("r_elbow", "rtLegQd1_lwr_fkc"),
        ("r_wrist", "rtLegQd1_palm_fkc"),
        ("r_hand_01", "rtLegQd1_digit_fkc"),
        ("r_hand_02", "rtLegQd1_ball_fkc"),
        ("r_knee", "rtLegQd0_lwr_fkc"),
        ("r_ankle", "rtLegQd0_palm_fkc"),
        ("r_foot_01", "rtLegQd0_ball_fkc"),
        ("r_foot_02", "rtLegQd0_ball_fkc"),
    ],
}

EQUINE_MAP = {
    "cstPar": [
        # SPINE
        ("pelvis", "spineQd0_cog_ctl"),
        ("spine_1", "spineQd0_base_ikc"),
        ("spine_3", "spineQd0_mid_ikc"),
        ("spine_5_neck", "spineQd0_fore_ikc"),
        # L LEGS
        ("L_scapula", "lfLegQd1_hip_fkc"),
        ("L_femur", "lfLegQd0_upr_fkc"),
        # R LEGS
        ("R_scapula", "rtLegQd1_hip_fkc"),
        ("R_femur", "rtLegQd0_upr_fkc"),
    ],
    "cstOri": [
        # HEAD
        ("head", "neck0_fore_ikc"),
        # SPINE
        ("pelvis", "spineQd0_end_ctl"),
        # L LEGS
        ("L_humerus", "lfLegQd1_upr_fkc"),
        ("L_radius", "lfLegQd1_lwr_fkc"),
        ("L_carpus", "lfLegQd1_palm_fkc"),
        ("L_F_palanx_1", "lfLegQd1_digit_fkc"),
        ("L_F_palanx_2", "lfLegQd1_ball_fkc"),
        ("L_tibea", "lfLegQd0_lwr_fkc"),
        ("L_tarsus", "lfLegQd0_palm_fkc"),
        ("L_R_palanx_1", "lfLegQd0_ball_fkc"),
        ("L_R_palanx_2", "lfLegQd0_ball_fkc"),
        # R LEGS
        ("R_humerus", "rtLegQd1_upr_fkc"),
        ("R_radius", "rtLegQd1_lwr_fkc"),
        ("R_carpus", "rtLegQd1_palm_fkc"),
        ("R_F_palanx_1", "rtLegQd1_digit_fkc"),
        ("R_F_palanx_2", "rtLegQd1_ball_fkc"),
        ("R_tibea", "rtLegQd0_lwr_fkc"),
        ("R_tarsus", "rtLegQd0_palm_fkc"),
        ("R_R_palanx_1", "rtLegQd0_ball_fkc"),
        ("R_R_palanx_2", "rtLegQd0_ball_fkc"),
    ],
}

CANINE_JNTS = {
    "neck": [f"moma:c_neck_0{i}" for i in range(1, 6)],
    "tail": [f"moma:c_tail_0{i}" for i in range(1, 10)],
}

EQUINE_JNTS = {
    "neck": ["moma:neck"] + [f"moma:neck_{i}" for i in range(1, 6)],
    "tail": [f"moma:tail_{i}" for i in range(1, 10)],
}


def mm_connect_setup(ns, jnts=None, rID="tail0"):
    """Gen resampled joints for retargeting."""
    # ---------------------------------------------------
    # Get resample value from master guide setting
    # ---------------------------------------------------
    resampleNum = 4
    mg = DagNode(f"{ns}{rID}_master_guide")
    if mg.exists():
        resampleNum = mg.a.fkJntNum.get()
    else:
        logging.info(f"Master guide for the {rID} not found. Ignore connection.")
        return

    # ---------------------------------------------------
    # Gen crv from joints
    # ---------------------------------------------------
    if not jnts:
        logging.info("No joint found for linking.")
        return

    allPos = []
    for j in jnts:
        pos = mc.xform(DagNode(j), q=1, t=1, ws=1)
        allPos.append(pos)
    crv = mc.curve(p=allPos)

    # ---------------------------------------------------
    # Gen rbSrf and skin to joints
    # ---------------------------------------------------
    link_grp = GrpNode(LINK_GRP + "#")
    rbSrf = SrfNode.buildRbSrf(
        pf=f"{rID}_srf1", crv=crv, normal=-1, snap=jnts[0], p=link_grp, spans=8
    )
    SrfNode(rbSrf).weightTo(jnts, mi=1, cvMatchJnt=1)
    print()

    # ---------------------------------------------------
    # Gen rbJnts and constraint to rig ctls
    # ---------------------------------------------------
    resampledJnts = SrfNode.buildRbJnt(
        resampleNum, pf=f"{rID}_srf2", surf=rbSrf, rigData=link_grp, jntGrp=link_grp
    )
    for i, jnt in enumerate(resampledJnts):
        ctl = f"{ns}{rID}_{i}_fkc"
        if DagNode(ctl).exists():
            # if i == 0:
            #     jnt.cstOri(ctl, mo=1)
            # else:
            #     jnt.cstPar(ctl, mo=1)
            jnt.cstOri(ctl, mo=1)

    mc.delete(crv)
    link_grp.hide()
    return resampledJnts


def bake_motion_to_ik(*args):
    """Bake Moma Sk to IK ctls."""
    rigIDs = ["lfLegQd0", "rtLegQd0", "lfLegQd1", "rtLegQd1"]

    sel = mc.ls(sl=1, tr=1)
    if not sel:
        logging.info("Please select a control to determine the namespace.")
        return

    ns = common.setNsFrSel()
    if not ns:
        logging.info("No namespace found for the selected object.")
        return

    allMGs = [DagNode(f"{ns}{rigID}_master_guide") for rigID in rigIDs]

    startTime = int(mc.playbackOptions(q=1, min=1))
    endTime = int(mc.playbackOptions(q=1, max=1))

    allCtls = common.getRigCtlsAll()
    if allCtls:
        common.pauseVP(1)
        mc.select(allCtls)
        mc.bakeResults(simulation=1, t=(startTime, endTime))
        common.pauseVP(0)

        for frame in range(startTime, endTime + 1):
            mc.currentTime(frame, e=1)
            for i in range(len(rigIDs)):
                anim.switch_fk_ik(mg=allMGs[i])

        mc.currentTime(startTime, e=1)
        delete_link_grps()


def unCst_mm_to_quad(mapping, ns):
    for cstMethod, pairs in mapping.items():
        for src, tgt in pairs:
            ctl = DagNode(ns + tgt)
            if ctl.exists():
                ctl.removeCstNodes()


def cst_mm_to_quad(mapping, ns):
    """Apply constraints based on the provided mapping."""
    moma_ns = "moma:"
    count = 0
    for cstMethod, pairs in mapping.items():
        for src, tgt in pairs:
            node1 = DagNode(moma_ns + src)
            node2 = DagNode(ns + tgt)
            if node1.exists() and node2.exists():
                getattr(node1, cstMethod)(node2, mo=1)
                count += 1
            else:
                logging.info(
                    f"Warning: Node '{moma_ns + src}' or '{ns + tgt}' does not exist."
                )
    logging.info(f"{count} constraints added.")


def set_legs_to_fk(ns):
    """Set all legs to FK mode."""
    settings = [
        f"{ns}lfLegQd1_setting",
        f"{ns}rtLegQd1_setting",
        f"{ns}lfLegQd0_setting",
        f"{ns}rtLegQd0_setting",
    ]
    for s in settings:
        DagNode(s).a.fkIk.set(0)

    logging.info("Set all legs to FK mode.")


def add_mmChar(*args):
    """Add a Moma character with a specific style."""
    version = int(mc.about(v=1))
    id = args[0] if args else 0
    names = ["adsk_biped", "adsk_canine", "adsk_equine"]
    geo = ["mesh_geo_bbox", "c_canine_geo_bbox", "c_equine_geo_bbox"]
    bboxId = [2, 2, 4]
    styles = ["basic_male", "basic_wolf", "western_horse"]

    if version >= 2027:
        chNode = mc.motionMaker(addCharacter=names[id], namespace="moma")[0]
        gnNode = mc.motionMaker(chNode, addGenerator=1)[0]
        plNode = mc.motionMaker(gnNode, addPathLocator=1)[0]
        mc.motionMaker(gnNode, addActionStyle=styles[id])[0]  # acNode =
        # vsNode = mc.motionMaker(gnNode, addVisualization=1)[0]n

        mc.select(plNode)
        mc.CreateMotionTrail()
        trail = mc.ls(sl=1)[0]
        DagNode(trail).shape.a.trailThickness.set(1)
        logging.info("Motion trail added for the locator.")

        char = DagNode(chNode)
        char.a.CharacterResolution.set(bboxId[id])
        char.a.CharacterSkeleton.set(0)
        mc.select("moma:" + geo[id])
        mc.polySetToFaceNormal()
        mc.select(char)
        logging.info(f"Character '{names[id]}' added.")
    else:
        mc.confirmDialog(
            title="Info", message="This feature requires Maya 2027 or later.", b="OK"
        )


def link_canine(*args):
    connect_to_map(quadType=0)


def unlink_canine(*args):
    unconnect_map(quadType=0)


def link_equine(*args):
    connect_to_map(quadType=1)


def unlink_equine(*args):
    unconnect_map(quadType=1)


def connect_to_map(quadType=0):
    """Connect Moma Sk to Qd rig controls."""
    ns = common.setNsFrSel()
    if ns:
        set_legs_to_fk(ns)
        if quadType == 0:
            cst_mm_to_quad(CANINE_MAP, ns)
            mm_connect_setup(ns, jnts=CANINE_JNTS["neck"], rID="neck0")
            mm_connect_setup(ns, jnts=CANINE_JNTS["tail"], rID="tail0")
            logging.info("Controls linked to Canine.")

        elif quadType == 1:
            cst_mm_to_quad(EQUINE_MAP, ns)
            mm_connect_setup(ns, jnts=EQUINE_JNTS["neck"], rID="neck0")
            mm_connect_setup(ns, jnts=EQUINE_JNTS["tail"], rID="tail0")
            logging.info("Controls linked to Equine.")


def delete_link_grps():
    grp = mc.ls(LINK_GRP + "*")
    if grp:
        mc.delete(grp)


def unconnect_map(quadType=0):
    """Remove constraints betw Moma Sk and Qd rig controls."""
    ns = common.setNsFrSel()
    if ns:
        if quadType == 0:
            unCst_mm_to_quad(CANINE_MAP, ns)
            logging.info("Unlink controls to Canine.")
        elif quadType == 1:
            unCst_mm_to_quad(EQUINE_MAP, ns)
            logging.info("Unlink controls to Equine.")

        # remove resampled joints and rbSrf
        delete_link_grps()


# HIK bone name -> slot index (Maya HumanIK definition)
HIK_SLOTS = {
    # Core skeleton
    "Reference": 0,
    "Hips": 1,
    "LeftUpLeg": 2,
    "LeftLeg": 3,
    "LeftFoot": 4,
    "RightUpLeg": 5,
    "RightLeg": 6,
    "RightFoot": 7,
    "Spine": 8,
    "LeftArm": 9,
    "LeftForeArm": 10,
    "LeftHand": 11,
    "RightArm": 12,
    "RightForeArm": 13,
    "RightHand": 14,
    "Head": 15,
    "LeftToeBase": 16,
    "RightToeBase": 17,
    "LeftShoulder": 18,
    "RightShoulder": 19,
    "Neck": 20,
    "Neck1": 21,
    "Neck2": 22,
    "Spine1": 23,
    "Spine2": 24,
    "Spine3": 25,
    "Spine4": 26,
    # Optional roll / auxiliary joints
    "LeftUpLegRoll": 27,
    "LeftLegRoll": 28,
    "RightUpLegRoll": 29,
    "RightLegRoll": 30,
    "LeftArmRoll": 31,
    "LeftForeArmRoll": 32,
    "RightArmRoll": 33,
    "RightForeArmRoll": 34,
    "LeftUpLegRoll1": 35,
    "LeftLegRoll1": 36,
    "RightUpLegRoll1": 37,
    "RightLegRoll1": 38,
    "LeftArmRoll1": 39,
    "LeftForeArmRoll1": 40,
    "RightArmRoll1": 41,
    "RightForeArmRoll1": 42,
    "LeftUpLegRoll2": 43,
    "LeftLegRoll2": 44,
    "RightUpLegRoll2": 45,
    "RightLegRoll2": 46,
    "LeftArmRoll2": 47,
    "LeftForeArmRoll2": 48,
    "RightArmRoll2": 49,
    # Fingers: right then left, four joints per finger
    "LeftHandThumb1": 50,
    "LeftHandThumb2": 51,
    "LeftHandThumb3": 52,
    "LeftHandThumb4": 53,
    "LeftHandIndex1": 54,
    "LeftHandIndex2": 55,
    "LeftHandIndex3": 56,
    "LeftHandIndex4": 57,
    "LeftHandMiddle1": 58,
    "LeftHandMiddle2": 59,
    "LeftHandMiddle3": 60,
    "LeftHandMiddle4": 61,
    "LeftHandRing1": 62,
    "LeftHandRing2": 63,
    "LeftHandRing3": 64,
    "LeftHandRing4": 65,
    "LeftHandPinky1": 66,
    "LeftHandPinky2": 67,
    "LeftHandPinky3": 68,
    "LeftHandPinky4": 69,
    # extra finger 70-73
    "RightHandThumb1": 74,
    "RightHandThumb2": 75,
    "RightHandThumb3": 76,
    "RightHandThumb4": 77,
    "RightHandIndex1": 78,
    "RightHandIndex2": 79,
    "RightHandIndex3": 80,
    "RightHandIndex4": 81,
    "RightHandMiddle1": 82,
    "RightHandMiddle2": 83,
    "RightHandMiddle3": 84,
    "RightHandMiddle4": 85,
    "RightHandRing1": 86,
    "RightHandRing2": 87,
    "RightHandRing3": 88,
    "RightHandRing4": 89,
    "RightHandPinky1": 90,
    "RightHandPinky2": 91,
    "RightHandPinky3": 92,
    "RightHandPinky4": 93,
    # extra finger 94-97
    # toe 98- ...
}


def _ensure_hik_loaded():
    """Load the HumanIK plugin and source required MEL scripts."""
    if not mc.pluginInfo("mayaHIK", q=True, loaded=True):
        mc.loadPlugin("mayaHIK")
    mel.eval('source "hikGlobalUtils";')
    mel.eval('source "hikCharacterControlsUI";')
    mel.eval('source "hikDefinitionOperations";')


HUMAN_IK_MAP = {
    "Reference": "master2_ctl",
    # "Hips": "spineBp0_0_fkj",
    "Hips": "spineBp0_cog_ctl",
    "LeftUpLeg": "lfLegBp0_upr",
    "LeftLeg": "lfLegBp0_lwr",
    "LeftFoot": "lfLegBp0_palm",
    "LeftToeBase": "lfLegBp0_ball",
    "RightUpLeg": "rtLegBp0_upr",
    "RightLeg": "rtLegBp0_lwr",
    "RightFoot": "rtLegBp0_palm",
    "RightToeBase": "rtLegBp0_ball",
    "Spine": "spineBp0_1_fkj",
    "Spine1": "spineBp0_2_fkj",
    "Spine2": "spineBp0_3_fkj",
    "LeftShoulder": "lfArmBp0_clavicle",
    "LeftArm": "lfArmBp0_upr",
    "LeftForeArm": "lfArmBp0_lwr",
    "LeftHand": "lfArmBp0_palm",
    "RightShoulder": "rtArmBp0_clavicle",
    "RightArm": "rtArmBp0_upr",
    "RightForeArm": "rtArmBp0_lwr",
    "RightHand": "rtArmBp0_palm",
    "Neck": "neck0_0_fkj",
    "Head": "head0_st",
    # LEFT FINGERS
    "LeftHandThumb1": "lfHandBp0_fgr00_1",
    "LeftHandThumb2": "lfHandBp0_fgr00_2",
    "LeftHandThumb3": "lfHandBp0_fgr00_3",
    "LeftHandThumb4": "lfHandBp0_fgr00_4",
    "LeftHandIndex1": "lfHandBp0_fgr01_2",
    "LeftHandIndex2": "lfHandBp0_fgr01_3",
    "LeftHandIndex3": "lfHandBp0_fgr01_4",
    "LeftHandIndex4": "lfHandBp0_fgr01_5",
    "LeftHandMiddle1": "lfHandBp0_fgr02_2",
    "LeftHandMiddle2": "lfHandBp0_fgr02_3",
    "LeftHandMiddle3": "lfHandBp0_fgr02_4",
    "LeftHandMiddle4": "lfHandBp0_fgr02_5",
    "LeftHandRing1": "lfHandBp0_fgr03_2",
    "LeftHandRing2": "lfHandBp0_fgr03_3",
    "LeftHandRing3": "lfHandBp0_fgr03_4",
    "LeftHandRing4": "lfHandBp0_fgr03_5",
    "LeftHandPinky1": "lfHandBp0_fgr04_2",
    "LeftHandPinky2": "lfHandBp0_fgr04_3",
    "LeftHandPinky3": "lfHandBp0_fgr04_4",
    "LeftHandPinky4": "lfHandBp0_fgr04_5",
    # # RIGHT FINGERS
    "RightHandThumb1": "rtHandBp0_fgr00_1",
    "RightHandThumb2": "rtHandBp0_fgr00_2",
    "RightHandThumb3": "rtHandBp0_fgr00_3",
    "RightHandThumb4": "rtHandBp0_fgr00_4",
    "RightHandIndex1": "rtHandBp0_fgr01_2",
    "RightHandIndex2": "rtHandBp0_fgr01_3",
    "RightHandIndex3": "rtHandBp0_fgr01_4",
    "RightHandIndex4": "rtHandBp0_fgr01_5",
    "RightHandMiddle1": "rtHandBp0_fgr02_2",
    "RightHandMiddle2": "rtHandBp0_fgr02_3",
    "RightHandMiddle3": "rtHandBp0_fgr02_4",
    "RightHandMiddle4": "rtHandBp0_fgr02_5",
    "RightHandRing1": "rtHandBp0_fgr03_2",
    "RightHandRing2": "rtHandBp0_fgr03_3",
    "RightHandRing3": "rtHandBp0_fgr03_4",
    "RightHandRing4": "rtHandBp0_fgr03_5",
    "RightHandPinky1": "rtHandBp0_fgr04_2",
    "RightHandPinky2": "rtHandBp0_fgr04_3",
    "RightHandPinky3": "rtHandBp0_fgr04_4",
    "RightHandPinky4": "rtHandBp0_fgr04_5",
}


def add_char_def_UI():
    """Create a HumanIK character definition for a biped rig based on the selected object."""
    sel = mc.ls(sl=1, tr=1)
    if sel:
        ns = DagNode(sel[0]).namespace
        if ns:
            add_char_def(HIK_CHAR, HUMAN_IK_MAP, ns)
        else:
            logging.info("No namespace found for the selected object.")
    else:
        logging.info("Please select a joint or control to determine the namespace.")


def add_char_def(char_name, mapping, ns):
    """Create a HumanIK character definition and assign joints."""
    _ensure_hik_loaded()
    # maya_loc = os.environ.get("MAYA_LOCATION", "")
    # mel.eval(f'source "{maya_loc}/scripts/others/hikGlobalUtils.mel"')
    # mel.eval(f'source "{maya_loc}/scripts/others/hikDefinitionOperations.mel"')
    # mel.eval(f'source "{maya_loc}/scripts/others/hikCharacterControlsUI.mel"')

    if not ns:
        logging.info("Namespace is required to create a character definition.")
        return None

    mc.HIKCharacterControlsTool()
    try:
        if char_name in mc.ls(type="HIKCharacterNode"):
            mel.eval(f'hikSetCurrentCharacter("{char_name}");')
        else:
            # mel.eval("hikCreateDefinition;")
            mel.eval(f'hikCreateCharacter("{char_name}");')
    except Exception:
        pass

    mc.HIKCharacterControlsTool()

    for hik_bone, joint_name in mapping.items():
        slot_idx = HIK_SLOTS.get(hik_bone)
        if slot_idx is None:
            logging.warning(f"Skipped '{hik_bone}': unknown HIK bone name")
            continue

        ns_joint = f"{ns}:{joint_name}"
        if not mc.objExists(ns_joint):
            logging.warning(f"Skipped '{hik_bone}': {ns_joint} not found")
            continue

        mel.eval(f'setCharacterObject("{ns_joint}", "{char_name}", {slot_idx}, 0)')
        logging.info(f"Assigned '{ns_joint}' to HIK '{hik_bone}' (slot {slot_idx})")

    # mel.eval("hikToggleLockDefinition()")
    # mel.eval("hikUpdateDefinitionUI();")
    mel.eval("hikSelectDefinitionTab();")

    return char_name


HUMAN_IK_CTL_MAP = {
    "Hips": "spineBp0_cog_ctl",
    "Spine": "spineBp0_base_ikc",
    "Spine1": "spineBp0_mid_ikc",
    "Spine2": "spineBp0_fore_ikc",
    "LeftShoulder": "lfArmBp0_clavicle_fkc",
    "LeftArm": "lfArmBp0_upr_fkc",
    "LeftForeArm": "lfArmBp0_lwr_fkc",
    "LeftHand": "lfHandBp0_hand_fkc",
    "RightShoulder": "rtArmBp0_clavicle_fkc",
    "RightArm": "rtArmBp0_upr_fkc",
    "RightForeArm": "rtArmBp0_lwr_fkc",
    "RightHand": "rtHandBp0_hand_fkc",
    "LeftUpLeg": "lfLegBp0_upr_fkc",
    "LeftLeg": "lfLegBp0_lwr_fkc",
    "LeftFoot": "lfLegBp0_palm_fkc",
    "RightUpLeg": "rtLegBp0_upr_fkc",
    "RightLeg": "rtLegBp0_lwr_fkc",
    "RightFoot": "rtLegBp0_palm_fkc",
    "Neck": "neckBp0_0_fkc",
    "Head": "head0_fkc",
}


# def add_cust_rig_map_UI(self):
#     """Create a HumanIK custom rig mapping for an existing HIK character."""
#     sel = mc.ls(sl=1, tr=1)
#     if sel:
#         ns = DagNode(sel[0]).namespace
#         if ns:
#             add_cust_rig_map("nlRigChar", HUMAN_IK_CTL_MAP, ns)
#         else:
#             logging.info("No namespace found for the selected object.")
#     else:
#         logging.info("Please select a joint or control to determine the namespace.")


# def add_cust_rig_map(char_name, ctrl_mapping, ns):
#     """Create a HumanIK custom rig mapping for an existing HIK character."""
#     _ensure_hik_loaded()

#     maya_loc = os.environ.get("MAYA_LOCATION", "")
#     mel.eval(f'source "{maya_loc}/scripts/others/hikGlobalUtils.mel"')
#     mel.eval(f'source "{maya_loc}/scripts/others/hikDefinitionOperations.mel"')
#     mel.eval(f'source "{maya_loc}/scripts/others/hikCharacterControlsUI.mel"')

#     if char_name not in mc.ls(type="HIKCharacterNode"):
#         logging.info(f"Character '{char_name}' does not exist. Creating a new one.")
#         return

#     mel.eval(f'hikSetCurrentCharacter("{char_name}");')
#     mel.eval(f'hikCreateCustomRig("{char_name}");')

#     for hik_bone, ctrl_name in ctrl_mapping.items():
#         slot_idx = HIK_SLOTS.get(hik_bone)

#         if slot_idx is None:
#             logging.warning(f"Skipped '{hik_bone}': unknown HIK bone name")
#             continue

#         ns_ctl = f"{ns}:{ctrl_name}"
#         if not mc.objExists(ns_ctl):
#             logging.warning(f"Skipped '{hik_bone}': {ns_ctl} not found")
#             continue

#         # mel.eval(f'hikCustomRigSetNodeForEffector({slot_idx},"{ns_ctl}");')
#         mel.eval(f'setCharacterObject("{hik_bone}", "{char_name}", {slot_idx}, 0);')
#         logging.info(f"Assigned '{ns_ctl}' to HIK '{hik_bone}' (slot {slot_idx})")

#     mel.eval("hikUpdateDefinitionUI();")
#     return char_name


def load_custom_rig_mapping(self):
    """Load HIK custom-rig mapping file."""
    _ensure_hik_loaded()

    if HIK_CHAR not in mc.ls(type="HIKCharacterNode"):
        logging.info(f"Character '{HIK_CHAR}' does not exist. Creating a new one.")
        return

    mel.eval(f'hikSetCurrentCharacter("{HIK_CHAR}");')
    mel.eval(f'hikCreateCustomRig("{HIK_CHAR}");')
    mel.eval("hikSelectCustomRigTab();")

    retargeter = mel.eval(f'RetargeterGetName("{HIK_CHAR}")')

    file = HIK_MAP_FILE.replace("\\", "/")
    if mel.eval(f'RetargeterReadFromFile("{retargeter}", "{file}")') != 1:
        logging.warning(f"Could not load custom rig mapping: {file}")
        return

    mel.eval("hikUpdateCustomRigUI;")

    # indices = mel.eval(f'RetargeterAssignedElementIndices("{retargeter}")') or []
    # bodies = [
    #     mel.eval(f'hikCustomRigElementNameFromId("{HIK_CHAR}", {index})')
    #     for index in indices
    # ]
    # mel.eval(f'RetargeterRemoveInvalidMappings("{retargeter}", {bodies});')
