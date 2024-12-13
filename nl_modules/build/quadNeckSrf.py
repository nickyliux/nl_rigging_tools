# import maya.cmds as mc
from nl_modules.build.quadSpineSrf import QuadSpineSrf
# from nl_modules.nodel.loc_node import LocNode
# from nl_modules.utils.color import Color
# from nl_modules.nodel.surf_node import SurfNode
import logging


class QuadNeckSrf(QuadSpineSrf):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    def post_setup(self):
        logging.info(self.rigID)
        if self.BIND_JNT_NUM > 1:
            self.addBindJntSet(self.bindJ)
        self.addCtlSet(self.ctls, pf=self.rigID)
        # self.anchor_setup_module({'anchorM1': self.rootJ, 'anchorF1': self.cog_ctl})
        self.anchor_setup_module({'anchorM1': self.tp_ctl, 'anchorF1': self.rt_ctl})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
