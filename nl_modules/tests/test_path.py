import unittest
from nl_modules.utils import path


class Test_Path_Main(unittest.TestCase):

    def test_shotName(self):
        self.assertEqual(path.objectName("|a|b|c|ns:d"), "ns:d")
        self.assertEqual(path.objectName(""), "")
        self.assertEqual(path.objectName(None), None)

    def test_reprStr(self):
        self.assertEqual(path.genReprStr("DepNode", "ns:d"), "DepNode('ns:d')")
        self.assertEqual(path.genReprStr("DepNode", ""), "DepNode('')")
        self.assertEqual(path.genReprStr("DepNode", None), "DepNode('None')")

    def test_baseName(self):
        self.assertEqual(path.baseName("|a|b|c|ns:d"), "d")
        self.assertEqual(path.baseName("ns:d"), "d")
        self.assertEqual(path.baseName(None), None)
        self.assertEqual(path.baseName("d"), "d")

    #
    def test_nameSpace(self):
        self.assertEqual(path.nameSpace("|a|b|c|ns:d"), "ns")
        self.assertEqual(path.nameSpace("ns:d"), "ns")
        self.assertEqual(path.nameSpace(None), None)
        self.assertEqual(path.nameSpace(""), "")
        self.assertEqual(path.nameSpace("|d"), None)
        self.assertEqual(path.nameSpace("d"), None)


if __name__ == "__main__":
    unittest.TestLoader.sortTestMethodsUsing = lambda self, a, b: (a < b) - (a > b)
    unittest.main(defaultTest="Test_Path_Main", exit=False)
