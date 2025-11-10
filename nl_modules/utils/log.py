import logging


def update_root_logger():
    """Updated root logger to print more info"""

    # logging.basicConfig(
    #     level=TRACE,
    #     stream=sys.stdout,
    #     format="%(levelname)s:%(name)s:%(funcName)s:%(message)s",
    # )
    # format="%(levelname)s:%(name)s:%(message)s",

    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    logger.handlers.clear()

    stream_hdl = logging.StreamHandler()
    formatter = logging.Formatter(
        "[%(levelname).1s] %(filename)-20s %(funcName)-20s %(message)s"
    )
    # %(asctime)s "%Y-%m-%d %H:%M:%S",
    stream_hdl.setFormatter(formatter)
    logger.addHandler(stream_hdl)

    # print(f"{'Type':5s} {'File':20s} {'Method':20s} Message")
    # print(f"{'----':5s} {'----':20s} {'------':20s} -------")


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
    """Print all attributes of a class or module in a structured way."""

    def print_it(items):
        if items:
            print(" ", ", ".join(items))

    typeList = ["staticmethod", "classmethod", "function", "property", "str"]
    classDict = dict.fromkeys(typeList)

    for name, item in tgt.__dict__.items():
        mType = type(item).__name__
        if mType in typeList:
            if not name.startswith("_"):
                if classDict[mType]:
                    classDict[mType].append(name)
                else:
                    classDict[mType] = [name]
        else:
            if classDict["str"]:
                classDict["str"].append(name)
            else:
                classDict["str"] = [name]

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
