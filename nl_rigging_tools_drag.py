import logging
import os
import sys

sys.dont_write_bytecode = True


def onMayaDroppedPythonFile(*args):
    """Install nl_rigging_tools module when the script is dropped into Maya."""
    print(
        r"""
     _______________________________
    |          _   ____    ______   |
    |         | | |  _ `| |__  __`| | 
    |  _ __   | | | |_| |    | |    |
    | | '_ `| | | |  _  /    | |    |
    | | | | | | | | | \ \    | |    |
    | |_| |_| |_| |_|  \_\   |_|    |
    |_______________________________|

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
    try:
        cur_dir = os.path.dirname(__file__)
        content = f"+ {mod_name} any {cur_dir}\nscripts: .\n"
        with open(mod_path, "w") as f:
            f.write(content)

        logging.info(f"Module file created : {mod_path}")

    except Exception as e:
        logging.error(f"Failed to create module file: {e}")

    # Load the tool
    import nl_modules.nl_rigging_tools as nlRT
    import importlib
    importlib.reload(nlRT)
    nlRT.addIcon2CurrShelf()
    nlRT.showUI()
