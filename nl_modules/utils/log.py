import logging
import maya.cmds as mc


class MayaScrollFieldHandler(logging.Handler):
    """Logging handler that writes messages to a Maya scrollField."""

    def __init__(self, scroll_field):
        super().__init__()
        self.scroll_field = scroll_field

    def emit(self, record):
        if not mc.scrollField(self.scroll_field, exists=True):
            return

        msg = self.format(record)
        old_text = mc.scrollField(self.scroll_field, q=True, text=True) or ""
        new_text = f"{old_text}{msg}\n"
        mc.scrollField(self.scroll_field, e=True, text=new_text)
        mc.scrollField(self.scroll_field, e=True, insertionPosition=len(new_text))


def create_log_window(
    window_name="nlRT_LogWindow", title="nlRT Log", x=150, y=150, w=700, h=540
):
    """Create a window with a scrollField and return the field control name."""

    if mc.window(window_name, exists=True):
        mc.deleteUI(window_name, window=True)

    mc.window(window_name, title=title, topLeftCorner=[x, y], widthHeight=(w, h))
    form_layout = mc.formLayout()
    scroll_field = mc.scrollField(editable=False, wordWrap=False, text="")

    mc.formLayout(
        form_layout,
        edit=1,
        attachForm=[
            (scroll_field, "top", 10),
            (scroll_field, "left", 10),
            (scroll_field, "right", 10),
            (scroll_field, "bottom", 10),
        ],
    )

    mc.showWindow(window_name)
    return scroll_field


def attach_scroll_field_handler(logger, scroll_field, formatter=None):
    """Attach a Maya scrollField log handler to the given logger."""

    for handler in list(logger.handlers):
        if isinstance(handler, MayaScrollFieldHandler):
            logger.removeHandler(handler)

    handler = MayaScrollFieldHandler(scroll_field)
    handler.setFormatter(
        formatter
        or logging.Formatter(
            "%(levelname)-7s %(filename)-24s %(lineno)-5d%(funcName)-24s %(message)s",
        )
    )
    logger.addHandler(handler)


def update_root_logger(use_scroll_field=False, create_window=False, scroll_field=None):
    """Update root logger format and optionally route logs to a Maya scrollField."""

    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    logger.handlers.clear()

    formatter = logging.Formatter(
        "%(levelname)-7s %(filename)-24s %(lineno)-5d%(funcName)-24s %(message)s",
    )

    if use_scroll_field:
        if not scroll_field and create_window:
            scroll_field = create_log_window()

        if scroll_field and mc.scrollField(scroll_field, exists=True):
            attach_scroll_field_handler(logger, scroll_field, formatter=formatter)

    stream_hdl = logging.StreamHandler()
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


# def print_all(tgt):
#     """Print all attributes of a class or module in a structured way."""

#     def print_it(items):
#         if items:
#             print(" ", ", ".join(items))

#     typeList = ["staticmethod", "classmethod", "function", "property", "str"]
#     classDict = dict.fromkeys(typeList)

#     for name, item in tgt.__dict__.items():
#         mType = type(item).__name__
#         if mType in typeList:
#             if not name.startswith("_"):
#                 if classDict[mType]:
#                     classDict[mType].append(name)
#                 else:
#                     classDict[mType] = [name]
#         else:
#             if classDict["str"]:
#                 classDict["str"].append(name)
#             else:
#                 classDict["str"] = [name]

#     print("-" * 79)
#     print("object attr")
#     print_it(classDict["str"])
#     print("property")
#     print_it(classDict["property"])
#     print("function")
#     print_it(classDict["function"])
#     print("staticmethod")
#     print_it(classDict["staticmethod"])
#     print("classmethod")
#     print_it(classDict["classmethod"])
