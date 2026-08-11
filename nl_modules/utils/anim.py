import logging

import maya.cmds as mc

from nl_modules.nodel.base.dag_node import DagNode

# def switch_to_space_target(spaceName):
#     """Switch space target for selected controls to the specified spaceName."""
#     for sel in mc.ls(sl=1):
#         ctl = DagNode(sel)
#         for space in ["pa_space", "ori_space", "pos_space"]:
#             if ctl.a[space].exists():
#                 # Get the current space option list
#                 optionList = ctl.a[space].query(listEnum=1)[0].split(":")
#                 optionDict = {n: i for i, n in enumerate(optionList)}

#                 if spaceName in optionList:
#                     # store xform before and re-apply after space switch
#                     mtx = ctl.getMtx()
#                     ctl.a[space].set(optionDict[spaceName])
#                     ctl.setMtx(mtx)


def switch_to_space_target(attr, spaceName):
    """Switch space target for selected controls to the specified spaceName."""
    optionList = attr.query(listEnum=1)[0].split(":")
    optionDict = {n: i for i, n in enumerate(optionList)}

    for sel in mc.ls(sl=1):
        ctl = DagNode(sel)

        if spaceName in optionList:
            mtx = ctl.getMtx()
            attr.set(optionDict[spaceName])
            ctl.setMtx(mtx)


_RIG_CLASS_MAP = {
    "LegBp": (
        5,
        ["hip_fkc", "upr_fkc", "lwr_fkc", "palm_fkc", "ball_fkc"],
    ),
    "LegQd": (
        6,
        ["hip_fkc", "upr_fkc", "lwr_fkc", "palm_fkc", "digit_fkc", "ball_fkc"],
    ),
    "ArmBp": (
        4,
        ["clavicle_fkc", "upr_fkc", "lwr_fkc", "palm_fkc"],
    ),
    "Finger": (
        None,
        ["fgr01_fkc", "fgr02_fkc", "fgr03_fkc", "fgr04_fkc"],
    ),
}


def get_jnts_ctls_fr_MG(rootJ, mg):
    """Get joint and FK control names based on rig class."""
    rigClass = mg.a.rigClass.get()
    entry = _RIG_CLASS_MAP.get(rigClass)
    if not entry:
        return [], []

    jntCount, fkCtlNames = entry
    jnts = rootJ.allChildrenJt2[:jntCount] if jntCount else rootJ.allChildrenJt2

    if not all(jnts):
        rigID = mg.a.rigID.get()
        mc.confirmDialog(
            t="Info", m=f"Some joints for {rigID} not found. Cannot switch IK/FK."
        )

    return jnts, fkCtlNames


def switch_local_global(attr=None, toGlobal=0):
    """Switch Local/Global mode for the specified rig node."""
    ctl = attr.node
    mtx = ctl.getMtx()
    attr.set(1 - attr.get())
    ctl.setMtx(mtx)


def switch_fk_ik(mg=None):
    """Switch between FK and IK modes for the specified rig node."""
    if not mg or not mg.a.built.get():
        return

    attr = None
    setting = mg.a.setting.inConnNode
    if setting:
        attr = setting.a["fkIk"]
        if not attr.exists():
            return
    else:
        return

    rigID = mg.a.rigID.get()
    rootJ = mg.a.rootJ.inConnNode
    if rootJ is None:
        logging.warning(f"Root joint for {rigID} not found. Cannot switch IK/FK.")
        return

    jnts = []
    fkCtlNames = []
    jnts, fkCtlNames = get_jnts_ctls_fr_MG(rootJ, mg)

    # FK Ctls
    fkCtls = [mg.a[name].inConnNode for name in fkCtlNames]
    if not all(fkCtls):
        logging.warning(f"Not all FK ctls for {rigID} found. Cannot switch IK/FK.")
        return

    # IK Ctls
    ikc = mg.a.ikc.inConnNode
    pvc = mg.a.pvc.inConnNode
    ikc_matcher = DagNode(f"{ikc.name}_matcher") if ikc else None

    ball_ikc = DagNode(mg.a["ball_ikc"].inConnNode)
    smart_ctl = DagNode(f"{rigID}_smart_ctl")
    extra_ikc = DagNode(f"{rigID}_extra_ikc")
    extra_matcher = DagNode(f"{extra_ikc.name}_matcher") if extra_ikc else None

    ikCtls = [ikc, pvc, ikc_matcher]
    if not all(ikCtls):
        logging.warning(f"Not all ik ctls for {rigID} found. Ignore fk ik switch.")
        return

    # Get ball joint xform before switching
    ball_mtx = jnts[-1].getMtx()

    toIKMode = 0 if attr.get() > 0.5 else 1

    if toIKMode == 0:  # to FK
        for ctl, jnt in zip(fkCtls, jnts):
            if ctl:
                ctl.alignTo(jnt)
        attr.set(0)
    else:  # to IK
        root_mtx = jnts[0].getMtx()

        if fkCtls[0].a["autoAim"].exists():
            fkCtls[0].a["autoAim"].set(0)

        fkCtls[0].setMtx(root_mtx)

        if ikc_matcher.exists():
            ikc.alignTo(ikc_matcher)

        if smart_ctl.exists():
            smart_ctl.resetXf()

        if ball_ikc.exists():
            ball_ikc.resetXf()

        if extra_ikc.exists():
            extra_ikc.resetXf()
            extra_ikc.a["autoAim"].set(0)
            extra_ikc.a["aimRatio"].set(0)
            if extra_matcher.exists():
                extra_ikc.alignTo(extra_matcher)

        if pvc.a.fkPin.exists():
            pvc.a["fkPin"].set(0)

        pvLock = pvc.a["pvLock"].get()
        if pvLock and pvLock > 0.5:
            pvc.alignTo(jnts[2])
        else:
            pvc_pos = calc_pvc_pos(jnts[1], jnts[2], jnts[3])
            mc.xform(pvc, ws=1, t=pvc_pos)

        attr.set(1)

    # Apply ball ctl after switching
    fkCtls[-1].setMtx(ball_mtx)

    logging.info(f"{rigID}: Switched to {'IK' if toIKMode else 'FK'}.")


def calc_pvc_pos(obj1, obj2, obj3):
    """Calculate the position for the pole vector control based on three objects' positions."""
    from nl_modules.utils import maths

    # Get world positions
    p1 = DagNode(obj1).o.pos
    p2 = DagNode(obj2).o.pos
    p3 = DagNode(obj3).o.pos

    # Create a temporary curve through the three points
    three_pt_crv = mc.curve(p=[p1, p2, p3], d=1, k=[0, 1, 2])

    # Calculate distances and movement
    PVC_OFFSET = 0.7
    d1 = maths.getDistBetwPt(p1, p2)
    d2 = maths.getDistBetwPt(p2, p3)
    dist_to_move = (d1 + d2) * PVC_OFFSET

    mid_cv = f"{three_pt_crv}.cv[1]"
    mc.moveVertexAlongDirection(mid_cv, n=dist_to_move)

    pos = mc.xform(mid_cv, t=True, ws=True, q=True)
    mc.delete(three_pt_crv)

    return pos
