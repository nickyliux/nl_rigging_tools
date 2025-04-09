import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.utils.color import Color


class SurfNode(GroupNode):
    """Surface Node Class
    e.g.
        n = SurfNode('existing')
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
        #
        # For surface
        #
        uSeg=1,
        vSeg=1,
        ax=(0, 0, 1),
        width=1,
        lr=1,
        d=3,
    ):
        GroupNode.__init__(
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
                mc.nurbsPlane(ax=ax, w=width, lr=lr, d=d, v=vSeg, u=uSeg, ch=1)[0]
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

    def weightTo(self, joints, **kwargs):
        if self.exists():
            skin_clu = mc.skinCluster(self, joints, tsb=1, **kwargs)[0]

            cv = f"{self.shape}.cv[0][*]"
            mc.skinPercent(skin_clu, cv, transformValue=[(joints[0], 1)])

            spansUV = self.a.spansUV.get()[0]
            degUV = self.a.degreeUV.get()[0]
            cv = f"{self.shape}.cv[{spansUV + degUV - 1}][*]"
            mc.skinPercent(skin_clu, cv, transformValue=[(joints[-1], 1)])

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
    def buildRbSrf(rigID, rSz, crv=None, normal=0, snap=None, spans=3, p=None):
        """Build ribbon surface"""
        from nl_modules.nodel.curve_node import CurveNode

        crvLen = CurveNode(crv).length
        sign = 1 if normal else -1
        p1 = (crvLen * 0.1 * sign, 0, 0)
        p2 = (crvLen * 0.1 * -sign, 0, 0)

        sweepLine = CurveNode.buildLine(p1, p2, pf=rigID, snap=snap)
        pathLine = CurveNode(
            mc.rebuildCurve(
                crv, n=rigID + "_line_#", ch=0, rpo=0, end=1, kr=2, kt=0, s=spans, d=2
            )[0]
        )
        rbSrf = SurfNode(
            mc.extrude(
                sweepLine, pathLine, n=rigID + "_rbSrf", ch=0, rn=0, et=1, upn=1
            )[0]
        )
        mc.delete(pathLine, sweepLine)
        if p:
            rbSrf | p
        return rbSrf

    @staticmethod
    def buildRbJnt(
        rID,
        rSz,
        bindJntNum,
        surf=None,
        rigData=None,
        normalize=1,
        sklData=None,
        color=None,
    ):
        """Build ribbon joints chain
        e.g.
            Create pin at (0, 0.5), (1/7, 0.5), (2/7, 0.5) ... (7/7, 0.5)
            Constraint joint to the pins
        """
        from nl_modules.nodel.joint_node import JointNode
        from nl_modules.utils import common

        if bindJntNum > 1:
            logging.info(rID)
            coord = []
            sep = 1 / (bindJntNum - 1)

            for i in range(bindJntNum):
                coord.append((i * sep, 0.5))

            pin, pinXf = common.nlRivet(
                geo=surf, coordList=coord, normalize=normalize, p=rigData
            )
            bindJ = []
            lenU = surf.lengthU

            for i, loc in enumerate(pinXf):
                j = JointNode(
                    rID + f"_rbJ_{i + 1}",
                    align=loc,
                    r=lenU / 20,
                    p=sklData,
                    color=color,
                )
                loc.cstPar(j)
                bindJ.append(j)
            return bindJ
