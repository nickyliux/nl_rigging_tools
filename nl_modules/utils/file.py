import json
import logging
import os

import maya.cmds as mc


def loadJson(path):
    """Return json file as dict"""
    if os.path.isfile(path):
        f = open(path)
        data = json.loads(f.read())
        f.close()
        return data
    else:
        logging.error("Json file not found.\n" + path)
        return None


def saveJson(path, data, force=False):
    """Save dictionary to json file"""
    if os.path.isfile(path) and not force:
        raise FileExistsError("Json file already exists.")

    f = open(path, "w")
    f.write(json.dumps(data, sort_keys=1, indent=4, separators=(",", ":")))
    f.close()


def importFile(path):
    """Import file and return list of imported nodes"""
    content = mc.file(path, i=True, returnNewNodes=1)
    return content


def openFile(path):
    """Open file in Maya"""
    mc.file(new=1, f=1)
    mc.file(path, o=1)
    # mc.viewFit(all=1)


def deleteFile(path):
    """Delete file if it exists"""
    if os.path.isfile(path):
        os.remove(path)


# def importFile(path, ns="tempNS"):
#     """import file with namespace"""
#     mc.file(path, i=True, namespace=ns)
#     root_list = mc.ls(ns + ":|*")
#     root_nodes = []
#     for root in root_list:
#         root_nodes.append(root.split(":")[-1])
#
#     mc.namespace(moveNamespace=(ns, ":"), f=1)
#     mc.namespace(removeNamespace=ns)
#     return root_nodes
