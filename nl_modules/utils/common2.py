import maya.cmds as mc
import logging
from collections import OrderedDict

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import utils_node as ut

from nl_modules.utils.color import Color


def addAwesomeSpine_createCtlJ(jointList, r=8, pf="", color=Color.RED, p=None):
    """create control joint at start, mid, end for a joint chain
    e.g.
        createCtlJ(jntList, 10)
    """
    from nl_modules.nodel.joint_node import JointNode
    from nl_modules.utils.color import Color

    name = ["staJ", "midJ", "endJ"]
    j1 = JointNode(name[0], pf=pf, r=r, color=color, p=p)
    j1.alignTo(jointList[0])

    j2 = JointNode(name[1], pf=pf, r=r, color=color, p=p)
    j2.alignTo(jointList[int(len(jointList) / 2)])

    j3 = JointNode(name[2], pf=pf, r=r, color=color, p=p)
    j3.alignTo(jointList[-1])

    j1.freezeXf()
    j2.freezeXf()
    j3.freezeXf()
    return [j1, j2, j3]


def addAwesomeSpine(targetJ, scaleGrp=None, reader=None, ctlParent=None, grp=None):
    from nl_modules.nodel.curve_node import CurveNode
    from nl_modules.nodel.joint_node import JointNode

    targetJChild = targetJ.childrenJt[0]
    refSize = abs(targetJChild.a.tx.get()) * 0.2 if targetJChild else 1

    chain = makeChain(targetJ, targetJChild, count=10)
    chain[0] | grp

    ctlJnts = addAwesomeSpine_createCtlJ(chain, pf=targetJ.name, p=ctlParent, r=refSize)

    ikCtl = []
    for i in range(3):
        ikCtl.append(
            CurveNode(
                "jc", pf=targetJ.name, scale=refSize, align=ctlJnts[i], p=ctlParent
            )
        )
        ikCtl[i].cstPar(ctlJnts[i])

    addAwesomeIK(
        chain,
        ctlJnts,
        ikCtl=ikCtl,
        setting=ctlJnts[0],
        pf=chain[0].name,
        scaleGrp=scaleGrp,
        spIkUpParent=ctlParent,
    )

    ikCtl[0].cstPoi(chain[0])

    for i in range(3):
        ikCtl[i].addOffsetGrp()

    # if reader:
    #     reader.a.rx >> ikCtl[2].a.rx

    for j in chain:
        JointNode(j).addProxyMesh(size=refSize * 0.5, p=self.PRX)


def clusterSetup(crv, ikCtl):
    """create cluster on cv for ctls to drive the curve"""

    from nl_modules.nodel.curve_node import CurveNode
    from nl_modules.nodel.base.dag_node import DagNode

    allCV = CurveNode(crv).cvs
    clu = []
    if len(allCV) == 5 and len(ikCtl) == 3:
        [clu.append(DagNode(mc.cluster(c)[1])) for c in allCV]

        n = ikCtl[0] + "_clu#"
        mc.group(clu[0], n=n) | ikCtl[0]
        mc.group(clu[1], n=n) | ikCtl[0]
        mc.group(clu[2], n=n) | ikCtl[1]
        mc.group(clu[3], n=n) | ikCtl[2]
        mc.group(clu[4], n=n) | ikCtl[2]
        mc.hide(clu)
    else:
        logging.error("Invalid curve or ik controls")


def addAwesomeIK(
    chain, ctlJnts, ikCtl=None, pf="", setting=None, scaleGrp=None, spIkUpParent=None
):
    from nl_modules.nodel.ik_node import IkNode
    from nl_modules.utils import utils_node as ut
    from nl_modules.utils import common

    chain_as = common.extractSk(chain, "_as")
    NUM = len(chain)

    for i in range(NUM - 1):
        ikH1 = IkNode(
            "1",
            pf=pf,
            sj=chain[i],
            ee=chain[i + 1],
            ikc=setting,
            quat=1,
            scaleFix=scaleGrp,
        )
        ofs = ikH1.addOffsetGrp()
        ofs | chain_as[i + 1]

        chain_as[i + 1].a.tx >> chain[i + 1].a.tx

        ut.blendN_(ctlJnts[0].a.rx, ctlJnts[2].a.rx, w=i / (NUM - 1)) >> ofs.a.rx

    spIkH = IkNode(
        "as",
        pf=pf,
        sj=chain_as[0],
        ee=chain_as[-1],
        sol=2,
        setting=setting,
        scaleFix=scaleGrp,
    )
    spIkH.stretchySp(on=1)
    spCrv = spIkH.getCrv()[1]
    spCrv.a.inheritsTransform.set(0)
    (spIkH, spCrv) | spIkUpParent

    ctlJnts[-1].cstOri(chain[-1])

    # twist_loc = LocNode("advUp_loc_#", pf=pf, align=chain[0], p=spIkUpParent)
    # spIkH.advTwistCtl(twist_loc)

    clusterSetup(spCrv, ikCtl)


# def proRigRibbon(fr_loc=None, to_loc=None, pf=""):
#     """
#     Args:
#         fr_loc:  start pos
#         to_loc:  end pos
#         pf:      prefix
#
#     Returns:
#         Ribbon group from given locators
#     """
#     from nl_modules.nodel.base.dag_node import DagNode
#     from nl_modules.nodel.group_node import GroupNode
#     from nl_modules.nodel.surf_node import SurfNode
#     from nl_modules.nodel.loc_node import LocNode
#     from nl_modules.nodel.ik_node import IkNode
#     from nl_modules.nodel.joint_node import JointNode
#
#     fr_locN = DagNode(fr_loc) if isinstance(fr_loc, str) else fr_loc
#     to_locN = DagNode(to_loc) if isinstance(to_loc, str) else to_loc
#
#     seg = 5
#     DIST = fr_locN.o.distanceTo(to_locN)
#
#     # ------------------------------
#     # Build Groups
#     # ------------------------------
#     DATA_GRP = GroupNode("data_grp", pf=pf)
#     RB_GRP = GroupNode("rb_grp", pf=pf, p=DATA_GRP)
#
#     BSE_GRP = GroupNode("bse_grp", pf=pf)
#     JNT_GRP = GroupNode("jnt_grp", pf=pf)
#     CTL_GRP = GroupNode("ctl_grp", pf=pf)
#     AIM_GRP = GroupNode("aim_grp", pf=pf)
#
#     for g in (RB_GRP, JNT_GRP, CTL_GRP, AIM_GRP):
#         g.a.r.set(180, 0, 90)
#
#     (BSE_GRP, JNT_GRP, CTL_GRP, AIM_GRP) | RB_GRP
#
#     # ------------------------------
#     # Build Surf
#     # ------------------------------
#     surf = SurfNode(
#         "rb_nurbs", pf=pf, seg=seg, ax=(1, 0, 0), lr=seg, width=DIST / seg, p=BSE_GRP
#     )
#     surf.a.inheritsTransform.set(0)
#     cstMulti(fr_locN, to_locN, surf, delete=True, cstType="poi")
#
#     # ------------------------------
#     # Build Rivet
#     # ------------------------------
#     mc.select(surf.patches)
#     pin, pinXf = makeRivet(p=BSE_GRP)
#
#     pin.a.normalAxis.set(1)  # Y
#     pin.a.tangentAxis.set(2)  # Z
#
#     rbJnt = []
#     for i in range(len(pinXf)):
#         j = JointNode("rbJnt_#", pf=pf, p=JNT_GRP, addOfs=1)
#
#         pinXf[i].cstPar(j.parent)
#         pinXf[i].a.inheritsTransform.set(0)
#         rbJnt.append(j)
#
#     rbJntCount = len(rbJnt)
#
#     if rbJntCount != seg:
#         logging.error(f"Num of joint must be {seg}")
#         return
#
#     # ------------------------------
#     # Build Locators
#     # ------------------------------
#     lw_loc = LocNode("lw_loc", align=rbJnt[0], pf=pf, p=CTL_GRP, size=DIST / 4)
#     lw_loc_upVec = LocNode("lw_loc_upVec", align=rbJnt[0], pf=pf, p=lw_loc)
#     lw_loc.snapTo(fr_locN)
#     lw_loc.addOffsetGrp()
#     lw_loc_upVec.a.ty.set(DIST / 4)
#
#     up_loc = LocNode("up_loc", align=rbJnt[0], pf=pf, p=CTL_GRP, size=DIST / 4)
#     up_loc_upVec = LocNode("up_loc_upVec", align=rbJnt[0], pf=pf, p=up_loc)
#     up_loc.snapTo(to_locN)
#     up_loc.addOffsetGrp()
#     up_loc_upVec.a.ty.set(DIST / 4)
#
#     md_loc = LocNode("md_loc", pf=pf, align=rbJnt[0], p=CTL_GRP, size=DIST / 4)
#     md_loc_ofs1, md_loc_ofs2 = md_loc.addOffsetGrp(count=2)
#
#     lw_loc.cstSca(rbJnt[0].offset)
#     md_loc.cstSca(rbJnt[2].offset)
#     up_loc.cstSca(rbJnt[4].offset)
#     cstMulti(rbJnt[0].offset, rbJnt[2].offset, rbJnt[1].offset, cstType="sca")
#     cstMulti(rbJnt[2].offset, rbJnt[4].offset, rbJnt[3].offset, cstType="sca")
#
#     # ------------------------------
#     # Build Aim Chains
#     # ------------------------------
#     lw_aim, lw_aim_end = makeTwoJC2(
#         "lw_aim", pf=pf, align=rbJnt[0], snap=lw_loc, offsetX=DIST / 4, p=AIM_GRP
#     )
#     lw_aim_skn = lw_aim_end.duplicate(n=pf + "lw_aim_skn")
#     lw_aim_skn.a.t.set(0, 0, 0)
#
#     up_aim, up_aim_end = makeTwoJC2(
#         "up_aim", pf=pf, align=rbJnt[0], snap=up_loc, offsetX=-DIST / 4, p=AIM_GRP
#     )
#     up_aim_skn = up_aim_end.duplicate(n=pf + "up_aim_skn")
#     up_aim_skn.a.t.set(0, 0, 0)
#
#     md_aim, md_aim_end = makeTwoJC2(
#         "md_aim", pf=pf, align=rbJnt[0], snap=lw_loc, offsetX=DIST / 2, p=AIM_GRP
#     )
#
#     md_aim_skn = md_aim_end.duplicate(n=pf + "md_aim_skn")
#     md_aim_skn.alignTo(md_loc, p=md_loc)
#
#     lw_loc.cstPoi(lw_aim)
#     lw_loc.cstPoi(md_aim)
#     up_loc.cstPoi(up_aim)
#
#     cstMulti(lw_loc, up_loc, md_loc_ofs1, cstType="poi")
#     md_aim.cstOri(md_loc_ofs1)
#
#     for j in (lw_aim_skn, up_aim_skn, md_aim_skn):
#         j.setRadius(DIST / 6)
#
#     surf.weightTo([lw_aim_skn, up_aim_skn, md_aim_skn])
#
#     # ------------------------------
#     # Build IKs
#     # ------------------------------
#     lw_ikh = IkNode(
#         "lw_ikh", pf=pf, sj=lw_aim, ee=lw_aim_end, solver=1, quat=1, p=AIM_GRP
#     )
#     up_ikh = IkNode(
#         "up_ikh", pf=pf, sj=up_aim, ee=up_aim_end, solver=1, quat=1, p=AIM_GRP
#     )
#     md_ikh = IkNode(
#         "md_ikh", pf=pf, sj=md_aim, ee=md_aim_end, solver=1, quat=1, p=AIM_GRP
#     )
#     md_loc.cstPoi(up_ikh)
#     md_loc.cstPoi(lw_ikh)
#     up_loc.cstPoi(md_ikh)
#
#     # ------------------------------
#     # Build Twist Chains : lw
#     # ------------------------------
#     lw_twistJ, lw_twistJ_end = makeTwoJC2(
#         "lw_twist", pf=pf, snap=lw_loc, offsetX=DIST / -10, p=AIM_GRP
#     )
#
#     lw_twistG = GroupNode("lw_twistG", pf=pf, align=lw_twistJ, p=lw_twistJ)
#     lw_twistG.a.rx >> lw_aim_skn.a.rx
#
#     lw_twistJ_end.cstAim(
#         lw_twistG,
#         worldUpType="object",
#         worldUpObject=lw_loc_upVec,
#         aim=(-1, 0, 0),
#         u=(0, 1, 0),
#     )
#
#     # ------------------------------
#     # Build Twist Chains : up
#     # ------------------------------
#     up_twistJ, up_twistJ_end = makeTwoJC2(
#         "up_twist", pf=pf, snap=up_loc, offsetX=DIST / 10, p=AIM_GRP
#     )
#
#     up_twistG = GroupNode("up_twistG", pf=pf, align=up_twistJ, p=up_twistJ)
#     up_twistG.a.rx >> up_aim_skn.a.rx
#
#     up_twistJ_end.cstAim(
#         up_twistG,
#         worldUpType="object",
#         worldUpObject=up_loc_upVec,
#         aim=(1, 0, 0),
#         u=(0, 1, 0),
#     )
#
#     lw_loc.cstPoi(lw_twistJ)
#     up_loc.cstPoi(up_twistJ)
#
#     # ------------------------------
#     # Build IKs
#     # ------------------------------
#     lw_twist_ikh = IkNode(
#         "lwTw_ikh", pf=pf, sj=lw_twistJ, ee=lw_twistJ_end, solver=1, quat=1, p=lw_loc
#     )
#     up_twist_ikh = IkNode(
#         "upTw_ikh", pf=pf, sj=up_twistJ, ee=up_twistJ_end, solver=1, quat=1, p=up_loc
#     )
#     blendColors_(lw_twistG.a.r, up_twistG.a.r) >> md_loc_ofs2.a.r
#
#     for j in (lw_loc, up_loc, lw_twistJ, up_twistJ):
#         j.a.rotateOrder.set(1)  # yzx
#
#     for j in rbJnt:
#         j.addProxyMesh(DIST / 12)
#
#     # ------------------------------
#     # Build Volume
#     # ------------------------------
#     arcLD = ut.arcLenDim_(surf)
#
#     d = arcLD.a.arcLengthInV
#
#     power = RB_GRP.a.add("volPower", min=0, dv=1)
#     scaleFix = RB_GRP.a.add("scaleFix", min=0, dv=1)
#     jntScaleAttr = []
#
#     ratio = (d / DIST / scaleFix) ** power - 1
#
#     for i in range(rbJntCount):
#         attr = RB_GRP.a.add(f"jnt{i}Scale", dv=1)
#         jntScaleAttr.append(attr)
#
#         newRatio = ratio * attr + 1
#         1 / newRatio >> rbJnt[i].a.sy
#         1 / newRatio >> rbJnt[i].a.sz
#
#     if rbJntCount == 5:
#         for i, j in enumerate([0.1, 0.8, 1, 0.8, 0.1]):
#             RB_GRP.a[f"jnt{i}Scale"].set(j)
#
#     RB_GRP.a.sy >> scaleFix


# def proRigRibbon(fr_loc=None, to_loc=None, pf=""):
#     """
#     Args:
#         fr_loc:  start pos
#         to_loc:  end pos
#         pf:      prefix
#
#     Returns:
#         Ribbon group from given locators
#     """
#     from nl_modules.nodel.base.dag_node import DagNode
#     from nl_modules.nodel.group_node import GroupNode
#     from nl_modules.nodel.surf_node import SurfNode
#     from nl_modules.nodel.loc_node import LocNode
#     from nl_modules.nodel.ik_node import IkNode
#     from nl_modules.nodel.joint_node import JointNode
#
#     fr_locN = DagNode(fr_loc) if isinstance(fr_loc, str) else fr_loc
#     to_locN = DagNode(to_loc) if isinstance(to_loc, str) else to_loc
#
#     seg = 5
#     DIST = fr_locN.o.distanceTo(to_locN)
#
#     # ------------------------------
#     # Build Groups
#     # ------------------------------
#     # DATA_GRP = GroupNode("data_grp", pf=pf)
#     RB_GRP = GroupNode("rb_grp", pf=pf)
#
#     BSE_GRP = GroupNode("bse_grp", pf=pf)
#     JNT_GRP = GroupNode("jnt_grp", pf=pf)
#     CTL_GRP = GroupNode("ctl_grp", pf=pf)
#     AIM_GRP = GroupNode("aim_grp", pf=pf)
#
#     # for g in (RB_GRP, JNT_GRP, CTL_GRP, AIM_GRP):
#     #     g.a.r.set(180, 0, 90)
#
#     (BSE_GRP, JNT_GRP, CTL_GRP, AIM_GRP) | RB_GRP
#
#     # ------------------------------
#     # Build Surf
#     # ------------------------------
#     surf = SurfNode(
#         "rb_nurbs", pf=pf, uSeg=seg, ax=(0, 1, 0), lr=1 / seg, width=DIST, p=BSE_GRP
#     )
#     surf.a.inheritsTransform.set(0)
#     # cstMulti(fr_locN, to_locN, surf, delete=True, cstType="poi")
#     surf.a.tx.set(DIST / 2)
#
#     # ------------------------------
#     # Build Rivet
#     # ------------------------------
#     mc.select(surf.patches)
#     pin, pinXf = makeRivet(normal=1, tangent=0, p=BSE_GRP)
#
#     rbJnt = []
#     for i in range(len(pinXf)):
#         j = JointNode("rbJnt_#", pf=pf, p=JNT_GRP, addOfs=1)
#
#         pinXf[i].cstPar(j.parent)
#         pinXf[i].a.inheritsTransform.set(0)
#         rbJnt.append(j)
#
#     rbJntCount = len(rbJnt)
#
#     if rbJntCount != seg:
#         logging.error(f"Num of joint must be {seg}")
#         return
#
#     # ------------------------------
#     # Build Locators
#     # ------------------------------
#     lw_loc = LocNode("lw_loc", pf=pf, p=CTL_GRP, size=DIST / 4)
#     lw_loc_upVec = LocNode("lw_loc_upVec", pf=pf, p=lw_loc)
#     lw_loc.addOffsetGrp()
#     lw_loc_upVec.a.ty.set(DIST / 4)
#
#     up_loc = LocNode("up_loc", pf=pf, p=CTL_GRP, size=DIST / 4)
#     up_loc_upVec = LocNode("up_loc_upVec", pf=pf, p=up_loc)
#     up_loc.a.tx.set(DIST)
#     up_loc.addOffsetGrp()
#     up_loc_upVec.a.ty.set(DIST / 4)
#
#     md_loc = LocNode("md_loc", pf=pf, p=CTL_GRP, size=DIST / 4)
#     md_loc.a.tx.set(DIST / 2)
#     md_loc_ofs1, md_loc_ofs2 = md_loc.addOffsetGrp(count=2)
#
#     lw_loc.cstSca(rbJnt[0].offset)
#     md_loc.cstSca(rbJnt[2].offset)
#     up_loc.cstSca(rbJnt[4].offset)
#     cstMulti(rbJnt[0].offset, rbJnt[2].offset, rbJnt[1].offset, cstType="sca")
#     cstMulti(rbJnt[2].offset, rbJnt[4].offset, rbJnt[3].offset, cstType="sca")
#
#     # ------------------------------
#     # Build Aim Chains
#     # ------------------------------
#     lw_aim, lw_aim_end = makeTwoJC2(
#         "lw_aim", pf=pf, align=rbJnt[0], snap=lw_loc, offsetX=DIST / 4, p=AIM_GRP
#     )
#     lw_aim_skn = lw_aim_end.duplicate(n=pf + "lw_aim_skn")
#     lw_aim_skn.a.t.set(0, 0, 0)
#
#     up_aim, up_aim_end = makeTwoJC2(
#         "up_aim", pf=pf, align=rbJnt[0], snap=up_loc, offsetX=-DIST / 4, p=AIM_GRP
#     )
#     up_aim_skn = up_aim_end.duplicate(n=pf + "up_aim_skn")
#     up_aim_skn.a.t.set(0, 0, 0)
#
#     md_aim, md_aim_end = makeTwoJC2(
#         "md_aim", pf=pf, align=rbJnt[0], snap=lw_loc, offsetX=DIST / 2, p=AIM_GRP
#     )
#
#     md_aim_skn = md_aim_end.duplicate(n=pf + "md_aim_skn")
#     md_aim_skn.alignTo(md_loc, p=md_loc)
#
#     lw_loc.cstPoi(lw_aim)
#     lw_loc.cstPoi(md_aim)
#     up_loc.cstPoi(up_aim)
#
#     cstMulti(lw_loc, up_loc, md_loc_ofs1, cstType="poi")
#     md_aim.cstOri(md_loc_ofs1)
#
#     for j in (lw_aim_skn, up_aim_skn, md_aim_skn):
#         j.setRadius(DIST / 6)
#
#     surf.weightTo([lw_aim_skn, up_aim_skn, md_aim_skn])
#
#     # ------------------------------
#     # Build IKs
#     # ------------------------------
#     lw_ikh = IkNode(
#         "lw_ikh", pf=pf, sj=lw_aim, ee=lw_aim_end, solver=1, quat=1, p=AIM_GRP
#     )
#     up_ikh = IkNode(
#         "up_ikh", pf=pf, sj=up_aim, ee=up_aim_end, solver=1, quat=1, p=AIM_GRP
#     )
#     md_ikh = IkNode(
#         "md_ikh", pf=pf, sj=md_aim, ee=md_aim_end, solver=1, quat=1, p=AIM_GRP
#     )
#     md_loc.cstPoi(up_ikh)
#     md_loc.cstPoi(lw_ikh)
#     up_loc.cstPoi(md_ikh)
#
#     # ------------------------------
#     # Build Twist Chains : lw
#     # ------------------------------
#     lw_twistJ, lw_twistJ_end = makeTwoJC2(
#         "lw_twist", pf=pf, snap=lw_loc, offsetX=DIST / -10, p=AIM_GRP
#     )
#
#     lw_twistG = GroupNode("lw_twistG", pf=pf, align=lw_twistJ, p=lw_twistJ)
#     lw_twistG.a.rx >> lw_aim_skn.a.rx
#
#     lw_twistJ_end.cstAim(
#         lw_twistG,
#         worldUpType="object",
#         worldUpObject=lw_loc_upVec,
#         aim=(-1, 0, 0),
#         u=(0, 1, 0),
#     )
#
#     # ------------------------------
#     # Build Twist Chains : up
#     # ------------------------------
#     up_twistJ, up_twistJ_end = makeTwoJC2(
#         "up_twist", pf=pf, snap=up_loc, offsetX=DIST / 10, p=AIM_GRP
#     )
#
#     up_twistG = GroupNode("up_twistG", pf=pf, align=up_twistJ, p=up_twistJ)
#     up_twistG.a.rx >> up_aim_skn.a.rx
#
#     up_twistJ_end.cstAim(
#         up_twistG,
#         worldUpType="object",
#         worldUpObject=up_loc_upVec,
#         aim=(1, 0, 0),
#         u=(0, 1, 0),
#     )
#
#     lw_loc.cstPoi(lw_twistJ)
#     up_loc.cstPoi(up_twistJ)
#
#     # ------------------------------
#     # Build Twist IKs
#     # ------------------------------
#     lw_twist_ikh = IkNode(
#         "lwTw_ikh", pf=pf, sj=lw_twistJ, ee=lw_twistJ_end, solver=1, quat=1, p=lw_loc
#     )
#     up_twist_ikh = IkNode(
#         "upTw_ikh", pf=pf, sj=up_twistJ, ee=up_twistJ_end, solver=1, quat=1, p=up_loc
#     )
#     blendColors_(lw_twistG.a.r, up_twistG.a.r) >> md_loc_ofs2.a.r
#
#     for j in (lw_loc, up_loc, lw_twistJ, up_twistJ):
#         j.a.rotateOrder.set(1)  # yzx
#
#     for j in rbJnt:
#         j.addProxyMesh(DIST / 12)
#
#     # ------------------------------
#     # Build Volume
#     # ------------------------------
#     arcLD = ut.arcLenDim_(surf)
#
#     d = arcLD.a.arcLength
#
#     power = RB_GRP.a.add("volPower", min=0, dv=1)
#     scaleFix = RB_GRP.a.add("scaleFix", min=0, dv=1)
#     jntScaleAttr = []
#
#     ratio = (d / DIST / scaleFix) ** power - 1
#
#     for i in range(rbJntCount):
#         attr = RB_GRP.a.add(f"jnt{i}Scale", dv=1)
#         jntScaleAttr.append(attr)
#
#         newRatio = ratio * attr + 1
#         1 / newRatio >> rbJnt[i].a.sy
#         1 / newRatio >> rbJnt[i].a.sz
#
#     if rbJntCount == 5:
#         for i, j in enumerate([0.1, 0.8, 1, 0.8, 0.1]):
#             RB_GRP.a[f"jnt{i}Scale"].set(j)
#
#     RB_GRP.a.sy >> scaleFix
#
#     return RB_GRP

# def addQuatIk(targetJ, ):
#
#     from nl_modules.nodel.ik_node import IkNode
#     dupJ = targetJ.duplicate(n=targetJ.name + '_quatJ_#', po=1)
#     dupJChild = targetJ.children[0].duplicate(n=targetJ.name + 'quatJ_end_#', po=1)
#
#     dupJChild | dupJ
#     # qIk = IkNode()

def dupAndParent():
    base = DagNode('base')
    thisParent = None
    for x in mc.ls(sl=1):
        dup = base.duplicate(n=x)
        dup.alignTo(x)
        if thisParent:
            dup | thisParent
        thisParent = dup

def setCrvShapeOnTop():
    for x in mc.ls(sl=1):
        DagNode(x).a.alwaysDrawOnTop.set(1)