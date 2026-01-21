from PySide2 import QtCore, QtGui, QtWidgets

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin


class MainWindow(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent=parent)

        self.setWindowTitle("test")
        # Main widget
        main_widget = QtWidgets.QWidget()
        main_layout = QtWidgets.QVBoxLayout()

        # Create UI widgets
        self.test_btn = QtWidgets.QPushButton("Test")

        # Attach widgets to the main layout
        main_layout.addWidget(self.test_btn)

        # Set main layout
        main_widget.setLayout(main_layout)
        self.setCentralWidget(main_widget)

        # Connect buttons signals
        self.test_btn.clicked.connect(self.on_test_btn_click)

    def on_test_btn_click(self):
        print("Test button was clicked")


w = MainWindow()
w.show(dockable=True, floating=False, area="left")
