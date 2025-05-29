import unittest
import maya.cmds as mc
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils import utils_node as ut


class Test_utils_node_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.grp1 = GrpNode("grp1")
        self.grp2 = GrpNode("grp2")
        self.weight = GrpNode("w")
        self.grp1.a.tx.set(1)
        self.grp2.a.tx.set(2)
        self.weight.a.tx.set(0.5)


class Test_utils_node_Main(Test_utils_node_Base):

    def test_blendC_(self):
        attr = ut.blendC_(self.grp1.a.tx, self.grp2.a.tx, self.weight.a.tx)

        self.assertEqual(round(attr.get()[0], 1), 1.5)
        self.weight.a.tx.set(0)
        self.assertEqual(round(attr.get()[0], 1), 1)
        self.weight.a.tx.set(1)
        self.assertEqual(round(attr.get()[0], 1), 2)
        self.grp2.a.tx.set(50)
        self.assertEqual(round(attr.get()[0], 1), 50)

    def test_blendN_(self):
        attr = ut.blendN_(self.grp1.a.tx, self.grp2.a.tx, self.weight.a.tx)

        self.assertEqual(round(attr.get()[0], 1), 1.5)
        self.weight.a.tx.set(0)
        self.assertEqual(round(attr.get()[0], 1), 1)
        self.weight.a.tx.set(1)
        self.assertEqual(round(attr.get()[0], 1), 2)
        self.grp2.a.tx.set(50)
        self.assertEqual(round(attr.get()[0], 1), 50)

    def test_blend2_(self):
        attr = ut.blend2_(self.grp1.a.tx, self.grp2.a.tx, self.weight.a.tx)

        self.assertEqual(round(attr.get(), 1), 1.5)
        self.weight.a.tx.set(0)
        self.assertEqual(round(attr.get(), 1), 1)
        self.weight.a.tx.set(1)
        self.assertEqual(round(attr.get(), 1), 2)
        self.grp2.a.tx.set(50)
        self.assertEqual(round(attr.get(), 1), 50)

    def test_min_(self):
        attr = ut.min_(self.grp1.a.tx, self.grp2.a.tx)

        self.assertEqual(attr.get(), 1)
        self.grp1.a.tx.set(-50)
        self.assertEqual(attr.get(), -50)

    def test_max_(self):
        attr = ut.max_(self.grp1.a.tx, self.grp2.a.tx)

        self.assertEqual(attr.get(), 2)
        self.grp1.a.tx.set(99)
        self.assertEqual(attr.get(), 99)

    def test_clp_(self):
        attr = ut.clp_(self.weight.a.tx, min=self.grp1.a.tx, max=self.grp2.a.tx)

        self.assertEqual(attr.get(), 1)
        self.weight.a.tx.set(-20)
        self.assertEqual(attr.get(), 1)
        self.weight.a.tx.set(50)
        self.assertEqual(attr.get(), 2)

    def test_distDim_(self):
        dist = ut.distDim_(self.grp1, self.grp2)
        self.assertEqual(dist, 1)
        self.grp1.a.ty.set(5)
        self.assertEqual(dist, 3)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_utils_node_Main", exit=False)
