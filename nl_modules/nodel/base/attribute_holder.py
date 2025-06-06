import maya.cmds as mc
import logging
from nl_modules.utils import path


class AttributeHolder:
    """AttributeHolder Node Class
    e.g.
        n = AttributeHolder('obj')
    """

    def __init__(self, node):
        if mc.objExists(node):
            self.node = node
        else:
            self.node = None

    def __repr__(self):
        """Attribute_Holder('obj')"""
        return path.genReprStr(self.__class__.__name__, str(self.node))

    def _getAttrObj(self, item):
        """Return Attribute object or object's dict item object"""
        from nl_modules.nodel.base.attribute import Attribute

        if item in self.__dict__.keys():
            return self.__dict__[item]

        return Attribute(self.node, item)

    def __getitem__(self, item):
        """Return Attribute object from []
        e.g.
            obj.a['rx']  # Attribute(obj,'rx')
        """
        return self._getAttrObj(item)

    def __getattr__(self, item):
        """Return Attribute object from .
        e.g.
            obj.a.rx  # Attribute(obj,'rx')
        """
        return self._getAttrObj(item)

    def list(self, **kwargs):
        """Return all attribute objects"""
        from nl_modules.nodel.base.attribute import Attribute

        attrList = []
        for a in mc.listAttr(self.node, **kwargs) or []:
            attrList.append(Attribute(self.node, a))

        return attrList

    def add(
        self, name, attrType="double", lock=False, k=True, txt=None, cb=True, **kwargs
    ):
        """Add attribute to it's node and return it
        e.g.
            obj.a.add('myAttr', dv=1, min=0, max=1)
            obj.a.add('myAttr', dv=1, attrType='long')
            obj.a.add('myAttr', dv=2, attrType='enum', en='a:b:c:d')
            obj.a.add('myAttr', attrType='string', txt='myText')
        """
        from nl_modules.nodel.base.attribute import Attribute

        attrStr = f"{self.node.name}.{name}"
        if mc.objExists(attrStr):
            return Attribute(self.node, name)

        if attrType == "string":
            mc.addAttr(self.node, ln=name, sn=name, dt=attrType, **kwargs)
            if txt:
                mc.setAttr(attrStr, txt, type="string")
        else:
            mc.addAttr(self.node, ln=name, sn=name, at=attrType, **kwargs)

        if k == 1:
            mc.setAttr(attrStr, k=1)
            # NO NEED TO SET FOR CB AS k=1 => cb=1
        else:
            mc.setAttr(attrStr, cb=cb)

        mc.setAttr(attrStr, lock=lock)

        return Attribute(self.node, name)

    def addSep(self, name="_" * 14):
        """Add string attribute as separator"""

        # if self.node.a[name].exists():
        while self.node.a[name].exists():
            name += "_"
        self.add(name, lock=1, attrType="enum", k=1, en=" ")

    def reset(self, **kwargs):
        """Reset object's xform
        e.g.
            obj1.a.reset()
        """
        mc.makeIdentity(self.node, **kwargs)

    def showAttr(self, *args, show=True, t=0, r=0, s=0, v=0):
        """Show/(Hide & Lock) attribute
        e.g.
            obj.a.showAttr()         # hide & lock t, r, s
            obj.a.showAttr(r=1)      # show only r
            obj.a.showAttr('tx')     # show only tx
        """
        n = self.node
        [mc.setAttr(f"{n}.{a}", lock=not t, k=t) for a in ["tx", "ty", "tz"]]
        [mc.setAttr(f"{n}.{a}", lock=not r, k=r) for a in ["rx", "ry", "rz"]]
        [mc.setAttr(f"{n}.{a}", lock=not s, k=s) for a in ["sx", "sy", "sz"]]
        mc.setAttr(f"{n}.v", lock=not v, k=v)

        [mc.setAttr(f"{n}.{a}", lock=not show, k=show) for a in args]
