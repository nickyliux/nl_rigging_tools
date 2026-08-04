<!--
<style>
table {
    border-collapse: collapse;
}
table, th, td {
   border: 2px solid black;
}
blockquote {
    border-left: solid blue;
	padding-left: 10px;
}
</style>
-->

# nl-rigging-tools ( nlRT )

![License](https://img.shields.io/badge/license-MIT-red.svg?style=plastic)
[![Blog](https://img.shields.io/badge/blog-nickyliu.com-blue)](http://www.nickyliu.com)

![nlRT Main](docs/nlRT_UI.jpg) 

## Declaimer
> Note that the project is still under active development so please use it for study purpose. 

## Background

In my last job I encountered a project involving character setup with Ziva muscle. The very first step was to rig the skeleton mesh as the input of simulation. It required unusual skills like building IK with backward initial knee, bone offset for correct anatomy ... Isn't it cool if my rigging tool could support skeleton for every vetebrate ? Look like a great way to learn anatomy and apply python fully.


## Features

- **Modular :** support multiple limbs.
- **Skeletal :** support skeleton meshes for simulation.
- **Cartoony :** option for bendy limbs.
- **Data Reuse :** reuse of presets, controls, proxies, weights and more
- **Custom Marking Menus :** popup menus for rig creation.
- **Custom Framework :** reuse of codes and functions.

## Marking Menus

|Rig Build|General|
|:-:|:-:|
|Ctrl + MMB|Ctrl + Alt + MMB|
|![nlRT Main](docs/markingMenu_tool.png)|![nlRT Main](docs/markingMenu_general.png)|

## Installation

1. Download and extract to somewhere you could keep the files.
2. Find "install_by_drag_n_drop.py" and drag it onto Maya viewport.

The tool UI will show up at the left and "nlRT" appears in the main menu of Maya.

![mayaMenu](docs/mayaMenu.png)
## Usage
Typical Workflow :
1. Set Character Library Directory.
2. Load character model.
3. For character with skeletal meshes, create rb joint for axial bones and ref joints for limb bones. Move rb joints to rotation point. Ref joints can be placed roughly as the closest bind joint will be used.
4. Add guides or presets. Fit the guide points to the model. 
5. Build the rig.
6. If you want to bind using proxies, fit the proxy to warp mesh. 
7. Edit skin weight. 
8. Edit controls shape and size.
9. Run "Bind Sk" to attach and bind the skeletal meshes.

<br>

The files can be loaded without browwsing if you follow the naming rule. ( The number is for versioning. The largest will be loaded if found. )

```
e.g. For folder "horse",

horse_mdl2.ma           # model
horse_ref5.ma           # bone ref 
horse_tpl2.json         # guide template
horse_prx3.ma           # proxy
horse_ctl2.ma           # control
horse_hlp3.ma           # helper
horse_twk.ma            # tweak
weight/horse_wgh.json   # skin weight
```

## Custom Objects Classes
```mermaid
flowchart
    DepNode --> Condition
    DepNode --> DagNode
    DagNode --> GrpNode
    GrpNode --> CrvNode
    GrpNode --> JntNode
    GrpNode --> LocNode
    GrpNode --> SrfNode
    GrpNode --> MshNode

    Dimension
    AttributeHolder --> Attribute
```

```python
from nl_modules.nodel.grp_node import GrpNode
from nl_modules.nodel.jnt_node import JntNode
from nl_modules.nodel.crv_node import CrvNode
from nl_modules.nodel.srf_node import SrfNode

grp = GrpNode("newGrp")  # new group 'newGrp'
jnt = JntNode("newJnt")  # new joint 'newJnt'
crv = CrvNode("newCrv")  # new nurbs curve 'newCrv'
srf = SrfNode("newSrf")  # new nurbs surface 'newSrf'

crv.weightTo([jnt])  # bind jnt to crv
srf.weightTo([jnt])  # bind jnt to srf

grp.a.t.set(0, 10, 0)  # set position
jnt.alignTo(grp)  # align jnt to grp
jnt.addOffsetGrp()  # add offset group for jnt
```

## Custom Component Classes
```mermaid
flowchart
    RigModule --> Head
    RigModule --> SpineBp
    RigModule --> SpineQd
    RigModule --> ArmBp
    RigModule --> LegBp
    RigModule --> LegQd
    
```
```mermaid
flowchart
    RigModule --> IkFkSpline
    IkFkSpline --> Neck
    IkFkSpline --> Tail
    RigModule --> HandBp
    RigModule --> FingerFk
    RigModule --> SimpleFk
    RigModule --> belt
```


## Dev Environment
Maya 2023.3 / 2027, Win 11 Pro

## Reference
1. [Python for Maya : Beginner to Advanced Rigging Automation by Nick Hughes](https://www.udemy.com/course/python-for-maya-beginner-to-advanced-rigging-automation)
2. [Ramon Arango's rigs](https://ramonarango.gumroad.com/)
3. [Rigamajig2](https://github.com/masonSmigel/rigamajig2)
4. [BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)
5. [Ivlpaleontology](https://sketchfab.com/ivlpaleontology)
6. [Vertebres3d](https://www.vertebres3d.fr)


<br>

Visit my blog at [https://www.nickyliu.com](https://www.nickyliu.com)
