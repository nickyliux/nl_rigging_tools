from nl_modules.build.spine_qd import SpineQd

from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode

from nl_modules.utils import utils_node as ut


class NeckQd(SpineQd):
    """Quadruped neck rig module"""

    def __init__(self, rigNode):
        super().__init__(rigNode)

    def setup_anchor(self):
        """Setup the anchor controls for the neck rig."""
        self.setup_anchor_module(
            {
                "anchorS1": self.cog_ctl.offset,
                "anchorP1": self.anchorToRbj,
            }
        )

    def setup_space(self):
        """Setup the space switching for the neck rig."""
        self.fore_ikc.a.add("spaceType", dv=2, k=0, cb=0)

        self.rigNode.a.add("spaceName1", type="string", txt="neckBase, COG, master")
        # self.rigNode.a.add("spaceName2", type="string", txt="chest, COG, master")

        self.rigNode.setMsg(
            {
                "spaceHolder1": self.fore_ikc,
                "space_neck": self.anchorToRbj,
                "space_neckBase": self.base_ikc,
            }
        )

        self.isolate_align(
            self.base_ikc,
            spaces=[self.base_ikc.parent, self.masterC],
        )

    def setup_ctlSet(self):
        """Setup control sets for the neck rig."""
        ctls = self.ctls_ik + [self.setting]
        self.add_ctl_set(ctls)

    def midCtl_setup(self):
        """Setup the mid control for the neck rig."""
        rID, rSz, xDr = self.getMyVar()
        self.jnts_twoIk = JntNode.makeTwoJointChain(
            "two_ikj",
            pf=rID,
            align=self.RT_GUIDE,
            align_end=self.TP_GUIDE,
            rad=rSz * 5,
            p=self.base_ikc,
        )
        j0, j1 = self.jnts_twoIk

        IkNode("two_ikj", pf=rID, sj=j0, ee=j1, vis=0, p=self.tangent1_ctl)

        ctlJ0, ctlJ1, ctlJ2 = self.jnts_ctl
        # Build logic for j0's scaleZ
        ratio = self.dist_len_ratio(ctlJ0, ctlJ2)
        clamp = self.setting.a.clamp

        ratioClp = ut.clp_(
            (ratio - 1) * self.setting.a.stretchy + 1,
            min=ut.clp_(2 - clamp, 0, 1),
            max=clamp,
        )
        ratioClp >> j0.a.sz

        if not self.is_spine():
            # Let mid_ikc driven by mid point between j0 and j1
            # mid_loc = LocNode("mid_ikc_loc", pf=rID, align=j0, p=j0)
            mid_loc = LocNode("mid_ikc_loc", pf=rID, snap=self.mid_ikc.offset, p=j0)
            # mid_loc.a.tz.set(j1.a.tz.get() / 2)
            mid_loc.cstPoi(self.mid_ikc.offset)  # , mo=1)
            mid_loc.hide()

            ctlJ2.cstAim(
                self.mid_ikc.offset,
                aim=(0, 0, 1),
                worldUpType="objectrotation",
                worldUpObject=self.cog_ctl,
            )
