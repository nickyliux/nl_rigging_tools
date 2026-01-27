import logging
import os
import maya.cmds as mc
import nl_modules as nl_modules
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import file
from nl_modules.utils import open_maya_api

MOD_DIR = os.path.dirname(nl_modules.__file__)
SHAPE_PATH = MOD_DIR + "/build/shapes"


class GrpNode(DagNode):
    """Group node class for creating transform or joint nodes with additional functionalities"""

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
            logging.info("Fail to create group for none.")
            return
        if str(pf) and str(pf)[-1] != "_":
            pf += "_"
        name = pf + node + sf

        if name:
            super().__init__(name)
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
        """Create a new node of the specified type with optional parameters"""
        self.node = mc.createNode(nodeType, n=node)
        if p:
            self.parentTo(p)
        if align:
            self.alignTo(align)
        if alignR:
            self.alignTo(alignR, rotateOnly=1)
        if snap:
            self.snapTo(snap)
        if addOfs:
            self.addOffsetGrp()
        if nodeType == "joint" and radius != None:
            self.a.radius.set(radius)
        return self

    def cv_move(self, *args, **kwargs):
        """Move all cvs of the curve"""
        kwargs = kwargs or {"r": 1}
        mc.move(*args, self.cvs, os=1, **kwargs)

    def cv_moveTo(self, pos):
        """Move all cvs of the curve to the specified position"""
        if isinstance(pos, (tuple, list)):
            wsPos = self.o.pos
            vec = (pos[0] - wsPos[0], pos[1] - wsPos[1], pos[2] - wsPos[2])
            mc.xform(self.cvs, r=1, t=vec, ws=1)

    def cv_drop(self):
        """Drop all cvs of the curve to the ground"""
        self.cv_move(0, -self.o.bb0[1], 0)

    def cv_rotate(self, *args, **kwargs):
        """Rotate all cvs of the curve"""
        kwargs = kwargs or {"r": 1}
        if len(args) == 1:
            mc.rotate(args[0], 0, 0, self.cvs, **kwargs)
        else:
            mc.rotate(*args, self.cvs, **kwargs)

    def setLineWidth(self, *args, **kwargs):
        self.width = args[0]

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
            self.deleteHistory()
            mc.select(self)
        else:
            if len(args) == 1:
                mc.scale(args[0], args[0], args[0], self.cvs, **kwargs)
            else:
                mc.scale(*args, self.cvs, **kwargs)

    def add_gimbal(self, attrTgt=None, dv=0):
        """Add a gimbal control to the curve"""
        from nl_modules.nodel.crv_node import CrvNode

        gmb_ctl = CrvNode(
            self.node + "_gmb",
            shape="locator",
            align=self,
            p=self,
            scale=self.o.diagonal2 * 1.5,
            top=1,
        )
        attrTgt = attrTgt or self
        attr = attrTgt.a.add("showGimbal", type="bool", dv=dv, k=0)
        gmb_ctl.a.add("showGimbal", proxy=attr, k=0)
        attr >> gmb_ctl.a.v

        return gmb_ctl

    def shape_saveToLib(self, dictList, name):
        """Save the shape to a JSON file in the library"""
        f = f"{SHAPE_PATH}/{name}.json"

        file.saveJson(f, dictList, force=True)
        logging.info(f"Saved to {f}.")

    def shape_getDictListFrLib(self, name):
        """Get the shape dictionary list from the library by name"""
        f = f"{SHAPE_PATH}/{name}.json"
        return file.loadJson(f)

    def shape_getDictListFrObj(self, crv):
        """Get the shape dictionary list from the curve object"""
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
        """Build curves from a list of dictionaries and return a group node"""
        xf = xf or mc.createNode("transform", n=name)

        for i, crvShapeDict in enumerate(dictList):
            tmp = GrpNode(
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
        return GrpNode(xf)

    # def __le__(self, crv):
    #     """Copy shape from preset/another
    #     e.g.
    #        CrvNode('a') <= 'circle'          # from preset
    #        CrvNode('a') <= CrvNode('b')    # from another curve
    #     """
    #     self << crv
    #     self.break_instance()

    # def __ge__(self, crv):
    #     """Copy shape to another
    #     e.g.
    #         CrvNode('a') >= CrvNode('b')    # copy to another
    #     """
    #     self >> crv
    #     crv.break_instance()

    def __lshift__(self, crv):
        """Instance shape from preset/another
        e.g.
           CrvNode('a') << 'circle'        # load from preset
           CrvNode('a') << CrvNode('b')    # load from another curve
        """
        if isinstance(crv, str):
            crvDictList = self.shape_getDictListFrLib(crv)
            crvObj = self.shape_buildFrDictList(crvDictList, crv)
            crvObj.copy_shape_as_inst([self], keepSrc=0)
        else:
            crv.copy_shape_as_inst([self])

    def __rshift__(self, crv):
        """Copy shape to preset/another
        e.g.
            CrvNode('a') >> 'circle'        # save to preset
            CrvNode('a') >> CrvNode('b')    # copy to another curve
        """
        if isinstance(crv, str):
            crvDictList = self.shape_getDictListFrObj(self)
            self.shape_saveToLib(crvDictList, crv)
        else:
            self.copy_shape_as_inst([crv])

    def copy_shape_as_inst(self, targets, keepSrc=1):
        """Copy shapes to all as instance"""
        if not isinstance(targets, list):
            logging.error("Targets must be a list of node names")
            return

        tgtXforms = []
        first = DagNode(targets[0])
        self.color = first.color
        lineWidth = first.shape.a.lineWidth.get()
        onTop = first.shape.a.alwaysDrawOnTop.get()

        for tgt in targets:
            tgt = DagNode(tgt)
            tgtShapes = tgt.shapes

            if tgtShapes:
                for sh in self.shapes:
                    sh.a.lineWidth.set(lineWidth)
                    sh.a.alwaysDrawOnTop.set(onTop)

                allXf = mc.listRelatives(tgtShapes, ap=1)
                allXf = [DagNode(x) for x in list(set(allXf))]

                if len(allXf) > 1:
                    [tgtXforms.append(xf) for xf in allXf if xf not in tgtXforms]
                else:
                    if tgt not in tgtXforms:
                        tgtXforms.append(tgt)
            else:
                if tgt not in tgtXforms:
                    tgtXforms.append(tgt)

        # Remove each shapes and add self's
        for xform in tgtXforms:
            [sh.delete() for sh in xform.shapes]
            mc.parent(self.shapes, xform, r=1, s=1, add=1)

        for sh in self.shapes:
            sh.rename(xform + "Shape")

        if not keepSrc:
            self.delete()

    def break_instance(self):
        """Un-instance all instances of this shape"""
        logging.info(f"Break all instances.")

        selfShapes = self.shapes

        if selfShapes is None:
            logging.warning(f"No shapes found for {self}")
            return []

        # Get all xform of instances
        allXf = mc.listRelatives(selfShapes, ap=1)
        allXf = [DagNode(x) for x in list(set(allXf))]

        if len(allXf) < 2:
            logging.warning(f"No instance found for {self}")
            return []

        # Create a non-instanced source of shape
        tmpGrp = GrpNode("grp_#")
        mc.parent(selfShapes, tmpGrp, s=1, r=1, add=1)
        tmpDup = tmpGrp.duplicate(rc=1)
        mc.delete(tmpGrp, selfShapes)

        # Add duplicated shapes to all instance transform
        for xf in allXf:
            dup = tmpDup.duplicate(rc=1)
            mc.parent(dup.shapes, xf, s=1, r=1)
            [sh.rename(xf + "Shape") for sh in xf.shapes]
            mc.delete(dup)

        tmpDup.delete()

    @property
    def cvs(self):
        """Return all cvs of the curve"""
        return mc.ls(self + ".cv[*]", fl=1)

    @property
    def width(self):
        """Return the line width of the shape"""
        if self.shape:
            return self.shape.a.lineWidth
        else:
            return -1

    @width.setter
    def width(self, w):
        """Set the line width of the shape"""
        if self.shapes:
            for s in self.shapes:
                s.a.lineWidth.set(w)

    def add_attr_as_proxy(self, src=None):
        """Add proxy attributes from source node"""
        if src and src.exists():
            attrs = src.a.list(ud=1, u=1)
            for attr in attrs:
                attrStr = attr.name
                if not attrStr.startswith("_"):
                    self.a.add(attrStr, proxy=attr)

    def mirrorWeight(self, sym=1):
        """Mirror skin weights symmetrically"""
        if self.skinCluster.exists():
            influenceAssociation = "oneToOne" if sym else "closestJoint"
            mc.copySkinWeights(
                ss=self.skinCluster.name,
                ds=self.skinCluster.name,
                mirrorMode="YZ",
                surfaceAssociation="closestPoint",
                influenceAssociation=influenceAssociation,
                smooth=1,
                normalize=1,
            )

    def weightTo(self, joints, **kwargs):
        """Apply skin weights to the mesh"""
        if self.exists():
            mc.skinCluster(self, joints, **kwargs)

    def softWeightTo(self, joints, rui=0, mi=3, tsb=1, dr=2, **kwargs):
        """Apply soft skin weights to the mesh"""
        self.weightTo(joints, rui=rui, mi=mi, tsb=tsb, dr=dr, **kwargs)

    def hardWeightTo(self, joints):
        """Apply hard skin weights to the mesh"""
        self.weightTo(joints, rui=0, mi=1, tsb=1, dr=0.1)

    def copyWeightsTo(self, items):
        """Copy skin weights from this mesh to other meshes"""
        if self.skinCluster.exists():
            items = items if isinstance(items, (list, tuple)) else [items]
            for item in [GrpNode(i) for i in items]:
                if item.skinCluster:
                    item.skinCluster.delete()

                item.hardWeightTo(self.joints)
                mc.copySkinWeights(
                    ss=self.skinCluster.name,
                    ds=item.skinCluster.name,
                    noMirror=1,
                    surfaceAssociation="closestPoint",
                    influenceAssociation="oneToOne",
                )

    def copyWeightsFr(self, item):
        """Copy skin weights from another mesh to this mesh"""
        self.__class__(item).copyWeightsTo(self)

    @property
    def joints(self):
        """Return the joints connected to the skinCluster of the mesh"""
        from nl_modules.nodel.jnt_node import JntNode

        if self.skinCluster.exists():
            return [JntNode(i) for i in mc.skinCluster(self.skinCluster, q=1, inf=1)]

    def deleteTweaks(self):
        """Delete all tweak nodes connected to the mesh"""
        if self.exists():
            tweaks = list(
                set([i.name for i in self.history if mc.nodeType(i.name) == "tweak"])
            )
            if tweaks:
                mc.delete(tweaks)
