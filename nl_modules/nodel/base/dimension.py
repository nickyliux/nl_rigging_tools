import maya.cmds as mc
from nl_modules.utils import maths


class Dimension:
    """Dimension Node Class, used by DagNode
    e.g.
        obj.o.pos
        obj.o.bbCenter
    """

    def __init__(self, node):
        self._node = node
        if not self.worldMatrix:
            # raise ValueError("No worldMatrix found.")
            print("No worldMatrix found.")

    @property
    def worldMatrix(self):
        return self._node.a.worldMatrix.exists()

    @property
    def bb(self):
        return mc.xform(self._node, q=1, ws=1, bbi=1)

    @property
    def bb2(self):
        # calculated bbox
        from nl_modules.nodel.base.dag_node import DagNode

        allX = []
        allY = []
        allZ = []
        for obj in self._node.allChildren2:
            worldPos = mc.xform(obj, ws=1, t=1, q=1)
            allX.append(worldPos[0])
            allY.append(worldPos[1])
            allZ.append(worldPos[2])
        return [min(allX), min(allY), min(allZ), max(allX), max(allY), max(allZ)]

    @property
    def width(self):
        return self.bb[3] - self.bb[0]

    @property
    def height(self):
        return self.bb[4] - self.bb[1]

    @property
    def depth(self):
        return self.bb[5] - self.bb[2]

    @property
    def width2(self):
        return self.bb2[3] - self.bb2[0]

    @property
    def height2(self):
        return self.bb2[4] - self.bb2[1]

    @property
    def depth2(self):
        return self.bb2[5] - self.bb2[2]

    @property
    def bbCenter(self):
        return [
            float(i)
            for i in [
                # return [round(float(i),8) for i in [
                (self.bb[3] + self.bb[0]) / 2,
                (self.bb[4] + self.bb[1]) / 2,
                (self.bb[5] + self.bb[2]) / 2,
            ]
        ]

    @property
    def pos(self):
        """Return world space position of the object
        e.g.
            obj1.o.pos()
        """
        return tuple(mc.xform(self._node, ws=1, t=1, q=1))

    @staticmethod
    def copyPivot(driverObj, drivenObj):
        mc.xform(driverObj, ws=1, pivots=mc.xform(drivenObj, q=1, ws=1, t=1))

    def getPivotFr(self, item):
        return Dimension.copyPivot(self._node, item)

    def copyPivotTo(self, item):
        return Dimension.copyPivot(item, self._node)

    def centerPivot(self):
        mc.xform(self._node, cp=1)

    def distanceTo(self, item):
        """Return distance betw objects
        e.g.
            obj1.o.distanceTo(obj2)
        """
        return maths.getDistBetwObj(self._node, str(item))
