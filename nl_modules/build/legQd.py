import maya.cmds as mc
import logging
from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.curve_node import CurveNode
from nl_modules.nodel.group_node import GroupNode
from nl_modules.nodel.ik_node import IkNode
from nl_modules.nodel.joint_node import JointNode
from nl_modules.nodel.loc_node import LocNode
from nl_modules.nodel.ribbon_node import RibbonNode
from nl_modules.utils import common, utils_node as ut
from nl_modules.utils.color import Color
from nl_modules.build.rig_module import RigModule

PRX = 8
CDY = Color.D_YELLOW


class LegQd(RigModule):
    """Build LegQd component with given rigNode.
    e.g.
        n = LegQd('lfQDLeg0_RGN')  # n.__dict__
        n.genGuideSk()
        n.build()
    """

    def __init__(self, rigNode):
        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()
        self.PATELLA_BONE = self.master_guide.a.patellaBone.get()
        self.TOE_BONES = self.master_guide.a.toeBones.get()
        self.TWIST_BONES = self.master_guide.a.twistBones.get()
        self.KNEE_FIX = self.master_guide.a.kneeFix.get()
        self.FK_PART = GroupNode("FK", pf=self.rigID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=self.rigID, p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=self.rigID, p=self.PRX)

        self.setting = None
        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        self.jointsFix = None
        self.hip = None
        self.upr = None
        self.lwr = None
        self.palm = None
        self.ball = None
        self.tip = None
        self.hip_fkc = None
        self.upr_fkc = None
        self.lwr_fkc = None
        self.palm_fkc = None
        self.digit_fkc = None
        self.ball_fkc = None
        self.pvc = None
        self.ikc = None
        self.ikCtl = None
        self.fkCtl = None
        self.palmScale = None
        self.toeWiggleG = None
        self.ikc_gimbal = None
        self.pvc_line = None
        self.pvRota_line = None
        self.all_ikH = {}
        self.all_bend = None
        self.ikCstG = None
        self.subCtls = []
        self.toesJntList = None
        self.toesCtlsList = None
        self.toesRootJ = rigNode.a.toesRootJ.inConnNode
        self.ikH1 = None
        self.ballG_ikc = None
        self.extra_ikc = None

    def genGuideSk(self):
        self.genSk_module(["hip", "upr", "lwr", "palm", "digit", "ball", "tip"])

        if self.TOE_BONES:
            self.toesRootJ = self.genSkFrNames(["toesRoot"])[0]
            self.toesRootJ | self.SKL_DATA
            self.rigNode.setMsg({"toesRootJ": self.toesRootJ})
            toe_names = [
                ["toe00_1", "toe00_2", "toe00_3", "toe00_4"],
                ["toe01_1", "toe01_2", "toe01_3", "toe01_4", "toe01_5"],
                ["toe02_1", "toe02_2", "toe02_3", "toe02_4", "toe02_5"],
                ["toe03_1", "toe03_2", "toe03_3", "toe03_4", "toe03_5"],
                ["toe04_1", "toe04_2", "toe04_3", "toe04_4", "toe04_5"],
            ]
            for names in toe_names:
                fgr_jnts = self.genSkFrNames(names, r=0.3)
                fgr_jnts[0].freezeXf()
                fgr_jnts[0] | self.toesRootJ

    def ctl_setup(self):
        rSz = self.rigSize
        rID = self.rigID
        xDr = self.x_dir
        self.setting = CurveNode("setting", pf=rID, shape="sphere", scale=rSz)
        self.hip_fkc = CurveNode(
            "hip_fkc", pf=rID, up="-y", shape="stickC", scale=rSz * xDr * 0.8
        )
        self.upr_fkc = CurveNode("upr_fkc", pf=rID, up="x", scale=rSz)
        self.lwr_fkc = CurveNode("lwr_fkc", pf=rID, up="x", scale=rSz)
        self.palm_fkc = CurveNode("palm_fkc", pf=rID, up="x", scale=rSz)
        self.digit_fkc = CurveNode("digit_fkc", pf=rID, up="x", scale=rSz)
        self.ball_fkc = CurveNode(
            "ball_fkc",
            pf=rID,
            scale=xDr * rSz / 2,
        )
        self.ikc = CurveNode("ikc", pf=rID, shape="cube", color=CDY)
        # self.ikc = CurveNode("ikc", pf=rID, shape="foot_quad", color=CDY)
        self.pvc = CurveNode("pvc", pf=rID, shape="diamond", scale=rSz * 0.8)
        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "hip_fkc": self.hip_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "digit_fkc": self.digit_fkc,
                "ball_fkc": self.ball_fkc,
                "ikc": self.ikc,
                "pvc": self.pvc,
            }
        )

    def build(self):
        """Build rig for joints
        hip 0
            upr 1
                lwr 2
                    palm 3
                        digit 4
                            ball 5
                                tip 6
        """
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.hip, self.upr, self.lwr, self.palm, self.digit, self.ball, self.tip = (
            self.joints
        )
        self.ctl_setup()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        self.singleBallCtl_setup()

        if self.KNEE_FIX:
            self.boneFix_setup(self.lwr, self.palm)
        # if self.RBN_BONES:
        #     self.ribbon_setup()
        if self.PATELLA_BONE:
            self.patella_setup(self.PRX_GRP)
        if self.TWIST_BONES:
            self.twistBones_setup()
        if self.TOE_BONES:
            self.toesRootJ | self.palm
            self.toesJntList = []
            for rJ in self.toesRootJ.childrenJt:
                self.toesJntList.append([fgr for fgr in rJ.allChildrenJt2])
                rJ.a.segmentScaleCompensate.set(0)
            self.digits_setup()

        self.post_setup()
        self.custom_setup()

    def build_fk(self):
        logging.info(self.rigID)
        self.joints_fk = common.extractSk(self.joints, "_fk", p=self.FK_PART)
        self.fkCtl = [
            self.hip_fkc,
            self.upr_fkc,
            self.lwr_fkc,
            self.palm_fkc,
            self.digit_fkc,
            self.ball_fkc,
        ]
        self.fkGivenCtl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolateAlign(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        rID = self.rigID
        logging.info(rID)
        mG = self.master_guide
        pvc_guide = DagNode(rID + "_pvc_guide")
        inPos_guide = DagNode(rID + "_palm_inPos_guide")
        outPos_guide = DagNode(rID + "_palm_outPos_guide")
        heelPos_guide = DagNode(rID + "_palm_heelPos_guide")
        toePos_guide = DagNode(rID + "_palm_toePos_guide")
        self.ikc.alignTo(mG)
        self.pvc.alignTo(pvc_guide)
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
        ikHX = IkNode("X", pf=rID, sj=self.palm, ee=self.digit, jsf="_ik")
        ikH2 = IkNode("2", pf=rID, sj=self.digit, ee=self.ball, jsf="_ik")
        ikH3 = IkNode("3", pf=rID, sj=self.ball, ee=self.tip, jsf="_ik")
        self.ikCstG = GroupNode("ikCstG", pf=rID, snap=self.palm, alignR=mG)
        extraRollG = GroupNode("extraRollG", pf=rID, snap=self.digit, alignR=mG)
        ballRollG = GroupNode("ballRollG", pf=rID, snap=self.ball, alignR=mG)
        toeWiggleG = GroupNode("toeWiggleG", pf=rID, align=self.ball)
        footRollG = GroupNode("footRollG", pf=rID, snap=toePos_guide, alignR=mG)
        toeRollG = GroupNode("toeRollG", pf=rID, snap=toePos_guide, alignR=mG)
        inRollG = GroupNode("inRollG", pf=rID, snap=inPos_guide, alignR=mG)
        outRollG = GroupNode("outRollG", pf=rID, snap=outPos_guide, alignR=mG)
        heelRollG = GroupNode("heelRollG", pf=rID, snap=heelPos_guide, alignR=mG)

        if self.x_dir == 1:
            for g in (
                self.ikCstG,
                extraRollG,
                ballRollG,
                toeWiggleG,
                footRollG,
                toeRollG,
                inRollG,
                outRollG,
                heelRollG,
            ):
                g.a.rx.set2(180, add=1)

        (ikH1, ikHX) | extraRollG | ballRollG | inRollG
        (ikH2, ikH3) | toeWiggleG | inRollG
        inRollG | outRollG | footRollG | toeRollG | heelRollG | self.ikCstG

        self.ikc_gimbal = CurveNode(self.ikc).addGimbal(attrTgt=self.setting)
        self.ikc.snapTo(self.digit)
        self.ikc_gimbal.cstParSca(self.ikCstG, mo=1)
        self.ikc.cv_drop()
        self.ikc_gimbal.cv_drop()

        self.footRollLogic(self.ikc, heelRollG, ballRollG, footRollG, toeRollG)
        self.footBankLogic(self.ikc, inRollG, outRollG)

        self.ikc.a.add("kneeTwist") * self.x_dir >> ikH1.a.twist
        (self.ikc, self.pvc, self.ikCstG) | self.IK_PART
        self.pvc_line = CurveNode.buildLineLinked(
            self.joints_ik[2], self.pvc, pf=rID, dspType=2, p=self.IK_PART
        )
        self.ikc.addOffsetGrp()
        self.pvc.addOffsetGrp()

        ikH1.stretchyIk(soft=1)
        self.all_ikH = {"main": ikH1, "ball": ikH2, "toe": ikH3}
        self.toeWiggleG = toeWiggleG
        self.hip_fkc.cstPar(self.joints_ik[0], mo=1)

        self.ikCtl = [self.ikc, self.pvc, self.ikc_gimbal]
        self.ikH1 = ikH1
        self.subCtl_setup(ballRollG, toeRollG, inRollG, outRollG, heelRollG)
        self.extraRollLogic(ballRollG, extraRollG, self.IK_PART)

    def extraRollLogic(self, ballRollG, extraRollG, grp):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        # Setup aim logic
        aimGrp = extraRollG.addOffsetGrp(below=1, relink=0)
        aimGrp | extraRollG.offset

        uprIkJ = self.joints_ik[1]
        aimG_loc = LocNode(aimGrp + "_loc", align=uprIkJ, p=grp)
        self.ikc.cstPoi(aimG_loc, mo=1)

        palmAim = self.ikc.a.add("palmAim", min=0, max=1, dv=1)
        dv = -0.5 if "Arm" in rID else 0.5
        rollDistRatio = self.setting.a.add("rollDistRatio", dv=dv)
        common.cstMulti(
            aimG_loc,
            uprIkJ,
            aimGrp,
            cstType="aim",
            w=palmAim,
            worldUpType=2,
            worldUpObject=self.ikc,
            u=(0, 1, 0),
            wu=(1, 0, 0),
        )

        # setup palm rotate logic, after aimGrp is ready
        ofs = extraRollG.addOffsetGrp()
        ofs | aimGrp
        d = ut.distDim_(self.ikc, self.joints_ik[1])
        D = d.get()
        (d - D) * rollDistRatio * palmAim >> extraRollG.a.rx

        self.extra_ikc = extraRollG.addOffsetGrp(below=1)
        cName = rID + "_extra_ikc"
        CurveNode(self.extra_ikc)(name=cName, shape="rotator", scale=-rSz * xDr)

    def subCtl_setup(self, ballRollG, toeRollG, inRollG, outRollG, heelRollG):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir

        for g in [toeRollG, inRollG, outRollG, heelRollG]:
            ctl = g.addOffsetGrp(below=1)
            CurveNode(ctl)(name=g.name + "_ctl", shape="diamond", scale=rSz / 4)
            self.subCtls.append(ctl)

        self.ballG_ikc = ballRollG.addOffsetGrp(below=1)
        cName = rID + "_ballG_ikc"
        CurveNode(self.ballG_ikc)(
            name=cName,
            shape="stickC",
            scale=-rSz * xDr / 3,
            rotate=(0, 90, 0),
        )
        self.subCtls.append(self.ballG_ikc)

    def digits_setup(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)
        self.toesCtlsList = []
        scale = xDr * rSz / 8

        for toeJs in self.toesJntList:
            dupTgt = DagNode(toeJs[2])
            ctl, ikj = self.build_digit_ik(dupTgt, scale, p=self.ball_fkc)
            ikj.a.r >> dupTgt.a.r
            ctlList = []
            fkToeList = toeJs[3:-1]
            for jnt in fkToeList:
                c = CurveNode(
                    jnt + "_ctl", shape="stickC", align=jnt, up="-z", scale=scale
                )
                ctlList.append(c)

            self.fkGivenCtl(fkToeList, ctlList, p=self.CTL_DATA, ori=1)
            self.toesCtlsList.append(ctlList)
            self.toesCtlsList.append([ctl])

        for toeJs in self.toesJntList:
            IkNode(
                toeJs[1],
                sj=toeJs[1],
                ee=toeJs[2],
                sol=0,
                scaleFix=self.masterC.a.globalScale,
                RIG_DATA=self.RIG_DATA,
                vis=0,
                p=self.ball_fkc,
            )

        # splay = self.ball_fkc.a.add("splay", min=-5, max=5)
        # toeCount = len(self.toesJntList)
        # splayRange = 45

        # for i in range(toeCount):
        #     tgt = toeLocList[i].a.rz
        #     common.sdk2(splay, tgt, -5, splayRange * (-1 + 2 / (toeCount - 1) * i))
        #     common.sdk2(splay, tgt, 5, -splayRange * (-1 + 2 / (toeCount - 1) * i))

    def twistBones_setup(self):
        rID = self.rigID
        jnt_names = ["radius", "radiusEnd"]
        radius_JC = self.genSkFrNames(jnt_names)
        jnt_names = ["ulna", "ulnaEnd"]
        ulna_JC = self.genSkFrNames(jnt_names)

        parent = self.boneFix if self.KNEE_FIX else self.lwr
        (radius_JC[0], ulna_JC[0]) | parent

        radius_loc = LocNode(
            "radius_loc", pf=self.rigID, align=radius_JC[1], p=self.palm
        )
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])
        uType = "objectrotation"
        aim = (self.x_dir, 0, 0)
        z = (0, 0, 1)

        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        self.joints.extend([radius_JC[0], ulna_JC[0]])

    def blend_fk_ik(self):
        rID = self.rigID
        rSz = self.rigSize
        xDr = self.x_dir
        logging.info(rID)
        self.setting | self.CTL_DATA
        self.setting.alignTo(self.digit, offset=(0, rSz * -xDr * 20, 0))
        ofs = self.setting.addOffsetGrp()
        self.palm.cstPar(ofs, mo=1)

        fkIkBlend = self.setting.a.add("fkIkBlend", min=0, max=1, dv=1)
        for i in range(len(self.joints) - 1):
            fkJ = self.joints_fk[i]
            ikJ = self.joints_ik[i]
            jnt = self.joints[i]
            common.cstMulti(fkJ, ikJ, jnt, w=fkIkBlend)

        # Useful for fk ik switch popUp menu
        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.add("fkIkBlend", proxy=fkIkBlend, k=0)

        GroupNode(self.ikc + "_matcher", align=self.ikc, p=self.digit_fkc)

    def singleBallCtl_setup(self):
        """Make ball ctl the single ctl in both FK IK"""
        rID = self.rigID
        fkIkBlend = self.setting.a["fkIkBlend"]

        ball_fkc_ofs = self.ball_fkc.offset
        ball_fkc_ofs.removeCstNodes()

        self.all_ikH["toe"] | self.ball_fkc
        ball_fkj = self.joints_fk[5]

        self.spaceAlign(
            self.ball_fkc,
            spaces=[ball_fkj.offset, self.toeWiggleG],
            w=fkIkBlend,
            cstType="par",
        )
        ballOfsG = GroupNode(
            "ballOfsG",
            pf=rID,
            snap=self.ball.offset,
            p=self.FK_PART,
        )
        ball_fkc_ofs | ballOfsG
        ball_fkj.removeCstNodes()
        self.spaceAlign(
            ball_fkj,
            spaces=[self.ball_fkc, ball_fkj.offset],
            w=fkIkBlend,
            cstType="ori",
            mo=1,
        )

    def ribbon_setup(self):
        """
                    upr
        up_bend     --
        md_bend     lwr
        lw_bend     --
                    foot
        """
        rID = self.rigID
        rSz = self.rigSize

        logging.info(rID)
        num = self.RBN_JNT_NUM
        scale = self.masterC.a.globalScale
        data = self.RIG_DATA
        g = self.PRX_GRP

        pf = rID + "_up_"
        ribbonUp = RibbonNode(
            self.upr, pf=pf, rbJNum=num, volMode=1, scaleFix=scale, p=data, proxyP=g
        )
        pf = rID + "_lw_"
        ribbonLw = RibbonNode(
            self.lwr, pf=pf, rbJNum=num, volMode=2, scaleFix=scale, p=data, proxyP=g
        )
        # Upper Ribbon
        # --------------------------------
        self.upr.cstPoi(ribbonUp.stt_loc)
        self.hip.cstOri(ribbonUp.stt_loc, mo=1)
        # Lower Ribbon
        # --------------------------------
        self.palm.cstPar(ribbonLw.end_loc, mo=1)
        # Ribbon Controls
        # --------------------------------

        # Bend Ctl Setup
        upLoc = ribbonUp.mid_loc
        lwLoc = ribbonLw.mid_loc
        cData = self.CTL_DATA
        up_bend = CurveNode("up_bend", pf=rID, align=upLoc, addOfs=1, p=cData)
        lw_bend = CurveNode("lw_bend", pf=rID, align=lwLoc, addOfs=1, p=cData)
        md_bend = CurveNode("md_bend", pf=rID, align=self.lwr, addOfs=1, p=cData)

        self.all_bend = [up_bend, lw_bend, md_bend]
        for b in self.all_bend:
            b(shape="square", up="x", color=CDY, scale=rSz)

        upLoc.cstPar(up_bend.offset, mo=1)
        lwLoc.cstPar(lw_bend.offset, mo=1)
        up_bend.cstParSca(upLoc.children[0], mo=1)
        lw_bend.cstParSca(lwLoc.children[0], mo=1)

        self.lwr.cstPar(md_bend.offset, mo=1)
        md_bend.cstParSca(ribbonUp.end_loc, mo=1)

        stt_ofs = ribbonLw.stt_loc.addOffsetGrp(count=2)
        md_bend.cstParSca(stt_ofs[0], mo=1)

        if self.KNEE_FIX:
            self.boneFix_sdk(self.lwr, stt_ofs[1])

        # Add Ctl Attr to md_bend
        volPower = self.setting.a.add("volume", min=0, max=2, dv=1, k=0)
        volPower >> ribbonUp.volPower
        volPower >> ribbonLw.volPower

        self.addBindJntSet(ribbonUp.rbJnt + ribbonLw.rbJnt)

    def proxy_setup(self):
        proxyList = self.joints
        proxyToeList = []

        if self.TOE_BONES:
            proxyList.remove(self.ball)
            proxyList.remove(self.palm)
            proxyList.remove(self.digit)
            proxyToeList.append(self.toesRootJ)
            for t in self.toesJntList:
                proxyToeList.extend(t)
        if self.KNEE_FIX:
            if self.boneFix:
                proxyList.append(self.boneFix)
                if self.lwr in proxyList:
                    proxyList.remove(self.lwr)
        if self.TWIST_BONES:
            if self.lwr in proxyList:
                proxyList.remove(self.lwr)
            if self.boneFix in proxyList:
                proxyList.remove(self.boneFix)

        rSz = self.rigSize
        aim = (self.x_dir, 0, 0)
        for j in proxyList:
            JointNode(j).addProxyMesh(
                size=rSz * PRX, aimDir=aim, skipEnd=1, p=self.PRX_GRP
            )
        for j in proxyToeList:
            JointNode(j).addProxyMesh(
                size=rSz * 2, aimDir=aim, skipEnd=1, p=self.PRX_GRP
            )

        if proxyList:
            self.addBindJntSet(proxyList)
        if proxyToeList:
            self.addBindJntSet(proxyToeList)

    def vis_setup(self):

        self.ctrlOnOffByAttr(
            self.setting.a["fkIkBlend"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.fkCtl[1:-1],
        )
        if self.all_bend:
            self.ctrlOnOffByAttr(
                self.setting.a.add("bowCtls", min=0, max=1, dv=1, k=0),
                onList=self.all_bend,
            )

        # subCtls = self.setting.a.add("subCtls", min=0, max=1, dv=1, k=0)
        # [subCtls >> self.ikCstG.children[0].a.v]

        [ikh.hide() for ikh in self.all_ikH.values()]

        self.ctrlOnOffByAttr(
            self.masterC.a.debug,
            onList=self.joints_fk + self.joints_ik,
        )

    def channel_setup(self):
        self.setting.a.showAttr()
        self.pvc.a.showAttr(t=1)
        self.extra_ikc.a.showAttr(r=1)
        for ctl in self.fkCtl + self.subCtls + [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

    def ro_setup(self):
        for c in self.fkCtl + self.ikCtl + [self.lwr]:
            c.a.ro.set(2)

    def space_setup(self):
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        self.rigNode.a.add("spaceName1", attrType="string", txt="master, hip, COG")
        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        self.rigNode.a.add("spaceName2", attrType="string", txt="leg, master, hip, COG")
        self.rigNode.setMsg({"space_master": self.masterC})
        self.rigNode.setMsg({"space_hip": self.hip_fkc})
        self.rigNode.setMsg({"space_leg": self.ikH1.softJ[0]})

    def post_setup(self):
        rID = self.rigID
        logging.info(rID)

        self.setWSMirror([self.ikc, self.ikc_gimbal, self.pvc])
        ctlSet = self.fkCtl + self.ikCtl + self.subCtls + [self.setting, self.extra_ikc]
        # if self.RBN_BONES:
        #     ctlSet.extend(self.all_bend)
        if self.TOE_BONES:
            [ctlSet.extend(s) for s in self.toesCtlsList or []]
        self.addCtlSet(ctlSet)
        self.space_setup()
        self.anchor_setup_module({"anchorF1": self.hip_fkc})
        self.proxy_setup()
        self.vis_setup()
        self.channel_setup()
        self.ro_setup()
        self.post_module()

    def custom_setup(self):
        pass
