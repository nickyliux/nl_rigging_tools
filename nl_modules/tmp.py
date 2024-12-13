import os
import sys
import inspect
from PyQt5.QtWidgets import *
from nodeeditor.utils import loadStylesheet
from nodeeditor.node_editor_window import NodeEditorWindow

# sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", ".."))

# if __name__ == "__main__":
app = QApplication(sys.argv)

wnd = NodeEditorWindow()
wnd.nodeeditor.addNodes()
module_path = os.path.dirname(inspect.getfile(wnd.__class__))

# loadStylesheet(os.path.join(module_path, "qss/nodestyle.qss"))

sys.exit(app.exec_())

mc.displayRGBColor(list=1)



mc.progressWindow(title='PP Bar', progress=0, status='Progress (+ 1): 0%%', isInterruptable=1)
step = 5

for i in range(5):
    progress = 100.0 / 5 * i
    if progress % step:
        continue
    mc.progressWindow(e=1, progress=progress, status='Progress (stepped by 1): %d%%' % progress)
    # mc.pause(seconds=random.random() * 2)

mc.progressWindow(endProgress=1)