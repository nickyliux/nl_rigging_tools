from shiboken2 import wrapInstance
from PySide2 import QtCore, QtWidgets
import maya.cmds as cmds
from maya import OpenMayaUI
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin


def get_maya_win():
    win_ptr = OpenMayaUI.MQtUtil.mainWindow()
    return wrapInstance(int(win_ptr), QtWidgets.QMainWindow)


def delete_workspace_control(control):
    if cmds.workspaceControl(control, q=True, exists=True):
        cmds.workspaceControl(control, e=True, close=True)
        cmds.deleteUI(control, control=True)


class MyDockableWindow(MayaQWidgetDockableMixin, QtWidgets.QDialog):
    TOOL_NAME = "My Dockable UI"

    def __init__(self, parent=None):
        delete_workspace_control(self.TOOL_NAME + "WorkspaceControl")

        super(self.__class__, self).__init__(parent=parent)
        self.mayaMainWindow = get_maya_win()
        # self.setObjectName(self.__class__.TOOL_NAME)

        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle(self.TOOL_NAME)
        self.resize(200, 200)

        # Set the layout of the window.
        self.setLayout(QtWidgets.QVBoxLayout())

        # Add button widget examples.
        self.populate_buttons()

    def populate_buttons(self):
        button = QtWidgets.QPushButton("Create Cube")
        button.clicked.connect(cmds.polyCube)
        self.layout().addWidget(button)

        button = QtWidgets.QPushButton("Create Sphere")
        button.clicked.connect(cmds.polySphere)
        self.layout().addWidget(button)

        # Add a vertical spacer to make the UI look neater.
        vertical_spacer = QtWidgets.QSpacerItem(
            20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding
        )
        self.layout().addItem(vertical_spacer)


my_win = MyDockableWindow()
my_win.show(dockable=True)
