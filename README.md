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

# nl-rigging-tools ( nlRT )  ![nlRT logo](install/nl_rigging_tools.bmp)  

![License](https://img.shields.io/badge/license-GPLv3-red.svg?style=plastic)
[![Blog](https://img.shields.io/badge/blog-nickyliu.com-blue)](http://www.nickyliu.com)

![nlRT logo](ui_images/ui_main.png) 

## Background
Once in a while I used the Ziva muscle plugin intensively in a project. There was a challenging process of rigging the actual skeleton meshes. I feel that it would be a good opportunity to learn anatomy while building a helpful tool to rig any vertebral animal in the future.

## Features

- **Modular**: Supports characters with any number of parts.
- **Data Reuse**: Save and restore templates, controls, and proxies.
- **Auto Connect/Bind**: Components and skeletal meshes are automatically connected and bound.
- **Marking Menus**: Speed up rigging with custom marking menus.
- **Concise Python code**: For easy extension.

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
    RigModule --> LegBp
    RigModule --> SpineQd
    SpineQd --> NeckQd
    RigModule --> LegQd
    RigModule --> Tail
```

## Marking menus
Two Marking menus are made to speed up rigging work.
|Menu|Shortcut|Interface|
|:-:|:-:|:-:|
|Rig Building |Ctrl + MMB|![The Autorig](nl_modules/doc/marking_menu_autorig.png)|
|Daily Rigging Operations|Ctrl + Alt + MMB| ![General Rigging](nl_modules/doc/marking_menu_rigging.png)|



## Development Environment
| Maya | Python | OS |
|:-:|:-:|:-:|
|2023.3 |3.9.7|Win 11

The tool might work in 2022, but it is not tested.
## Installation

1. Download and extract repository
2. In Maya, go to the shelf you want to have the icon added
3. Drag and drop "install/dragAndDrop.py" onto viewport
4. Click the icon to show the tool


## Reference
1. [BoneClones](https://boneclones.com/category/all-zoology-skeletons/fields-of-study)

2. [Python for Maya : Beginner to Advanced Rigging Automation by Nick Hughes](https://www.udemy.com/course/python-for-maya-beginner-to-advanced-rigging-automation)

##
For more details, visit my blog [www.nickyliu.com](http://www.nickyliu.com)
