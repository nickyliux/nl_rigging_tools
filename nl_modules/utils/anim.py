import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode


def switchToSpaceTarget(spaceName):
    """Switch space target for selected controls to the specified spaceName."""
    for sel in mc.ls(sl=1):
        ctl = DagNode(sel)
        for space in ["paSpace", "oriSpace", "posSpace"]:
            if ctl.a[space].exists():
                # Get the current space option list
                optionList = ctl.a[space].query(listEnum=1)[0].split(":")
                optionDict = {n: i for i, n in enumerate(optionList)}

                if spaceName in optionList:
                    # store xform before and re-apply after space switch
                    mtx = ctl.getMtx()
                    ctl.a[space].set(optionDict[spaceName])
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


def getJntsCtlsFromRigNode(rootJ, rigNode):
    """Get joint and FK control names based on rig class."""
    rigClass = rigNode.a.rigClass.get()
    entry = _RIG_CLASS_MAP.get(rigClass)
    if not entry:
        return [], []

    jntCount, fkCtlNames = entry
    jnts = rootJ.allChildrenJt2[:jntCount] if jntCount else rootJ.allChildrenJt2

    if not all(jnts):
        rigID = rigNode.a.rigID.get()
        mc.confirmDialog(
            t="Info", m=f"Some joints for {rigID} NOT found. Cannot switch IK/FK."
        )

    return jnts, fkCtlNames


def switchLocalGlobal(attr=None, toGlobal=0, rigNode=None):
    """Switch Local/Global mode for the specified rig node."""
    ctl = attr.node
    mtx = ctl.getMtx()
    attr.set(1 - attr.get())
    ctl.setMtx(mtx)


def switchFkIk(attr=None, toIKMode=0, rigNode=None):
    """Switch between FK and IK modes for the specified rig node."""
    if not rigNode or rigNode.a.nodeState.get() != 2:
        return

    rigID = rigNode.a.rigID.get()
    rootJ = rigNode.a.rootJ.inConnNode
    if rootJ is None:
        logging.warning(f"Root joint for {rigID} NOT found. Cannot switch IK/FK.")
        return

    jnts = []
    fkCtlNames = []
    jnts, fkCtlNames = getJntsCtlsFromRigNode(rootJ, rigNode)

    # FK Ctls
    fkCtls = [rigNode.a[name].inConnNode for name in fkCtlNames]
    if not all(fkCtls):
        logging.warning(f"Not all FK ctls for {rigID} found. Cannot switch IK/FK.")
        return

    # IK Ctls
    ikc = rigNode.a.ikc.inConnNode
    pvc = rigNode.a.pvc.inConnNode
    ikc_matcher = DagNode(f"{ikc.name}_matcher") if ikc else None

    ball_ikc = DagNode(rigNode.a["ball_ikc"].inConnNode)
    smart_ctl = DagNode(f"{rigID}_smart_ctl")
    extra_ikc = DagNode(f"{rigID}_extra_ikc")
    extra_matcher = DagNode(f"{extra_ikc.name}_matcher") if extra_ikc else None

    ikCtls = [ikc, pvc, ikc_matcher]
    if not all(ikCtls):
        logging.warning(f"Not all ik ctls for {rigID} found. Ignore fk ik switch.")
        return

    # Get ball joint xform before switching
    ball_mtx = jnts[-1].getMtx()

    if toIKMode == 0:  # to FK
        for ctl, jnt in zip(fkCtls, jnts):
            if ctl:
                ctl.alignTo(jnt)
        attr.set(0)
    else:  # to IK
        root_mtx = jnts[0].getMtx()

        autoAim = fkCtls[0].a["autoAim"]
        if autoAim.exists():
            autoAim.set(0)

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

        # Setup for pvc
        pvc.a["fkPin"].set(0)
        pvLock = pvc.a["pvLock"].get()
        if pvLock and pvLock > 0.5:
            pvc.alignTo(jnts[2])
        else:
            pvc_pos = calcPvcPos(jnts[1], jnts[2], jnts[3])
            mc.xform(pvc, ws=1, t=pvc_pos)

        attr.set(1)
        mc.select(ikc)

    # Apply ball ctl after switching
    fkCtls[-1].setMtx(ball_mtx)

    logging.info(f"{rigID}: Switched to {'IK' if toIKMode else 'FK'}.")


def calcPvcPos(obj1, obj2, obj3):
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
