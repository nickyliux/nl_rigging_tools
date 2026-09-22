import maya.cmds as mc
from maya import mel


def createMenu():
    """Create the main menu for NL Rigging Tools."""
    commonCmd = "import nl_modules.nl_rigging_tools as nlRT; from importlib import reload; reload(nlRT);"
    runCmd = commonCmd + "nlRT.showUI();"
    closeCmd = commonCmd + "nlRT.closeUI();"
    addIconCmd = commonCmd + "nlRT.addIcon2CurrShelf();"

    melGlobal = mel.eval("$tmpVar = $gMainWindow")

    if mc.menu("nlRT", exists=1, parent=melGlobal):
        print(">>>>>>>>> nlRT Menu Already Exists >>>>>>>>>")
    else:
        nlMenu = mc.menu("nlRT", parent=melGlobal, to=True)
        mc.menuItem(label="Open UI", command=runCmd, parent=nlMenu)
        mc.menuItem(label="Close UI", command=closeCmd, parent=nlMenu)
        mc.menuItem(divider=True, parent=nlMenu)
        mc.menuItem(
            label="Add Icon To Current Shelf", command=addIconCmd, parent=nlMenu
        )
        mc.menuItem(divider=True, parent=nlMenu)
        mc.menuItem(label="About", command=aboutDialog, parent=nlMenu)
        print(">>>>>>>>> nlRT Menu Loaded >>>>>>>>>")


def aboutDialog(self):
    """Show the about dialog."""

    msg = """
nl Rigging Tools ( nlRT )
Version: v0.1.2
Copyright (c) 2026 Nicky Liu


nlRT is under the terms of the AGPL-3.0 License

- Free to Use: You can use, run, and modify the software for any purpose, including commercially.

- Share Modifications (Network Clause): If you change the code and let users access it over a network (like as a web app or cloud service), you must make the full modified source code available to those users.

- Keep Notices: You must keep original copyright notices, license terms, and state any significant changes made to the code.

- No Warranty: The software comes with no warranty or liability protection.


Source @ GitHub
https://github.com/nl/nl_rigging_tools
    """
    mc.confirmDialog(title="About nlRT", message=msg, button=["OK"])
