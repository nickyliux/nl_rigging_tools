import unittest
import maya.cmds as mc

from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils.color import Color


class Test_color_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.obj1 = CrvNode("crv1")
        self.obj2 = CrvNode("crv2")
        tmp = LocNode("loc")
        mc.parent(tmp.shape, self.obj2, r=1, s=1)

        self.obj2.a.ty.set(10)


class Test_color_Main(Test_color_Base):

    def test_getExpanded(self):
        self.assertEqual(
            Color._getExpanded(self.obj2),
            ["|crv2|crv2Shape1", "|crv2|locShape"],
        )
        self.assertEqual(
            Color._getExpanded([self.obj1, self.obj2]),
            ["|crv1|crv1Shape1", "|crv2|crv2Shape1", "|crv2|locShape"],
        )

    def test_getColor(self):
        self.assertEqual(Color.getColor(self.obj1), 22)
        self.assertEqual(Color.getColor([self.obj1, self.obj2]), 22)

    def test_setColor(self):
        Color.setColor(self.obj1, Color.RED)
        self.assertEqual(Color.getColor(self.obj1), 13)

        Color.setColor([self.obj1, self.obj2], 20)
        self.assertEqual(Color.getColor(self.obj1), 20)
        self.assertEqual(Color.getColor(self.obj2), 20)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_color_Main", exit=False)
