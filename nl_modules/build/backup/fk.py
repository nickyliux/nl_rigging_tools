# import maya.cmds as mc
# from nl_modules.build.parts.base.joint_chain import JointChain
# from nl_modules.nodel.crv_node import CrvNode
#
#
# class Fk:
#     def __init__(
#         self,
#         side="cn_",
#         part="default",
#         guide_list=None,
#         gimbal=False,
#         offset=False,
#         scale=1,
#         shape="circle",
#     ):
#         self.guide_list = guide_list
#         self.fkc_ctrls = []
#         self.gim_ctrls = []
#         self.ofs_ctrls = []
#         self.fk_joints = []
#
#         self.build_ctrl(side, part, scale, gimbal, offset, shape)
#         self.build_chain(side, part)
#
#     def build_ctrl(
#         self,
#         side,
#         part,
#         scale,
#         gimbal,
#         offset,
#         shape,
#     ):
#         pad = len(str(len(self.guide_list))) + 1
#         parent = None
#
#         for i, obj in enumerate(self.guide_list):
#             name = f"{part}_{i+1:0{pad}}"
#
#             # main ctrl
#             crvN = CrvNode(
#                 name,
#                 prefix=side,
#                 suffix="_fk",
#                 match=obj,
#                 parent=parent,
#                 shape=shape,
#                 scale=scale,
#                 addOfs=1,
#             )
#             self.fkc_ctrls.append(crvN)
#             parent = crvN
#
#             # gimbal ctrl
#             if gimbal:
#                 crvN = CrvNode(
#                     name,
#                     prefix=side,
#                     suffix="_gim",
#                     match=obj,
#                     parent=parent,
#                     shape=shape,
#                     scale=scale * 0.75,
#                 )
#                 self.gim_ctrls.append(crvN)
#                 parent = crvN
#
#             # offset ctrl
#             if offset:
#                 crvN = CrvNode(
#                     name,
#                     prefix=side,
#                     suffix="_ofs",
#                     match=obj,
#                     parent=parent,
#                     shape=shape,
#                     scale=scale * 0.5,
#                 )
#                 self.ofs_ctrls.append(crvN)
#                 parent = crvN
#
#     def build_chain(self, side, part):
#         ctrl_list = self.ofs_ctrls or self.gim_ctrls or self.fkc_ctrls
#         jc = JointChain(part=part, prefix=side, suffix="_fk", guide_list=ctrl_list)
#         self.fk_joints = jc.fromTransform()
