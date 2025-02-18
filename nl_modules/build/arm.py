import maya.cmds as mc
import logging
from nl_modules.build.rig_module import RigModule
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ribbon_node import RibbonNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color

PRX = 6
CDY = Color.D_YELLOW
CB = Color.BLACK


class Arm(RigModule):
    """Build arm component with given rigNode.
    e.g.
        n = Arm('lfArm0_RGN')  # n.__dict__
        n.genGuildSk()
        n.build()
    """

    def __init__(self, rigNode):
        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)
        self.TWIST_BONES = self.master_guide.a.twistBones.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()
        self.FK_PART = GroupNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=self.rigID, p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.setting = None
        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        # self.joints_bf = []
        self.clavicle = None
        self.upr = None
        self.lwr = None
        self.palm = None
        self.ball = None
        self.clavicle_fkc = None
        self.upr_fkc = None
        self.lwr_fkc = None
        self.palm_fkc = None
        self.pvc = None
        self.ikc = None
        self.palmFk_ikc = None
        # self.ball_ikc = None
        self.ikCtl = None
        self.fkCtl = None
        self.toeWiggleG = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.all_ikHs = None
        self.all_bend = None
        self.ikCstG = None
        self.ikH1 = None

    def genGuildSk(self):
        self.genSk_module(["clavicle", "upr", "lwr", "palm", "ball"])
        # for i, name in enumerate(jnt_names):
        #     if name == "lwr":
        #         jnt_list[i].a.preferredAngleY.set(-90 * self.x_dir)

    def build(self):
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.clavicle, self.upr, self.lwr, self.palm, self.ball = self.joints
        self.createCtl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        if self.RBN_BONES:
            self.ribbon_setup()
        if self.TWIST_BONES:
            self.twistBones_setup()
        self.post_setup()
        self.pvc.a.tz.set(self.rigSize * self.x_dir)

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID
        xDr = self.x_dir
        self.setting = CurveNode(
            "setting", pf=rID, shape="sphere", scale=rSz * 2, color=CB
        )
        self.clavicle_fkc = CurveNode(
            "clavicle_fkc", pf=rID, shape="stickC", scale=rSz * xDr
        )
        self.clavicle_fkc.cv_rotate(0, 0, -45)
        self.upr_fkc = CurveNode("upr_fkc", pf=rID, up="x", scale=rSz)
        self.lwr_fkc = CurveNode("lwr_fkc", pf=rID, up="x", scale=rSz)
        self.palm_fkc = CurveNode("palm_fkc", pf=rID, up="x", scale=rSz)
        self.ikc = CurveNode("ikc", pf=rID, shape="cube", scale=(0.7, 1.2, 1.4))
        self.pvc = CurveNode("pvc", pf=rID, shape="locator", scale=rSz * 1.5)
        # self.ball_ikc = CurveNode(
        #     "ball_ikc", pf=rID, shape="stickC", scale=xDr * rSz / 3
        # )

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "clavicle_fkc": self.clavicle_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
                # "ball_ikc": self.ball_ikc,
            }
        )

    def twistBones_setup(self):
        rID = self.rigID
        jnt_names = ["radius", "radiusEnd"]
        radius_JC = self.genSkFrNames(jnt_names, pf=rID)
        jnt_names = ["ulna", "ulnaEnd"]
        ulna_JC = self.genSkFrNames(jnt_names, pf=rID)
        (radius_JC[0], ulna_JC[0]) | self.lwr

        radius_loc = LocNode("radius_loc", pf=rID, align=radius_JC[1], p=self.palm)
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])

        radius_loc.cstAim(
            radius_JC[0],
            worldUpType="objectrotation",
            worldUpObject=self.palm,
            aim=(self.x_dir, 0, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        ulna_loc.cstAim(
            ulna_JC[0],
            worldUpType="objectrotation",
            worldUpObject=self.lwr,
            aim=(self.x_dir, 0, 0),
            u=(0, 0, 1),
            wu=(0, 0, 1),
        )
        self.joints.extend([radius_JC[0], ulna_JC[0]])

    def build_fk(self):
        logging.info(self.rigID)
        self.joints_fk = common.extractSk(self.joints, "_fk", p=self.FK_PART)
        self.fkCtl = [self.clavicle_fkc, self.upr_fkc, self.lwr_fkc, self.palm_fkc]
        self.fkGivenCtl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolateAlign(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        rID = self.rigID
        logging.info(rID)
        self.ikc.alignTo(self.palm)
        # pvc_guide = DagNode(rID + "_pvc_guide")
        # self.pvc.alignTo(pvc_guide)
        self.pvc.alignTo(self.lwr)

        self.joints_ik = common.extractSk(self.joints, "_ik", p=self.IK_PART)
        ikH1 = IkNode(
            "1",
            pf=rID,
            sj=self.upr,
            ee=self.palm,
            jsf="_ik",
            sol=1,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            limbScale=1,
            scaleFix=self.masterC.a.globalScale,
            RIG_DATA=self.RIG_DATA,
        )
        self.ikCstG = GroupNode("ikCstG", pf=rID, align=self.palm)
        if self.x_dir == 1:
            for g in (self.ikCstG,):
                g.a.rx.set2(180, add=1)
        ikH1 | self.ikCstG
        self.ikc_gimbal = CurveNode(self.ikc).addGimbal(attrTgt=self.setting)

        #
        #   Constrain ikCstG supporting fk limb
        #
        # // self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)
        self.ikc_gimbal.cstSca(self.ikCstG, mo=1)
        fkForelimb = self.pvc.a.add("fkForelimb", min=0, max=1)
        self.palmFk_ikc = CurveNode(
            rID + "_palmFk_ikc", up="x", align=self.fkCtl[-1], p=self.pvc, addOfs=1
        )
        common.cstMulti(
            self.ikc_gimbal,
            self.palmFk_ikc,
            self.ikCstG,
            w=fkForelimb,
            cstType="par",
            mo=1,
        )

        (self.ikc, self.pvc, self.ikCstG) | self.IK_PART
        self.pvc_line = CurveNode.buildLineLinked(
            self.joints_ik[2],
            self.pvc,
            pf=rID,
            dspType=2,
            p=self.IK_PART,
        )

        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        ikH1.stretchyIk(soft=1)
        self.all_ikHs = [ikH1]
        self.clavicle_fkc.cstPar(self.joints_ik[0], mo=1)
        # self.ikc.cstOri(self.joints_ik[-2], mo=1)
        # self.ikCstG.cstPar(self.joints_ik[-2], mo=1)

        self.ikCtl = [
            self.ikc,
            self.pvc,
            self.ikc_gimbal,
            self.palmFk_ikc,
        ]  # self.ball_ikc,
        self.ikH1 = ikH1

    def blend_fk_ik(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)
        # self.joints_bf = common.extractSk(self.joints, "_bf", p=self.RIG_DATA)

        self.setting | self.CTL_DATA
        self.setting.alignTo(self.palm, offset=(0, 0, rSz * -xDr * 20))
        self.palm.cstPar(self.setting.addOffsetGrp(), mo=1)
        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=1)

        # ball_guide = DagNode(rID + "_ball_guide")
        # self.ball_ikc.alignTo(ball_guide)
        # self.ball_ikc | self.joints_bf[-1]

        total = len(self.joints) - 1
        for i in range(total):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            # bfJ = self.joints_bf[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIk, cstType="par")
            # ut.blendN_(fkJ.a.t, ikJ.a.t, w=fkIk) >> bfJ.a.t
            # ut.blendN_(fkJ.a.r, ikJ.a.r, w=fkIk) >> bfJ.a.r
            # if i < total - 1:
            #     bfJ.a.t >> jnt.a.t
            #     bfJ.a.r >> jnt.a.r
            # else:
            #     self.ball_ikc.cstPar(jnt, mo=1)

        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.add("fkIk", proxy=fkIk, k=0)

        GroupNode(self.ikc + "_matcher", align=self.ikc, p=self.palm_fkc)

    def ribbon_setup(self):
        """
                    upr
        up_bend     --
        md_bend     lwr
        lw_bend     --
                    foot
        """
        rID = self.rigID
        logging.info(rID)

        ribbonUp = RibbonNode(
            self.upr,
            pf=rID + "_up_",
            rbJNum=self.RBN_JNT_NUM,
            volMode=1,
            scaleFix=self.masterC.a.globalScale,
            p=self.RIG_DATA,
            proxyP=self.PRX_GRP,
        )
        ribbonLw = RibbonNode(
            self.lwr,
            pf=rID + "_lw_",
            rbJNum=self.RBN_JNT_NUM,
            volMode=2,
            scaleFix=self.masterC.a.globalScale,
            p=self.RIG_DATA,
            proxyP=self.PRX_GRP,
        )
        # --------------------------------
        # Upper Ribbon
        # --------------------------------
        self.upr.cstPoi(ribbonUp.stt_loc)
        self.clavicle.cstOri(ribbonUp.stt_loc, mo=1)
        # --------------------------------
        # Lower Ribbon
        # --------------------------------
        self.palm.cstPar(ribbonLw.end_loc, mo=1)
        # --------------------------------
        # Ribbon Controls
        # --------------------------------

        # Bend Ctl Setup
        upLoc = ribbonUp.mid_loc
        lwLoc = ribbonLw.mid_loc
        grp = self.CTL_DATA
        up_bend = CurveNode("up_bend", pf=rID, align=upLoc, addOfs=1, p=grp)
        lw_bend = CurveNode("lw_bend", pf=rID, align=lwLoc, addOfs=1, p=grp)
        md_bend = CurveNode("md_bend", pf=rID, align=self.lwr, addOfs=1, p=grp)

        self.all_bend = [up_bend, lw_bend, md_bend]
        for b in self.all_bend:
            b(shape="square", up="x", color=CDY, scale=self.rigSize)

        upLoc.cstPar(up_bend.offset, mo=1)
        lwLoc.cstPar(lw_bend.offset, mo=1)
        up_bend.cstParSca(upLoc.children[0], mo=1)
        lw_bend.cstParSca(lwLoc.children[0], mo=1)

        self.lwr.cstPar(md_bend.offset, mo=1)
        md_bend.cstParSca(ribbonUp.end_loc, mo=1)
        md_bend.cstParSca(ribbonLw.stt_loc, mo=1)

        # Add Ctl Attr to md_bend
        volPower = self.setting.a.add("volume", min=0, max=2, dv=1, k=0)
        volPower >> ribbonUp.volPower
        volPower >> ribbonLw.volPower

        self.addBindJntSet(ribbonUp.rbJnt + ribbonLw.rbJnt)

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.SKL_DATA.a.v
        # visGrp[1] >> self.PRX_GRP.a.v

        # FK IK CTL VIS TOGGLE
        fkIk = self.setting.a.fkIk
        [fkIk >> c.a.v for c in (self.ikc, self.pvc, self.pvc_line, self.ikCstG)]
        [~fkIk >> c.a.v for c in (self.palm_fkc, self.lwr_fkc, self.upr_fkc)]
        self.pvc.a["fkForelimb"] >> self.palmFk_ikc.a.v

        if self.RBN_BONES:
            bowCtl = self.setting.a.add("armBowCtls", min=0, max=1, dv=0, k=0)
            [bowCtl >> ctl.a.v for ctl in self.all_bend]

        mc.hide(self.all_ikHs, self.joints_fk, self.joints_ik)

    def proxy_setup(self):
        proxyList = self.joints
        self.joints.remove(self.palm)
        if self.RBN_BONES:
            if self.upr in proxyList:
                proxyList.remove(self.upr)
            if self.lwr in proxyList:
                proxyList.remove(self.lwr)
        if self.TWIST_BONES:
            if self.lwr in proxyList:
                proxyList.remove(self.lwr)

        rSz = self.rigSize * PRX
        xDr = self.x_dir
        for j in proxyList:
            JointNode(j).addProxyMesh(
                size=rSz, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )

        self.addBindJntSet(proxyList)

    def channel_setup(self):
        self.setting.a.showAttr()
        # self.pvc.a.showAttr(t=1)
        # self.ball_ikc.a.showAttr(r=1)
        for ctl in self.fkCtl + [self.ikc, self.ikc_gimbal, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

    def ro_setup(self):
        for c in [self.ikc, self.ikc_gimbal, self.clavicle_fkc]:
            c.a.ro.set(2)
        self.lwr_fkc.a.ro.set(3)
        self.upr_fkc.a.ro.set(4)
        self.palm_fkc.a.ro.set(5)

    def space_setup(self):
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        spaces = "master, clavicle, COG, uprBody, lwrBody, head"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        spaces = "master, COG, uprBody, lwrBody"
        self.rigNode.a.add("spaceName2", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_clavicle": self.clavicle_fkc})
        self.rigNode.setMsg({"space_arm": self.ikH1.softJ[0]})
        # self.rigNode.setMsg({"space_palm": self.ball_ikc})

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)
        # for c in [self.pvc]:
        #     c.a.add("wsMirrorAxis", k=0, lock=1, cb=0)
        ctlSet = []
        ctlSet.extend(self.fkCtl + self.ikCtl + [self.setting])

        if self.RBN_BONES:
            ctlSet.extend(self.all_bend)

        self.addCtlSet(ctlSet, pf=rID)
        self.space_setup()
        # self.anchor_setup_module(
        #     {"anchorM1": self.joints_bf[-2], "anchorF1": self.clavicle_fkc}
        # )
        self.anchor_setup_module(
            {"anchorM1": self.joints[-2], "anchorF1": self.clavicle_fkc}
        )
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
