import unittest
import maya.cmds as mc
from maya import OpenMaya
from nl_modules.utils import open_maya_api as api


class Test_Open_Maya_Api(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=True, f=True)
        # grp1
        #     jnt1
        self.jnt1 = mc.joint(n="jnt1")
        self.grp1 = mc.group(n="grp1")

    def test_toMObject(self):
        self.assertEqual(None, api.toMObject(""))
        mObj = api.toMObject("jnt1")
        self.assertEqual("|grp1|jnt1", OpenMaya.MFnDagNode(mObj).fullPathName())

    def test_toDpNode(self):
        self.assertEqual(None, api.toDpNode(""))
        depNode = api.toDpNode("jnt1")
        self.assertEqual("jnt1", depNode.name())

    def test_toMDagPath(self):
        self.assertEqual(None, api.toMDagPath(""))
        dagNode = api.toMDagPath("jnt1")
        self.assertEqual(0, dagNode.childCount())


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_Open_Maya_Api", exit=False)
