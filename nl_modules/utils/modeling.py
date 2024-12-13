import maya.cmds as mc


def mesh_retopo(faceNum=200):
    """Apply retopo to selected objects"""
    for s in mc.ls(sl=1):
        mc.select(s)
        mc.polyRetopo(targetFaceCount=faceNum)
