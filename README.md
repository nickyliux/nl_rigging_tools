# nl_rigging_tools

This is another modular auto rigging tools written in Python for Maya. I try to make it as intuitive as possible and

- allow modular rebuild
- support anatomical models

The tool is built efficiently with custom framework which is not planned ahead. Thanks to the Udemy Course <b>Python for Maya Beginner to Advanced Rigging Automation</b> by Nick Hughes, it opens my eyes and shows me the proper way to go without pymel.

## Usage

```
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

```
headObj = Head('head0_RGN')
headObj.genSk()
headObj.build()
```

```mermaid
stateDiagram
    rfc: Framework Classes
    state rfc {
        [*] --> Attribute
        [*] --> Attribute_Holder
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

```
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
