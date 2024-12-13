# import maya.cmds as mc
# from nl_modules.nodel.base.dep_node import DepNode
# from nl_modules.nodel.base.dag_node import DagNode
# from nl_modules.nodel.curve_node import CurveNode
# from nl_modules.nodel.joint_node import JointNode
#
#
# class JointChain(object):
#     """Class of Joint Chain
#     Usages:
#         jc = JointChain()
#         jc = JointChain(name='myJC', prefix='lf_', guide_list=[(0,0,0), (2,2,2)])
#
#         jc.build_fr_curve('curve1')
#         or
#         jc.build_fr_xform(['a','b','c'])
#     """
#
#     def __init__(
#         self, prefix="cn_", part="default", suffix="_jnt", joints=None
#     ):
#         self.prefix = prefix
#         self.part = part
#         self.suffix = suffix
#         self.joints = joints
#
#     @classmethod
#     def fromCurve(
#         cls,
#         curve,
#         jointNum,
#         aimV=(1, 0, 0),
#         upV=(0, 1, 0),
#         worldUpV=(0, 1, 0),
#         prefix,
#         part,
#         suffix
#     ):
#         """Build joint chain from a curve"""
#
#         if not mc.objExists(curve):
#             mc.error(">>> Curve not found")
#
#         if jointNum < 2:
#             mc.error(">>> Min num of joint is 2")
#
#         pad = len(str(jointNum)) + 1
#         parent = None
#         outputJ = []
#         # Loop creating joint, aim to previous & parent
#         for i in range(jointNum):
#             name = f"{prefix}{part}_{i+1:0{pad}}{suffix}"
#             pos = JointChain.posOnCurve(curve, i / (jointNum - 1))
#
#             jN = JointNode(name, match=pos)
#
#             if parent:
#                 jN.cstAim(
#                     parent,
#                     keep=0,
#                     aimVector=aimV,
#                     upVector=upV,
#                     worldUpType="vector",
#                     worldUpVector=worldUpV,
#                 )
#                 jN.parentTo(parent)
#
#             parent = jN
#             outputJ.append(jN)
#
#         # Freeze root joint and fix last
#         outputJ[0].freezeXform()
#         outputJ[-1].a.jointOrient.reset()
#
#         return cls(prefix,part,suffix,outputJ)
#
#     @classmethod
#     def fromTransform(
#             cls,
#             guide_list,
#             match=True,
#             parCst=True,
#             prefix,
#             part,
#             suffix
#             ):
#         """Build joint chain from a list of objects"""
#
#         if not guide_list:
#             mc.error(">>> Guide list not set")
#
#         pad = len(str(len(guide_list))) + 1
#         parent = None
#
#         outputJ = []
#         # Loop creating joint, parent to previous
#         for i, obj in enumerate(guide_list):
#             name = f"{prefix}{part}_{i+1:0{pad}}_fkj"
#             jN = JointNode(
#                 name,
#                 match=obj if match else mc.xform(obj, q=1, t=1, ws=1),
#                 parent=parent,
#             )
#             parent = jN
#             outputJ.append(jN)
#
#         # Freeze root joint
#         outputJ[0].freezeXform()
#
#         # ParentCst joints to guides
#         for guide, jnt in zip(guide_list, outputJ):
#             if parCst:
#                 DagNode(guide).cstPar(jnt)
#
#         return cls(prefix,part,suffix,outputJ)
#
#     @property
#     def chainLength(self):
#         """Return total length of all joints"""
#         if self.joints:
#             l = 0
#             for i in range(len(self.joints) - 1):
#                 l += self.joints[i].o.distanceTo(self.joints[i + 1])
#             return l
#         return 0
#
#     @staticmethod
#     def posOnCurve(curve, u):
#         """Get world position of cv at parameter u"""
#         crv = CurveNode(curve)
#         poc = DepNode("poc", nodeType="pointOnCurveInfo")
#
#         crv.shape.a.worldSpace >> poc.a.inputCurve
#         poc.a.turnOnPercentage.set(1)
#         poc.a.parameter.set(u)
#
#         position = poc.a.position.get()
#         poc.delete()
#
#         return position
