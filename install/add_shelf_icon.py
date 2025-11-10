# import os
# import sys
# import maya.cmds as mc
# import maya.mel as mel
from nl_modules.utils import common

print(
    r"""
 _______________________________
|          _   ____    ______   |
|         | | |  _ `| |__  __`| | 
|  _ __   | | | |_| |    | |    |
| | '_ `| | | |  _  /    | |    |
| | | | | | | | | \ \    | |    |
| |_| |_| |_| |_|  \_\   |_|    |
|_______________________________|

"""
)


def onMayaDroppedPythonFile(*args):
    """This function is called when the script is dragged and dropped into Maya."""

    common.addIconToCurrShelf()
