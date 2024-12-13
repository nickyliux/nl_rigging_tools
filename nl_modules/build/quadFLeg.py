import maya.cmds as mc
from nl_modules.build.quadLeg import QuadLeg


class QuadFLeg(QuadLeg):
    def __init__(self, rigNode):
        super().__init__(rigNode)
