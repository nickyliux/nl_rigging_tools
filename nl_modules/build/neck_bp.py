from nl_modules.build.spine_bp import SpineBp


class NeckBp(SpineBp):
    """Biped neck rig module"""

    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        """Setup the anchor controls for the neck rig."""
        m1 = self.jnts_bind[-1] if self.ribbon else self.ctls_fk[-1]
        self.setup_anchor_module({"anchorP1": m1, "anchorS1": self.cog_ctl.offset})

    def setup_space(self):
        """Setup the space switching for the neck rig."""
        space_neck = self.fore_ikc if self.ribbon else self.ctls_fk[-1]
        self.rigNode.setMsg(
            {
                "space_neck": space_neck,
            }
        )
        if self.ribbon:
            self.rigNode.setMsg(
                {
                    "spaceHolder1": self.fore_ikc,
                    "space_neckBase": self.base_ikc,
                }
            )
