import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode


class LocNode(GrpNode):
    """Locator node class."""

    def __init__(
        self,
        node,
        pf="",
        sf="",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        p=None,
        color=0,
        size=None,
        matchOfs=None,
        vis=1,
    ):
        GrpNode.__init__(
            self,
            node,
            pf=pf,
            sf=sf,
            align=align,
            alignR=alignR,
            snap=snap,
            addOfs=addOfs,
            p=p,
        )
        if not self.shape:
            loc = DagNode(mc.spaceLocator()[0])
            mc.parent(loc.shape, self, r=1, s=1)
            self.shape.rename(self.name + "Shape")
            loc.delete()

        self.color = color or 0
        self.localScale(size or 1)

        if matchOfs:
            mc.move(*matchOfs, self, objectSpace=1, r=1)
        if not vis:
            mc.hide(self)

    def localScale(self, val):
        """Set the local scale of the locator."""
        self.shape.a.localScale.set(val, val, val)
