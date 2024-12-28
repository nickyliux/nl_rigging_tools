import maya.cmds as mc
import logging

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode

# def applyOrder(name):
#
#     import re
#     if re.match("^(\w+)_master_guide$", name):
#         return "_" + name
#     else:
#         return name
#
# def mirXForm(grp, wsMirrorAxis=0):
#
#     if not grp.a.tx.isLock():
#         grp.a.tx.set2(-1, mul=1)
#     if not grp.a.ry.isLock():
#         grp.a.ry.set2(-1, mul=1)
#     if not grp.a.rz.isLock():
#         grp.a.rz.set2(-1, mul=1)
#
#     if not wsMirrorAxis:
#         if not grp.a.rx.isLock():
#             grp.a.rx.set2(180,add=1)


def switchToSpaceTgt(spaceName):
    """switch space for all selected with attribute "space". World transform is unchanged
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


def switchToFkIk(attr=None, toIK=0, rigNode=None):
    """Switch fk ik for input rigNode. World transform is unchanged
    e.g.
        switchToFkIk(attr=, toIK=1, rigNode=)
    """
    rN = rigNode
    if rN and rN.a.nodeState.get() == 2:

        rigClass = rN.a.rigClass.get()

        rootJ = rN.a.rootJ.inConnNode
        upr = rootJ.children[0]
        lwr = upr.children[0]
        palm = lwr.children[0]

        ikc = rN.a.ikc.inConnNode
        pvc = rN.a.pvc.inConnNode

        if toIK == 1:
            # FK to IK
            # Snap ikc to matchers under fkc
            ikcMatcher = DagNode(ikc + "_matcher")

            if ikc and pvc and ikcMatcher.exists():
                pos1 = upr.o.pos
                pos2 = lwr.o.pos
                pos3 = palm.o.pos

                pvc_pos_grp = switchToFkIk_calcPvcPos(pos1, pos2, pos3)
                ikc.alignTo(ikcMatcher)
                pvc.snapTo(pvc_pos_grp)
                pvc_pos_grp.delete()

        else:
            # IK to FK
            # Snap fkc to current limb
            upr_fkc = rN.a.upr_fkc.inConnNode
            lwr_fkc = rN.a.lwr_fkc.inConnNode
            palm_fkc = rN.a.palm_fkc.inConnNode

            if upr_fkc and lwr_fkc and palm_fkc and upr and lwr and palm:
                upr_fkc.alignTo(upr)
                lwr_fkc.alignTo(lwr)
                palm_fkc.alignTo(palm)

            if rigClass == "LegQd":
                digit_jnt = palm.childrenJt[0]
                digit_fkc = rN.a["digit_fkc"].inConnNode
                digit_fkc.alignTo(digit_jnt)

    attr.set(toIK)
    mc.select(cl=1)


def switchToFkIk_calcPvcPos(pos1, pos2, pos3):
    """return grp at pvc position by moving 3-cv curve mid cv along normal direction
    e.g.
        switchToFkIk_calcPvcPos(obj1.o.pos, obj2.o.pos, obj3.o.pos)
    """
    from nl_modules.utils import maths

    crv = CurveNode(mc.curve(p=[pos1, pos2, pos3], d=1, k=[0, 1, 2]))
    d1 = maths.getDistBetwPt(pos1, pos2)
    d2 = maths.getDistBetwPt(pos2, pos3)
    distToMove = (d1 + d2) * 3 / 4

    mid_cv = crv + ".cv[1]"
    mc.moveVertexAlongDirection(mid_cv, n=distToMove)

    pvc_pos_grp = GroupNode("grp#")
    mc.xform(pvc_pos_grp, t=mc.xform(mid_cv, t=1, ws=1, q=1))
    crv.delete()

    return pvc_pos_grp
