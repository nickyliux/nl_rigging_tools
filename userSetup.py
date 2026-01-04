import maya.cmds as mc
import startUp


def reloadMenus():
    from importlib import reload
    import nl_modules.utils.marking_menu_autorig as mma
    import nl_modules.utils.marking_menu_rigging as mmr

    reload(mma)
    reload(mmr)


def reloadMenusAutorig():
    from importlib import reload
    import nl_modules.utils.marking_menu_autorig as mma

    reload(mma)


mc.evalDeferred(startUp.createMenu)
