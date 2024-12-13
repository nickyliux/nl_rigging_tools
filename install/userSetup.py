import maya.cmds as mc


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


mc.evalDeferred("reloadMenus()")
mc.scriptJob(permanent=1, event=["SelectionChanged", mc.evalDeferred("reloadMenusAutorig()")])
