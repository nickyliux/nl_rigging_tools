import os
import maya.cmds as mc
import nl_modules as nl_modules
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

    SHAPE_PATH = os.path.join(os.path.dirname(nl_modules.__file__), "build/shapes")

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
        shape="",
        rotate=None,
        scale=None,
        dspType=0,
        lineW=-1,
        up="",
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
                crvDictList = CurveNode.shape_getDictListFrLib(shape)
                CurveNode.shape_buildFrDictList(crvDictList, self.name, xf=self)
            else:
                obj = DagNode(mc.circle(nr=(0, 1, 0), r=10, ch=0)[0])
                parentedSh = mc.parent(obj.shape, self, r=1, s=1)[0]
                mc.rename(parentedSh, self.name + "Shape#")
                mc.delete(obj)

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
        self.lineW = lineW

    def getSideColor(self):
        """Return color depending on side"""
        color = Color.YELLOW
        if str(self.node).startswith("lf"):
            color = Color.L_BLUE
        elif str(self.node).startswith("rt"):
            color = Color.PINK
        return color

    def cv_move(self, *args, **kwargs):
        """Move all cvs of the curve"""
        kwargs = kwargs or {"r": 1}
        mc.move(*args, self.cvs, os=1, **kwargs)

    def cv_moveTo(self, pos):
        """Move all cvs to position
        e.g.
            cv_moveTo((1,2,3))  # move all cv to position (1,2,3), keeping relative position
        """
        wsPos = self.o.pos
        negOfs = (wsPos[0] * -1, wsPos[1] * -1, wsPos[2] * -1)
        mc.xform(self.cvs, r=1, t=negOfs, ws=1)
        mc.xform(self.cvs, r=1, t=pos, ws=1)

    def cv_drop(self):
        self.cv_move(0, -self.o.bb[1], 0)

    def cv_rotate(self, *args, **kwargs):
        """Rotate all cvs of the curve"""
        kwargs = kwargs or {"r": 1}
        if len(args) == 1:
            mc.rotate(args[0], 0, 0, self.cvs, **kwargs)
        else:
            mc.rotate(*args, self.cvs, **kwargs)

    def cv_scale(self, *args, atCVCetner=0, **kwargs):
        """Scale all cvs of the curve"""
        kwargs = kwargs or {"r": 1}

        if atCVCetner:
            clusterN = DagNode(mc.cluster(self.cvs)[1])
            p = mc.xform(clusterN, q=1, ws=1, rp=1)
            clusterN.delete()
            if len(args) == 1:
                mc.scale(args[0], args[0], args[0], self.cvs, pivot=p, **kwargs)
            else:
                mc.scale(*args, self.cvs, pivot=p, **kwargs)
        else:
            if len(args) == 1:
                mc.scale(args[0], args[0], args[0], self.cvs, **kwargs)
            else:
                mc.scale(*args, self.cvs, **kwargs)

    @property
    def length(self):
        """Return curve length"""
        return mc.arclen(self)

    @property
    def lineW(self):
        """Return line width"""
        if self.shape:
            return self.shape.a.lineWidth
        else:
            return -1

    @lineW.setter
    def lineW(self, w):
        """Set line width"""
        if self.shape:
            self.shape.a.lineWidth.set(w)

    @property
    def cvs(self):
        """Return all cvs"""
        return mc.ls(self + ".cv[*]", fl=1)

    @staticmethod
    def shape_saveToLib(dictList, name):
        """Save shapes data to library with filename as name
        e.g.
            CurveNode._saveToLib(list, 'arrow')
        """
        f = f"{CurveNode.SHAPE_PATH}/{name}.json"

        file.saveJson(f, dictList, force=True)
        logging.info(f"Saved to {f}")

    @staticmethod
    def shape_getDictListFrLib(name):
        """Return curveDictList from library with filename as name
        e.g.
            list = CurveNode.loadFrLib('arrow')
        """
        f = f"{CurveNode.SHAPE_PATH}/{name}.json"
        return file.loadJson(f)

    @staticmethod
    def shape_getDictListFrObj(crv):
        """Return curveDictList of shapes from curve
        e.g.
            list = CurveNode.crvToList('curve')
        """
        dictList = []
        shapes = mc.listRelatives(crv, s=1)

        for s in shapes:
            if mc.objExists(s + ".create"):
                if mc.listConnections(s + ".create"):
                    raise Exception("History is not deleted in the shape")

            ptCount = mc.getAttr(f"{s}.controlPoints", size=1)
            crvDict = {
                "points": [
                    mc.getAttr(f"{s}.controlPoints[{i}]")[0] for i in range(ptCount)
                ],
                "knots": open_maya_api.getKnotsList(s),
                "form": mc.getAttr(s + ".form"),
                "degree": mc.getAttr(s + ".degree"),
                "color": mc.getAttr(s + ".overrideColor"),
            }
            dictList.append(crvDict)

        return dictList

    @staticmethod
    def shape_buildFrDictList(dictList, name, xf=None):
        """Return curve with name from curveDictlist of shapes
        e.g.
            crv = CurveNode.crvFrList(list, 'arrow')
        """
        xf = xf or mc.createNode("transform", n=name)

        for i, crvShapeDict in enumerate(dictList):
            tmp = CurveNode(
                mc.curve(
                    p=crvShapeDict["points"],
                    d=crvShapeDict["degree"],
                    k=crvShapeDict["knots"],
                    per=bool(crvShapeDict["form"]),
                )
            )
            shape = DagNode(mc.parent(tmp.shape, xf, r=1, s=1)[0])
            tmp.delete()
            shape.rename(name + "Shape#")
            shape.a.overrideEnabled.set(1)
            shape.a.overrideColor.set(crvShapeDict["color"])

        mc.select(cl=1)
        return CurveNode(xf)

    def __lshift__(self, crv):
        """Get shape (instance) from preset or another curve
        e.g.
           CurveNode('a') << 'circle'          # from preset
           CurveNode('a') << CurveNode('b')    # from another curve
        """
        typeName = type(crv).__name__

        if typeName == "str":  # preset name
            crvDictList = CurveNode.shape_getDictListFrLib(crv)
            crvObj = CurveNode.shape_buildFrDictList(crvDictList, crv)
            crvObj.copyShapeAsInst([self], keepSrc=0)

        elif typeName == "CurveNode":  # another curve
            crv.copyShapeAsInst([self])

        # self.color = self.getSideColor()

    def __le__(self, crv):
        """Get shape (copy) from preset or another curve
        e.g.
           CurveNode('a') <= 'circle'          # from preset
           CurveNode('a') <= CurveNode('b')    # from another curve
        """
        self << crv
        self.uninstanceFromOthers()

    def __ge__(self, crv):
        """Copy shape to another curve
        e.g.
            CurveNode('a') >= CurveNode('b')    # copy to another
        """
        if isinstance(crv, CurveNode):
            self >> crv
            crv.uninstanceFromOthers()

    def __rshift__(self, crv):
        """Save shape to preset / copy to another curve
        e.g.
            CurveNode('a') >> 'circle'          # save to preset
            CurveNode('a') >> CurveNode('b')    # copy to another
        """
        if isinstance(crv, str):
            crvDictList = CurveNode.shape_getDictListFrObj(self)
            CurveNode.shape_saveToLib(crvDictList, crv)

        elif isinstance(crv, CurveNode):
            self.copyShapeAsInst([crv])

    def copyShapeAsInst(self, targets, keepSrc=1):
        """Copy it's shapes to all targets as instance
        e.g.
            crv.copyShapeAsInst(['a', 'b'])
        """
        if isinstance(targets, list):
            allTargets = []
            self.color = DagNode(targets[0]).color
            for target in targets:
                target = DagNode(target)
                shapes = target.shapes
                if shapes:
                    allXf = mc.listRelatives(shapes[0], ap=1)
                    #
                    #   If the shape is instance, collect all transforms
                    #
                    if len(allXf) > 1:
                        allXf = [DagNode(xf) for xf in allXf]
                        [allTargets.append(xf) for xf in allXf if xf not in allTargets]
                    else:
                        allTargets.append(target)

            for target in allTargets:
                [shape.delete() for shape in target.shapes]
                for shape in self.shapes:
                    mc.parent(shape, target, r=1, s=1, add=1)

            if not keepSrc:
                self.delete()

    def uninstanceFromOthers(self):
        """Un-instance itself from other instances"""
        otherXf = self.uninstanceAll()
        if otherXf:
            dup = self.duplicate()
            dup.copyShapeAsInst(otherXf, keepSrc=0)

    def uninstanceAll(self):
        """Un-instance all curves sharing the same shape
        return transforms of all objects sharing shapes before un-instance
        """
        tgtShape = self.shape
        allXf = mc.listRelatives(tgtShape, ap=1)
        otherXf = []
        if len(allXf) > 1:
            shapeSrc = self.duplicate()
            tgtShape.delete()
            for xf in allXf:
                dup = shapeSrc.duplicate()
                xf = DagNode(xf)
                mc.parent(dup.shape, xf, s=1, r=1)
                xf.shape.rename(xf + "Shape")
                dup.delete()
                if self != xf:
                    otherXf.append(xf)
            shapeSrc.delete()
            return otherXf

    @staticmethod
    def buildLine(
        tgt1,
        tgt2,
        n="line_#",
        pf="",
        lineW=-1,
        bezier=0,
        insertMid=0,
        dspType=0,
        snap=None,
        inheritXf=1,
        p=None,
    ):
        """Build line from object/position from tgt1 to tgt2
        e.g.
            line = CurveNode.buildLine(obj1, obj2, lineW=5)
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
            lineW=lineW,
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
    def buildLineLinked(obj1, obj2, pf="", lineW=-1, inheritXf=0, dspType=0, p=None):
        """Build linked line using decomposeMatrix
        e.g.
            sel = mc.ls(sl=1)
            for a, b in zip(sel[:-1], sel[1:]):
                CurveNode.buildLineLinked(a,b)
        """
        obj1 = DagNode(obj1)
        obj2 = DagNode(obj2)
        line = CurveNode.buildLine(
            obj1, obj2, pf=pf, lineW=lineW, inheritXf=inheritXf, dspType=dspType, p=p
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

    def addGimbal(self, relScale=0.7, attrTgt=None, color=0):
        """Add a gimbal control below itself and attr at attrOn to link its visibility
        e.g.
            gbc = crv.addGimbal()        # crv.gimbalCtl  -> gbc.v
            crv.addGimbal(attrTgt=obj1)  # obj1.gimbalCtl -> gbc.v
        """
        gmb_ctl = self.duplicate(n=self.node + "_gimbal")
        gmb_ctl | self
        gmb_ctl.cv_scale(relScale, atCVCetner=1)
        attrTgt = attrTgt or self
        attrTgt.a.add("gimbalCtl", min=0, max=1, dv=0, k=0) >> gmb_ctl.shape.a.v
        return gmb_ctl
