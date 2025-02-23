# nl-rigging-tools (nRT)
### What ?
It is another open-source modular auto-rigger written for Autodesk Maya in Python.

There are a few great auto-rigger tools available freely online. As a rigger I'm interested in building my own. One cool thing I learn throughout the development is the use of custom framework. Thanks to the Udemy course <b>Python for Maya: Beginner to Advanced Rigging Automation</b> by <b>Nick Hughes</b>, my tools could be built with less redundant code, better readability, and no dependency on PyMEL.

For example, the lines below generates all utility nodes and connections required and read as easily as expression !

```python
# ---------------------------------------------------------------
#    Soft ik logic
# ---------------------------------------------------------------
s = self.ikc.a.softIK
Ds = D * (1 - s)
new_d = D * (1 - s * math.e ** -(d - Ds))
(((d > Ds).setCdn(ifTrue=new_d, ifFalse=d)) * ratio >> softJ.a.tx)
```

## Framework Classes

```mermaid
classDiagram
    
    DepNode <|-- DagNode
    DagNode <|-- GroupNode
    DepNode <|-- Condition
    GroupNode <|-- CurveNode
    GroupNode <|-- JointNode
    GroupNode <|-- MeshNode
    GroupNode <|-- SurfNode
    GroupNode <|-- LocNode
    DepNode --* Dimension
    DepNode --* AttributeHolder
    AttributeHolder --* Attribute
    
```
## Component Classes
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

## Rig Features
Limb Basic
1. fk/ik blend
2. squash & stretch
3. space switch
4. soft ik
5. smart ctl
6. pv pin with fk
7. auto hip/shoulder

Limb Options
1. ribbon ctl
2. patella bone (leg)
3. toe bones (leg)
4. knee correction (leg)
5. fore limb twist bone

## Marking Menus

Two marking menus are included with shortcut to speed things up.

#### Rig Operation ( ctrl + MMB )

![The Autorig](nl_modules/doc/marking_menu_autorig.png)

#### General Rigging ( ctrl + alt + MMB )

![General Rigging](nl_modules/doc/marking_menu_rigging.png)


## Installation
1. Download the repository zip file.
2. Extract to storage location.
3. Locate install/dragAndDrop.py.
4. Drag and drop it onto a Maya viewport.


## Usage

```python
from nl_modules import nl_rigging_tools
from importlib import reload
reload(nl_rigging_tools)
nl_rigging_tools.main()
```
## To do

* Study matrix for more efficient constraint calculation.
* Understand more about how professional animators work.
* Study more about rigging in Houdini.