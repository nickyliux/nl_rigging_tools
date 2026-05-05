import glob
import logging
import os
from maya import cmds as mc
from nl_modules.utils import common
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.base.dag_node import DagNode

AUTO_BIND_SK_GRP = "auto_bind_sk_grp"


def save_skeleton():
    """Export skeleton group to a file."""
    skl_grp = mc.ls(AUTO_BIND_SK_GRP, tr=1)
    if not skl_grp:
        mc.confirmDialog(
            t="Info", m=f"Group {AUTO_BIND_SK_GRP} not found.     ", b="OK"
        )
        return

    neck_rbj_set = mc.ls("neck_rbj_set", type="objectSet")
    spine_rbj_set = mc.ls("spine_rbj_set", type="objectSet")
    tail_rbj_set = mc.ls("tail_rbj_set", type="objectSet")

    if neck_rbj_set:
        skl_grp.append(neck_rbj_set[0])
    if spine_rbj_set:
        skl_grp.append(spine_rbj_set[0])
    if tail_rbj_set:
        skl_grp.append(tail_rbj_set[0])

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = mc.fileDialog2(fileFilter="*skl*.ma", dialogStyle=2, dir=charPath)
    if tgtPaths:

        mc.select(skl_grp, noExpand=1)
        mc.file(tgtPaths, type="mayaAscii", f=1, es=1)  # , ch=0, chn=0, exp=0, con=0)
        logging.info(f"Skeleton group '{AUTO_BIND_SK_GRP}' and related sets exported.")
        mc.select(cl=1)


def load_skeleton(loadLatest=1):
    """Load skeleton group from a file."""
    from nl_modules.utils import file

    skl_grp = mc.ls(AUTO_BIND_SK_GRP, tr=1)
    if skl_grp:
        mc.confirmDialog(t="Info", m=f"{AUTO_BIND_SK_GRP} already exists.     ", b="OK")
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        if loadLatest:
            tgtPaths = glob.glob(
                os.path.join(charPath, os.path.basename(charPath) + "_skl*.ma")
            )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*skl*.ma", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)
    file.importFile(tgtPaths[-1])

    logging.info(f"Skl file imported: {os.path.basename(tgtPaths[-1])}.")


def add_lattice_to_rib(*args, name="rib_grp", div=(2, 2, 9), l_div=(4, 4, 4)):
    """Add a lattice deformer to a group of name.
    Args:
        name (list): List of name to deform.
        div (tuple): Lattice divisions (s, t, u). Default is (2, 2, 9).
        l_div (tuple): Local divisions (s, t, u). Default is (4, 4, 4).
    """
    tgts = mc.ls(name)
    if tgts:
        spine_rbj_set = mc.ls("spine_rbj_set", type="objectSet")
        if not spine_rbj_set:
            logging.info(f"No spine_rbj_set found.")
            return
        result = mc.lattice(
            tgts, dv=div, ldv=l_div, outsideLattice=1, objectCentered=1, commonParent=1
        )
        GrpNode(result[1]).weightTo(spine_rbj_set, mi=5)
        # MDL = GrpNode("MDL")
        # if MDL.exists():
        #     DagNode(result[0]).parent | MDL
    else:
        mc.confirmDialog(t="Info", m=f'"{name}" NOT found.     ', b="OK")
