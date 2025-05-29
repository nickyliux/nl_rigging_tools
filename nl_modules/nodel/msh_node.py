import maya.cmds as mc
from maya import mel
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.base.dag_node import DagNode
import logging


class MshNode(DagNode):
    """Mesh Node Class
    e.g.
        n = MshNode('existing')
    """

    def __init__(self, node):
        DagNode.__init__(self, node)

        if mc.nodeType(node) == "mesh":
            self.node = self.parent

    @property
    def verts(self):
        return mc.ls(self + ".vtx[*]", fl=1)

    @property
    def edges(self):
        return mc.ls(self + ".e[*]", fl=1)

    @property
    def faces(self):
        return mc.ls(self + ".f[*]", fl=1)

    @property
    def skinCluster(self):
        """Return skinCluster node related to the mesh"""
        skinClu = mel.eval(f'findRelatedSkinCluster "{self}"')
        if skinClu == "":
            return None
        return DepNode(skinClu)

    def delSkin(self):
        sc = self.skinCluster
        if sc:
            sc.delete()

    @property
    def joints(self):
        """Return joints connected to the mesh thru skinCluster"""
        if self.skinCluster.exists():
            return [DagNode(i) for i in mc.skinCluster(self.skinCluster, q=1, inf=1)]

    def weightTo(self, joints, **kwargs):
        if self.exists():
            mc.skinCluster(self, joints, **kwargs)

    def softWeightTo(self, joints, rui=0, mi=3, tsb=1, dr=2, **kwargs):
        self.weightTo(joints, rui=rui, mi=mi, tsb=tsb, dr=dr, **kwargs)

    def hardWeightTo(self, joints):
        self.weightTo(joints, rui=0, mi=1, tsb=1, dr=0.1)

    def copyWeightsTo(self, items):
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
                    sa="closestPoint",
                    ia="oneToOne",
                )

    def copyWeightsFr(self, item):
        MshNode(item).copyWeightsTo(self)

    def deleteTweaks(self):
        if self.exists():
            tweaks = list(
                set([i.name for i in self.history if mc.nodeType(i.name) == "tweak"])
            )
            if tweaks:
                mc.delete(tweaks)
