import maya.cmds as mc
from nl_modules.utils import path


class AttributeHolder:
    """AttributeHolder Node Class, contains methods to manage attributes
    e.g.
        n = DagNode('obj')
        n.a
        # AttributeHolder('obj')
    """

    def __init__(self, node):
        if mc.objExists(node):
            self.node = node
        else:
            self.node = None

    def __repr__(self):
        """Return string representation of the AttributeHolder object
        e.g.
            print(obj.a)  # "AttributeHolder('obj')"
        """
        return path.genReprStr(self.__class__.__name__, str(self.node))

    def _getAttrObj(self, item):
        """Return Attribute object or object's dict item object
        e.g.
            obj.a.rx     # Attribute(obj,'rx')
            obj.a['rx']  # Attribute(obj,'rx')
        """
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
        """Return all attribute objects
        e.g.
            obj.a.list()
            obj.a.list(u=1)
        """
        from nl_modules.nodel.base.attribute import Attribute

        attrList = []
        for a in mc.listAttr(self.node, **kwargs) or []:
            attrList.append(Attribute(self.node, a))

        return attrList

    def add(self, name, type="double", lock=False, k=True, txt=None, cb=True, **kwargs):
        """Add attribute to it's node and return it
        e.g.
            obj.a.add('myAttr', dv=1, min=0, max=1)
            obj.a.add('myAttr', dv=1, type='long')
            obj.a.add('myAttr', dv=2, type='enum', en='a:b:c:d')
            obj.a.add('myAttr', type='string', txt='myText')
        """
        from nl_modules.nodel.base.attribute import Attribute

        attrStr = f"{self.node.name}.{name}"
        if mc.objExists(attrStr):
            return Attribute(self.node, name)

        if type == "string":
            mc.addAttr(self.node, ln=name, sn=name, dt=type, **kwargs)
            if txt:
                mc.setAttr(attrStr, txt, type="string")
        else:
            mc.addAttr(self.node, ln=name, sn=name, at=type, **kwargs)

        if k == 1:
            mc.setAttr(attrStr, k=1)
        else:
            mc.setAttr(attrStr, cb=cb)

        mc.setAttr(attrStr, lock=lock)

        return Attribute(self.node, name)

    def addSep(self, name="_" * 12):
        """Add string attribute as separator
        e.g.
            obj.a.addSep()
        """
        if self.node.a[name].exists():
            return
        # while self.node.a[name].exists():
        #     name += "_"
        self.add(name, lock=1, type="enum", k=1, en="_" * 12)

    def reset(self, **kwargs):
        """Reset object's xform
        e.g.
            obj1.a.reset()
        """
        mc.makeIdentity(self.node, **kwargs)

    def showAttr(self, *args, show=True, t=0, r=0, s=0, v=0):
        """Show/(Hide & Lock) attribute
        e.g.
            obj.a.showAttr()         # hide t, r, s, v
            obj.a.showAttr(r=1)      # hide except r
            obj.a.showAttr('tx')     # hide except tx
        """
        n = self.node
        [mc.setAttr(f"{n}.{a}", lock=not t, k=t) for a in ["tx", "ty", "tz"]]
        [mc.setAttr(f"{n}.{a}", lock=not r, k=r) for a in ["rx", "ry", "rz"]]
        [mc.setAttr(f"{n}.{a}", lock=not s, k=s) for a in ["sx", "sy", "sz"]]
        mc.setAttr(f"{n}.v", lock=not v, k=v)

        [mc.setAttr(f"{n}.{a}", lock=not show, k=show) for a in args]
