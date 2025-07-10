import os
import sys
import maya.cmds as mc
import maya.mel as ml


def onMayaDroppedPythonFile(*args):
    """This function is called when the script is dragged and dropped into Maya."""

    if sys.version_info.major < 3:
        raise ImportError("nl_rigging_tools does not support Python 2.")

    currDir = os.path.dirname(__file__)
    iconPath = os.path.join(currDir, "nl_rigging_tools.bmp")

    print("_" * 78)
    print("Drag & drop setup...\n")
    print('Directory detected = "' + currDir + '"')

    shelfCmd = (
        "from nl_modules import nl_rigging_tools\n"
        + "from importlib import reload\n"
        + "reload(nl_rigging_tools)\n\n"
        + "nl_rigging_tools.main()\n"
    )
    shelfLayout = ml.eval(
        "global string $gShelfTopLevel; string $tmp = $gShelfTopLevel;"
    )
    currShelf = mc.tabLayout(shelfLayout, q=1, selectTab=1)

    mc.setParent(currShelf)
    mc.shelfButton(
        c=shelfCmd,
        annotation="nl_rigging_tools",
        label="nl",
        image=iconPath,
        image1=iconPath,
        sourceType="python",
    )
    print("Shelf icon created at the current shelf.\n")
