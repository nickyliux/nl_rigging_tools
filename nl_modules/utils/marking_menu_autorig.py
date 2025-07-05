import maya.cmds as mc
import maya.mel as mel
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import guide
from nl_modules.utils import build
from nl_modules.utils import anim
from functools import partial

MENU_NAME = "marking_menu_autorig"
LF_CTL_SET = "lf*_ctl_set"


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
        self.reload_marking_menu()

    def setupMenu(self, menu, parent):
        """
        Setup the marking menu for the tools
        """
        self.addBuildOptions(menu)
        self.addGuideOptions(menu)
        self.addExtraOptions(menu)
        self.addSpaceIKFKOptions(menu)

    def addBuildOptions(self, menu):
        mc.menuItem(p=menu, l="Build", rp="N", c=build.buildSelOrAll)
        mc.menuItem(p=menu, l="Unbuild", rp="NW", c=build.unbuildSelOrAll)

    def addGuideOptions(self, menu):
        mc.menuItem(p=menu, l="Mirror Guide", rp="NE", c=guide.mirrorGuideSelOrAll)
        mc.menuItem(p=menu, l="Delete Guide", rp="SE", c=build.deleteSelOrAll)
        mc.menuItem(p=menu, l="Copy Guide", rp="E", c=self.copyGuideSel)
        mc.menuItem(p=menu, l="Mirror Shape", rp="W", c=self.mirrorShapeSelOrAll)

    def addExtraOptions(self, menu):
        mc.menuItem(p=menu, l="Mirror Pose", c=guide.mirrorPose)
        mc.menuItem(p=menu, l="Select Ctls", rp="SW", c=self.selectCtlSelOrAll)
        mc.menuItem(p=menu, l="Reload Menu", c=self.reload_marking_menu)

    def addSpaceIKFKOptions(self, menu):

        selList = mc.ls(sl=1, tr=1)
        if selList:
            firstSelected = DagNode(selList[0])
            nodes = firstSelected.a.message.outConnNode
            if nodes:
                rigNode = nodes[0]
                if rigNode.exists():
                    # -----------------------------
                    # SPACE SWITCH
                    # -----------------------------
                    spaceAttr = firstSelected.a.space
                    if spaceAttr.exists():
                        mc.menuItem(p=menu, l="SPACES", en=0)
                        mc.menuItem(p=menu, l="-" * 15, en=0)
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
                        mc.menuItem(p=menu, l="-" * 15, en=0)
                    # -----------------------------
                    # IK FK
                    # -----------------------------
                    fkIkAttr = firstSelected.a["fkIkBlend"]
                    if fkIkAttr.exists():
                        if fkIkAttr.get() > 0.5:
                            mc.menuItem(
                                p=menu,
                                l="To FK Mode",
                                rp="S",
                                c=partial(self.setFkIk, fkIkAttr, 0, rigNode),
                            )
                        else:
                            mc.menuItem(
                                p=menu,
                                l="To IK Mode",
                                rp="S",
                                c=partial(self.setFkIk, fkIkAttr, 1, rigNode),
                            )

    def copyGuideSel(*args):
        guide.copyGuideSel()

    def mirrorShapeSelOrAll(*args):
        from nl_modules.utils import control

        selList = mc.ls(sl=1, tr=1)
        if not selList:
            if mc.ls(LF_CTL_SET):
                selList = mc.sets(LF_CTL_SET, q=1)
        if selList:
            for selList in selList:
                control.mirrorCtlShape(selList)

    def selectCtlSelOrAll(self, *args):
        rigNodes = []
        selList = mc.ls(sl=1, tr=1)
        if selList:
            firstSelected = DagNode(selList[0])
            nodes = firstSelected.a.message.outConnNode
            if nodes:
                filteredNodes = [n for n in nodes if n.type == "script"]
                node = filteredNodes[0]
                if node.exists():
                    rigNodes = [node]
        else:
            rigNodes = mc.ls("*RGN", type="script")

        from nl_modules.utils import common

        setList = common.getRigCtls(rigNodes)
        if setList:
            mc.select(setList)

    def switchToSpace(self, *args):
        anim.switchToSpaceTgt(args[0])

    def setFkIk(self, *args):
        anim.switchToFkIk(attr=args[0], toIKMode=args[1], rigNode=args[2])
        self.reload_marking_menu()

    def reload_marking_menu(*args):
        #         mc.evalDeferred(
        #             """
        # from importlib import reload
        # import nl_modules.utils.marking_menu_autorig as mma
        # reload(mma)
        # # mma.MarkingMenuAutorig()
        #             """
        #         )
        from importlib import reload
        import nl_modules.utils.marking_menu_autorig as mma

        reload(mma)


MarkingMenuAutorig()

# mc.inViewMessage(amg="Marking Menu Reloaded", pos="midCenter", fade=True)
