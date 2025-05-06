def mirrorCtlShape(ctl):
    """Mirror ctl shape and return opposite"""

    from nl_modules.utils import guide
    from nl_modules.nodel.group_node import GroupNode
    from nl_modules.nodel.base.dag_node import DagNode
    import maya.cmds as mc
    import logging

    ctl = DagNode(ctl)
    if not ctl.shape:
        logging.info(f"Missing shape in {ctl}")
        return

    pf = ctl.name.split("_")[0]
    mG = DagNode(pf + "_master_guide")

    if not mG.exists():
        logging.info(f"Missing master guide for {ctl}")
        return

    opp = guide.getOppositeCtl(ctl, pfB4Pf=0)
    if not opp:
        logging.info(f"No opposite found for {ctl.name}")
        return

    dup = ctl.duplicate()
    dup.a.showAttr(t=1, r=1, s=1)
    if dup.children:
        mc.delete(dup.children)

    # Group the duplicated
    # Neg scale it
    # Blend to opposite
    myGrp = GroupNode("myG", align=mG, snap=dup)
    dup | myGrp

    if dup.a.wsMirror.exists():
        myGrp.a.sx.set(-1)
    else:
        myGrp.a.s.set(-1, -1, -1)

    myGrp.freezeXf(t=0, r=0, s=1)
    mc.blendShape(dup.shape, opp.shape, w=(0, 1))
    opp.deleteHistory()
    mc.delete(dup, myGrp)

    return opp
