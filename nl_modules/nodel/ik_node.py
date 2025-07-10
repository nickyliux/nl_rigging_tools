import logging
import math
import maya.mel as mel
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.utils import utils_node as ut

mel.eval("ikSpringSolver")
mel.eval("ik2Bsolver")

from enum import Enum


class Solver(Enum):
    """Enum for IK solvers"""

    SC = "ikSCsolver"
    RP = "ikRPsolver"
    SPLINE = "ikSplineSolver"
    SPRING = "ikSpringSolver"
    TWO_BONE = "ik2Bsolver"


class IkNode(DagNode):
    """Class for creating IK handles in Maya. It supports various solvers and can create IK handles"""

    def __init__(
        self,
        node,
        pf="",
        rSz=1,
        sf="_ikh",
        sj=None,
        ee=None,
        jsf="",
        solver=Solver.SC,
        setting=None,
        ikc=None,
        pvc=None,
        createCrv=1,
        inputCrv=None,
        numSpans=3,
        limbScale=False,
        scaleFix=None,
        scaleFix2=None,
        scaleFix3=None,
        quat=None,
        RIG_DATA=None,
        vis=1,
        p=None,
    ):
        # Validate and build the IK handle name
        name = self._validate_and_build_name(node, pf, sf)
        if name is None:
            return
        
        # Validate joints exist
        sj1, ee1 = self._validate_joints(sj, ee, jsf)
        if sj1 is None or ee1 is None:
            return
        
        # Initialize parent class
        DagNode.__init__(self, name)
        
        # Assign instance attributes
        self._assign_attributes(sj1, ee1, solver, ikc, pvc, setting, scaleFix, 
                              scaleFix2, scaleFix3, pf, rSz, limbScale, RIG_DATA)
        
        # Create the IK handle and setup joints
        self._create_ik_handle(name, quat, createCrv, inputCrv, numSpans, p)
        
        # Finalize setup
        self._finalize_setup(vis)

    def _validate_and_build_name(self, node, pf, sf):
        """
        Validate and build the IK handle name.
        
        Args:
            node (str): Base node name
            pf (str): Prefix
            sf (str): Suffix
            
        Returns:
            str: The constructed name, or None if validation fails
        """
        if pf and pf[-1] != "_":
            pf += "_"
        name = pf + node + sf

        if mc.objExists(name):
            logging.warning("IK already exist.")
            return None
        
        return name

    def _validate_joints(self, sj, ee, jsf):
        """
        Validate that the start joint and end effector exist.
        
        Args:
            sj (str): Start joint name
            ee (str): End effector name
            jsf (str): Joint suffix
            
        Returns:
            tuple: (start_joint_name, end_effector_name) or (None, None) if validation fails
        """
        sj1 = sj + jsf
        ee1 = ee + jsf

        if not mc.objExists(sj1) or not mc.objExists(ee1):
            logging.warning(f"Missing joint {sj1} & {ee1}. Can't create IK")
            return None, None
        
        return sj1, ee1

    def _assign_attributes(self, sj1, ee1, solver, ikc, pvc, setting, scaleFix, 
                          scaleFix2, scaleFix3, pf, rSz, limbScale, RIG_DATA):
        """
        Assign instance attributes from the provided parameters.
        
        Args:
            sj1 (str): Start joint name
            ee1 (str): End effector name
            solver (Solver): IK solver type
            ikc: IK control object
            pvc: Pole vector control object
            setting: Setting control object
            scaleFix: Scale fix value
            scaleFix2: Second scale fix value
            scaleFix3: Third scale fix value
            pf (str): Prefix
            rSz (float): Rig size
            limbScale (bool): Local stretch flag
            RIG_DATA: Rig data object
        """
        self.sj = DagNode(sj1)
        self.ee = DagNode(ee1)
        self.solver = solver
        self.ikc = ikc
        self.pvc = pvc
        self.setting = setting
        self.scaleFix = scaleFix
        self.scaleFix2 = scaleFix2
        self.scaleFix3 = scaleFix3
        self.pf = pf
        self.rSz = rSz
        self.softJ = None
        self.pvChainJ = None
        self.localStretch = limbScale
        self.RIG_DATA = RIG_DATA

    def _create_ik_handle(self, name, quat, createCrv, inputCrv, numSpans, p):
        """
        Create the IK handle and setup related joints.
        
        Args:
            name (str): IK handle name
            quat (bool): Quaternion flag
            createCrv (bool): Create curve flag
            inputCrv: Input curve
            numSpans (int): Number of spans
            p: Parent object
        """
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

    def _finalize_setup(self, vis):
        """
        Finalize the IK node setup with computed attributes and visibility.
        
        Args:
            vis (int): Visibility flag (0 to hide, 1 to show)
        """
        self.chainLen = self.calcChainLen()
        self.xDir = 1 if self.ee.a.tx.get() > 0 else -1
        if vis == 0:
            mc.hide(self)
        self

    def createIK(
        self, node, quat=False, createCrv=1, inputCrv=None, numSpans=3, p=None
    ):
        """Create an IK handle with the specified parameters."""
        ikh_args = dict(
            n=node,
            sj=self.sj,
            ee=self.ee,
            solver=self.solver.value,
            s="sticky",
            createRootAxis=0,
            rootOnCurve=1,
            snapCurve=0,
            parentCurve=0,
            scv=1,
            rootTwistMode=0,
        )
        if createCrv:
            ikh_args["createCurve"] = 1
            ikh_args["numSpans"] = numSpans
        else:
            ikh_args["createCurve"] = 0
            ikh_args["c"] = inputCrv

        ikh = mc.ikHandle(**ikh_args)
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
        """Calculate the length of the joint chain"""
        d = 0
        for i in range(1, len(self.jnt)):
            d += self.jnt[i].o.distanceTo(self.jnt[i - 1])
        return d

    def getCrv(self):
        """Get the curve associated with the IK handle"""
        if self.solver == Solver.SPLINE:
            crvSh = self.a.inCurve.inConnNode
            return CrvNode(crvSh.parent)

    @classmethod
    def stretchySpSS(
        cls, ikH=None, ctl=None, axis="tx", axisDir=1, minDv=0.9, maxDv=1.1
    ):
        """Add stretchy logic to translate channel of ikHandle with spline solver."""

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
        ksMin = ctl.a.add("stretchMin", k=0, min=0, max=1, dv=minDv)
        ksMax = ctl.a.add("stretchMax", k=0, min=0, dv=maxDv)
        ratio = (d / D - 1) * ks + 1

        for i in range(1, len(jl)):
            Di = jl[i - 1].o.distanceTo(jl[i])
            result = ut.clp_(ratio, min=ksMin, max=ksMax) * Di
            result * axisDir >> jl[i].a[axis]

    def stretchySp(self, on=0, axis="tx", axisDir=1, minDv=0.9, maxDv=1.1):
        """Add stretchy logic to translate channel of ikHandle with spline solver."""

        if self.solver != Solver.SPLINE:
            raise ValueError("Incorrect solver.")
        if not self.setting:
            raise ValueError("No setting control given.")

        crv = self.getCrv()
        D = mc.arclen(crv.shape)
        crvInfo = DepNode(mc.arclen(crv.shape, ch=1))
        d = crvInfo.a.arcLength
        if self.scaleFix:
            d /= self.scaleFix
        if self.scaleFix2:
            d /= self.scaleFix2

        ks = self.setting.a.add("stretchy", min=0, max=1, dv=1)
        ksMin = self.setting.a.add("stretchMin", k=1, min=0, max=1, dv=minDv)
        ksMax = self.setting.a.add("stretchMax", k=1, min=0, dv=maxDv)
        ratio = (d / D - 1) * ks + 1

        for i in range(1, len(self.jnt)):
            Di = self.jnt[i - 1].o.distanceTo(self.jnt[i])
            result = ut.clp_(ratio, min=ksMin, max=ksMax) * Di
            if self.scaleFix2:
                result *= self.scaleFix2
            if self.scaleFix3:
                result *= self.scaleFix3
            tAttr = self.jnt[i].a[axis]
            if axisDir == 1:
                result >> tAttr
            elif axisDir == -1:
                result * -1 >> tAttr

        return ratio

    def stretchyIk(self, pvPin=1, soft=0):
        """
                   J0
            d0 /   |   > Di[0]
        pv         J1             D = sum(Di[*])
            d1 \   |   > Di[1]
                   J2
        """
        if not self.ikc:
            raise ValueError("ikc undefined.")

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
            if not self.pvc:
                raise ValueError("pvc undefined.")
            if not self.setting:
                raise ValueError("setting undefined !")
            if len(self.jnt) != 3:
                raise ValueError("pin is for 3-pt joint chain")

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
            # Without Pv pinning
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
        """Add a soft IK setup to the IK handle."""
        from nl_modules.nodel.jnt_node import JntNode

        softJ = JntNode.makeTwoJC2(
            "softJ",
            pf=self.pf,
            snap=self.sj,
            aim=(self.xDir, 0, 0),
            u=(0, self.xDir, 0),
            p=softParent,
            aimTgt=self.ee,
            color=22,
        )
        ikH = IkNode(
            "soft",
            pf=softJ[0].name,
            sj=softJ[0],
            ee=softJ[1],
            p=self.RIG_DATA,
            quat=True,
        )
        softIkPosGrp = GrpNode(softJ[0].name + "_posGrp", snap=self.ee, p=self.parent)
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
        """Build a pole vector FK pin setup for the IK handle."""
        from nl_modules.nodel.jnt_node import JntNode

        pvChainJ = JntNode.makeTwoJC2(
            "pvChainJ",
            pf=self.pf,
            snap=self.sj,
            p=self.sj.parent,
            r=self.rSz,
            aim=(self.xDir, 0, 0),
            u=(0, self.xDir, 0),
            aimTgt=self.ee,
            color=5,
        )
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
        """Setup twist for spline IK using worldUpMatrix and worldUpVector attributes."""

        if self.solver == Solver.SPLINE:
            self.a.dTwistControlEnable.set(1)
            if upAxis == "z":
                self.a.dWorldUpAxis.set(3)
            #
            #   1 ctl
            #
            if len(driver) == 1:
                self.a.dWorldUpType.set(3)
                driver[0].a.worldMatrix >> self.a.dWorldUpMatrix
                if upAxis == "z":
                    self.a.dWorldUpVector.set(0, 0, 1)
            #
            #   2 ctl
            #
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
        """Setup twist for spline IK using roll and twist attributes."""

        if self.solver == Solver.SPLINE:
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
