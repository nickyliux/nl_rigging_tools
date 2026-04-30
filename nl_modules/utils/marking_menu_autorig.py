import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.utils import anim
from nl_modules.utils import build
from nl_modules.utils import control

# from nl_modules.utils import helper
from nl_modules.utils import guide
from nl_modules.utils import proxy
from nl_modules.utils import common

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
        mc.menuItem(p=menu, l="Mirror Pose", rp="NW", c=guide.mirrorPose)

        self.addBuildOptions(menu)
        self.addGuideOptions(menu)
        self.addShapeOptions(menu)
        self.addHelperOptions(menu)
        self.addProxyOptions(menu)
        self.addAdvancedOptions(menu)
        self.addExtraOptions(menu)

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

    def addShapeOptions(self, menu):
        mi = mc.menuItem(p=menu, l="Shape", rp="SW", subMenu=1)  # , i="curveEP.png")
        mc.menuItem(p=mi, l="Mirror Sel / All", c=self.mirrorShapeSelOrAll)
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Drop It", c=control.dropSel)
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Use Last's", c=self.use_last_crv_shapes)
        mc.menuItem(p=mi, l="Add Last's", c=self.add_last_crv_shapes)
        mc.menuItem(p=mi, l="Break Instance", c=self.crvShape_breakInst)

    def addBuildOptions(self, menu):
        """Add build options to the marking menu"""
        mi = mc.menuItem(p=menu, l="Build / Rebuild", rp="N", c=self.rebuild)

    def rebuild(*args):
        """Custom rebuild function that unbuilds and then builds the selected rig"""
        build.unbuildGuide()
        build.buildGuide()

    def addHelperOptions(self, menu):
        """Add helper options to the marking menu"""
        mi = mc.menuItem(p=menu, l="Helper", rp="SE", subMenu=1)
        # mc.menuItem(p=mi, l="BASIC -------", en=0)
        # mc.menuItem(p=mi, l="    rz ~> ty", c=partial(helper.addHelpers, "rz", "ty"))
        # mc.menuItem(p=mi, l="    ry ~> tz", c=partial(helper.addHelpers, "ry", "tz"))
        # mc.menuItem(p=mi, l="    ry ~> ty", c=partial(helper.addHelpers, "ry", "ty"))
        # mc.menuItem(p=mi, l="    rz ~> tz", c=partial(helper.addHelpers, "rz", "tz"))
        # mc.menuItem(p=mi, l="ROLL --------", en=0)
        # mc.menuItem(p=mi, l="    rz ~> ty", c=partial(helper.addHelpers2, "rz", "ty"))
        # mc.menuItem(p=mi, l="    ry ~> tz", c=partial(helper.addHelpers2, "ry", "tz"))
        # mc.menuItem(p=mi, l="    ry ~> ty", c=partial(helper.addHelpers2, "ry", "ty"))
        # mc.menuItem(p=mi, l="    rz ~> tz", c=partial(helper.addHelpers2, "rz", "tz"))
        # mc.menuItem(p=mi, l="-" * 15, en=0)
        # mc.menuItem(p=mi, l="Mirror", c=helper.mirrorHelpers)
        # mc.menuItem(p=mi, l="Delete", c=helper.deleteHelpers)
        mc.menuItem(p=mi, l="-" * 15, en=0)

    def addGuideOptions(self, menu):
        """Add guide options to the marking menu"""
        mi = mc.menuItem(p=menu, l="Guide", rp="NE", subMenu=1)
        # , i="HIKCharacterToolSkeleton.png"
        mc.menuItem(p=mi, l="Mirror Sel / All", c=guide.mirrorGuide)
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Duplicate", c=guide.duplicateGuideSel)
        mc.menuItem(p=mi, l="Dupl. Sym.", c=partial(guide.duplicateGuideSel, mirror=1))
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(
            p=mi,
            l="Copy Setting (Same class)",
            c=partial(guide.copyGuideSel, ignoreMG=1),
        )

    def addProxyOptions(self, menu):
        """Add proxy options to the marking menu"""
        mi = mc.menuItem(p=menu, l="Proxy", rp="E", subMenu=1)
        mc.menuItem(p=mi, l="Warp Sel", c=proxy.wrapProxy)
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Mirror Sel", c=proxy.mirrorProxy)
        mc.menuItem(p=mi, l="-" * 15, en=0)
        mc.menuItem(p=mi, l="Reset Sel", c=proxy.resetProxy)
        mc.menuItem(p=mi, l="Gen", c=proxy.genProxyForSet)
        mc.menuItem(p=mi, l="Select All", c=proxy.selectAllProxy)

    def addExtraOptions(self, menu):
        """Add extra options to the marking menu"""
        mc.menuItem(p=menu, l="Select Ctls", rp="W", c=self.selectCtlSelOrAll)

        ns = common.getNsFrOptVar()
        curr_ns_str = '""' if ns == "" else f'"{ns}"'

        mc.menuItem(p=menu, l="Toggle Guide", c=guide.toggleGuide)
        mc.menuItem(p=menu, l="-" * 25, en=0)
        mc.menuItem(p=menu, l="Add Follow Cam", c=common.addFollowCam)
        mc.menuItem(p=menu, l="namespace = " + curr_ns_str, c=common.setNsFrSel)

    def addAdvancedOptions(self, menu):
        """Add space switch and IK/FK options to the marking menu"""
        MGs = build.collectMasterGuide(isSel=1, isAll=0)
        if not MGs:
            return

        mg = MGs[0]
        attr = mg.a["setting"]
        if attr.exists():
            setting = attr.inConnNode
            if setting:
                attr = setting.a["fkIk"]
                if attr.exists():
                    val = 0 if attr.get() > 0.5 else 1
                    mc.menuItem(
                        p=menu,
                        l="FK <-> IK",
                        rp="S",
                        c=partial(self.switch_fk_ik, attr, val, mg),
                    )

        # --- Space Switch ---
        for space in ["paSpace", "oriSpace", "posSpace"]:
            attr = mg.a[space]
            if attr.exists():
                mc.menuItem(p=menu, l=space.upper(), en=0)
                val = attr.get()
                allSpaceAttr = attr.query(le=1)[0].split(":")
                for i, a in enumerate(allSpaceAttr):
                    text = f"    {a}" + ("   *" if val == i else "")
                    mc.menuItem(
                        p=menu,
                        l=text,
                        c=partial(self.switch_to_space, a),
                    )

        # --- Toggle Isolate ---
        for attr in mg.a.list(ud=1, hasData=1):
            if attr.name.startswith("isolate"):
                val = 1 - attr.get()
                mc.menuItem(p=menu, l="ISOLATE", en=0)
                mc.menuItem(
                    p=menu,
                    l="    Toggle",
                    c=partial(self.switch_local_global, attr, val, mg),
                )
        mc.menuItem(p=menu, l="-" * 25, en=0)

    def mirrorShapeSelOrAll(*args):
        """Mirror the shape of the selected control or all controls in LF_CTL_SET"""
        from nl_modules.utils import control

        selList = mc.ls(sl=1, tr=1)
        if not selList:
            selList = common.getSetMembersInOrder(LF_CTL_SET)

        if selList:
            for sel in selList:
                control.mirrorCtlShape(sel)

    def selectCtlSelOrAll(self, *args):
        """Select the controls of the selected rig or all rigs in the scene"""
        from nl_modules.utils import common

        MGs = build.collectMasterGuide(isSel=1)
        ctls = common.getRigCtls(MGs)
        if ctls:
            mc.select(ctls)

    def switch_to_space(self, *args):
        """Switch space for all selected controls to the specified space"""
        anim.switchToSpaceTarget(args[0])

    def switch_fk_ik(self, *args):
        """Switch FK/IK mode for the specified rig node"""
        anim.switchFkIk(attr=args[0], toIKMode=args[1], mg=args[2])
        self.reload_marking_menu()

    def switch_local_global(self, *args):
        """Switch Local/Global mode for the specified rig node"""
        anim.switchLocalGlobal(attr=args[0], toGlobal=args[1])
        self.reload_marking_menu()

    def reload_marking_menu(*args):
        """Reload the marking menu to reflect any changes made"""
        mc.evalDeferred("""
from importlib import reload
import nl_modules.utils.marking_menu_autorig as mma
reload(mma)
""")


MarkingMenuAutorig()
