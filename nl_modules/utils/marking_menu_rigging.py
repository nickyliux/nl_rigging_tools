import logging
import maya.cmds as mc
import maya.mel as mel
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.ik_node import Solver
from functools import partial

from nl_modules.utils import skin

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
        """Setup the marking menu"""
        create_MI = mc.menuItem(p=menu, l="Create", rp="S", subMenu=1)
        mc.menuItem(p=create_MI, l="Circle", c="mc.circle(normal=(0,1,0))")
        mc.menuItem(p=create_MI, l="Cube", c="mc.polyCube()")
        mc.menuItem(p=create_MI, l="Plane", c="mc.polyPlane()")
        mc.menuItem(p=create_MI, l="Sphere", c="mc.polySphere()")
        mc.menuItem(p=create_MI, l="Loc", c="mc.spaceLocator()")
        mc.menuItem(p=create_MI, l="Joint", c="mc.select(cl=1);mc.joint()", ob=1)
        mc.menuItem(p=create_MI, l="Joint Tool", c="mc.JointTool()")

        display_MI = mc.menuItem(p=menu, l="Show", rp="NW", subMenu=1)
        mc.menuItem(p=display_MI, l="All Hidden", c=showAllHidden)
        mc.menuItem(p=display_MI, l="-" * 20, en=0)
        mc.menuItem(p=display_MI, l="Poly Only", c=showOnly)
        mc.menuItem(p=display_MI, l="All", c=showAll)
        mc.menuItem(p=display_MI, l="-" * 20, en=0)
        mc.menuItem(p=display_MI, l="LRA", c=partial(display_LRA, 1, 0))
        mc.menuItem(p=display_MI, l="LRA Off", c=partial(display_LRA, 0, 0), ob=1)
        mc.menuItem(p=display_MI, l="LRA -hi", c=partial(display_LRA, 1, 1))
        mc.menuItem(p=display_MI, l="Nurbs CV", c=partial(display_CV, 1))
        mc.menuItem(p=display_MI, l="Nurbs CV Off", c=partial(display_CV, 0), ob=1)
        mc.menuItem(p=display_MI, l="-" * 20, en=0)
        mc.menuItem(p=display_MI, l="Joint Size = 1", c=partial(jointDisplay, 1))
        mc.menuItem(p=display_MI, l="Joint Size = 0.1", c=partial(jointDisplay, 0.1))

        connect_MI = mc.menuItem(p=menu, l="Connect", rp="W", subMenu=1)
        mc.menuItem(p=connect_MI, l="From 1st To 2nd", en=0)
        mc.menuItem(p=connect_MI, l="T", c=partial(connect_channel, "t"))
        mc.menuItem(p=connect_MI, l="R", c=partial(connect_channel, "r"))
        mc.menuItem(p=connect_MI, l="S", c=partial(connect_channel, "s"))

        offset_MI = mc.menuItem(p=menu, l="Offset", rp="N", subMenu=1)
        mc.menuItem(p=offset_MI, l="Add Offset", c=add_ofs)
        mc.menuItem(p=offset_MI, l="Add Offset ( below )", c=add_ofs_below)

        channel_MI = mc.menuItem(p=menu, l="Channel", rp="E", subMenu=1)
        mc.menuItem(p=channel_MI, l="Lock, Hide All", c=partial(lockAttr, "all", 1))
        mc.menuItem(
            p=channel_MI, l="Lock Hide Off", c=partial(lockAttr, "all", 0), ob=1
        )
        mc.menuItem(p=channel_MI, l="-" * 20, en=0)
        mc.menuItem(p=channel_MI, l="Lock, Hide T", c=partial(lockAttr, "t", 1))
        mc.menuItem(p=channel_MI, l="T off", c=partial(lockAttr, "t", 0), ob=1)
        mc.menuItem(p=channel_MI, l="Lock Hide R", c=partial(lockAttr, "r", 1))
        mc.menuItem(p=channel_MI, l="R off", c=partial(lockAttr, "r", 0), ob=1)
        mc.menuItem(p=channel_MI, l="Lock, Hide S", c=partial(lockAttr, "s", 1))
        mc.menuItem(p=channel_MI, l="S off", c=partial(lockAttr, "s", 0), ob=1)
        mc.menuItem(p=channel_MI, l="Lock, Hide V", c=partial(lockAttr, "v", 1))
        mc.menuItem(p=channel_MI, l="V off", c=partial(lockAttr, "v", 0), ob=1)

        cst_MI = mc.menuItem(p=menu, l="Constraint", rp="NE", subMenu=1)
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
        mc.menuItem(p=cst_MI, l="-" * 20, en=0)

        mc.menuItem(p=cst_MI, l="Delete All", c=del_cst_mm)

        joint_MI = mc.menuItem(p=menu, l="Joint / IK", rp="SE", subMenu=1)
        mc.menuItem(p=joint_MI, l="SC IK", c=partial(add_IK, Solver.SC))
        mc.menuItem(p=joint_MI, l="RP IK", c=partial(add_IK, Solver.RP))
        mc.menuItem(p=joint_MI, l="Spline IK", c=partial(add_IK, Solver.SPLINE))
        mc.menuItem(p=joint_MI, l="Spring IK", c=partial(add_IK, Solver.SPRING))
        mc.menuItem(p=joint_MI, l="2B IK", c=partial(add_IK, Solver.TWO_BONE))
        mc.menuItem(p=joint_MI, l="-" * 20, en=0)
        # mc.menuItem(p=joint_MI, l="LRA", c=partial(joint_LRA, 1))
        # mc.menuItem(p=joint_MI, l="Hide LRA", c=partial(joint_LRA, 0), ob=1)
        mc.menuItem(p=joint_MI, l="Create Chain x 10 ", c=makeJointChain10_mm)
        mc.menuItem(p=joint_MI, l="Create Golden Chain ", c=makeJointChainGold_mm)

        skin_MI = mc.menuItem(p=menu, l="Skin", rp="SW", subMenu=1)
        mc.menuItem(p=skin_MI, l="Bind Skin", c=mc.SmoothBindSkin)
        mc.menuItem(p=skin_MI, l="Bind Skin", c=mc.SmoothBindSkinOptions, ob=1)
        mc.menuItem(p=skin_MI, l="Add Influence", c=addInf)
        mc.menuItem(p=skin_MI, l="Add Influence", c=addInfOpt, ob=1)
        mc.menuItem(p=skin_MI, l="Detach Skin", c=mc.DetachSkin)
        mc.menuItem(p=skin_MI, l="Delete Skin", c=skin.delSkinForSel)
        # mc.menuItem(p=freeze_MI, l="All", c=frz_xform_mm)
        # mc.menuItem(p=freeze_MI, l="T", c=partial(frz_xform, "t"))
        # mc.menuItem(p=freeze_MI, l="R", c=partial(frz_xform, "r"))
        # mc.menuItem(p=freeze_MI, l="S", c=partial(frz_xform, "s"))

        mc.menuItem(p=menu, l="Match All", c=match_all)
        mc.menuItem(p=menu, l="Match Pos Rot", c=match_pos_rot)
        mc.menuItem(p=menu, l="Match Pos", c=match_pos)
        mc.menuItem(p=menu, l="Match Rot", c=match_rot)
        mc.menuItem(p=menu, l="-" * 20, en=0)
        mc.menuItem(p=menu, l="Select Constrainer", c=select_contrainers)
        mc.menuItem(p=menu, l="-" * 20, en=0)
        mc.menuItem(p=menu, l="Use Last's Shapes", c=use_last_crv_shapes)
        mc.menuItem(p=menu, l="Add Last's Shapes", c=add_last_crv_shapes)
        mc.menuItem(p=menu, l="Break Instance", c=crvShape_breakInst)
        mc.menuItem(p=menu, l="-" * 20, en=0)
        mc.menuItem(p=menu, l="Reload Menu", c=reload_marking_menu)


def addInf(*args):
    """Add influence to the skin cluster of the selected mesh"""
    mel.eval('skinClusterInfluence 1 " -dr 4 -lw true -wt 0"')


def addInfOpt(*args):
    """Open the Add Influence Options dialog"""
    mel.eval("AddInfluenceOptions")


def jointDisplay(*args):
    """Set the joint display scale"""
    mc.jointDisplayScale(args[0])


def showAllHidden(*args):
    """Show all hidden objects in the scene"""
    mc.showHidden(all=1)


def showAll(*args):
    allPanels = mc.getPanel(type="modelPanel")
    for p in allPanels:
        mc.modelEditor(p, e=1, allObjects=1)


def showOnly(*args):
    allPanels = mc.getPanel(type="modelPanel")
    for p in allPanels:
        mc.modelEditor(p, e=1, allObjects=0, polymeshes=1)


def use_last_crv_shapes(*args):
    """Copy the shape of the last selected curve to all previous selected curves"""
    selList = mc.ls(sl=1, tr=1)
    if len(selList) > 1:
        CrvNode(selList[-1]).copy_shape_as_inst(selList[:-1])


def add_last_crv_shapes(*args):
    """Add the shape of the last selected curve to all previous selected curves"""
    selList = mc.ls(sl=1, tr=1)
    if len(selList) <= 1:
        logging.warning("Not enough curves selected.")
        return

    last = DagNode(selList[-1])
    for sel in selList[:-1]:
        mc.parent(last.shapes, sel, s=1, r=1, add=1)
    last.delete()


def crvShape_breakInst(*args):
    """Remove selected curve shape from all instances"""
    selList = mc.ls(sl=1, tr=1)
    if selList:
        CrvNode(selList[0]).break_instance()
        mc.select(selList[0])


def select_contrainers(*args):
    """Select the constraining objects of the first selected object"""
    selList = mc.ls(sl=1, tr=1)
    if selList:
        cstObj = DagNode(selList[0]).getCstObjects()
        if cstObj:
            mc.select(cstObj)


def add_ofs(*args):
    """Add offset group to selected objects"""
    for s in mc.ls(sl=1):
        mc.select(DagNode(s).addOffsetGrp())


def add_ofs_below(*args):
    """Add offset group below the selected object"""
    for s in mc.ls(sl=1):
        mc.select(DagNode(s).addOffsetGrp(below=1))


def add_IK(*args):
    """Add IK handle to selected joints"""
    selectedJnt = mc.ls(sl=1, type="joint")
    if len(selectedJnt) == 2:
        solver_name = args[0].value
        solver_short = solver_name[2:5].upper()
        ikh_name = f"{selectedJnt[0]}_{solver_short}_ikh"

        mc.ikHandle(sol=solver_name, name=ikh_name, s="sticky")
    else:
        mc.confirmDialog(t="Info", m="Pls select start & end joint", b="OK")


def makeJointChain10_mm(*args):
    """Create a joint chain of 10 joints with a distance of 5 units between them"""
    mc.select(make_joint_chain(10)[0])


def makeJointChainGold_mm(*args):
    """Create a joint chain of 5 joints with a golden ratio distance between them"""
    jc = make_joint_chain(5)
    GR = 0.618034
    for i in range(1, len(jc)):
        mc.setAttr(jc[i] + ".tx", 10 * GR**i)
    mc.select(jc[0])


def make_joint_chain(size):
    """Create a joint chain with the specified number of joints"""
    mc.select(cl=1)
    jnt = []
    for i in range(size):
        jnt.append(mc.joint())
        if i > 0:
            mc.setAttr(".tx", 5)
    return jnt


def display_CV(*args):
    """Display or hide CVs of selected curves"""
    state = args[0]
    for selList in mc.ls(sl=1):
        shapes = DagNode(selList).shapes
        for shape in shapes:
            attr = shape.a.dispCV
            if attr.exists():
                attr.set(state)


def display_LRA(*args):
    """Display or hide the local rotation axis of selected objects"""
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
        DagNode(sel).set_LRA(state=state)


def joint_LRA(*args):
    """Set the local rotation axis display for joints"""
    state = args[0]
    selList = mc.ls(sl=1, type="joint") or mc.ls(type="joint")

    for sel in selList:
        DagNode(sel).set_LRA(state=state)


def connect_mm(attr="t"):
    """Connect the specified attribute from the first selected object to the second"""
    selList = mc.ls(sl=1)
    if len(selList) == 2:
        mc.connectAttr(f"{selList[0]}.{attr}", f"{selList[1]}.{attr}", f=1)


def connect_channel(*args):
    """Connect the specified channel from the first selected object to the second"""
    connect_mm(args[0])


def frz_xform_mm(*args):
    """Freeze transformations of the selected objects"""
    mc.makeIdentity(a=1)


def frz_xform(*args):
    """Freeze transformations of the selected objects for the specified attribute"""
    if args[0] == "t":
        mc.makeIdentity(a=1, t=1)
    elif args[0] == "r":
        mc.makeIdentity(a=1, r=1)
    elif args[0] == "s":
        mc.makeIdentity(a=1, s=1)


def lockAttr(*args):
    """Lock or unlock the specified attribute for the selected objects"""
    [DagNode(s).lockHideAttrXf(chn=args[0], lock=args[1]) for s in mc.ls(sl=1)]


def cst(*args):
    """Create a constraint of the specified type on the selected objects"""
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
    """Delete all constraints from the selected objects"""
    for selList in mc.ls(sl=1):
        DagNode(selList).removeCstNodes()


def match_all(*args):
    """Match the transformation of the first selected object to all others"""
    selList = mc.ls(sl=1)
    if len(selList) > 1:
        mc.matchTransform(*selList)
        mc.select(selList[0])


def match_pos_rot(*args):
    """Match the transformation of the first selected object to all others"""
    selList = mc.ls(sl=1)
    if len(selList) > 1:
        mc.matchTransform(*selList, pos=1, rot=1, scl=0)
        mc.select(selList[0])


def match_pos(*args):
    """Match the position of the first selected object to all others"""
    selList = mc.ls(sl=1)
    if len(selList) > 1:
        mc.matchTransform(*selList, pos=1, rot=0, scl=0)
        mc.select(selList[0])


def match_rot(*args):
    """Match the position of the first selected object to all others"""
    selList = mc.ls(sl=1)
    if len(selList) > 1:
        mc.matchTransform(*selList, pos=0, rot=1, scl=0)
        mc.select(selList[0])


def get_nodeType_below(nType):
    """Get the first object of the specified type below the current selection"""
    mc.select(hi=1)
    return mc.ls(sl=1, type=nType)


def reload_marking_menu(*args):
    """Reload the marking menu module"""
    mc.evalDeferred(
        """
import nl_modules.utils.marking_menu_rigging as mm
import importlib
importlib.reload(mm)
mm.MarkingMenuRigging()
"""
    )


MarkingMenuRigging()
