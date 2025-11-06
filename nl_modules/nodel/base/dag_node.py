import logging
import re
import maya.cmds as mc
from collections import OrderedDict
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.utils import common, open_maya_api
from nl_modules.utils.color import Color


class DagNode(DepNode):
    """DAG Node Class
    e.g.
        n = DagNode('existing')
        n = DagNode('new', nodeType='transform')
    """

    COLOR_MID = (0.995, 0.8, 0.236)
    COLOR_LEFT = (0.36, 0.66, 1)
    COLOR_RIGHT = (0.710, 0.300, 0.300)

    def __init__(self, n, nodeType=None):
        """Initialize DagNode with node name and type."""
        self._dag = None

        super().__init__(n)
        if nodeType:
            self.create(nodeType)

    def __hash__(self):
        return hash(self.name)

    @property
    def node(self):
        return self._node

    @node.setter
    def node(self, n):
        """Assign node from API and return state"""
        self._dag = None
        if DepNode.node.fset(self, n):
            self._dag = open_maya_api.toMDagPath(self.node)
            return True
        return False

    @property
    def path(self):
        """Get path from API"""
        if self._dag:
            return self._dag.partialPathName()

        return DepNode.path.fget(self)

    @property
    def fullPath(self):
        """Get fullPath from API"""
        if self._dag:
            return self._dag.fullPathName()

        return DepNode.fullPath.fget(self)

    @property
    def shape(self):
        """Return first shape"""
        shapes = self.shapes
        if len(shapes):
            return shapes[0]

    @property
    def shapes(self):
        """Return all shapes"""
        if self.exists():
            return [DagNode(s) for s in mc.listRelatives(self, s=1, f=1, ni=1) or []]
        raise ValueError("No shapes for NONE object!")

    @property
    def shapesAll(self):
        """Return all shapes, including intermediate"""
        if self.exists():
            return [DagNode(s) for s in mc.listRelatives(self, s=1, f=1, ni=0) or []]
        raise ValueError("No shapes for NONE object!")

    def deleteItmShapes(self):
        """Delete related intermediate shapes"""
        allShapes = [s for s in mc.listRelatives(self, s=1, f=1, ni=0) or []]
        allIntShapes = [s for s in allShapes if s not in self.shapes]
        if allIntShapes:
            mc.delete(allIntShapes)

    def cstAim(self, tgt, keep=True, **kwargs):
        """Aim constraint tgt"""
        return self.cstBase(tgt, cstType="aim", keep=keep, **kwargs)

    def cstOri(self, tgt, keep=True, **kwargs):
        """Orient constraint tgt"""
        return self.cstBase(tgt, cstType="ori", keep=keep, **kwargs)

    def cstPoi(self, tgt, keep=True, **kwargs):
        """Point constraint tgt"""
        return self.cstBase(tgt, cstType="poi", keep=keep, **kwargs)

    def cstPar(self, tgt, keep=True, **kwargs):
        """Parent constraint tgt"""
        return self.cstBase(tgt, cstType="par", keep=keep, **kwargs)

    def cstParR(self, tgt, keep=True, **kwargs):
        """Parent constraint tgt to rotation"""
        return self.cstBase(tgt, cstType="parR", keep=keep, **kwargs)

    def cstParT(self, tgt, keep=True, **kwargs):
        """Parent constraint tgt to position"""
        return self.cstBase(tgt, cstType="parT", keep=keep, **kwargs)

    def cstSca(self, tgt, keep=True, **kwargs):
        """Scale constraint tgt"""
        return self.cstBase(tgt, cstType="sca", keep=keep, **kwargs)

    def cstParSca(self, tgt, keep=True, **kwargs):
        """Parent + Scale constraint tgt"""
        ret1 = self.cstBase(tgt, cstType="sca", keep=keep, **kwargs)
        ret2 = self.cstBase(tgt, cstType="par", keep=keep, **kwargs)
        return [ret1, ret2]

    def cstNml(self, tgt, keep=True, **kwargs):
        """Normal constraint tgt"""
        return self.cstBase(tgt, cstType="nml", keep=keep, **kwargs)

    def cstGeo(self, tgt, keep=True, **kwargs):
        """Geometry constraint tgt"""
        return self.cstBase(tgt, cstType="geo", keep=keep, **kwargs)

    def cstBase(self, tgt, cstType="poi", keep=True, **kwargs):
        """Create and return constraint based on cstType"""
        if isinstance(tgt, (tuple, list)):
            raise TypeError(f"Invalid input: {tgt}")
        if not mc.objExists(tgt):
            raise ValueError(f"Missing object: {tgt}")

        tgt = DagNode(tgt)
        n = f"{tgt.name}_{cstType}Cst"

        if cstType.startswith("par"):
            skipR = ["x", "y", "z"] if cstType == "parT" else []
            skipT = ["x", "y", "z"] if cstType == "parR" else []
            cst = common.CST_DICT[cstType](
                self, tgt, **kwargs, n=n, st=skipT, sr=skipR
            )[0]
        else:
            cst = common.CST_DICT[cstType](self, tgt, **kwargs, n=n)[0]

        if keep:
            return DagNode(cst)
        else:
            mc.delete(cst)

    def cstPvt(self, ikH, **kwargs):
        """PoleVector constraint tgt"""
        if isinstance(ikH, str):
            ikH = DagNode(ikH)
        n = mc.poleVectorConstraint(self, ikH, **kwargs, n=ikH.name + "_pvCst#")[0]
        if n:
            return DagNode(n)

    def removeCstNodes(self, driven=1):
        """Remove all constraints"""
        cstList = self.getCstNodes(driven=driven)
        if cstList:
            mc.delete(cstList)

    def getCstNodes(self, cstType=None, driven=1):
        """Return constraints
        driven
            1 => object being driven
            0 => object driving others
        """
        typ = cstType if cstType else ""
        cstNodes = mc.listConnections(self, s=driven, d=not driven, t=typ) or []
        CST_TYPE_LIST = common.getUniqueCstDictNames()

        result = []
        if cstNodes:
            for cstNode in list(OrderedDict.fromkeys(cstNodes)):
                cstNode = DagNode(cstNode)
                if cstNode.type in CST_TYPE_LIST:
                    result.append(cstNode)
        return result

    def getCstWeightAttr(self, cstType="pointConstraint"):
        """Return weight attrs of constraint node of cstType."""
        from nl_modules.nodel.base.attribute import Attribute

        cst = self.getCstNodes(cstType=cstType, driven=1)
        weightList = []
        if cst:
            for attr in mc.listAttr(cst[0], k=1, c=1) or []:
                if re.match(r"^.+W\d+$", attr):
                    weightList.append(Attribute(cst[0], attr))
        return weightList

    def getCstObjects(self, cstType=None):
        """Return constraint objects"""
        result = []
        cstNodes = self.getCstNodes(cstType=cstType, driven=1)
        if cstNodes:

            CST_TYPE_LIST = common.getUniqueCstDictNames()
            for cstNode in cstNodes:
                cstObjs = mc.listConnections(cstNode, s=1, d=0) or []
                for cstObj in cstObjs:
                    cstObj = DagNode(cstObj)
                    if (
                        cstObj not in result
                        and cstObj.type not in CST_TYPE_LIST
                        and self != cstObj
                    ):
                        result.append(cstObj)
        return result

    def _getDirectChildren(self):
        """Return direct children."""
        return [
            DagNode(c)
            for c in mc.listRelatives(self, c=1, f=1, ni=1, type="transform") or []
        ]

    def _getDescendants(self):
        """Return all children recursively (in correct order)."""
        result = []
        for child in self._getDirectChildren():
            result.append(child)
            if child._getDirectChildren():
                result.extend(child._getDescendants())
        return result

    def getChildren(self, nt="all", ad=0, incl=0, noShape=1):
        """Return children objects
        options
            nt:    nodeType
            ad:    all descendants
            incl:  including itself
        """
        result = []
        if ad == 0:
            for child in self._getDirectChildren() or []:
                result.append(DagNode(child))
        else:
            result = self._getDescendants()

        if incl:
            result.insert(0, self)

        if nt == "all":
            if noShape:
                return [n for n in result if mc.nodeType(n) in ["transform", "joint"]]
            else:
                return result
        else:
            return [n for n in result if (n.shape or n).type == nt]

    @property
    def children(self):
        """Return children"""
        return self.getChildren()

    @property
    def children2(self):
        """Return children including itself"""
        return self.getChildren(incl=1)

    @property
    def childrenJt(self):
        """Return children joints"""
        return self.getChildren(nt="joint")

    @property
    def childrenJt2(self):
        """Return children joints including itself"""
        return self.getChildren(nt="joint", incl=1)

    @property
    def allChildren(self):
        """Return all descendants, excluding shapes"""
        return self.getChildren(ad=1)

    @property
    def allChildren2(self):
        """Return all descendants including itself"""
        return self.getChildren(ad=1, incl=1)

    @property
    def allChildrenJt(self):
        """Return all joint descendants"""
        return self.getChildren(nt="joint", ad=1)

    @property
    def allChildrenJt2(self):
        """Return all joint descendants including itself"""
        return self.getChildren(nt="joint", ad=1, incl=1)

    @property
    def parent(self):
        """Return parent"""
        parent = mc.listRelatives(self, p=1, f=1)
        if parent:
            return DagNode(parent[0])

    @property
    def offset(self):
        """Return parent"""
        return self.parent

    def parentTo(self, target, reset=0, ofs=None):
        """Parent to target
        options:
            reset:  reset xform
            offset: set offset
        """
        if mc.objExists(target):
            mc.parent(self, target)
            if reset:
                mc.makeIdentity(self)
            if ofs:
                self.a.t.set(*ofs)

    def parentToWorld(self):
        """Parent itself to world"""
        if self.parent:
            mc.parent(self, w=1)

    @property
    def allParents(self):
        """Return all parents"""
        parents = []
        parent = self.parent
        while parent:
            parents.append(parent)
            parent = parent.parent
        return parents

    def __or__(self, parent):
        """Parent itself to parent
        e.g.
            obj1 | obj2
        """
        if self in parent.allParents:
            raise RuntimeError(f"Can not parent as {self.name} is above {parent.name}")

        mc.parent(self, parent)
        return parent

    def __ror__(self, children):
        """Parent children to itself
        e.g.
            (obj1, obj2) | obj3
        """
        if isinstance(children, (list, tuple)):
            [mc.parent(child, self) for child in children]
        else:
            if children in self.allParents:
                raise RuntimeError(
                    f"Can not parent as {children.name} is above {self.name}"
                )
            else:
                mc.parent(children, self)
        return self

    @property
    def order(self):
        """Return order among children (0-indexed)"""
        return self.parent.children.index(self)

    @order.setter
    def order(self, index):
        """Set order among children (0-indexed)"""
        mc.reorder(self.name, r=index)

    def zeroize(self, below=False, relink=True, alignParent=False, snapIt=False):
        """Add offset group above or below target
        options
            below:        added below selList
            relink:       parent direct children to the offset group
            alignParent:  align the offset group to target's parent instead of target

        e.g.
            zeroize('cube')           returns: cube_ofs1
            zeroize('cube', below=1)  returns: cube_ofs1
        """
        name = self + "_ofs"
        if mc.objExists(name):
            name += "#"

        grp = mc.group(em=1, n=name)

        if not below:
            currParent = mc.listRelatives(self, p=1, f=1) or []
            if currParent and alignParent:
                common.matchMove([grp, currParent])
                if snapIt:
                    common.matchMove([grp, self], mode="t")
            else:
                common.matchMove([grp, self])
            mc.parent(self, grp)

            if currParent:
                mc.parent(grp, currParent[0])
        else:
            currChildren = mc.listRelatives(self, c=1, f=1, type="transform") or []
            common.matchMove([grp, self])
            mc.parent(grp, self)

            if currChildren and relink:
                [mc.parent(c, grp) for c in currChildren]

        return DagNode(grp)

    def addOffsetGrp(self, count=1, below=0, relink=1, alignParent=0, snapIt=0):
        """Add offset group"""
        resultGrps = []
        i = 0
        target = self
        while i < count:
            returnGrp = target.zeroize(
                below=below, relink=relink, alignParent=alignParent, snapIt=snapIt
            )
            target = returnGrp
            resultGrps.append(returnGrp)
            i += 1

        if len(resultGrps) == 1:
            return resultGrps[0]
        else:
            return resultGrps

    def alignTo(self, obj, ofs=None, ofsR=None, rotateOnly=0, p=None, addOfs=0):
        """Align to obj"""
        obj = DagNode(obj) if isinstance(obj, str) else obj
        if rotateOnly:
            common.matchMove([self, obj], mode="r")
        else:
            common.matchMove([self, obj])
        if p:
            mc.parent(self, p)
        if ofsR:
            mc.rotate(*ofsR, self, objectSpace=1, r=1)
        if ofs:
            mc.move(*ofs, self, objectSpace=1, r=1)
        if addOfs:
            self.addOffsetGrp()

    def snapTo(self, obj, ofs=None, p=None, addOfs=0):
        """Snap to obj"""
        obj = DagNode(obj) if isinstance(obj, str) else obj
        common.matchMove([self, obj], mode="t")
        if p:
            mc.parent(self, p)
        if ofs:
            mc.move(*ofs, self, objectSpace=1, r=1)
        if addOfs:
            self.addOffsetGrp()

    def alignHere(self, objs):
        """Align objects to itself"""
        objsList = objs if type(objs) == "list" else [objs]
        common.matchMove([DagNode(obj) for obj in objsList] + [self])

    def snapAlignTo(self, obj1, obj2, ofs=None, p=None):
        """Snap to obj1, align to obj2"""
        obj1 = DagNode(obj1) if isinstance(obj1, str) else obj1
        obj2 = DagNode(obj2) if isinstance(obj2, str) else obj2
        common.matchMove([self, obj2], mode="r")
        common.matchMove([self, obj1], mode="t")
        if p:
            mc.parent(self, p)
        if ofs:
            mc.move(*ofs, self, objectSpace=1, r=1)

    def freezeXf(self, t=1, r=1, s=1):
        """Freeze object transform"""
        mc.makeIdentity(self, t=t, r=r, s=s, a=1)

    def resetXf(self, t=1, r=1, s=1):
        """Reset object transform"""
        if t:
            self.a.t.set(0, 0, 0)
        if r:
            self.a.r.set(0, 0, 0)
        if s:
            self.a.s.set(1, 1, 1)
        # mc.makeIdentity(self, t=t, r=r, s=s)

    def duplicate(self, name=None, p=None, **kwargs):
        """Duplicate itself"""
        from nl_modules.nodel.base.dag_node import DagNode
        from nl_modules.nodel.jnt_node import JntNode
        from nl_modules.nodel.grp_node import GrpNode
        from nl_modules.nodel.loc_node import LocNode
        from nl_modules.nodel.msh_node import MshNode
        from nl_modules.nodel.crv_node import CrvNode
        from nl_modules.nodel.srf_node import SrfNode

        if not self.exists():
            raise ValueError("Can not duplicate None !")

        classObj = eval(self.__class__.__name__)
        if classObj:
            node = classObj(mc.duplicate(self, **kwargs)[0])
            if p:
                mc.parent(node, p)
            if name:
                node.rename(name)
            return node
        else:
            logging.info("Unknown object type to duplicate !")

    def set_LRA(self, state=1):
        """Show/hide display local axis"""
        attr = self.a.displayLocalAxis
        if attr.exists():
            attr.set(state)

    def lockHideAttr(self, attrsList, lock=1):
        """Lock and hide attribute
        e.g.
            obj1.lockHideAttr(['tx','rx'])
            obj1.lockHideAttr(['myAttr'])
        """
        for attr in attrsList:
            try:
                mc.setAttr(self + "." + attr, lock=lock, k=not lock)
            except Exception as e:
                raise AttributeError(f"Fail to set attribute for {attr}: {e}")

    def lockHideAttrXf(self, chn="t", lock=True):
        """Lock and hide transform attribute
        e.g.
            obj1.lockHideAttr(chn='r')  # 't'/'r'/'s'
            obj1.lockHideAttr(chn='all')
        """
        if chn == "all":
            self.lockHideAttr(
                ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz", "v"], lock=lock
            )
        else:
            self.lockHideAttr([f"{chn}x", f"{chn}y", f"{chn}z"], lock=lock)

    def show(self):
        """Show itself"""
        if self.exists():
            mc.showHidden(self)

    def hide(self):
        """Hide itself"""
        if self.exists():
            mc.hide(self)

    @property
    def color(self):
        """Return color"""

        return Color.getColor(self)

    @color.setter
    def color(self, v):
        """Set color"""
        Color.setColor(self, v)

    @property
    def dspType(self):
        """Return display type of shape, or itself"""

        tgt = self.shape or self
        return tgt.a.overrideDisplayType.get()

    @dspType.setter
    def dspType(self, state):
        """Set display type of shape or itself"""
        tgt = self.shape or self

        # Change layer's display type if connected
        # Else change object's display type
        lyr = tgt.a.drawOverride.inConnNode
        if lyr and lyr.exists():
            lyr.a.displayType.set(state)
        else:
            tgt.a.overrideEnabled.set(1)
            tgt.a.overrideDisplayType.set(state)

    @property
    def history(self):
        """Return history"""
        if self.exists():
            return [DagNode(obj) for obj in mc.listHistory(self)]
        return []

    def deleteHistory(self):
        """Delete history"""
        if self.exists():
            mc.delete(self, ch=1)

    def selectEffector(self):
        """Select IK from effector"""
        if self.type == "ikEffector":
            mc.select(self.a.handlePath.outConnNode)

    def setMsg(self, msgDict):
        """Add message attributes to tgt
        e.g.
            self.setMsg( { 'upr':upr, 'lwr':lwr, } )
            self.setMsg( { 'upr':upr, 'lwr':lwr, } )
        """
        for name, obj in msgDict.items():
            attr = self.a.add(name, type="message")
            obj = DagNode(obj)
            if obj.exists():
                obj.a.message >> attr

    def getMsgOutput(self):
        """Return objects connected to its message attr
        e.g.
            moduleG.getMsgNodes()  # [DagNode('lfLeg0_RGN')]
        """
        nodes = mc.listConnections(self.a.message, s=0, d=1, scn=1)
        return [DagNode(n) for n in nodes]

    def getClosestInList(self, objList):
        """Return the closest object in list"""
        minD = float("inf")
        closest = None
        for obj in objList:
            d = self.o.distanceTo(obj)
            if d < minD:
                closest = obj
                minD = d
        if closest:
            return DagNode(closest)

    @property
    def type(self):
        """Return type of shape or itself"""
        if self.exists():
            return mc.nodeType(self.shape or self)

    def scale(self, *args, **kwargs):
        """Scale the node"""
        if len(args) == 1:
            mc.scale(args[0], args[0], args[0], self, **kwargs)
        else:
            mc.scale(*args, self, **kwargs)

    def get_side_color(self):
        """Return color depending on side"""
        color = self.COLOR_MID
        n = str(self.node)
        if n.startswith("lf"):
            color = self.COLOR_LEFT
        elif n.startswith("rt"):
            color = self.COLOR_RIGHT
        return color

    def getMtx(self):
        """Get matrix from the node"""
        return mc.xform(self, q=1, m=1, ws=1)

    def setMtx(self, mtx):
        """Set matrix to the node"""
        mc.xform(self, m=mtx, ws=1)
