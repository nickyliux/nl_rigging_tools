import maya.cmds as mc
import logging
from nl_modules.build.spine import Spine


class Neck(Spine):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def anchor_setup(self):
        anchorM1Tgt = self.bindJnts[-1] if self.RBN_BONES else self.tp_ctl
        self.anchor_setup_module(
            {
                "anchorF1": self.cog_ctl,
                "anchorM1": anchorM1Tgt,
            }
        )
