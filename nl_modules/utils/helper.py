import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def helperSysSetup2(tgtJnt=None, buildY=False, buildZ=False):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    helperSysSetup(
        tgtJnt=tgtJnt,
        parentJnt=DagNode(tgtJnt).parent,
        holder=tgtJnt,
        buildY=buildY,
        buildZ=buildZ,
    )


def helperSysSetup(
    tgtJnt=None, parentJnt=None, holder=None, buildY=False, buildZ=False
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    tgtJnt = DagNode(tgtJnt)
    parentJnt = DagNode(parentJnt)
    holder = DagNode(holder)

    if not tgtJnt.exists() or not parentJnt.exists() or not holder.exists():
        mc.warning("Input not found.")
        return
    SKL = GrpNode("SKL")

    if buildY:
        helperJntSetup(tgtJnt, parentJnt, holder, fr="rz", to="ty", p=SKL)
        helperJntSetup(tgtJnt, parentJnt, holder, fr="rz", to="ty", dir=-1, p=SKL)
    if buildZ:
        helperJntSetup(tgtJnt, parentJnt, holder, fr="ry", to="tz", p=SKL)
        helperJntSetup(tgtJnt, parentJnt, holder, fr="ry", to="tz", dir=-1, p=SKL)


def helperJntSetup(
    tgtJnt=None, parentJnt=None, rotator=None, fr=None, to=None, dir=1, p=None
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""
    # ---------------------------------------------
    grp = GrpNode("corr_grp_#", p=p, pf=tgtJnt)
    jnt_rad = tgtJnt.a.radius.get()
    jnt = JntNode("corr_jnt_#", p=grp, pf=tgtJnt, r=jnt_rad / 2, color=Color.YELLOW)

    common.cstMulti(parentJnt, tgtJnt, grp, cstType="ori")
    tgtJnt.cstPoi(grp)

    dir = 1 if dir > 0 else -1
    grp.a.s.set(dir, dir, dir)

    # offset but keep corrective in the middle -------------
    # ofsInitRota = jnt.a.add("ofsInitRota")
    # ofsInitRota * dir >> loc.a[driver]
    # ((90 + ofsInitRota) / (90 - ofsInitRota)) >> oriCst.a.w0
    # ------------------------------------------------------

    ofsInit = jnt.a.add("ofsInit", dv=2, min=0)
    ofsScalePos = jnt.a.add("ofsScalePos", dv=4, min=0)
    ofsScaleNeg = jnt.a.add("ofsScaleNeg", dv=4, min=0)

    r = rotator.a[fr]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    ofsScale = (r > 0).setCdn(ifTrue=ofsScalePos, ifFalse=ofsScaleNeg)
    ofsInit + ofsScale * rAbs / 90 >> jnt.a[to]

    jnt.a.showAttr()
