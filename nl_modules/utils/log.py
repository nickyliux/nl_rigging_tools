import inspect
import logging


def updateRootLogger():
    """Updated root logger to print more info"""
    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    logger.handlers.clear()

    stream_hdl = logging.StreamHandler()
    formatter = logging.Formatter(
        "%(levelname)-7s %(filename)-20s %(funcName)-20s | %(message)s"
    )
    stream_hdl.setFormatter(formatter)
    logger.addHandler(stream_hdl)


# def print_methods(className):
#     import types
#     all_methods = []
#     for name, item in className.__dict__.items():
#         if isinstance(item, types.FunctionType):
#             all_methods.append(name)
#
#     if '__init__' in all_methods:
#         all_methods.remove('__init__')
#
#     print(f'\n{className.__name__} methods')
#     print('*'*20)
#     for item in sorted(all_methods):
#         print(item)
#
# def print_properties(className):
#     import types
#     all_properties = []
#     for name, item in className.__dict__.items():
#         if not isinstance(item, (types.FunctionType, types.MethodType)):
#             all_properties.append(name)
#
#     print(f'\n{className.__name__} properties')
#     print('*'*20)
#     for item in sorted(all_properties):
#         print(item)


def print_all(tgt):

    def print_it(items):
        if items:
            print(' ', ', '.join(items))

    typeList = ["staticmethod", "classmethod", "function", "property", "str"]
    classDict = dict.fromkeys(typeList)

    for name, item in tgt.__dict__.items():
        mType = type(item).__name__
        if mType in typeList:
            if not name.startswith('_'):
                if classDict[mType]:
                    classDict[mType].append(name)
                else:
                    classDict[mType] = [name]
        else:
            if classDict['str']:
                classDict['str'].append(name)
            else:
                classDict['str'] = [name]

    print("-" * 79)
    print("object attr")
    print_it(classDict["str"])
    print("property")
    print_it(classDict["property"])
    print("function")
    print_it(classDict["function"])
    print("staticmethod")
    print_it(classDict["staticmethod"])
    print("classmethod")
    print_it(classDict["classmethod"])
