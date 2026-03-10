import maya.cmds as mc
import maya.mel as mel
from PySide2 import QtWidgets


def showAbout(self):
    """Show the about dialog."""

    aboutText = (
        "NL Rigging Tools (NLRT) v2026.01.21\n\n"
        "A modular auto rigging tool\n\n"
        "Developed by Nicky Liu.\n"
        "GitHub: https://github.com/nl/nl_rigging_tools\n"
    )
    QtWidgets.QMessageBox.about(None, "About", aboutText)


def createMenu():
    """Create the main menu for NL Rigging Tools."""

    runCmd = "import nl_modules.nl_rigging_tools as nlRT; from importlib import reload; reload(nlRT); nlRT.showUI();"
    closeCmd = "import nl_modules.nl_rigging_tools as nlRT; from importlib import reload; reload(nlRT); nlRT.closeUI();"
    melGlobal = mel.eval("$tmpVar = $gMainWindow")

    if mc.menu("nlRT", exists=1, parent=melGlobal):
        print(">>>>>>>>> nlRT Menu Already Exists >>>>>>>>>")
    else:
        nlMenu = mc.menu("nlRT", parent=melGlobal)
        mc.menuItem(label="nl Rigging Tools", command=runCmd, parent=nlMenu)
        mc.menuItem(label="About", command=showAbout, parent=nlMenu)
        mc.menuItem(label="Close", command=closeCmd, parent=nlMenu)
        print(">>>>>>>>> nlRT Menu Loaded >>>>>>>>>")
