import unittest
import maya.cmds as mc
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.utils.color import Color


class Test_JntNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.name = "joint"
        self.j0 = JntNode(self.name)
        self.j0.a.t.set(1, 2, 3)
        self.j0.a.r.set(10, 20, 30)
        self.j1 = JntNode("j1")
        self.j2 = JntNode("j2", p=self.j1)
        self.j2.a.t.set(10, 10, 0)


class Test_JntNode_Main(Test_JntNode_Base):

    def test__init__(self):
        j = JntNode("joint1", pf="a_", addOfs=1)
        self.assertEqual(j, "|a_joint1_ofs|a_joint1")
        j = JntNode("joint2", pf="b_", p=self.j0)
        self.assertEqual(j, "|joint|b_joint2")

    def test_color(self):
        j = JntNode("joint1", color=22)
        self.assertEqual(j.a.overrideColor.get(), 22)

    def test_setRadius(self):
        self.j0.setRadius(5)
        self.assertEqual(self.j0.a.radius, 5)
        self.j0.setRadius(5, rel=1)
        self.assertEqual(self.j0.a.radius, 25)

    def test_jointOrient_resetJO(self):
        self.j1.orientJoint()
        self.assertEqual(int(self.j1.a.jointOrientZ.get()), 45)
        self.j1.resetOrient()
        self.assertEqual(self.j1.a.jointOrientZ.get(), 0)

    def test_addProxyMesh(self):
        px = self.j1.genProxyMesh()
        self.assertEqual(px.type, "mesh")
        self.assertEqual(px.a.t.get(), (5.0, 5.0, 0))

    def test_addProxyMesh2(self):
        px = self.j2.genProxyMesh(skipEnd=1)
        self.assertEqual(px, None)

    def test_makeTwoJC(self):
        newJ1, newJ2 = JntNode.makeTwoJointChain(
            "new",
            align=self.j1,
            align_end=self.j2,
        )
        self.assertEqual(newJ1.a.t.get(), self.j1.a.t.get())
        self.assertEqual(newJ2.a.t.get(), self.j2.a.t.get())
        self.assertEqual(newJ2.parent, newJ1)

    def test_makeTwoJC2(self):
        newJ1, newJ2 = JntNode.makeTwoJointChain("new", snap=self.j1, offset=(2, 0, 0))
        self.assertEqual(newJ2.a.t.get(), (2, 0, 0))
        self.assertEqual(newJ2.o.pos, (2, 0, 0))

    def test_makeJChainFrCrv(self):
        crv = mc.circle()[0]
        jnts = JntNode.createJntFrCrv(crv, num=6)
        self.assertEqual(len(jnts), 6)

        jnts = JntNode.createJntFrCrv(crv, num=6, addEndJ=1)
        self.assertEqual(len(jnts), 7)

    def test_duplicate(self):
        dup = self.j0.duplicate()
        self.assertEqual(dup.__class__.__name__, "JntNode")


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_JntNode_Main", exit=False)
