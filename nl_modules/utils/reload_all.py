import logging
from importlib import reload

from nl_modules.nodel import (
    crv_node,
    grp_node,
    ik_node,
    jnt_node,
    loc_node,
    msh_node,
    rbn_node,
    srf_node,
)

reload(crv_node)
reload(grp_node)
reload(ik_node)
reload(jnt_node)
reload(loc_node)
reload(msh_node)
reload(rbn_node)
reload(srf_node)

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

from nl_modules.utils import (
    anim,
    build,
    color,
    common,
    control,
    file,
    guide,
    helper,
    log,
    maths,
    model,
    open_maya_api,
    path,
    proxy,
    skin,
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
reload(helper)
reload(log)
reload(maths)
reload(model)
reload(open_maya_api)
reload(path)
reload(proxy)
reload(skin)
reload(utils_node)
reload(marking_menu_autorig)
reload(marking_menu_rigging)

from nl_modules.tests import (
    test_attributes,
    test_color,
    test_common,
    test_common2,
    test_crv_node,
    test_dag_node,
    test_dep_node,
    test_dimension,
    test_grp_node,
    test_jnt_node,
    test_loc_node,
    test_math,
    test_msh_node,
    test_open_maya_api,
    test_path,
    test_utils_node,
)

reload(test_attributes)
reload(test_color)
reload(test_common)
reload(test_common2)
reload(test_crv_node)
reload(test_dag_node)
reload(test_dep_node)
reload(test_dimension)
reload(test_grp_node)
reload(test_jnt_node)
reload(test_loc_node)
reload(test_math)
reload(test_msh_node)
reload(test_open_maya_api)
reload(test_path)
reload(test_utils_node)

from nl_modules.build import (
    arm_bp,
    belt,
    finger_fk,
    hand_bp,
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
    simple_fk,
)

reload(rig_base)
reload(rig_module)
reload(tpl_loader)
reload(ribbon)
reload(head)
reload(neck_bp)
reload(spine_bp)
reload(arm_bp)
reload(hand_bp)
reload(simple_fk)
reload(leg_bp)
reload(leg_qd)
reload(neck_qd)
reload(spine_qd)
reload(tail_fk)
reload(tail)
reload(finger_fk)
reload(belt)

if __name__ == "__main__":
    logging.info("reload modules.")

# def deleteAllAcProcessor():
#     for s in mc.ls("acProcessor*"):
#         mc.lockNode(s, l=0)
#         mc.delete(s)
# mc.scriptEditorInfo(ch=1)
