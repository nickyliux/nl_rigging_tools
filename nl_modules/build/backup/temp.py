#     mc.displayRGBColor("lead", *color)
#     mc.displayRGBColor("referenceLayer", *color)
#     mc.selectPref(clickDrag=not mc.selectPref(clickDrag=1, q=1))
#     mc.selectPref(clickDrag=state)
#     mel.eval('setObjectPickMask "All" 0')
#     mel.eval('setObjectPickMask "Curve" 1')
#     mel.eval('setObjectPickMask "Surface" 1')


# def addBladeAttr(self):
#     """Add attribute 'isBlade' to selected joints"""
#     for s in mc.ls(sl=1, tr=1):
#         DagNode(s).a.add("isBlade", lock=1, dv=1)
