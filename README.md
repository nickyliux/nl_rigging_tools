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

![nlRT Main](docs/nlRT_UI.png) 

## Declaimer
> Note that the project is still under active development so please use it for study purpose. 

## Background

In my last job I encountered a project with characters in need of Ziva muscle. The very first step was to rig the skeleton mesh as the input of simulation. It required unusual skills like creating IK with backward initial knee, bone adjustment to avoid breaking the simulation... Wouldn't it be great to have an autorig tool for every vetebrate on Earth ? It seems a great way to learn anatomy and apply my knowledge in python.


## Features

- **Modular :** Support multiple limbs.
- **Skeletal :** Support skeleton rigging.
- **Cartoony :** Support bendy limbs.
- **Data Reuse :** Reuse of templates, controls, proxies, weights.
- **Custom Marking Menus :** Handy menus for rig creation.
- **Custom Framework :** Much less redundant code during development.

## Marking Menus

|nlRT Tasks|General Tasks|
|:-:|:-:|
|Ctrl + MMB|Ctrl + Alt + MMB|
|![nlRT Main](docs/markingMenu_nlRT.png)|![nlRT Main](docs/markingMenu_general.png)|

## Installation

1. Download and extract to somewhere you could keep the files.
2. Find "install_by_drag_n_drop.py" and drag it onto Maya viewport.

The tool UI will show up at the left and "nlRT" appears in the main menu of Maya.
![mayaMenu](docs/mayaMenu.png)

## Usage

Typical Workflow
1. Set the character directory.
2. Load the model.
3. Create guides and fit into the model.
4. Build rig.
5. Gen proxy (For preview or skinning).
6. Skin using proxy.
7. Edit control shapes.

If you follow the naming convention below, file can be read with less browsing.
e.g.

`horse`  
&emsp;`  horse_mdl*.ma`  
&emsp;`  horse_tpl*.json`  
&emsp;`  horse_ctl*.ma`  
&emsp;`  horse_prx*.ma`  
&emsp;`  weight`  
&emsp;&emsp;&emsp;`  horse_wgh*.json`  

> Note that * is any number where the largest will be loaded

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

grp = GrpNode('newGrp') # create group 'newGrp'
jnt = JntNode('newJnt') # create joint 'newJnt'
crv = CrvNode('newCrv') # create nurbs curve 'newCrv'
srf = SrfNode('newSrf') # create nurbs surface 'newSrf'

crv.weightTo([jnt]) # bind jnt to crv
srf.weightTo([jnt]) # bind jnt to srf

grp.a.t.set(0,10,0) # set position
jnt.alignTo(grp) # align jnt to grp
jnt.addOffsetGrp() # add offset group for jnt
```

## Custom Component Classes
```mermaid
flowchart
    RigBase --> RigModule
    RigModule --> Head
    RigModule --> SpineBp
    SpineBp --> NeckBp
    RigModule --> ArmBp
    RigModule --> HandBp
    RigModule --> LegBp
    RigModule --> SpineQd
    SpineQd --> NeckQd
    RigModule --> LegQd
    RigModule --> Tail
    RigModule --> SimplyFk
    RigModule --> FingerFk
```

```python
from nl_modules.build.leg_bp import LegBp

cpn = LegBp('lfLegBp0_RGN') # create legBp object given rigNode in scene
cpn.gen_sk() # generate skeleton
cpn.build() # build rig
```

## Dev Environment
| Maya | Python | OS |
|:-:|:-:|:-:|
|2023.3 |3.9.7|Win 11

## Reference
1. [Python for Maya : Beginner to Advanced Rigging Automation by Nick Hughes](https://www.udemy.com/course/python-for-maya-beginner-to-advanced-rigging-automation)
2. [Ramon Arango's rigs](https://ramonarango.gumroad.com/)
2. [BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)
3. [Ivlpaleontology](https://sketchfab.com/ivlpaleontology)
4. [Rigamajig2](https://github.com/masonSmigel/rigamajig2)


<br>

Visit my blog at [https://www.nickyliu.com](https://www.nickyliu.com)
