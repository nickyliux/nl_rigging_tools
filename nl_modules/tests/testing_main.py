import unittest
import nl_modules
import os

from nl_modules.tests import *


def unitTestFrameWork():
    """unit tests for rigging framework"""
    loader = unittest.TestLoader()
    tests = unittest.TestSuite(
        (
            # loader.loadTestsFromTestCase(test_dep_node.Test_DepNode_Main),
            # loader.loadTestsFromTestCase(test_dag_node.Test_DagNode_Main),
            # loader.loadTestsFromTestCase(test_dag_node.Test_DagNode_Parent),
            # loader.loadTestsFromTestCase(test_dag_node.Test_DagNode_Cst),
            # loader.loadTestsFromTestCase(test_dimension.Test_Dimension_Main),
            # loader.loadTestsFromTestCase(test_attributes.Test_AttributeHolder_Main),
            # loader.loadTestsFromTestCase(test_attributes.Test_Attribute_Main),
            # loader.loadTestsFromTestCase(test_attributes.Test_Attribute_Connect),
            # loader.loadTestsFromTestCase(test_attributes.Test_Attribute_Condition),
            # loader.loadTestsFromTestCase(test_attributes.Test_Attribute_Parent),
            # loader.loadTestsFromTestCase(test_attributes.Test_Attribute_Maths),
            # loader.loadTestsFromTestCase(test_open_maya_api.Test_Open_Maya_Api),
            # loader.loadTestsFromTestCase(test_path.Test_Path_Main),
        )
    )
    unittest.TextTestRunner(verbosity=1).run(tests)


def unitTestTools():
    """unit tests for tools"""
    loader = unittest.TestLoader()
    tests = unittest.TestSuite(
        (
            # loader.loadTestsFromTestCase(test_grp_node.Test_GrpNode_Main),
            # loader.loadTestsFromTestCase(test_crv_node.Test_CrvNode_Main),
            # loader.loadTestsFromTestCase(test_crv_node.Test_CrvNode_Advanced),
            # loader.loadTestsFromTestCase(test_loc_node.Test_LocNode_Main),
            # loader.loadTestsFromTestCase(test_jnt_node.Test_JntNode_Main),
            # loader.loadTestsFromTestCase(test_msh_node.Test_MshNode_Main),
            # loader.loadTestsFromTestCase(test_utils_node.Test_utils_node_Main),
            # loader.loadTestsFromTestCase(test_color.Test_color_Main),
            # loader.loadTestsFromTestCase(test_math.Test_math_Main),
            # loader.loadTestsFromTestCase(test_common.Test_common_Main),
            # loader.loadTestsFromTestCase(test_common.Test_common_Advanced),
        )
    )
    unittest.TextTestRunner(verbosity=1).run(tests)


def run():
    """run all tests"""
    # path = os.path.join(os.path.dirname(nl_modules.__file__), "tests")

    print(">>> R I G G I N G   F R A M E W O R K")
    unitTestFrameWork()

    print(">>> R I G G I N G   C O M P O N E N T S")
    unitTestTools()
