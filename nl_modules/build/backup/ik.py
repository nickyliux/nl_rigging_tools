# from nl_modules.nodel.group_node import GroupNode
# from nl_modules.nodel.curve_node import CurveNode
#
#
# class Ik:
#     def __init__(
#         self,
#         side=None,
#         part=None,
#         guide_list=None,
#         scale=1,
#         sticky=None,
#         solver=None,
#         pv_guide=None,
#         offset_pv=0,
#         slide_pv=0,
#         stretchy=None,
#     ):
#         self.guide_list = guide_list
#
#         self.build_controls(side, part, scale, pv_guide)
#
#     def build_controls(self, side, part, scale, pv_guide):
#         name = side + "_" + part
#         ik_grp = GroupNode(name + "_IK_CTRL_GRP")
#         base_ctl = CurveNode(
#             name + "_IK_base",
#             parent=ik_grp,
#             shape="cube",
#             scale=scale,
#             match=self.guide_list[0],
#         )
#         main_ctl = CurveNode(
#             name + "_IK_main",
#             parent=ik_grp,
#             shape="cube",
#             scale=scale,
#             match=self.guide_list[-1],
#         )
#         if pv_guide:
#             pass
#
#     def build_chain(self):
#         pass
#
#     def build_ikHandle(self):
#         pass
