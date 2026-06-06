from nl_modules.build.leg_qd import LegQd


class LegBird(LegQd):
    """Leg bird rig module."""

    def __init__(self, mg):
        super().__init__(mg)
