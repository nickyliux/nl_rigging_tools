import unittest
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import common, utils_node as ut


class Test_common_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):
        mc.file(new=1, f=1)

        self.obj1 = CurveNode("crv1")
        self.obj2 = CurveNode("crv2")
        self.obj3 = CurveNode("crv3")

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


class Test_common_Main(Test_common_Base):
    def test_getUniqueCstDictNames(self):
        cstList = [
            "pointConstraint",
            "orientConstraint",
            "scaleConstraint",
            "parentConstraint",
            "aimConstraint",
            "geometryConstraint",
            "normalConstraint",
            "poleVectorConstraint",
        ]
        self.assertEqual(common.getUniqueCstDictNames(), cstList)

    def test_matchMove_t(self):
        common.matchMove([self.obj1, self.obj2, self.obj3], mode="t")
        self.assertEqual(self.obj1.a.t.get(), (0, 3, 0))
        self.assertEqual(self.obj2.a.t.get(), (0, 3, 0))
        self.assertEqual(self.obj1.a.r.get(), (0, 10, 0))
        self.assertEqual(self.obj2.a.r.get(), (0, 20, 0))

    def test_matchMove_r(self):
        common.matchMove([self.obj1, self.obj2, self.obj3], mode="r")
        self.assertEqual(self.obj1.a.t.get(), (0, 1, 0))
        self.assertEqual(self.obj2.a.t.get(), (0, 2, 0))
        self.assertEqual(tuple([round(x) for x in (self.obj1.a.r.get())]), (0, 30, 0))
        self.assertEqual(tuple([round(x) for x in (self.obj2.a.r.get())]), (0, 30, 0))

    def test_matchMove_s(self):
        common.matchMove([self.obj1, self.obj2, self.obj3], mode="s")
        self.assertEqual(self.obj1.a.t.get(), (0, 1, 0))
        self.assertEqual(self.obj2.a.t.get(), (0, 2, 0))
        self.assertEqual(self.obj1.a.r.get(), (0, 10, 0))
        self.assertEqual(self.obj2.a.r.get(), (0, 20, 0))
        self.assertEqual(self.obj1.a.s.get(), (1, 300, 1))
        self.assertEqual(self.obj2.a.s.get(), (1, 300, 1))

    def test_matchMove(self):
        common.matchMove([self.obj1, self.obj2])
        self.assertEqual(self.obj1.a.t.get(), (0, 2, 0))
        self.assertEqual(self.obj1.a.r.get(), (0, 20, 0))
        self.assertEqual(self.obj1.a.s.get(), (1, 100, 1))

    def test_nonlinear_(self):
        bends = ut.nonlinear_([self.obj1, self.obj2], nodeType="bend")
        self.assertEqual(bends[0].type, "nonLinear")

    def test_addShader(self):
        shd, sg = common.addShader("myShader")
        self.assertEqual(shd.type, "lambert")
        self.assertEqual(sg.type, "shadingEngine")

    def test_cstMulti1(self):
        objList = [self.obj1, self.obj2, self.obj3]
        common.cstMulti(*objList)
        self.assertEqual(self.obj3.a.t.get(), (0, 1.5, 0))

    def test_cstMulti2(self):
        objList = [self.obj1, self.obj2, self.obj3]
        common.cstMulti(*objList, cstType="ori")
        self.assertEqual([round(x) for x in self.obj3.a.r.get()], [0, 15, 0])

    def test_cstMulti3(self):
        objList = [self.obj1, self.obj2, self.obj3]
        common.cstMulti(*objList, cstType="sca")
        self.assertEqual([round(x) for x in self.obj3.a.s.get()], [1, 141, 1])

    def test_cstMulti4(self):
        objList = [self.obj1, self.obj2, self.obj3]
        common.cstMulti(*objList, cstType="poi", w=self.loc1.a.tx)
        self.assertEqual(self.obj3.a.ty.get(), 1)
        self.loc1.a.tx.set(1)
        self.assertEqual(self.obj3.a.ty.get(), 2)

    def test_sdk(self):
        common.sdk(self.obj1, self.obj2, "ty", "ty", 0, 0)
        common.sdk(self.obj1, self.obj2, "ty", "ty", 1, 2)
        self.assertEqual(self.obj2.a.ty.get(), 2)
        self.obj1.a.ty.set(0)
        self.assertEqual(self.obj2.a.ty.get(), 0)

    def test_sdk2(self):
        common.sdk2(self.obj1.a.ty, self.obj2.a.ty, 0, 0)
        common.sdk2(self.obj1.a.ty, self.obj2.a.ty, 1, 2)
        self.assertEqual(self.obj2.a.ty.get(), 2)
        self.obj1.a.ty.set(0)
        self.assertEqual(self.obj2.a.ty.get(), 0)

    def test_show_RO(self):
        self.assertFalse(self.obj1.a.ro.get(cb=1))
        common.showAllRO()
        self.assertTrue(self.obj1.a.ro.get(cb=1))


class Test_common_Advanced(Test_common_Base):

    def test_motionPath_(self):
        crv = CurveNode(mc.curve(p=[(0, 5, 0), (0, 6, 0), (0, 7, 0), (0, 8, 0)]))
        mp = ut.motionPath_(
            crv, uValue=0, worldUpObject=self.loc1, driven=self.loc2
        )
        self.assertEqual(self.loc2.a.ty.get(), 5)
        mp.a.uValue.set(1)
        self.assertEqual(self.loc2.a.ty.get(), 8)

    def test_ribbonAttach(self):
        ball = mc.polySphere()[0]
        common.ribbonAttach(tgtList=[self.obj1, self.obj2], geo=ball)
        DagNode(ball).a.ty.set(10)
        self.assertEqual(self.obj1.o.pos[1], 11)
        self.assertEqual(self.obj2.o.pos[1], 12)

    def test_makeChain(self):
        myJ1 = mc.joint()
        chain = common.makeChain(myJ1, self.obj3)
        self.assertEqual(len(chain), 5)

    def test_nlRivet(self):
        ball = mc.polySphere()[0]
        result = common.nlRivet(geo=ball, coordList=[(0.5, 0.5), (0.7, 0.7)])
        self.assertEqual(result[0].type, "uvPin")
        self.assertEqual(len(result[1]), 2)

    def test_follicle_(self):
        surf = DagNode(mc.sphere(r=10)[0])
        folXf = ut.follicle_(surf, u=0.5, v=0.75)
        self.assertEqual(round(folXf.a.ty.get()), 10)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_common_Main", exit=False)
    unittest.main(defaultTest="Test_common_Advanced", exit=False)

    # def test_removeSuffix(self):
    #     self.assertEqual(common.removeSuffix("arm_jnt"), "arm")
    #     self.assertEqual(common.removeSuffix("lf_arm_jnt"), "lf_arm")
    #     self.assertEqual(common.removeSuffix("jnt"), "jnt")
