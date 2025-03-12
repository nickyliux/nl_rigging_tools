import os
import maya.cmds as mc
import nl_modules as nl_modules
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import common, file, path, open_maya_api
from nl_modules.utils.color import Color
import logging


class GroupNode(DagNode):
    """Group Node Class
    e.g.
        n = GroupNode('existing')
        n = GroupNode('new')
    """

    PATH_SHAPE = os.path.join(os.path.dirname(nl_modules.__file__), "build/shapes")

    def __init__(
        self,
        node,
        nodeType="transform",
        pf="",
        sf="",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        radius=None,
        p=None,
    ):
        if node is None:
            logging.info("Fail to create group for None")
            return
        if pf and pf[-1] != "_":
            pf += "_"
        name = pf + node + sf
        if name:
            DagNode.__init__(self, name)
            if not mc.objExists(name):
                self.createNode(
                    name,
                    nodeType=nodeType,
                    align=align,
                    alignR=alignR,
                    snap=snap,
                    addOfs=addOfs,
                    radius=radius,
                    p=p,
                )

    def createNode(
        self,
        node,
        nodeType="transform",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        radius=None,
        p=None,
    ):
        """Create transform or joint"""
        self.node = mc.createNode(nodeType, n=node)
        if align:
            self.alignTo(align)
        if alignR:
            self.alignTo(alignR, rotate=1)
        if snap:
            self.snapTo(snap)
        if p:
            self.parentTo(p)
        if addOfs:
            self.addOffsetGrp()
        if nodeType == "joint" and radius:
            self.a.radius.set(radius)

        return self

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

    def getSideColor(self):
        """Return color depending on side"""
        color = Color.YELLOW
        if str(self.node).startswith("lf"):
            color = Color.L_BLUE
        elif str(self.node).startswith("rt"):
            color = Color.PINK
        return color

    def addGimbal(self, relScale=0.8, attrTgt=None, color=0):
        """Add a gimbal control below itself and attr at attrOn to link its visibility
        e.g.
            gbc = crv.addGimbal()        # crv.gimbalCtl  -> gbc.v
            crv.addGimbal(attrTgt=obj1)  # obj1.gimbalCtl -> gbc.v
        """
        gmb_ctl = self.duplicate(n=self.node + "_gmb")
        gmb_ctl | self
        gmb_ctl.cv_scale(relScale, atCVCetner=1)
        attrTgt = attrTgt or self
        attrTgt.a.add("gimbalCtl", min=0, max=1, dv=0, k=0) >> gmb_ctl.shape.a.v
        return gmb_ctl

    def shape_saveToLib(self, dictList, name):
        """Save shapes data to library with filename as name
        e.g.
            saveToLib(list, 'arrow')
        """
        f = f"{GroupNode.PATH_SHAPE}/{name}.json"

        file.saveJson(f, dictList, force=True)
        logging.info(f"Saved to {f}")

    def shape_getDictListFrLib(self, name):
        """Return curveDictList from library with filename as name
        e.g.
            list = loadFrLib('arrow')
        """
        f = f"{GroupNode.PATH_SHAPE}/{name}.json"
        return file.loadJson(f)

    def shape_getDictListFrObj(self, crv):
        """Return curveDictList of shapes from curve
        e.g.
            list = crvToList('curve')
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

    def shape_buildFrDictList(self, dictList, name, xf=None):
        """Return curve with name from curveDictlist of shapes
        e.g.
            crv = crvFrList(list, 'arrow')
        """
        xf = xf or mc.createNode("transform", n=name)

        for i, crvShapeDict in enumerate(dictList):
            tmp = GroupNode(
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
        return GroupNode(xf)

    def __le__(self, crv):
        """Copy shape from preset/another
        e.g.
           CurveNode('a') <= 'circle'          # from preset
           CurveNode('a') <= CurveNode('b')    # from another curve
        """
        self << crv
        self.uninstanceFromOthers()

    def __ge__(self, crv):
        """Copy shape to another
        e.g.
            CurveNode('a') >= CurveNode('b')    # copy to another
        """
        # if isinstance(crv, GroupNode):
        self >> crv
        crv.uninstanceFromOthers()

    def __lshift__(self, crv):
        """Instance shape from preset/another
        e.g.
           CurveNode('a') << 'circle'          # from preset
           CurveNode('a') << CurveNode('b')    # from another curve
        """
        typeName = type(crv).__name__

        if typeName == "str":  # preset name
            crvDictList = self.shape_getDictListFrLib(crv)
            crvObj = self.shape_buildFrDictList(crvDictList, crv)
            crvObj.copyShapeAsInst([self], keepSrc=0)

        elif typeName == "GroupNode":  # another curve
            crv.copyShapeAsInst([self])

        # self.color = self.getSideColor()

    def __rshift__(self, crv):
        """Copy shape to preset/another
        e.g.
            CurveNode('a') >> 'circle'          # save to preset
            CurveNode('a') >> CurveNode('b')    # copy to another
        """
        if isinstance(crv, str):
            crvDictList = self.shape_getDictListFrObj(self)
            self.shape_saveToLib(crvDictList, crv)

        # elif isinstance(crv, GroupNode):
        else:
            self.copyShapeAsInst([crv])

    def copyShapeAsInst(self, targets, keepSrc=1):
        """Copy shapes to all as instance
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
                        if target not in allTargets:
                            allTargets.append(target)
                else:
                    if target not in allTargets:
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

    @property
    def cvs(self):
        """Return all cvs"""
        return mc.ls(self + ".cv[*]", fl=1)

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
