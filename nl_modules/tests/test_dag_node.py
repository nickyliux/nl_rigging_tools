import unittest
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils.color import Color


class Test_DagNode_Base(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        mc.refresh(su=1)

    @classmethod
    def tearDownClass(cls):
        mc.refresh(su=0)

    def setUp(self):

        mc.file(new=1, f=1)
        # cube
        # grp1
        #     sphere
        #     grp2
        #     grp3
        #     grp4
        #     grp5
        #         grp6
        #             jnt1
        self.cube = DagNode(mc.polyCube(n="cube")[0])

        self.name = "sphere"
        self.sphere_base = mc.polySphere(n=self.name)[0]
        self.sphere = DagNode(self.sphere_base)
        self.sphere2 = DagNode(self.name)

        self.grp1 = DagNode(mc.group(self.sphere, n="grp1"))
        self.grp2 = DagNode(mc.group(em=1, n="grp2"))
        self.grp3 = DagNode(mc.group(em=1, n="grp3"))
        self.grp4 = DagNode(mc.group(em=1, n="grp4"))
        self.grp5 = DagNode(mc.group(em=1, n="grp5"))
        self.grp6 = DagNode(mc.group(em=1, n="grp6"))

        mc.select(cl=1)
        self.jnt1 = DagNode(mc.joint(n="jnt1", p=(0, 0, 0)))

        mc.parent(self.grp2, self.grp3, self.grp4, self.grp5, self.grp1)
        mc.parent(self.grp6, self.grp5)
        mc.parent(self.jnt1, self.grp6)


class Test_DagNode_Main(Test_DagNode_Base):
    def test__str__(self):
        self.assertEqual(self.sphere, "|grp1|" + self.name)

    def test__repr__(self):
        self.assertEqual(
            self.sphere.__repr__(),
            f"DagNode('{self.name}')",
        )

    def test__eq__(self):
        self.assertEqual(self.sphere, self.sphere2)

    def test_node_path_fullPath(self):
        self.assertEqual(self.sphere.node, "sphere")
        self.assertEqual(self.sphere.path, "sphere")
        self.assertEqual(self.sphere.fullPath, f"|grp1|sphere")

    def test_shape(self):
        self.assertEqual(self.sphere.shape, "sphereShape")

    def test_shapes(self):
        self.assertEqual(len(self.sphere.shapes), 1)
        mc.parent(self.cube.shape, self.sphere, r=1, s=1)
        self.assertEqual(len(self.sphere.shapes), 2)

    def test_shapesAll(self):
        self.assertEqual(len(self.sphere.shapesAll), 1)
        mc.nonLinear(self.sphere, type="bend")
        self.assertEqual(len(self.sphere.shapesAll), 2)

    def test_deleteIntShapes(self):
        mc.nonLinear(self.cube, type="bend")
        self.assertEqual(mc.objExists("cubeShapeOrig"), True)
        self.cube.deleteItmShapes()
        self.assertEqual(mc.objExists("cubeShapeOrig"), False)

    def test_order_reorder(self):
        self.assertEqual(self.sphere.order, 0)
        self.sphere.order = 3
        self.assertEqual(self.sphere.order, 3)

    def test_zeroize(self):
        zro = self.grp1.zeroize()
        self.assertEqual(self.grp1.parent, zro)
        self.assertEqual(zro.name, "grp1_ofs")

    def test_zeroize2(self):
        zro = self.grp1.zeroize(below=1)
        self.assertEqual(zro.parent, self.grp1)
        self.assertEqual(
            zro.children, [self.sphere, self.grp2, self.grp3, self.grp4, self.grp5]
        )

    def test_zeroize3(self):
        zro = self.grp1.zeroize(below=1, relink=False)
        self.assertEqual(
            self.grp1.children,
            [self.sphere, self.grp2, self.grp3, self.grp4, self.grp5, zro],
        )

    def test_zeroize4(self):
        self.sphere.a.ty.set(10)
        zro = self.sphere.zeroize(alignParent=True)
        self.assertEqual(zro.a.ty.get(), 0)

    def test_addOffsetGrp1(self):
        self.assertEqual(len(self.grp1.allParents), 0)
        self.grp1.addOffsetGrp()
        self.assertEqual(len(self.grp1.allParents), 1)

    def test_addOffsetGrp2(self):
        self.grp1.addOffsetGrp(below=1)
        self.assertEqual(self.grp1.children[0].name, "grp1_ofs")

    def test_addOffsetGrp3(self):
        self.grp1.addOffsetGrp(below=1, relink=0)
        self.assertEqual(len(self.grp1.children), 6)

    def test_snap(self):
        self.cube.a.t.set(0, 0, 100)
        self.cube.a.r.set(0, 0, 100)
        self.cube.snapTo(self.sphere)
        coord = [round(i) for i in self.cube.a.t.get()]
        self.assertEqual(coord, [0, 0, 0])
        coord = [round(i) for i in self.cube.a.r.get()]
        self.assertEqual(coord, [0, 0, 100])

    def test_alignTo(self):
        self.cube.a.t.set(0, 0, 100)
        self.cube.a.r.set(0, 0, 100)
        self.cube.alignTo(self.grp1)
        coord = [round(i) for i in self.cube.a.t.get()]
        self.assertEqual(coord, [0, 0, 0])
        coord = [round(i) for i in self.cube.a.r.get()]
        self.assertEqual(coord, [0, 0, 0])

    def test_alignHere(self):
        self.cube.a.t.set(0, 0, 100)
        self.cube.alignHere(self.grp1)
        coord = [round(i) for i in self.grp1.a.t.get()]
        self.assertEqual(coord, [0, 0, 100])

    def test_freezeXf(self):
        self.cube.a.t.set(1, 2, 3)
        self.cube.freezeXf()
        self.assertEqual(self.cube.a.t.get(), (0, 0, 0))

    def test_resetXf(self):
        self.sphere.a.t.set(1, 2, 3)
        self.assertEqual(self.sphere.a.t.get(), (1, 2, 3))
        self.sphere.resetXf()
        self.assertEqual(self.sphere.a.t.get(), (0, 0, 0))

    def test_duplicate1(self):
        sphereDup = self.sphere.duplicate(n="sphereDup")
        self.assertEqual(sphereDup, "|grp1|sphereDup")

    def test_duplicate2(self):
        self.sphere.delete()
        with self.assertRaises(ValueError) as e:
            self.sphere.duplicate(n="test")
            self.assertEqual(str(e.exception), "Can not duplicate None !")

    def test_show_hide(self):
        self.sphere.hide()
        self.assertEqual(mc.getAttr(self.sphere + ".v"), 0)
        self.sphere.show()
        self.assertEqual(mc.getAttr(self.sphere + ".v"), 1)

    def test_color(self):
        self.assertIsNone(self.sphere.color)
        self.sphere.color = Color.RED
        self.assertEqual(self.sphere.color, 13)

    def test_dspType(self):
        self.cube.dspType = 1
        self.assertEqual(self.cube.shape.a.overrideDisplayType.get(), 1)
        self.cube.dspType = 2
        self.assertEqual(self.cube.shape.a.overrideDisplayType.get(), 2)

    def test_history_delete(self):
        self.assertIn("polySphere1", self.sphere.history)
        self.sphere.deleteHistory()
        self.assertNotIn("polySphere1", self.sphere.history)

    def test_setMsg_getMsgOutput(self):
        pass
        # self.grp1.setMsg({"aaa": self.grp3})
        # self.grp2.setMsg({"aaa": self.grp3})
        # nodes = self.grp3.getMsgOutput()
        # self.assertTrue(self.grp1 in nodes)
        # self.assertTrue(self.grp2 in nodes)

        # self.grp4.setMsg({"a1": self.grp5, "a2": self.grp6})
        # nodes = self.grp5.getMsgOutput()
        # self.assertEqual(nodes, [self.grp4])

    def test_getClosestInList(self):
        self.cube.a.t.set(3, 3, 3)
        self.sphere.a.t.set(2, 2, 2)
        closest = self.sphere.getClosestInList([self.cube, self.grp1, self.grp2])
        self.assertEqual(closest, self.cube)

    def test_type(self):
        self.assertEqual("mesh", self.sphere.type)
        self.assertEqual("transform", self.grp1.type)


class Test_DagNode_Parent(Test_DagNode_Base):
    def test_getChildren(self):
        self.assertEqual(len(self.grp1.getChildren(nt="mesh")), 1)
        self.assertEqual(len(self.grp1.getChildren(nt="transform")), 4)
        self.assertEqual(len(self.grp1.getChildren(nt="joint")), 0)

    def test_getChildren_all(self):
        self.assertEqual(len(self.grp1.getChildren(nt="mesh", ad=1)), 1)
        self.assertEqual(len(self.grp1.getChildren(nt="transform", ad=1)), 5)
        self.assertEqual(len(self.grp1.getChildren(nt="joint", ad=1)), 1)

    def test_getChildren_incl(self):

        result = self.grp1.getChildren(nt="transform", ad=1, incl=1)
        self.assertEqual(len(result), 6)

        result = self.grp1.getChildren(nt="transform", ad=1, incl=0)
        self.assertEqual(len(result), 5)

    def test_getDirectChildren(self):
        self.assertEqual(
            self.grp1._getDirectChildren(),
            [self.sphere, self.grp2, self.grp3, self.grp4, self.grp5],
        )

    def test_getDescendants(self):
        self.assertEqual(
            self.grp1._getDescendants(),
            [
                self.sphere,
                self.grp2,
                self.grp3,
                self.grp4,
                self.grp5,
                self.grp6,
                self.jnt1,
            ],
        )

    def test_children(self):
        self.assertEqual(len(self.grp1.children), 5)
        self.assertEqual(self.grp1.children[0], self.sphere)
        self.assertEqual(self.grp1.children[-1], self.grp5)
        self.assertEqual(self.cube.children, [])

    def test_children2(self):
        self.assertEqual(len(self.grp1.children2), 6)
        self.assertEqual(self.grp1.children2[0], self.grp1)
        self.assertEqual(self.cube.children2, [self.cube])

    def test_childrenJt(self):
        self.assertEqual(len(self.grp1.childrenJt), 0)
        self.assertEqual(self.cube.childrenJt, [])

    def test_childrenJt2(self):
        self.assertEqual(len(self.grp1.childrenJt2), 0)
        self.assertEqual(self.cube.childrenJt2, [])

    def test_allChildren(self):
        self.assertEqual(len(self.grp1.allChildren), 7)
        self.assertEqual(len(self.grp5.allChildren), 2)
        self.assertEqual(self.cube.allChildren, [])

    def test_allChildren2(self):
        self.assertEqual(len(self.grp1.allChildren2), 8)
        self.assertEqual(len(self.grp5.allChildren2), 3)
        self.assertEqual(self.cube.allChildren2, [self.cube])

    def test_allChildrenJt(self):
        self.assertEqual(len(self.grp1.allChildrenJt), 1)
        self.assertEqual(self.cube.allChildrenJt, [])

    def test_allChildrenJt2(self):
        self.assertEqual(len(self.grp1.allChildrenJt2), 1)
        self.assertEqual(self.cube.allChildrenJt2, [])

    def test_parent(self):
        self.assertEqual(self.grp6.parent, self.grp5)
        self.assertEqual(self.cube.parent, None)

    def test_offset(self):
        self.assertEqual(self.grp6.offset, self.grp6.parent)

    def test_parentTo(self):
        self.sphere.a.t.set(1, 2, 3)
        self.sphere.parentTo(self.cube, reset=0, ofs=(3, 4, 5))

        self.assertEqual(self.sphere.parent, self.cube)
        self.assertEqual(self.sphere.a.t.get(), (3, 4, 5))

    def test_parentToWorld(self):
        self.jnt1.parentToWorld()
        self.assertEqual(self.jnt1.parent, None)

        self.cube.parentToWorld()
        self.assertEqual(self.cube.parent, None)

    def test_allParents(self):
        self.assertEqual(
            self.jnt1.allParents,
            [self.grp6, self.grp5, self.grp1],
        )
        self.assertEqual(self.cube.allParents, [])

    def test__or__(self):
        self.grp6 | self.cube
        self.assertEqual(self.grp6.parent, self.cube)

    def test__or__2(self):
        with self.assertRaises(RuntimeError):
            self.grp1 | self.grp2

    def test__ror__(self):
        self.cube | self.grp6
        self.assertEqual(self.cube.parent, self.grp6)

    def test__ror__2(self):
        (self.grp2, self.grp3) | self.sphere
        self.assertEqual(self.grp2.parent, self.sphere)
        self.assertEqual(self.grp3.parent, self.sphere)


class Test_DagNode_Cst(Test_DagNode_Base):
    def test_cst(self):
        cst = self.sphere.cstPoi(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_poiCst")
        cst.delete()

        cst = self.sphere.cstOri(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_oriCst")
        cst.delete()

        cst = self.sphere.cstSca(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_scaCst")
        cst.delete()

        cst = self.sphere.cstAim(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_aimCst")
        cst.delete()

        cst = self.sphere.cstGeo(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_geoCst")
        cst.delete()

        cst = self.sphere.cstNml(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_nmlCst")
        cst.delete()

        cst = self.sphere.cstPar(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_parCst")
        cst.delete()

    def test_cst_parentScale(self):
        self.sphere.cstParSca(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_scaCst")
        self.assertEqual(self.cube.getCstNodes()[1], "cube_parCst")

    def test_cst_parentT(self):
        self.sphere.cstOri(self.cube)
        self.sphere.cstParT(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_oriCst")
        self.assertEqual(self.cube.getCstNodes()[1], "cube_parTCst")

    def test_cst_parentR(self):
        self.sphere.cstPoi(self.cube)
        self.sphere.cstParR(self.cube)
        self.assertEqual(self.cube.getCstNodes()[0], "cube_poiCst")
        self.assertEqual(self.cube.getCstNodes()[1], "cube_parRCst")

    def test_cst_removeCstNodes(self):
        self.sphere.cstPoi(self.cube)
        self.sphere.cstOri(self.cube)
        self.sphere.cstSca(self.cube)
        self.assertEqual(len(self.cube.getCstNodes()), 3)

        total1 = len(mc.ls())
        self.cube.removeCstNodes()
        total2 = len(mc.ls())

        self.assertEqual(self.cube.getCstNodes(), [])
        self.assertEqual(total1 - total2, 3)

    def test_getCstNodes(self):
        self.grp2.cstPoi(self.sphere)
        self.grp3.cstOri(self.sphere)
        self.grp4.cstSca(self.sphere)
        csts = self.sphere.getCstNodes()

        self.assertEqual(csts[0], "sphere_poiCst")
        self.assertEqual(csts[1], "sphere_oriCst")
        self.assertEqual(csts[2], "sphere_scaCst")
        self.assertEqual(len(csts), 3)

        self.sphere.removeCstNodes()
        self.assertEqual(self.sphere.getCstNodes(), [])

    def test_getCstWeightAttr(self):
        self.grp1.cstPar(self.cube)
        self.grp2.cstPar(self.cube)
        conns = self.cube.getCstWeightAttr(cstType="parentConstraint")

        self.assertEqual(str(conns[0]), "|cube|cube_parCst.grp1W0")
        self.assertEqual(str(conns[1]), "|cube|cube_parCst.grp2W1")

    def test_getCstObjects(self):
        self.grp2.cstPoi(self.sphere)
        self.grp3.cstOri(self.sphere)
        self.grp3.cstSca(self.sphere)
        objs = self.sphere.getCstObjects()

        self.assertEqual(objs, [self.grp2, self.grp3])

        self.sphere.removeCstNodes()
        self.assertEqual(self.sphere.getCstNodes(), [])


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_DagNode_Main", exit=False)
    unittest.main(defaultTest="Test_DagNode_Parent", exit=False)
    unittest.main(defaultTest="Test_DagNode_Cst", exit=False)
