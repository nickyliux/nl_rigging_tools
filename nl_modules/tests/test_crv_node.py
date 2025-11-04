import unittest
import maya.cmds as mc
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils.color import Color


class Test_CrvNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.name = "crv"
        self.crv = CrvNode(self.name)
        self.crv.a.t.set(1, 2, 3)
        self.crv.a.r.set(10, 20, 30)
        self.circle = CrvNode("myCircle")


class Test_CrvNode_Main(Test_CrvNode_Base):

    def test__init__(self):
        crv1 = CrvNode("crv1", addOfs=1)
        self.assertEqual(crv1, "|crv1_ofs|crv1")

        crv2 = CrvNode("crv2", p=self.crv)
        self.assertEqual(crv2, "|crv|crv2")

    def test_color(self):
        crv1 = CrvNode("crv1")
        self.assertEqual(crv1.shape.a.overrideColor.get(), 22)
        crv2 = CrvNode("crv2", color=13)
        self.assertEqual(crv2.shape.a.overrideColor.get(), 13)

    def test_shape(self):
        crv1 = CrvNode("myC", shape="squareR")
        self.assertEqual(len(crv1.cvs), 5)

    def test_type(self):
        self.assertEqual("nurbsCurve", self.crv.type)

    def test_duplicate(self):
        dup = self.crv.duplicate()
        self.assertEqual(dup.__class__.__name__, "CrvNode")

    def test_getSideColor(self):
        lf_crv = CrvNode("lf_crv")
        self.assertEqual(lf_crv.shape.a.overrideColor.get(), 18)
        rt_crv = CrvNode("rt_crv")
        self.assertEqual(rt_crv.shape.a.overrideColor.get(), 20)

    def test_move(self):
        self.circle.cv_move(0, 5, 0)
        self.assertEqual(self.circle.o.bbCenter[1], 5)

    def test_dropOnGround(self):
        self.circle.cv_move(0, 5, 0)
        self.circle.cv_drop()
        self.assertEqual(round(self.circle.o.bbCenter[1]), 0)

    def test_rotate(self):
        self.circle.cv_rotate(90, 0, 0)
        self.circle.cv_move(0, 10, 0)
        self.assertEqual(round(self.circle.o.bbCenter[1]), 10)

    def test_scale(self):
        self.circle.cv_scale(3, 1, 1)
        self.assertEqual(round(self.circle.o.width) > 60, True)

    def test_length(self):
        crv = mc.curve(
            p=[(0, 5, 0), (0, 6, 0), (0, 7, 0), (0, 8, 0)], d=1, k=[0, 1, 2, 3]
        )
        self.assertEqual(CrvNode(crv).length, 3)

    def test_lineW(self):
        self.circle.width = 10
        self.assertEqual(self.circle.a.lineWidth.get(), 10)
        self.assertEqual(self.circle.width, 10)


class Test_CrvNode_Advanced(Test_CrvNode_Base):
    def test_zbuildLine(self):
        crv = CrvNode.buildLine((0, 0, 0), (0, 5, 0))
        self.assertEqual(crv.length, 5)

    def test_buildLine2(self):
        pt1 = GrpNode("a")
        pt2 = GrpNode("b")
        pt2.a.ty.set(9)
        crv = CrvNode.buildLine(pt1, pt2, insertMid=1)
        self.assertEqual(crv.length, 9)
        self.assertEqual(len(crv.cvs), 3)

    def test_buildLineLinked(self):
        pt1 = GrpNode("a")
        pt2 = GrpNode("b")
        pt2.a.t.set(0, 8, 0)
        crv = CrvNode.buildLineLinked(tgt1=pt1, tgt2=pt2)
        self.assertEqual(crv.length, 8)
        pt2.a.ty.set(10)
        self.assertEqual(crv.length, 10)

    def test_weightTo(self):
        from nl_modules.nodel.jnt_node import JntNode

        myJ = JntNode("myJ")
        myJ2 = JntNode("myJ2", p=myJ)
        myJ2.a.t.set(0, 5, 0)
        self.circle.weightTo([myJ, myJ2])
        myJ.a.t.set(0, 10, 0)
        self.assertEqual(self.circle.o.bbCenter[1], 10)

    def test__call__(self):
        self.circle(
            name="new",
            scale=2,
            color=17,
            addOfs=1,
        )
        self.assertEqual(self.circle.name, "new")
        self.assertEqual(self.circle.o.width > 40, True)
        self.assertEqual(self.circle.color, 17)
        self.assertEqual(self.circle.parent, "new_ofs")

    def test_reverse(self):
        crv = CrvNode(mc.curve(p=[(0, 0, 0), (0, 10, 0)], d=1, k=[0, 1]))
        self.assertEqual(mc.xform(crv.cvs[1], t=1, q=1)[1], 10)
        crv.reverse()
        self.assertEqual(mc.xform(crv.cvs[1], t=1, q=1)[1], 0)

    def test_rebuild(self):
        crv = CrvNode(mc.curve(p=[(0, 0, 0), (0, 10, 0)], d=1, k=[0, 1]))
        CrvNode(crv).rebuild()
        self.assertEqual(len(crv.cvs), 6)

    def test_addGimbal(self):
        gim = self.circle.add_gimbal()
        self.assertEqual(gim.parent, self.circle)
        self.assertEqual(self.circle.a.gimbalVis.exists(), True)

    def test_addGimbal2(self):
        gim = self.circle.add_gimbal(attrTgt=self.crv)
        self.crv.a.gimbalVis.set(0)
        self.assertEqual(gim.a.v.get(), False)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_CrvNode_Main", exit=False)
    unittest.main(defaultTest="Test_CrvNode_Advanced", exit=False)
