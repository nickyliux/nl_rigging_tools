import glob
import logging
import os
from maya import cmds as mc
from nl_modules.utils import common
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.base.dag_node import DagNode

AUTO_BIND_JNT_GRP = "auto_bind_jnt_grp"
RIB_GRP = "rib_grp"
RIB_LATTICE_GRP = "rib_lattice_grp"


def save_reference():
    """Export skeleton group to a file."""
    sk_grp = mc.ls(AUTO_BIND_JNT_GRP, tr=1)
    if not sk_grp:
        mc.confirmDialog(
            t="Info", m=f"Group {AUTO_BIND_JNT_GRP} not found.     ", b="OK"
        )
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = mc.fileDialog2(fileFilter="*ref*.ma", dialogStyle=2, dir=charPath)
    if tgtPaths:

        mc.select(sk_grp, noExpand=1)
        mc.file(tgtPaths, type="mayaAscii", f=1, es=1)  # , ch=0, chn=0, exp=0, con=0)
        logging.info(f"Skeleton group '{AUTO_BIND_JNT_GRP}' and related sets exported.")
        mc.select(cl=1)


def load_reference(loadLatest=1):
    """Load skeleton group from a file."""
    from nl_modules.utils import file

    sk_grp = mc.ls(AUTO_BIND_JNT_GRP, tr=1)
    if sk_grp:
        mc.confirmDialog(t="Info", m=f"{AUTO_BIND_JNT_GRP} already exists.     ", b="OK")
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        if loadLatest:
            tgtPaths = glob.glob(
                os.path.join(charPath, os.path.basename(charPath) + "_ref*.ma")
            )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*ref*.ma", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)
    file.importFile(tgtPaths[-1])

    sk_grp = mc.ls(AUTO_BIND_JNT_GRP, tr=1)
    if sk_grp:
        DagNode(sk_grp[0]).show()
    else:
        mc.confirmDialog(t="Info", m=f"Grp {AUTO_BIND_JNT_GRP} is missing in the file.     ", b="OK")

    logging.info(f"Ref file imported: {os.path.basename(tgtPaths[-1])}.")
    print("")


def rib_setup(*args):
    """Add a lattice deformer to a group containing rib meshes."""
    tgts = mc.ls(RIB_GRP)
    if tgts:
        bind_set = mc.ls("spine_rbj_set", type="objectSet")
        if not bind_set:
            logging.info(f"No spine_rbj_set found.")
            return
        
        if DagNode(RIB_LATTICE_GRP).exists():
            logging.info(f"{RIB_LATTICE_GRP} already exists.")
            return
        
        div = (2,9,2) if DagNode('spineBp0_master_guide').exists() else (2,2,9)
        l_div=(4, 4, 4)

        result = mc.lattice(
            tgts, dv=div, ldv=l_div, outsideLattice=1, objectCentered=1, commonParent=1
        )

        lattice = GrpNode(result[1])
        lattice.weightTo(bind_set, mi=5)
        lattice_grp = lattice.parent
        lattice_grp.rename(RIB_LATTICE_GRP)

        CHR = GrpNode("CHR")
        if CHR.exists():
            lattice_grp | CHR
            lattice_grp.hide()
    else:
        mc.confirmDialog(t="Info", m=f'You need to have the group "{RIB_GRP}" containing rib meshes.     ', b="OK")
