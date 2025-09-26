import maya.cmds as mc


def retopo(faceNum=200):
    """Apply retopo to selList objects"""
    for s in mc.ls(sl=1):
        mc.select(s)
        mc.polyRetopo(targetFaceCount=faceNum)


def get_model_file():
    """Open file dialog to select a model file."""
    charPath = mc.optionVar(q="charPath")

    tgtFile = mc.fileDialog2(
        fileFilter="*_mdl*", dialogStyle=2, fileMode=1, dir=charPath
    )
    return tgtFile[0] if tgtFile else None


def import_model(self):
    """Import model file into the scene."""
    from nl_modules.utils import file
    from nl_modules.utils import common

    tgtFile = get_model_file()
    if tgtFile:
        file.importFile(tgtFile)
        common.setViewport(fit=1)  # , jx=1)
