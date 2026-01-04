import logging
import os
import sys

sys.dont_write_bytecode = True


def onMayaDroppedPythonFile(*args):
    """Install nl_rigging_tools module when the script is dropped into Maya."""
    print(
        r"""
     ______________________________
    |          _   ____    _____  |
    |         | | |  _ `| |_   _| |
    |  _ __   | | | |_| |   | |   |
    | | '_ `| | | |  _  /   | |   |
    | | | | | | | | | |`|   | |   |
    | |_| |_| |_| |_| |_|   |_|   |
    |_____________________________|

    """
    )
    if sys.version_info[0] < 3:
        mc.confirmDialog(t="Error", m="Sorry, this tool requires Python 3", b=["OK"])
        return

    mod_name = "nl_rigging_tools"
    mod_path = os.path.join(
        os.environ["MAYA_APP_DIR"],
        "modules",
        f"{mod_name}.mod",
    )
    install_dir = os.path.dirname(__file__)
    try:
        content = f"+ {mod_name} any {install_dir}\nscripts: .\n"
        with open(mod_path, "w") as f:
            f.write(content)

        logging.info(f"Module file created : {mod_path}")

    except Exception as e:
        logging.error(f"Failed to create module file: {e}")

    if install_dir not in sys.path:
        sys.path.insert(0, install_dir)

    # Load startup to create menu
    import startUp

    startUp.createMenu()

    # Show the UI
    import nl_modules.nl_rigging_tools as nlRT
    import importlib

    importlib.reload(nlRT)
    nlRT.showUI()
