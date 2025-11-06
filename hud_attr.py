import maya.cmds as cmds
import maya.mel as mel
from functools import partial


class debug_Attribute:

    def __init__(self):
        debugWindowName = "AttributeDisplayUI"
        uiExist = cmds.window(debugWindowName, exists=True)
        if uiExist == True:
            cmds.deleteUI(debugWindowName)
        # window parameters
        cmds.window(
            debugWindowName, t="Display the value of an attribute", s=0, rtf=True
        )  # , rtf=True
        cmds.frameLayout(borderVisible=0, labelVisible=0)
        cmds.columnLayout(columnAttach=("both", 10), rowSpacing=5, columnWidth=430)
        cmds.rowLayout(
            numberOfColumns=3,
            columnWidth3=(150, 190, 20),
            adjustableColumn=2,
            ct3=("left", "left", "left"),
            co3=(0, 5, 5),
        )
        cmds.text(l="1.HighLigth an attribute:")
        cmds.textField("debugWindow_displayAttrField", h=25, ed=True)
        cmds.button(l="<<", c=self.connect_attr2_button_ui_proc)
        cmds.setParent("..")
        cmds.separator()
        cmds.button(l="Delete HudDisplay", h=32, c=self.delete_attribute_HUD)
        cmds.showWindow(debugWindowName)
        cmds.window(debugWindowName, edit=True, widthHeight=(450, 200))

    def create_attribute_HUD(self, labelTxt, attributesToDisplay):
        hudExists = cmds.headsUpDisplay("HUDAttributeDisplay", q=True, ex=True)
        if hudExists == True:
            self.delete_attribute_HUD()
        cmds.headsUpDisplay(
            "HUDAttributeDisplay",
            section=1,
            block=0,
            blockSize="medium",
            label=labelTxt,
            labelFontSize="large",
            command=partial(self.attribute_value, attributesToDisplay),
            attributeChange=attributesToDisplay,
        )

    def attribute_HUD_setup(self, attributeName):
        if len(attributeName) > 0:
            labelTxt = attributeName + " is : "
            attributesToDisplay = attributeName
            self.create_attribute_HUD(labelTxt, attributesToDisplay)
        else:
            self.delete_attribute_HUD

    def delete_attribute_HUD(*args):
        hudExists = cmds.headsUpDisplay("HUDAttributeDisplay", q=True, ex=True)
        if hudExists:
            cmds.headsUpDisplay("HUDAttributeDisplay", e=True, rem=True)

    def connect_attr2_button_ui_proc(self, *args):
        selectionList = cmds.ls(sl=True)
        if len(selectionList) > 0:
            selNode = selectionList[0]
            selchan = mel.eval("selectedChannels")
            if selchan is not None and selchan == 1:
                if cmds.optionVar(exists="selchannel") == 0:
                    cmds.optionVar(remove="selchannel")

                cmds.channelBox(
                    "mainChannelBox",
                    e=True,
                    exe=['optionVar -sv "selchannel" ' + "#N" + "." + "#A", True],
                )
                attrN = cmds.optionVar(q="selchannel")
                longName = cmds.attributeName(attrN, l=True)
                attrN = attrN.split(".")[0] + "." + longName
                cmds.textField("debugWindow_displayAttrField", e=True, tx=attrN)
                self.attribute_HUD_setup(attrN)
            else:
                self.delete_attribute_HUD()
        else:
            self.delete_attribute_HUD()

    def attribute_value(self, attributesToDisplay):
        try:
            positionList = cmds.getAttr(attributesToDisplay)
            return positionList
        except:
            return 0


debug_Attribute()
