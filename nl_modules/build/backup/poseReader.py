import maya.cmds as mc
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode


def nl_poseReader(startJ, midJ, endJ):
    """Pose reader using two aim constraints
    For x as aim axis,
        rz = bend
        rx = twist
        ry = side
    """
    startJN = JntNode(startJ)
    midJN = JntNode(midJ)
    endJN = JntNode(endJ)

    # assume aim axis is +x
    L = endJN.a.tx.get()

    grp1 = GrpNode("poseReader_GRP", align=midJN, p=startJN)

    bend_main = LocNode("bend_main_LOC", p=grp1, align=midJN, matchOfs=(-L, 0, 0))
    bend_up = LocNode("bend_up_LOC", p=grp1, align=midJN, matchOfs=(-L, L, 0))
    bend_tgt = LocNode("bend_tgt_LOC", p=midJN, align=endJN)

    bend_tgt.cstAim(
        bend_main,
        worldUpType="object",
        worldUpObject=bend_up,
        aim=(1, 0, 0),
        u=(0, 1, 0),
    )

    midJN.a.add("poseReader_bend")
    midJN.a.add("poseReader_twist")
    midJN.a.add("poseReader_side")

    bend_main.a.rz * 2 >> midJN.a.poseReader_bend
    bend_main.a.ry * 2 >> midJN.a.poseReader_side

    grp2 = GrpNode("poseReaderTwist_GRP", align=midJN, p=grp1)

    twist_main = LocNode("twist_main_LOC", p=grp2, align=midJN, size=0.5)
    twist_tgt = LocNode(
        "twist_tgt_LOC", p=midJN, align=midJN, matchOfs=(0, 0, L), size=0.5
    )

    twist_tgt.cstAim(
        twist_main,
        worldUpType="object",
        worldUpObject=bend_tgt,
        aim=[0, 0, 1],
        u=[1, 0, 0],
    )

    midJN.a.poseReader_bend >> grp2.a.rz
    midJN.a.poseReader_side >> grp2.a.ry
    twist_main.a.rx >> midJN.a.poseReader_twist

    mc.hide(bend_tgt, twist_tgt, grp1)

    mc.select(midJN)


nl_poseReader("joint1", "joint2", "joint3")
