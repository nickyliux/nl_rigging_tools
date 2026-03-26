import maya.cmds as mc
from nl_modules.utils import path, open_maya_api


class DepNode:
    """DEP Node Class
    e.g.
        n = DepNode('existing')
        n = DepNode('new', nodeType='addDoubleLinear')
    """

    def __init__(self, n, nodeType=None):
        self._dep = None
        self.node = n
        if nodeType:
            self.create(nodeType)

    def __str__(self):
        """e.g. 'loc1'"""
        if self.fullPath:
            return self.fullPath

    def __repr__(self):
        """e.g. 'DepNode("loc1")'"""
        return path.genReprStr(self.__class__.__name__, self.fullPath)

    def __eq__(self, other):
        if isinstance(other, self.__class__):
            return self.fullPath == other.fullPath
        elif self.fullPath == other or self.path == other:
            return True
        return False

    def __add__(self, other):
        return self.name + other

    def __radd__(self, other):
        return other + self.name

    def create(self, nodeType):
        if self.fullPath:
            raise ValueError(f"'{self.fullPath}' already exists.")

        if nodeType in mc.ls(nt=1):
            self.node = mc.createNode(nodeType, n=str(self.node))
        else:
            raise ValueError(f"Unknown nodeType: {nodeType}.")

        return self

    @property
    def dep(self):
        return self._dep

    @property
    def path(self):
        """Return path (= node's name)"""
        if self.dep:
            return self.dep.name()

    @property
    def fullPath(self):
        """Return fullPath (= path)"""
        return self.path

    @property
    def node(self):
        return self._node

    @node.setter
    def node(self, n):
        """Assign node from API and return state"""
        self._dep = None
        if n:
            self._node = n
            if mc.objExists(n):
                self._dep = open_maya_api.toDpNode(n)
                return True  # DagNode.dag will be None without return
            else:
                return False
        return False

    @property
    def namespace(self):
        if self.exists():
            return path.nameSpace(self.fullPath)

    @property
    def name(self):
        return path.objectName(self.fullPath)

    def rename(self, name):
        """Rename and return the node"""
        if self._dep:
            mc.rename(self, name)

        self._node = name
        return self

    @property
    def type(self):
        if self.dep:
            return self.dep.typeName()

    def exists(self):
        return bool(self.fullPath and mc.objExists(self))

    def delete(self):
        """Delete node if found"""
        if self.exists():
            mc.delete(self)
        self._dep = None

    def lock(self, state):
        """Lock state of the node"""
        if self.exists():
            mc.lockNode(self, lock=state)

    def isLock(self):
        """Check if the state of the node"""
        if self.exists():
            return mc.lockNode(self, q=1)[0]
        else:
            return False

    # def isRef(self):
    #     if self.fullPath:
    #         return mc.referenceQuery(self.fullPath, isNodeReferenced=1)

    @property
    def a(self):
        """Return AttributeHolder object with special letter 'a'
        e.g.
            obj1.a
            obj1.a.t
        """
        from nl_modules.nodel.base.attribute_holder import AttributeHolder

        return AttributeHolder(self)

    @property
    def o(self):
        """Return AttributeHolder object with special letter 'o'
        e.g.
            obj1.o
            obj1.o.pos
        """
        from nl_modules.nodel.base.dimension import Dimension

        return Dimension(self)
