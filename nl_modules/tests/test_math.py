import unittest
import maya.cmds as mc

from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils import maths


class Test_math_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.obj1 = GroupNode("grp1")
        self.obj2 = GroupNode("grp2")
        self.obj2.a.ty.set(10)


class Test_math_Main(Test_math_Base):
    def test_getDistBetwObj(self):
        dist = maths.getDistBetwObj(self.obj1, self.obj2)
        self.assertEqual(dist, 10)

    def test_getDistBetwPt(self):
        dist = maths.getDistBetwPt((1, 1, 1), (1, 0, 1))
        self.assertEqual(dist, 1)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_math_Main", exit=False)
