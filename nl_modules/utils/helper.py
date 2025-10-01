import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.jnt_node import JntNode


def corrJntSetup(tgtJnt=None, parentJnt=None, rotaDriver=None):

    tgtJnt = DagNode(tgtJnt)
    parentJnt = DagNode(parentJnt)
    rotaDriver = DagNode(rotaDriver)

    if not tgtJnt.exists() or not parentJnt.exists() or not rotaDriver.exists():
        mc.warning("Input not found.")
        return

    grp = GrpNode("grp_#", pf="corr")

    # ---------------------------------------------
    grp2 = GrpNode("grp2_#", p=grp, pf="corr")
    loc = LocNode("corrLoc_#", p=grp2, pf="corr")
    jnt = JntNode("corrJnt_#", p=loc, pf="corr")

    oriCst = common.cstMulti(parentJnt, tgtJnt, grp2, cstType="ori")
    tgtJnt.cstPoi(grp2)

    rotaOfs = jnt.a.add("rotaOffset")
    rotaOfs >> loc.a.rz
    ((90 + rotaOfs) / (90 - rotaOfs)) >> oriCst.a.w0

    ut.remap_(rotaDriver.a.rz, 0, 180, -1, -3) >> jnt.a.ty
