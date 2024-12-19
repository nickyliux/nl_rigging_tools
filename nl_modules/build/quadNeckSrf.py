from nl_modules.build.quadSpineSrf import QuadSpineSrf
import logging


class QuadNeckSrf(QuadSpineSrf):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def anchor_setup(self):
        self.anchor_setup_module(
            {
                # "anchorM1": self.tp_ctl,
                "anchorF1": self.rt_ctl,
                "anchorM1": self.fkJnt[-1],
            }
        )
        baseAttach = self.cog_ctl.a["baseAttach"]
        if baseAttach:
            baseAttach.set(1)
