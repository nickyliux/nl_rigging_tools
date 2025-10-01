import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def corrSysSetup(
    tgtJnt=None, parentJnt=None, rotator=None, buildTy=True, buildTz=False
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    tgtJnt = DagNode(tgtJnt)
    parentJnt = DagNode(parentJnt)
    rotator = DagNode(rotator)

    if not tgtJnt.exists() or not parentJnt.exists() or not rotator.exists():
        mc.warning("Input not found.")
        return

    corrGrp = GrpNode("grp_#", pf="corr")
    if buildTy:
        corrJntSetup(tgtJnt, parentJnt, rotator, p=corrGrp)
        corrJntSetup(tgtJnt, parentJnt, rotator, p=corrGrp, dir=-1)
    if buildTz:
        corrJntSetup(tgtJnt, parentJnt, rotator, driver="ry", driven="tz", p=corrGrp)
        corrJntSetup(
            tgtJnt, parentJnt, rotator, driver="ry", driven="tz", p=corrGrp, dir=-1
        )


def corrJntSetup(
    tgtJnt=None, parentJnt=None, rotator=None, driver="rz", driven="ty", dir=1, p=None
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""
    # ---------------------------------------------
    grp = GrpNode("corr_grp_#", p=p, pf=tgtJnt)
    jnt_rad = tgtJnt.a.radius.get()
    jnt = JntNode("corr_#", p=grp, pf=tgtJnt, r=jnt_rad, color=Color.YELLOW)

    common.cstMulti(parentJnt, tgtJnt, grp, cstType="ori")
    tgtJnt.cstPoi(grp)

    dir = 1 if dir > 0 else -1
    grp.a.s.set(dir, dir, dir)

    # offset but keep corrective in the middle -------------
    # ofsInitRota = jnt.a.add("ofsInitRota")
    # ofsInitRota * dir >> loc.a[driver]
    # ((90 + ofsInitRota) / (90 - ofsInitRota)) >> oriCst.a.w0
    # ------------------------------------------------------

    ofsInit = jnt.a.add("ofsInit", dv=1, min=0)
    ofsScalePos = jnt.a.add("ofsScalePos", dv=2, min=0)
    ofsScaleNeg = jnt.a.add("ofsScaleNeg", dv=2, min=0)

    r = rotator.a[driver]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    ofsScale = (r > 0).setCdn(ifTrue=ofsScalePos, ifFalse=ofsScaleNeg)
    ofsInit + ofsScale * rAbs / 90 >> jnt.a[driven]

    jnt.a.showAttr()
