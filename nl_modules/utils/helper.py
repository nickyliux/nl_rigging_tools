import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def corrJntSetup(
    tgtJnt=None, parentJnt=None, rotator=None, driver="rz", driven="ty", dir=1
):

    tgtJnt = DagNode(tgtJnt)
    parentJnt = DagNode(parentJnt)
    rotator = DagNode(rotator)

    if not tgtJnt.exists() or not parentJnt.exists() or not rotator.exists():
        mc.warning("Input not found.")
        return

    jnt_rad = tgtJnt.a.radius.get() / 2
    grp = GrpNode("grp_#", pf="corr")

    # - rz >> + ty
    # ---------------------------------------------
    grp2 = GrpNode("grp2_#", p=grp, pf="corr")
    loc = LocNode("loc_#", p=grp2, pf="corr")
    jnt = JntNode("jnt_#", p=loc, pf="corr", r=jnt_rad, color=Color.YELLOW)

    oriCst = common.cstMulti(parentJnt, tgtJnt, grp2, cstType="ori")
    tgtJnt.cstPoi(grp2)

    dir = 1 if dir > 0 else -1
    grp2.a.s.set(dir, dir, dir)

    # offset but keep corrective in the middle -------------
    ofsInitRota = jnt.a.add("ofsInitRota")
    ofsInitRota * dir >> loc.a[driver]
    ((90 + ofsInitRota) / (90 - ofsInitRota)) >> oriCst.a.w0
    # ------------------------------------------------------

    ofsInit = jnt.a.add("ofsInit", dv=1, min=0)
    ofsMulti = jnt.a.add("ofsMulti", dv=2, min=1)
    r = rotator.a[driver]
    rAbs = (r < 0).setCdn(ifTrue=r * -1, ifFalse=r)

    ofsResult = ofsInit + ofsMulti * rAbs / 90

    reverse = jnt.a.add("reverse", attrType="bool", dv=0)
    revOut = (reverse == 0).setCdn(ifTrue=1, ifFalse=-1)

    (ut.remap_(r, 0, dir * 180 * revOut, ofsInit, ofsResult) >> jnt.a[driven])
