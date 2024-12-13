import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import common


class GroupNode(DagNode):
    """Group Node Class
    e.g.
        n = GroupNode('existing')
        n = GroupNode('new')
    """

    def __init__(
        self,
        node,
        nodeType="transform",
        pf="",
        sf="",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        radius=None,
        p=None,
    ):
        if pf and pf[-1] != "_":
            pf += "_"
        name = pf + node + sf
        if name:
            DagNode.__init__(self, name)
            if not mc.objExists(name):
                self.createNode(
                    name,
                    nodeType=nodeType,
                    align=align,
                    alignR=alignR,
                    snap=snap,
                    addOfs=addOfs,
                    radius=radius,
                    p=p,
                )

    def createNode(
        self,
        node,
        nodeType="transform",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        radius=None,
        p=None,
    ):
        """Create transform or joint"""
        self.node = mc.createNode(nodeType, n=node)
        if align:
            self.alignTo(align)
        if alignR:
            self.alignTo(alignR, rotate=1)
        if snap:
            self.snapTo(snap)
        if p:
            self.parentTo(p)
        if addOfs:
            self.addOffsetGrp()
        if nodeType=='joint' and radius:
            self.a.radius.set(radius)

        return self
