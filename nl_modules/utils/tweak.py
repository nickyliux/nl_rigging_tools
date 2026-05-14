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


TWEAK_GRP = "tweak_reference_grp"

def addTweakJnt(*args):
    """Add tweak joints to the scene."""
    grp = GrpNode(TWEAK_GRP)
    j1 = JntNode('tweak_md_1', p=grp, color=Color.D_BLUE, r=2)
    j2 = JntNode('tweak_lf_1', p=grp, color=Color.D_BLUE, r=2)
    j3 = JntNode('tweak_rt_1', p=grp, color=Color.D_BLUE, r=2)
    j2.a.t.set(20, 0, 0)
    j3.a.t.set(-20, 0, 0)
    mc.select(j1, j2, j3)


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
        mc.delete(sk_grp)
        # mc.confirmDialog(t="Info", m=f"{TWEAK_GRP} already exists.     ", b="OK")
        # return

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

@common.Undo('delete tweak controls')
def deleteTweakCtl(*args):
    """Delete all tweak control objects."""
    ctls = mc.ls("tweak_*_*_ctl", tr=1, sl=1)
    for ctl in ctls:
        front_str = ctl.split("_ctl")[0]
        folXf = DagNode(ctl).parent.parent.parent
        if folXf.exists():
            folXf.delete()
        jnt = DagNode(front_str + "_jnt")
        if jnt.exists():
            jnt.delete()

def toggleTweak(*args):
    """Toggle visibility of the local tweak group."""
    grp = DagNode('tweak_local_grp')
    if grp.exists():
        v = grp.a.v.get()
        grp.a.v.set(1 - v)
    else:
        mc.confirmDialog(t="Info", m=f"Local tweak group NOT found.    ", b="OK")

def isolateTweak(*args):
    """Isolate local tweak group in all model panels."""
    grp = DagNode('tweak_local_grp')
    if grp.exists():
        grp.show()
        mc.select(grp)
        s = mc.isolateSelect('modelPanel4', q=1, state=1)
        for p in mc.getPanel(type="modelPanel"):
            mc.isolateSelect(p, state=1-s)
            mc.isolateSelect(p, addSelected=1)
            mc.isolateSelect(p, update=1)
        mc.select(cl=1)
    else:
        mc.confirmDialog(t="Info", m=f"Local tweak group NOT found.    ", b="OK")

def createTweak(srf, refJnts=None):
    """Create tweak control rig on surface with target joints."""
    if isinstance(srf, str):
        srf = DagNode(srf)
    if isinstance(refJnts, list):
        refJnts = [DagNode(j) for j in refJnts]

    main_grp = GrpNode("TWEAK")
    local_grp = GrpNode("tweak_local_grp")
    baseJ = JntNode("tweak_baseJ")

    localJnts = []
    allCtls = []
    for tgt in refJnts:

        # Create follicle
        folXf = utils_node.follicle2_(srf, tgt, p=main_grp)
        folXf.rename("tweak_flc_#")
        ctl = CrvNode(tgt + "_ctl", shape='sphere', align=tgt, up='x', color=Color.ORANGE, p=folXf)
        ofs = ctl.addOffsetGrp(count=2)
        ctl.a.t * (-1,-1,-1) >> ofs[0].a.t

        # Create local joint
        zro = GrpNode(tgt + "_zro", p=local_grp)
        jnt = JntNode(tgt + "_jnt", p=zro, color=Color.BLUE)
        zro.alignTo(tgt)
        [ctl.a[c] >> jnt.a[c] for c in "trs"]

        allCtls.append(ctl)
        localJnts.append(jnt)
        folXf.shape.hide()
        tgt.hide()

    # Create local srf and setup skin
    tweak_mesh_name = srf.name + "_tweak"
    local_geo = DagNode(tweak_mesh_name)
    if not local_geo.exists():
        local_geo = srf.duplicate(n=tweak_mesh_name)
        (baseJ, local_geo) | local_grp | main_grp | DagNode("CHR")

    if not local_geo.skinCluster.exists():
        MshNode(local_geo).weightTo(baseJ)
    skin.addInfl(local_geo, localJnts)

    tweak_bs_name = srf.name + "_tweak_BS"
    if not mc.objExists(tweak_bs_name):
        mc.blendShape(local_geo, srf, n=tweak_bs_name, weight=(0, 1))

    mc.select(cl=1)

