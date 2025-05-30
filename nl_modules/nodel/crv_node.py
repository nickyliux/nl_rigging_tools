import maya.cmds as mc

from nl_modules.nodel.base.attribute import Attribute
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils import common, file, path, open_maya_api
from nl_modules.utils.color import Color
import logging


class CrvNode(GrpNode):
    """Curve Node Class
    e.g.
        n = CrvNode('existing')
        n = CrvNode('new', shape='squR')
    """

    def __init__(
        self,
        node,
        pf="",
        sf="",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        p=None,
        color=0,
        shape="circle",
        rotate=None,
        scale=None,
        move=None,
        dspType=0,
        width=-1,
        up="",
        top=0,  # alwaysDrawOnTop
    ):
        thisName = pf + node + sf
        existing = DagNode(thisName).exists()

        GrpNode.__init__(
            self,
            node,
            pf=pf,
            sf=sf,
            align=align,
            alignR=alignR,
            snap=snap,
            addOfs=addOfs,
            p=p,
        )
        #
        #   add crv shape under group transform
        #
        if not self.shape:
            if shape:
                crvDictList = self.shape_getDictListFrLib(shape)
                self.shape_buildFrDictList(crvDictList, self.name, xf=self)
            # else:
            #     obj = DagNode(mc.circle(nr=(0, 1, 0), r=10, ch=0)[0])
            #     parentedSh = mc.parent(obj.shape, self, r=1, s=1)[0]
            #     mc.rename(parentedSh, self.name + "Shape#")
            #     mc.delete(obj)

            self.color = color or self.get_side_color()
            self.dspType = dspType

        if not existing:
            if up == "x":
                self.cv_rotate(0, 0, -90)
            elif up == "z":
                self.cv_rotate(90, 0, 0)
            elif up == "-x":
                self.cv_rotate(0, 0, -90)
                self.cv_scale(-1, 1, 1)
            elif up == "-z":
                self.cv_rotate(90, 0, 0)
                self.cv_scale(1, 1, -1)
            elif up == "-y":
                self.cv_scale(1, -1, 1)

            if rotate:
                self.cv_rotate(*rotate)
            if scale:
                if isinstance(scale, (tuple, list)):
                    self.cv_scale(*scale)
                elif isinstance(scale, (int, float)):
                    self.cv_scale(scale)
            if move:
                self.cv_move(*move)
            if top:
                for s in self.shapes:
                    s.a["alwaysDrawOnTop"].set(1)
            self.width = width

    @property
    def length(self):
        """Return curve length"""
        return mc.arclen(self)

    @staticmethod
    def buildLine(
        tgt1,
        tgt2,
        n="line_#",
        pf="",
        width=-1,
        bezier=0,
        insertMid=0,
        dspType=0,
        snap=None,
        inheritXf=1,
        p=None,
    ):
        """Build line from object/position from tgt1 to tgt2
        e.g.
            line = CrvNode.buildLine(obj1, obj2, width=5)
            line = CrvNode.buildLine((0,0,0), (3,3,3), n='crv')
        """

        def getPos(tgt):
            if isinstance(tgt, tuple):
                return tgt
            else:
                return mc.xform(tgt, q=1, ws=1, t=1)

        if tgt1 is None or tgt2 is None:
            raise ValueError(f"buildLine failed. tgt1 or tgt2 is None")

        pos1 = getPos(tgt1)
        pos2 = getPos(tgt2)
        if pf and pf[-1] != "_":
            pf += "_"

        crv = CrvNode(
            mc.curve(n=f"{pf}{n}", p=[pos1, pos2], d=1, k=[0, 1]),
            color=1,
            width=width,
        )
        crv.dspType = dspType

        if insertMid:
            mc.insertKnotCurve(crv, p=0.5, ch=0, nk=1, rpo=1)
        if bezier:
            mc.select(crv)
            mc.nurbsCurveToBezier()
        if snap:
            crv.snapTo(snap)
        if p:
            mc.parent(crv, p)
        crv.a.inheritsTransform.set(inheritXf)
        return crv

    @staticmethod
    def buildLineLinked(obj1, obj2, pf="", width=-1, inheritXf=0, dspType=0, p=None):
        """Build linked line using decomposeMatrix
        e.g.
            sel = mc.ls(sl=1)
            for a, b in zip(sel[:-1], sel[1:]):
                CrvNode.buildLineLinked(a,b)
        """
        obj1 = DagNode(obj1)
        obj2 = DagNode(obj2)
        line = CrvNode.buildLine(
            obj1,
            obj2,
            pf=pf,
            width=width,
            inheritXf=inheritXf,
            dspType=dspType,
            p=p,
        )

        if line:
            nodes = obj1.a.worldMatrix.outConnNode
            dcm = nodes[0] if nodes else DepNode("DCM_#", nodeType="decomposeMatrix")
            obj1.a.worldMatrix >> dcm.a.inputMatrix
            mc.connectAttr(dcm + ".outputTranslate", line.shape + ".cv[0]")

            nodes = obj2.a.worldMatrix.outConnNode
            dcm = nodes[0] if nodes else DepNode("DCM_#", nodeType="decomposeMatrix")
            obj2.a.worldMatrix >> dcm.a.inputMatrix
            mc.connectAttr(dcm + ".outputTranslate", line.shape + ".cv[1]")
            return line

    @staticmethod
    def buildLineLinkedSel():
        """Build linked lines in selection order"""
        sel = mc.ls(sl=1, tr=1)
        for a, b in zip(sel[:-1], sel[1:]):
            CrvNode.buildLineLinked(a, b)
        mc.select(cl=1)

    def weightTo(self, joints, weightDir=0, **kwargs):
        """Bind this curve to joints"""
        if self.exists():
            skin_clu = mc.skinCluster(self, joints, **kwargs)[0]

            # Test
            spans = self.shape.a.spans.get()
            degree = self.shape.a.degree.get()
            if len(joints) == 3 and spans == 4 and degree == 3:
                wList = [
                    (1, 0, 0),
                    (1, 0, 0),
                    (1, 0, 0),
                    (0, 1, 0),
                    (0, 0, 1),
                    (0, 0, 1),
                    (0, 0, 1),
                ]
                if weightDir == -1:
                    wList.reverse()

                for i, w in enumerate(wList):
                    cv = f"{self.shape}.cv[{i}]"
                    mc.skinPercent(
                        skin_clu,
                        cv,
                        transformValue=[
                            (joints[0], w[0]),
                            (joints[1], w[1]),
                            (joints[2], w[2]),
                        ],
                    )

    def __call__(
        self,
        name="",
        shape=None,
        up=None,
        rotate=None,
        scale=1,
        color=0,
        addOfs=0,
        p=None,
        top=0,
        width=-1,
        *args,
        **kwargs,
    ):
        """Update multiple data of the curve
        e.g.
            crv = CrvNode('new')
            crv(n='crv2', scale=2, color=3, addOfs=1)
        """
        if name:
            self.rename(name)
        if shape:
            self << shape
        if up == "x":
            self.cv_rotate(0, 0, 90)
        elif up == "z":
            self.cv_rotate(90, 0, 0)
        if rotate:
            self.cv_rotate(*rotate)

        if isinstance(scale, (tuple, list)):
            self.cv_scale(*scale)
        elif isinstance(scale, (int, float)):
            self.cv_scale(scale)
        self.color = color or self.get_side_color()

        if p:
            self | p
        if addOfs:
            self.addOffsetGrp()
        if top:
            for s in self.shapes:
                s.a["alwaysDrawOnTop"].set(1)
        if width > 0:
            self.width = width
        return self

    def reverse(self):
        """Reverse curve"""
        mc.reverseCurve(self, ch=0, rpo=1)
        return self

    def rebuild(self, spans=3, deg=3):
        """Rebuild curve with different spans/deg
        e.g.
            crv.rebuild()        # result will have 6 cvs
            crv.rebuild(spans=2) # result will have 5 cvs
        """
        mc.rebuildCurve(
            self,
            rpo=1,
            endKnots=1,
            keepRange=0,
            keepControlPoints=0,
            keepEndPoints=1,
            keepTangents=1,
            spans=spans,
            degree=deg,
        )
        return self

    def lowerCubeFrontCV(self, up="z"):
        ids = [1, 12, 15, 16]
        targetCV = [self.shape + f".cv[{id}]" for id in ids]

        for cv in targetCV:
            mc.move(0, -self.o.height * 0.3, 0, cv, os=1, r=1)
