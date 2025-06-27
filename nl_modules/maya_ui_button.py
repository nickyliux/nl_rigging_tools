import sys
from functools import partial
import maya.OpenMayaUI as OpenMayaUI
from shiboken2 import wrapInstance
from PySide2 import QtWidgets


def create_hud():
    # Create an instance of the M3dView class and get the 3D view from the modelPanel4 in Maya
    view = OpenMayaUI.M3dView()
    OpenMayaUI.M3dView.getM3dViewFromModelPanel("modelPanel4", view)

    # Get the model view as a QtWidget for python2 and python3
    if sys.version_info.major < 3:
        model_view_widget = wrapInstance(int(view.widget()), QtWidgets.QWidget)
    else:
        model_view_widget = wrapInstance(int(view.widget()), QtWidgets.QWidget)

    # Create ui buttons
    green_button = QtWidgets.QPushButton("Green button", model_view_widget)

    # Get the center position of the model view and place the ui buttons based on that position
    window = model_view_widget.geometry()
    green_button.setGeometry(window.x() + 10, window.y() + 10, 200, 23)
    green_button.setStyleSheet("background-color: green")

    # Connect button to a command and display it
    green_button.clicked.connect(
        partial(
            button_command, string="Green button pressed!", button_widget=green_button
        )
    )
    green_button.show()


def button_command(string, button_widget):
    print(string)
    button_widget.close()
    button_widget.deleteLater()


create_hud()
