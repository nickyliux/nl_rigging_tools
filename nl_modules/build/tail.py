from nl_modules.build.ik_fk_spline import IkFkSpline


class Tail(IkFkSpline):
    """Tail rig module."""

    def __init__(self, mg):
        super().__init__(mg)
