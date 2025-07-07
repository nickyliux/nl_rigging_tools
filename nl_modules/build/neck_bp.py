import maya.cmds as mc
from nl_modules.build.spine_bp import SpineBp


class NeckBp(SpineBp):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        anchorM1Tgt = self.bindJnts[-1] if self.rbnBones else self.tp_ctl
        self.setup_anchor_module(
            {
                "anchorF1": self.cog_ctl,
                "anchorM1": anchorM1Tgt,
            }
        )

    def setup_space(self):
        self.rigNode.setMsg({"space_COG": self.cog_ctl})
        self.rigNode.setMsg({"space_neck": self.chest_ctl})
        # self.rigNode.setMsg({"space_neckBase": self.base_ctl})
