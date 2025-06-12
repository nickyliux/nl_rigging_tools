
# nl-rigging-tools

## Background
For years, I have been rigging characters with my own autorigger . Once in a project I studied Ziva and rigged the actual "skeleton". I find it interesting and I would like to learn advanced python and anatomy through the project.

## Overview

nl-rigging-tools is designed to be used with minimum setup time and maximum usability.
- <b>Modular : </b>
There are times only part of the body is visible or needed. Modular build avoids building entire rig and deleting unwanted parts which may break the rig.
- <b>Custom Framework : </b>
Thanks to the course "Python for Maya: Beginner to Advanced Rigging Automation" by Nick Hughes, I learn to build custom framework for faster development and cleaner codes.
- <b>Auto Bone Skinning : </b>
Minimum setup by positioning reference / ribbon joints for the skeletal meshes.

## Framework Python Classes
```mermaid
classDiagram
    
    DepNode <|-- DagNode
    DagNode <|-- GroupNode
    GroupNode <|-- CurveNode
    GroupNode <|-- JointNode
    GroupNode <|-- LocNode
    GroupNode <|-- MeshNode
    GroupNode <|-- SurfNode
    
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
    RigModule <|-- Spine
    Spine <|-- Neck
    RigModule <|-- Arm
    RigModule <|-- Leg
    RigModule <|-- SpineQd
    SpineQd <|-- NeckQd
    RigModule <|-- LegQd
    RigModule <|-- Tail
```


## Components Features

Part | FK | IK | Ribbon | Stretchy | Volume | Soft Ik | Pv Pin | Twist bones | Palm Roll | Patella Bone | Local Scaling
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- 
Head |+||||||||||+
Spine |+|+|+|+|+||||+
Hand |+|+|+|+|||||||+
Arm |+|+|+|+|+|+|+|+|||+
Leg |+|+|+|+|+|+|+|+|+|+|+
Tail |+|+|+|+|||||||+


## Marking menus
Two Marking menus are made to speed up rigging work.
|||
|---|---|
|Rig Building | Ctrl + MMB ![The Autorig](nl_modules/doc/marking_menu_autorig.png)|
|Daily Rigging Operations | Ctrl + Alt + MMB ![General Rigging](nl_modules/doc/marking_menu_rigging.png)|


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