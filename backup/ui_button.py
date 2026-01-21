import shiboken2
from PySide2 import QtWidgets
import maya.cmds as cmds
import maya.mel as mel
import maya.OpenMayaUI as omui

# Get the MEL global value for the status line element. The status line is what holds the
# buttons at the top of Maya that has the mode dropdown (modeling, animation, rigging, etc),
# selection type toggle buttons, render buttons, etc...
name = mel.eval("string $tempStr = $gStatusLine")
widget_ptr = omui.MQtUtil.findControl(name)
# Return the UI element as a Qt widget.
widget = shiboken2.wrapInstance(long(widget_ptr), QtWidgets.QWidget)

# Add a custom button that triggers an action when clicked.
# As an example, we are going to create a poly sphere everytime the button is clicked.
button = QtWidgets.QPushButton()
button.setText("My Tool")
button.clicked.connect(cmds.polySphere)

# Add the widget to the status line.
widget.layout().addWidget(button)
