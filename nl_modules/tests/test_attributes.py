import unittest
import maya.cmds as mc
from nl_modules.nodel.base.attribute import Attribute
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.curve_node import CurveNode


class Test_Attribute_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)

        # sphere_ofs
        #     sphere
        # cube_ofs
        #     cube
        # plane

        self.sphere_name = "sphere"
        self.sphere = DagNode(mc.polySphere(n=self.sphere_name)[0])
        self.sphere.addOffsetGrp()

        self.cube_name = "cube"
        self.cube = DagNode(mc.polyCube(n=self.cube_name)[0])
        self.cube.addOffsetGrp()

        self.plane_name = "plane"
        self.plane = DagNode(mc.polyPlane(n=self.plane_name)[0])

        self.pma = DagNode("pma", nodeType="plusMinusAverage")

        self.cube.a.t.set(1, 2, 3)
        self.cube.a.r.set(10, 20, 30)
        self.sphere.a.t.set(4, 5, 6)
        self.sphere.a.r.set(40, 50, 60)


class Test_AttributeHolder_Main(Test_Attribute_Base):
    def test__repr__(self):
        self.assertEqual(
            self.sphere.a.__repr__(), f"AttributeHolder('{self.sphere_name}')"
        )

    def test__getItem_getAttr__(self):
        self.assertTrue(self.sphere.a["rx"].__class__.__name__, "Attribute")
        self.assertTrue(self.sphere.a.rx.__class__.__name__, "Attribute")

    def test_list(self):
        self.assertEqual(self.sphere.a.list()[0].attr, "message")
        self.assertEqual(self.sphere.a.list()[1].attr, "caching")
        self.assertEqual(len(self.sphere.a.list()), 232)

    def test_add(self):
        self.assertFalse(self.sphere.a.myAttr.exists())
        self.sphere.a.add("myAttr")
        self.assertEqual(self.sphere.a.myAttr.get(), 0)

        self.sphere.a.add("myAttr2", dv=10, attrType="long")
        self.assertEqual(self.sphere.a.myAttr2.get(), 10)

        self.sphere.a.add("myAttr3", dv=1, attrType="enum", en="a:b:c")
        self.assertEqual(self.sphere.a.myAttr3.get(), 1)

    def test_add_str(self):
        self.sphere.a.add("myAttr", attrType="string", txt="myText")
        self.assertEqual(self.sphere.a.myAttr.get(), "myText")

    def test_addSep(self):
        self.sphere.a.addSep("myAttr")
        self.assertEqual(self.sphere.a.myAttr.get(), 0)
        self.assertEqual(self.sphere.a.myAttr.get(se=1), False)

    def test_reset(self):
        self.assertEqual(self.sphere.a.rx.get(), 40)
        self.sphere.a.reset()
        self.assertEqual(self.sphere.a.rx.get(), 0)

    def test_showAttr1(self):
        self.sphere.a.showAttr(t=1)
        self.assertTrue(self.sphere.a.tx.get(se=1))
        self.sphere.a.showAttr()
        self.assertFalse(self.sphere.a.rx.get(se=1))

        self.cube.a.add("new")
        self.cube.a.showAttr("new")
        self.assertFalse(self.cube.a.new.lock)

    def test_showAttr2(self):
        self.cube.a.showAttr("tx", "ty")
        self.assertTrue(self.cube.a.tx.settable())
        self.assertTrue(self.cube.a.ty.settable())
        self.assertFalse(self.cube.a.tz.settable())


class Test_Attribute_Main(Test_Attribute_Base):

    def test__str__(self):
        self.assertEqual(str(self.sphere.a.rx), "|sphere_ofs|sphere.rx")
        self.assertEqual(str(self.sphere.a.r), "|sphere_ofs|sphere.r")

    def test__repr__(self):
        self.assertEqual(
            self.sphere.a.rx.__repr__(),
            "Attribute('sphere.rx')",
        )
        self.assertEqual(
            self.sphere.a.t.__repr__(),
            "Attribute('sphere.t')",
        )

    def test_path(self):
        self.assertEqual(self.sphere.a.r.path, "sphere.r")
        self.assertEqual(self.sphere.a.rx.path, "sphere.rx")
        self.assertEqual(self.sphere.a.rxx.path, None)

    def test_fullPath(self):
        self.assertEqual(self.sphere.a.r.fullPath, "|sphere_ofs|sphere.r")
        self.assertEqual(self.sphere.a.rx.fullPath, "|sphere_ofs|sphere.rx")
        self.assertEqual(self.sphere.a.rxx.fullPath, None)

    def test_attr(self):
        self.assertEqual(self.sphere.a.s.attr, "s")
        self.assertEqual(self.sphere.a.sx.attr, "sx")
        self.assertEqual(self.sphere.a.sxx.attr, "sxx")

    def test_exists(self):
        self.assertTrue(self.sphere.a.r.exists())
        self.assertTrue(self.sphere.a.rx.exists())
        self.assertFalse(self.sphere.a.rxx.exists())

    def test_settable(self):
        self.assertTrue(self.sphere.a.rx.settable())
        self.assertTrue(self.sphere.a.r.settable())
        self.plane.a.rx >> self.sphere.a.rx
        self.assertFalse(self.sphere.a.rx.settable())
        self.assertFalse(self.sphere.a.r.settable())

        mc.setAttr(self.sphere.a.t, l=1)
        self.assertFalse(self.sphere.a.ty.settable())

    def test_reset(self):
        self.cube.a.t.reset()
        self.assertEqual(self.cube.a.t.get(), (0, 0, 0))

    def test_lock(self):
        self.assertFalse(self.sphere.a.rx.lock)
        self.sphere.a.rx.lock = 1
        self.assertTrue(self.sphere.a.rx.lock)
        self.assertFalse(self.sphere.a.r.lock)

        self.plane.a.t >> self.sphere.a.t
        self.assertFalse(self.sphere.a.t.lock)

    def test_set(self):
        self.assertEqual(self.sphere.a.rx.get(), 40)
        self.sphere.a.rx.set(300)
        self.assertEqual(int(self.sphere.a.rx.get()), 300)

    def test_set2(self):

        self.sphere.a.r.set2(33)
        self.assertEqual(self.sphere.a.r.get(), (33, 33, 33))

        self.sphere.a.tx.set2(5, mul=1)
        self.assertEqual(self.sphere.a.t.get(), (20, 5, 6))
        self.sphere.a.tz.set2(7, add=1)
        self.assertEqual(self.sphere.a.t.get(), (20, 5, 13))

    def test_get(self):
        self.assertEqual(self.sphere.a.rx.get(), 40)
        self.assertEqual(tuple([round(x) for x in self.cube.a.r.get()]), (10, 20, 30))

    def test_query(self):
        self.assertEqual(
            self.sphere.a.r.query(listChildren=1),
            ["rotateX", "rotateY", "rotateZ"],
        )
        self.assertEqual(self.sphere.a.rx.query(niceName=1), "Rotate X")

    def test_delete(self):
        self.sphere.a.add("myAttr")
        self.assertTrue(self.sphere.a.myAttr.exists())
        self.sphere.a.myAttr.delete()
        self.assertFalse(self.sphere.a.myAttr.exists())


class Test_Attribute_Connect(Test_Attribute_Base):
    def test_connect_ry_ry(self):
        self.cube.a.ry >> self.sphere.a.ry
        self.assertFalse(mc.isConnected(self.cube.a.rx, self.sphere.a.rx, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.ry, self.sphere.a.ry, iuc=1))
        self.assertFalse(mc.isConnected(self.cube.a.rz, self.sphere.a.rz, iuc=1))

    def test_connect_r_r(self):
        self.cube.a.r >> self.sphere.a.r
        self.assertTrue(mc.isConnected(self.cube.a.rx, self.sphere.a.rx, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.ry, self.sphere.a.ry, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.rz, self.sphere.a.rz, iuc=1))

    def test_connect_ry_r(self):
        self.cube.a.ry >> self.sphere.a.r
        self.assertTrue(mc.isConnected(self.cube.a.ry, self.sphere.a.rx, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.ry, self.sphere.a.ry, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.ry, self.sphere.a.rz, iuc=1))

    def test_connect_r_ry(self):
        self.cube.a.r >> self.sphere.a.ry
        self.assertTrue(mc.isConnected(self.cube.a.rx, self.sphere.a.ry, iuc=1))
        self.assertFalse(mc.isConnected(self.cube.a.ry, self.sphere.a.rx, iuc=1))
        self.assertFalse(mc.isConnected(self.cube.a.rz, self.sphere.a.rz, iuc=1))

    def test_disconnect(self):
        self.cube.a.r >> self.sphere.a.r
        self.assertTrue(mc.isConnected(self.cube.a.rx, self.sphere.a.rx, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.ry, self.sphere.a.ry, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.rz, self.sphere.a.rz, iuc=1))

        self.sphere.a.ry.disconnect()
        self.assertTrue(mc.isConnected(self.cube.a.rx, self.sphere.a.rx, iuc=1))
        self.assertFalse(mc.isConnected(self.cube.a.ry, self.sphere.a.ry, iuc=1))
        self.assertTrue(mc.isConnected(self.cube.a.rz, self.sphere.a.rz, iuc=1))

        self.sphere.a.r.disconnect()
        self.assertFalse(mc.isConnected(self.cube.a.rx, self.sphere.a.rx, iuc=1))
        self.assertFalse(mc.isConnected(self.cube.a.ry, self.sphere.a.ry, iuc=1))
        self.assertFalse(mc.isConnected(self.cube.a.rz, self.sphere.a.rz, iuc=1))

    def test_inConnAttr(self):
        self.cube.a.rx >> self.sphere.a.rx
        self.plane.a.ry >> self.sphere.a.ry
        self.assertEqual(self.sphere.a.rx.inConnAttr, [self.sphere.a.rx])
        self.assertEqual(self.sphere.a.r.inConnAttr, [self.cube.a.rx, self.plane.a.ry])

    def test_outConnAttr(self):
        self.cube.a.rx >> self.sphere.a.rx
        self.cube.a.ry >> self.plane.a.ry
        self.assertEqual(self.cube.a.r.outConnAttr, [self.sphere.a.rx, self.plane.a.ry])
        self.assertEqual(self.cube.a.rx.outConnAttr, [self.cube.a.rx])

    def test_inConnNode(self):
        self.assertEqual(self.cube.a.nonExist.inConnNode, None)

    def test_inConnNode2(self):
        self.cube.a.rx >> self.sphere.a.rx
        self.plane.a.ry >> self.sphere.a.ry
        self.assertEqual(self.sphere.a.rx.inConnNode, self.cube)
        self.assertEqual(self.sphere.a.r.inConnNode, [self.cube, self.plane])

    def test_inConnNode3(self):
        loc = LocNode("loc")
        jnt = JointNode("jnt")
        crv = CurveNode("crv")
        loc.a.rx >> self.sphere.a.rx
        jnt.a.ry >> self.sphere.a.ry
        crv.a.rz >> self.sphere.a.rz
        self.assertEqual(self.sphere.a.r.inConnNode, [loc, jnt, crv])

    def test_outConnNode(self):
        self.assertEqual(self.cube.a.nonExist.outConnNode, [])

    def test_outConnNode2(self):
        self.cube.a.rx >> self.sphere.a.rx
        self.cube.a.ry >> self.plane.a.ry
        self.assertEqual(self.cube.a.rx.outConnNode, [self.sphere])
        self.assertEqual(self.cube.a.r.outConnNode, [self.sphere, self.plane])

    def test_outConnNode3(self):
        loc = LocNode("loc")
        jnt = JointNode("jnt")
        crv = CurveNode("crv")
        self.sphere.a.rx >> loc.a.rx
        self.sphere.a.ry >> jnt.a.ry
        self.sphere.a.rz >> crv.a.rz
        self.assertEqual(self.sphere.a.r.outConnNode, [loc, jnt, crv])

    def test__lshift__(self):
        self.plane.a.tz << self.cube.a.tz
        self.assertEqual(self.plane.a.tx.get(), 0)
        self.assertEqual(self.plane.a.ty.get(), 0)
        self.assertEqual(self.plane.a.tz.get(), 3)

    def test__rshift__(self):
        self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(self.plane.a.tx.get(), 0)
        self.assertEqual(self.plane.a.ty.get(), 0)
        self.assertEqual(self.plane.a.tz.get(), 6)

    def test__rrshift__(self):
        8 >> self.plane.a.tz
        self.assertEqual(self.plane.a.t.get(), (0, 0, 8))
        8 >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (8, 8, 8))
        (4, 5, 6) >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (4, 5, 6))
        with self.assertRaises(ValueError):
            (4, 5, 6) >> self.plane.a.tx


class Test_Attribute_Condition(Test_Attribute_Base):

    def test__eq__setCdn(self):
        outAttr = (self.cube.a.rx == self.sphere.a.rx).setCdn(ifTrue=5, ifFalse=10)

        self.assertEqual(outAttr.get(), 10)
        self.cube.a.rx.set(40)
        self.assertEqual(outAttr.get(), 5)

    def test__ne__setCdn(self):
        outAttr = (self.cube.a.rx != self.sphere.a.rx).setCdn(ifTrue=5, ifFalse=10)

        self.assertEqual(outAttr.get(), 5)
        self.cube.a.rx.set(40)
        self.assertEqual(outAttr.get(), 10)

    def test__gt__setCdn(self):
        outAttr = (self.cube.a.rx > self.sphere.a.rx).setCdn(ifTrue=5, ifFalse=10)

        self.assertEqual(outAttr.get(), 10)
        self.cube.a.rx.set(2000)
        self.assertEqual(outAttr.get(), 5)

    def test__ge__setCdn(self):
        outAttr = (self.cube.a.rx >= self.sphere.a.rx).setCdn(ifTrue=5, ifFalse=10)

        self.assertEqual(outAttr.get(), 10)
        self.cube.a.rx.set(40)
        self.assertEqual(outAttr.get(), 5)

    def test__lt__setCdn(self):
        outAttr = (self.cube.a.rx < self.sphere.a.rx).setCdn(ifTrue=5, ifFalse=10)

        self.assertEqual(outAttr.get(), 5)
        self.cube.a.rx.set(600)
        self.assertEqual(outAttr.get(), 10)

    def test__le__setCdn(self):
        outAttr = (self.cube.a.rx <= self.sphere.a.rx).setCdn(ifTrue=5, ifFalse=10)

        self.assertEqual(outAttr.get(), 5)
        self.cube.a.rx.set(90)
        self.assertEqual(outAttr.get(), 10)


class Test_Attribute_Parent(Test_Attribute_Base):
    def test_atParent(self):
        self.assertEqual(self.sphere.a.r.atParent, [])
        self.assertEqual(self.sphere.a.rx.atParent, self.sphere.a.r)

    def test_atChildren(self):
        self.assertEqual(self.sphere.a.rx.atChildren, [])
        self.assertEqual(
            self.sphere.a.r.atChildren,
            [self.sphere.a.rx, self.sphere.a.ry, self.sphere.a.rz],
        )

    def test_isVector(self):
        self.assertTrue(self.pma.a.input3D.isVector())
        self.assertFalse(self.pma.a.input1D.isVector())

    def test_isParent(self):
        self.assertTrue(self.sphere.a.r.isParent())
        self.assertFalse(self.sphere.a.rx.isParent())
        self.assertTrue(self.pma.a.input1D.isParent())
        self.assertTrue(self.pma.a.input3D.isParent())

    def test_isChild(self):
        self.assertFalse(self.sphere.a.r.isChild())
        self.assertTrue(self.sphere.a.rx.isChild())
        self.assertFalse(self.pma.a.input1D.isChild())
        self.assertFalse(self.pma.a.input3D.isChild())

    def test_isBothParent(self):
        self.assertTrue(self.sphere.a.r.bothParent(self.cube.a.r))
        self.assertFalse(self.sphere.a.r.bothParent(self.cube.a.rx))
        self.assertFalse(self.sphere.a.ry.bothParent(self.cube.a.r))
        self.assertFalse(self.sphere.a.ry.bothParent(self.cube.a.rx))

    def test_isBothChild(self):
        self.assertTrue(self.sphere.a.rx.bothChildren(self.cube.a.rz))
        self.assertFalse(self.sphere.a.r.bothChildren(self.cube.a.rx))
        self.assertFalse(self.sphere.a.ry.bothChildren(self.cube.a.r))
        self.assertFalse(self.sphere.a.r.bothChildren(self.cube.a.r))


class Test_Attribute_Maths(Test_Attribute_Base):

    def test_genNodeName(self):
        self.assertEqual(Attribute.genNodeName("plusMinusAverage", 1), "add__#")
        self.assertEqual(Attribute.genNodeName("plusMinusAverage", 2), "sub__#")
        self.assertEqual(Attribute.genNodeName("plusMinusAverage", 3), "ave__#")

        self.assertEqual(Attribute.genNodeName("multiplyDivide", 1), "mul__#")
        self.assertEqual(Attribute.genNodeName("multiplyDivide", 2), "div__#")
        self.assertEqual(Attribute.genNodeName("multiplyDivide", 3), "pow__#")

    def test__add__(self):
        self.cube.a.tz + self.sphere.a.t >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 7)
        self.cube.a.t + self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 7)

        self.cube.a.t + self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (5, 7, 9))
        self.cube.a.tz + self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (8, 8, 8))

    def test__add__2(self):
        self.cube.a.tz + 20 >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 23)
        (self.cube.a.tz + (1, 2, 3)) >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (4, 5, 6))

    def test__sub__(self):
        self.cube.a.tz - self.sphere.a.t >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), -1)
        self.cube.a.t - self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), -5)

        self.cube.a.t - self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (-3, -3, -3))
        self.cube.a.tz - self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (-2, -2, -2))

    def test__mul__(self):
        self.cube.a.tz * self.sphere.a.t >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 12)
        self.cube.a.t * self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 6)

        self.cube.a.t * self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (4, 10, 18))
        self.cube.a.tz * self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (15, 15, 15))

    def test__mul__2(self):
        self.cube.a.tz * 20 >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 60)
        (self.cube.a.tz * (1, 2, 3)) >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (3, 6, 9))

    def test__div__(self):
        self.cube.a.tz / self.sphere.a.t >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 0.75)
        self.cube.a.t / self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(round(self.plane.a.tz.get(), 3), 0.167)

        self.cube.a.t / self.sphere.a.t >> self.plane.a.t
        self.assertEqual(
            tuple([round(x, 2) for x in self.plane.a.t.get()]), (0.25, 0.40, 0.50)
        )
        self.cube.a.tz / self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(
            tuple([round(x, 2) for x in self.plane.a.t.get()]), (0.6, 0.6, 0.6)
        )

    def test__pow__(self):
        self.cube.a.tz**self.sphere.a.t >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 81)
        self.cube.a.t**self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 1)

        self.cube.a.t**self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (1, 32, 729))
        self.cube.a.tz**self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (243, 243, 243))

    def test__matmul__(self):
        self.cube.a.tz @ self.sphere.a.t >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 3.5)
        self.cube.a.t @ self.sphere.a.tz >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), 3.5)

        self.cube.a.t @ self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (2.5, 3.5, 4.5))
        self.cube.a.tz @ self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (4, 4, 4))

    def test__neg__(self):
        -self.sphere.a.rx >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), -40)
        -self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (-4, -5, -6))
        -self.sphere.a.t >> self.plane.a.ty
        self.assertEqual(self.plane.a.ty.get(), -4)
        -self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (-5, -5, -5))

    def test__invert__(self):
        ~self.sphere.a.rx >> self.plane.a.tz
        self.assertEqual(self.plane.a.tz.get(), -39)
        ~self.sphere.a.t >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (-3, -4, -5))
        ~self.sphere.a.t >> self.plane.a.ty
        self.assertEqual(self.plane.a.ty.get(), -3)
        ~self.sphere.a.ty >> self.plane.a.t
        self.assertEqual(self.plane.a.t.get(), (-4, -4, -4))


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_AttributeHolder_Main", exit=False)
    unittest.main(defaultTest="Test_Attribute_Main", exit=False)
    unittest.main(defaultTest="Test_Attribute_Connect", exit=False)
    unittest.main(defaultTest="Test_Attribute_Condition", exit=False)
    unittest.main(defaultTest="Test_Attribute_Parent", exit=False)
    unittest.main(defaultTest="Test_Attribute_Maths", exit=False)
