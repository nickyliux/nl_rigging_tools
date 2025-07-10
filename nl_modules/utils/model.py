import maya.cmds as mc

MODEL_PATH = "D:/_PROJECT/GIT/nl_rigging_tools_examples"


def retopo(faceNum=200):
    """Apply retopo to selList objects"""

    for s in mc.ls(sl=1):
        mc.select(s)
        mc.polyRetopo(targetFaceCount=faceNum)


def get_model_file(self):
    """Open file dialog to select a model file."""

    tgtFile = mc.fileDialog2(
        fileFilter="*.ma", dialogStyle=2, fileMode=1, dir=MODEL_PATH
    )
    return tgtFile[0] if tgtFile else None


def import_model(self):
    """Import model file into the scene."""

    from nl_modules import file
    from nl_modules import common

    tgtFile = self.get_model_file()
    if tgtFile:
        file.importFile(tgtFile)
        common.setViewport(fit=1)
