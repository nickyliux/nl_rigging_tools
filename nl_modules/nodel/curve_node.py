# import os
import maya.cmds as mc

# import nl_modules as nl_modules
from nl_modules.nodel.base.attribute import Attribute
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils import common, file, path, open_maya_api
from nl_modules.utils.color import Color
import logging


class CurveNode(GroupNode):
    """Curve Node Class
    e.g.
        n = CurveNode('existing')
        n = CurveNode('new', shape='square')
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
        # for crv
        color=0,
        shape="circle",
        rotate=None,
        scale=None,
        dspType=0,
        lineWidth=-1,
        up="",
        top=0,  # alwaysDrawOnTop
    ):
        GroupNode.__init__(
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
        # Add crv shape under group transform
        if not self.shape:
            if shape:
                crvDictList = self.shape_getDictListFrLib(shape)
                self.shape_buildFrDictList(crvDictList, self.name, xf=self)
            # else:
            #     obj = DagNode(mc.circle(nr=(0, 1, 0), r=10, ch=0)[0])
            #     parentedSh = mc.parent(obj.shape, self, r=1, s=1)[0]
            #     mc.rename(parentedSh, self.name + "Shape#")
            #     mc.delete(obj)

            self.color = color or self.getSideColor()
            self.dspType = dspType

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

        self.lineWidth = lineWidth
        if top:
            mc.setAttr(self.name + ".alwaysDrawOnTop", 1)

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
        lineWidth=-1,
        bezier=0,
        insertMid=0,
        dspType=0,
        snap=None,
        inheritXf=1,
        p=None,
    ):
        """Build line from object/position from tgt1 to tgt2
        e.g.
            line = CurveNode.buildLine(obj1, obj2, lineWidth=5)
            line = CurveNode.buildLine((0,0,0), (3,3,3), n='crv')
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

        crv = CurveNode(
            mc.curve(n=f"{pf}{n}", p=[pos1, pos2], d=1, k=[0, 1]),
            color=1,
            lineWidth=lineWidth,
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
    def buildLineLinked(
        obj1, obj2, pf="", lineWidth=-1, inheritXf=0, dspType=0, p=None
    ):
        """Build linked line using decomposeMatrix
        e.g.
            sel = mc.ls(sl=1)
            for a, b in zip(sel[:-1], sel[1:]):
                CurveNode.buildLineLinked(a,b)
        """
        obj1 = DagNode(obj1)
        obj2 = DagNode(obj2)
        line = CurveNode.buildLine(
            obj1,
            obj2,
            pf=pf,
            lineWidth=lineWidth,
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
            CurveNode.buildLineLinked(a, b)
        mc.select(cl=1)

    def weightTo(self, joints, weightDir=0, **kwargs):
        if self.exists():
            skin_clu = mc.skinCluster(self, joints, **kwargs)[0]

            # Apply preset weight for 6-cv curve if custom != 0
            if weightDir != 0 and len(joints) == 3 and self.shape.a.spans == 4:
                wList = [
                    (1, 0, 0),
                    (0.85, 0.15, 0),
                    (0.25, 0.75, 0),
                    (0, 0.75, 0.25),
                    (0, 0.15, 0.85),
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

            # if len(joints) == 3:
            #     if self.shape.a.spans == 4 and self.shape.a.degree == 3:
            #
            #         wList = [
            #             (1, 0, 0),
            #             (1, 0, 0),
            #             (1, 0, 0),
            #             (0, 1, 0),
            #             (0, 0, 1),
            #             (0, 0, 1),
            #             (0, 0, 1),
            #         ]
            #
            #         for i, w in enumerate(wList):
            #             mc.skinPercent(
            #                 skin_clu,
            #                 f"{self.shape}.cv[{i}]",
            #                 transformValue=[
            #                     (joints[0], w[0]),
            #                     (joints[1], w[1]),
            #                     (joints[2], w[2]),
            #                 ],
            #             )

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
        *args,
        **kwargs,
    ):
        """Update multiple data of the curve
        e.g.
            crv = CurveNode('new')
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
        self.color = color or self.getSideColor()

        if p:
            self | p
        if addOfs:
            self.addOffsetGrp()
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

    def lowerCubeFrontCV(self):
        targetCV = [self.shape + f".cv[{id}]" for id in [1, 12, 15, 16]]
        for cv in targetCV:
            mc.move(0, -self.o.height * 0.3, 0, cv, os=1, r=1)
