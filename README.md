
# nl-rigging-tools

## Problem
There were time I worked on muscle simulation with Ziva horses. Rigging the "skeleton" was the first step that I found tricky but interesting. So how about rigging some other animals with skeleton ?

## Missions
### 1. Modular
I had built a few biped autorig over the years. In production I find modularity is better as I may need only an arm or leg in a shot. Building an entire rig and deleting unwanted part may break it somehow.
### 2. Use of Framework
For a long time I know nothing about framework. Thanks to the course <b>Python for Maya: Beginner to Advanced Rigging Automation</b> by Nick Hughes, I learn the way to write custom framework to build tools the professional way.
### 3. Use of Python
I have autoRig written in MEL and Maxscript. I always want to rewrite them in Python, with more useful features.

## Components
#### Neck / Spine
- FK > IK > Ribbon
- Stretchy with volume control
#### Arm
- FK / IK with ribbon
- Auto clavicle
- Soft IK
- Elbow pinning
- Free / aligned wrist
- Twist bones
#### Hand
- Smart finger control
- Palm roll control
- Scalable hand
#### Leg
- FK / IK with ribbon
- Auto hip
- Soft IK
- Knee pinning
- Twist bones
- Toe & Patella bones
- Knee correction
- Smart foot roll control
- Scalable foot
#### NeckQd / SpineQd
- IK > FK > Ribbon
- Stretchy with volume control
#### LegQd
- FK / IK with ribbon
- Smart foot roll control



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


## Marking menus : Rig Building ( ctrl + MMB )

![The Autorig](nl_modules/doc/marking_menu_autorig.png)
## Marking menus : General ( ctrl + alt + MMB )
![General Rigging](nl_modules/doc/marking_menu_rigging.png)


## Installation
1. Download the repository zip file.
2. Extract it.
3. Locate install/dragAndDrop.py.
4. Drag and drop it onto a Maya viewport.
5. Run the lines
    ```python
    from nl_modules import nl_rigging_tools
    nl_rigging_tools.main()
    ```

## Support
For more information, visit my blog at [www.nickyliu.com](http://www.nickyliu.com)


## Reference
[BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)