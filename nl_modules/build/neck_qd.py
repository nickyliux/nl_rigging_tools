import logging
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.build.spine_qd import SpineQd


class NeckQd(SpineQd):
    """
    NeckQd class for building a neck rig with quick setup features.
    Inherits from SpineQd and customizes anchor, space, bind joint, and control set setup.
    """

    def __init__(self, rigNode):
        """Initialize the NeckQd rig module."""
        super().__init__(rigNode)

    def setup_anchor(self):
        """Setup the anchor controls for the neck rig."""
        self.setup_anchor_module(
            {
                "anchorF1": self.cog_ctl.offset,
                "anchorM1": self.anchorToRbj,
            }
        )

    def setup_space(self):
        """Setup the space switching for the neck rig."""
        self.fore_ctl.a.add("spaceType", dv=2, k=0, cb=0)
        self.base_ctl.a.add("spaceType", dv=1, k=0, cb=0)

        self.rigNode.a.add("spaceName1", attrType="string", txt="neckBase, COG, master")
        self.rigNode.a.add("spaceName2", attrType="string", txt="chest, COG, master")

        self.rigNode.setMsg(
            {
                "spaceHolder1": self.fore_ctl,
                "spaceHolder2": self.base_ctl,
                "space_neck": self.anchorToRbj,
                "space_neckBase": self.base_ctl,
            }
        )

    def setup_bindJnt(self):
        """Setup bind joints for the neck rig."""
        self.add_bind_jnt_set(self.jnts_bind)
        self.add_proxy_radiusScale(self.jnts_bind, 2)
        self.add_proxy_height(
            self.jnts_bind, CrvNode(self.LINE_GUIDE).length / self.rbnJntNum
        )

    def setup_ctlSet(self):
        """Setup control sets for the neck rig."""
        ctls = self.ctls_ik + [self.setting]
        self.add_ctl_set(ctls)

    def build_post(self):
        """Post-setup for the neck rig."""
        logging.info(self.rigID)
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.build_post_module()
