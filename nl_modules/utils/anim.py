import logging
import maya.cmds as mc

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode

# def applyOrder(name):
#
#     import re
#     if re.match("^(\w+)_master_guide$", name):
#         return "_" + name
#     else:
#         return name
#
# def mirXForm(grp, wsMirror=0):
#
#     if not grp.a.tx.isLock():
#         grp.a.tx.set2(-1, mul=1)
#     if not grp.a.ry.isLock():
#         grp.a.ry.set2(-1, mul=1)
#     if not grp.a.rz.isLock():
#         grp.a.rz.set2(-1, mul=1)
#
#     if not wsMirror:
#         if not grp.a.rx.isLock():
#             grp.a.rx.set2(180,add=1)


def switchToSpaceTgt(spaceName):
    """switch space for all selList with attribute "space". World transform is unchanged
    e.g.
        switchToSpace("master")
    """
    for ctl in mc.ls(sl=1):
        ctlN = DagNode(ctl)

        if ctlN.a.space.exists():
            optionList = ctlN.a.space.query(le=1)[0].split(":")
            optionDict = {n: i for i, n in enumerate(optionList)}
            if spaceName in optionList:
                # store xform before and re-apply after space switch
                m = mc.xform(ctlN, q=1, ws=1, m=1)
                ctlN.a.space.set(optionDict[spaceName])
                mc.xform(ctlN, ws=1, m=m)


def switchToFkIk(attr=None, toIKMode=0, rigNode=None):
    """Switch fk ik for input rigNode. World transform is unchanged
    e.g.
        switchToFkIk(attr=, toIKMode=1, rigNode=)
    """
    if rigNode and rigNode.a.nodeState.get() == 2:

        rigID = rigNode.a.rigID.get()
        rootJ = rigNode.a.rootJ.inConnNode
        upr = rootJ.children[0]
        lwr = upr.children[0]
        palm = lwr.children[0]
        ball = palm.children[0]
        palm_bf = DagNode(palm.name + "_bf")

        hip_fkc = rigNode.a.hip_fkc.inConnNode
        upr_fkc = rigNode.a.upr_fkc.inConnNode
        lwr_fkc = rigNode.a.lwr_fkc.inConnNode
        palm_fkc = rigNode.a.palm_fkc.inConnNode
        ball_fkc = rigNode.a.ball_fkc.inConnNode
        ikc = rigNode.a.ikc.inConnNode
        pvc = rigNode.a.pvc.inConnNode
        #
        #   To IK Mode : Snap ikc to matchers under fkc
        #
        if toIKMode == 1:
            ikcMatcher = DagNode(ikc + "_matcher")
            if not ikcMatcher.exists():
                logging.error(f"{ikc}_matcher NOT found")
                return
            smartCtl = DagNode(rigID + "_smart_ctl")

            if ikc and pvc:
                pos1 = upr.o.pos
                pos2 = lwr.o.pos
                pos3 = palm.o.pos

                autoAimAttr = hip_fkc.a["autoAim"]
                if autoAimAttr.exists():
                    loc = LocNode("_#", align=hip_fkc)
                    autoAimAttr.set(0)
                    hip_fkc.alignTo(loc)
                    loc.delete()

                if smartCtl.exists():
                    smartCtl.resetXf()

                ikc.alignTo(ikcMatcher)

                fkPin = pvc.a["fkPin"]
                if fkPin.exists():
                    fkPin.set(0)

                pvPin = pvc.a["pvPin"]
                if pvPin.exists() and pvPin.get() > 0.5:
                    pvc.alignTo(lwr)
                else:
                    pvc_pos_grp = switchToFkIk_calcPvcPos(pos1, pos2, pos3)
                    pvc.snapTo(pvc_pos_grp)
                    pvc_pos_grp.delete()
        #
        #   To FK Mode : Snap fkc to current limb
        #
        else:
            if upr_fkc and lwr_fkc and palm_fkc and upr and lwr and ikc:

                loc = LocNode("_#", align=ball_fkc)

                upr_fkc.alignTo(upr)
                lwr_fkc.alignTo(lwr)
                if palm_bf.exists():
                    palm_fkc.alignTo(palm_bf)

                ball_fkc.alignTo(loc)

    attr.set(toIKMode)
    mc.select(cl=1)


def switchToFkIk_calcPvcPos(pos1, pos2, pos3):
    """return grp at pvc position by moving 3-cv curve mid cv along normal direction
    e.g.
        switchToFkIk_calcPvcPos(obj1.o.pos, obj2.o.pos, obj3.o.pos)
    """
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
