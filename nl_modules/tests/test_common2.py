import unittest
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common2


class Test_common2_Base(unittest.TestCase):
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
        self.obj3 = CrvNode("crv3")

        self.obj1.a.ty.set(1)
        self.obj1.a.ry.set(10)
        self.obj1.a.sy.set(100)

        self.obj2.a.ty.set(2)
        self.obj2.a.ry.set(20)
        self.obj2.a.sy.set(200)

        self.obj3.a.ty.set(3)
        self.obj3.a.ry.set(30)
        self.obj3.a.sy.set(300)

        self.loc1 = LocNode("loc1")
        self.loc2 = LocNode("loc2")


class Test_common2_Main(Test_common2_Base):

    def test_clusterSetup(self):
        crv = CrvNode(
            mc.curve(p=[(0, 5, 0), (0, 6, 0), (0, 7, 0), (0, 8, 0), (0, 9, 0)])
        )
        ctl1 = CrvNode("ctl1")
        ctl1.a.t.set(0, 5, 0)
        ctl2 = CrvNode("ctl2")
        ctl2.a.t.set(0, 7, 0)
        ctl3 = CrvNode("ctl3")
        ctl3.a.t.set(0, 9, 0)
        common2.clusterSetup(crv, [ctl1, ctl2, ctl3])


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_common2_Main", exit=False)

    # def test_removeSuffix(self):
    #     self.assertEqual(common.removeSuffix("arm_jnt"), "arm")
    #     self.assertEqual(common.removeSuffix("lf_arm_jnt"), "lf_arm")
    #     self.assertEqual(common.removeSuffix("jnt"), "jnt")
