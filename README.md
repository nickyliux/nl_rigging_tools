## nl-rigging-tools (nRT)
It is another open-source modular auto-rigger written for Autodesk Maya in Python.

There are a few great auto-rigger tools available online. As a rigger I'm interested in building my own. One cool thing I learn through the development is the use of custom framework. Thanks to the Udemy course <b>Python for Maya: Beginner to Advanced Rigging Automation</b> by <b>Nick Hughes</b>, the tools are built with less redundant codes, better readability, and no dependency on PyMEL.

For example, the lines below generates all utility nodes required with readability just like expression.

```python
# ---------------------------------------------------------------
#  Soft ik logic
# ---------------------------------------------------------------
s = self.ikc.a.softIK
Ds = D * (1 - s)
new_d = D * (1 - s * math.e ** -(d - Ds))
(((d > Ds).setCdn(ifTrue=new_d, ifFalse=d)) * ratio >> softJ.a.tx)
```


## Installation
1. Download the repository zip file
2. Extract the contents
3. Locate install/dragAndDropMe.py
4. Drag and drop this file onto a Maya viewport.

## Usage

```python
from nl_modules import nl_rigging_tools
from importlib import reload
reload(nl_rigging_tools)
nl_rigging_tools.main()
```

## Framework & Components Classes

```mermaid
stateDiagram
    rcc: Component Classes
    state rcc {
        [*] --> RigBase
        RigBase --> RigModule
        RigModule --> Head
        RigModule --> Spine
        Spine --> Neck
        RigModule --> Arm
        RigModule --> Leg
        RigModule --> SpineQd
        SpineQd --> NeckQd
        RigModule --> LegQd
        RigModule --> Tail
    }

```

### Example use

```python
headObj = Head('head0_RGN')
headObj.genSk()
headObj.build()
```

```mermaid
stateDiagram
    rfc: Framework Classes
    state rfc {
        [*] --> Attribute
        [*] --> AttributeHolder
        [*] --> DepNode
        [*] --> Dimension
        [*] --> RibbonNode
        DepNode --> DagNode
        DagNode --> IkNode
        DagNode --> GroupNode
        DagNode --> Condition
        GroupNode --> CurveNode
        GroupNode --> JointNode
        GroupNode --> MeshNode
        GroupNode --> SurfNode
        GroupNode --> LocNode
    }
```

### Example use

```python
crv = CurveNode('myCurve')
jnt = JointNode('myJoint')
msh = MeshNode('myMesh')
srf = SurfNode('mySrf')
loc = LocNode('myLoc')
obj = DagNode('myObj')
```

## Marking Menus

#### Marking menu for autorig ( ctrl + MMB )

![marking_menu_autorig.png](nl_modules/doc/marking_menu_autorig.png)

#### Marking menu for general rigging ( ctrl + alt + MMB )

![marking_menu_rigging.png](nl_modules/doc/marking_menu_rigging.png)
