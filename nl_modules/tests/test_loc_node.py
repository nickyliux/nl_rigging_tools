import unittest
import maya.cmds as mc
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils.color import Color


class Test_LocNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.name = "loc"
        self.loc = LocNode(self.name)
        self.loc.a.t.set(1, 2, 3)
        self.loc.a.r.set(10, 20, 30)


class Test_LocNode_Main(Test_LocNode_Base):

    def test__init__(self):
        loc1 = LocNode("loc1", addOfs=1)
        self.assertEqual(loc1, "|loc1_ofs|loc1")

        loc2 = LocNode("loc2", p=self.loc)
        self.assertEqual(loc2, "|loc|loc2")

    def test_color(self):
        loc1 = LocNode("loc1", color=22)
        self.assertEqual(loc1.shape.a.overrideColor.get(), 22)

    def test_size(self):
        loc1 = LocNode("loc1", size=5)
        self.assertEqual(loc1.shape.a.localScaleX.get(), 5)

    def test_matchOffset(self):
        loc1 = LocNode("loc1", matchOfs=(1, 2, 3))
        self.assertEqual(loc1.a.t.get(), (1, 2, 3))

    def test_scale(self):
        self.loc.localScale(5)
        self.assertEqual(self.loc.shape.a.localScaleX, 5)
        self.assertEqual(self.loc.shape.a.localScaleY, 5)
        self.assertEqual(self.loc.shape.a.localScaleZ, 5)

    def test_type(self):
        self.assertEqual("locator", self.loc.type)

    def test_duplicate(self):
        dup = self.loc.duplicate()
        self.assertEqual(dup.__class__.__name__, "LocNode")


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_LocNode_Main", exit=False)
