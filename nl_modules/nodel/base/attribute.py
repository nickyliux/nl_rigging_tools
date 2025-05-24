import maya.cmds as mc
from nl_modules.utils import path
import logging


class Attribute:
    """Attribute Node Class
    e.g.
        n = Attribute('obj1', 'tx')
        n = Attribute('obj1', 't')
    """

    def __init__(self, node, attr):
        from nl_modules.nodel.base.dag_node import DagNode

        if isinstance(node, str):
            node = DagNode(node)

        if node.exists():
            self.node = node
            self._attr = attr

    def __str__(self):
        """e.g. '|obj1.rx'"""
        if self.fullPath:
            return self.fullPath
        # else:
        #     ''
        #     raise ValueError('Invalid Attr')

    def __repr__(self):
        """e.g. 'Attribute("obj1.rx")'"""
        return path.genReprStr(
            self.__class__.__name__,
            self.fullPath,
        )

    @property
    def path(self):
        """Return path
        e.g. 'obj1.rx'
        """
        attrPath = f"{self.node.path}.{self.name}"
        if self.node.path and mc.objExists(attrPath):
            return attrPath

    @property
    def fullPath(self):
        """Return full path
        e.g. '|obj1.rx'
        """
        attrPath = f"{self.node.fullPath}.{self.name}"
        if self.node.fullPath and mc.objExists(attrPath):
            return attrPath

    @property
    def name(self):
        """Return attribute
        e.g. 'rx'
        """
        return self._attr

    def exists(self):
        """Check attribute existence"""
        return bool(self.fullPath and mc.objExists(self))

    def settable(self):
        """Check attribute settable"""
        return bool(self.fullPath and mc.getAttr(self, se=1))

    def reset(self):
        """Reset to default value"""
        dv = mc.attributeQuery(self.name, node=self.node, listDefault=1)
        mc.setAttr(self, *dv)

    @property
    def lock(self):
        """Return if locked"""
        return mc.getAttr(self, l=1)

    @lock.setter
    def lock(self, state):
        """Lock attribute
        e.g.
            obj1.a.tx.lock()
            obj1.a.t.lock()
        """
        mc.setAttr(self, l=state)

    def set(self, *args, **kwargs):
        """Set attribute value
        e.g.
            obj1.a.tx.set(8)    # tx = 8
            obj1.a.t.set(1,2,3) # t = (1,2,3)
        """
        # if self.get(se=1):
        #     mc.setAttr(self, *args, **kwargs)

        objType = self.node.type
        if (
            objType == "locator"
            or objType == "nurbsCurve"
            and (args and isinstance(args, (tuple, list)))
        ):
            attrs = self.atChildren if self.isParent() else [self]
            for i, attr in enumerate(attrs):
                if attr.get(se=1):
                    mc.setAttr(attr, args[i], **kwargs)
        else:
            if self.get(se=1):
                mc.setAttr(self, *args, **kwargs)

    def set2(self, val, add=0, mul=0, **kwargs):
        """Set attribute value with extra options
        e.g.
            obj1.a.tx.set2(8)           # tx = 8
            obj1.a.t.set2(8)            # tx=8, ty=8, tz=8
            obj1.a.t.set2(8, add=1)     # t *= 8
            obj1.a.t.set2(1,2,3, add=1) # t += (1,2,3)
        """
        if self.get(se=1):
            attrs = self.atChildren if self.isParent() else [self]
            for attr in attrs:
                orig = mc.getAttr(attr)
                newVal = val
                if add == 1:
                    newVal += orig
                elif mul == 1:
                    newVal *= orig
                mc.setAttr(attr, newVal, **kwargs)

    def get(self, **kwargs):
        """Get attribute value
        e.g.
            obj1.a.tx.get()  # 5
            obj1.a.t.get()   # (3,4,5)
        """
        if self.exists():
            result = mc.getAttr(self, **kwargs)
            # default result of mc.getAttr('sphere.t') is like [(3,4,5)]
            # so if the result is a list, return [0]
            if isinstance(result, list):
                return result[0]
            else:
                return result
        else:
            raise NameError(f'Attribute "{self.name}" NOT found')

    def query(self, **kwargs):
        """Query attribute data
        e.g.
            obj1.a.t.query(listChildren=1)  # tx, ty, tz
        """
        return mc.attributeQuery(self.name, node=self.node, **kwargs)

    def delete(self):
        """Delete attribute
        e.g
            obj1.a.myAttr.delete()
        """
        if self.exists():
            mc.deleteAttr(self)

    # def showAttr(self, lock=False):
    #     """lock attribute"""
    #     tgtAttrs = self.atChildren or [self]
    #     [mc.setAttr(tgtAttr, lock=lock, k=not lock) for tgtAttr in tgtAttrs]

    def connect(self, other):
        """Connect two attributes, return itself
        e.g.
            obj1.a.ry -> obj2.a.ry    # ry -> ry
            obj1.a.r  -> obj2.a.r     # rx->rx, ry->ry, rz->rz
            obj1.a.ry -> obj2.a.r     # ry->rx, ry->ry, ry->rz
            obj1.a.r  -> obj2.a.ry    # rx -> ry
                                       (rx is the 1st child)
        """
        if other.__class__ != Attribute:
            logging.error(f"Error: {self.name} >> {other.name}")
            return

        if mc.isConnected(self, other, iuc=1):
            return self

        # try:
        driverList = self.atChildren or [self, self, self]
        drivenList = other.atChildren or [other]

        for driver, driven in zip(driverList, drivenList):
            if not mc.isConnected(driver, driven, iuc=1):
                mc.connectAttr(driver, driven, f=1)
        # except (RuntimeError, AttributeError):
        #     mc.connectAttr(self, other, f=1)

        return self

    def disconnect(self):
        """Delete connections driving the attribute
        e.g.
            obj.a.r.disconnect()
            obj.a.tx.disconnect()
        """
        bAttrs = [self]
        if self.atChildren:
            bAttrs += self.atChildren

        for bAttr in bAttrs:
            aAttrs = mc.listConnections(bAttr, s=1, p=1, scn=1) or []

            for aAttr in aAttrs:
                if mc.isConnected(aAttr, bAttr, iuc=1):
                    mc.disconnectAttr(aAttr, bAttr)

    @property
    def inConnAttr(self):
        """Return input connected attributes (single listed result as list)"""
        return self.getConnAttr(input=1)

    @property
    def outConnAttr(self):
        """Return output connected attributes (single listed result as list)"""
        return self.getConnAttr(input=0)

    def getConnAttr(self, input=1):
        """Return connected attributes, from input/output
        e.g.
            obj2.a.asdf.getConnAttr() # []
            obj2.a.rx.getConnAttr()   # [Attribute('obj1.rx')]
            obj2.a.r.getConnAttr()    # [Attribute('obj1.rx'), Attribute('obj2.ry')]
        """
        from nl_modules.nodel.base.dag_node import DagNode

        if not self.exists():
            return []

        result = []
        tgtAttrs = [self]
        if self.atChildren:
            tgtAttrs += self.atChildren

        for tgt in tgtAttrs:
            srcAttrs = mc.listConnections(tgt, p=1, s=input, d=not input, scn=1) or []

            for src in srcAttrs:
                parts = src.split(".")
                node = DagNode(parts[0])
                if node.exists():
                    attr = Attribute(node, parts[-1])
                    if attr.exists():
                        result.append(attr)
        return result

    @property
    def inConnNode(self):
        """Return input connected nodes (single listed result as single)"""
        nodes = self.getConnNodes(input=1)
        if len(nodes) == 1:
            return nodes[0]
        elif len(nodes) > 1:
            return nodes

    @property
    def outConnNode(self):
        """Return output connected nodes (single listed result as list)"""
        return self.getConnNodes(input=0)

    def getConnNodes(self, input=1):
        """Return connected nodes, from input/output
        e.g.
            obj2.a.qwer.getConnNodes() # []
            obj2.a.rx.getConnNodes()   # [DagNode('obj1')]
            obj2.a.r.getConnNodes()    # [DagNode('obj0'), DagNode('obj1')]
        """
        from nl_modules.nodel.joint_node import JointNode
        from nl_modules.nodel.curve_node import CurveNode
        from nl_modules.nodel.loc_node import LocNode
        from nl_modules.nodel.base.dag_node import DagNode

        collected = []
        if not self.exists():
            return []

        connAttrSrc = self.inConnAttr if input == 1 else self.outConnAttr
        for attrN in connAttrSrc:
            n = attrN.node
            if n not in collected and n != self.node:
                collected.append(n)

        return collected

    def __lshift__(self, other):
        """Connect other to itself, return itself
        e.g.
            obj1.a.tz << obj2.a.tz
            obj1.a.tz << 12
        """
        other.connect(self)
        return self

    def __rshift__(self, other):
        """Connect itself to other, return other
        e.g.
            obj1.a.tz >> obj2.a.tz
            obj1.a.t >> obj2.a.t
        """
        self.connect(other)
        return other

    def __rrshift__(self, val):
        """Assign other to itself, return itself
        e.g
            8 >> add__1.a.input1D        # add__1.a.input1D[last] = 8
            8 >> add__1.a.input3D        # add__1.a.input3D[last] = (8,8,8)
            (1,2,3) >> add__1.a.input3D  # add__1.a.input3D[last] = (1,2,3)
            (1,2,3) >> obj1.a.ty         # ValueError
        """
        if isinstance(val, (int, float, tuple, list)):
            plug = self

            if self.query(multi=1):
                index = mc.getAttr(self, size=1)
                chn = f"{self.name}[{index}]"
                plug = self.node.a[chn]

            if isinstance(val, (int, float)):
                if self.isVector():
                    plug.set(val, val, val)
                else:
                    plug.set(val)
            else:
                if self.isVector():
                    plug.set(*val)
                else:
                    raise ValueError(f"Assign Vector to {self}")
            return self

    def __eq__(self, other):
        """Return result of self == other
        e.g.
            output = obj1.a.tz == obj2.a.tz
        """
        from nl_modules.nodel.base.condition import Condition

        return Condition("eq_cdn_#", self, other, 0).a.outColor

    def __ne__(self, other):
        """Return result of self != other
        e.g.
            output = obj1.a.tz != obj2.a.tz
        """
        from nl_modules.nodel.base.condition import Condition

        return Condition("ne_cdn_#", self, other, 1).a.outColor

    def __gt__(self, other):
        """Return result of self > other
        e.g.
            output = obj1.a.tz > obj2.a.tz
        """
        from nl_modules.nodel.base.condition import Condition

        return Condition("gt_cdn_#", self, other, 2).a.outColor

    def __ge__(self, other):
        """Return result of self >= other
        e.g.
            output = obj1.a.tz >= obj2.a.tz
        """
        from nl_modules.nodel.base.condition import Condition

        return Condition("ge_cdn_#", self, other, 3).a.outColor

    def __lt__(self, other):
        """Return result of self < other
        e.g.
            output = obj1.a.tz < obj2.a.tz
        """
        from nl_modules.nodel.base.condition import Condition

        return Condition("lt_cdn_#", self, other, 4).a.outColor

    def __le__(self, other):
        """Return result of self <= other
        e.g.
            output = obj1.a.tz <= obj2.a.tz
        """
        from nl_modules.nodel.base.condition import Condition

        return Condition("le_cdn_#", self, other, 5).a.outColor

    def setCdn(self, **kwargs):
        """Call setCdn method in attribute's node (Condition)
        e.g.
            output = (obj1.a.tz > obj2.a.tz).setCdn(ifTrue=1, ifFalse=0)
        """
        return self.node.setCdn(**kwargs)

    @property
    def atParent(self):
        """Return attribute parent
        e.g.
            obj.a.rz.atParent  # obj.a.r
        """
        parentAttr = self.query(listParent=1)
        if parentAttr:
            return self.node.a[parentAttr[0]]
        else:
            return []

    @property
    def atChildren(self):
        """Return attribute children
        e.g.
            plusMinusAverage1.a.input1D.atChildren  # input1D[0]
            plusMinusAverage1.a.input3D.atChildren  # [input3Dx[0], input3Dy[0], input3Dz[0]]
            obj.a.r.atChildren                      # [obj.a.rx, obj.a.ry, obj.a.rz]
            obj.a.rx.atChildren                     # None
        """
        if self.query(multi=1):  # indexMatter=1
            indexInUsed = mc.getAttr(self, multiIndices=1)
            index = len(indexInUsed) if indexInUsed else 0

            indexedAttr = f"{self.name}[{index}]"
            childAttr = self.query(listChildren=1)
            if childAttr:
                return [self.node.a[indexedAttr + "." + a] for a in childAttr]
            else:
                return [self.node.a[indexedAttr]]
        else:
            childAttr = self.query(listChildren=1)
            return [self.node.a[attr] for attr in childAttr or []]

    def isVector(self):
        """Check attribute 1D or 2D/3D
        e.g.
            obj1.a.t.isVector()                    # True
            plusMinusAverage1.a.input3D.isVector() # True
        """
        return bool(self.query(listChildren=1))

    def isParent(self):
        """Check if parent attribute
        e.g.
            obj1.a.t.isParent()                    # True
            plusMinusAverage1.a.input1D.isParent() # True
        """
        return bool(self.atChildren)

    def isChild(self):
        """Check if children attribute
        e.g.
            obj1.a.tx.isChild()                    # True
        """
        return bool(self.atParent)

    def bothParent(self, other):
        """Check if both are both parent"""
        return bool(
            other.__class__.__name__ == "Attribute"
            and self.isParent()
            and other.isParent()
        )

    def bothChildren(self, other):
        """Check if both are both children"""
        return bool(
            other.__class__.__name__ == "Attribute"
            and self.isChild()
            and other.isChild()
        )

    @staticmethod
    def genNodeName(nodeType, op):
        """Generate node name from nodeType & operation index
        e.g.
            genNodeName('plusMinusAverage', 0|1|2)  # add__1, sub__1, ave__1
            genNodeName('multiplyDivide', 0|1|2)    # mul__1, div__1, pow__1
        """
        nameDict = {
            "plusMinusAverage": {"OP": ["", "add", "sub", "ave"], "SUFFIX": "pma"},
            "multiplyDivide": {"OP": ["", "mul", "div", "pow"], "SUFFIX": "mdv"},
        }
        op = nameDict[nodeType]["OP"][op]
        return f"{op}__#"

    def additionNode(self, other, opType=1, rev=0):
        """Add/Subtract/Average two attributes, return output attribute"""
        is3D = self.bothParent(other) or isinstance(other, (tuple, list))

        if is3D or opType > 1:
            return self._PMAnode(other, opType=opType, rev=rev)
        else:  # 1D to 1D
            return self._ADLnode(other, rev=rev)

    def _PMAnode(self, other, opType=1, rev=0):
        """Calculate with plusMinusAverage node, return output attribute
        e.g.
            obj1.a.tz + (3,4,5)   =>  (tz,tz,tz) + (3,4,5)
            obj1.a.t  + (3,4,5)   =>  (tx,ty,tz) + (3,4,5)
            obj1.a.tz + 8         =>  tz + 8
            obj1.a.tz + obj2.a.t  =>  tz + tx (1st child)
            obj1.a.t  + obj2.a.tz =>  (tx,ty,tz) + (tz,tz,tz)
        """
        from nl_modules.nodel.base.dep_node import DepNode

        nodeType = "plusMinusAverage"
        node = DepNode(self.genNodeName(nodeType, opType), nodeType)
        node.a.operation.set(opType)

        is3D = self.bothParent(other) or isinstance(other, (tuple, list))
        inPlug = "input3D" if is3D else "input1D"
        outPlug = "output3D" if is3D else "output1D"

        if rev:
            other >> node.a[inPlug]
            self >> node.a[inPlug]
        else:
            self >> node.a[inPlug]
            other >> node.a[inPlug]

        return node.a[outPlug]

    def multiplyNode(self, other, opType=1, rev=0):
        """Multiply/Divide/Power two attributes, return output attribute"""
        is3D = self.bothParent(other) or isinstance(other, (tuple, list))

        if is3D or opType > 1:
            return self._MDVnode(other, opType=opType, rev=rev)
        else:  # 1D to 1D
            return self._MDLnode(other, rev=rev)

    def _MDVnode(self, other, opType=1, rev=0):
        """Calculate with multiplyDivide node, return output attribute
        e.g.
            obj1.a.tz * (3,4,5)   =>  (tz,tz,tz) . (3,4,5)
            obj1.a.t  * (3,4,5)   =>  (tx,ty,tz) . (3,4,5)
            obj1.a.tz * 8         =>  tz + 8
            obj1.a.tz * obj2.a.t  =>  tz * tx (1st child)
            obj1.a.t  * obj2.a.tz =>  (tx,ty,tz) . (tz,tz,tz)
        """
        from nl_modules.nodel.base.dep_node import DepNode

        nodeType = "multiplyDivide"
        node = DepNode(self.genNodeName(nodeType, opType), nodeType)
        node.a.operation.set(opType)

        is3D = self.bothParent(other) or isinstance(other, (tuple, list))
        inPlug1 = "input1" if is3D else "input1X"
        inPlug2 = "input2" if is3D else "input2X"
        outPlug = "output" if is3D else "outputX"

        if rev:
            other >> node.a[inPlug1]
            self >> node.a[inPlug2]
        else:
            self >> node.a[inPlug1]
            other >> node.a[inPlug2]

        return node.a[outPlug]

    def _DLNode(self, other, nodeType=None, rev=0):
        """Return x / + result of the two attributes"""
        from nl_modules.nodel.base.dep_node import DepNode

        node = DepNode(nodeType[0:3] + "__#", nodeType=nodeType)
        if rev:
            other >> node.a.input1
            self >> node.a.input2
        else:
            self >> node.a.input1
            other >> node.a.input2

        return node.a.output

    def _MDLnode(self, other, rev=0):
        """Return result of self x other"""
        return self._DLNode(other, nodeType="multDoubleLinear", rev=rev)

    def _ADLnode(self, other, rev=0):
        """Return result of self + other"""
        return self._DLNode(other, nodeType="addDoubleLinear", rev=rev)

    def __add__(self, other):
        """Return self + other"""
        return self.additionNode(other, opType=1)

    def __radd__(self, other):
        """Return other + self"""
        return self.additionNode(other, opType=1, rev=1)

    def __sub__(self, other):
        """Return self - other"""
        return self.additionNode(other, opType=2)

    def __rsub__(self, other):
        """Return other - self"""
        return self.additionNode(other, opType=2, rev=1)

    def __mul__(self, other):
        """Return self * other"""
        return self.multiplyNode(other, opType=1)

    def __rmul__(self, other):
        """Return other * self"""
        return self.multiplyNode(other, opType=1, rev=1)

    def __truediv__(self, other):
        """Return self / other"""
        return self.multiplyNode(other, opType=2)

    def __rtruediv__(self, other):
        """Return other / self"""
        return self.multiplyNode(other, opType=2, rev=1)

    def __pow__(self, other):
        """Return self ** other"""
        return self.multiplyNode(other, opType=3)

    def __rpow__(self, other):
        """Return other ** self"""
        return self.multiplyNode(other, opType=3, rev=1)

    def __matmul__(self, other):
        """Return self @ other"""
        return self.additionNode(other, opType=3)

    def __neg__(self):
        """Return -self  # -1 * self"""
        if self.isVector():
            return self * (-1, -1, -1)
        else:
            return self * -1

    def __invert__(self):
        """Return ~self  # 1 - self"""
        from nl_modules.nodel.base.dep_node import DepNode

        if isinstance(self, Attribute):
            rev = DepNode("rev__#", "reverse")
            inPlug = "input" if self.isParent() else "inputX"
            outPlug = "output" if self.isParent() else "outputX"
            self >> rev.a[inPlug]
            return rev.a[outPlug]
