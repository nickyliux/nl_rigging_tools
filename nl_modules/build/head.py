import logging
from nl_modules.build.rig_module import RigModule


class Head(RigModule):
    """Head rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        super().__init__(rigNode)

        self.joints = []
        self.head = None
        self.headEnd = None
        self.jaw = None
        self.jawEnd = None
        self.lf_eye = None
        self.rt_eye = None
        self.head_fkc = None
        self.jaw_fkc = None
        self.fkCtl = None

    def genSk(self):
        """Generate the skeleton for the head rig."""

        self.genSk_module()
        root_list = self.gen_sk_fr_names(["st", "ed"], scale=10)
        jaw_list = self.gen_sk_fr_names(["jaw", "jawEnd"], scale=4)
        lf_eye = self.gen_sk_fr_names("lf_eye", scale=0.5)[0]
        rt_eye = self.gen_sk_fr_names("rt_eye", scale=0.5)[0]
        (jaw_list[0], lf_eye, rt_eye) | root_list[0]

        self.rootJ = root_list[0]
        self.rootJ | self.SKL_DATA
        self.rigNode.setMsg({"rootJ": self.rootJ})

    def build(self):
        """Build the head rig module."""

        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.head, self.headEnd, self.jaw, self.jawEnd, self.lf_eye, self.rt_eye = (
            self.joints
        )
        self.build_ctl()
        self.build_fk()
        self.post_setup()

    def build_ctl(self):
        """Build the controls for the head rig module."""

        logging.info(self.rigID)
        rID, rSz, xDr = self.getMyVar()
        ctl_defs = [
            ("head_fkc", "squR", None, rSz * 2, 0, -1),
            ("jaw_fkc", "circle", None, rSz, 0, -1),
            ("lf_eye", "circle", "x", rSz * 0.5, 0, -1),
            ("rt_eye", "circle", "x", rSz * 0.5, 0, -1),
        ]

        for name, shape, up, scale, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, scale, top, w, rID)

    def build_fk(self):
        """Build the FK controls for the head rig module."""

        logging.info(self.rigID)
        self.fkCtl = [self.head_fkc, self.jaw_fkc]
        (self.head_fkc, self.jaw_fkc) | self.CTL_DATA
        self.head_fkc.alignTo(self.head)
        self.head_fkc.addOffsetGrp()
        self.head_fkc.cstPar(self.head, mo=1)

        self.jaw_fkc.snapTo(self.jaw, p=self.head_fkc)
        self.jaw_fkc.addOffsetGrp()
        self.jaw_fkc.cstPar(self.jaw, mo=1)
        self.jaw_fkc.cv_moveTo(self.jawEnd.o.pos)

        # scalable
        self.head_fkc.a.s * self.masterC.a.globalScale >> self.SKL_DATA.a.s

        # self.isolate_align(self.fkCtl[0], [self.fkCtl[0].parent, self.masterC])
        # self.isolate_align(self.head_fkc, spaces=[self.head_fkc.parent, self.masterC])

    def setup_vis(self):
        pass

    def setup_rotate_order(self):
        pass

    def setup_channel(self):
        """Setup channels for the head rig controls."""

        self.head_fkc.a.showAttr(r=1, s=1)
        self.jaw_fkc.a.showAttr(t=1, r=1)

    def setup_space(self):
        """Setup space switching for the head rig controls."""

        self.head_fkc.a.add("spaceType", dv=1, k=0, cb=0)
        self.rigNode.setMsg({"spaceHolder1": self.head_fkc})
        spaces = "neck, COG, master"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_head": self.head_fkc})

    def post_setup(self):
        """Post setup for the head rig module."""

        logging.info(self.rigID)
        self.bindJnts = [self.head, self.jaw, self.lf_eye, self.rt_eye]
        self.add_bind_jnt_set(self.bindJnts)
        self.add_proxy_div(self.bindJnts, 4)

        self.add_ctl_set(self.fkCtl)
        self.setup_space()
        self.setup_anchor_module({"anchorF1": self.head_fkc.offset})
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
