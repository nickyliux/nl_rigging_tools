import glob
import logging
import os
from maya import cmds as mc
from nl_modules.utils import common
from nl_modules.nodel.grp_node import GrpNode

AUTO_BIND_SK_GRP = "auto_bind_sk_grp"


def save_skl():
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


def load_skl():
    """Load skeleton group from a file."""
    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        fileToSearch = os.path.join(charPath, os.path.basename(charPath) + "*_skl*.ma")
        tgtPaths = glob.glob(fileToSearch)
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*_skl*", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)

    mc.file(tgtPaths[-1], i=1, usingNamespaces=0)


def setup_rib(name="rib_grp", div=(2, 2, 9), l_div=(4, 4, 4)):
    """Add a lattice deformer to a group of name.
    Args:
        name (list): List of name to deform.
        div (tuple): Lattice divisions (s, t, u). Default is (2, 2, 9).
        l_div (tuple): Local divisions (s, t, u). Default is (4, 4, 4).

    Returns:
        tuple: (ffd_node, lattice, base_lattice).
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
        return result
    else:
        logging.info(f"No group / object found with name '{name}'.")
        return None
