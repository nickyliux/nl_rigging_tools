
# nl-rigging-tools ( nlRT )

## Background
Once in a while I used Ziva intensively in a project. Rigging the actual skeleton meshes was challenging and fun. I feel that it would be a good opportunity to learn anatomy while building a tool to rig every vertebral animal on earth.

## Overview
nlRT is designed with the key features below :
- <b>Modular : </b>Support character of any number of parts.
- <b>Data Reuse : </b> Templates, controls and proxies can be saved and retored.
- <b>Auto Connect : </b> Parts are automatically connected  according to distance between anchors.
- <b>Auto Bind : </b> Skeletal meshes are auto bound with ref or ribbon joints added.
- <b>Concise code : </b> Thanks to Nick Hughes' Udemy course, "Python for Maya : Beginner to Advanced Rigging Automation", I use my own framework to make tools development more efficient.

## Framework Python Classes
```mermaid
classDiagram
    
    DepNode <|-- DagNode
    DagNode <|-- GrpNode
    GrpNode <|-- CrvNode
    GrpNode <|-- JntNode
    GrpNode <|-- LocNode
    GrpNode <|-- MshNode
    GrpNode <|-- SrfNode
    
    DepNode *-- Dimension
    AttributeHolder *-- Attribute
    DepNode *-- AttributeHolder
    Attribute *-- Condition
    class AttributeHolder
    class Attribute
    class Condition
    class Dimension
    
```

## Component Python Classes
```mermaid
classDiagram
    RigBase <|-- RigModule
    class RibbonNode
    class IkNode
    RigModule <|-- Head
    RigModule <|-- SpineBp
    SpineBp <|-- NeckBp
    RigModule <|-- ArmBp
    RigModule <|-- LegBp
    RigModule <|-- SpineQd
    SpineQd <|-- NeckQd
    RigModule <|-- LegQd
    RigModule <|-- Tail
```


## Components Features

Part | FK | IK | Ribbon | Stretchy | Volume | Soft Ik | Pv Pin | Twist bones | Palm Roll | Patella Bone | Scale
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
Head |*||||||||||*
Spine |*|*|*|*|*|||
Qd Spine |*|*|*|*|*|||
Hand |*|*|*|*|||||||*
Arm |*|*|*|*|*|*|*|*||
Leg |*|*|*|*|*|*|*|*|*|*
Qd Leg |*|*|*|*|*|*|*|*|*|*
Tail |*|*|*|*|||||||*


## Marking menus
Two Marking menus are made to speed up rigging work.
|Menu|Shortcut|Capture|
|---|---|---|
|Rig Building |Ctrl + MMB|![The Autorig](nl_modules/doc/marking_menu_autorig.png)|
|Daily Rigging Operations|Ctrl + Alt + MMB| ![General Rigging](nl_modules/doc/marking_menu_rigging.png)|


## Installation
1. Download the repository zip file.
2. Extract it.
3. Locate install / dragAndDrop.py.
4. Drag and drop it onto a Maya viewport.
5. Run the lines
    ```python
    from nl_modules import nl_rigging_tools
    nl_rigging_tools.main()
    ```

## More Info
Please visit my blog at [www.nickyliu.com](http://www.nickyliu.com)


## Reference
[BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)
