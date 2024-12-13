import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils.color import Color
import logging


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
            # for joint
            r=None,
            color=0,
    ):
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
        self.color = color or 0
        # self.a.radius.set(r or 1)

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

    def addProxyMesh(self, size=1, aimDir=(1, 0, 0), skipEnd=0, p=None):
        """Add Proxy Mesh for joint
        e.g.
            jnt1.addProxyMesh(size=2)                   # proxy cube created
            jnt1_end.addProxyMesh(size=2, skipEnd=1)    # no proxy created
        """
        from nl_modules.utils import common
        
        if size <= 0:
            logging.error("Proxy size <= 0")
            return
        if self.type != "joint":
            logging.error(f"{self.name}: is NOT a joint !")
            return

        name = self.name + "_pxGeo"
        child = self.childrenJt

        if child or (not skipEnd):
            # ADD PROXY
            dist = self.o.distanceTo(child[0]) if child else size
            cube = mc.polyCube(n=name, ax=aimDir, h=dist, w=size, d=size)[0]
            proxyN = DagNode(cube)
            proxyN.alignTo(self, p=p)

            if len(child) >= 1:
                tgtChild = child[0]
                common.cstMulti(self, tgtChild, proxyN, cstType="poi", delete=1)
                tgtChild.cstAim(proxyN, keep=0, aim=aimDir, worldUpType="objectrotation", worldUpObject=self)

            # ASSIGN SHADER
            common.assignProxyShader(proxyN)

            # Constraint must be after shader assignment
            # Or mc.sets(..) will show warning
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
            color=Color.APPLE,
            p=None
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
    def makeJChainFrCrv(
            crv,
            name="fkJ",
            jntNum=2,  # num of joints
            crvDir=1,  # along curve direction
            r=1,
            pf="",
            wu=None,  # world up direction
            p=None,
            color=1,
            addEnd=0  # adding an end joint
    ):
        """Build joint chain from curve
        e.g.
            makeChainFrCrv(crv, jntNum=10)           # curve direction
            makeChainFrCrv(crv, jntNum=10, crvDir=0) # reverse direction
        """
        if wu is None:
            wu = [0, 1, 0]

        loc = DagNode("_#", nodeType="transform")
        mp = DagNode("_#", nodeType="motionPath")

        DagNode(crv).shape.a.worldSpace >> mp.a.geometryPath
        mp.a.allCoordinates >> loc.a.t
        mp.a.follow.set(1)
        mp.a.fractionMode.set(1)
        mp.a.frontAxis.set(0)  # x
        mp.a.upAxis.set(1)  # y
        mp.a.worldUpType.set(3)  # Vector
        mp.a.worldUpVector.set(*wu)

        joints = []
        mc.select(cl=1)
        for i in range(jntNum):
            mp.a.uValue.set(i / (jntNum - 1))
            j = JointNode(pf + "_" + name + "_#", align=loc, r=r, color=color)
            joints.append(j)

        mc.delete(loc, mp)

        for i in range(jntNum - 1):
            if crvDir:
                joints[i + 1] | joints[i]
            else:
                joints[i] | joints[i + 1]
        if crvDir:
            # Root: j1 > j2 > ... > j4
            # Root: j1 > j2 > ... > j4 > j4_end
            if addEnd:
                endJ = joints[-1].duplicate(n=joints[-1] + "_end")
                endJ | joints[-1]
                translate = joints[-1].a.t.get()
                endJ.a.t.set(*translate)
                joints.append(endJ)
            if p:
                joints[0] | p
                joints[0].freezeXf()
                joints[0].resetOrient()
        else:
            # Root: j1 < j2 < ... < j4
            # Root: j1_end < j1 < j2 < ... < j4
            if addEnd:
                endJ = joints[0].duplicate(n=joints[0] + "_end")
                endJ | joints[0]
                translate = joints[0].a.t.get()
                endJ.a.t.set(*translate)
                joints = [endJ] + joints
            if p:
                joints[-1] | p
                joints[-1].freezeXf()
                joints[-1].resetOrient()
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
            j = JointNode(s + "_lineJnt", r=0, snap=s, p=parentJ, color=Color.L_BLUE)
            DagNode(s).cstPoi(j)
            parentJ = j
            j.a.showAttr()
        mc.select(cl=1)
