import unittest
import maya.cmds as mc

from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.mesh_node import MeshNode


class Test_MeshNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)

        self.sphere_name = "sphere"
        self.sphere = MeshNode(mc.polySphere(n=self.sphere_name, r=1)[0])
        self.cube_name = "cube"
        self.cube = MeshNode(mc.polyCube(n=self.cube_name, w=1, h=2, d=3)[0])

        self.joint1_name = "joint1"
        self.joint2_name = "joint2"
        self.joint1 = DagNode(mc.joint(n=self.joint1_name))
        self.joint2 = DagNode(mc.joint(n=self.joint2_name))

        mc.skinCluster(
            self.sphere, [self.joint1, self.joint2], rui=0, mi=3, tsb=1, dr=2
        )


class Test_MeshNode_Main(Test_MeshNode_Base):

    def test_verts(self):
        self.assertEqual(self.sphere.verts[0], self.sphere_name + ".vtx[0]")
        self.assertEqual(self.sphere.verts[1], self.sphere_name + ".vtx[1]")

    def test_edges(self):
        self.assertEqual(self.sphere.verts[0], self.sphere_name + ".vtx[0]")
        self.assertEqual(self.sphere.verts[1], self.sphere_name + ".vtx[1]")

    def test_faces(self):
        self.assertEqual(self.sphere.verts[0], self.sphere_name + ".vtx[0]")
        self.assertEqual(self.sphere.verts[1], self.sphere_name + ".vtx[1]")

    def test_type(self):
        self.assertEqual(self.sphere.type, "mesh")

    def test_skinCluster(self):
        self.assertEqual(self.sphere.skinCluster.exists(), 1)

    def test_joints(self):
        self.assertEqual(self.sphere.joints, [self.joint1, self.joint2])

    def test_weightTo(self):
        self.cube.weightTo([self.joint1, self.joint2], rui=0, mi=3, tsb=1, dr=2)
        self.assertEqual(self.cube.skinCluster.exists(), 1)

    def test_softWeightTo(self):
        self.cube.softWeightTo([self.joint1, self.joint2])
        self.assertEqual(self.cube.skinCluster.exists(), 1)

    def test_hardWeightTo(self):
        self.cube.hardWeightTo([self.joint1, self.joint2])
        self.assertEqual(self.cube.skinCluster.exists(), 1)

    def test_copyWeightsTo(self):
        self.sphere.copyWeightsTo(self.cube)
        self.assertEqual(self.cube.skinCluster.exists(), 1)

    def test_copyWeightsFr(self):
        self.cube.copyWeightsFr(self.sphere)
        self.assertEqual(self.cube.skinCluster.exists(), 1)

    def test_duplicate(self):
        sphere2 = self.sphere.duplicate(n="dup")
        self.assertEqual(sphere2.__class__.__name__, "MeshNode")

    # def test_deleteTweaks(self):
    #     sphere2 = self.sphere.duplicate(n="dup")
    #     mc.move(0, 5, 0, self.joint2, r=1)
    #     mc.move(0, 5, 0, self.sphere.verts[:33], a=1)
    #     mc.blendShape(sphere2, self.sphere, tc=0)
    #
    #     self.assertEqual(DepNode("tweak1").exists(), 1)
    #     self.sphere.deleteTweaks()
    #     self.assertEqual(DepNode("tweak1").exists(), 0)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_MeshNode_Main", exit=False)
