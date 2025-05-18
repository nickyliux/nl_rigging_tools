import maya.cmds as mc
from nl_modules.build.spineQd import SpineQd


class NeckQd(SpineQd):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def reparenting(self):
        """change parenting for neck setup"""
        self.foreFk_ctl.offset | self.base_ctl
        self.tangent0_ctl.offset | self.cog_ctl

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorF1": self.cog_ctl,
                "anchorM1": self.rbOutPos,
            }
        )

    def setup_space(self):
        self.base_ctl.a.add("spaceType", attrType="string", txt="ori")
        self.rigNode.setMsg({"spaceHolder1": self.base_ctl})
        # self.rigNode.setMsg({"spaceHolder1": self.foreFk_ctl})
        spaces = "chest, COG, master"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_neck": self.rbJnts[-1]})
