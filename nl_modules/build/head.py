import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.utils import proxy
from nl_modules.utils.color import Color


class Head(RigModule):
    """Head rig module class, inherits from RigModule."""

    def __init__(self, rigNode):
        """Initialize the Head rig module with the given rigNode."""
        super().__init__(rigNode)

        # Joint names and attributes
        self.jnt_names = ["head", "jaw", "lf_eye", "rt_eye"]
        for name in self.jnt_names:
            setattr(self, name, None)
            setattr(self, f"{name}_fkc", None)

        # Main attributes
        self.jnts = []
        self.ctls_fk = []
        self.rootJ = None

    def gen_sk(self):
        """Generate the skeleton for the head rig."""
        self.genSk_module()
        root_list = self.gen_sk_fr_names(["st", "ed"], scale=1.5)
        jaw_list = self.gen_sk_fr_names(["jaw", "jawEnd"], scale=0.8)
        lf_eye = self.gen_sk_fr_names("lf_eye", scale=0.3)[0]
        rt_eye = self.gen_sk_fr_names("rt_eye", scale=0.3)[0]
        (jaw_list[0], lf_eye, rt_eye) | root_list[0]

        self.rootJ = root_list[0]
        self.rootJ | self.JNT_DATA
        # self.rootJ.color = Color.BLACK
        self.rigNode.setMsg({"rootJ": self.rootJ})
        return self.rootJ

    def build(self):
        """Build the head rig module."""
        self.build_pre_module()
        self.jnts = self.rootJ.allChildrenJt2
        self.head, self.headEnd, self.jaw, self.jawEnd, self.lf_eye, self.rt_eye = (
            self.jnts
        )
        self.build_ctl()
        self.build_fk()
        self.build_post()

    def build_ctl(self):
        """Build the controls for the head rig module."""
        logging.info(self.rigID)

        rID, rSz, xDr = self.getMyVar()
        ctl_defs = [
            ("head_fkc", "squareR", None, rSz * 6, 0, -1),
            ("jaw_fkc", "jaw", None, rSz * 0.5, 0, -1),
            ("lf_eye_fkc", "circle", "z", rSz, 0, -1),
            ("rt_eye_fkc", "circle", "z", rSz, 0, -1),
        ]

        for name, shape, up, sca, top, w in ctl_defs:
            self.create_and_register_ctl(name, shape, up, sca, top, w, rID)

        self.jaw_fkc.cv_move(0, -rSz * 5, 0)

    def build_fk(self):
        """Build the FK controls for the head rig module."""
        logging.info(self.rigID)

        self.ctls_fk = [self.head_fkc, self.jaw_fkc, self.lf_eye_fkc, self.rt_eye_fkc]
        for ctl in self.ctls_fk:
            ctl | self.CTL_DATA

        self.head_fkc.alignTo(self.head)
        self.head_fkc.addOffsetGrp()
        self.head_fkc.cstPar(self.head, mo=1)
        # self.head_fkc.cv_moveTo(self.headEnd.o.pos)

        self.jaw_fkc.snapTo(self.jaw, p=self.head_fkc)
        self.jaw_fkc.addOffsetGrp()
        self.jaw_fkc.cstPar(self.jaw, mo=1)
        self.jaw_fkc.cv_moveTo(self.jawEnd.o.pos)

        (self.lf_eye_fkc, self.rt_eye_fkc) | self.head_fkc

        self.lf_eye_fkc.alignTo(self.lf_eye)
        self.lf_eye_fkc.addOffsetGrp()
        self.lf_eye_fkc.cstPar(self.lf_eye, mo=1)

        self.rt_eye_fkc.alignTo(self.rt_eye)
        self.rt_eye_fkc.addOffsetGrp()
        self.rt_eye_fkc.cstPar(self.rt_eye, mo=1)

        # self.isolate_align(self.ctls_fk[0], [self.ctls_fk[0].parent, self.masterC])
        # self.isolate_align(self.head_fkc, spaces=[self.head_fkc.parent, self.masterC])

    def setup_vis(self):
        pass

    def setup_rotate_order(self):
        pass

    def setup_channel(self):
        """Setup channels for the head rig controls."""
        self.head_fkc.a.showAttr(t=1, r=1, s=1)
        self.jaw_fkc.a.showAttr(t=1, r=1)

    def setup_space(self):
        """Setup space switching for the head rig controls."""
        self.head_fkc.a.add("spaceType", dv=1, k=0, cb=0)
        self.rigNode.a.add("spaceName1", type="string", txt="neck, COG, master")

        self.rigNode.setMsg(
            {
                "spaceHolder1": self.head_fkc,
                "space_head": self.head_fkc,
            }
        )

    def setup_scale(self):
        """Setup scale for the head rig module."""
        self.head_fkc.a.s * self.masterC.a["globalScale"] >> self.JNT_DATA.a.s

    def setup_ctlSet(self):
        """Setup control sets for the head rig module."""
        self.add_ctl_set(self.ctls_fk)

    def setup_bindJnt(self):
        """Setup bind joints for the head rig module."""
        self.jnts_bind = [self.head, self.jaw]  # , self.lf_eye, self.rt_eye]
        self.add_bind_jnt_set(self.jnts_bind)
        proxy.add_proxyDiv_attr([self.head], 3)

    def build_post(self):
        """Post setup for the head rig module."""
        logging.info(self.rigID)

        self.setup_scale()
        self.setup_bindJnt()
        self.setup_ctlSet()
        self.setup_space()
        self.setup_anchor_module(
            {
                "anchorS1": self.head_fkc.offset,
                "anchorP1": self.headEnd,
            }
        )
        self.setup_vis()
        self.setup_rotate_order()
        self.build_post_module()
        self.setup_channel()
