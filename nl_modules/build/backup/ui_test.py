# -*- coding: utf-8 -*-
from PySide2 import QtCore
from PySide2 import QtWidgets

# 获取主窗口调用模块
from shiboken2 import wrapInstance

# 获取ui图形
from PySide2 import QtGui
import maya.OpenMaya as om
import maya.OpenMayaUI as omui
import maya.cmds as cmds


# 返回maya的主窗口小部件作为python对象>>>[样板代码]
def maya_main_window():
    # 获取主窗口
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


def reference_file(file_path):
    cmds.file(file_path, reference=True, ignoreVersion=True)


class TestDialog(QtWidgets.QDialog):
    # 添加过滤器环境变量，";;"用于分割所需过滤文件格式 Maya(*.ma*.mb);;
    FILE_FILTERS = "Maya ASCII(*.ma);;Maya Binary(*.mb);;All Files(*.*)"
    # 设置默认值
    selected_filter = "Maya (*ma *.mb)"

    dlg_instance = None

    # 让对话框储存自身的实例
    @classmethod
    def show_dialog(cls):
        if not cls.dlg_instance:
            cls.dlg_instance = TestDialog()
        if cls.dlg_instance.isHidden():
            cls.dlg_instance.show()
        else:
            cls.dlg_instance.raise_()
            cls.dlg_instance.activateWindow()

    # parent：将ui窗口定义给maya的主窗口
    def __init__(self, parent=maya_main_window()):
        super(TestDialog, self).__init__(parent)

        self.setWindowTitle("Test Dialog Open/Import/Reference")
        self.setMinimumSize(300, 80)

        # 使用排他或按位运算符删除主窗口x前面的？>>>[这个只在Windows系统中会出现]
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

        self.create_widgets()
        self.create_layouts()
        self.create_connections()

    # 创建按钮
    def create_widgets(self):
        self.filepath_le = QtWidgets.QLineEdit()
        self.select_file_path_btn = QtWidgets.QPushButton()
        # 给按钮一个图标
        self.select_file_path_btn.setIcon(QtGui.QIcon(":fileOpen.png"))
        # 给按钮一个提示
        self.select_file_path_btn.setToolTip("SelectFile")

        self.open_rb = QtWidgets.QRadioButton("Open")
        self.open_rb.setChecked(True)
        self.import_rb = QtWidgets.QRadioButton("Import")
        self.reference_rb = QtWidgets.QRadioButton("Reference")

        self.force_cb = QtWidgets.QCheckBox("Force")

        self.apply_bt = QtWidgets.QPushButton("Apply")
        self.close_bt = QtWidgets.QPushButton("Close")

    # 创建布局
    def create_layouts(self):
        # 横向创建输入框和按钮
        file_path_layout = QtWidgets.QHBoxLayout()
        file_path_layout.addWidget(self.filepath_le)
        file_path_layout.addWidget(self.select_file_path_btn)

        radio_btn_layout = QtWidgets.QHBoxLayout()
        radio_btn_layout.addWidget(self.open_rb)
        radio_btn_layout.addWidget(self.import_rb)
        radio_btn_layout.addWidget(self.reference_rb)

        button_layout = QtWidgets.QHBoxLayout()
        button_layout.addStretch()
        button_layout.addWidget(self.apply_bt)
        button_layout.addWidget(self.close_bt)
        # 纵向嵌套标签和file_path_layout打包的横向的输入框极其按钮
        form_layout = QtWidgets.QFormLayout()
        form_layout.addRow("File:", file_path_layout)
        form_layout.addRow("", radio_btn_layout)
        form_layout.addRow("", self.force_cb)
        # 将前面的嵌套给QVBoxLayout
        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.addLayout(form_layout)
        main_layout.addLayout(button_layout)

    # 创建连接
    def create_connections(self):
        self.select_file_path_btn.clicked.connect(self.show_file_select_dialog)
        self.open_rb.toggled.connect(self.update_force_vis)
        self.apply_bt.clicked.connect(self.load_file)
        # 设置关闭按钮
        self.close_bt.clicked.connect(self.close)

    def show_file_select_dialog(self):
        # 调用获取打开的文件名， 需要调用self
        # 需要返回两个值 >>> 文件名/选择过滤器
        # ("Select File","")中，"",为起始目录，然后在起始目录中传递过滤器字符串，打开selected_filter并将最近一次的selected_filter传递记录
        file_path, self.selected_filter = QtWidgets.QFileDialog.getOpenFileName(
            self, "Select File", "", self.FILE_FILTERS, self.selected_filter
        )
        if file_path:
            self.filepath_le.setText(file_path)

    def update_force_vis(self, checked):
        # 将 open_rb 和 force_cb 的显示连接
        self.force_cb.setVisible(checked)

    def load_file(self):
        # file_path为 show_file_select_dialog 输入框返回的文本路径
        file_path = self.filepath_le.text()
        if not file_path:
            return
        # 查找路径是否有这个文件
        # QFileInfo 允许你访问文件的各种属性，如文件名、路径、大小、修改日期等，而无需实际打开文件
        file_info = QtCore.QFileInfo(file_path)
        if not file_info.exists():
            om.MGlobal.displayError("File does not exist: {0}".format(file_path))
            return
        # 判断选择按钮，指定file_path路径给功能
        if self.open_rb.isChecked():
            self.open_file(file_path)
        elif self.import_rb.isChecked():
            self.import_file(file_path)
        else:
            reference_file(file_path)

    def open_file(self, file_path):
        #  检查force是否打开
        force = self.force_cb.isChecked()
        # 如果没有打开force，而当前文件已经被修改，询问用户是否强制打开
        # 弹出提示框，QMessageBox是QtWidgets内置的提示窗口.if select StandardButton Yes,force is true
        if not force and cmds.file(q=True, modified=True):
            result = QtWidgets.QMessageBox.question(
                self, "窗口名", "Current scene has unsaved changes.Continue?"
            )
            if result == QtWidgets.QMessageBox.StandardButton.Yes:
                force = True
            else:
                return
        cmds.file(file_path, open=True, ignoreVersion=True, force=force)

        cmds.file(file_path, i=True, ignoreVersion=True)

    def import_file(self, file_path):
        cmds.file(file_path, i=True, ignoreVersion=True)

    def reference_file(self, file_path):
        cmds.file(file_path, reference=True, ignoreVersion=True)


if __name__ == "__main__":
    try:
        test_dialog.close()  # pylint: disable=E0601
        test_dialog.deleteLater()
    except:
        pass

    test_dialog = TestDialog()
    test_dialog.show()
