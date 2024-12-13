import maya.cmds as mc
import maya.mel as mel
from nl_modules.nodel.base.dag_node import DagNode
from functools import partial

mel.eval("ikSpringSolver")
mel.eval("ik2Bsolver")
MENU_NAME = "nl_marking_menu"


class MarkingMenuRigging:
    """marking Menu for rigging
    ideas from http://bindpose.com/custom-marking-menu-maya-python/
    """

    def __init__(self):
        if mc.popupMenu(MENU_NAME, ex=1):
            mc.deleteUI(MENU_NAME)
        menu = mc.popupMenu(
            MENU_NAME,
            mm=1,
            b=2,
            aob=1,
            ctl=1,
            alt=1,
            sh=0,
            p="viewPanes",
            pmo=1,
            pmc=self.setupMenu
        )

    def setupMenu(self, menu, parent):
        create_MI = mc.menuItem(p=menu, l="Create", rp="SW", subMenu=1)
        mc.menuItem(p=create_MI, l="Cube", c="mc.polyCube()")
        mc.menuItem(p=create_MI, l="Sphere", c="mc.polySphere()")
        mc.menuItem(p=create_MI, l="Plane", c="mc.polyPlane()")
        mc.menuItem(p=create_MI, l="Circle", c="mc.circle(normal=(0,1,0))")
        mc.menuItem(p=create_MI, l="Joint Tool", c="mc.JointTool()")
        mc.menuItem(p=create_MI, l="Joint", c="mc.select(cl=1);mc.joint()", ob=1)
        mc.menuItem(p=create_MI, l="Loc", c="mc.spaceLocator()")

        select_MI = mc.menuItem(p=menu, l="Select", rp="W", subMenu=1)
        mc.menuItem(p=select_MI, l="Joint On", c=partial(select_joint_mask, 1))
        mc.menuItem(p=select_MI, l="Joint Off", c=partial(select_joint_mask, 0), ob=1)

        connect_MI = mc.menuItem(p=menu, l="Connect", rp="NW", subMenu=1)
        mc.menuItem(p=connect_MI, l="T:  1st >> 2nd", c=partial(connect_channel, "t"))
        mc.menuItem(p=connect_MI, l="R:  1st >> 2nd", c=partial(connect_channel, "r"))
        mc.menuItem(p=connect_MI, l="S:  1st >> 2nd", c=partial(connect_channel, "s"))

        offset_MI = mc.menuItem(p=menu, l="Offset", rp="N", subMenu=1)
        mc.menuItem(p=offset_MI, l="Add Offset", c=add_ofs)
        mc.menuItem(p=offset_MI, l="Add Offset ( below )", c=add_ofs_below)

        channel_MI = mc.menuItem(p=menu, l="Channel", rp="E", subMenu=1)
        mc.menuItem(p=channel_MI, l="LockH All", c=partial(lockAttr, "all", 1))
        mc.menuItem(
            p=channel_MI,
            l="LockH Off",
            c=partial(lockAttr, "all", 0),
            ob=1
        )
        mc.menuItem(p=channel_MI, l="--------------------", en=0)
        mc.menuItem(p=channel_MI, l="Lock hide  T", c=partial(lockAttr, "t", 1))
        mc.menuItem(p=channel_MI, l="T off", c=partial(lockAttr, "t", 0), ob=1)
        mc.menuItem(p=channel_MI, l="Lock hide  R", c=partial(lockAttr, "r", 1))
        mc.menuItem(p=channel_MI, l="R off", c=partial(lockAttr, "r", 0), ob=1)
        mc.menuItem(p=channel_MI, l="Lock hide  S", c=partial(lockAttr, "s", 1))
        mc.menuItem(p=channel_MI, l="S off", c=partial(lockAttr, "s", 0), ob=1)
        mc.menuItem(p=channel_MI, l="Lock hide  V", c=partial(lockAttr, "v", 1))
        mc.menuItem(p=channel_MI, l="V off", c=partial(lockAttr, "v", 0), ob=1)

        cst_MI = mc.menuItem(p=menu, l="Constraint", rp="NE", subMenu=1)
        mc.menuItem(p=cst_MI, l="Select Drivers", c=partial(sel_cst_driver, 1))
        mc.menuItem(p=cst_MI, l="Select Constrained", c=partial(sel_cst_driver, 0))
        mc.menuItem(p=cst_MI, l="--------------------", en=0)
        mc.menuItem(p=cst_MI, l="Aim", c=partial(cst, "aim", 0))
        mc.menuItem(p=cst_MI, l="Parent", c=partial(cst, "par", 0))
        mc.menuItem(p=cst_MI, l="Parent  mo", c=partial(cst, "par", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Parent T", c=partial(cst, "parT", 0))
        mc.menuItem(p=cst_MI, l="Parent T mo", c=partial(cst, "parT", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Parent R", c=partial(cst, "parR", 0))
        mc.menuItem(p=cst_MI, l="Parent R mo", c=partial(cst, "parR", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Point", c=partial(cst, "poi", 0))
        mc.menuItem(p=cst_MI, l="Point mo", c=partial(cst, "poi", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Orient", c=partial(cst, "ori", 0))
        mc.menuItem(p=cst_MI, l="Orient mo", c=partial(cst, "ori", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Scale", c=partial(cst, "sca", 0))
        mc.menuItem(p=cst_MI, l="Scale mo", c=partial(cst, "sca", 0), ob=1)
        mc.menuItem(p=cst_MI, l="PoleVector", c=partial(cst, "pv", 0))
        mc.menuItem(p=cst_MI, l="Geo", c=partial(cst, "geo", 0))
        mc.menuItem(p=cst_MI, l="--------------------", en=0)
        mc.menuItem(p=cst_MI, l="Delete All", c=del_cst_mm)

        joint_MI = mc.menuItem(p=menu, l="Joint / IK", rp="SE", subMenu=1)
        mc.menuItem(p=joint_MI, l="SC IK", c=partial(add_IK, 0))
        mc.menuItem(p=joint_MI, l="RP IK", c=partial(add_IK, 1))
        mc.menuItem(p=joint_MI, l="Spline IK", c=partial(add_IK, 2))
        mc.menuItem(p=joint_MI, l="Spring IK", c=partial(add_IK, 3))
        mc.menuItem(p=joint_MI, l="2B IK", c=partial(add_IK, 4))
        mc.menuItem(p=joint_MI, l="----------", en=0)
        mc.menuItem(p=joint_MI, l="LRA", c=partial(joint_LRA, 1))
        mc.menuItem(p=joint_MI, l="Hide LRA", c=partial(joint_LRA, 0), ob=1)
        mc.menuItem(p=joint_MI, l="Create Chain x 10 ", c=makeJointChain10_mm)
        mc.menuItem(p=joint_MI, l="Create Golden Chain ", c=makeJointChainGold_mm)

        freeze_MI = mc.menuItem(p=menu, l="Freeze", rp="S", subMenu=1)
        mc.menuItem(p=freeze_MI, l="All", c=frz_xform_mm)
        mc.menuItem(p=freeze_MI, l="T", c=partial(frz_xform, "t"))
        mc.menuItem(p=freeze_MI, l="R", c=partial(frz_xform, "r"))
        mc.menuItem(p=freeze_MI, l="S", c=partial(frz_xform, "s"))

        mc.menuItem(p=menu, l="Match", c=match_all)
        mc.menuItem(p=menu, l="Match Pos", c=match_pos)
        mc.menuItem(p=menu, l="---------------------", en=0)
        mc.menuItem(p=menu, l="LRA", c=partial(display_LRA, 1, 0))
        mc.menuItem(p=menu, l="Hide LRA", c=partial(display_LRA, 0, 0), ob=1)
        mc.menuItem(p=menu, l="LRA -hi", c=partial(display_LRA, 1, 1))
        mc.menuItem(p=menu, l="Del Keys", c="mc.cutKey()")
        mc.menuItem(p=menu, l="Use last crv shapes", c=use_last_crv_shapes)
        mc.menuItem(p=menu, l="--------------------", en=0)
        mc.menuItem(p=menu, l="Reload Menu", c=reload_marking_menu)


def select_joint_mask(*args):
    mc.selectType(allObjects=1)
    mc.selectType(j=args[0])


def use_last_crv_shapes(*args):
    sel = mc.ls(sl=1)
    if len(sel) > 1:
        from nl_modules.nodel.curve_node import CurveNode
        CurveNode(sel[-1]).copyShapeAsInst(sel[:-1])


def add_ofs(*args):
    for s in mc.ls(sl=1):
        mc.select(DagNode(s).addOffsetGrp())


def add_ofs_below(*args):
    for s in mc.ls(sl=1):
        mc.select(DagNode(s).addOffsetGrp(below=1))


def add_IK(*args):
    from nl_modules.utils import common

    sel = mc.ls(sl=1, type="joint")
    if len(sel) == 2:
        solver = common.IK_SOLVER[args[0]]
        mc.ikHandle(sol=solver, name=f"{sel[0]}_{solver[2:5]}_ikh", s="sticky")
    else:
        mc.confirmDialog(t="Info", m="Pls select start & end joint", b="OK")


def makeJointChain10_mm(*args):
    mc.select(make_joint_chain(10)[0])


def makeJointChainGold_mm(*args):
    jc = make_joint_chain(5)
    GR = 0.618034
    for i in range(1, len(jc)):
        mc.setAttr(jc[i] + ".tx", 10 * GR ** i)
    mc.select(jc[0])


def make_joint_chain(size):
    mc.select(cl=1)
    jnt = []
    for i in range(size):
        jnt.append(mc.joint())
        mc.setAttr(".displayLocalAxis", 1)
        if i > 0:
            mc.setAttr(".tx", 5)
    return jnt


def display_LRA(*args):
    state = args[0]
    hi = args[1]
    sel = mc.ls(sl=1)
    if sel:
        if hi:
            mc.select(hi=1)
        sel = mc.ls(sl=1, tr=1)
    else:
        sel = mc.ls(type="transform")
    for s in sel:
        if mc.objExists(s + ".displayLocalAxis"):
            mc.setAttr(s + ".displayLocalAxis", state)


def joint_LRA(*args):
    state = args[0]
    sel = mc.ls(sl=1, type="joint") or mc.ls(type="joint")
    for s in sel:
        mc.setAttr(s + ".displayLocalAxis", state)


def connect_mm(attr="t"):
    sel = mc.ls(sl=1)
    if len(sel) == 2:
        mc.connectAttr(f"{sel[0]}.{attr}", f"{sel[1]}.{attr}", f=1)


def connect_channel(*args):
    connect_mm(args[0])


def frz_xform_mm(*args):
    mc.makeIdentity(a=1)


def frz_xform(*args):
    if args[0] == "t":
        mc.makeIdentity(a=1, t=1)
    elif args[0] == "r":
        mc.makeIdentity(a=1, r=1)
    elif args[0] == "s":
        mc.makeIdentity(a=1, s=1)


def lockAttr(*args):
    [DagNode(s).lockHideAttrXf(chn=args[0], lock=args[1]) for s in mc.ls(sl=1)]


def cst(*args):
    from nl_modules.utils import common

    sel = mc.ls(sl=1)
    if len(sel) > 1:
        skipR = ["x", "y", "z"] if args[0] == "parT" else []
        skipT = ["x", "y", "z"] if args[0] == "parR" else []
        cstCmd = common.CST_DICT[args[0]]

        if args[0].startswith("par"):
            cstCmd(sel, mo=args[1], st=skipT, sr=skipR)
        else:
            cstCmd(sel, mo=args[1])


def del_cst_mm(*args):
    sel = mc.ls(sl=1)
    for s in sel:
        DagNode(s).removeCstNodes()


def sel_cst_driver(*args):
    sel = mc.ls(sl=1)
    if sel:
        mc.select(DagNode(sel[0]).getCstObjects())


def match_all(*args):
    sel = mc.ls(sl=1)
    if len(sel) > 1:
        mc.matchTransform(*sel)
        mc.select(sel[0])


def match_pos(*args):
    sel = mc.ls(sl=1)
    if len(sel) > 1:
        mc.matchTransform(*sel, pos=1, rot=0, scl=0)
        mc.select(sel[0])


def get_nodeType_below(nType):
    mc.select(hi=1)
    return mc.ls(sl=1, type=nType)


def reload_marking_menu(*args):
    mc.evalDeferred(
        """
import nl_modules.utils.marking_menu_rigging as mm
import importlib
importlib.reload(mm)
mm.MarkingMenuRigging()
"""
    )


MarkingMenuRigging()
