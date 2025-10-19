import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils.color import Color

REF_UP_LOC = "ref_up_loc"


class JntNode(GrpNode):
    """Joint Node class, inherits from GrpNode."""

    def __init__(
        self,
        node,
        pf="",
        sf="",
        align=None,
        alignR=None,
        snap=None,
        addOfs=0,
        p=None,
        shape=None,
        color=0,
        r=None,
        reset=0,
        ro=0,
    ):
        nodeExists = 0
        if DagNode(pf + node + sf).exists():
            nodeExists = 1

        super().__init__(
            node,
            nodeType="joint",
            pf=pf,
            sf=sf,
            snap=snap,
            align=align,
            alignR=alignR,
            addOfs=addOfs,
            radius=r,
            p=p,
        )
        if shape:
            CrvNode(self) << shape

        if not nodeExists:
            self.color = color or 0

        if reset:
            self.resetOrient()
            self.resetXf()
        if ro:
            self.a.ro.set(ro)

    def setRadius(self, v, rel=0):
        """Set the radius of the joint"""

        if rel:
            self.a.radius.set2(v, mul=1)
        else:
            self.a.radius.set(v)

    def orientJoint(self, ro="xyz"):
        """Orient joint to the current rotation order"""

        mc.joint(self.name, e=1, orientJoint=ro, zso=1)

    def resetOrient(self):
        """Reset joint orient"""

        self.a.jointOrient.reset()

    def resetXf(self):
        """Reset joint transform"""

        self.a.t.set(0, 0, 0)
        self.a.r.set(0, 0, 0)
        self.a.s.set(1, 1, 1)

    def orientJnt(self, aim=(1, 0, 0), u=(0, 1, 0), **kwargs):
        """Orient joint to aim direction"""

        for jnt in self.allChildrenJt2:
            child = jnt.children
            if len(child) > 0:
                child[0].parentToWorld()
                child[0].cstAim(jnt, aim=aim, u=u, keep=0, **kwargs)
                child[0] | jnt
            else:
                JntNode(jnt).resetOrient()

    def buildCylinder(self, n, r, h, ax, div, p):
        """Build a cylinder mesh for the joint proxy."""
        proxy = DagNode(
            mc.polyCylinder(
                n=n, r=r, h=h, ax=ax, subdivisionsAxis=8, subdivisionsHeight=div, ch=0
            )[0]
        )
        mc.polySoftEdge(angle=0, ch=0)
        proxy.alignTo(self, p=p)
        return proxy

    def genProxyMesh(self, scaler=None, aimDir=(1, 0, 0), skipEnd=0, p=None):
        """Add a proxy mesh for the joint."""
        from nl_modules.utils import common

        proxy_name = f"{self.name}_pxGeo"
        if DagNode(proxy_name).exists():
            return None

        children = self.childrenJt
        base_rad = self.a.radius.get() * 5
        prx_rad_scale = self.a["proxyRadiusScale"].get() or 1
        prx_div = self.a["proxyDiv"].get() or 2
        prx_height = self.a["proxyHeight"].get()
        prx_up = self.a["proxyUp"].get()
        if prx_up:
            aimDir = (0, 1, 0) if prx_up == 1 else (0, 0, 1)

        height = base_rad
        if prx_height is None:
            if children:
                height = self.o.distanceTo(children[0]) * 0.8
        else:
            height = prx_height

        if not skipEnd:

            proxy = self.buildCylinder(
                proxy_name, base_rad * prx_rad_scale, height, aimDir, prx_div, p
            )
            proxy_offset = proxy.addOffsetGrp()

            if scaler is not None:
                scaler >> proxy.a.s

            if prx_height is None and children:
                common.cstMulti(self, *children, proxy_offset, cstType="poi", delete=1)

            if children and len(children) == 1:
                tgt_child = children[0]
                tgt_child.cstAim(
                    proxy_offset,
                    aim=aimDir,
                    worldUpType="objectrotation",
                    worldUpObject=self,
                    keep=0,
                )

            # Assign shader before constraints to avoid Maya errors
            common.assignPresetShd([proxy])
            self.cstParSca(proxy_offset, mo=1)
            return proxy
        return None

    @staticmethod
    def makeTwoJointChain(
        n,
        align=None,
        snap=None,
        align_end=None,
        pf="",
        rad=1,
        p=None,
        offset=None,
        aimTgt=None,
        u=(0, 1, 0),
        wu=(0, 1, 0),
        color=Color.L_BLUE,
    ):
        """Create a two-joint chain with optional alignment and constraints."""

        j0 = JntNode(n, pf=pf, r=rad, p=p, color=color)
        j1 = JntNode(n + "_end", pf=pf, r=rad, p=j0, color=color)

        if align:
            j0.alignTo(align)
        if snap:
            j0.snapTo(snap)
        if align_end:
            j1.alignTo(align_end)
        if offset:
            j1.a.t.set(*offset)

        if aimTgt:
            aimTgt.cstAim(j0, keep=0, aim=offset, u=u, wu=wu)
            aimTgt.cstPoi(j1, keep=0)
            j0.freezeXf()

        return [j0, j1]

    @staticmethod
    def createJntFrCrv(
        crv,
        chain=1,
        name="fkj",
        pf="temp",
        num=2,
        rev=0,
        aimV=(0, 0, 1),
        upV=(0, 1, 0),
        wuV=(0, 1, 0),
        size=1,
        color=Color.BLUE,
        addEndJ=0,
        p=None,
    ):
        """Create a joint chain from a curve."""
        joints = []
        mc.select(cl=1)
        if pf and pf[-1] != "_":
            pf += "_"

        for i in range(num):
            grp = DagNode("_#", nodeType="transform")
            mp = DagNode("_#", nodeType="motionPath")
            DagNode(crv).shape.a.worldSpace >> mp.a.geometryPath
            mp.a.fractionMode.set(1)

            poci = DagNode("poci_#", nodeType="pointOnCurveInfo")
            poci.a.turnOnPercentage.set(1)
            poci.a.parameter.set(i / (num - 1))
            DagNode(crv).shape.a.worldSpace >> poci.a.inputCurve
            aimCst = DagNode("aimCst_#", nodeType="aimConstraint")

            mp.a.uValue.set(i / (num - 1))
            mc.connectAttr(
                f"{poci}.tangent", f"{aimCst}.target[0].targetTranslate", f=1
            )
            poci.a.position >> grp.a.translate

            aimCst.a.aimVector.set(*aimV)
            aimCst.a.constraintRotateX >> grp.a.rx
            aimCst.a.constraintRotateY >> grp.a.ry
            aimCst.a.constraintRotateZ >> grp.a.rz

            j = JntNode(f"{i}_{name}", pf=pf, align=grp, r=size, color=color)
            joints.append(j)

            mc.delete(mp, poci, aimCst, grp)

        root = joints[-1] if rev else joints[0]
        last = joints[0] if rev else joints[-1]

        for i in range(num - 1):
            if not rev:
                if chain:
                    joints[i + 1] | joints[i]
            else:
                if chain:
                    joints[i] | joints[i + 1]

        if addEndJ:
            endJ = last.duplicate(n=last + "_end")
            endJ | last
            translate = last.a.t.get()
            endJ.a.t.set(*translate)
            if not rev:
                joints.append(endJ)
            else:
                joints = [endJ] + joints  # 1st in list is the end joint

        if p:
            root | p

        return joints

    @staticmethod
    def buildJntLineSel():
        """Build a joint line from selected objects."""

        parentJ = None
        for s in mc.ls(sl=1):
            j = JntNode(s + "_lineJnt", r=0, snap=s, p=parentJ)
            DagNode(s).cstPoi(j)
            parentJ = j
            j.a.showAttr()
        mc.select(cl=1)

    @staticmethod
    def createRefUpLoc():
        """Create reference up locators for selected joints."""
        sel = mc.ls(sl=1, type="joint")
        if not sel:
            logging.warning("No joints selected.")
            return
        loc = LocNode(REF_UP_LOC, align=sel[0], size=5)
        loc.set_LRA()

    @staticmethod
    def reOrientSel():
        """Reorient selected joints."""
        sel = mc.ls(sl=1, type="joint")
        if not sel:
            logging.warning("No joints selected.")
            return

        JntNode(sel[0]).reOrient()

    def setDrawStyle(self, style=2):
        """Set the draw style of the joint."""
        if style not in [0, 1, 2, 3]:
            logging.warning("Invalid style. Use 0, 1, 2, or 3.")
            return
        self.a.drawStyle.set(style)

    def reOrient(self, upRef=None, xDir=1, up=(0, 1, 0)):
        """Orient joints below this node"""
        all_jnts = self.allChildrenJt2

        if not all_jnts or len(all_jnts) < 2:
            logging.warning("Not enough joints found below to orient.")
            return

        upLoc = None
        if DagNode(upRef).exists():
            upLoc = LocNode("upLoc_#", align=upRef)
        else:
            upLoc = DagNode(REF_UP_LOC)
            if not upLoc.exists():
                upLoc = LocNode("upLoc_#", align=self)

        aimLoc = LocNode("aimLoc_#")

        for jnt in all_jnts:
            child_jnts = jnt.childrenJt
            if child_jnts and len(child_jnts) == 1:
                tgt = child_jnts[0]
                tgt.parentToWorld()
                aimLoc.snapTo(tgt)
                aimLoc.cstAim(
                    jnt,
                    aim=(xDir, 0, 0),
                    worldUpType="objectrotation",
                    worldUpObject=upLoc,
                    upVector=up,
                    keep=0,
                )
                jnt.freezeXf()
                tgt | jnt
            else:
                JntNode(jnt).resetOrient()

        mc.delete(upLoc, aimLoc)
        mc.select(cl=1)
