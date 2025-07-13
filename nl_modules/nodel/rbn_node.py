import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color


class RbnNode:
    """Ribbon node class for creating a ribbon rig with joints, locators, and IK handles."""

    def __init__(
        self,
        tgt,
        pf="",
        rbJNum=5,
        volMode=1,  # lower
        scaleFix=None,
        forSpine=0,
        size=1,
        p=None,
    ):
        self.tgtN = DagNode(tgt) if isinstance(tgt, str) else tgt
        self.tgtChild = self.tgtN.children[0]
        self.xDir = 1 if self.tgtChild.a.tx.get() > 0 else -1
        self.D = self.tgtN.o.distanceTo(self.tgtChild)

        if self.D == 0:
            raise ValueError("Invalid distance.")

        self.d = None
        self.ribbonP = p
        self.ribbonG = None
        self.BSE_GRP = None
        self.CTL_GRP = None
        self.JNT_GRP = None
        self.AIM_GRP = None

        self.pf = pf
        self.rbJnt = []
        self.surf = None

        self.stt_loc = None
        self.mid_loc = None
        self.end_loc = None

        self.stt_loc_upVec = None
        self.end_loc_upVec = None

        self.stt_sknJ = None
        self.mid_sknJ = None
        self.end_sknJ = None

        self.stt_twistJ = None
        self.end_twistJ = None

        # self.volPower = None
        self.autoVol = 0
        self.volType = 0
        self.forSpine = forSpine
        self.scaleFix = scaleFix
        self.volMode = volMode
        self.rbJNum = rbJNum
        self.all_ikHs = []
        self.size = size

        self.build()

    def build(self):
        """Build the ribbon rig."""
        self.build_grps(self.pf)
        self.build_surf(self.pf)
        self.build_locs(self.pf)
        self.build_aim_chains(self.pf)
        self.build_twist_chains(self.pf)
        self.build_volume_setup()
        self.build_post()

        if self.scaleFix:
            self.scaleFix >> self.ribbonG.a.s
        self.tgtN.cstPar(self.ribbonG, keep=0)

    def build_grps(self, pf):
        """Create the main groups for the ribbon rig."""
        self.ribbonG = GrpNode("ribbon", pf=pf, p=self.ribbonP)
        self.BSE_GRP = GrpNode("bse", pf=pf, p=self.ribbonG)
        self.JNT_GRP = GrpNode("jnt", pf=pf, p=self.ribbonG)
        self.CTL_GRP = GrpNode("ctl", pf=pf, p=self.ribbonG)
        self.AIM_GRP = GrpNode("aim", pf=pf, p=self.ribbonG)

    def build_surf(self, pf):
        """Create the surface for the ribbon rig."""
        logging.info(f"Building {self.pf} surface")

        xDr = self.xDir
        surf = SrfNode(
            "rb_surf",
            pf=pf,
            uSeg=5,
            ax=(0, 1, 0),
            lr=0.2,
            size=self.D,
            p=self.BSE_GRP,
        )
        surf.a.inheritsTransform.set(0)
        surf.a.tx.set(self.D / 2 * xDr)
        surf.a.sx.set(xDr)

        coord = []
        for i in range(self.rbJNum):
            coord.append(((2 * i + 1) / (2 * self.rbJNum), 0.5))

        pin, pinXf = common.nlRivet(
            geo=surf,
            coordList=coord,
            normal=1,
            tangent=0,
            p=self.BSE_GRP,
            size=self.size,
        )
        rbJnt = []
        for i in range(self.rbJNum):
            jnt = JntNode(
                f"rbj_{i}",
                pf=pf,
                p=self.JNT_GRP,
                r=self.size / self.rbJNum * 5,
                addOfs=1,
            )
            pinXf[i].cstPar(jnt.parent)
            pinXf[i].a.inheritsTransform.set(0)
            rbJnt.append(jnt)

        self.surf = surf
        self.rbJnt = rbJnt

    def build_locs(self, pf):
        """Create locators for the start, middle, and end of the ribbon."""
        logging.info(f"Building {self.pf} locators")

        offset = self.D / 4
        size = self.D / 15
        Dx = self.D * self.xDir

        self.stt_loc = LocNode("stt_loc", pf=pf, p=self.CTL_GRP, size=size)
        self.stt_loc_upVec = LocNode("stt_loc_upVec", pf=pf, p=self.stt_loc, size=size)
        self.stt_loc.addOffsetGrp()
        self.stt_loc_upVec.a.ty.set(offset)

        self.end_loc = LocNode("end_loc", pf=pf, p=self.CTL_GRP, size=size)
        self.end_loc_upVec = LocNode("end_loc_upVec", pf=pf, p=self.end_loc, size=size)
        self.end_loc.a.tx.set(Dx)
        self.end_loc.addOffsetGrp()
        self.end_loc_upVec.a.ty.set(offset)

        self.mid_loc = LocNode("mid_loc", pf=pf, p=self.CTL_GRP, size=size)
        self.mid_loc.a.tx.set(Dx / 2)
        self.mid_loc.addOffsetGrp(count=2)

    def build_aim_chains(self, pf):
        """Create aim chains for the start, middle, and end of the ribbon."""
        logging.info(f"Building {self.pf} aim chains")

        g = self.AIM_GRP

        ofsX = self.D / 4 * self.xDir
        ofsX2 = ofsX * 2

        stt_aimJ, stt_aimJ_end = JntNode.makeTwoJC(
            "stt_aimJ", pf=pf, snap=self.stt_loc, ofs=(ofsX, 0, 0), p=g, r=self.size * 2
        )
        stt_sknJ = stt_aimJ_end.duplicate(n=pf + "stt_sknJ")
        stt_sknJ.alignTo(self.stt_loc)

        end_aimJ, end_aimJ_end = JntNode.makeTwoJC(
            "end_aimJ",
            pf=pf,
            snap=self.end_loc,
            ofs=(-ofsX, 0, 0),
            p=g,
            r=self.size * 2,
        )
        end_sknJ = end_aimJ_end.duplicate(n=pf + "end_sknJ")
        end_sknJ.alignTo(self.end_loc)

        mid_aimJ, mid_aimJ_end = JntNode.makeTwoJC(
            "mid_aimJ",
            pf=pf,
            snap=self.stt_loc,
            ofs=(ofsX2, 0, 0),
            p=g,
            r=self.size * 2,
        )
        mid_sknJ = mid_aimJ_end.duplicate(n=pf + "mid_sknJ")
        mid_sknJ.alignTo(self.mid_loc, p=self.mid_loc)

        self.stt_loc.cstPoi(stt_aimJ)
        self.stt_loc.cstPoi(mid_aimJ)
        self.end_loc.cstPoi(end_aimJ)

        mid_loc_ofs1 = self.mid_loc.offset.offset

        if not self.forSpine:
            common.cstMulti(self.stt_loc, self.end_loc, mid_loc_ofs1, cstType="poi")
            mid_aimJ.cstOri(mid_loc_ofs1)

        self.surf.weightTo([stt_sknJ, mid_sknJ, end_sknJ], chain=0, mi=2, dr=2)

        # clu = [
        #     DagNode(mc.cluster(self.surf + ".cv[0:2][*]", n="clu_0")[1]),
        #     DagNode(mc.cluster(self.surf + ".cv[3:4][*]", n="clu_2")[1]),
        #     DagNode(mc.cluster(self.surf + ".cv[5:7][*]", n="clu_3")[1]),
        # ]
        # clu[0] | stt_sknJ
        # clu[1] | mid_sknJ
        # clu[2] | end_sknJ

        # clu = [
        #     DagNode(mc.cluster(self.surf + ".cv[0][*]", n="clu_0")[1]),
        #     DagNode(mc.cluster(self.surf + ".cv[1][*]", n="clu_1")[1]),
        #     DagNode(mc.cluster(self.surf + ".cv[2:3][*]", n="clu_2")[1]),
        #     DagNode(mc.cluster(self.surf + ".cv[4][*]", n="clu_3")[1]),
        #     DagNode(mc.cluster(self.surf + ".cv[5][*]", n="clu_4")[1]),
        # ]
        # clu[1] | clu[0] | stt_sknJ
        # clu[2] | mid_sknJ
        # clu[3] | clu[4] | end_sknJ

        for j in stt_sknJ, end_sknJ, mid_sknJ:
            j.setRadius(self.D / 5)
            j.color = Color.BLUE

        stt_ikh = IkNode(
            "stt", pf=pf, sj=stt_aimJ, ee=stt_aimJ_end, solver=Solver.RP, quat=1, p=g
        )
        mid_ikh = IkNode(
            "mid", pf=pf, sj=mid_aimJ, ee=mid_aimJ_end, solver=Solver.RP, quat=1, p=g
        )
        end_ikh = IkNode(
            "end", pf=pf, sj=end_aimJ, ee=end_aimJ_end, solver=Solver.RP, quat=1, p=g
        )

        self.all_ikHs.extend([stt_ikh, mid_ikh, end_ikh])

        if self.forSpine:
            self.stt_loc.cstPar(stt_ikh, mo=1)
            self.end_loc.cstPoi(mid_ikh)
            self.end_loc.cstPar(end_ikh, mo=1)
        else:
            self.mid_loc.cstPoi(stt_ikh)
            self.end_loc.cstPoi(mid_ikh)
            self.mid_loc.cstPoi(end_ikh)

        self.stt_sknJ = stt_sknJ
        self.mid_sknJ = mid_sknJ
        self.end_sknJ = end_sknJ

    def build_twist_chains(self, pf):
        """Create twist chains for the start and end of the ribbon."""
        logging.info(f"Building {self.pf} twist chains")

        ofsX = self.D / 10 * self.xDir
        aimV = (self.xDir, 0, 0)
        aimVN = (-self.xDir, 0, 0)
        upV = (0, 1, 0)

        # From
        stt_twistJ, stt_twistJ_end = JntNode.makeTwoJC(
            "stt_twistJ",
            pf=pf,
            snap=self.stt_loc,
            ofs=(-ofsX, 0, 0),
            p=self.AIM_GRP,
            r=self.size / 2,
        )
        stt_twistG = GrpNode("stt_twistG", pf=pf, align=stt_twistJ, p=stt_twistJ)
        stt_twistG.a.rx >> self.stt_sknJ.a.rx

        stt_twistJ_end.cstAim(
            stt_twistG,
            worldUpType="object",
            worldUpObject=self.stt_loc_upVec,
            aim=aimVN,
            u=upV,
        )
        # To
        end_twistJ, end_twistJ_end = JntNode.makeTwoJC(
            "end_twistJ",
            pf=pf,
            snap=self.end_loc,
            ofs=(ofsX, 0, 0),
            p=self.AIM_GRP,
            r=self.size / 2,
        )
        end_twistG = GrpNode("end_twistG", pf=pf, align=end_twistJ, p=end_twistJ)
        end_twistG.a.rx >> self.end_sknJ.a.rx
        end_twistJ_end.cstAim(
            end_twistG,
            worldUpType="object",
            worldUpObject=self.end_loc_upVec,
            aim=aimV,
            u=upV,
        )
        self.stt_loc.cstPoi(stt_twistJ)
        self.end_loc.cstPoi(end_twistJ)

        # IK
        stt_twist_ikh = IkNode(
            "sttTw",
            pf=pf,
            sj=stt_twistJ,
            ee=stt_twistJ_end,
            solver=Solver.RP,
            quat=1,
            p=self.stt_loc,
        )
        end_twist_ikh = IkNode(
            "endTw",
            pf=pf,
            sj=end_twistJ,
            ee=end_twistJ_end,
            solver=Solver.RP,
            quat=1,
            p=self.end_loc,
        )
        self.all_ikHs.extend([stt_twist_ikh, end_twist_ikh])

        c_loc_ofs2 = self.mid_loc.offset
        ut.blendC_(stt_twistG.a.r, end_twistG.a.r) >> c_loc_ofs2.a.r

        self.stt_twistJ = stt_twistJ
        self.end_twistJ = end_twistJ

    def build_volume_setup(self):
        """Set up the volume control for the ribbon rig."""
        logging.info(f"Building {self.pf} volume setup")

        arcLD = ut.arcLenDim_(self.surf)
        d = arcLD.a.arcLength
        D = d.get()
        self.autoVol = self.ribbonG.a.add("autoVol")
        self.volType = self.ribbonG.a.add(
            "volType", attrType="enum", enumName="whole:separate", k=0
        )
        scaleFix = self.ribbonG.a.sy

        volGraph1 = self.ribbonG.a.add("volGraph1", dv=0)
        volValue = self.volMode
        mc.setKeyframe(volGraph1, t=0, v=volValue)
        mc.setKeyframe(volGraph1, t=self.rbJNum - 1, v=1 - volValue)
        mc.setAttr(volGraph1, l=1)

        volGraph2 = self.ribbonG.a.add("volGraph2", dv=0)
        mc.setKeyframe(volGraph2, t=0, v=0)
        mc.setKeyframe(volGraph2, t=(self.rbJNum - 1) / 2, v=1)
        mc.setKeyframe(volGraph2, t=self.rbJNum - 1, v=0)
        mc.setAttr(volGraph2, l=1)

        choiceN = ut.choice_([volGraph1, volGraph2], self.volType)

        for i in range(self.rbJNum):

            fc = DagNode("fc__#", nodeType="frameCache")
            choiceN >> fc.a.stream
            fc.a.varyTime.set(i)

            ratio = (D / (d / scaleFix)) ** (fc.a.varying * self.autoVol)
            ratio >> self.rbJnt[i].a.sy
            ratio >> self.rbJnt[i].a.sz

        self.d = d

    def setup_rotate_order(self):
        """Set up the rotate order for the start, middle, and end joints."""
        for j in (self.stt_loc, self.end_loc, self.stt_twistJ, self.end_twistJ):
            j.a.rotateOrder.set(1)  # yzx

    def setup_vis(self):
        # mc.hide(self.BSE_GRP, self.AIM_GRP, self.CTL_GRP)
        # mc.hide(self.all_ikHs)
        pass

    def build_post(self):
        """Post setup for the ribbon rig."""
        self.setup_rotate_order()
        self.setup_vis()


# def buildRibbon(pf):
#     """Build ribbon using uvPin"""
#
#     # create
#     stripXf = mc.nurbsPlane(ax=[0, 0, 1], d=2, lr=5, u=1, v=5, w=2, ch=0)[0]
#     strip = mc.listRelatives(stripXf, s=1)[0]
#     uvP = mc.createNode("uvPin")
#
#     # setup
#     mc.connectAttr(strip + ".worldSpace[0]", uvP + ".deformedGeometry")
#
#     jGrp = mc.group(n=f"{pf}rb_joints_grp", em=1)
#     sGrp = mc.group(n=f"{pf}rb_static_grp", em=1)
#     cGrp = mc.group(n=f"{pf}rb_ctrl_grp", em=1)
#
#     mc.parent(stripXf, sGrp)
#
#     for i in range(5):
#         loc = LocNode(f"{pf}loc_{i}", p=sGrp)
#         mc.connectAttr(
#             f"{uvP}.outputMatrix[{i}]", loc.name + ".offsetParentMatrix", f=1
#         )
#         mc.setAttr(f"{uvP}.coordinate[{i}].coordinateU", 0.5)
#         mc.setAttr(f"{uvP}.coordinate[{i}].coordinateV", i / 5 + 0.1)
#
#         j = JntNode(f"{pf}joint_{i}", align=loc, addOfs=1, p=jGrp)
#         loc.cstParSca(j)
#
#     topLoc = LocNode(f"{pf}top_loc", addOfs=1, p=cGrp)
#     btmLoc = LocNode(f"{pf}btm_loc", addOfs=1, p=cGrp)
#
#     dGrp = mc.group(n=pf + "data_grp", em=1)
#     mc.parent(jGrp, sGrp, cGrp, dGrp)
#
#     for i in range(3):
#         fkj = JntNode(f"{pf}{i}_fk", p=dGrp)
#         ikj = JntNode(f"{pf}{i}_ik", p=dGrp)
#         jnt = JntNode(f"{pf}{i}_jnt", p=dGrp)
#         (fkj.a.t ^ ikj.a.t) >> jnt.a.t
# buildRibbon("mySpine_")
