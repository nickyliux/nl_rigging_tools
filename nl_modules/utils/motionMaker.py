from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import anim, common
import maya.cmds as mc


def bakeMomaToIk():
    """Bake Moma Sk to IK rig controls."""

    rigIDs = ["lfLegQd0", "rtLegQd0", "lfLegQd1", "rtLegQd1"]

    fkIkAttrs = [DagNode(f"{rigID}_setting").a.fkIk for rigID in rigIDs]
    rigNodes = [DagNode(f"{rigID}_RGN") for rigID in rigIDs]

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
                anim.switchFkIk(fkIkAttrs[i], toIKMode=1, rigNode=rigNodes[i])

        common.pauseVP(0)


def connectMomaToQd():
    """Connect Moma Sk to Qd rig controls."""
    # SPINE
    DagNode("moma:pelvis").cstPar(DagNode("spineQd0_cog_ctl"), mo=1)
    DagNode("moma:pelvis").cstOri(DagNode("spineQd0_end_ctl"), mo=1)

    DagNode("moma:spine_1").cstPar(DagNode("spineQd0_base_ikc"), mo=1)
    DagNode("moma:spine_3").cstPar(DagNode("spineQd0_mid_ikc"), mo=1)
    DagNode("moma:spine_5_neck").cstPar(DagNode("spineQd0_fore_ikc"), mo=1)

    # NECK
    DagNode("moma:neck").cstPar(DagNode("neckQd0_base_ikc"), mo=1)
    DagNode("moma:neck_3").cstPar(DagNode("neckQd0_mid_ikc"), mo=1)
    DagNode("moma:head").cstPar(DagNode("neckQd0_fore_ikc"), mo=1)

    # L LEGS
    DagNode("moma:L_scapula").cstPar(DagNode("lfLegQd1_hip_fkc"), mo=1)
    DagNode("moma:L_humerus").cstOri(DagNode("lfLegQd1_upr_fkc"), mo=1)
    DagNode("moma:L_radius").cstOri(DagNode("lfLegQd1_lwr_fkc"), mo=1)
    DagNode("moma:L_carpus").cstOri(DagNode("lfLegQd1_palm_fkc"), mo=1)
    DagNode("moma:L_F_palanx_1").cstOri(DagNode("lfLegQd1_digit_fkc"), mo=1)
    DagNode("moma:L_F_palanx_2").cstOri(DagNode("lfLegQd1_ball_fkc"), mo=1)

    DagNode("moma:L_femur").cstPar(DagNode("lfLegQd0_upr_fkc"), mo=1)
    DagNode("moma:L_tibea").cstOri(DagNode("lfLegQd0_lwr_fkc"), mo=1)
    DagNode("moma:L_tarsus").cstOri(DagNode("lfLegQd0_palm_fkc"), mo=1)
    DagNode("moma:L_R_palanx_1").cstOri(DagNode("lfLegQd0_ball_fkc"), mo=1)
    DagNode("moma:L_R_palanx_2").cstOri(DagNode("lfLegQd0_ball_fkc"), mo=1)

    # R LEGS
    DagNode("moma:R_scapula").cstPar(DagNode("rtLegQd1_hip_fkc"), mo=1)
    DagNode("moma:R_humerus").cstOri(DagNode("rtLegQd1_upr_fkc"), mo=1)
    DagNode("moma:R_radius").cstOri(DagNode("rtLegQd1_lwr_fkc"), mo=1)
    DagNode("moma:R_carpus").cstOri(DagNode("rtLegQd1_palm_fkc"), mo=1)
    DagNode("moma:R_F_palanx_1").cstOri(DagNode("rtLegQd1_digit_fkc"), mo=1)
    DagNode("moma:R_F_palanx_2").cstOri(DagNode("rtLegQd1_ball_fkc"), mo=1)

    DagNode("moma:R_femur").cstPar(DagNode("rtLegQd0_upr_fkc"), mo=1)
    DagNode("moma:R_tibea").cstOri(DagNode("rtLegQd0_lwr_fkc"), mo=1)
    DagNode("moma:R_tarsus").cstOri(DagNode("rtLegQd0_palm_fkc"), mo=1)
    DagNode("moma:R_R_palanx_1").cstOri(DagNode("rtLegQd0_ball_fkc"), mo=1)
    DagNode("moma:R_R_palanx_2").cstOri(DagNode("rtLegQd0_ball_fkc"), mo=1)

    # LEGS
    # DagNode("moma:L_F_palanx_1").cstPar(DagNode("lfLegQd1_ikc"), mo=1)
    # DagNode("moma:R_F_palanx_1").cstPar(DagNode("rtLegQd1_ikc"), mo=1)
    # DagNode("moma:L_R_palanx_1").cstPar(DagNode("lfLegQd0_ikc"), mo=1)
    # DagNode("moma:R_R_palanx_1").cstPar(DagNode("rtLegQd0_ikc"), mo=1)

    # DagNode("moma:L_scapula").cstPar(DagNode("lfLegQd1_hip_fkc"), mo=1)
    # DagNode("moma:R_scapula").cstPar(DagNode("rtLegQd1_hip_fkc"), mo=1)
    # DagNode("moma:L_femur").cstPar(DagNode("lfLegQd0_hip_fkc"), mo=1)
    # DagNode("moma:R_femur").cstPar(DagNode("rtLegQd0_hip_fkc"), mo=1)

    # DagNode("moma:L_F_palanx_2").cstOri(DagNode("lfLegQd1_ball_fkc"), mo=1)
    # DagNode("moma:R_F_palanx_2").cstOri(DagNode("rtLegQd1_ball_fkc"), mo=1)
    # DagNode("moma:L_R_palanx_2").cstOri(DagNode("lfLegQd0_ball_fkc"), mo=1)
    # DagNode("moma:R_R_palanx_2").cstOri(DagNode("rtLegQd0_ball_fkc"), mo=1)

    # DagNode("moma:L_carpus").cstPar(DagNode("lfLegQd1_extra_ikc"), mo=1)
    # DagNode("moma:R_carpus").cstPar(DagNode("rtLegQd1_extra_ikc"), mo=1)
    # DagNode("moma:L_tarsus").cstPar(DagNode("lfLegQd0_extra_ikc"), mo=1)
    # DagNode("moma:R_tarsus").cstPar(DagNode("rtLegQd0_extra_ikc"), mo=1)


# from nl_modules.utils import motionMaker
# motionMaker.connectMomaToQd()
# motionMaker.bakeMomaToIk()
