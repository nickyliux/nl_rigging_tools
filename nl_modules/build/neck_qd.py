import maya.cmds as mc
from nl_modules.build.spine_qd import SpineQd


class NeckQd(SpineQd):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorF1": self.cog_ctl,
                "anchorM1": self.anchorToRbj,
            }
        )

    def setup_space(self):
        self.fore_ctl.a.add("spaceType", dv=2, k=0, cb=0)
        self.rigNode.setMsg({"spaceHolder1": self.fore_ctl})
        spaces = "neckBase, COG, master"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        # self.cog_ctl.a.add("spaceType", dv=1, k=0, cb=0)
        self.base_ctl.a.add("spaceType", dv=1, k=0, cb=0)
        self.rigNode.setMsg({"spaceHolder2": self.base_ctl})
        spaces = "chest, COG, master"
        self.rigNode.a.add("spaceName2", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_neck": self.anchorToRbj})
        self.rigNode.setMsg({"space_neckBase": self.base_ctl})

    def post_setup(self):
        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_ratio(self.bindJnts, 2)

        ctls = self.ikCtls + [self.cog_ctl, self.setting]
        # ctls.remove(self.base_ctl)
        # ctls.remove(self.tangent0_ctl)

        self.add_ctl_set(ctls)

        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()

        self.post_module()
