from weakref import proxy
from nl_modules.build.spine_bp import SpineBp, SpineType


class NeckBp(SpineBp):
    """
    Builds the neck rig based on the spine blueprint.
    Inherits from SpineBp and customizes anchor and space setup for the neck.
    """

    def __init__(self, rigNode):
        """Initialize the NeckBp rig module."""
        super().__init__(rigNode)

    def setup_bindJnt(self):
        """Setup bind joints for the spine rig."""
        self.add_bind_jnt_set(self.jnts_bind)

    def setup_anchor(self):
        """Setup the anchor controls for the neck rig."""
        m1 = (
            self.jnts_bind[-1]
            if self.spineType == SpineType.RIBBON.value
            else self.ctls_fk[-1]
        )
        self.setup_anchor_module({"anchorP1": m1, "anchorS1": self.cog_ctl.offset})

    def setup_space(self):
        """Setup the space switching for the neck rig."""
        # self.rigNode.setMsg({"space_COG": self.cog_ctl})

        space_neck = (
            self.chest_ikc
            if self.spineType == SpineType.RIBBON.value
            else self.ctls_fk[-1]
        )
        self.rigNode.setMsg({"space_neck": space_neck})
