import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode


class SrfNode(GrpNode):
    """Surface Node Class
    e.g.
        n = SrfNode('existing')
    """

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
        # For surface
        uSeg=1,
        vSeg=1,
        ax=(0, 0, 1),
        size=1,
        lr=1,
        d=3,
    ):
        GrpNode.__init__(
            self,
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
            mc.rename(parentedSh, self.name + "Shape#")
            mc.delete(surfObj)
            self.uSeg = uSeg
            self.vSeg = vSeg
            self.degU = d

        elif self.type == "nurbsSurface":
            self.uSeg = self.shape.a.spansU.get()
            self.vSeg = self.shape.a.spansV.get()
            self.degU = self.shape.a.degreeU.get()
        else:
            logging.info("Non nurbsSurface detected.")

    @property
    def cvs(self):
        """Return all cv"""
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

    def weightTo(self, joints, chain=1, **kwargs):
        if self.exists():
            skin_clu = mc.skinCluster(self, joints, tsb=1, **kwargs)[0]
            #
            #   For each joint set cv weight
            #
            if chain:
                spansUV = self.a.spansUV.get()[1]
                degUV = self.a.degreeUV.get()[1]
                cv = f"{self.shape}.cv[*][{spansUV + degUV - 1}]"
                mc.skinPercent(skin_clu, cv, transformValue=[(joints[-1], 1)])

                for i in range(len(joints)):
                    mc.skinPercent(
                        skin_clu,
                        f"{self.shape}.cv[*][{i+1}]",
                        transformValue=[(joints[i], 1)],
                    )

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
            #                 skin_clu,
            #                 f"{self.shape}.cv[{i}][*]",
            #                 transformValue=[
            #                     (joints[0], w[0]),
            #                     (joints[1], w[1]),
            #                     (joints[2], w[2]),
            #                 ],
            #             )

    @staticmethod
    def moveCloseToSurf(objList, surf=None):
        """Move all objects to the closest position to the surface"""
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
    def buildRbSrf(pf="", crv=None, normal=0, snap=None, spans=3, p=None):
        """Build ribbon surface"""
        from nl_modules.nodel.crv_node import CrvNode

        crvLen = CrvNode(crv).length
        sign = 1 if normal else -1
        p1 = (crvLen * 0.1 * -sign, 0, 0)
        p2 = (crvLen * 0.1 * sign, 0, 0)
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
        sklData=None,
        color=4,
    ):
        """Build ribbon joints chain
        e.g.
            Create pin at coord and constraint joint to the pins
        """
        from nl_modules.nodel.jnt_node import JntNode
        from nl_modules.utils import common

        if num > 1:
            coord = []
            for i in range(num):
                coord.append((0.5, i / (num - 1)))

            pin, pinXf = common.nlRivet(
                geo=surf,
                coordList=coord,
                normalize=normalize,
                p=rigData,
                normal=2,
                tangent=1,
            )

            returnJnt = []
            for i, loc in enumerate(pinXf):
                jnt = JntNode(
                    f"{i}_rbj",
                    pf=pf,
                    align=loc,
                    r=size / num * 12,
                    color=color,
                    p=sklData,
                )
                loc.cstPar(jnt)
                returnJnt.append(jnt)

            return returnJnt
