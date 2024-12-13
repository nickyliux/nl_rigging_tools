import unittest
import maya.cmds as mc
from nl_modules.nodel.group_node import GroupNode


class Test_GroupNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.grp_name = "grp"
        self.grp = GroupNode(self.grp_name)
        self.grp.a.t.set(1, 2, 3)
        self.grp.a.r.set(10, 20, 30)


class Test_GroupNode_Main(Test_GroupNode_Base):

    def test__init__(self):
        grp1 = GroupNode("grp1", addOfs=1)
        self.assertEqual(grp1, "|grp1_ofs|grp1")
        grp2 = GroupNode("grp2", p=self.grp)
        self.assertEqual(grp2, "|grp|grp2")

    def test__init__pf_sf(self):
        grp3 = GroupNode("myG", pf="pf_", sf="_sf")
        self.assertEqual(str(grp3), "|pf_myG_sf")

    def test__init__snap(self):
        grp1 = GroupNode("grp1", snap=self.grp)
        self.assertEqual(grp1.a.t.get(), (1, 2, 3))

    def test__init__alignR(self):
        grp1 = GroupNode("grp1", alignR=self.grp)
        self.assertEqual(int(grp1.a.r.get()[0]), 10)

    def test__init__align(self):
        grp1 = GroupNode("grp1", align=self.grp)
        self.assertEqual(grp1.a.t.get(), (1, 2, 3))
        self.assertEqual(int(grp1.a.r.get()[0]), 10)

    def test__init__addOfs(self):
        grp1 = GroupNode("myG", addOfs=1)
        self.assertEqual(str(grp1), "|myG_ofs|myG")

    def test__init__p(self):
        grp1 = GroupNode("myG", p=self.grp)
        self.assertEqual(str(grp1), "|grp|myG")

    def test__init__addOfs_p(self):
        grp1 = GroupNode("myG", p=self.grp, addOfs=1)
        self.assertEqual(str(grp1), "|grp|myG_ofs|myG")

    def test__init__joint(self):
        n = GroupNode("jnt", nodeType="joint")
        self.assertEqual(n.type, "joint")


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_GroupNode_Main", exit=False)
