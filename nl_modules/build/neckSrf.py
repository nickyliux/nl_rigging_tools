import maya.cmds as mc
import logging
from nl_modules.build.spineSrf import SpineSrf


class NeckSrf(SpineSrf):
    def __init__(self, rigNode):
        super().__init__(rigNode)

    # def post_setup(self):
    #     rID = self.rigID
    #     logging.info(rID)
    #     self.addBindJntSet(self.bindJ)
    #
    #     # Delete unneeded shape for neck
    #     # self.cog_ctl.shape.delete()
    #     # self.cog_gmb.shape.delete()
    #     self.rt_ctl.shape.delete()
    #     self.fkCtl[0].shape.delete()
    #
    #     # Remove unneeded element in ctlSet for Neck
    #     self.fkCtl.remove(self.fkCtl[0])
    #     self.ikCtl.remove(self.rt_ctl)
    #     # self.ikCtl.remove(self.cog_gmb)
    #     # self.ikCtl.remove(self.cog_ctl)
    #
    #     self.addCtlSet(self.fkCtl + self.ikCtl + [self.setting], pf=rID)
    #
    #     # Anchor for Neck
    #     anchorM1Tgt = self.bindJ[-1] if self.RBN_BONES else self.tp_ctl
    #     self.anchor_setup_module({'anchorF1': self.cog_ctl, 'anchorM1': anchorM1Tgt})
    #     self.space_setup()
    #     self.proxy_setup()
    #     self.vis_setup()
    #     self.channel_setup()
    #     self.ro_setup()
    #     self.post_module()

    def anchor_setup(self):
        anchorM1Tgt = self.bindJ[-1] if self.RBN_BONES else self.tp_ctl
        self.anchor_setup_module(
            {
                'anchorF1': self.cog_ctl,
                'anchorM1': anchorM1Tgt,
            }
        )
