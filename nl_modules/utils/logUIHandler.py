import logging
import maya.cmds as mc

try:
    from PySide2 import QtWidgets
except ImportError:
    from PySide6 import QtWidgets


class UIHandler(logging.Handler):
    def __init__(self, text_widget):
        super(UIHandler, self).__init__()
        self.text_widget = text_widget
        self.setFormatter(
            logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
        )

    def emit(self, record):
        msg = self.format(record)
        # Append the formatted message to the QTextEdit widget
        self.text_widget.appendPlainText(msg)


class LogWindow(QtWidgets.QWidget):
    def __init__(self):
        super(LogWindow, self).__init__()
        self.setWindowTitle("Custom Log Window")
        self.setGeometry(100, 100, 400, 300)

        layout = QtWidgets.QVBoxLayout()
        self.log_display = QtWidgets.QPlainTextEdit()
        self.log_display.setReadOnly(True)
        layout.addWidget(self.log_display)
        self.setLayout(layout)

        # Add the UI handler to the logger
        self.setup_logger()

    def setup_logger(self):
        # Get the logger (use a specific name for your application's logger)
        self.logger = logging.getLogger("nlRT_logger")
        self.logger.setLevel(logging.INFO)

        # Prevent propagation to the root logger's default Script Editor handler
        self.logger.propagate = False

        # Create the custom UI handler and add it
        ui_handler = UIHandler(self.log_display)
        self.logger.addHandler(ui_handler)

    def closeEvent(self, event):
        # Clean up the handler when the window closes to prevent issues
        for handler in self.logger.handlers:
            if isinstance(handler, UIHandler):
                self.logger.removeHandler(handler)
        event.accept()


def show_log_window():
    # Ensure the window is deleted if it already exists
    try:
        if mc.window("LogWindow", exists=True):
            mc.deleteUI("LogWindow")
    except RuntimeError:
        pass

    global my_log_window
    my_log_window = LogWindow()
    my_log_window.setObjectName("LogWindow")  # Set object name for Maya management
    my_log_window.show()

    logger = logging.getLogger("nlRT_logger")
    logger.info("Window opened and logger configured.")
    logger.warning("This is a warning message.")
    logger.error("An error occurred!")


# if __name__ == "__main__":
#     show_log_window()
