from nl_modules.build.ik_fk_spline import IkFkSpline


class NeckQd(IkFkSpline):
    """Neck quadruped rig module."""

    def __init__(self, rigNode):
        super().__init__(rigNode)
