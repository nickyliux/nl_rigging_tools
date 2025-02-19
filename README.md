## N-Rig

It is another modular rigging tool for Autodesk Maya written in python. 

Around 2009, I started developing my own autorig. It was very simple 

It was I've been using one written for biped for many years in production. As a rigger it is always on my list to build my own modular one 

Core values of the system :
- Intuitive:&emsp;Too many things at a time is scary.
- Effective:&emsp;No animator I know enjoy waiting for playback.
- Modular:&emsp;Animators will break it badly otherwise.
- Fun:&emsp;&emsp;&emsp;Isn't it great ?

The system was built with a custom framework. Thanks to the rigging course by <i><b>Nick Hughes</b></i> which opens my eyes and shows me the proper way to go without pymel.

## Installation

1. Download the repository zip file

2. Extract the contents

3. Locate install/dragAndDropMe.py

4. Drag and drop this file into a Maya viewport.


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
obj = DagNode('obj')

objA.a.tx + objB.a.tｘ >> objC.a.tx
```

## Marking Menus

#### Marking menu for autorig ( ctrl + MMB )

![marking_menu_autorig.png](nl_modules/doc/marking_menu_autorig.png)

#### Marking menu for general rigging ( ctrl + alt + MMB )

![marking_menu_rigging.png](nl_modules/doc/marking_menu_rigging.png)
