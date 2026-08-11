import logging

import maya.cmds as mc
from maya import mel

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import anim, build, common

LINK_GRP = "moma_link_grp_"

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


def mm_link_setup(ns, jnts=None, rID="tail0"):
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
    ns = common.setNsFrSel()
    allMGs = [DagNode(f"{ns}{rigID}_master_guide") for rigID in rigIDs]

    startTime = int(mc.playbackOptions(q=1, min=1))
    endTime = int(mc.playbackOptions(q=1, max=1))

    allCtls = common.getRigCtlsAll()
    if allCtls:
        mc.select(allCtls)
        mc.bakeResults(simulation=1, t=(startTime, endTime))

        for frame in range(startTime, endTime + 1):
            mc.currentTime(frame, e=1)
            # common.pauseVP(1)
            for i in range(len(rigIDs)):
                anim.switch_fk_ik(mg=allMGs[i])
            # common.pauseVP(0)

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


def link_canine(*args):
    link_to_map(quadType=0)


def unlink_canine(*args):
    unlink_map(quadType=0)


def link_equine(*args):
    link_to_map(quadType=1)


def unlink_equine(*args):
    unlink_map(quadType=1)


def link_to_map(quadType=0):
    """Connect Moma Sk to Qd rig controls."""
    ns = common.setNsFrSel()
    if ns:
        set_legs_to_fk(ns)
        if quadType == 0:
            cst_mm_to_quad(CANINE_MAP, ns)
            mm_link_setup(ns, jnts=CANINE_JNTS["neck"], rID="neck0")
            mm_link_setup(ns, jnts=CANINE_JNTS["tail"], rID="tail0")
        elif quadType == 1:
            cst_mm_to_quad(EQUINE_MAP, ns)
            mm_link_setup(ns, jnts=EQUINE_JNTS["neck"], rID="neck0")
            mm_link_setup(ns, jnts=EQUINE_JNTS["tail"], rID="tail0")


def delete_link_grps():
    grp = mc.ls(LINK_GRP + "*")
    if grp:
        mc.delete(grp)


def unlink_map(quadType=0):
    """Remove constraints betw Moma Sk and Qd rig controls."""
    ns = common.setNsFrSel()
    if ns:
        if quadType == 0:
            unCst_mm_to_quad(CANINE_MAP, ns)
            logging.info("Remove constraints to rig controls for Canine.")
        elif quadType == 1:
            unCst_mm_to_quad(EQUINE_MAP, ns)
            logging.info("Remove constraints to rig controls for Equine.")

        # remove resampled joints and rbSrf
        delete_link_grps()


# HIK bone name -> slot index (Maya HumanIK definition)
HIK_SLOTS = {
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
    "Spine1": 23,
    "Spine2": 24,
    "Spine3": 25,
    "Spine4": 26,
    "RightHandThumb1": 50,
    "RightHandThumb2": 51,
    "RightHandThumb3": 52,
    "LeftHandThumb1": 54,
    "LeftHandThumb2": 55,
    "LeftHandThumb3": 56,
    "RightHandIndex1": 58,
    "RightHandIndex2": 59,
    "RightHandIndex3": 60,
    "LeftHandIndex1": 62,
    "LeftHandIndex2": 63,
    "LeftHandIndex3": 64,
    "RightHandMiddle1": 66,
    "RightHandMiddle2": 67,
    "RightHandMiddle3": 68,
    "LeftHandMiddle1": 70,
    "LeftHandMiddle2": 71,
    "LeftHandMiddle3": 72,
    "RightHandRing1": 74,
    "RightHandRing2": 75,
    "RightHandRing3": 76,
    "LeftHandRing1": 78,
    "LeftHandRing2": 79,
    "LeftHandRing3": 80,
    "RightHandPinky1": 82,
    "RightHandPinky2": 83,
    "RightHandPinky3": 84,
    "LeftHandPinky1": 86,
    "LeftHandPinky2": 87,
    "LeftHandPinky3": 88,
}


def _ensure_hik_loaded():
    """Load the HumanIK plugin and source required MEL scripts."""
    if not mc.pluginInfo("mayaHIK", q=True, loaded=True):
        mc.loadPlugin("mayaHIK")
    mel.eval('source "hikGlobalUtils";')
    mel.eval('source "hikCharacterControlsUI";')
    mel.eval('source "hikDefinitionOperations";')


def create_hik_character_def_biped():
    joint_mapping = {
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
        "Neck": "neckBp0_0_rbj",
        "Head": "head0_st",
    }
    create_hik_character("nlCharacter", joint_mapping)


def create_hik_character(char_name, joint_mapping):
    """Create a HumanIK character definition and assign joints.

    Args:
        char_name (str): Name for the HIK character node.
        joint_mapping (dict): Mapping of HIK bone name -> scene joint name.
            e.g. {"Hips": "spineBp0_0_fkj", "LeftUpLeg": "lfLegBp0_upr", ...}

    Returns:
        str: The created character node name, or None on failure.

    Example::
        joint_mapping = {
            "Hips":          "spineBp0_0_fkj",
            "LeftUpLeg":     "lfLegBp0_upr",
            "LeftLeg":       "lfLegBp0_lwr",
            "LeftFoot":      "lfLegBp0_palm",
            "LeftToeBase":   "lfLegBp0_ball",
            "RightUpLeg":    "rtLegBp0_upr",
            "RightLeg":      "rtLegBp0_lwr",
            "RightFoot":     "rtLegBp0_palm",
            "RightToeBase":  "rtLegBp0_ball",
            "Spine":         "spineBp0_1_fkj",
            "Spine1":        "spineBp0_2_fkj",
            "Spine2":        "spineBp0_3_fkj",
            "LeftShoulder":  "lfArmBp0_clavicle",
            "LeftArm":       "lfArmBp0_upr",
            "LeftForeArm":   "lfArmBp0_lwr",
            "LeftHand":      "lfHandBp0_handJ",
            "RightShoulder": "rtArmBp0_clavicle",
            "RightArm":      "rtArmBp0_upr",
            "RightForeArm":  "rtArmBp0_lwr",
            "RightHand":     "rtHandBp0_handJ",
            "Neck":          "neckBp0_0_rbj",
            "Head":          "head0_st",
        }
        create_hik_character("myCharacter", joint_mapping)
    """
    _ensure_hik_loaded()

    # Create the HIK character definition node
    mc.HIKCharacterControlsTool()
    # mel.eval("hikCreateDefinition;")
    mel.eval(f'hikCreateCharacter("{char_name}")')

    skipped = []
    for hik_bone, joint_name in joint_mapping.items():
        slot_idx = HIK_SLOTS.get(hik_bone)
        if slot_idx is None:
            skipped.append((hik_bone, "unknown HIK bone name"))
            continue
        if not mc.objExists(joint_name):
            skipped.append((hik_bone, f"{joint_name} not found in scene"))
            continue
        mel.eval(f'setCharacterObject("{joint_name}", "{char_name}", {slot_idx}, 0)')

    if skipped:
        for bone, reason in skipped:
            mc.warning(f"HIK: skipped '{bone}' - {reason}")

    # Lock the definition to validate it
    mel.eval("hikToggleLockDefinition()")
    mel.eval("hikUpdateDefinitionUI();")

    return char_name


def create_hik_custom_rig(char_name, ctrl_mapping):
    """Create a HumanIK custom rig mapping for an existing HIK character.

    Args:
        char_name (str): Name of the existing HIK character node.
        ctrl_mapping (dict): Mapping of HIK bone name -> rig control name.
            e.g. {"Hips": "cog_ctl", "LeftArm": "lf_arm_fkc", ...}

    Returns:
        str: The character name.

    Example::
        ctrl_mapping = {
            "Hips":          "spineQd0_cog_ctl",
            "Spine":         "spineQd0_base_ikc",
            "Spine1":        "spineQd0_mid_ikc",
            "Spine2":        "spineQd0_fore_ikc",
            "LeftShoulder":  "lfArmBp0_clavicle_fkc",
            "LeftArm":       "lfArmBp0_upr_fkc",
            "LeftForeArm":   "lfArmBp0_lwr_fkc",
            "LeftHand":      "lfHandBp0_hand_fkc",
            "RightShoulder": "rtArmBp0_clavicle_fkc",
            "RightArm":      "rtArmBp0_upr_fkc",
            "RightForeArm":  "rtArmBp0_lwr_fkc",
            "RightHand":     "rtHandBp0_hand_fkc",
            "LeftUpLeg":     "lfLegBp0_upr_fkc",
            "LeftLeg":       "lfLegBp0_lwr_fkc",
            "LeftFoot":      "lfLegBp0_palm_fkc",
            "RightUpLeg":    "rtLegBp0_upr_fkc",
            "RightLeg":      "rtLegBp0_lwr_fkc",
            "RightFoot":     "rtLegBp0_palm_fkc",
            "Neck":          "neckBp0_0_fkc",
            "Head":          "head0_fkc",
        }
        create_hik_custom_rig("myCharacter", ctrl_mapping)
    """
    _ensure_hik_loaded()

    mel.eval(f'hikSetCurrentCharacter("{char_name}")')
    mel.eval(f'hikCreateCustomRig("{char_name}")')

    skipped = []
    for hik_bone, ctrl_name in ctrl_mapping.items():
        slot_idx = HIK_SLOTS.get(hik_bone)
        if slot_idx is None:
            skipped.append((hik_bone, "unknown HIK bone name"))
            continue
        if not mc.objExists(ctrl_name):
            skipped.append((hik_bone, f"{ctrl_name} not found in scene"))
            continue
        mel.eval(f'hikCustomRigSetNodeForEffector {slot_idx} "{ctrl_name}";')

    if skipped:
        for bone, reason in skipped:
            mc.warning(f"HIK: skipped '{bone}' - {reason}")

    mel.eval("hikUpdateDefinitionUI()")

    return char_name
