import logging
import os
import sys

sys.dont_write_bytecode = True


def onMayaDroppedPythonFile(*args):

    mod_name = "nl_rigging_tools"
    cur_dir = os.path.dirname(__file__)
    app_dir = os.environ["MAYA_APP_DIR"]
    mod_dir = os.path.join(app_dir, "modules")
    mod_path = os.path.join(mod_dir, f"{mod_name}.mod")

    # Create mod file
    mod_content = f"+ {mod_name} any {cur_dir}\nscripts: .\n"
    try:
        with open(mod_path, "w") as f:
            f.write(mod_content)
        logging.info(f"Module file created at: {mod_path}")
    except Exception as e:
        logging.error(f"Failed to create module file: {e}")

    # Open UI
    import nl_modules.nl_rigging_tools as nlRT
    from importlib import reload

    reload(nlRT)
    nlRT.showUI()
