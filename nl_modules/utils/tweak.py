import glob
import logging
import os
import maya.cmds as mc

from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.msh_node import MshNode
from nl_modules.utils import utils_node, common, skin
from nl_modules.utils.color import Color


TWEAK_GRP = "tweak_guide_grp"

def addTweakJnt(*args):
    """Add tweak joints to the scene."""
    j = JntNode('tweak_md_1', p=TWEAK_GRP, color=Color.BLACK, r=2)
    j = JntNode('tweak_lf_1', p=TWEAK_GRP, color=Color.BLACK, r=2)
    j.a.t.set(10, 0, 0)
    j = JntNode('tweak_rt_1', p=TWEAK_GRP, color=Color.BLACK, r=2)
    j.a.t.set(-10, 0, 0)


def mirrorTweakJnt(*args):
    """Mirror all tweak joints in the scene."""
    from nl_modules.utils import guide

    selectedJnt = mc.ls("tweak_lf_*", type="joint")
    if selectedJnt:
        guide.mirrorCtl(selectedJnt, wsMirror=1)
    else:
        mc.confirmDialog(t="Info", m="No twkJnt found.    ", b="OK")


def save_tweak():
    """Export skeleton group to a file."""
    grp = mc.ls(TWEAK_GRP, tr=1)
    if not grp:
        mc.confirmDialog(
            t="Info", m=f"Group {TWEAK_GRP} not found.     ", b="OK"
        )
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = mc.fileDialog2(fileFilter="*twk*.ma", dialogStyle=2, dir=charPath)
    if tgtPaths:

        mc.select(grp, noExpand=1)
        mc.file(tgtPaths, type="mayaAscii", f=1, es=1)  # , ch=0, chn=0, exp=0, con=0)
        logging.info(f"Skeleton group '{TWEAK_GRP}' and related sets exported.")
        mc.select(cl=1)


def load_tweak(loadLatest=1):
    """Load skeleton group from a file."""
    from nl_modules.utils import file

    sk_grp = mc.ls(TWEAK_GRP, tr=1)
    if sk_grp:
        mc.confirmDialog(t="Info", m=f"{TWEAK_GRP} already exists.     ", b="OK")
        return

    charPath = mc.optionVar(q="charFullPath")
    tgtPaths = []
    if charPath:
        if loadLatest:
            tgtPaths = glob.glob(
                os.path.join(charPath, os.path.basename(charPath) + "_twk*.ma")
            )
        if not tgtPaths:
            tgtPaths = mc.fileDialog2(
                fileFilter="*twk*.ma", dialogStyle=2, fileMode=1, dir=charPath
            )
    if not tgtPaths:
        return

    tgtPaths.sort(key=common.sortFile)
    file.importFile(tgtPaths[-1])

    logging.info(f"Tweak file imported: {os.path.basename(tgtPaths[-1])}.")
    print("")


def createTweakCtl(srf, tgts=None, pf='tweak_'):
    """Create tweak control rig on surface with target joints."""
    if isinstance(srf, str):
        srf = DagNode(srf)
    if isinstance(tgts, list):
        tgts = [DagNode(j) for j in tgts]

    if pf[-1] != "_":
        pf += "_"

    main_grp = GrpNode(pf + "grp")
    local_grp = GrpNode(pf + "local_grp")
    baseJ = JntNode(pf + "baseJ")

    localJnts = []
    allCtls = []
    for tgt in tgts:

        # Create follicle
        folXf = utils_node.follicle2_(srf, tgt, p=main_grp)
        folXf.rename(pf + "flc_#")
        ctl = CrvNode(pf + tgt + "_ctl", shape='sphere', align=tgt, up='x', color=Color.BLUE, p=folXf)
        ofs = ctl.addOffsetGrp(count=2)
        ctl.a.t * (-1,-1,-1) >> ofs[0].a.t

        # Create local joint
        zro = GrpNode(pf + tgt + "_zro", p=local_grp)
        jnt = JntNode(pf + tgt + "_jnt", p=zro)
        zro.alignTo(tgt)
        [ctl.a[c] >> jnt.a[c] for c in "trs"]

        allCtls.append(ctl)
        localJnts.append(jnt)
        folXf.shape.hide()

    # Create local srf and setup skin
    local_geo = DagNode(srf.name + "_tweak")
    if not local_geo.exists():
        local_geo = srf.duplicate(n=srf.name + "_tweak")

    MshNode(local_geo).weightTo(baseJ)
    skin.addInfl(local_geo, localJnts)

    mc.blendShape(local_geo, srf, n=pf + "BS_#", weight=(0, 1))

    (baseJ, local_geo) | local_grp | main_grp
    local_grp.hide()

