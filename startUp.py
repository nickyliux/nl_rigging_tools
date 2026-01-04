import maya.cmds as mc
import maya.mel as mel


def createMenu():
    cmd = "import nl_modules.nl_rigging_tools as nlRT; from importlib import reload; reload(nlRT); nlRT.showUI();"
    melGlobal = mel.eval("$tmpVar = $gMainWindow")

    if mc.menu("nlRT", exists=1, parent=melGlobal):
        print(">>>>>>>>> nlRT Menu Already Exists >>>>>>>>>")
    else:
        nlMenu = mc.menu("nlRT", parent=melGlobal)
        mc.menuItem(label="nl Rigging Tools", command=cmd, parent=nlMenu)
        print(">>>>>>>>> nlRT Menu Loaded >>>>>>>>>")
