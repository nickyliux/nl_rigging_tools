import logging
import maya.cmds as mc
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


def helperSysSetup2(tgtJnt=None, buildRY=False, buildRZ=False):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    helperSysSetup(
        tgtJnt=tgtJnt,
        parentJnt=DagNode(tgtJnt).parent,
        holder=tgtJnt,
        buildRZ=buildRZ,
        buildRY=buildRY,
    )


def helperSysSetup(
    tgtJnt=None, parentJnt=None, holder=None, buildRY=False, buildRZ=False
):
    """Create a corrective joint system that responds to the rotation of a driver object."""
    tgtJnt = DagNode(tgtJnt)
    parentJnt = DagNode(parentJnt)
    holder = DagNode(holder)

    if not tgtJnt.exists() or not parentJnt.exists() or not holder.exists():
        mc.warning("Input not found.")
        return
    SKL = GrpNode("SKL")

    if buildRZ:
        helperJntSetup(tgtJnt, parentJnt, holder, fr="rz", to="ty", p=SKL)
        helperJntSetup(tgtJnt, parentJnt, holder, fr="rz", to="ty", dir=-1, p=SKL)
        logging.info("Add helper for RZ")
    if buildRY:
        helperJntSetup(tgtJnt, parentJnt, holder, fr="ry", to="tz", p=SKL)
        helperJntSetup(tgtJnt, parentJnt, holder, fr="ry", to="tz", dir=-1, p=SKL)
        logging.info("Add helper for RY")


def helperJntSetup(
    tgtJnt=None, parentJnt=None, rotator=None, fr=None, to=None, dir=1, p=None
):
    """Create a corrective joint setup that responds to the rotation of a driver object."""
    # ---------------------------------------------
    xDr = 1 if tgtJnt.a.tx.get() > 0 else -1
    dir = 1 if dir > 0 else -1

    dir_name = "pos" if dir * xDr == -1 else "neg"

    ro = tgtJnt.a.rotateOrder.get()
    grp = GrpNode(f"{dir_name}_{fr}", p=p, pf=tgtJnt)
    jnt_rad = tgtJnt.a.radius.get()
    jnt = JntNode(f"{dir_name}_{fr}_jnt", p=grp, pf=tgtJnt, r=jnt_rad * 0.8)
    grp.a.rotateOrder.set(ro)
    jnt.a.rotateOrder.set(ro)

    common.cstMulti(parentJnt, tgtJnt, grp, cstType="ori")
    tgtJnt.cstPoi(grp)

    jnt.color = Color.RED if xDr * dir == 1 else Color.YELLOW
    grp.a.s.set(dir, dir, dir)

    # print(jnt, tgtJnt)
    CrvNode.buildLineLinked(tgt1=jnt, tgt2=tgtJnt, dspType=2, p=grp)

    # offset but keep corrective in the middle -------------
    # ofsInitRota = jnt.a.add("ofsInitRota")
    # ofsInitRota * dir >> loc.a[driver]
    # ((90 + ofsInitRota) / (90 - ofsInitRota)) >> oriCst.a.w0
    # ------------------------------------------------------

    INIT = 2
    init = jnt.a.add("init", dv=INIT, min=0)
    SCALE = 3
    scalePos = jnt.a.add("scalePos", dv=SCALE, min=0)
    scaleNeg = jnt.a.add("scaleNeg", dv=SCALE, min=0)

    r = rotator.a[fr]
    rAbs = (r >= 0).setCdn(ifTrue=r, ifFalse=r * -1)

    ofsScale = (r > 0).setCdn(ifTrue=scalePos, ifFalse=scaleNeg)
    init + ofsScale * rAbs / 90 >> jnt.a[to]

    jnt.a.showAttr()
