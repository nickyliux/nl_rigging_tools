import maya.cmds as mc
from nl_modules.utils import maths


class Dimension:
    """Dimension class to get bounding box and other dimension related info of a Maya object."""

    def __init__(self, node):
        self._node = node
        if not self.worldMatrix:
            # raise ValueError("No worldMatrix found.")
            print("No worldMatrix found.")

    @property
    def worldMatrix(self):
        """Check if the object has a worldMatrix attribute."""
        return self._node.a.worldMatrix.exists()

    @property
    def bb0(self):
        """Return bounding box of the object, excluding hidden children"""
        dup = self._node.duplicate()
        if dup.children:
            mc.delete(dup.children)
        bb = mc.xform(dup, q=1, ws=1, bb=1)
        mc.delete(dup)
        return bb

    @property
    def bb(self):
        """Return bounding box of the object, including hidden children"""
        return mc.xform(self._node, q=1, ws=1, bbi=1)

    @property
    def bb2(self):
        """Return bounding box of the object, including all children in world space"""
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
    def diagonal2(self):
        """Return diagonal length of the bounding box in world space"""
        import math

        return math.sqrt(self.width2**2 + self.height2**2 + self.depth2**2)

    @property
    def bbCenter(self):
        """Return center of the bounding box in world space"""
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
        """Return position of the object in world space"""
        return tuple(mc.xform(self._node, ws=1, t=1, q=1))

    @staticmethod
    def copyPivot(driverObj, drivenObj):
        """Copy pivot from driverObj to drivenObj"""
        mc.xform(driverObj, ws=1, pivots=mc.xform(drivenObj, q=1, ws=1, t=1))

    def getPivotFr(self, item):
        """Get pivot from item to self._node"""
        return Dimension.copyPivot(self._node, item)

    def copyPivotTo(self, item):
        """Copy pivot from self._node to item"""
        return Dimension.copyPivot(item, self._node)

    def centerPivot(self):
        """Center pivot of the object"""
        mc.xform(self._node, cp=1)

    def distanceTo(self, item):
        """Calculate distance between self._node and item"""
        return maths.getDistBetwObj(self._node, str(item))
