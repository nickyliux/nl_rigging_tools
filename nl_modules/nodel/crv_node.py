import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.grp_node import GrpNode


class CrvNode(GrpNode):
    """Curve node class"""

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
        color=0,
        shape="circle",
        move=None,
        moveX=0,
        moveY=0,
        moveZ=0,
        rotate=None,
        rotateX=0,
        rotateY=0,
        rotateZ=0,
        scale=None,
        scaleX=1,
        scaleY=1,
        scaleZ=1,
        dspType=0,
        width=-1,
        up="",
        top=0,
    ):
        super().__init__(
            node,
            pf=pf,
            sf=sf,
            align=align,
            alignR=alignR,
            snap=snap,
            addOfs=addOfs,
            p=p,
        )

        if not self.shape:
            if shape:
                crvDictList = self.shape_getDictListFrLib(shape)
                self.shape_buildFrDictList(crvDictList, self.name, xf=self)

            self.color = color or self.get_side_color()
            self.dspType = dspType

        if up == "x":
            self.cv_rotate(0, 0, -90)
        elif up == "z":
            self.cv_rotate(90, 0, 0)
        elif up == "-x":
            self.cv_rotate(0, 0, -90)
            self.cv_scale(-1, 1, 1)
        elif up == "-z":
            self.cv_rotate(90, 0, 0)
            self.cv_scale(1, 1, -1)
        elif up == "-y":
            self.cv_scale(1, -1, 1)

        if rotate:
            self.cv_rotate(*rotate)
        else:
            vec = [rotateX, rotateY, rotateZ]
            if any(vec):
                self.cv_rotate(*vec)

        if scale:
            if isinstance(scale, (tuple, list)):
                self.cv_scale(*scale)
            elif isinstance(scale, (int, float)):
                self.cv_scale(scale)
        else:
            vec = [scaleX, scaleY, scaleZ]
            if vec != [1, 1, 1]:
                self.cv_scale(*vec)

        if move:
            self.cv_move(*move)
        else:
            vec = [moveX, moveY, moveZ]
            if any(vec):
                self.cv_move(*vec)

        if top:
            for s in self.shapes:
                s.a["alwaysDrawOnTop"].set(1)
        self.width = width

    @property
    def length(self):
        """Return the length of the curve"""

        return mc.arclen(self)

    @staticmethod
    def buildLine(
        tgt1,
        tgt2,
        n="line_#",
        pf="",
        width=-1,
        bezier=0,
        insertMid=0,
        dspType=0,
        snap=None,
        inheritXf=1,
        p=None,
    ):
        """Build a line between two target objects or positions."""

        def getPos(tgt):
            if isinstance(tgt, tuple):
                return tgt
            else:
                return mc.xform(tgt, q=1, ws=1, t=1)

        if tgt1 is None or tgt2 is None:
            raise ValueError(f"buildLine failed. tgt1 or tgt2 is None")

        pos1 = getPos(tgt1)
        pos2 = getPos(tgt2)
        if pf and pf[-1] != "_":
            pf += "_"

        crv = CrvNode(
            mc.curve(n=f"{pf}{n}", p=[pos1, pos2], d=1, k=[0, 1]),
            color=1,
            width=width,
        )
        crv.dspType = dspType

        if insertMid:
            mc.insertKnotCurve(crv, p=0.5, ch=0, nk=1, rpo=1)
        if bezier:
            mc.select(crv)
            mc.nurbsCurveToBezier()
        if snap:
            crv.snapTo(snap)
        if p:
            mc.parent(crv, p)
        crv.a.inheritsTransform.set(inheritXf)
        return crv

    @staticmethod
    def buildLineLinked(
        tgt1=None, tgt2=None, pf="", width=-1, inheritXf=0, dspType=0, p=None
    ):
        """Build a line between two target objects or positions."""

        tgt1 = DagNode(tgt1)
        tgt2 = DagNode(tgt2)
        line = CrvNode.buildLine(
            tgt1,
            tgt2,
            pf=pf,
            width=width,
            inheritXf=inheritXf,
            dspType=dspType,
            p=p,
        )

        if line:
            nodes = tgt1.a.worldMatrix.outConnNode
            dcm = nodes[0] if nodes else DepNode("DCM_#", nodeType="decomposeMatrix")
            tgt1.a.worldMatrix >> dcm.a.inputMatrix
            mc.connectAttr(dcm + ".outputTranslate", line.shape + ".cv[0]")

            nodes = tgt2.a.worldMatrix.outConnNode
            dcm = nodes[0] if nodes else DepNode("DCM_#", nodeType="decomposeMatrix")
            tgt2.a.worldMatrix >> dcm.a.inputMatrix
            mc.connectAttr(dcm + ".outputTranslate", line.shape + ".cv[1]")
            return line

    @staticmethod
    def buildLineLinkedSel():
        """Build linked lines from selected objects"""

        selList = mc.ls(sl=1, tr=1)
        for obj1, obj2 in zip(selList[:-1], selList[1:]):
            CrvNode.buildLineLinked(tgt1=obj1, tgt2=obj2)
        mc.select(cl=1)

    def weightTo(self, joints, weightDir=0, **kwargs):
        """Assign weights to the curve's CVs based on the provided joints."""

        if self.exists():
            skin_clu = mc.skinCluster(self, joints, **kwargs)[0]

            # Test
            spans = self.shape.a.spans.get()
            degree = self.shape.a.degree.get()
            if len(joints) == 3 and spans == 4 and degree == 3:
                wList = [
                    (1, 0, 0),
                    (1, 0, 0),
                    (1, 0, 0),
                    (0, 1, 0),
                    (0, 0, 1),
                    (0, 0, 1),
                    (0, 0, 1),
                ]
                if weightDir == -1:
                    wList.reverse()

                for i, w in enumerate(wList):
                    cv = f"{self.shape}.cv[{i}]"
                    mc.skinPercent(
                        skin_clu,
                        cv,
                        transformValue=[
                            (joints[0], w[0]),
                            (joints[1], w[1]),
                            (joints[2], w[2]),
                        ],
                    )

    def __call__(
        self,
        name="",
        pf="",
        shape=None,
        up=None,
        rotate=None,
        rotateX=0,
        rotateY=0,
        rotateZ=0,
        scale=1,
        color=0,
        addOfs=0,
        p=None,
        top=0,
        width=-1,
        *args,
        **kwargs,
    ):
        """Call the CrvNode to set its properties and return itself"""

        if name:
            if pf:
                pf += "_"
            self.rename(pf + name)
        if shape:
            self << shape
        if up == "x":
            self.cv_rotate(0, 0, 90)
        elif up == "z":
            self.cv_rotate(90, 0, 0)
        # if rotate:
        #     self.cv_rotate(*rotate)
        if rotate:
            self.cv_rotate(*rotate)
        else:
            vec = [rotateX, rotateY, rotateZ]
            if any(vec):
                self.cv_rotate(*vec)

        if isinstance(scale, (tuple, list)):
            self.cv_scale(*scale)
        elif isinstance(scale, (int, float)):
            self.cv_scale(scale)
        self.color = color or self.get_side_color()

        if p:
            self | p
        if addOfs:
            self.addOffsetGrp()
        if top:
            for s in self.shapes:
                s.a["alwaysDrawOnTop"].set(1)
        if width > 0:
            self.width = width
        return self

    def reverse(self):
        """Reverse the curve direction"""

        mc.reverseCurve(self, ch=0, rpo=1)
        return self

    def rebuild(self, spans=3, deg=3):
        """Rebuild the curve with specified spans and degree"""

        mc.rebuildCurve(
            self,
            rpo=1,
            endKnots=1,
            keepRange=0,
            keepControlPoints=0,
            keepEndPoints=1,
            keepTangents=1,
            spans=spans,
            degree=deg,
        )
        return self

    def lowerCubeFrontCV(self, up="z"):
        """Lower the front CVs of the cube"""

        ids = [1, 12, 15, 16]
        cvs = [self.shape + f".cv[{id}]" for id in ids]
        mc.move(0, -self.o.height / 3, 0, cvs, os=1, r=1)
