<!--
<style>
table {
    border-collapse: collapse;
}
table, th, td {
   border: 1px solid black;
}
blockquote {
    border-left: solid blue;
	padding-left: 10px;
}
</style>
-->

# nl-rigging-tools ( nlRT )  ![nlRT logo](nl_modules/nl_rigging_tools.bmp)  

![License](https://img.shields.io/badge/license-GPLv3-red.svg?style=plastic)
[![Blog](https://img.shields.io/badge/blog-nickyliu.com-blue)](http://www.nickyliu.com)

![nlRT Main](ui_images/nlRT_UI_Main.png) 
![nlRT Control](ui_images/nlRT_UI_Control.png) 
![nlRT Prepare](ui_images/nlRT_UI_Prepare.png) 

## Background
While working intensively on a project that involving Ziva muscle plugin, I had to rig the skeleton meshes first. This experience inspired me to create a tool that could automates the process, in addition to the cartoony features.

## Features

- **Modular**: Support multiple parts / limbs.
- **Skeletal Build**: Support skeleton models rigging.
- **Cartoony Build**: Support ribbons setup for cartoony control.
- **Data Reuse**: Restorable templates, controls, proxies, weights.
- **Custom Marking Menus**: Speed up rig build and general rigging tasks.
- **Custom Framework**: Less and more readable code in module development.

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
|Rig Building |Ctrl + MMB|![The Autorig](nl_modules/doc/marking_menu_autorig.png)|
|Daily Rigging Operations|Ctrl + Alt + MMB| ![General Rigging](nl_modules/doc/marking_menu_rigging.png)|



## Development Environment
| Maya | Python | OS |
|:-:|:-:|:-:|
|2023.3 |3.9.7|Win 11

## Installation

1. Download and extract to your target location.
2. Go to the shelf you want the tool icon to add.
3. Drag and drop "nl_rigging_tools_drag.py" into Maya.

The interface will show up with tool icon added into current shelf.



## Reference
1. [Python for Maya : Beginner to Advanced Rigging Automation by Nick Hughes](https://www.udemy.com/course/python-for-maya-beginner-to-advanced-rigging-automation)
2. [Ramon Arango's rigs](https://ramonarango.gumroad.com/)
2. [BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)
3. [Ivlpaleontology](https://sketchfab.com/ivlpaleontology)

##
For more details, visit my blog at [https://www.nickyliu.com](https://www.nickyliu.com)
