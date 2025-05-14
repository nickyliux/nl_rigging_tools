import maya.cmds as mc
from nl_modules.build.spineQd import SpineQd


class NeckQd(SpineQd):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorF1": self.cog_ctl,
                "anchorM1": self.rbJnts[-1],
            }
        )
