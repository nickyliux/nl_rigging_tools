import os
import maya.cmds as mc
import nl_modules as nl_modules
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import common
from nl_modules.utils.color import Color
import logging


class GroupNode(DagNode):
    """Group Node Class
    e.g.
        n = GroupNode('existing')
        n = GroupNode('new')
    """

    PATH_SHAPE = os.path.join(os.path.dirname(nl_modules.__file__), "build/shapes")

    def __init__(
        self,
        node,
        nodeType="transform",
        pf="",
        sf="",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        radius=None,
        p=None,
    ):
        if node is None:
            logging.info("Fail to create group for None")
            return
        if pf and pf[-1] != "_":
            pf += "_"
        name = pf + node + sf
        if name:
            DagNode.__init__(self, name)
            if not mc.objExists(name):
                self.createNode(
                    name,
                    nodeType=nodeType,
                    align=align,
                    alignR=alignR,
                    snap=snap,
                    addOfs=addOfs,
                    radius=radius,
                    p=p,
                )

    def createNode(
        self,
        node,
        nodeType="transform",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        radius=None,
        p=None,
    ):
        """Create transform or joint"""
        self.node = mc.createNode(nodeType, n=node)
        if align:
            self.alignTo(align)
        if alignR:
            self.alignTo(alignR, rotate=1)
        if snap:
            self.snapTo(snap)
        if p:
            self.parentTo(p)
        if addOfs:
            self.addOffsetGrp()
        if nodeType == "joint" and radius:
            self.a.radius.set(radius)

        return self

    def cv_move(self, *args, **kwargs):
        """Move all cvs of the curve"""
        kwargs = kwargs or {"r": 1}
        mc.move(*args, self.cvs, os=1, **kwargs)

    def cv_moveTo(self, pos):
        """Move all cvs to position
        e.g.
            cv_moveTo((1,2,3))  # move all cv to position (1,2,3), keeping relative position
        """
        wsPos = self.o.pos
        negOfs = (wsPos[0] * -1, wsPos[1] * -1, wsPos[2] * -1)
        mc.xform(self.cvs, r=1, t=negOfs, ws=1)
        mc.xform(self.cvs, r=1, t=pos, ws=1)

    def cv_drop(self):
        self.cv_move(0, -self.o.bb[1], 0)

    def cv_rotate(self, *args, **kwargs):
        """Rotate all cvs of the curve"""
        kwargs = kwargs or {"r": 1}
        if len(args) == 1:
            mc.rotate(args[0], 0, 0, self.cvs, **kwargs)
        else:
            mc.rotate(*args, self.cvs, **kwargs)

    def cv_scale(self, *args, atCVCetner=0, **kwargs):
        """Scale all cvs of the curve"""
        kwargs = kwargs or {"r": 1}

        if atCVCetner:
            clusterN = DagNode(mc.cluster(self.cvs)[1])
            p = mc.xform(clusterN, q=1, ws=1, rp=1)
            clusterN.delete()
            if len(args) == 1:
                mc.scale(args[0], args[0], args[0], self.cvs, pivot=p, **kwargs)
            else:
                mc.scale(*args, self.cvs, pivot=p, **kwargs)
        else:
            if len(args) == 1:
                mc.scale(args[0], args[0], args[0], self.cvs, **kwargs)
            else:
                mc.scale(*args, self.cvs, **kwargs)

    def getSideColor(self):
        """Return color depending on side"""
        color = Color.YELLOW
        if str(self.node).startswith("lf"):
            color = Color.L_BLUE
        elif str(self.node).startswith("rt"):
            color = Color.PINK
        return color

    def addGimbal(self, relScale=0.8, attrTgt=None, color=0):
        """Add a gimbal control below itself and attr at attrOn to link its visibility
        e.g.
            gbc = crv.addGimbal()        # crv.gimbalCtl  -> gbc.v
            crv.addGimbal(attrTgt=obj1)  # obj1.gimbalCtl -> gbc.v
        """
        gmb_ctl = self.duplicate(n=self.node + "_gmb")
        gmb_ctl | self
        gmb_ctl.cv_scale(relScale, atCVCetner=1)
        attrTgt = attrTgt or self
        attrTgt.a.add("gimbalCtl", min=0, max=1, dv=0, k=0) >> gmb_ctl.shape.a.v
        return gmb_ctl

    @property
    def cvs(self):
        """Return all cvs"""
        return mc.ls(self + ".cv[*]", fl=1)

    @property
    def lineW(self):
        """Return line width"""
        if self.shape:
            return self.shape.a.lineWidth
        else:
            return -1

    @lineW.setter
    def lineW(self, w):
        """Set line width"""
        if self.shape:
            self.shape.a.lineWidth.set(w)
