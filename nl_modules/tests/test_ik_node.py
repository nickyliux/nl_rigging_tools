import unittest
import maya.cmds as mc
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.utils.color import Color


class Test_ikNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)

        self.j1 = JointNode("j1")
        self.j2 = JointNode("j2")
        self.j3 = JointNode("j3")
        self.j1.a.t.set(0, 10, 0)
        self.j2.a.t.set(0, 5, 1)

        self.j3 | self.j2
        self.j2 | self.j1
        self.j1.orientJoint()
        self.j2.orientJoint()


class Test_ikNode_Main(Test_ikNode_Base):

    def test__init__(self):
        ikN = IkNode("myIk", sj=self.j1, ee=self.j3)
        self.assertEqual(ikN.type, "ikHandle")


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_ikNode_Main", exit=False)
