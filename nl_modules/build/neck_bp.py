from weakref import proxy
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
        self.chest_ikc.a.add("spaceType", dv=2, k=0, cb=0)

        self.rigNode.a.add("spaceName1", type="string", txt="neckBase, COG, master")

        space_neck = self.chest_ikc if self.ribbon else self.ctls_fk[-1]
        self.rigNode.setMsg(
            {
                "spaceHolder1": self.chest_ikc,
                "space_neck": space_neck,
                "space_neckBase": self.hip_ikc,
            }
        )
