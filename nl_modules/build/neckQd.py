import maya.cmds as mc
from nl_modules.build.spineQd import SpineQd


class NeckQd(SpineQd):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorF1": self.cog_ctl,
                "anchorM1": self.rbAnchor,
            }
        )

    def setup_space(self):
        self.fore_ctl.a.add("spaceType", k=0, dv=2, cb=0)
        self.rigNode.setMsg({"spaceHolder1": self.fore_ctl})
        spaces = "neckBase, COG, master"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.cog_ctl.a.add("spaceType", k=0, dv=1, cb=0)
        self.rigNode.setMsg({"spaceHolder2": self.cog_ctl})
        spaces = "chest, COG, master"
        self.rigNode.a.add("spaceName2", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_neck": self.rbAnchor})
        self.rigNode.setMsg({"space_neckBase": self.base_ctl})
