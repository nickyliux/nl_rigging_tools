import logging
import maya.mel as mel
import maya.cmds as mc
import math
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils.color import Color
from nl_modules.utils import common, utils_node as ut

mel.eval("ikSpringSolver")
mel.eval("ik2Bsolver")


class IkNode(DagNode):
    """Build ik component with start and end joint.
    e.g.
        n = IkNode('name', sj=J1, ee=J2)
        n = IkNode('name', sj=J1, ee=J4, sol=2)
        n = IkNode('name', sj=J1, ee=J4, ikc=C1, pvc=C2, sol=1)
    """

    SOL_DICT = {
        0: "ikSCsolver",
        1: "ikRPsolver",
        2: "ikSplineSolver",
        3: "ikSpringSolver",
        4: "ik2Bsolver",
    }

    def __init__(
        self,
        node,
        pf="",
        rSz=1,
        sf="_ikh",
        sj=None,
        ee=None,
        jsf="",  # joint suffix
        sol=0,  # solver
        setting=None,
        ikc=None,
        pvc=None,
        createCrv=1,
        inputCrv=None,
        numSpans=3,
        limbScale=False,
        scaleFix=None,
        scaleFix2=None,
        quat=None,
        RIG_DATA=None,
        vis=1,
        p=None,
    ):
        if pf and pf[-1] != "_":
            pf += "_"
        name = pf + node + sf

        if mc.objExists(name):
            logging.warning("IK already exist.")
            return
        sj1 = sj + jsf
        ee1 = ee + jsf

        if not mc.objExists(sj1) or not mc.objExists(ee1):
            logging.warning(f"Missing joint {sj1} & {ee1}. Can't create IK")
            return
        DagNode.__init__(self, name)

        self.sj = DagNode(sj1)
        self.ee = DagNode(ee1)
        self.solver = sol
        self.ikc = ikc
        self.pvc = pvc
        self.setting = setting
        self.scaleFix = scaleFix
        self.scaleFix2 = scaleFix2
        self.pf = pf
        self.rSz = rSz
        self.softJ = None
        self.pvChainJ = None
        self.createIK(
            name,
            quat=quat,
            createCrv=createCrv,
            inputCrv=inputCrv,
            numSpans=numSpans,
            p=p,
        )
        ikJnt = mc.ikHandle(self.node, q=1, jl=1) + [self.ee]
        self.jnt = [DagNode(j) for j in ikJnt]
        self.chainLen = self.calcChainLen()
        self.localStretch = limbScale
        self.xDir = 1 if self.ee.a.tx.get() > 0 else -1
        self.RIG_DATA = RIG_DATA
        if vis == 0:
            mc.hide(self)
        self

    def createIK(
        self, node, quat=False, createCrv=1, inputCrv=None, numSpans=3, p=None
    ):
        solverName = IkNode.SOL_DICT[self.solver]
        ikh = (
            mc.ikHandle(
                n=node,
                sj=self.sj,
                ee=self.ee,
                solver=solverName,
                s="sticky",
                createRootAxis=0,
                rootOnCurve=1,
                snapCurve=0,
                parentCurve=0,
                scv=1,
                createCurve=1,
                numSpans=numSpans,
                rootTwistMode=0,
            )
            if createCrv
            else mc.ikHandle(
                n=node,
                sj=self.sj,
                ee=self.ee,
                solver=solverName,
                s="sticky",
                createRootAxis=0,
                rootOnCurve=1,
                snapCurve=0,
                parentCurve=0,
                scv=1,
                createCurve=0,
                c=inputCrv,
                rootTwistMode=0,
            )
        )
        if ikh:
            self.node = DagNode(ikh[0])
        else:
            return None

        if self.pvc:
            self.pvc.cstPvt(self.node)
        if quat:
            self.node.a.poleVector.set(0, 0, 0)
        if p:
            mc.parent(self.node, p)
        return self

    def calcChainLen(self):
        """Return total length of all bones"""
        d = 0
        for i in range(1, len(self.jnt)):
            d += self.jnt[i].o.distanceTo(self.jnt[i - 1])
        return d

    def getCrv(self):
        """Return curve data of SplineIK"""
        if self.solver == 2:
            crvSh = self.a.inCurve.inConnNode
            return CurveNode(crvSh.parent)

    @classmethod
    def stretchySpSS(cls, ikH=None, ctl=None, axis="tx", axisDir=1):
        """
        Add stretchy funciton for splineIK
        e.g.
            IkNode.stretchySpSS(ikH=ikH, ctl='ctl')
        """
        if ikH is None or ctl is None:
            logging.info("Require ikH and ctl input")
            return
        ikH = DagNode(ikH)
        ctl = DagNode(ctl)
        if ikH.type != "ikHandle":
            logging.info("No stretchy for non ikhandle")
            return
        solver = mc.ikHandle(ikH, q=1, sol=1)
        if solver != "ikSplineSolver":
            logging.info("No stretchy for non ikSplineSolver")
            return
        # ----------------------------------------
        jl = mc.ikHandle(ikH, q=1, jl=1)
        ee = mc.ikHandle(ikH, q=1, ee=1)
        ej = DagNode(ee).a.t.inConnNode
        jl = [DagNode(j) for j in jl]
        jl.append(ej)
        crv = ikH.a.inCurve.inConnNode.parent

        D = mc.arclen(crv)
        crvInfo = DepNode(mc.arclen(crv, ch=1))
        d = crvInfo.a.arcLength
        ks = ctl.a.add("stretchy", min=0, max=1, dv=1)
        ksMin = ctl.a.add("stretchMin", k=0, min=0, max=1, dv=1)
        ksMax = ctl.a.add("stretchMax", k=0, min=0, dv=1.1)
        ratio = (d / D - 1) * ks + 1

        for i in range(1, len(jl)):
            Di = jl[i - 1].o.distanceTo(jl[i])
            result = ut.clp_(ratio, min=ksMin, max=ksMax) * Di
            result * axisDir >> jl[i].a[axis]

    def stretchySp(self, on=0, axis="tx", axisDir=1):
        """Add stretchy logic to translate channel of joint chain"""
        if self.solver != 2:
            logging.error("Incorrect solver")
            return
        if not self.setting:
            logging.error("No setting control provided")
            return

        crv = self.getCrv()
        D = mc.arclen(crv.shape)
        crvInfo = DepNode(mc.arclen(crv.shape, ch=1))
        d = crvInfo.a.arcLength
        if self.scaleFix:
            d /= self.scaleFix
        if self.scaleFix2:
            d /= self.scaleFix2

        self.setting.a.addSep()
        ks = self.setting.a.add("stretchy", min=0, max=1, dv=1)
        ksMin = self.setting.a.add("stretchMin", k=0, min=0, max=1, dv=1)
        ksMax = self.setting.a.add("stretchMax", k=0, min=0, dv=1.1)
        ratio = (d / D - 1) * ks + 1

        for i in range(1, len(self.jnt)):
            Di = self.jnt[i - 1].o.distanceTo(self.jnt[i])
            result = ut.clp_(ratio, min=ksMin, max=ksMax) * Di
            tAttr = self.jnt[i].a[axis]
            result * axisDir >> tAttr

        return ratio

    def stretchyIk(self, pvPin=1, soft=0):
        """
                   J0
            d0 /   |   > Di[0]
        pv         J1             D = sum(Di[*])
            d1 \   |   > Di[1]
                   J2
        """
        # from nl_modules.nodel.loc_node import LocNode
        if not self.ikc:
            logging.error("ikc undefined !")
            return
        D = self.chainLen
        Di = []  # The length of each bone
        ks = self.ikc.a.add("stretchy", min=0, max=1, dv=0)
        kq = self.ikc.a.add("squashy", min=0, max=1, dv=0)

        for i in range(1, len(self.jnt)):
            Di.append(self.jnt[i - 1].o.distanceTo(self.jnt[i]))
            if self.localStretch:
                self.ikc.a.add("limbScale" + str(i), dv=1)

        dist_loc = LocNode("dist_loc#", pf=self.pf, snap=self.node)
        if self.parent:
            dist_loc | self.parent
        else:
            dist_loc | self.ikc

        d = ut.distDim_(self.jnt[0], dist_loc) / self.scaleFix
        if self.scaleFix2:
            d /= self.scaleFix2

        if pvPin:
            #
            #   With Pv pinning
            #
            if not self.pvc:
                logging.error("pvc undefined !")
                return
            if not self.setting:
                logging.error("setting undefined !")
                return
            if len(self.jnt) != 3:
                logging.debug("pin is for 3-pt joint chain")
                return

            kp = self.pvc.a.add("pvPin", min=0, max=1)
            div = d / D
            stretchyOutput = ut.blendN_(1, ut.max_(div, 1), w=ut.max_(ks, kp))
            squashyOutput = ut.blendN_(1, ut.min_(div, 1), w=kq)
            ratio = (div > 1).setCdn(ifTrue=stretchyOutput, ifFalse=squashyOutput)
            ratioSoft = (div > 1).setCdn(ifTrue=stretchyOutput, ifFalse=1)

            di = [
                ut.distDim_(self.pvc, self.jnt[0]) / self.scaleFix,
                ut.distDim_(self.pvc, dist_loc) / self.scaleFix,
            ]
            for i in range(1, len(self.jnt)):
                result = ut.blend2_(ratio * Di[i - 1], di[i - 1], w=kp) * self.xDir
                if self.localStretch:
                    result *= self.ikc.a[f"limbScale{i}"]
                result >> self.jnt[i].a.tx
        else:
            #
            #   Without Pv pinning
            #
            ratio = (ut.max_(d / D, 1) - 1) * ks + 1
            ratioSoft = ratio

            for i in range(1, len(self.jnt)):
                result = ratio * Di[i - 1] * self.xDir
                if self.localStretch:
                    result *= self.ikc.a[f"limbScale{i}"]
                result >> self.jnt[i].a.tx

        if soft:
            self.addSoft(
                d=d,
                ratio=ratioSoft,
                softParent=self.jnt[0].parent,
            )
        dist_loc.hide()

    def addSoft(self, d=None, ratio=None, softParent=None):
        """
        softJ    <- cstP  leg IK
        """
        from nl_modules.nodel.joint_node import JointNode

        dist = self.sj.o.distanceTo(self.ee)
        softJ = JointNode.makeTwoJChain(
            "softJ",
            pf=self.pf,
            snap=self.sj,
            ofs=(self.xDir * dist, 0, 0),
            r=dist / 100,
            p=softParent,
        )
        self.ee.cstAim(softJ[0], aim=(self.xDir, 0, 0), keep=False)
        softJ[0].freezeXf()

        ikH = IkNode(
            "soft",
            pf=softJ[0].name,
            sj=softJ[0],
            ee=softJ[1],
            p=self.RIG_DATA,
            quat=True,
        )
        softIkPosGrp = GroupNode(softJ[0].name + "_posGrp", snap=self.ee, p=self.parent)
        softIkPosGrp.cstPoi(ikH)
        softJ[1].cstPoi(self.node.addOffsetGrp())

        s = self.ikc.a.add("softIK", min=0, dv=0) * 0.01
        D = self.chainLen
        Ds = D * (1 - s)
        ds = D * (1 - s * math.e ** -(d - Ds))
        (((d > Ds).setCdn(ifTrue=ds, ifFalse=d)) * ratio * self.xDir >> softJ[1].a.tx)
        ikH.hide()
        self.softJ = softJ

    def build_pvfkPinSetup(self, ikTarget=None):
        """Build a two-joint chain for pv space"""
        from nl_modules.nodel.joint_node import JointNode

        dist = self.sj.o.distanceTo(self.ee)
        ofs = (self.xDir * dist, 0, 0)
        pvChainJ = JointNode.makeTwoJChain(
            "pvChainJ", pf=self.pf, snap=self.sj, ofs=ofs, p=self.sj.parent, r=self.rSz
        )
        self.ee.cstAim(pvChainJ[0], aim=(self.xDir, 0, 0), keep=False)
        pvChainJ[0].freezeXf()

        pinIk = IkNode(
            "pvChain",
            pf=pvChainJ[0].name,
            sj=pvChainJ[0],
            ee=pvChainJ[1],
            p=self.RIG_DATA,
            quat=1,
            vis=0,
        )
        ikTarget.cstPoi(pinIk)
        self.pvChainJ = pvChainJ

    def spline_twist_setup(self, *driver, upAxis="y", twistAxis="x"):
        if self.solver == 2:
            self.a.dTwistControlEnable.set(1)
            if upAxis == "z":
                self.a.dWorldUpAxis.set(3)
            # ----------------
            # One ctl
            # ----------------
            if len(driver) == 1:
                self.a.dWorldUpType.set(3)
                driver[0].a.worldMatrix >> self.a.dWorldUpMatrix
                if upAxis == "z":
                    self.a.dWorldUpVector.set(0, 0, 1)
            # ----------------
            # Two ctl
            # ----------------
            elif len(driver) == 2:
                self.a.dWorldUpType.set(4)
                driver[0].a.worldMatrix >> self.a.dWorldUpMatrix
                driver[1].a.worldMatrix >> self.a.dWorldUpMatrixEnd
                if upAxis == "+z":
                    self.a.dWorldUpVector.set(0, 0, 1)
                    self.a.dWorldUpVectorEnd.set(0, 0, 1)
                elif upAxis == "-z":
                    self.a.dWorldUpVector.set(0, 0, -1)
                    self.a.dWorldUpVectorEnd.set(0, 0, -1)
                if twistAxis == "+z":
                    self.a.dForwardAxis.set(4)
                elif twistAxis == "-z":
                    self.a.dForwardAxis.set(5)

    def spline_twist_setup2(self, *driver, twistAxis="+x"):
        """Add twist for spline IK using ROLL & TWIST attributes
        start_ctl.rx                >  ik. Roll
        -start_ctl.rx + end_ctl.rx  >  ik. Twist
        """
        if self.solver == 2:
            sign = twistAxis[0]
            axis = twistAxis[1]
            attr1 = driver[0].a["r" + axis]
            attr2 = driver[1].a["r" + axis]
            if sign == "+":
                attr1 >> self.a.roll
                (attr1 * -1) + attr2 >> self.a.twist
            elif sign == "-":
                attr1 * -1 >> self.a.roll
                attr1 + (-1 * attr2) >> self.a.twist

    # @staticmethod
    # def addTwistReader(target, pf='', p=None):
    #     """
    #         Args:
    #         target:  target object to create reader
    #         idx:     index
    #         p:       parent object
    #         axis:    -1 for -X, 1 for +X
    #
    #     Returns:     locator
    #
    #     e.g.
    #     reader grp   <--pa  target
    #     |__ reader   am-->  target children
    #
    #     """
    #     if pf and pf[-1] != '_':
    #         pf += '_'
    #
    #     reader_loc = LocNode(f"{pf}{target.name}_reader", size=8, p=p)
    #     zro = reader_loc.addOffsetGrp()
    #
    #     target.cstPar(zro)
    #     child = target.children
    #     axis = 1 if child[0].a.tx.get() > 0 else -1
    #
    #     if child:
    #         child[0].cstAim(
    #             reader_loc,
    #             aimVector=(axis, 0, 0),
    #             upVector=(0, 0, 1),
    #             worldUpType="objectrotation",
    #             worldUpVector=(0, 0, 1),
    #             worldUpObject=child[0],
    #         )
    #     return reader_loc
