import os
import glob
import logging
import maya.cmds as mc


def retopo(faceNum=200):
    """Apply retopo to selList objects"""
    for s in mc.ls(sl=1):
        mc.select(s)
        mc.polyRetopo(targetFaceCount=faceNum)


def loadModel(self):
    """Import model file into the scene."""
    from nl_modules.utils import file
    from nl_modules.utils import common

    charPath = mc.optionVar(q="charPath")
    if charPath:
        tgtPaths = glob.glob(
            os.path.join(charPath, os.path.basename(charPath) + "_mdl*.ma")  # "mdl",
        )
        if tgtPaths:
            file.importFile(tgtPaths[-1])
            common.setVP(fit=1, wos=1, jx=1)
        else:
            tgtPaths = mc.fileDialog2(
                fileFilter="*_mdl*", dialogStyle=2, fileMode=1, dir=charPath
            )
            if tgtPaths:
                file.importFile(tgtPaths[-1])
            else:
                return

        logging.info(f"Model imported: {os.path.basename(tgtPaths[-1])}.")
