import unittest
import maya.cmds as mc
from nl_modules.nodel.base.dep_node import DepNode


class Test_DepNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)
        self.myMD = mc.createNode("multiplyDivide", n="myMD")

        self.md1 = DepNode("md1", nodeType="multiplyDivide")
        self.md2 = DepNode("ns:md2", nodeType="addDoubleLinear")
        self.md3 = DepNode("x")
        self.md4 = DepNode(self.myMD)


class Test_DepNode_Main(Test_DepNode_Base):
    def test__init__(self):
        with self.assertRaises(ValueError):
            DepNode("x", "x")
        with self.assertRaises(ValueError):
            DepNode("md1", "transform")

    def test__str__(self):
        self.assertEqual(self.md1, str(self.md1))
        self.assertEqual(self.md2, "ns:md2")
        self.assertEqual(self.md3, None)
        self.assertEqual(self.md4, "myMD")

    def test__repr__(self):
        self.assertEqual(self.md1.__repr__(), f"DepNode('{self.md1}')")
        self.assertEqual(self.md2.__repr__(), "DepNode('ns:md2')")
        self.assertEqual(self.md3.__repr__(), "DepNode('None')")
        self.assertEqual(self.md4.__repr__(), "DepNode('myMD')")

    def test__eq__(self):
        self.assertNotEqual(self.md1, self.md2)
        self.assertEqual(self.myMD, self.md4)

    def test__add_radd__(self):
        self.assertEqual(self.md1 + "_sf", "md1_sf")
        self.assertEqual("pf_" + self.myMD, "pf_myMD")

    def test_path_fullPath(self):
        self.assertEqual(self.md1.path, "md1")
        self.assertEqual(self.md2.path, "ns:md2")
        self.assertEqual(self.md3.path, None)
        self.assertEqual(self.md4.path, "myMD")

        self.assertEqual(self.md1.fullPath, self.md1)
        self.assertEqual(self.md2.fullPath, "ns:md2")
        self.assertEqual(self.md3.fullPath, None)
        self.assertEqual(self.md4.fullPath, "myMD")

    def test_namespace(self):
        self.assertEqual(self.md1.namespace, None)
        self.assertEqual(self.md2.namespace, "ns")
        self.assertEqual(self.md3.namespace, None)
        self.assertEqual(self.md4.namespace, None)

    def test_name(self):
        self.assertEqual(self.md1.name, "md1")
        self.assertEqual(self.md2.name, "ns:md2")
        self.assertEqual(self.md3.name, None)
        self.assertEqual(self.md4.name, "myMD")

    def test_rename(self):
        self.md1.rename("md1_x")
        self.assertEqual(self.md1.name, "md1_x")
        self.md2.rename("md2_x")
        self.assertEqual(self.md2.name, "md2_x")
        self.md3.rename("md3_x")
        self.assertEqual(self.md3.name, None)
        self.md4.rename("md4_x")
        self.assertEqual(self.md4.name, "md4_x")

    def test_type(self):
        self.assertEqual(self.md1.type, "multiplyDivide")
        self.assertEqual(self.md2.type, "addDoubleLinear")
        self.assertEqual(self.md3.type, None)
        self.assertEqual(self.md4.type, "multiplyDivide")

    def test_exist_delete(self):
        self.assertTrue(self.md1.exists())
        self.md1.delete()
        self.assertFalse(self.md1.exists())
        self.assertTrue(self.md2.exists())
        self.assertFalse(self.md3.exists())
        self.assertTrue(self.md4.exists())

    def test_lock_isLock(self):
        self.assertFalse(self.md1.isLock())
        self.md1.lock(1)
        self.assertTrue(self.md1.isLock())

        self.assertFalse(self.md2.isLock())
        self.assertFalse(self.md3.isLock())
        self.assertFalse(self.md4.isLock())

    def test_z_a(self):
        from nl_modules.nodel.base.attribute_holder import AttributeHolder

        self.assertEqual(type(self.md1.a), AttributeHolder)

    def test_z_o(self):
        from nl_modules.nodel.base.dimension import Dimension

        with self.assertRaises(ValueError):
            dim = self.md1.o


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_DepNode_Main", exit=False)
