import logging
import maya.cmds as mc
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.ik_node import IkNode, Solver
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.srf_node import SrfNode
from nl_modules.utils import common
from nl_modules.utils.common import Vec
from nl_modules.utils import utils_node as ut
from nl_modules.utils.color import Color


class RbnNode:
    """Ribbon node class for creating a ribbon rig with joints, locators, and IK handles."""

    def __init__(
        self,
        tgt,
        pf="",
        rbJNum=5,
        volMode=1,  # 0: upper, 1: lower
        scaleFix=None,
        forSpine=0,
        size=1,
        p=None,
    ):
        # Initialize target and child
        self.tgt = DagNode(tgt) if isinstance(tgt, str) else tgt
        self.tgtChild = self.tgt.children[0] if self.tgt.children else None
        if not self.tgtChild:
            raise ValueError("Target must have at least one child.")

        self.xDir = 1 if self.tgtChild.a.tx.get() > 0 else -1
        self.D = self.tgt.o.distanceTo(self.tgtChild)
        if self.D == 0:
            raise ValueError("Target and child must be at different positions.")

        # Core attributes
        self.d = None
        self.ribbonParent = p
        self.RBN_GRP = None
        self.BSE_GRP = None
        self.CTL_GRP = None
        self.JNT_GRP = None
        self.AIM_GRP = None
        self.pf = pf
        self.rbJnt = []
        self.surf = None

        # Locators and joints
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

        # Volume and control attributes
        self.autoVol = 0
        self.volType = 0
        self.forSpine = forSpine
        self.scaleFix = scaleFix
        self.volMode = volMode
        self.rbJNum = rbJNum
        self.all_ikHs = []
        self.size = size

        # Build the ribbon rig
        self.build()

    def build(self):
        """Build the ribbon rig."""
        self.build_grps()
        self.build_surf()
        self.build_locs()
        self.build_aim_chains()
        self.build_twist_chains()
        self.build_volume_setup()
        self.build_post()

        self.tgt.cstPar(self.RBN_GRP, keep=0)

    def build_grps(self):
        """Create the main groups for the ribbon rig."""
        self.RBN_GRP = GrpNode("ribbon", pf=self.pf, p=self.ribbonParent)
        self.BSE_GRP = GrpNode("bse", pf=self.pf, p=self.RBN_GRP)
        self.JNT_GRP = GrpNode("jnt", pf=self.pf, p=self.RBN_GRP)
        self.CTL_GRP = GrpNode("ctl", pf=self.pf, p=self.RBN_GRP)
        self.AIM_GRP = GrpNode("aim", pf=self.pf, p=self.RBN_GRP)

    def build_surf(self):
        """Create the surface for the ribbon rig."""
        logging.info(f"Building {self.pf} surface")

        xDr = self.xDir
        surf = SrfNode(
            "rb_surf",
            pf=self.pf,
            uSeg=5,
            ax=(0, 1, 0),
            lr=0.2,
            size=self.D,
            p=self.BSE_GRP,
        )
        surf.a.inheritsTransform.set(0)
        surf.a.tx.set(self.D / 2 * xDr)
        surf.a.sx.set(xDr)

        # Generate coordinates for rivets
        coord = [((2 * i + 1) / (2 * self.rbJNum), 0.5) for i in range(self.rbJNum)]

        # Create rivets and attach joints
        pin, pinXf = common.nlRivet(
            geo=surf,
            coordList=coord,
            normal=1,
            tangent=0,
            p=self.BSE_GRP,
            size=self.size,
        )

        rbJnt = []
        for i, pin_xf in enumerate(pinXf):
            jnt = JntNode(
                f"rbj_{i}",
                pf=self.pf,
                p=self.JNT_GRP,
                r=self.size / self.rbJNum * 5,
                addOfs=1,
            )
            pin_xf.cstPar(jnt.parent)
            pin_xf.a.inheritsTransform.set(0)
            rbJnt.append(jnt)

        self.surf = surf
        self.rbJnt = rbJnt

    def build_locs(self):
        """Create locators for the start, middle, and end of the ribbon."""
        logging.info(f"Building {self.pf} locators")

        offset = self.D / 2
        size = self.D / 5
        Dx = self.D * self.xDir

        locNames = ["stt_loc", "end_loc", "mid_loc", "stt_loc_upVec", "end_loc_upVec"]
        for name in locNames:
            setattr(
                self,
                name,
                LocNode(
                    name, pf=self.pf, size=size, p=self.CTL_GRP, color=Color.YELLOW
                ),
            )

        self.stt_loc_upVec | self.stt_loc
        self.stt_loc_upVec.a.ty.set(offset)

        self.end_loc_upVec | self.end_loc
        self.end_loc.a.tx.set(Dx)
        self.end_loc_upVec.a.ty.set(offset)

        self.mid_loc.a.tx.set(Dx / 2)
        self.mid_loc.addOffsetGrp(count=2)

    def createIK(self, name, sj, ee, grp):
        """Create an aim IK handle for the ribbon rig."""
        return IkNode(name, pf=self.pf, sj=sj, ee=ee, solver=Solver.RP, quat=1, p=grp)

    def createAimJC(self, name, tgt, offsetX):
        """Create a two-joint chain for aiming with an offset."""
        offset = (offsetX, 0, 0)
        return JntNode.makeTwoJointChain(
            name, pf=self.pf, snap=tgt, offset=offset, rad=self.size, p=self.AIM_GRP
        )

    def build_aim_chains(self):
        """Create aim chains for the start, middle, and end of the ribbon."""
        logging.info(f"Building {self.pf} aim chains")

        ofsX = self.D * self.xDir / 4

        # Start aim chain
        stt_aimJ, stt_aimJ_end = self.createAimJC("stt_aimJ", self.stt_loc, ofsX)
        self.stt_sknJ = stt_aimJ_end.duplicate(n=self.pf + "stt_sknJ")
        self.stt_sknJ.alignTo(self.stt_loc)

        # End aim chain
        end_aimJ, end_aimJ_end = self.createAimJC("end_aimJ", self.end_loc, -ofsX)
        self.end_sknJ = end_aimJ_end.duplicate(n=self.pf + "end_sknJ")
        self.end_sknJ.alignTo(self.end_loc)

        # Middle aim chain
        mid_aimJ, mid_aimJ_end = self.createAimJC("mid_aimJ", self.stt_loc, ofsX * 2)
        self.mid_sknJ = mid_aimJ_end.duplicate(n=self.pf + "mid_sknJ")
        self.mid_sknJ.alignTo(self.mid_loc, p=self.mid_loc)

        # Constraints
        self.stt_loc.cstPoi(stt_aimJ)
        self.stt_loc.cstPoi(mid_aimJ)
        self.end_loc.cstPoi(end_aimJ)

        mid_loc_ofs1 = self.mid_loc.offset.offset
        if not self.forSpine:
            common.cstMulti(self.stt_loc, self.end_loc, mid_loc_ofs1, cstType="poi")
            mid_aimJ.cstOri(mid_loc_ofs1)

        self.surf.weightTo(
            [self.stt_sknJ, self.mid_sknJ, self.end_sknJ], chain=0, mi=2, dr=2
        )

        for j in self.stt_sknJ, self.end_sknJ, self.mid_sknJ:
            j.setRadius(self.D / 5)
            j.color = Color.D_YELLOW

        # IK handles
        stt_ikh = self.createIK("stt", stt_aimJ, stt_aimJ_end, self.AIM_GRP)
        mid_ikh = self.createIK("mid", mid_aimJ, mid_aimJ_end, self.AIM_GRP)
        end_ikh = self.createIK("end", end_aimJ, end_aimJ_end, self.AIM_GRP)

        self.all_ikHs.extend([stt_ikh, mid_ikh, end_ikh])

        # Final constraints based on spine mode
        if self.forSpine:
            self.stt_loc.cstPar(stt_ikh, mo=1)
            self.end_loc.cstPoi(mid_ikh)
            self.end_loc.cstPar(end_ikh, mo=1)
        else:
            self.mid_loc.cstPoi(stt_ikh)
            self.end_loc.cstPoi(mid_ikh)
            self.mid_loc.cstPoi(end_ikh)

    def build_twist_chains(self):
        """Create twist chains for the start and end of the ribbon."""

        logging.info(f"Building {self.pf} twist chains")

        ofsX = self.D / 10 * self.xDir
        aimV = (self.xDir, 0, 0)
        aimVN = (-self.xDir, 0, 0)
        upV = (0, 1, 0)

        # From
        stt_twistJ, stt_twistJ_end = self.createAimJC("stt_twistJ", self.stt_loc, -ofsX)
        stt_twistG = GrpNode("stt_twistG", pf=self.pf, align=stt_twistJ, p=stt_twistJ)
        stt_twistG.a.rx >> self.stt_sknJ.a.rx

        stt_twistJ_end.cstAim(
            stt_twistG,
            worldUpType="object",
            worldUpObject=self.stt_loc_upVec,
            aim=aimVN,
            u=upV,
        )
        # To
        end_twistJ, end_twistJ_end = self.createAimJC("end_twistJ", self.end_loc, ofsX)
        end_twistG = GrpNode("end_twistG", pf=self.pf, align=end_twistJ, p=end_twistJ)
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
        stt_twist_ikh = self.createIK("sttTw", stt_twistJ, stt_twistJ_end, self.stt_loc)
        end_twist_ikh = self.createIK("endTw", end_twistJ, end_twistJ_end, self.end_loc)

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
        self.autoVol = self.RBN_GRP.a.add("autoVol")
        self.volType = self.RBN_GRP.a.add(
            "volType", attrType="enum", enumName="whole:separate", k=0
        )
        scaleFix = self.RBN_GRP.a.sy

        volGraph1 = self.RBN_GRP.a.add("volGraph1", dv=0)
        volValue = self.volMode
        mc.setKeyframe(volGraph1, t=0, v=volValue)
        mc.setKeyframe(volGraph1, t=self.rbJNum - 1, v=1 - volValue)
        mc.setAttr(volGraph1, l=1)

        volGraph2 = self.RBN_GRP.a.add("volGraph2", dv=0)
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
        """Set up visibility for the ribbon rig."""

        mc.hide(self.all_ikHs)
        # mc.hide(self.BSE_GRP, self.AIM_GRP, self.CTL_GRP)

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
