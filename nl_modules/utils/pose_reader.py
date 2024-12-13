from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
import maya.cmds as mc


def createPoseReader(targetJ: JointNode):
    """
    Args:
        targetJ:

    Returns:

    """
    childJ = targetJ.children
    parentJ = targetJ.parent

    if childJ and parentJ:

        # Prepare setup at origin
        grp = GroupNode("psd_grp_#")
        psd_loc = LocNode("psd_loc_#", p=grp)
        childJ[0].cstPoi(psd_loc)

        ctl = CurveNode("psd_ctl_#", p=grp, addOfs=1)
        ctl.a.add("psdOutValue")

        ball = DagNode(mc.sphere(n="psdBall_#")[0])
        ball | ctl
        parent_zro, point_zro, null1_zro, null2_zro = ball.addOffsetGrp(count=4)

        # Install setup at target joint
        parentJ.cstPar(parent_zro)
        targetJ.cstPoi(point_zro)
        targetJ.cstPar(null1_zro, keep=0)

        targetJ.a.ro >> point_zro.a.ro

        # Connect setup
        cpos = DepNode("psd_cpos_#", nodeType="closestPointOnSurface")
        ball.shape.a.worldSpace >> cpos.a.inputSurface
        psd_loc.a.t >> cpos.a.inPosition

        setRge = DepNode("psd_setRge_#", nodeType="setRange")
        setRge.a.minX.set(1)
        setRge.a.maxX.set(0)
        setRge.a.oldMinX.set(0)
        setRge.a.oldMaxX.set(2)
        cpos.a.parameterU >> setRge.a.valueX

        # Connect last
        setRge.a.outValueX >> ctl
