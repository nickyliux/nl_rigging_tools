# import maya.cmds as mc
# import logging
# from nl_modules.build import rig_module
# from nl_modules.nodel.base.dag_node import DagNode
# from nl_modules.nodel.crv_node import CrvNode
# from nl_modules.nodel.jnt_node import JntNode
# from nl_modules.nodel.loc_node import LocNode
# from nl_modules.utils import common
# from nl_modules.utils.color import Color
#
#
# class Toes(rig_module.RigModule):
#     def __init__(self, rigNode):
#         super().__init__(rigNode)
#
#         # self.smart_ctl = None
#         self.rootJ = None
#         self.setting = None
#
#         self.fgrsArr = None
#         self.ctlsArr = None
#
#
#
#     def gen_sk(self):
#         s = self.rigSize
#         root = self.gen_sk_fr_names(["root"], pf=self.rigID)[0]
#         root | self.SKL
#         self.rigNode.setMsg({"rootJ": root})
#         all_names = [
#             ["toe00_1", "toe00_2", "toe00_3", "toe00_4"],
#             ["toe01_1", "toe01_2", "toe01_3", "toe01_4", "toe01_5"],
#             ["toe02_1", "toe02_2", "toe02_3", "toe02_4", "toe02_5"],
#             ["toe03_1", "toe03_2", "toe03_3", "toe03_4", "toe03_5"],
#             ["toe04_1", "toe04_2", "toe04_3", "toe04_4", "toe04_5"],
#         ]
#         fgr_roots = []
#         for names in all_names:
#             fgr_jnts = self.gen_sk_fr_names(names, pf=self.rigID, r=s / 20)
#             self.rigNode.setMsg({names[0]: fgr_jnts[0]})
#             fgr_jnts[0].freezeXf()
#             fgr_jnts[0] | root
#             fgr_roots.append(fgr_jnts[0])
#         self.genSk_module()
#
#
#
#
#
#
#     def build(self):
#
#
#         s = self.rigSize
#
#         # self.setting = CrvNode("setting", pf=self.rigID, shape="sphere", scale=s * 0.3)
#         # self.setting.a.message >> self.rigNode.a.setting
#
#         if not self.rootJ:
#             logging.error("root not found!")
#             return
#         #
#         self.fgrsArr = []
#         for root in self.rootJ.childrenJt:
#             self.fgrsArr.append([fgr for fgr in root.allChildrenJt2])
#             root.a.segmentScaleCompensate.set(0)
#
#         self.build_fk()
#         self.build_post()
#         self.post_module()
#
#     def build_fk(self):
#         s = self.rigSize
#         logging.info(self.rigID)
#
#         self.ctlsArr = []
#         for fgrs in self.fgrsArr:
#             ctlList = []
#             for fgr in fgrs[:-1]:
#                 c = CrvNode(fgr + "_ctl", align=fgr, up="x", scale=-s * 0.5)
#                 # c.scale(1,1,0.6)
#                 ctlList.append(c)
#
#             self.build_fk_with_ctl3(fgrs, ctlList, count=2, p=self.CTL_DATA)
#
#             self.ctlsArr.append(ctlList)
#
#         self.xDir = 1 if self.fgrsArr[1][2].a.tx.get() > 0 else -1
#
#     def setup_anchor(self):
#
#         s = self.rigSize
#         # anchorS1 = LocNode("anchorS1", pf=self.rigID, size=s, color=Color.PINK)
#         # anchorS1.a.message >> self.rigNode.a.anchorS1
#         #
#         # # anchorS1
#         # anchorS1.snapTo(self.rootJ, p=self.masterC)
#         # anchorS1.cstParSca(self.rootJ, mo=1)
#         # anchorS1.cstParSca(self.smart_ctl.offset, mo=1)
#         # for c in self.ctlsArr:
#         #     anchorS1.cstParSca(c[0].offset.offset, mo=1)
#         #
#         # anchorS1.hide()
#
#     def build_post(self):
#
#         # Proxy Mesh
#         for fgrs in self.fgrsArr:
#             for j in fgrs:
#                 JntNode(j).addProxyMesh(
#                     size=self.rigSize / 2, aimDir=(self.xDir, 0, 0), skipEnd=1
#                 )
#         # self.rootJ.addProxyMesh(size=self.rigSize, aimDir=(self.xDir, 0, 0))
#
#         # fgrCtlVis = self.smart_ctl.a.add("toeCtl", k=0, min=0, max=1)
#         # for fgrCtls in self.ctlsArr:
#         #     for c in fgrCtls:
#         #         fgrCtlVis >> c.shape.a.v
#
#         # self.add_minus_scale_grp(self.smart_ctl)
#
#         #
#         # # Vis Attr
#         # fkIk = self.setting.a.fkIk
#         #
#         # [fkIk >> c.a.v for c in (self.ikc, self.pvc, self.pvLine)]
#         # [~fkIk >> c.a.v for c in (self.hand_fkc, self.lwr_fkc, self.upr_fkc)]
#         #
#         # # Lock Hide Attr
#         # [c.a.lockHide(t=1, r=1) for c in self.ctls_fk]
#         # [c.a.lockHide(t=1, s=1) for c in self.all_bendy]
#         #
#         # self.ikc.a.lockHide(t=1, r=1)
#         # self.ikc.gimbal.a.lockHide(t=1, r=1)
#         # self.pvc.a.lockHide(t=1)
#         # self.setting.a.lockHide()
#         # self.lwr_fkc.a.rx.lockHide()
#         #
#         # # Hide Obj
#         # mc.hide(self.all_iks, self.jnts_fk, self.jnts_ik, self.moduleG)
#
#
#         self.addBindJSet(self.rootJ.allChildrenJt2)
#         #
#         # ctlSet = []
#         # [ctlSet.extend(x) for x in self.ctlsArr]
#         # self.add_ctl_set(ctlSet, pf=self.rigID)
#         #
#         self.setup_anchor()
#
#         self.post_module()
#
#
# if __name__ == "__main__":
#     for n in mc.ls("*RGN", type="script"):
#         Toes(DagNode(n)).build()
