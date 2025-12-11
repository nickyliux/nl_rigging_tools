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
        tgtFiles = glob.glob(
            os.path.join(charPath, "mdl", os.path.basename(charPath) + "_mdl*.ma")
        )
        if tgtFiles:
            file.importFile(tgtFiles[-1])
            common.setViewport(fit=1, wos=1)
            logging.info(f"Model imported: {tgtFiles[-1]}.")
        else:
            tgtFile = mc.fileDialog2(
                fileFilter="*_mdl*", dialogStyle=2, fileMode=1, dir=charPath
            )
            if tgtFile:
                file.importFile(tgtFile)
                logging.info(f"Model imported: {tgtFile}.")
