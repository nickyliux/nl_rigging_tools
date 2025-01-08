import maya.cmds as mc
import maya.mel as mel
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import guide
from nl_modules.utils import build
from nl_modules.utils import anim
from functools import partial

MENU_NAME = "marking_menu_autorig"


class MarkingMenuAutorig:
    """autorig marking Menu
    ideas from http://bindpose.com/custom-marking-menu-maya-python/
    """

    def __init__(self):
        if mc.popupMenu(MENU_NAME, ex=1):
            mc.deleteUI(MENU_NAME)
        mc.popupMenu(
            MENU_NAME,
            mm=1,
            b=2,
            aob=1,
            ctl=1,
            alt=0,
            sh=0,
            p="viewPanes",
            pmo=1,
            pmc=self.setupMenu,
        )

    def setupMenu(self, menu, parent):
        # pose_MI = mc.menuItem(p=menu, l="Pose", rp="SE", subMenu=1)
        mc.menuItem(p=menu, l="Mirror Pose", rp="SE", c=guide.mirrorPose)

        # component_MI = mc.menuItem(p=menu, l="Build / Guide", rp="N", subMenu=1)
        mc.menuItem(p=menu, l="Build", rp="N", c=build.buildSelOrAll)
        mc.menuItem(p=menu, l="Unbuild", rp="NW", c=build.unbuildSelOrAll)
        mc.menuItem(p=menu, l="Mirror Guide", rp="NE", c=guide.mirrorGuideSelOrAll)
        mc.menuItem(p=menu, l="Delete Guide", rp="SW", c=build.deleteSelOrAll)

        # shape_MI = mc.menuItem(p=menu, l="Shape", rp="NE", subMenu=1)
        mc.menuItem(p=menu, l="Copy Guide", rp="E", c=self.copyGuideSel)
        mc.menuItem(p=menu, l="Mirror Shape", rp="W", c=self.mirrorShapeSelOrAll)
        # mc.menuItem(p=menu, l="Select Controls", rp="W", c=self.selectCtlSelOrAll)

        sel = mc.ls(sl=1)
        if sel:
            selN = DagNode(sel[0])
            nodes = selN.a.message.outConnNode
            if nodes:
                rN = nodes[0]
                if rN.exists():
                    # -----------------------------
                    # SPACE SWITCH
                    # -----------------------------
                    spaceAttr = selN.a.space
                    if spaceAttr.exists():
                        curr = spaceAttr.get()
                        allSpaceAttr = spaceAttr.query(le=1)[0].split(":")
                        for i, attr in enumerate(allSpaceAttr):
                            if curr == i:
                                attr += "   <"
                            mc.menuItem(
                                p=menu,
                                l=attr,
                                # data=i,
                                c=partial(self.switchToSpace, attr),
                            )
                        mc.menuItem(p=menu, l="-" * 10, en=0)
                    # -----------------------------
                    # IK FK
                    # -----------------------------
                    fkIkAttr = selN.a.fkIk
                    if fkIkAttr.exists():
                        if fkIkAttr.get() == 1:
                            mc.menuItem(
                                p=menu,
                                l="To FK",
                                rp="S",
                                c=partial(self.setFkIk, fkIkAttr, 0, rN),
                            )
                        else:
                            mc.menuItem(
                                p=menu,
                                l="To IK",
                                rp="S",
                                c=partial(self.setFkIk, fkIkAttr, 1, rN),
                            )

        mc.menuItem(p=menu, l="Reload Menu", c=self.reload_marking_menu)

    def copyGuideSel(*args):
        guide.copyGuideSel()

    def mirrorShapeSelOrAll(*args):
        from nl_modules.utils import control

        selList = mc.ls(sl=1, type="transform")
        if not selList:
            selSet = "lf*_ctl_set"
            if mc.ls(selSet):
                selList = mc.sets(selSet, q=1)
        if selList:
            for sel in selList:
                control.mirrorCtlShape(sel)

    def selectCtlSelOrAll(self, *args):
        rigNodes = []

        sel = mc.ls(sl=1, tr=1)
        if sel:
            selN = DagNode(sel[0])
            nodes = selN.a.message.outConnNode
            if nodes:
                rN = nodes[0]
                if rN.exists():
                    rigNodes = [rN]
        else:
            rigNodes = mc.ls("*RGN", type="script")

        setList = []
        for rigNode in rigNodes:
            ctlSet = DagNode(rigNode).a.rigID.get() + "_ctl_set"
            ctlSet = mc.ls(ctlSet, type="objectSet")
            if ctlSet:
                setList.append(ctlSet[0])
        if setList:
            mc.select(setList)

    def switchToSpace(self, *args):
        anim.switchToSpaceTgt(args[0])

    def setFkIk(self, *args):
        anim.switchToFkIk(attr=args[0], toIK=args[1], rigNode=args[2])
        self.reload_marking_menu()

    def reload_marking_menu(*args):
        mc.evalDeferred(
            """
from importlib import reload
import nl_modules.utils.marking_menu_autorig as mma
reload(mma)
mma.MarkingMenuAutorig()
            """
        )


MarkingMenuAutorig()
