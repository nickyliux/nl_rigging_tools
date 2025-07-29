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
        self.rbSrf = None
        self.ribbonParent = p
        self.pf = pf
        self.jnts_rb = []

        self.grpNames = ["RBN_GRP", "BSE_GRP", "CTL_GRP", "JNT_GRP", "AIM_GRP"]
        self.locNames = ["stt_loc", "mid_loc", "end_loc", "sttUp_loc", "endUp_loc"]
        self.jnt_names = ["stt_jnt", "mid_jnt", "end_jnt"]

        for name in self.grpNames + self.locNames + self.jnt_names:
            setattr(self, name, None)

        # Volume and control attributes
        self.autoVol = 0
        self.volType = 0
        self.forSpine = forSpine
        self.scaleFix = scaleFix
        self.volMode = volMode
        self.rbJNum = rbJNum
        self.size = size
        self.ikhs = []

        # Build the ribbon rig
        self.build()

    def build(self):
        """Build the ribbon rig."""
        self.build_grps()
        self.build_surf()
        self.build_locs()
        self.build_aim_chains()
        # self.build_twist_chains()
        self.build_volume_setup()
        self.build_post()

        self.tgt.cstPar(self.RBN_GRP, keep=0)

    def build_grps(self):
        """Create the main groups for the ribbon rig."""
        self.RBN_GRP = GrpNode("rbn_grp", pf=self.pf, p=self.ribbonParent)
        self.SRF_GRP = GrpNode("srf_grp", pf=self.pf, p=self.RBN_GRP)
        self.LOC_GRP = GrpNode("loc_grp", pf=self.pf, p=self.RBN_GRP)
        self.RBJ_GRP = GrpNode("rbj_grp", pf=self.pf, p=self.RBN_GRP)
        self.AIM_GRP = GrpNode("aim_grp", pf=self.pf, p=self.RBN_GRP)

    def build_surf(self):
        """Create the surface for the ribbon rig."""
        logging.info(self.pf)

        xDr = self.xDir
        self.rbSrf = SrfNode(
            "rbSrf",
            pf=self.pf,
            uSeg=5,
            ax=(0, 1, 0),
            lr=0.2,
            size=self.D,
            p=self.SRF_GRP,
        )
        self.rbSrf.a.inheritsTransform.set(0)
        self.rbSrf.a.tx.set(self.D / 2 * xDr)
        self.rbSrf.a.sx.set(xDr)

        # Generate coordinates for rivets
        coord = [((2 * i + 1) / (2 * self.rbJNum), 0.5) for i in range(self.rbJNum)]

        # Create rivets and attach joints
        pin, pinXf = common.nlRivet(
            geo=self.rbSrf,
            coordList=coord,
            normal=1,
            tangent=0,
            p=self.SRF_GRP,
            size=self.size,
        )

        for i, pin_xf in enumerate(pinXf):
            jnt = JntNode(
                f"rbj_{i}",
                pf=self.pf,
                p=self.RBJ_GRP,
                r=self.size / self.rbJNum * 5,
                addOfs=1,
            )
            pin_xf.cstPar(jnt.parent)
            pin_xf.a.inheritsTransform.set(0)
            self.jnts_rb.append(jnt)

    def build_locs(self):
        """Create locators for the start, middle, and end of the ribbon."""
        logging.info(self.pf)

        offset = self.D / 2
        size = self.D / 5
        Dx = self.D * self.xDir

        for name in self.locNames:
            setattr(
                self,
                name,
                LocNode(
                    name, pf=self.pf, size=size, p=self.LOC_GRP, color=Color.YELLOW
                ),
            )

        self.sttUp_loc | self.stt_loc
        self.sttUp_loc.a.ty.set(offset)

        self.endUp_loc | self.end_loc
        self.end_loc.a.tx.set(Dx)
        self.endUp_loc.a.ty.set(offset)

        self.mid_loc.a.tx.set(Dx / 2)
        self.mid_loc.addOffsetGrp(count=2)

    def build_ik(self, name, sj, ee, p):
        """Create an aim IK handle for the ribbon rig."""
        return IkNode(name, pf=self.pf, sj=sj, ee=ee, solver=Solver.RP, quat=1, p=p)

    def build_aim_jc(self, name, tgt, offsetX, color=Color.L_BLUE):
        """Create a two-joint chain for aiming with an offset."""
        offset = (offsetX, 0, 0)
        return JntNode.makeTwoJointChain(
            name,
            pf=self.pf,
            snap=tgt,
            offset=offset,
            rad=self.size / 2,
            p=self.AIM_GRP,
            color=color,
        )

    def build_aim_chains(self):
        """Create aim chains for the start, middle, and end of the ribbon."""
        logging.info(self.pf)

        ofsX = self.D * self.xDir / 4

        # Start aim chain
        stt_aimJ, stt_aimJ_end = self.build_aim_jc("stt_aimJ", self.stt_loc, ofsX)
        end_aimJ, end_aimJ_end = self.build_aim_jc("end_aimJ", self.end_loc, -ofsX)
        mid_aimJ, mid_aimJ_end = self.build_aim_jc("mid_aimJ", self.stt_loc, ofsX * 2)

        # Set up locators for the aim chains
        self.stt_loc.cstPoi(stt_aimJ)
        self.stt_loc.cstPoi(mid_aimJ)
        self.end_loc.cstPoi(end_aimJ)

        self.stt_jnt = JntNode("stt_jnt", pf=self.pf, p=stt_aimJ, align=self.stt_loc)
        self.end_jnt = JntNode("end_jnt", pf=self.pf, p=end_aimJ, align=self.end_loc)
        self.mid_jnt = JntNode(
            "mid_jnt", pf=self.pf, p=self.mid_loc, align=self.mid_loc
        )

        # Skin the joints to the surface
        sttMidEnd_jnts = [self.stt_jnt, self.mid_jnt, self.end_jnt]
        self.rbSrf.weightTo(sttMidEnd_jnts, chain=0, mi=2, dr=2)

        for j in sttMidEnd_jnts:
            j.setRadius(self.size * 3)
            j.color = Color.PINK

        if not self.forSpine:
            mid_loc_ofs2 = self.mid_loc.offset.offset
            common.cstMulti(self.stt_loc, self.end_loc, mid_loc_ofs2, cstType="poi")
            mid_aimJ.cstOri(mid_loc_ofs2)

        # Create IK handles for the aim chains
        stt_ikh = self.build_ik("stt", stt_aimJ, stt_aimJ_end, self.AIM_GRP)
        mid_ikh = self.build_ik("mid", mid_aimJ, mid_aimJ_end, self.AIM_GRP)
        end_ikh = self.build_ik("end", end_aimJ, end_aimJ_end, self.AIM_GRP)

        self.ikhs.extend([stt_ikh, mid_ikh, end_ikh])

        if self.forSpine:
            # For spine, use parent constraints to maintain hierarchy
            self.stt_loc.cstPar(stt_ikh, mo=1)
            self.end_loc.cstPoi(mid_ikh)
            self.end_loc.cstPar(end_ikh, mo=1)
        else:
            # For non-spine, use point constraints for aiming
            self.mid_loc.cstPoi(stt_ikh)
            self.end_loc.cstPoi(mid_ikh)
            self.mid_loc.cstPoi(end_ikh)

        # Drive the end_jnt by the mid_loc
        self.mid_loc.cstAim(
            self.end_jnt,
            aim=(-self.xDir, 0, 0),
            worldUpType="object",
            worldUpObject=self.endUp_loc,
            u=(0, 1, 0),
        )

        # mid_loc's rx is controlled by the start and end joints
        ut.blend2_(self.stt_jnt.a.rx, self.end_jnt.a.rx) >> self.mid_loc.a.rx

    # def build_twist_chains(self):
    #     """Create twist chains for the start and end of the ribbon."""

    #     logging.info(self.pf)

    #     ofsX = self.D * self.xDir / 10
    #     aimV = (self.xDir, 0, 0)
    #     upV = (0, 1, 0)

    #     # From
    #     stt_twistJ, stt_twistJ_end = self.build_aim_jc(
    #         "stt_twistJ", self.stt_loc, -ofsX, color=Color.ORANGE
    #     )
    #     stt_twistG = GrpNode("stt_twistG", pf=self.pf, align=stt_twistJ, p=stt_twistJ)
    #     stt_twistG.a.rx >> self.stt_jnt.a.rx
    #     stt_twistJ_end.cstAim(
    #         stt_twistG,
    #         worldUpType="object",
    #         worldUpObject=self.sttUp_loc,
    #         aim=Vec(aimV) * -1,
    #         u=upV,
    #     )
    #     self.stt_loc.cstPoi(stt_twistJ)
    #     # To
    #     end_twistJ, end_twistJ_end = self.build_aim_jc(
    #         "end_twistJ", self.end_loc, ofsX, color=Color.ORANGE
    #     )
    #     end_twistG = GrpNode("end_twistG", pf=self.pf, align=end_twistJ, p=end_twistJ)
    #     end_twistG.a.rx >> self.end_jnt.a.rx
    #     end_twistJ_end.cstAim(
    #         end_twistG,
    #         worldUpType="object",
    #         worldUpObject=self.endUp_loc,
    #         aim=aimV,
    #         u=upV,
    #     )
    #     self.end_loc.cstPoi(end_twistJ)

    #     # IK
    #     stt_twist_ikh = self.build_ik("sttTw", stt_twistJ, stt_twistJ_end, self.stt_loc)
    #     end_twist_ikh = self.build_ik("endTw", end_twistJ, end_twistJ_end, self.end_loc)

    #     self.ikhs.extend([stt_twist_ikh, end_twist_ikh])

    #     c_loc_ofs2 = self.mid_loc.offset
    #     ut.blendC_(stt_twistG.a.r, end_twistG.a.r) >> c_loc_ofs2.a.r

    #     self.stt_twistJ = stt_twistJ
    #     self.end_twistJ = end_twistJ

    def build_volume_setup(self):
        """Set up the volume control for the ribbon rig."""
        logging.info(self.pf)

        arcLenDim = ut.arcLenDim_(self.rbSrf)
        d = arcLenDim.a.arcLength
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
        mid_t = (self.rbJNum - 1) / 2
        mc.setKeyframe(volGraph2, t=mid_t, v=1)
        mc.setKeyframe(volGraph2, t=self.rbJNum - 1, v=0)
        mc.setAttr(volGraph2, l=1)

        choice = ut.choice_([volGraph1, volGraph2], self.volType)

        for i in range(self.rbJNum):

            frameCache = DagNode("fc__#", nodeType="frameCache")
            choice >> frameCache.a.stream
            frameCache.a.varyTime.set(i)

            ratio = (D / (d / scaleFix)) ** (frameCache.a.varying * self.autoVol)
            ratio >> self.jnts_rb[i].a.sy
            ratio >> self.jnts_rb[i].a.sz

        self.d = d

    def setup_rotate_order(self):
        """Set up the rotate order for the start, middle, and end joints."""
        for j in (self.stt_loc, self.end_loc):
            j.a.rotateOrder.set(1)  # yzx

    def setup_vis(self):
        """Set up visibility for the ribbon rig."""
        mc.hide(self.ikhs)
        # mc.hide(self.SRF_GRP, self.AIM_GRP, self.LOC_GRP)

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
