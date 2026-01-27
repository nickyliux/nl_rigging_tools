import maya.cmds as mc
from nl_modules.nodel.grp_node import GrpNode


class MshNode(GrpNode):
    """Mesh node class."""

    def __init__(self, node):
        """Initialize the mesh node."""
        super().__init__(node)
        if mc.nodeType(node) == "mesh":
            self.node = self.parent

    @property
    def verts(self):
        """Return the vertices of the mesh"""
        return mc.ls(self + ".vtx[*]", fl=1)

    @property
    def edges(self):
        """Return the edges of the mesh"""
        return mc.ls(self + ".e[*]", fl=1)

    @property
    def faces(self):
        """Return the faces of the mesh"""
        return mc.ls(self + ".f[*]", fl=1)
