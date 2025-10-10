import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode

# from nl_modules.nodel.loc_node import LocNode
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
    ro = tgtJnt.a.rotateOrder.get()
    grp = GrpNode("corr_grp_#", p=p, pf=tgtJnt)
    jnt_rad = tgtJnt.a.radius.get()
    jnt = JntNode("corr_jnt_#", p=grp, pf=tgtJnt, r=jnt_rad * 0.8)
    grp.a.rotateOrder.set(ro)
    jnt.a.rotateOrder.set(ro)

    common.cstMulti(parentJnt, tgtJnt, grp, cstType="ori")
    tgtJnt.cstPoi(grp)

    dir = 1 if dir > 0 else -1
    jnt.color = Color.RED if dir > 0 else Color.YELLOW
    grp.a.s.set(dir, dir, dir)

    CrvNode.buildLineLinked(tgt1=jnt, tgt2=tgtJnt, pf="corr", dspType=0, p=grp)

    # offset but keep corrective in the middle -------------
    # ofsInitRota = jnt.a.add("ofsInitRota")
    # ofsInitRota * dir >> loc.a[driver]
    # ((90 + ofsInitRota) / (90 - ofsInitRota)) >> oriCst.a.w0
    # ------------------------------------------------------

    offsetInit = jnt.a.add("offsetInit", dv=1, min=0)
    offsetScalePos = jnt.a.add("offsetScalePos", dv=3, min=0)
    offsetScaleNeg = jnt.a.add("offsetScaleNeg", dv=3, min=0)

    r = rotator.a[fr]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    ofsScale = (r > 0).setCdn(ifTrue=offsetScalePos, ifFalse=offsetScaleNeg)
    offsetInit + ofsScale * rAbs / 90 >> jnt.a[to]

    jnt.a.showAttr()
