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
from nl_modules.utils import common
from nl_modules.utils.color import Color


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
        # self.palmScale = self.setting.a.add("palmScale", min=0, dv=1)
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        if self.RBN_BONES:
            self.ribbon_setup()
        if self.TWIST_BONES:
            self.twistBones_setup()
        self.post_setup()

    def createCtl(self):
        rSz = self.rigSize
        rID = self.rigID
        xDr = self.x_dir
        self.setting = CurveNode("setting", pf=rID, shape="sphere", scale=rSz)
        self.clavicle_fkc = CurveNode(
            "clavicle_fkc", pf=rID, shape="stickC", scale=rSz * xDr
        )
        self.clavicle_fkc.cv_rotate(0, 0, -45)
        self.upr_fkc = CurveNode("upr_fkc", pf=rID, up="x", scale=rSz)
        self.lwr_fkc = CurveNode("lwr_fkc", pf=rID, up="x", scale=rSz)
        self.palm_fkc = CurveNode("palm_fkc", pf=rID, up="x", scale=rSz)
        self.ikc = CurveNode("ikc", pf=rID, shape="cube", scale=(rSz * 2, rSz, rSz * 3))
        self.pvc = CurveNode("pvc", pf=rID, shape="diamond", scale=rSz / 2)
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "clavicle_fkc": self.clavicle_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
            }
        )

    def twistBones_setup(self):
        jnt_names = ["radius", "radiusEnd"]
        radius_JC = self.genSkFrNames(jnt_names, pf=self.rigID)
        jnt_names = ["ulna", "ulnaEnd"]
        ulna_JC = self.genSkFrNames(jnt_names, pf=self.rigID)
        (radius_JC[0], ulna_JC[0]) | self.lwr

        radius_loc = LocNode(
            "radius_loc", pf=self.rigID, align=radius_JC[1], p=self.palm
        )
        ulna_loc = LocNode("ulna_loc", pf=self.rigID, align=ulna_JC[1], p=self.palm)
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
        # Scale
        # proxyScale = self.palm_fkc.a.add("palmScale", proxy=self.palmScale)
        # proxyScale >> self.palm_fkc.a.s
        #
        # for fkJ in self.joints_fk[3:]:
        #     proxyScale >> fkJ.a.s

    def build_ik(self):
        logging.info(self.rigID)
        pvc_guide = DagNode(self.rigID + "_pvc_guide")
        self.ikc.alignTo(self.palm)
        self.pvc.alignTo(pvc_guide)
        rigID = self.rigID
        self.joints_ik = common.extractSk(self.joints, "_ik", p=self.IK_PART)
        ikH1 = IkNode(
            "1",
            pf=rigID,
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
        ikH2 = IkNode("2", pf=rigID, sj=self.palm, ee=self.ball, jsf="_ik")
        self.ikCstG = GroupNode("ikCstG", pf=rigID, align=self.palm)
        if self.x_dir == 1:
            for g in (self.ikCstG,):
                g.a.rx.set2(180, add=1)

        (ikH1, ikH2) | self.ikCstG
        self.ikc_gimbal = CurveNode(self.ikc).addGimbal(attrTgt=self.setting)
        self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)
        (self.ikc, self.pvc, self.ikCstG) | self.IK_PART
        self.pvc_line = CurveNode.buildLineLinked(
            self.joints_ik[2],
            self.pvc,
            pf=self.rigID,
            dspType=2,
            p=self.IK_PART,
        )

        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()
        ikH1.stretchyIk(pvPin=1, soft=1)
        self.all_ikHs = [ikH1, ikH2]
        self.clavicle_fkc.cstPar(self.joints_ik[0], mo=1)

        # Scale
        # proxyScale = self.ikc.a.add("palmScale", proxy=self.palmScale)
        # proxyScale >> self.ikc.a.s
        # for ikJ in self.joints_ik[3:]:
        #     proxyScale >> ikJ.a.s
        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal]
        self.ikH1 = ikH1

    # def add_pvcRota_JC(self):
    #     """
    #     TWO-J CHAIN FOR pvcRota
    #     """
    #     s = self.rigSize
    #
    #     self.pvcRota.addOffsetGrp()
    #     ofs = [s * self.x_dir * 2, 0, 0]
    #     twoJ = JointNode.makeTwoJnts(
    #         "twoJ",
    #         pf=self.rigID,
    #         r=s / 2,
    #         snap=self.joints_ik[1],
    #         ofs=ofs,
    #         p=self.joints_ik[0],
    #     )
    #     ikH_two = IkNode(
    #         "two", pf=twoJ[0].name, sj=twoJ[0], ee=twoJ[1], p=self.RIG_DATA
    #     )
    #
    #     self.ikc.cstPoi(ikH_two)
    #     twoJ[0].cstPar(self.pvcRota.offset, mo=1)
    #     ikH_two.hide()

    def blend_fk_ik(self):
        # spaces = [self.clavicle_fkc, self.masterC]
        # self.followAlignTwo(self.main_ikc, spaces, 0, cstType="par")
        # self.followAlignTwo(self.main_pvc, spaces, 0, cstType="par")
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)
        self.setting | self.CTL_DATA
        self.setting.alignTo(self.palm, offset=(0, 0, rSz * -xDr * 20))
        self.palm.cstPar(self.setting.addOffsetGrp(), mo=1)
        fkIk = self.setting.a.add("fkIk", min=0, max=1, dv=1)

        for i in range(len(self.joints) - 1):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIk, cstType="par")

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
        logging.info(self.rigID)

        ribbonUp = RibbonNode(
            self.upr,
            pf=self.rigID + "_up_",
            rbJNum=self.RBN_JNT_NUM,
            volMode=1,
            scaleFix=self.masterC.a.globalScale,
            p=self.RIG_DATA,
            proxyP=self.PRX_GRP,
        )
        ribbonLw = RibbonNode(
            self.lwr,
            pf=self.rigID + "_lw_",
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
        up_bend = CurveNode("up_bend", pf=self.rigID, align=upLoc, addOfs=1, p=grp)
        lw_bend = CurveNode("lw_bend", pf=self.rigID, align=lwLoc, addOfs=1, p=grp)
        md_bend = CurveNode("md_bend", pf=self.rigID, align=self.lwr, addOfs=1, p=grp)

        self.all_bend = [up_bend, lw_bend, md_bend]
        for b in self.all_bend:
            b(shape="square", up="x", color=Color.D_YELLOW, scale=self.rigSize)

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

    # def anchor_setup(self):
    #     anchorF1 = LocNode(
    #         "anchorF1", pf=self.rigID, size=self.rigSize * 10, color=Color.PINK
    #     )
    #     anchorF1.a.message >> self.rigNode.a.anchorF1
    #     anchorM1 = LocNode(
    #         "anchorM1", pf=self.rigID, size=self.rigSize * 10, color=Color.L_BLUE
    #     )
    #     anchorM1.a.message >> self.rigNode.a.anchorM1
    #     (anchorF1, anchorM1) | self.masterC
    #     anchorF1.snapTo(self.clavicle)
    #     anchorF1.cstPar(self.clavicle_fkc.offset, mo=1)
    #     self.palm.cstPar(anchorM1)
    #     anchorF1.hide()
    #     anchorM1.hide()

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.SKL_DATA.a.v
        # visGrp[1] >> self.PRX_GRP.a.v

        fkIk = self.setting.a.fkIk
        [fkIk >> c.a.v for c in (self.ikc, self.pvc, self.pvc_line, self.ikCstG)]
        [~fkIk >> c.a.v for c in (self.palm_fkc, self.lwr_fkc, self.upr_fkc)]

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

        rSz = self.rigSize * 6
        xDr = self.x_dir
        for j in proxyList:
            JointNode(j).addProxyMesh(
                size=rSz, aimDir=(xDr, 0, 0), skipEnd=1, p=self.PRX_GRP
            )

        self.addBindJntSet(proxyList)

    def channel_setup(self):
        self.setting.a.showAttr()
        self.pvc.a.showAttr(t=1)
        for ctl in self.fkCtl + [self.ikc, self.ikc_gimbal]:
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
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_clavicle": self.clavicle_fkc})
        self.rigNode.setMsg({"space_arm": self.ikH1.softJ[0]})
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        self.rigNode.a.add(
            "spaceName1",
            attrType="string",
            txt="master, clavicle, COG, uprBody, lwrBody, head",
        )
        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        self.rigNode.a.add(
            "spaceName2", attrType="string", txt="arm, master, COG, uprBody, lwrBody"
        )

        # tempLoc = LocNode('temp_#')
        # self.rigNode.setMsg({"space_temp": tempLoc})

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)
        for c in [self.pvc]:
            c.a.add("wsMirrorAxis", k=0, lock=1, cb=0)
        ctlSet = []
        ctlSet.extend(self.fkCtl + self.ikCtl + [self.setting])

        if self.RBN_BONES:
            ctlSet.extend(self.all_bend)

        self.addCtlSet(ctlSet, pf=rID)
        self.space_setup()
        self.anchor_setup_module({"anchorM1": self.palm, "anchorF1": self.clavicle_fkc})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()


if __name__ == "__main__":
    for n in mc.ls("*RGN", type="script"):
        Arm(DagNode(n)).build()
