from nl_modules.build.ik_fk_spline import IkFkSpline


class Tail(IkFkSpline):
    """Tail rig module."""

    def __init__(self, rigNode):
        super().__init__(rigNode)
        # self.rigSizeScale = 0.5
