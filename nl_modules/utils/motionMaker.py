import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import anim, common
import maya.cmds as mc


def bakeMotion(*args):
    """Bake Moma Sk to IK rig controls."""
    rigIDs = ["lfLegQd0", "rtLegQd0", "lfLegQd1", "rtLegQd1"]

    ns = common.getNsFrOptVar()
    fkIkAttrs = [DagNode(f"{ns}:{rigID}_setting").a.fkIk for rigID in rigIDs]
    allMGs = [DagNode(f"{ns}:{rigID}_master_guide") for rigID in rigIDs]

    startTime = int(mc.playbackOptions(q=1, min=1))
    endTime = int(mc.playbackOptions(q=1, max=1))

    allCtls = common.getRigCtlsAll()
    if allCtls:
        mc.select(allCtls)
        mc.bakeResults(simulation=1, t=(startTime, endTime))
        common.pauseVP(1)

        for frame in range(startTime, endTime + 1):
            mc.currentTime(frame, e=1)
            for i in range(len(rigIDs)):
                anim.switchFkIk(fkIkAttrs[i], toIKMode=1, mg=allMGs[i])

        common.pauseVP(0)


def _applyConstraints(mapping, ns):
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
    logging.info(f"Applied {count} constraints.")


def _setLegsToFk(ns=""):
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


def connectEquineToQd(*args):
    connectToQd(EQUINE_QD_MAP)


def connectCanineToQd(*args):
    connectToQd(CANINE_QD_MAP)


def connectToQd(jntMap):
    """Connect Moma Sk to Qd rig controls."""
    ns = common.getNsFrOptVar()
    if ns:
        _applyConstraints(jntMap, ns)
        _setLegsToFk(ns)
    else:
        mc.confirmDialog(
            t="Info",
            m="Namespace not Set. Cannot connect Moma Sk to Qd rig controls.    ",
            b=["OK"],
        )


EQUINE_QD_MAP = {
    "cstPar": [
        # SPINE
        ("pelvis", "spineQd0_cog_ctl"),
        ("spine_1", "spineQd0_base_ikc"),
        ("spine_3", "spineQd0_mid_ikc"),
        ("spine_5_neck", "spineQd0_fore_ikc"),
        # NECK
        ("neck", "neckQd0_base_ikc"),
        ("neck_3", "neckQd0_mid_ikc"),
        ("head", "neckQd0_fore_ikc"),
        # L LEGS
        ("L_scapula", "lfLegQd1_hip_fkc"),
        ("L_femur", "lfLegQd0_upr_fkc"),
        # R LEGS
        ("R_scapula", "rtLegQd1_hip_fkc"),
        ("R_femur", "rtLegQd0_upr_fkc"),
    ],
    "cstOri": [
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
        # TAIL
        ("c_tail_01", "tail0_1_fkc"),
        ("c_tail_02", "tail0_2_fkc"),
        ("c_tail_03", "tail0_3_fkc"),
        ("c_tail_04", "tail0_4_fkc"),
        ("c_tail_05", "tail0_5_fkc"),
        ("c_tail_06", "tail0_6_fkc"),
        ("c_tail_07", "tail0_7_fkc"),
        ("c_tail_08", "tail0_8_fkc"),
        ("c_tail_09", "tail0_9_fkc"),
    ],
}

CANINE_QD_MAP = {
    "cstPar": [
        # SPINE
        ("c_pelvis", "spineQd0_cog_ctl"),
        ("c_spine_01", "spineQd0_base_ikc"),
        ("c_spine_03", "spineQd0_mid_ikc"),
        ("c_spine_06", "spineQd0_fore_ikc"),
        # NECK
        ("c_neck_01", "neckQd0_base_ikc"),
        ("c_neck_03", "neckQd0_mid_ikc"),
        ("c_head_01", "neckQd0_fore_ikc"),
        # L LEGS
        ("l_scapula", "lfLegQd1_hip_fkc"),
        ("l_hip", "lfLegQd0_upr_fkc"),
        # R LEGS
        ("r_scapula", "rtLegQd1_hip_fkc"),
        ("r_hip", "rtLegQd0_upr_fkc"),
    ],
    "cstOri": [
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
        # TAIL
        ("c_tail_01", "tail0_1_fkc"),
        ("c_tail_02", "tail0_2_fkc"),
        ("c_tail_03", "tail0_3_fkc"),
        ("c_tail_04", "tail0_4_fkc"),
        ("c_tail_05", "tail0_5_fkc"),
        ("c_tail_06", "tail0_6_fkc"),
        ("c_tail_07", "tail0_7_fkc"),
        ("c_tail_08", "tail0_8_fkc"),
        ("c_tail_09", "tail0_9_fkc"),
    ],
}
