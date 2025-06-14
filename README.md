
# nl-rigging-tools

## Background
For years, I have been rigging characters with my own autorigger . Once in a project I was using Ziva and find it interesting rigging the actual "skeleton". Meanwhile I would like to apply python and anatomy through the project.

## Overview

- <b>Modular : </b>
Convenient when part of entire rig is needed.
- <b>Custom Framework : </b>
Simplify tools development.
- <b>Auto Skinning : </b> Simplify binding for skeleton meshes.
- <b>Data Reuse : </b> Guide / proxy / control data can be customized, saved and reused.


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

Part | FK | IK | Ribbon | Stretchy | Volume | Soft Ik | Pv Pin | Twist bones | Palm Roll | Patella Bone 
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- 
Head |+|||||||||
Spine |+|+|+|+|+|||
Hand |+|+|+|+||||||
Arm |+|+|+|+|+|+|+|+||
Leg |+|+|+|+|+|+|+|+|+|+
Tail |+|+|+|+||||||


## Marking menus
Two Marking menus are made to speed up rigging work.
|Menu|Shortcut|UI|
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