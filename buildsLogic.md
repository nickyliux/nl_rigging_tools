## Tail ( IK + FK )

ikj, fkj, ofj : IK, FK, offset joint  
ikc, fkc, ofc : IK, FK, offset control  

||1. Build IK|
|:-|:-|
||Add 5 ikjs on given crv|
||Add 5 ikcs (aligned to ikj) and as parent of ikj|
||Parent 2nd, 3rd ... ikcs under 1st
||Build rbSrf1 and bind to ikj|


||2. Build FK ( jnt num = 4 )|
|:-|:-|
||Add fkjs on given crv|
||Add fkcs (aligned to fkj), FK setup
||Add rivets|
||Add grps (aligned to fkc) in one hierarchy. Cst (mo) each by rivets to drive fkc's offset|


||3. Build Offset IK|
|:-|:-|
||Add ofc under each fkc|
||Add ofj under each ofc
||Build rbSrf2 and bind to ofj|
