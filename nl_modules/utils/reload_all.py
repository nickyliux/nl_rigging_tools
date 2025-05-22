# import maya.cmds as mc
from importlib import reload
import logging

# for m in set(sys.modules.values()):
#     if m.__name__.startswith('nl_modules'):
#         reload(m)

# ----------------------------------------------------
from nl_modules.nodel import (
    curve_node,
    group_node,
    ik_node,
    joint_node,
    loc_node,
    mesh_node,
    ribbon_node,
    surf_node,
)

reload(curve_node)
reload(group_node)
reload(ik_node)
reload(joint_node)
reload(loc_node)
reload(mesh_node)
reload(ribbon_node)
reload(surf_node)

# ----------------------------------------------------
from nl_modules.nodel.base import (
    attribute,
    attribute_holder,
    condition,
    dimension,
    dep_node,
    dag_node,
)

reload(attribute)
reload(attribute_holder)
reload(condition)
reload(dimension)
reload(dep_node)
reload(dag_node)

# ----------------------------------------------------
from nl_modules.utils import (
    anim,
    build,
    color,
    common,
    control,
    file,
    guide,
    log,
    maths,
    modeling,
    open_maya_api,
    path,
    utils_node,
    marking_menu_autorig,
    marking_menu_rigging,
)

reload(anim)
reload(build)
reload(color)
reload(common)
reload(control)
reload(file)
reload(guide)
reload(log)
reload(maths)
reload(modeling)
reload(open_maya_api)
reload(path)
reload(utils_node)
reload(marking_menu_autorig)
reload(marking_menu_rigging)

# ----------------------------------------------------
from nl_modules.tests import (
    test_attributes,
    test_color,
    test_common,
    test_common2,
    test_curve_node,
    test_dag_node,
    test_dep_node,
    test_dimension,
    test_group_node,
    test_joint_node,
    test_loc_node,
    test_math,
    test_mesh_node,
    test_open_maya_api,
    test_path,
    test_utils_node,
)

reload(test_attributes)
reload(test_color)
reload(test_common)
reload(test_common2)
reload(test_curve_node)
reload(test_dag_node)
reload(test_dep_node)
reload(test_dimension)
reload(test_group_node)
reload(test_joint_node)
reload(test_loc_node)
reload(test_math)
reload(test_mesh_node)
reload(test_open_maya_api)
reload(test_path)
reload(test_utils_node)

# ----------------------------------------------------
from nl_modules.build import (
    arm_bp,
    leg_bp,
    leg_qd,
    neck_bp,
    neck_qd,
    rig_base,
    rig_module,
    spine_bp,
    spine_qd,
    tail,
    tail_fk,
    tpl_loader,
    ribbon,
    head,
    hand,
)

reload(rig_base)
reload(rig_module)
reload(tpl_loader)
reload(ribbon)
reload(head)
reload(neck_bp)
reload(spine_bp)
reload(arm_bp)
reload(hand)
reload(leg_bp)
reload(leg_qd)
reload(neck_qd)
reload(spine_qd)
reload(tail_fk)
reload(tail)

if __name__ == "__main__":
    logging.info("reload modules")

# def deleteAllAcProcessor():
#     for s in mc.ls("acProcessor*"):
#         mc.lockNode(s, l=0)
#         mc.delete(s)
# mc.scriptEditorInfo(ch=1)
