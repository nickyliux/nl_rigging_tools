import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils.color import Color
import logging


class JntNode(GrpNode):
    """Joint Node Class
    e.g.
        n = JntNode('existing')
        n = JntNode('new', r=5)
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

        GrpNode.__init__(
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
            from nl_modules.nodel.crv_node import CrvNode

            CrvNode(self) << shape

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

    def orientJnt(self, aim=(1, 0, 0), u=(0, 1, 0), **kwargs):
        """Orient joint"""
        # tgtRoot = JntNode(tgtRoot)
        for jnt in self.allChildrenJt2:
            child = jnt.children
            if len(child) > 0:
                child[0].parentToWorld()
                child[0].cstAim(jnt, aim=aim, u=u, keep=0, **kwargs)
                child[0] | jnt
            else:
                JntNode(jnt).resetOrient()

    def addProxyMesh(self, scale=1, scaler=None, aimDir=(1, 0, 0), skipEnd=0, p=None):
        """Add Proxy Mesh for joint
        e.g.
            jnt1.addProxyMesh()                 # proxy cube created
            jnt1_end.addProxyMesh(skipEnd=1)    # no proxy created
        """
        from nl_modules.utils import common

        if self.type != "joint":
            logging.error(f"{self.name} is NOT joint !")
            return

        size = self.a.radius.get() * 5 * scale
        name = self.name + "_pxGeo"
        child = self.childrenJt

        if child or (not skipEnd):
            dist = self.o.distanceTo(child[0]) if child else size
            proxy = DagNode(
                mc.polyCube(n=name, ax=aimDir, h=dist, w=size, d=size, cuv=4)[0]
            )
            # proxy = DagNode(
            #     mc.polyCylinder(
            #         n=name,
            #         r=size / 2,
            #         h=dist,
            #         ax=aimDir,
            #         subdivisionsAxis=8,
            #         subdivisionsHeight=3,
            #         subdivisionsCaps=1,
            #         ch=0,
            #     )[0]
            # )
            proxy.alignTo(self, p=p)
            proxyOfs = proxy.addOffsetGrp()

            if scaler:
                scaler >> proxy.a.s

            if len(child) >= 1:
                tgtChild = child[0]
                common.cstMulti(self, tgtChild, proxyOfs, cstType="poi", delete=1)
                tgtChild.cstAim(
                    proxyOfs,
                    aim=aimDir,
                    worldUpType="objectrotation",
                    worldUpObject=self,
                    keep=0,
                )
            #
            #   NOTE:  constraint must be after shader assignment,
            #   otherwise mc.sets(..) will show error
            #
            GREY = (0.5, 0.5, 0.5)
            COLOR = (0.7, 0.3, 0.3)
            common.assignShd("proxy_grey_shd", geo=proxy, color=GREY)
            common.assignShd("proxy_color_shd", geo=proxy, color=COLOR, faceID=[0, 2])

            self.cstParSca(proxyOfs, mo=1)
            return proxy

    @staticmethod
    def makeTwoJC(
        n, align=None, snap=None, align_end=None, pf="", ofs=None, r=1, color=4, p=None
    ):
        """Make two-joint chain according to aligning objects
        e.g.
            makeTwoJC('myJ')
            makeTwoJC('myJ', snap=pt1, ofs=(1,0,0))
        """
        j0 = JntNode(n, pf=pf, r=r, color=color, p=p)
        j1 = JntNode(n + "_end", pf=pf, r=r, color=color, p=j0)

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
    def makeTwoJC2(
        n,
        align=None,
        snap=None,
        align_end=None,
        pf="",
        aim=(1, 0, 0),
        u=(0, 1, 0),
        wu=(0, 1, 0),
        r=1,
        color=4,
        p=None,
        aimTgt=None,
    ):
        """Make two-joint chain according to aligning objects
        e.g.
            makeTwoJC('myJ')
            makeTwoJC('myJ', snap=pt1, ofs=(1,0,0))
        """
        j0 = JntNode(n, pf=pf, r=r, color=color, p=p)
        j1 = JntNode(n + "_end", pf=pf, r=r, color=color, p=j0)

        if align:
            j0.alignTo(align)
        if snap:
            j0.snapTo(snap)
        if align_end:
            j1.alignTo(align_end)
        if aim:
            j1.a.t.set(*aim)

        aimTgt.cstAim(j0, keep=0, aim=aim, u=u, wu=wu)
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
        color=6,
        addEndJ=0,
        p=None,
    ):
        """Build joint chain from curve
        e.g.
            makeChainFrCrv(crv, jntNum=10)           # curve direction
            makeChainFrCrv(crv, jntNum=10, crvDir=0) # reverse direction
        """

        joints = []
        mc.select(cl=1)
        if pf and pf[-1] != "_":
            pf += "_"

        for i in range(num):

            loc = DagNode("_#", nodeType="transform")
            mp = DagNode("_#", nodeType="motionPath")
            DagNode(crv).shape.a.worldSpace >> mp.a.geometryPath
            # mp.a.allCoordinates >> loc.a.t
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
            poci.a.position >> loc.a.translate

            aimCst.a.aimVector.set(*aimV)
            aimCst.a.constraintRotateX >> loc.a.rx
            aimCst.a.constraintRotateY >> loc.a.ry
            aimCst.a.constraintRotateZ >> loc.a.rz

            j = JntNode(f"{i}_{name}", pf=pf, align=loc, r=size, color=color)
            joints.append(j)

            mc.delete(mp, poci, aimCst, loc)

        root = joints[-1] if rev else joints[0]
        last = joints[0] if rev else joints[-1]

        for i in range(num - 1):
            if not rev:
                # j1 > j2 > ... > jn
                # joints[i + 1].cstAim(joints[i], aim=aimV, u=upV, wu=wuV, keep=0)
                if chain:
                    joints[i + 1] | joints[i]
            else:
                # j1 < j2 < ... < jn
                # negAim = (-aimV[0], -aimV[1], -aimV[2])
                # joints[i].cstAim(joints[i + 1], aim=negAim, u=upV, wu=wuV, keep=0)
                if chain:
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
                joints = [endJ] + joints  # 1st in list is the end joint

        if chain:
            if p:
                root | p
            if not rev:
                joints[0].freezeXf()
                joints[-1].resetOrient()
            else:
                joints[-1].freezeXf()
                joints[0].resetOrient()
        else:
            if p:
                [j | p for j in joints]

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
            j = JntNode(s + "_lineJnt", r=0, snap=s, p=parentJ, color=Color.BLUE)
            DagNode(s).cstPoi(j)
            parentJ = j
            j.a.showAttr()
        mc.select(cl=1)
