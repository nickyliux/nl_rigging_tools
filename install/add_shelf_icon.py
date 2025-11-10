# import os
# import sys
# import maya.cmds as mc
# import maya.mel as mel
from nl_modules.utils import common


def onMayaDroppedPythonFile(*args):
    """This function is called when the script is dragged and dropped into Maya."""

    common.addIconToCurrShelf()
