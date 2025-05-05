# import logging
import maya.cmds as mc
from nl_modules.build.spineQd import SpineQd


class NeckQd(SpineQd):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def anchor_setup(self):
        self.anchor_setup_module(
            {
                "anchorF1": self.base_ctl,
                "anchorM1": self.fkJnt[-1],
            }
        )
