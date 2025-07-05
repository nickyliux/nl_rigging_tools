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
            pmc=self.setupMenu,
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

        display_MI = mc.menuItem(p=menu, l="Display", rp="W", subMenu=1)
        mc.menuItem(p=display_MI, l="Show All", c=showHidden)
        mc.menuItem(p=display_MI, l="--------------------", en=0)
        mc.menuItem(p=display_MI, l="Curve CV", c=partial(display_CV, 1))
        mc.menuItem(p=display_MI, l="Curve CV Off", c=partial(display_CV, 0), ob=1)
        mc.menuItem(p=display_MI, l="LRA", c=partial(display_LRA, 1, 0))
        mc.menuItem(p=display_MI, l="LRA Off", c=partial(display_LRA, 0, 0), ob=1)
        mc.menuItem(p=display_MI, l="LRA -hi", c=partial(display_LRA, 1, 1))
        mc.menuItem(p=display_MI, l="Joint Size >> 1", c=partial(jointDisplay, 1))
        mc.menuItem(p=display_MI, l="Joint Size >> 0.1", c=partial(jointDisplay, 0.1))
        # mc.menuItem(p=display_MI, l="Joint On", c=partial(select_joint_mask, 1))
        # mc.menuItem(p=display_MI, l="Joint Off", c=partial(select_joint_mask, 0), ob=1)

        connect_MI = mc.menuItem(p=menu, l="Connect", rp="NW", subMenu=1)
        mc.menuItem(p=connect_MI, l="T:  1st >> 2nd", c=partial(connect_channel, "t"))
        mc.menuItem(p=connect_MI, l="R:  1st >> 2nd", c=partial(connect_channel, "r"))
        mc.menuItem(p=connect_MI, l="S:  1st >> 2nd", c=partial(connect_channel, "s"))

        offset_MI = mc.menuItem(p=menu, l="Offset", rp="N", subMenu=1)
        mc.menuItem(p=offset_MI, l="Add Offset", c=add_ofs)
        mc.menuItem(p=offset_MI, l="Add Offset ( below )", c=add_ofs_below)

        channel_MI = mc.menuItem(p=menu, l="Channel", rp="E", subMenu=1)
        mc.menuItem(p=channel_MI, l="LockH All", c=partial(lockAttr, "all", 1))
        mc.menuItem(p=channel_MI, l="LockH Off", c=partial(lockAttr, "all", 0), ob=1)
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
        mc.menuItem(p=cst_MI, l="Point", c=partial(cst, "poi", 0))
        mc.menuItem(p=cst_MI, l="Point mo", c=partial(cst, "poi", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Orient", c=partial(cst, "ori", 0))
        mc.menuItem(p=cst_MI, l="Orient mo", c=partial(cst, "ori", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Parent", c=partial(cst, "par", 0))
        mc.menuItem(p=cst_MI, l="Parent  mo", c=partial(cst, "par", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Parent T", c=partial(cst, "parT", 0))
        mc.menuItem(p=cst_MI, l="Parent T mo", c=partial(cst, "parT", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Parent R", c=partial(cst, "parR", 0))
        mc.menuItem(p=cst_MI, l="Parent R mo", c=partial(cst, "parR", 1), ob=1)
        mc.menuItem(p=cst_MI, l="Scale", c=partial(cst, "sca", 0))
        mc.menuItem(p=cst_MI, l="Scale mo", c=partial(cst, "sca", 0), ob=1)
        mc.menuItem(p=cst_MI, l="Aim", c=partial(cst, "aim", 0))
        mc.menuItem(p=cst_MI, l="Aim  mo", c=partial(cst, "aim", 1), ob=1)
        mc.menuItem(p=cst_MI, l="PoleVector", c=partial(cst, "pvt", 0))
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

        mc.menuItem(p=menu, l="Select Constrainer", c=select_cst_objects)
        mc.menuItem(p=menu, l="Match All", c=match_all)
        mc.menuItem(p=menu, l="Match Pos", c=match_pos)
        mc.menuItem(p=menu, l="Bind Skin", c=mc.SmoothBindSkin)
        mc.menuItem(p=menu, l="Bind Skin", c=mc.SmoothBindSkinOptions, ob=1)
        mc.menuItem(p=menu, l="Add Influence", c=addInf)
        mc.menuItem(p=menu, l="Add Influence", c=addInfOpt, ob=1)
        mc.menuItem(p=menu, l="Detach Skin", c=mc.DetachSkin)
        # mc.menuItem(p=menu, l="---------------------", en=0)
        # mc.menuItem(p=menu, l="Del Keys", c="mc.cutKey()")
        mc.menuItem(p=menu, l="Use Last Shape", c=use_last_crv_shapes)
        mc.menuItem(p=menu, l="Add Last Shape", c=add_last_crv_shapes)
        mc.menuItem(p=menu, l="--------------------", en=0)
        mc.menuItem(p=menu, l="Reload Menu", c=reload_marking_menu)


def addInf(*args):
    mel.eval('skinClusterInfluence 1 " -dr 4 -lw true -wt 0"')


def addInfOpt(*args):
    mel.eval("AddInfluenceOptions")


def jointDisplay(*args):
    mc.jointDisplayScale(args[0])


def showHidden(*args):
    mc.showHidden(all=1)


# def select_joint_mask(*args):
#     mc.selectType(allObjects=1)
#     mc.selectType(j=args[0])


def use_last_crv_shapes(*args):
    selList = mc.ls(sl=1, tr=1)
    if len(selList) > 1:
        from nl_modules.nodel.crv_node import CrvNode

        CrvNode(selList[-1]).copy_shape_as_inst(selList[:-1])


def add_last_crv_shapes(*args):
    selList = mc.ls(sl=1, tr=1)
    if len(selList) == 2:
        last = DagNode(selList[-1])
        mc.parent(last.shape, selList[0], s=1, r=1)
        mc.delete(last)


def select_cst_objects(*args):
    selList = mc.ls(sl=1, tr=1)
    if selList:
        cstObj = DagNode(selList[0]).getCstObjects()
        if cstObj:
            mc.select(cstObj)


def add_ofs(*args):
    for s in mc.ls(sl=1):
        mc.select(DagNode(s).addOffsetGrp())


def add_ofs_below(*args):
    for s in mc.ls(sl=1):
        mc.select(DagNode(s).addOffsetGrp(below=1))


def add_IK(*args):
    from nl_modules.utils import common

    selectedJnt = mc.ls(sl=1, type="joint")
    if len(selectedJnt) == 2:
        solver = common.IK_SOLVER[args[0]]
        solverCode = solver[2:5].upper()
        mc.ikHandle(sol=solver, name=f"{selectedJnt[0]}_{solverCode}_ikh", s="sticky")
    else:
        mc.confirmDialog(t="Info", m="Pls select start & end joint", b="OK")


def makeJointChain10_mm(*args):
    mc.select(make_joint_chain(10)[0])


def makeJointChainGold_mm(*args):
    jc = make_joint_chain(5)
    GR = 0.618034
    for i in range(1, len(jc)):
        mc.setAttr(jc[i] + ".tx", 10 * GR**i)
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


def display_CV(*args):
    state = args[0]
    for selList in mc.ls(sl=1):
        shapes = DagNode(selList).shapes
        for shape in shapes:
            attr = shape.a.dispCV
            if attr.exists():
                attr.set(state)


def display_LRA(*args):
    state = args[0]
    hi = args[1]
    selList = mc.ls(sl=1)
    if selList:
        if hi:
            mc.select(hi=1)
        selList = mc.ls(sl=1, tr=1)
    else:
        selList = mc.ls(tr=1)

    for sel in selList:
        attr = DagNode(sel).a["displayLocalAxis"]
        if attr.exists():
            attr.set(state)


def joint_LRA(*args):
    state = args[0]
    selList = mc.ls(sl=1, type="joint") or mc.ls(type="joint")

    for sel in selList:
        attr = DagNode(sel).a["displayLocalAxis"]
        if attr.exists():
            attr.set(state)


def connect_mm(attr="t"):
    selList = mc.ls(sl=1)
    if len(selList) == 2:
        mc.connectAttr(f"{selList[0]}.{attr}", f"{selList[1]}.{attr}", f=1)


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

    selList = mc.ls(sl=1)
    if len(selList) > 1:
        skipR = ["x", "y", "z"] if args[0] == "parT" else []
        skipT = ["x", "y", "z"] if args[0] == "parR" else []
        cstCmd = common.CST_DICT[args[0]]

        if args[0] == "pvt":
            cstCmd(selList)
        elif args[0].startswith("par"):
            cstCmd(selList, mo=args[1], st=skipT, sr=skipR)
        else:
            cstCmd(selList, mo=args[1])


def del_cst_mm(*args):
    for selList in mc.ls(sl=1):
        DagNode(selList).removeCstNodes()


def sel_cst_driver(*args):
    selList = mc.ls(sl=1)
    if selList:
        mc.select(DagNode(selList[0]).getCstObjects())


def match_all(*args):
    selList = mc.ls(sl=1)
    if len(selList) > 1:
        mc.matchTransform(*selList)
        mc.select(selList[0])


def match_pos(*args):
    selList = mc.ls(sl=1)
    if len(selList) > 1:
        mc.matchTransform(*selList, pos=1, rot=0, scl=0)
        mc.select(selList[0])


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
