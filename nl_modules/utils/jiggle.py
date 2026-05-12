import glob
import logging
import os
import maya.cmds as mc

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import utils_node, common

JIGGLE_GRP = "jiggle_setup_grp"

def save_jiggle():
    """Export skeleton group to a file."""
    grp = mc.ls(JIGGLE_GRP, tr=1)
    if not grp:
        mc.confirmDialog(
            t="Info", m=f"Group {JIGGLE_GRP} not found.     ", b="OK"
        )
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = mc.fileDialog2(fileFilter="*jgl*.ma", dialogStyle=2, dir=charPath)
    if tgtPaths:

        mc.select(grp, noExpand=1)
        mc.file(tgtPaths, type="mayaAscii", f=1, es=1)  # , ch=0, chn=0, exp=0, con=0)
        logging.info(f"Skeleton group '{JIGGLE_GRP}' and related sets exported.")
        mc.select(cl=1)


def load_jiggle(loadLatest=1):
    """Load skeleton group from a file."""
    from nl_modules.utils import file

    sk_grp = mc.ls(JIGGLE_GRP, tr=1)
    if sk_grp:
        mc.confirmDialog(t="Info", m=f"{JIGGLE_GRP} already exists.     ", b="OK")
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        if loadLatest:
            tgtPaths = glob.glob(
                os.path.join(charPath, os.path.basename(charPath) + "_jgl*.ma")
            )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*jgl*.ma", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)
    file.importFile(tgtPaths[-1])

    logging.info(f"Jiggle file imported: {os.path.basename(tgtPaths[-1])}.")
    print("")


def createJiggleCtl(srf, tgts=None, pf='tmp_'):
    """Create local secondary deformation setup on a surface.
    
    Inputs:
        srf (str or DagNode): Target surface to create local secondary setup on.
        tgts (list): List of target transforms to create local joints for.
    
    Process:
        1. Create a group and base joint for the secondary system.
        2. For each target, create a follicle on the surface, control curve, and local joint.
        3. Duplicate the surface and skin it to the local joints.
        4. Create a blend shape to drive the original surface with the local deformed surface.
    
    Output:
        None. Creates and parents nodes to a group.
    """

    if isinstance(srf, str):
        srf = DagNode(srf)
    if isinstance(tgts, list):
        tgts = [DagNode(j) for j in tgts]

    grp = GrpNode(pf + "localOnSrf_grp_#")
    localJnt_grp = GrpNode(pf + "localJnt_grp_#", p=grp)
    localCtl_grp = GrpNode(pf + "localCtl_grp_#", p=grp)
    allCtls = []
    baseJ = JntNode(pf + "baseJ_#", p=grp)
    localSkinJnts = [baseJ]

    for tgt in tgts:

        # Create follicle
        folXf = utils_node.follicle2_(srf, tgt)
        ctl = CrvNode(pf + "onSrfCtl_#", shape='squareR', align=tgt, up='x', p=localCtl_grp)
        ofs1 = ctl.addOffsetGrp()
        ofs2 = ctl.addOffsetGrp()
        folXf.cstPar(ofs1, mo=1)
        folXf | grp
        ctl.a.t * (-1,-1,-1) >> ofs2.a.t

        # Create local joint
        jnt = JntNode(pf + "localJnt_#", align=ctl, p=localJnt_grp)
        jnt.addOffsetGrp()
        ctl.a.t >> jnt.a.t
        ctl.a.r >> jnt.a.r
        ctl.a.s >> jnt.a.s

        allCtls.append(ctl)
        localSkinJnts.append(jnt)
        folXf.hide()

    # Create local srf and setup skin & bs
    local_srf = srf.duplicate(n=pf + "local_#")
    MshNode(local_srf).weightTo(localSkinJnts)
    mc.blendShape(local_srf, srf, n=pf + "localBS_#", weight=(0, 1))
    local_srf | grp

    mc.hide(local_srf, baseJ, localJnt_grp)
