import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode


def switch_to_space_target(spaceName):
    """Switch space target for selected controls to the specified spaceName."""

    for ctl in mc.ls(sl=1):
        ctlN = DagNode(ctl)

        if ctlN.a.space.exists():
            optionList = ctlN.a.space.query(listEnum=1)[0].split(":")
            optionDict = {n: i for i, n in enumerate(optionList)}
            if spaceName in optionList:
                # store xform before and re-apply after space switch
                m = mc.xform(ctlN, q=1, ws=1, m=1)
                ctlN.a.space.set(optionDict[spaceName])
                mc.xform(ctlN, ws=1, m=m)


def switch_ik_fk(attr=None, toIKMode=0, rigNode=None):
    """Switch between FK and IK modes for a rig."""

    if rigNode and rigNode.a.nodeState.get() == 2:
        # --- Gather rig nodes and controls ---
        rigID = rigNode.a.rigID.get()
        rootJ = rigNode.a.rootJ.inConnNode
        upr = rootJ.children[0]
        lwr = upr.children[0]
        palm = lwr.children[0]
        ball = palm.children[0]
        palm_bf = DagNode(palm.name + "_bf")

        root_fkc = (
            rigNode.a["hip_fkc"].inConnNode or rigNode.a["clavicle_fkc"].inConnNode
        )

        upr_fkc = rigNode.a["upr_fkc"].inConnNode
        lwr_fkc = rigNode.a["lwr_fkc"].inConnNode
        palm_fkc = rigNode.a["palm_fkc"].inConnNode
        ball_fkc = rigNode.a["ball_fkc"].inConnNode
        ball_ikc = rigNode.a["ball_ikc"].inConnNode
        ikc = rigNode.a.ikc.inConnNode
        pvc = rigNode.a.pvc.inConnNode

        if not ikc:
            logging.error("IK control not found. Cannot switch IK/FK.")
            return

        if not pvc:
            logging.error("PVC control not found. Cannot switch IK/FK.")
            return

        if toIKMode == 1:
            # --- Switch to IK Mode: Snap IK controls to current limb ---
            ikcMatcher = DagNode(ikc + "_matcher")
            if not ikcMatcher.exists():
                raise ValueError(f"{ikc}_matcher NOT found")

            smartCtl = DagNode(rigID + "_smart_ctl")

            # Get limb positions
            pos1 = upr.o.pos
            pos2 = lwr.o.pos
            pos3 = palm.o.pos

            # Reset autoAim if present
            autoAimAttr = root_fkc.a["autoAim"]
            if autoAimAttr.exists():
                loc = LocNode("_#", align=root_fkc)
                autoAimAttr.set(0)
                root_fkc.alignTo(loc)
                loc.delete()

            # Reset smartCtl if present
            if smartCtl.exists():
                smartCtl.resetXf()

            # Align IK control to matcher
            ikc.alignTo(ikcMatcher)

            # Reset FK pin if present
            fkPin = pvc.a["fkPin"]
            if fkPin.exists():
                fkPin.set(0)

            # Align pole vector control
            pvPin = pvc.a["pvPin"]
            if pvPin.exists() and pvPin.get() > 0.5:
                pvc.alignTo(lwr)
            else:
                pvc_pos_grp = switch_ik_fk_calcPvc(pos1, pos2, pos3)
                pvc.snapTo(pvc_pos_grp)
                pvc_pos_grp.delete()

            switch_ball_ctl = ball_ikc and ball

            if switch_ball_ctl:
                ball_ikc.a.r.set(0, 0, 0)
                ball_loc = LocNode("temp_#", align=ball)
                attr.set(1)
                ball_fkc.alignTo(ball_loc, rotateOnly=1)
                ball_loc.delete()
            else:
                attr.set(1)

        elif toIKMode == 0:
            # --- Switch to FK Mode: Snap FK controls to current limb ---

            upr_fkc.alignTo(upr)
            lwr_fkc.alignTo(lwr)
            if palm_bf.exists():
                palm_fkc.alignTo(palm_bf)

            switch_ball_ctl = ball_fkc and ball

            if switch_ball_ctl:
                ball_loc = LocNode("temp_#", align=ball)
                attr.set(0)
                ball_fkc.alignTo(ball_loc, rotateOnly=1)
                ball_loc.delete()
            else:
                attr.set(0)

    mc.select(cl=1)


def switch_ik_fk_calcPvc(pos1, pos2, pos3):
    """Calculate the position for the PVC control given the three positions of the limb."""

    from nl_modules.utils import maths

    crv = CrvNode(mc.curve(p=[pos1, pos2, pos3], d=1, k=[0, 1, 2]))
    d1 = maths.getDistBetwPt(pos1, pos2)
    d2 = maths.getDistBetwPt(pos2, pos3)
    distToMove = (d1 + d2) * 0.5

    mid_cv = crv + ".cv[1]"
    mc.moveVertexAlongDirection(mid_cv, n=distToMove)

    pvc_pos_grp = GrpNode("grp#")
    mc.xform(pvc_pos_grp, t=mc.xform(mid_cv, t=1, ws=1, q=1))
    crv.delete()

    return pvc_pos_grp
