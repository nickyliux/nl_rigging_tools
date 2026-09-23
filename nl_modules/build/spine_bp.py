import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.build.spine_qd import SpineQd


class SpineBp(SpineQd):
    """Biped spine rig module."""

    def __init__(self, mg):
        super().__init__(mg)

    def build_ctl(self):
        """Build control nodes for the spine rig."""
        logging.info(".")
        rID, rSz, xDr = self.get_short_form()

        ctl_defs = [
            ("setting", "screw_nut", "z", rSz, 1),
            ("cog_ctl", "hexagon", None, rSz * 4, 0),
            ("fore_ikc", "hexagon_3d", None, rSz * 2, 0),
            ("mid_ikc", "hexagon_3d", None, rSz * 2, 0),
            ("base_ikc", "hexagon_3d", None, rSz * 2, 0),
            ("tangent0_ctl", "arrow", None, rSz / 2, 1),
            ("tangent1_ctl", "arrow", None, rSz / 2, 1),
            ("end_ctl", "rotate2_3d", None, rSz, 0),
        ]

        for name, shape, up, scale, top in ctl_defs:
            self.create_and_register_ctl(rID, name, shape, up, scale, top)

        self.end_ctl.cv_rotate(-90, 0, 0)
        # self.setting.cv_move(0, 0, rSz * 40)

    def build_addPivot(self):
        # RigModule.dyn_pivot(self.cog_ctl)
        RigModule.dyn_pivot(self.fore_ikc, endTgt=self.mid_ikc, dv=1)
        RigModule.dyn_pivot(self.base_ikc, endTgt=self.mid_ikc, dv=0.5)
