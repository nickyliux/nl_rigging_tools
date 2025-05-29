import unittest
import maya.cmds as mc
from nl_modules.nodel.grp_node import GrpNode


class Test_GrpNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.grp_name = "grp"
        self.grp = GrpNode(self.grp_name)
        self.grp.a.t.set(1, 2, 3)
        self.grp.a.r.set(10, 20, 30)


class Test_GrpNode_Main(Test_GrpNode_Base):

    def test__init__(self):
        grp1 = GrpNode("grp1", addOfs=1)
        self.assertEqual(grp1, "|grp1_ofs|grp1")
        grp2 = GrpNode("grp2", p=self.grp)
        self.assertEqual(grp2, "|grp|grp2")

    def test__init__pf_sf(self):
        grp3 = GrpNode("myG", pf="pf_", sf="_sf")
        self.assertEqual(str(grp3), "|pf_myG_sf")

    def test__init__snap(self):
        grp1 = GrpNode("grp1", snap=self.grp)
        self.assertEqual(grp1.a.t.get(), (1, 2, 3))

    def test__init__alignR(self):
        grp1 = GrpNode("grp1", alignR=self.grp)
        self.assertEqual(int(grp1.a.r.get()[0]), 10)

    def test__init__align(self):
        grp1 = GrpNode("grp1", align=self.grp)
        self.assertEqual(grp1.a.t.get(), (1, 2, 3))
        self.assertEqual(int(grp1.a.r.get()[0]), 10)

    def test__init__addOfs(self):
        grp1 = GrpNode("myG", addOfs=1)
        self.assertEqual(str(grp1), "|myG_ofs|myG")

    def test__init__p(self):
        grp1 = GrpNode("myG", p=self.grp)
        self.assertEqual(str(grp1), "|grp|myG")

    def test__init__addOfs_p(self):
        grp1 = GrpNode("myG", p=self.grp, addOfs=1)
        self.assertEqual(str(grp1), "|grp|myG_ofs|myG")

    def test__init__joint(self):
        n = GrpNode("jnt", nodeType="joint")
        self.assertEqual(n.type, "joint")


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_GrpNode_Main", exit=False)
