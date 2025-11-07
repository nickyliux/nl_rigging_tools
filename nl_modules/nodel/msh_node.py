import maya.cmds as mc
from maya import mel
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.base.dag_node import DagNode


class MshNode(DagNode):
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

    @property
    def skinCluster(self):
        """Return the skinCluster connected to the mesh"""
        skinCluster = mel.eval(f'findRelatedSkinCluster "{self}"')
        if mc.objExists(skinCluster):
            return DepNode(skinCluster)
        else:
            return DepNode(None)

    def delSkin(self):
        """Delete the skinCluster connected to the mesh"""
        sc = self.skinCluster
        if sc:
            try:
                sc.delete()
                return 1
            except RuntimeError:
                mc.warning(f"Failed to delete skinCluster: {sc}")
        return 0

    @property
    def joints(self):
        """Return the joints connected to the skinCluster of the mesh"""
        if self.skinCluster.exists():
            return [DagNode(i) for i in mc.skinCluster(self.skinCluster, q=1, inf=1)]

    def weightTo(self, joints, **kwargs):
        """Apply skin weights to the mesh"""
        if self.exists():
            mc.skinCluster(self, joints, **kwargs)

    def softWeightTo(self, joints, rui=0, mi=3, tsb=1, dr=2, **kwargs):
        """Apply soft skin weights to the mesh"""
        self.weightTo(joints, rui=rui, mi=mi, tsb=tsb, dr=dr, **kwargs)

    def hardWeightTo(self, joints):
        """Apply hard skin weights to the mesh"""
        self.weightTo(joints, rui=0, mi=1, tsb=1, dr=0.1)

    def pruneWeight(self, threshold=0.001):
        """Prune skin weights below a certain threshold"""
        if self.skinCluster.exists():
            mc.skinCluster(
                self.skinCluster.name, e=1, pr=threshold, forceNormalizeWeights=1
            )

    def mirrorWeight(self, sym=1):
        """Mirror skin weights symmetrically"""
        if self.skinCluster.exists():
            influenceAssociation = "oneToOne" if sym else "closestJoint"
            mc.copySkinWeights(
                ss=self.skinCluster.name,
                ds=self.skinCluster.name,
                mirrorMode="YZ",
                surfaceAssociation="closestPoint",
                influenceAssociation=influenceAssociation,
                smooth=1,
                normalize=1,
            )

    def copyWeightsTo(self, items):
        """Copy skin weights from this mesh to other meshes"""
        if self.skinCluster.exists():
            items = items if isinstance(items, (list, tuple)) else [items]
            for item in [MshNode(i) for i in items]:
                if item.skinCluster:
                    item.skinCluster.delete()

                item.hardWeightTo(self.joints)
                mc.copySkinWeights(
                    ss=self.skinCluster.name,
                    ds=item.skinCluster.name,
                    noMirror=1,
                    surfaceAssociation="closestPoint",
                    influenceAssociation="oneToOne",
                )

    def copyWeightsFr(self, item):
        """Copy skin weights from another mesh to this mesh"""
        MshNode(item).copyWeightsTo(self)

    def deleteTweaks(self):
        """Delete all tweak nodes connected to the mesh"""
        if self.exists():
            tweaks = list(
                set([i.name for i in self.history if mc.nodeType(i.name) == "tweak"])
            )
            if tweaks:
                mc.delete(tweaks)

    def setMaxInfl(self, val=8):
        """Set maximum influences for the skinCluster of the mesh"""
        if self.skinCluster.exists():
            mc.skinCluster(self, e=1, mi=val)
