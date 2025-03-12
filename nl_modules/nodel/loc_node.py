import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils.color import Color
import logging


class LocNode(GroupNode):
    """Loc Node Class
    e.g.
        n = LocNode('existing')
        n = LocNode('new', size=5)
    """

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
        # for loc
        color=0,
        size=None,
        matchOffset=None,
    ):
        GroupNode.__init__(
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
        # Add locator shape under group transform
        if not self.shape:
            loc = DagNode(mc.spaceLocator()[0])
            mc.parent(loc.shape, self, r=1, s=1)
            self.shape.rename(self.name + "Shape")
            loc.delete()

        self.color = color or 0
        self.localScale(size or 1)

        if matchOffset:
            mc.move(*matchOffset, self, objectSpace=1, r=1)

    def localScale(self, val):
        """Set locator local scale"""
        self.shape.a.localScale.set(val, val, val)
