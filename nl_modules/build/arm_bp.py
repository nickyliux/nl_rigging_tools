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


class ArmBp(RigModule):
    """Build arm component with given rigNode.
    e.g.
        n = ArmBp('lfArmBp0_RGN')  # n.__dict__
        n.gen_guide_sk()
        n.build()
    """

    def __init__(self, rigNode):

        if isinstance(rigNode, str):
            rigNode = DagNode(rigNode)

        super().__init__(rigNode)
        self.TWIST_BONES = self.master_guide.a.twistBones.get()
        self.RBN_BONES = self.master_guide.a.rbnBones.get()
        self.RBN_JNT_NUM = self.master_guide.a.rbnJntNum.get()
        self.SCAPULAR_BONE = self.master_guide.a.scapularBone.get()

        rID, rSz, xDr = self.getMyVar()
        self.FK_PART = GroupNode("FK", pf=rID, p=self.CTL_DATA)
        self.IK_PART = GroupNode("IK", pf=rID, p=self.CTL_DATA)
        self.BF_PART = GroupNode("BF", pf=rID, p=self.CTL_DATA)
        self.PRX_GRP = GroupNode("PRX", pf=rID, p=self.PRX)

        self.setting = None
        self.joints = []
        self.joints_fk = []
        self.joints_ik = []
        self.joints_bf = []
        self.clavicle = None
        self.clavBone = None
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
        self.palm_ikc = None
        self.pin_fkc = None
        self.ballRoll_loc = None
        self.ikCtl = None
        self.fkCtl = None
        self.toe_wiggle_grp = None
        self.pvc_line = None
        self.pvRota_line = None
        self.all_ikHs = None
        self.all_bend = None
        self.ikCstG = None
        self.ikH1 = None

    def gen_guide_sk(self):
        self.gen_guide_sk_module(["clavicle", "upr", "lwr", "palm", "ball"])

    def build_ctl(self):
        rID, rSz, xDr = self.getMyVar()
        self.setting = CurveNode(
            "setting",
            pf=rID,
            shape="sphere2",
            scale=rSz * 2,
            color=1,
            top=1,
            p=self.CTL_DATA,
        )
        self.clavicle_fkc = CurveNode(
            "clavicle_fkc", pf=rID, shape="stickC", scale=rSz * xDr
        )
        self.clavicle_fkc.cv_rotate(0, 0, -45)

        self.upr_fkc = CurveNode(
            "upr_fkc", pf=rID, shape="circleC", up="x", scale=rSz * 1.5 * xDr
        )
        self.lwr_fkc = CurveNode(
            "lwr_fkc", pf=rID, shape="circleC", up="x", scale=rSz * 1.5 * xDr
        )
        self.palm_fkc = CurveNode(
            "palm_fkc", pf=rID, shape="circleC", up="x", scale=rSz * 1.5 * xDr
        )

        self.ikc = CurveNode("ikc", pf=rID, shape="trapezoid", scale=rSz * 1.5 * xDr)
        self.ikc.cv_rotate(0, 90, 0)
        self.palm_ikc = CurveNode(
            "palm_ikc",
            pf=rID,
            shape="squareR",
            up="x",
            scale=rSz * 1.2 * xDr,
            move=(xDr * rSz * 7, 0, 0),
        )
        self.pvc = CurveNode("pvc", pf=rID, shape="diamond", scale=rSz)

        self.rigNode.setMsg(
            {
                "setting": self.setting,
                "clavicle_fkc": self.clavicle_fkc,
                "upr_fkc": self.upr_fkc,
                "lwr_fkc": self.lwr_fkc,
                "palm_fkc": self.palm_fkc,
                "ikc": self.ikc,
                "palm_ikc": self.palm_ikc,
                "pvc": self.pvc,
            }
        )

    def build(self):
        self.build_module()
        self.joints = self.rootJ.allChildrenJt2
        self.clavicle, self.upr, self.lwr, self.palm, self.ball = self.joints
        self.build_ctl()
        self.build_fk()
        self.build_ik()
        self.blend_fk_ik()
        # self.build_autoAim(self.clavicle, self.upr, fkc=self.clavicle_fkc, ikc=self.ikc)

        self.bindJnts = []
        if self.RBN_BONES:
            self.build_ribbon()
        else:
            self.bindJnts.append(self.upr)

        if not self.RBN_BONES and not self.TWIST_BONES:
            self.bindJnts.append(self.lwr)

        if self.TWIST_BONES:
            self.build_twist_bones()

        if self.SCAPULAR_BONE:
            self.build_armScapular()
        else:
            self.bindJnts.append(self.clavicle)

        self.post_setup()

    def build_fk(self):
        rID, rSz, xDr = self.getMyVar()

        self.joints_fk = common.extractSk(
            self.joints, "_fk", p=self.FK_PART, color=6, r=rSz * 2
        )
        self.fkCtl = [self.clavicle_fkc, self.upr_fkc, self.lwr_fkc, self.palm_fkc]
        self.build_fk_with_ctl2(self.joints_fk, self.fkCtl, p=self.FK_PART)
        self.isolate_align(self.upr_fkc, spaces=[self.upr_fkc.parent, self.masterC])

    def build_ik(self):
        rID, rSz, xDr = self.getMyVar()

        self.ikc.alignTo(self.palm)
        self.palm_ikc.alignTo(self.palm, p=self.IK_PART)

        pvc_guide = DagNode(rID + "_pvc_guide")
        self.pvc.alignTo(pvc_guide)

        self.joints_ik = common.extractSk(
            self.joints, "_ik", p=self.IK_PART, color=13, r=3 * rSz
        )
        ikH1 = IkNode(
            "1",
            pf=rID,
            rSz=rSz,
            sj=self.upr,
            ee=self.palm,
            jsf="_ik",
            sol=1,
            ikc=self.ikc,
            pvc=self.pvc,
            setting=self.setting,
            limbScale=1,
            scaleFix=self.masterC.a["globalScale"],
            RIG_DATA=self.RIG_DATA,
        )
        self.ikCstG = GroupNode("ikCstG", pf=rID, align=self.palm)
        if xDr == 1:
            for g in (self.ikCstG,):
                g.a.rx.set2(180, add=1)
        ikH1 | self.ikCstG

        #   Constrain ikCstG supporting fk limb
        #   self.ikc.cstParSca(self.ikCstG, mo=1)
        self.ikc.cstSca(self.ikCstG, mo=1)
        fkPin = self.pvc.a.add("fkPin", min=0, max=1)
        self.pin_fkc = CurveNode(
            "pin_fkc",
            pf=rID,
            shape="squareR",
            up="x",
            scale=rSz,
            align=self.palm,
            p=self.pvc,
            addOfs=1,
        )
        common.cstMulti(
            self.ikc, self.pin_fkc, self.ikCstG, w=fkPin, cstType="par", mo=1
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

        self.ikCtl = [self.ikc, self.pvc, self.ikc, self.palm_ikc, self.pin_fkc]
        self.ikH1 = ikH1

        # palm_ikc setup
        palm_ik = self.joints_ik[-2]
        palm_ikc_ofs = self.palm_ikc.addOffsetGrp()
        self.ikc.cstPoi(palm_ikc_ofs)

        palmAlign = self.ikc.a.add("palmAlign", min=0, max=1)
        common.cstMulti(
            palm_ik.offset, self.ikc, palm_ikc_ofs, w=palmAlign, cstType="parR"
        )

        common.cstMulti(self.palm_ikc, self.pin_fkc, palm_ik, w=fkPin, cstType="ori")

    def blend_fk_ik(self):
        rID, rSz, xDr = self.getMyVar()

        self.joints_bf = common.extractSk(
            self.joints, "_bf", p=self.BF_PART, color=Color.L_GREY, r=4 * rSz
        )

        palmIn_guide = DagNode(rID + "_palmIn_guide")
        palmIn_loc = LocNode(
            "palmIn", pf=rID, align=palmIn_guide, p=self.joints_bf[-1], size=rSz
        )
        palmOut_guide = DagNode(rID + "_palmOut_guide")
        palmOut_loc = LocNode(
            "palmOut", pf=rID, align=palmOut_guide, p=palmIn_loc, size=rSz
        )
        ball_guide = DagNode(rID + "_ball_guide")
        self.ballRoll_loc = LocNode(
            "ballRoll", pf=rID, align=ball_guide, p=palmOut_loc, size=rSz
        )

        self.setting.alignTo(self.palm, offset=(0, rSz * 15 * xDr, 0))
        self.palm.cstPar(self.setting, mo=1)

        self.setting.a.addSep()
        fkIkBlend = self.setting.a.add("fkIkBlend", min=0, max=1, dv=1)
        total = len(self.joints) - 1

        for i in range(total):
            fkj = self.joints_fk[i]
            ikj = self.joints_ik[i]
            bfj = self.joints_bf[i]
            jnt = self.joints[i]
            # common.cstMulti(fkj, ikj, jnt, w=fkIkBlend)
            if i > 0:
                # ut.blendN_(fkj.a.tx, ikj.a.tx, w=fkIkBlend) >> bfj.a.tx
                ut.blendN_(fkj.a.t, ikj.a.t, w=fkIkBlend) >> bfj.a.t
                ut.blendN_(fkj.a.r, ikj.a.r, w=fkIkBlend) >> bfj.a.r

            if i == 0:
                self.clavicle_fkc.cstPar(jnt, mo=1)
                self.clavicle_fkc.cstPar(bfj, mo=1)
                bfj.a.r >> jnt.a.r
            elif i < total - 1:
                bfj.a.t >> jnt.a.t
                bfj.a.r >> jnt.a.r
            else:
                self.ballRoll_loc.cstPar(jnt, mo=1)

        # self.clavicle_fkc.cstPar(self.joints_bf[0], mo=1)

        # add roll & bank to palm_ikc
        self.hand_roll_logic(
            self.palm_ikc, self.palm_fkc, self.pin_fkc, self.ballRoll_loc
        )
        self.hand_bank_logic(
            self.palm_ikc, self.palm_fkc, self.pin_fkc, palmIn_loc, palmOut_loc
        )

        for ctl in self.fkCtl + self.ikCtl:
            ctl.a.addSep()
            ctl.a.add("fkIkBlend", proxy=fkIkBlend, k=0)

        GroupNode("matcher", pf=self.ikc, align=self.ikc, p=self.palm_fkc)

    def build_armScapular(self):
        rID, rSz, xDr = self.getMyVar()
        clavEnd_guide = DagNode(rID + "_clavEnd_guide")
        scapular_guide = DagNode(rID + "_scapular_guide")

        # scapular setup
        scapularJnt = JointNode(
            "scapular",
            pf=rID,
            align=scapular_guide,
            r=rSz,
            p=self.clavicle,
            color=4,
        )
        scapularJnt.freezeXf()
        scapularLoc = LocNode(
            "scapularLoc", pf=rID, snap=clavEnd_guide, p=scapularJnt, size=rSz
        )
        twoJ = JointNode.makeTwoJC2(
            "clav",
            pf=rID,
            snap=self.clavicle,
            aim=(xDr, 0, 0),
            up=(0, xDr, 0),
            p=self.clavicle,
            r=rSz,
            aimTgt=scapularLoc,
        )
        twoJ_ik = IkNode(
            "ik",
            sol=1,
            pvc=scapularJnt,
            pf=twoJ[0].name,
            sj=twoJ[0],
            ee=twoJ[1],
            p=self.RIG_DATA,
            vis=0,
        )
        scapularLoc.cstPoi(twoJ_ik)
        self.clavBone = twoJ[0]
        self.bindJnts.append(self.clavBone)

    def build_twist_bones(self):
        rID, rSz, xDr = self.getMyVar()
        radius_JC = self.gen_sk_fr_names(["radius", "radiusEnd"], color=4, scale=2)
        ulna_JC = self.gen_sk_fr_names(["ulna", "ulnaEnd"], color=4, scale=2)

        (radius_JC[0], ulna_JC[0]) | self.lwr

        radius_loc = LocNode(
            "radius_loc", pf=rID, align=radius_JC[1], p=self.palm, size=rSz
        )
        ulna_loc = LocNode("ulna_loc", pf=rID, align=ulna_JC[1], p=self.palm, size=rSz)
        radius_loc.cstPoi(radius_JC[1])
        ulna_loc.cstPoi(ulna_JC[1])

        uType = "objectrotation"
        aim = (xDr, 0, 0)
        z = (0, 0, 1)
        radius_loc.cstAim(
            radius_JC[0], worldUpType=uType, worldUpObject=self.palm, aim=aim, u=z, wu=z
        )
        ulna_loc.cstAim(
            ulna_JC[0], worldUpType=uType, worldUpObject=self.lwr, aim=aim, u=z, wu=z
        )
        self.bindJnts.extend([radius_JC[0], ulna_JC[0]])

    def build_ribbon(self):
        """
                    upr
        upr_bend     --
        mid_bend     lwr
        lwr_bend     --
                    foot
        """
        rID, rSz, xDr = self.getMyVar()

        ribbonUp = RibbonNode(
            self.upr,
            pf=rID + "_up_",
            rbJNum=self.RBN_JNT_NUM,
            volMode="upr",
            scaleFix=self.masterC.a["globalScale"],
            proxyP=self.PRX_GRP,
            size=rSz,
            p=self.RIG_DATA,
        )
        ribbonLw = RibbonNode(
            self.lwr,
            pf=rID + "_lw_",
            rbJNum=self.RBN_JNT_NUM,
            volMode="lwr",
            scaleFix=self.masterC.a["globalScale"],
            proxyP=self.PRX_GRP,
            size=rSz,
            p=self.RIG_DATA,
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
        upr_bend = CurveNode("upr_bend", pf=rID, align=upLoc, addOfs=1, p=grp)
        lwr_bend = CurveNode("lwr_bend", pf=rID, align=lwLoc, addOfs=1, p=grp)
        mid_bend = CurveNode("mid_bend", pf=rID, align=self.lwr, addOfs=1, p=grp)

        self.all_bend = [upr_bend, lwr_bend, mid_bend]
        for ctl in self.all_bend:
            ctl(shape="square", up="x", color=22, scale=rSz)
            # ctl.a.rotateOrder.set(1)  # yzx

        upLoc.cstPar(upr_bend.offset, mo=1)
        lwLoc.cstPar(lwr_bend.offset, mo=1)
        upr_bend.cstParSca(upLoc.children[0], mo=1)
        lwr_bend.cstParSca(lwLoc.children[0], mo=1)

        self.lwr.cstPar(mid_bend.offset, mo=1)
        mid_bend.cstParSca(ribbonUp.end_loc, mo=1)
        mid_bend.cstParSca(ribbonLw.stt_loc, mo=1)

        # add volType attr to setting
        autoVol = self.setting.a.add("autoVol")
        autoVol >> ribbonUp.autoVol
        autoVol >> ribbonLw.autoVol

        volType = self.setting.a.add(
            "volType", attrType="enum", enumName="whole:separate", k=0
        )
        volType >> ribbonUp.volType
        volType >> ribbonLw.volType

        self.bindJnts.extend(ribbonUp.rbJnt + ribbonLw.rbJnt)

    def setup_vis(self):
        self.ctl_vis_toggle(
            self.setting.a["fkIkBlend"],
            onList=[self.ikc, self.pvc, self.pvc_line, self.ikCstG],
            offList=self.fkCtl[1:],
        )
        self.ctl_vis_toggle(
            self.pvc.a["fkPin"],
            onList=[self.pin_fkc],
        )
        self.ikc.a.v >> self.palm_ikc.a.v

        if self.RBN_BONES:
            self.ctl_vis_toggle(
                # self.setting.a.add("bendyCtl", min=0, max=1, dv=1, k=0),
                self.setting.a.add("bendyCtl", attrType="bool", dv=0),
                onList=self.all_bend,
            )
        mc.hide(self.all_ikHs, self.joints_fk, self.joints_ik, self.joints_bf)

    def setup_proxy(self):
        for j in self.bindJnts:
            JointNode(j).addProxyMesh(p=self.PRX_GRP)

    def setup_channel(self):
        self.setting.a.showAttr()
        self.palm_ikc.a.showAttr(r=1)

        for ctl in self.fkCtl + [self.ikc, self.pvc]:
            ctl.a.showAttr(t=1, r=1)
        for ctl in self.all_bend or []:
            ctl.a.showAttr(t=1, r=1, s=1)

    def setup_rotate_order(self):
        for c in [self.ikc, self.clavicle_fkc]:
            c.a.ro.set(2)
        self.lwr_fkc.a.ro.set(3)
        self.upr_fkc.a.ro.set(4)
        self.palm_fkc.a.ro.set(5)

    def setup_space(self):
        self.rigNode.setMsg({"spaceHolder1": self.ikc})
        spaces = "master, COG, uprBody, lwrBody, head"
        self.rigNode.a.add("spaceName1", attrType="string", txt=spaces)

        self.rigNode.setMsg({"spaceHolder2": self.pvc})
        spaces = "arm, master, clavicle, COG, uprBody, lwrBody"
        self.rigNode.a.add("spaceName2", attrType="string", txt=spaces)

        self.rigNode.setMsg({"space_master": self.masterC})
        # self.rigNode.setMsg({"space_clavicle": self.clavicle_fkc})

        self.ikH1.build_pvfkPinSetup(ikTarget=self.ikc)
        self.rigNode.setMsg({"space_arm": self.ikH1.pvChainJ[0]})
        self.rigNode.setMsg({"space_palm": self.ballRoll_loc})
        self.rigNode.setMsg({"space_palmIK": self.joints_bf[3]})

    def setup_anchor(self):
        self.setup_anchor_module(
            {
                "anchorM1": self.joints_bf[-2],
                "anchorF1": self.clavicle_fkc.offset,
            }
        )

    def post_setup(self):
        ctlSet = []
        ctlSet.extend(self.fkCtl + self.ikCtl + [self.setting, self.pin_fkc])

        if self.RBN_BONES:
            ctlSet.extend(self.all_bend)

        self.add_bind_jnt_set(self.bindJnts)
        self.add_ctl_set(ctlSet)
        self.setup_space()
        self.setup_anchor()
        self.setup_proxy()
        self.setup_vis()
        self.setup_channel()
        self.setup_rotate_order()
        self.post_module()
