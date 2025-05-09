import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils.color import Color
import logging

CDR = Color.D_RED
CBL = Color.BLUE


class JointNode(GroupNode):
    """Joint Node Class
    e.g.
        n = JointNode('existing')
        n = JointNode('new', r=5)
    """

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
    ):
        nodeExists = 0
        name = pf + node + sf
        if mc.objExists(name):
            nodeExists = 1

        GroupNode.__init__(
            self,
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
            from nl_modules.nodel.curve_node import CurveNode

            CurveNode(self) << shape

        if not nodeExists:
            self.color = color or 0

        if reset:
            self.resetOrient()
            self.resetXf()

    def setRadius(self, v, rel=False):
        """Set joint radius, rel=True for relative to current value"""
        if rel:
            self.a.radius.set2(v, mul=1)
        else:
            self.a.radius.set(v)

    def orientJoint(self, ro="xyz"):
        """Orient joint to specific axis order"""
        mc.joint(self.name, e=1, orientJoint=ro, zso=1)

    def resetOrient(self):
        """Reset joint orient"""
        self.a.jointOrient.reset()

    def resetXf(self):
        """Reset joint orient"""
        self.a.t.set(0, 0, 0)
        self.a.r.set(0, 0, 0)
        self.a.s.set(1, 1, 1)

    def addProxyMesh(self, scale=1, scaler=None, aimDir=(1, 0, 0), skipEnd=0, p=None):
        """Add Proxy Mesh for joint
        e.g.
            jnt1.addProxyMesh()                 # proxy cube created
            jnt1_end.addProxyMesh(skipEnd=1)    # no proxy created
        """
        from nl_modules.utils import common

        if self.type != "joint":
            logging.error(f"{self.name} is NOT a joint !")
            return

        size = self.a.radius.get() * 5 * scale

        name = self.name + "_pxGeo"
        child = self.childrenJt

        if child or (not skipEnd):
            dist = self.o.distanceTo(child[0]) if child else size
            cube = mc.polyCube(n=name, ax=aimDir, h=dist, w=size, d=size, cuv=4)[0]
            proxyN = DagNode(cube)
            proxyN.alignTo(self, p=p)
            if scaler:
                scaler >> proxyN.a.s

            if len(child) >= 1:
                tgtChild = child[0]
                common.cstMulti(self, tgtChild, proxyN, cstType="poi", delete=1)
                tgtChild.cstAim(
                    proxyN,
                    keep=0,
                    aim=aimDir,
                    worldUpType="objectrotation",
                    worldUpObject=self,
                )

            # NOTE:  constraint must be after shader assignment, otherwise mc.sets(..) will sohw error
            common.assignProxyShader(proxyN)
            self.cstPar(proxyN, mo=1)
            return proxyN

    @staticmethod
    def makeTwoJChain(
        n,
        align=None,
        snap=None,
        align_end=None,
        pf="",
        ofs=None,
        r=1,
        color=CDR,
        p=None,
    ):
        """Make two-joint chain according to aligning objects
        e.g.
            makeTwoJChain('myJ')
            makeTwoJChain('myJ', snap=pt1, ofs=(1,0,0))
        """
        j0 = JointNode(n, pf=pf, r=r, color=color, p=p)
        j1 = JointNode(n + "_end", pf=pf, r=r, color=color, p=j0)

        if align:
            j0.alignTo(align)
        if snap:
            j0.snapTo(snap)
        if align_end:
            j1.alignTo(align_end)
        if ofs:
            j1.a.t.set(*ofs)
        return [j0, j1]

    @staticmethod
    def makeJCFrCrv(
        crv,
        name="fkj",
        pf="",
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
        """Build joint chain from curve
        e.g.
            makeChainFrCrv(crv, jntNum=10)           # curve direction
            makeChainFrCrv(crv, jntNum=10, crvDir=0) # reverse direction
        """
        loc = DagNode("_#", nodeType="transform")
        mp = DagNode("_#", nodeType="motionPath")
        DagNode(crv).shape.a.worldSpace >> mp.a.geometryPath
        mp.a.allCoordinates >> loc.a.t
        mp.a.fractionMode.set(1)

        joints = []
        mc.select(cl=1)
        if pf and pf[-1] != "_":
            pf += "_"
        for i in range(num):
            mp.a.uValue.set(i / (num - 1))
            j = JointNode(f"{i}_{name}", pf=pf, snap=loc, r=size, color=color)
            joints.append(j)

        root = joints[-1] if rev else joints[0]
        last = joints[0] if rev else joints[-1]
        mc.delete(loc, mp)

        for i in range(num - 1):
            if not rev:
                # j1 > j2 > ... > jn
                joints[i + 1].cstAim(joints[i], aim=aimV, u=upV, wu=wuV, keep=0)
                joints[i + 1] | joints[i]
            else:
                # j1 < j2 < ... < jn
                negAim = (-aimV[0], -aimV[1], -aimV[2])
                joints[i].cstAim(joints[i + 1], aim=negAim, u=upV, wu=wuV, keep=0)
                joints[i] | joints[i + 1]
        last.resetOrient()
        if addEndJ:
            endJ = last.duplicate(n=last + "_end")
            endJ | last
            translate = last.a.t.get()
            endJ.a.t.set(*translate)
            if not rev:
                joints.append(endJ)
            else:
                joints = [endJ] + joints  # first in list is end joint
        if p:
            root | p
        if not rev:
            joints[0].freezeXf()
        else:
            joints[-1].freezeXf()
        return joints

    @staticmethod
    def buildJntLineSel():
        """Build fake lines with joint chain of radius 0
        e.g.
            Select loc1, loc2, loc3, run buildJntLineSel()

            loc1_lineJnt   # poiCst by loc1
                loc2_lineJnt   # poiCst by loc2
                    loc3_lineJnt   # poiCst by loc3
        """
        parentJ = None
        for s in mc.ls(sl=1):
            j = JointNode(s + "_lineJnt", r=0, snap=s, p=parentJ, color=CBL)
            DagNode(s).cstPoi(j)
            parentJ = j
            j.a.showAttr()
        mc.select(cl=1)
