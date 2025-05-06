import maya.cmds as mc
from nl_modules.build.spineQd import SpineQd


class NeckQd(SpineQd):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorF1": self.base_ctl,
                "anchorM1": self.fkJnt[-1],
            }
        )
