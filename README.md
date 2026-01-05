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

# nl-rigging-tools ( nlRT )  ![nlRT logo](icons/nl_rigging_tools.bmp)  

![License](https://img.shields.io/badge/license-GPLv3-red.svg?style=plastic)
[![Blog](https://img.shields.io/badge/blog-nickyliu.com-blue)](http://www.nickyliu.com)

## Background

In my last job I encountered a project with characters involving Ziva muscle setup. The very first step was to rig the skeleton mesh  as an input of simulation. It required unusal skill that was inspirating to me. Wouldn't it be great to build an autorig tool for every vetebra on Earth ?


## Features

- **Modular :** Support multiple limbs.
- **Skeletal Build :** Support skeleton rigging.
- **Cartoony Build :** Support bendy limbs.
- **Data Reuse :** Reuse of templates, controls, proxies, weights.
- **Custom Marking Menus :** Handy menus for rig creation.
- **Custom Framework :** Less redundant code for rig development.

## Framework Classes
```mermaid
flowchart
    DepNode --> DagNode
    DepNode --> Condition
    DagNode --> GrpNode
    GrpNode --> CrvNode
    GrpNode --> JntNode
    GrpNode --> LocNode
    GrpNode --> MshNode
    GrpNode --> SrfNode

    Dimension
    AttributeHolder --> Attribute
```

## Component Classes
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

## Marking menus
Two Marking menus are made to speed up rigging tasks.
|Menu|Shortcut|Interface|
|:-:|:-:|:-:|
|Rig Build |Ctrl + MMB|![The Autorig](docs/mm_rigBuild.png)|
|General|Ctrl + Alt + MMB| ![General Rigging](docs/mm_general.png)|



## Development Environment
| Maya | Python | OS |
|:-:|:-:|:-:|
|2023.3 |3.9.7|Win 11

## Installation

1. Download and extract to your target location.
2. Drag and drop "nl_rigging_tools_drag.py" onto Maya. "nlRT" will be added into main menu and the tool UI will show up.

You can add icon to the active shelf by "More > Add Icon to Current Shelf" in the tool UI.

## Usage

![nlRT Main](docs/nlRT_UI.png) 

Firstly, files are read with the naming convention like below

`(char)`  
&emsp;`  |_ mdl`  
&emsp;&emsp;&emsp;`    |_ (char)_mdl*.ma`  
&emsp;`  |_ weight`  
&emsp;&emsp;&emsp;`  |_ (char)_wgh*.json`  
&emsp;`  |_ (char)_tpl*.json`  
&emsp;`  |_ (char)_ctl*.ma`  
&emsp;`  |_ (char)_prx*.ma`  

Typical Workflow
1. Browse the character directory.
2. Create guide components or load from saved.
3. Build rig.
4. To bind character with proxy, gen proxy, edit and bind . Otherwise bind manually.
5. Edit ctl shapes.



## Reference
1. [Python for Maya : Beginner to Advanced Rigging Automation by Nick Hughes](https://www.udemy.com/course/python-for-maya-beginner-to-advanced-rigging-automation)
2. [Ramon Arango's rigs](https://ramonarango.gumroad.com/)
2. [BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)
3. [Ivlpaleontology](https://sketchfab.com/ivlpaleontology)

##
For more details, visit my blog at [https://www.nickyliu.com](https://www.nickyliu.com)
