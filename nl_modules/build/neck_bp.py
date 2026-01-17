from weakref import proxy
from nl_modules.build.spine_bp import SpineBp, SpineType


class NeckBp(SpineBp):
    """Biped neck rig module"""

    def __init__(self, rigNode):
        super().__init__(rigNode)

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
