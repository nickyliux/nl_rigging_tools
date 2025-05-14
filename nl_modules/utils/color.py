from enum import Enum
import maya.cmds as mc


class Color(Enum):

    OFF = 0
    BLACK = 1  #
    GREY = 2
    L_GREY = 3
    D_RED = 4  #
    D_BLUE = 5
    BLUE = 6  #
    VD_GREEN = 7
    D_PURPLE = 8
    HOT_PINK = 9
    BROWN = 10
    D_BROWN = 11
    APPLE = 12
    RED = 13  #
    GREEN = 14  #
    COBALT = 15
    WHITE = 16
    L_BLUE = 18  #
    ARCTIC = 19
    PINK = 20  #
    ORANGE = 21
    YELLOW = 22  #
    FERN = 23
    L_BROWN = 24
    D_YELLOW = 25
    PEAR = 26
    PARAKEET = 27
    SKY = 29
    LAPIS = 30
    PURPLE = 31

    @staticmethod
    def _getExpanded(objs):
        """get expanded shapes and nodes"""
        filtered = None
        if objs:
            objList = objs if isinstance(objs, list) else [objs]
            shapes = mc.listRelatives(objs, s=1, f=1, ni=1) or []
            filtered = mc.ls(
                shapes + objList,
                type=["nurbsCurve", "locator", "joint", "mesh"],
                l=1,
            )
        return filtered or []

    @classmethod
    def getColor(cls, objs):
        """get color of first expanded from the obj
        e.g.
            getColor('obj1')            # 22
            getColor(['obj1', 'obj2'])  # 8
        """
        for node in cls._getExpanded(objs):
            if mc.getAttr(f"{node}.overrideEnabled"):
                return mc.getAttr(f"{node}.overrideColor")

    @classmethod
    def setColor(cls, objs, val):
        """set color for all shapes of obj
        e.g.
            setColor('obj1', 13)
            setColor(['obj1', 'obj2'], Color.RED)
        """
        colorInt = val or 0
        state = colorInt != 0

        if isinstance(val, Enum):
            if val.name == "OFF":
                state = False
            else:
                colorInt = val.value

        for node in cls._getExpanded(objs):
            if mc.objExists(f"{node}.overrideEnabled"):
                mc.setAttr(f"{node}.overrideEnabled", state)
                if mc.objExists(f"{node}.overrideColor"):
                    mc.setAttr(f"{node}.overrideColor", colorInt)
