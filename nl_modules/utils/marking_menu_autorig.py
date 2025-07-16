import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import guide
from nl_modules.utils import build
from nl_modules.utils import anim
from functools import partial

MENU_NAME = "marking_menu_autorig"
LF_CTL_SET = "lf*_ctl_set"


class MarkingMenuAutorig:
    """Marking menu for autorigging tools"""

    def __init__(self):
        """Initialize the marking menu"""

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
        """Setup the marking menu with various options"""

        self.addBuildOptions(menu)
        self.addGuideOptions(menu)
        self.addSpaceIKFKOptions(menu)
        self.addExtraOptions(menu)

    def addBuildOptions(self, menu):
        """Add build options to the marking menu"""

        mc.menuItem(p=menu, l="Build", rp="N", c=build.buildSelOrAll)
        mc.menuItem(p=menu, l="Unbuild", rp="NW", c=build.unbuildSelOrAll)

    def addGuideOptions(self, menu):
        """Add guide options to the marking menu"""

        mc.menuItem(p=menu, l="Mirror Guide", rp="NE", c=guide.mirrorGuideSelOrAll)
        mc.menuItem(p=menu, l="Delete Guide", rp="SE", c=build.deleteSelOrAll)
        mc.menuItem(p=menu, l="Copy Guide", rp="E", c=guide.copyGuideSel)
        mc.menuItem(p=menu, l="Mirror Shape", rp="W", c=self.mirrorShapeSelOrAll)

    def addExtraOptions(self, menu):
        """Add extra options to the marking menu"""

        mc.menuItem(p=menu, l="Mirror Pose", c=guide.mirrorPose)
        mc.menuItem(p=menu, l="Select Ctls", rp="SW", c=self.selectCtlSelOrAll)
        mc.menuItem(p=menu, l="Reload Menu", c=self.reload_marking_menu)

    def addSpaceIKFKOptions(self, menu):
        """Add space switch and IK/FK options to the marking menu"""

        selList = mc.ls(sl=1, tr=1)
        if not selList:
            return

        firstSelected = DagNode(selList[0])
        nodes = firstSelected.a.message.outConnNode
        if not nodes:
            return

        rigNode = nodes[0]
        if not rigNode.exists():
            return

        # --- SPACE SWITCH ---
        spaceAttr = firstSelected.a.space
        if spaceAttr.exists():
            mc.menuItem(p=menu, l="SPACES -----", en=0)
            # mc.menuItem(p=menu, l="-" * 15, en=0)
            curr = spaceAttr.get()
            allSpaceAttr = spaceAttr.query(le=1)[0].split(":")
            for i, attr in enumerate(allSpaceAttr):
                label = f"{attr}   <" if curr == i else attr
                mc.menuItem(
                    p=menu,
                    l=label,
                    c=partial(self.switch_to_space, attr),
                )
            mc.menuItem(p=menu, l="-" * 15, en=0)

        # --- IK/FK SWITCH ---
        fkIkAttr = firstSelected.a["fkIkBlend"]
        if fkIkAttr.exists():
            mode = 0 if fkIkAttr.get() > 0.5 else 1
            label = "To FK Mode" if mode == 0 else "To IK Mode"
            mc.menuItem(
                p=menu,
                l=label,
                rp="S",
                c=partial(self.switch_ik_fk, fkIkAttr, mode, rigNode),
            )

    def mirrorShapeSelOrAll(*args):
        """Mirror the shape of the selected control or all controls in LF_CTL_SET"""

        from nl_modules.utils import control

        selList = mc.ls(sl=1, tr=1)
        if not selList:
            if mc.ls(LF_CTL_SET):
                selList = mc.sets(LF_CTL_SET, q=1)
        if selList:
            for selList in selList:
                control.mirrorCtlShape(selList)

    def selectCtlSelOrAll(self, *args):
        """Select all controls in the rig node or all controls in LF_CTL_SET"""

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

    def switch_to_space(self, *args):
        """Switch space for all selected controls to the specified space"""

        anim.switch_to_space_target(args[0])

    def switch_ik_fk(self, *args):
        """Switch FK/IK mode for the specified rig node"""

        anim.switch_ik_fk(attr=args[0], toIKMode=args[1], rigNode=args[2])
        self.reload_marking_menu()

    def reload_marking_menu(*args):
        """Reload the marking menu to reflect any changes made"""

        mc.evalDeferred(
            """
from importlib import reload
import nl_modules.utils.marking_menu_autorig as mma
reload(mma)
# mma.MarkingMenuAutorig()
"""
        )


MarkingMenuAutorig()

# mc.inViewMessage(amg="Marking Menu Reloaded", pos="midCenter", fade=True)
