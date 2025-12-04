import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import anim
from nl_modules.utils import build
from nl_modules.utils import control
from nl_modules.utils import helper
from nl_modules.utils import guide
from nl_modules.utils import proxy
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

        mc.menuItem(p=menu, l="Mirror Pose", rp="SW", c=guide.mirrorPose)
        mc.menuItem(p=menu, l="Mirror Shape", rp="W", c=self.mirrorShapeSelOrAll)

        self.addBuildOptions(menu)
        self.addGuideOptions(menu)
        self.addHelperOptions(menu)
        self.addAdvancedOptions(menu)
        self.addExtraOptions(menu)

    def addBuildOptions(self, menu):
        """Add build options to the marking menu"""
        mc.menuItem(p=menu, l="Build", rp="N", c=build.buildSelOrAll)
        mc.menuItem(p=menu, l="Build", rp="N", c=partial(build.buildSelOrAll, 1), ob=1)
        mc.menuItem(p=menu, l="Unbuild", rp="NW", c=build.unbuildSelOrAll)

    def addHelperOptions(self, menu):
        mi = mc.menuItem(p=menu, l="Helper", rp="NE", subMenu=1)
        mc.menuItem(p=mi, l="BASIC -------", en=0)
        mc.menuItem(p=mi, l="    rz ~> ty", c=partial(helper.addHelpers, "rz", "ty"))
        mc.menuItem(p=mi, l="    ry ~> tz", c=partial(helper.addHelpers, "ry", "tz"))
        mc.menuItem(p=mi, l="    ry ~> ty", c=partial(helper.addHelpers, "ry", "ty"))
        mc.menuItem(p=mi, l="    rz ~> tz", c=partial(helper.addHelpers, "rz", "tz"))
        mc.menuItem(p=mi, l="ROLL --------", en=0)
        mc.menuItem(
            p=mi, l="    rz ~> ty", c=partial(helper.addHelpersRoll, "rz", "ty")
        )
        mc.menuItem(
            p=mi, l="    ry ~> tz", c=partial(helper.addHelpersRoll, "ry", "tz")
        )
        mc.menuItem(
            p=mi, l="    ry ~> ty", c=partial(helper.addHelpersRoll, "ry", "ty")
        )
        mc.menuItem(
            p=mi, l="    rz ~> tz", c=partial(helper.addHelpersRoll, "rz", "tz")
        )

        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Mirror", c=helper.mirrorHelpers)
        mc.menuItem(p=mi, l="Delete", c=helper.deleteHelpers)
        mc.menuItem(p=mi, l="-" * 15, en=0)

    def addGuideOptions(self, menu):
        """Add guide options to the marking menu"""
        mi = mc.menuItem(p=menu, l="Guide", rp="SE", subMenu=1)
        mc.menuItem(p=mi, l="Duplicate", c=guide.duplicateGuideSel)
        mc.menuItem(p=mi, l="Mirror", c=guide.mirrorGuideSelOrAll)
        mc.menuItem(p=mi, l="Transfer", c=guide.xferGuideSel)
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Delete", c=build.deleteSelOrAll)

    def addExtraOptions(self, menu):
        """Add extra options to the marking menu"""
        mc.menuItem(p=menu, l="Select Ctls", rp="E", c=self.selectCtlSelOrAll)
        mc.menuItem(p=menu, l="PROXY  -----", en=0)
        mc.menuItem(p=menu, l="    Gen", c=proxy.genProxy)
        mc.menuItem(p=menu, l="    Warp", c=proxy.wrapProxy)
        mc.menuItem(p=menu, l="    Reset", c=proxy.resetProxy)
        mc.menuItem(p=menu, l="    Mirror", c=proxy.mirrorProxy)
        mc.menuItem(p=menu, l="    Select All", c=proxy.selectAllProxy)
        # mc.menuItem(p=menu, l="Delete Guide", c=build.deleteSelOrAll)
        mc.menuItem(p=menu, l="-" * 15, en=0)
        mc.menuItem(p=menu, l="Reload Menu", c=self.reload_marking_menu)

    def addAdvancedOptions(self, menu):
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

        # --- Space Switch ---
        attr = firstSelected.a.space
        if attr.exists():
            mc.menuItem(p=menu, l="SPACE -----", en=0)
            val = attr.get()
            allSpaceAttr = attr.query(le=1)[0].split(":")
            for i, a in enumerate(allSpaceAttr):
                # label = f"{a}   <" if val == i else a
                mc.menuItem(
                    p=menu,
                    l=" " * 4 + str(a) + (f"   <" if val == i else ""),
                    c=partial(self.switch_to_space, a),
                )
            # mc.menuItem(p=menu, l="-" * 15, en=0)

        # --- IK / FK ---
        attr = firstSelected.a["fkIk"]
        if attr.exists():
            val = 0 if attr.get() > 0.5 else 1
            mc.menuItem(
                p=menu,
                l="FK / IK",
                rp="S",
                c=partial(self.switch_fk_ik, attr, val, rigNode),
            )

        # --- Local / Global ---
        attr = firstSelected.a["global"]
        if attr.exists():
            val = 1 - attr.get()
            mc.menuItem(
                p=menu,
                l="Local / Global",
                # rp="S",
                c=partial(self.switch_local_global, attr, val, rigNode),
            )

    def mirrorShapeSelOrAll(*args):
        """Mirror the shape of the selected control or all controls in LF_CTL_SET"""
        from nl_modules.utils import control

        selList = mc.ls(sl=1, tr=1)
        if not selList:
            if mc.ls(LF_CTL_SET):
                selList = mc.sets(LF_CTL_SET, q=1)
        if selList:
            for sel in selList:
                control.mirrorCtlShape(sel)

    def selectCtlSelOrAll(self, *args):
        """Select all controls in the rig node or all controls in LF_CTL_SET"""
        from nl_modules.utils import common

        selList = mc.ls(sl=1, tr=1)
        rigNodes = []
        if selList:
            firstSelected = DagNode(selList[0])
            nodes = firstSelected.a.message.outConnNode
            if nodes:
                filteredNodes = [n for n in nodes if n.type == "script"]
                node = filteredNodes[0]
                if node.exists():
                    rigNodes = [node]
        else:
            rigNodes = mc.ls("*RGN", type="script") or []

        setList = common.getRigCtls(rigNodes)
        if setList:
            mc.select(setList)

    def switch_to_space(self, *args):
        """Switch space for all selected controls to the specified space"""
        anim.switch_to_space_target(args[0])

    def switch_fk_ik(self, *args):
        """Switch FK/IK mode for the specified rig node"""
        anim.switch_fk_ik(attr=args[0], toIKMode=args[1], rigNode=args[2])
        self.reload_marking_menu()

    def switch_local_global(self, *args):
        """Switch Local/Global mode for the specified rig node"""
        anim.switch_local_global(attr=args[0], toGlobal=args[1], rigNode=args[2])
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
