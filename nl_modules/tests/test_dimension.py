import unittest
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode


class Test_Dimension_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)

        self.sphere = DagNode(mc.polySphere(n="sphere", r=1)[0])
        self.cube = DagNode(mc.polyCube(n="cube", w=1, h=2, d=3)[0])
        self.add = DagNode("add", nodeType="addDoubleLinear")
        self.attrs = ["tx", "ty", "tz", "rx", "ry", "rz"]


class Test_Dimension_Main(Test_Dimension_Base):
    def test_worldMatrix(self):

        self.assertTrue(self.sphere.o.worldMatrix)

        with self.assertRaises(ValueError):
            self.assertFalse(self.add.o)

    def test_bb(self):
        self.assertEqual(
            [round(i, 4) for i in self.sphere.o.bb],
            [-1, -1, -1, 1, 1, 1],
        )

    def test_w_h_d(self):
        self.assertEqual(round(self.cube.o.width, 2), 1)
        self.assertEqual(round(self.cube.o.height, 2), 2)
        self.assertEqual(round(self.cube.o.depth, 2), 3)

    def test_position(self):
        self.assertEqual(self.sphere.o.pos, (0, 0, 0))
        [self.sphere.a[i].set(1) for i in self.attrs]
        self.assertEqual([round(p, 3) for p in self.sphere.o.pos], [1, 1, 1])

    def test_centerPivot(self):
        myGrp = DagNode(mc.group(em=1, w=1))

        self.cube.a.t.set(1, 2, 3)
        self.sphere.o.getPivotFr(self.cube)

        myGrp.alignTo(self.sphere)
        self.assertEqual([round(c, 1) for c in myGrp.o.bbCenter], [1, 2, 3])

        self.sphere.o.centerPivot()
        myGrp.alignTo(self.sphere)
        self.assertEqual([round(c, 1) for c in myGrp.o.bbCenter], [0, 0, 0])

    def test_copyPivotTo(self):
        myGrp = DagNode(mc.group(em=1))
        self.sphere.a.t.set(1, 2, 3)

        myGrp.alignTo(self.sphere)
        self.assertEqual(myGrp.o.bbCenter, [1, 2, 3])

        self.sphere.a.t.set(4, 5, 6)
        self.cube.o.copyPivotTo(self.sphere)

        myGrp.alignTo(self.sphere)
        self.assertEqual(myGrp.o.bbCenter, [0, 0, 0])

    def test_getPivotFr(self):
        myGrp = DagNode(mc.group(em=1))
        self.sphere.a.t.set(1, 2, 3)

        myGrp.alignTo(self.sphere)
        self.assertEqual(myGrp.o.bbCenter, [1, 2, 3])

        self.sphere.a.t.set(4, 5, 6)
        self.sphere.o.getPivotFr(self.cube)

        myGrp.alignTo(self.sphere)
        self.assertEqual(myGrp.o.bbCenter, [0, 0, 0])

    def test_distanceTo(self):
        self.cube.a.t.set(0, 10, 0)
        self.assertEqual(self.sphere.o.distanceTo(self.cube), 10.0)

        self.cube.a.t.set(150, 0, 0)
        self.assertEqual(self.sphere.o.distanceTo(self.cube), 150)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_Dimension_Main", exit=False)
