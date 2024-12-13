import maya.cmds as mc


def fkAdv():
    """FK method by AnimSchool Adam"""
    joints = ["a", "b", "c"]
    orients = []
    matches = []
    ctrls = []

    for i, j in enumerate(joints):
        orient = mc.createNode("transform", n=j + "_orient", parent=j)
        match = mc.createNode("transform", n=j + "_match", parent=orient)
        ctrl = mc.createNode("transform", n=j + "_ctrl", parent=orient)
        orients.append(orient)
        matches.append(match)
        ctrls.append(ctrl)

        ro = mc.getAttr(j + ".rotateOrder")
        for n in [orient, match, ctrl]:
            mc.setAttr(n + ".rotateOrder", ro)

        if i == 0:
            mc.parent(orient, world=True)
        else:
            mc.parent(orient, matches[i - 1])

        channels = ["t", "r", "s"]
        for c in channels:
            mc.connectAttr(ctrl + "." + c, match + "." + c)
            if c == "t":
                mc.pointConstraint(ctrl, j)
            else:
                mc.connectAttr(ctrl + "." + c, j + "." + c)

        for n in [orient, match]:
            attrs = mc.listAttr(n, k=1, multi=1)
            for a in attrs:
                mc.setAttr(n + "." + a, lock=1)


fkAdv()
