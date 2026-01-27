import logging
from nl_modules.utils import proxy
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.build.spine_qd import SpineQd


class NeckQd(SpineQd):
    """Quadruped neck rig module"""

    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        """Setup the anchor controls for the neck rig."""
        self.setup_anchor_module(
            {
                "anchorS1": self.cog_ctl.offset,
                "anchorP1": self.anchorToRbj,
            }
        )

    def setup_space(self):
        """Setup the space switching for the neck rig."""
        self.fore_ctl.a.add("spaceType", dv=2, k=0, cb=0)
        self.base_ctl.a.add("spaceType", dv=1, k=0, cb=0)

        self.rigNode.a.add("spaceName1", type="string", txt="neckBase, COG, master")
        self.rigNode.a.add("spaceName2", type="string", txt="chest, COG, master")

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

    def setup_ctlSet(self):
        """Setup control sets for the neck rig."""
        ctls = self.ctls_ik + [self.setting]
        self.add_ctl_set(ctls)
