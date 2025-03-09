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
        n.genGuideSk()
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
        self.BF_PART = GroupNode("BF", pf=self.rigID, p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.setting = None
        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        self.joints_bf = []
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
        self.pin_fkc = None
        self.ballRoll_loc = None
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

    def genGuideSk(self):
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
        self.build_autoAim(
            self.upr,
            self.palm,
            fkc=self.clavicle_fkc,
            ikc=self.ikc,
            rotaDir=-1,
            attrName="autoClavicle",
        )

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
            "setting", pf=rID, shape="stickS", up="-z", scale=rSz * xDr, color=CB
        )
        self.clavicle_fkc = CurveNode(
            "clavicle_fkc", pf=rID, shape="stickC", scale=rSz * xDr
        )
        self.clavicle_fkc.cv_rotate(0, 0, -45)
        self.upr_fkc = CurveNode(
            "upr_fkc", pf=rID, up="x", shape="circle_round", scale=rSz
        )
        self.lwr_fkc = CurveNode(
            "lwr_fkc", pf=rID, up="x", shape="circle_round", scale=rSz
        )
        self.palm_fkc = CurveNode(
            "palm_fkc", pf=rID, up="x", shape="circle_round", scale=rSz
        )
        # self.ikc = CurveNode("ikc", pf=rID, shape="diamond", scale=rSz * 3)
        self.ikc = CurveNode("ikc", pf=rID, shape="cube", scale=rSz * 2)
        # self.ikc = JointNode("ikc", pf=rID, r=10, shape="cube")
        self.pvc = CurveNode("pvc", pf=rID, shape="sphere2", scale=xDr * rSz * 2)

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
        rID = self.rigID
        radius_JC = self.genSkFrNames(["radius", "radiusEnd"], pf=rID)
        ulna_JC = self.genSkFrNames(["ulna", "ulnaEnd"], pf=rID)

        (radius_JC[0], ulna_JC[0]) | self.lwr

        radius_loc = LocNode("radius_loc", pf=rID, align=radius_JC[1], p=self.palm)
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])
        uType = "objectrotation"
        aim = (self.x_dir, 0, 0)
        z = (0, 0, 1)

        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.palm, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        self.joints.insert(0, radius_JC[0])
        self.joints.insert(0, ulna_JC[0])

    def build_fk(self):
        logging.info(self.rigID)
        self.joints_fk = common.extractSk(self.joints, "_fk", p=self.FK_PART)
        self.fkCtl = [self.clavicle_fkc, self.upr_fkc, self.lwr_fkc, self.palm_fkc]
        self.fkGivenCtl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolateAlign(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        rID = self.rigID
        logging.info(rID)

        self.ikc.a.addSep()
        # self.ikc.alignTo(self.palm)
        self.ikc.snapTo(self.palm)
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
        self.ikc_gimbal = CurveNode(self.ikc).addGimbal()

        #   Constrain ikCstG supporting fk limb
        #   self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)
        self.ikc_gimbal.cstSca(self.ikCstG, mo=1)
        self.pvc.a.addSep()
        fkPin = self.pvc.a.add("fkPin", min=0, max=1)
        self.pin_fkc = CurveNode(
            "pin_fkc",
            pf=rID,
            shape="circle_round",
            up="x",
            align=self.palm,
            p=self.pvc,
            addOfs=1,
        )
        common.cstMulti(
            self.ikc_gimbal, self.pin_fkc, self.ikCstG, w=fkPin, cstType="par", mo=1
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

        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal, self.pin_fkc]
        self.ikH1 = ikH1
        # self.alignOrient_setup()
        common.cstMulti(
            self.ikc, self.pin_fkc, self.joints_ik[-2], w=fkPin, cstType="ori"
        )

    def blend_fk_ik(self):
        rID = self.rigID
        logging.info(rID)
        self.joints_bf = common.extractSk(self.joints, "_bf", p=self.BF_PART)

        palmIn_guide = DagNode(rID + "_palmIn_guide")
        palmIn_loc = LocNode("palmIn", pf=rID, align=palmIn_guide, p=self.joints_bf[-1])
        palmOut_guide = DagNode(rID + "_palmOut_guide")
        palmOut_loc = LocNode("palmOut", pf=rID, align=palmOut_guide, p=palmIn_loc)
        ball_guide = DagNode(rID + "_ball_guide")
        self.ballRoll_loc = LocNode("ballRoll", pf=rID, align=ball_guide, p=palmOut_loc)

        self.setting | self.CTL_DATA
        self.setting.alignTo(self.palm)  # , offset=(rSz * xDr * 35, 0, 0))
        self.palm.cstPar(self.setting.addOffsetGrp(), mo=1)
        fkIkBlend = self.setting.a.add("fkIkBlend", min=0, max=1, dv=1)
        total = len(self.joints) - 1

        for i in range(total):
            fkj = self.joints_fk[i]
            ikj = self.joints_ik[i]
            bfj = self.joints_bf[i]
            jnt = self.joints[i]
            # common.cstMulti(fkj, ikj, jnt, w=fkIkBlend)
            if i > 0:
                ut.blendN_(fkj.a.tx, ikj.a.tx, w=fkIkBlend) >> bfj.a.tx
                ut.blendN_(fkj.a.r, ikj.a.r, w=fkIkBlend) >> bfj.a.r

            if i < total - 1:
                bfj.a.t >> jnt.a.t
                bfj.a.r >> jnt.a.r
            else:
                self.ballRoll_loc.cstPar(jnt, mo=1)

        self.clavicle_fkc.cstPar(self.joints_bf[0], mo=1)

        self.handRollLogic(self.ikc, self.palm_fkc, self.pin_fkc, self.ballRoll_loc)
        self.handBankLogic(
            self.ikc, self.palm_fkc, self.pin_fkc, palmIn_loc, palmOut_loc
        )

        self.ikc.a.addSep()
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.add("fkIkBlend", proxy=fkIkBlend, k=0)

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
        keepVol = self.ikc.a.add("keepVol", min=0, max=2, dv=1, k=0)
        keepVol >> ribbonUp.volPower
        keepVol >> ribbonLw.volPower

        self.addBindJntSet(ribbonUp.rbJnt + ribbonLw.rbJnt)

    def vis_setup(self):
        # visGrp = common.addVisOption(self.visC, self.rigID)
        # visGrp[0] >> self.CTL_DATA.a.v
        # visGrp[1] >> self.SKL_DATA.a.v
        # visGrp[1] >> self.PRX_GRP.a.v

        # FK IK CTL VIS TOGGLE
        fkIkBlend = self.setting.a["fkIkBlend"]
        autoVis = self.setting.a.add("autoVis", min=0, max=1, dv=1, k=0)
        showFk = self.setting.a.add("showFk", min=0, max=1, dv=1, k=0)
        showIk = self.setting.a.add("showIk", min=0, max=1, dv=1, k=0)

        # [fkIkBlend >> c.a.v for c in (self.ikc, self.pvc, self.pvc_line, self.ikCstG)]
        self.visByCondition(
            fkIkBlend,
            autoVis,
            showIk,
            [self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            v=1,
        )
        # [~fkIkBlend >> c.a.v for c in (self.palm_fkc, self.lwr_fkc, self.upr_fkc)]
        self.visByCondition(
            fkIkBlend,
            autoVis,
            showFk,
            self.fkCtl[1:],
            v=0,
        )

        self.pvc.a["fkPin"] >> self.pin_fkc.a.v

        if self.RBN_BONES:
            ribbonCtlVis = self.setting.a.add("ribbonCtlVis", min=0, max=1, dv=0, k=0)
            [ribbonCtlVis >> ctl.a.v for ctl in self.all_bend]

        mc.hide(self.all_ikHs, self.joints_fk, self.joints_ik, self.joints_bf)

    def proxy_setup(self):
        proxyList = self.joints[:-1]
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
                size=rSz, aimDir=(xDr, 0, 0), skipEnd=0, p=self.PRX_GRP
            )

        self.addBindJntSet(proxyList)

    def channel_setup(self):
        self.setting.a.showAttr()
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
        spaces = "master, COG, uprBody, lwrBody, head"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        spaces = "arm, master, clavicle, COG, uprBody, lwrBody"
        self.rigNode.a.add("spaceName2", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_master": self.masterC})
        # self.rigNode.setMsg({"space_clavicle": self.clavicle_fkc})

        self.ikH1.build_pvfkPinSetup(ikTarget=self.ikc_gimbal)
        self.rigNode.setMsg({"space_arm": self.ikH1.pvChainJ[0]})
        self.rigNode.setMsg({"space_palm": self.ballRoll_loc})

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)

        self.setWSMirror([self.ikc, self.ikc_gimbal])

        ctlSet = []
        ctlSet.extend(self.fkCtl + self.ikCtl + [self.setting, self.pin_fkc])

        if self.RBN_BONES:
            ctlSet.extend(self.all_bend)

        self.addCtlSet(ctlSet, pf=rID)
        self.space_setup()
        self.anchor_setup_module(
            {
                "anchorM1": self.joints_bf[-2],
                "anchorF1": self.clavicle_fkc.offset,
            }
        )
        # self.anchor_setup_module(
        #     {"anchorM1": self.joints[-2], "anchorF1": self.clavicle_fkc}
        # )
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()
        # self.pvc.alignTo(DagNode(rID + "_pvc_guide"))

    # def alignOrient_setup(self):
    #     """
    #     Let palm to follow ikH orientation or not
    #     """
    #     rID = self.rigID
    #     palmIkJ = self.joints_ik[-2]
    #     lwrIkJ = self.joints_ik[2]

    #     alignOrient = self.ikc.a.add("alignOrient", min=0, max=1, dv=1)
    #     nonAlign = LocNode("nonAlign_loc#", pf=rID, align=self.palm, p=lwrIkJ, addOfs=1)
    #     palmIkJ.cstPoi(nonAlign.offset)
    #     common.cstMulti(nonAlign, self.ikc, palmIkJ, mo=1, w=alignOrient, cstType="ori")
