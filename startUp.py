import maya.cmds as mc
import maya.mel as mel


def showAbout(self):
    """Show the about dialog."""

    aboutText = """
nl Rigging Tools ( nlRT ) version: v2026.03.10

nlRT is under the terms of the MIT License

Copyright (c) 2026 Nicky Liu

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR      
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
OR OTHER DEALINGS IN THE SOFTWARE.

GitHub: https://github.com/nl/nl_rigging_tools
    """
    mc.confirmDialog(title="About nlRT", message=aboutText, button=["OK"])


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
        mc.menuItem(label="About", command=showAbout, parent=nlMenu)
        print(">>>>>>>>> nlRT Menu Loaded >>>>>>>>>")
