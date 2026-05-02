import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.utils.color import Color


class SrfNode(GrpNode):
    """Surface node class"""

    def __init__(
        self,
        node,
        pf="",
        sf="",
        snap=None,
        align=None,
        alignR=None,
        addOfs=0,
        p=None,
        uSeg=1,
        vSeg=1,
        ax=(0, 0, 1),
        size=1,
        lr=1,
        d=3,
    ):
        super().__init__(
            node,
            pf=pf,
            sf=sf,
            snap=snap,
            align=align,
            alignR=alignR,
            addOfs=addOfs,
            p=p,
        )
        if not self.shape:
            surfObj = DagNode(
                mc.nurbsPlane(ax=ax, w=size, lr=lr, d=d, v=vSeg, u=uSeg, ch=0)[0]
            )
            parentedSh = mc.parent(surfObj.shape, self, r=1, s=1)[0]
            mc.rename(parentedSh, f"{self.name}Shape#")
            mc.delete(surfObj)
            self.uSeg = uSeg
            self.vSeg = vSeg
            self.degU = d
            self.degV = d

        elif self.type == "nurbsSurface":
            self.uSeg = self.shape.a["spansU"].get()
            self.vSeg = self.shape.a["spansV"].get()
            self.degU = self.shape.a["degreeU"].get()
            self.degV = self.shape.a["degreeV"].get()
        else:
            logging.info("Non nurbsSurface detected.")

    @property
    def cvs(self):
        """Return all CVs"""
        return mc.ls(self + ".cv[*]", fl=1)

    @property
    def patches(self):
        """Return all patches"""
        return mc.ls(self + ".sf[*][*]", fl=1)

    @property
    def lengthU(self):
        """Return length in U"""
        return mc.arclen(self.shape + ".v[0]")

    @property
    def lengthV(self):
        """Return length in V"""
        return mc.arclen(self.shape + ".u[0]")

    def weightTo(self, joints, cvMatchJnt=0, **kwargs):
        """Weight surface to joints"""
        if self.exists():

            sc = mc.skinCluster(self, joints, bindMethod=0, fnw=1, tsb=1, **kwargs)[0]

            # spanV = self.a.spansUV.get()[1]
            # degV = self.a.degreeUV.get()[1]
            # last = spanV + degV - 1
            # cv = f"{self.shape}.cv[*][{last}]"

            # bind last cv to last joint
            # return
            # mc.skinPercent(sc, cv, transformValue=[(joints[-1], 1)])

            if cvMatchJnt:
                jntLen = len(joints)
                for i in range(jntLen):

                    id = i + 1
                    if i == 0:
                        id = "0:1"
                    elif i == jntLen - 1:
                        id = f"{i+1}:{i+2}"

                    cv = f"{self.shape}.cv[*][{id}]"
                    mc.skinPercent(sc, cv, transformValue=[(joints[i], 1)])
                    # print(i, cv, joints[i].name)

            # if len(joints) == 3:
            #     if self.uSeg == 5 and self.degU == 3:
            #         wList = [
            #             (1, 0, 0),
            #             (0.75, 0.25, 0),
            #             (0.5, 0.5, 0),
            #             (0.25, 0.75, 0),
            #             (0, 0.75, 0.25),
            #             (0, 0.5, 0.5),
            #             (0, 0.25, 0.75),
            #             (0, 0, 1),
            #         ]
            #         for i, w in enumerate(wList):
            #             mc.skinPercent(
            #                 skinClu,
            #                 f"{self.shape}.cv[{i}][*]",
            #                 transformValue=[
            #                     (joints[0], w[0]),
            #                     (joints[1], w[1]),
            #                     (joints[2], w[2]),
            #                 ],
            #             )

    @staticmethod
    def moveCloseToSurf(objList, surf=None):
        """Move objects close to surface"""
        if objList and surf:
            xf = DagNode("myXf#", nodeType="transform")
            cpos = DagNode("myCPOS#", nodeType="closestPointOnSurface")
            surf.shape.a.worldSpace >> cpos.a.inputSurface
            xf.a.t >> cpos.a.inPosition

            for i in range(len(objList)):
                xf.snapTo(objList[i])
                xf.a.t.set(*cpos.a.position.get())
                DagNode(objList[i]).snapTo(xf)

            cpos.delete()
            xf.delete()

    @staticmethod
    def buildRbSrf(
        pf="", crv=None, normal=1, snap=None, spans=3, p=None, alongZ=1, inheritsXf=1
    ):
        """Build ribbon surface from curve"""
        from nl_modules.nodel.crv_node import CrvNode

        crvLen = CrvNode(crv).length
        halfWidth = crvLen * 0.1 * normal

        p1 = (halfWidth, 0, 0) if alongZ else (0, 0, halfWidth)
        p2 = (-halfWidth, 0, 0) if alongZ else (0, 0, -halfWidth)

        sweepLine = CrvNode.buildLine(p1, p2, pf=pf, snap=snap)
        pathLine = CrvNode(
            mc.rebuildCurve(crv, rpo=0, rt=0, end=1, kr=0, kcp=0, kep=1, kt=0, s=spans)[
                0
            ]
        )
        rbSrf = SrfNode(
            mc.extrude(
                pathLine, sweepLine, fixedPath=1, n=pf + "_rbSrf_#", extrudeType=1
            )[0]
        )
        if p:
            rbSrf | p

        if inheritsXf == 0:
            rbSrf.a.inheritsTransform.set(0)

        mc.delete(pathLine, sweepLine)
        return rbSrf

    @staticmethod
    def buildRbJnt(
        num,
        pf="",
        size=1,
        surf=None,
        rigData=None,
        normalize=1,
        jntGrp=None,
        color=Color.RED,
    ):
        """Build ribbon joints from surface"""

        from nl_modules.nodel.jnt_node import JntNode
        from nl_modules.utils import common

        if num > 1:
            coord = [(0.5, i / (num - 1)) for i in range(num)]

            pin, pinXf = common.nlRivet2(
                geo=surf,
                coordList=coord,
                normalize=normalize,
                p=rigData,
                normal=2,
                tangent=1,
            )

            rbJnts = []
            for i, loc in enumerate(pinXf):
                jnt = JntNode(
                    f"{i}_rbj",
                    pf=pf,
                    align=loc,
                    r=size / num * 12,
                    color=color,
                    p=jntGrp,
                )
                loc.cstPar(jnt)
                rbJnts.append(jnt)

            return rbJnts
