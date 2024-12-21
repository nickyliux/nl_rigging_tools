from nl_modules.build.leg import Leg
import logging


class QuadDLeg(Leg):
    def __init__(self, rigNode):
        super().__init__(rigNode)
