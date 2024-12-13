//Maya ASCII 2023 scene
//Name: quadSpineCrv.ma
//Last modified: Sun, Jun 02, 2024 04:38:28 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires -nodeType "ik2Bsolver" "ik2Bsolver" "2.5";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "FDA6700C-4856-4106-3C0F-57B1617992C5";
createNode transform -s -n "persp";
	rename -uid "83BBC351-4169-8A57-6147-3688C3C5E65F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 400.16057668305751 173.44779751568427 449.19776929095889 ;
	setAttr ".r" -type "double3" -9.338352729776366 44.999999999973731 1.1244958915982207e-15 ;
	setAttr -cb on ".ro";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E4BD1A20-4E99-1123-5E44-089307917010";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 700.68500677172631;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 140.1982482546384 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B021713E-478C-4217-ADD4-C5A536DC9A78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1973899600641 13.489732621071905 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "topShape" -p "top";
	rename -uid "B48BED17-42EA-5F39-909F-C5AA1181E33F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 934.29738996006415;
	setAttr ".ow" 93.62286356026199;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 65.9 13.489732621071905 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "EE7BD8DA-47E1-96DB-89F3-E7BCD3322950";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
	setAttr -cb on ".ro";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0CE4EFB7-4187-8068-C3A8-B9ABC66A394F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "73B9DBF3-4B33-2FCB-92B7-C5A2209E9101";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.2772318696489 16.963744374427009 -3.8261033002892439 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FD8DC672-464D-1831-AFFA-6DA62C07EBC9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.2772318696489;
	setAttr ".ow" 208.22547250869002;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 39.042520904541114 -28.840364456176761 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "module_grp";
	rename -uid "BBA29320-4AB7-0A24-468F-F1A8C499ED48";
	setAttr -cb on ".ro";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "177DBE6B-4E8E-B711-3C19-589C4E949A6A";
	addAttr -ci true -sn "__________" -ln "__________" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "jntNum" -ln "jntNum" -dv 3 -min 3 -at "long";
	setAttr ".t" -type "double3" 0 140 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on -k on ".__________";
	setAttr -cb on ".jntNum" 7;
createNode transform -n "st_guide_ofs" -p "master_guide";
	rename -uid "F0DCF307-4AFE-F9B7-4833-678378A04ECB";
	setAttr ".t" -type "double3" 0 0 50 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "st_guide" -p "st_guide_ofs";
	rename -uid "09FE2B51-4844-E3BF-0B9C-679ACF23FA5B";
createNode nurbsSurface -n "st_guideShape" -p "st_guide";
	rename -uid "5038D4CF-4813-95D3-1E48-BCAF97E38FCD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		0.15993343266909821 -0.80000000000000004 -0.15993343266909829
		0.22618002955752284 -0.80000000000000004 -8.9422198089347732e-17
		0.15993343266909821 -0.80000000000000004 0.15993343266909815
		3.8312006334682082e-17 -0.80000000000000004 0.22618002955752287
		-0.15993343266909821 -0.80000000000000004 0.15993343266909818
		-0.22618002955752298 -0.80000000000000004 2.5752994850813784e-19
		-0.15993343266909821 -0.80000000000000004 -0.15993343266909826
		-5.7430884433625879e-17 -0.80000000000000004 -0.22618002955752298
		0.15993343266909821 -0.80000000000000004 -0.15993343266909829
		0.22618002955752284 -0.80000000000000004 -8.9422198089347732e-17
		0.15993343266909821 -0.80000000000000004 0.15993343266909815
		0.49314398375247182 -0.62688929991297948 -0.49314398375247187
		0.69741091002544264 -0.62688929991297948 -3.8220826649571478e-17
		0.49314398375247176 -0.62688929991297948 0.49314398375247176
		-6.7152692817345114e-18 -0.62688929991297948 0.69741091002544287
		-0.49314398375247182 -0.62688929991297948 0.49314398375247176
		-0.69741091002544309 -0.62688929991297948 -1.1394944900488968e-17
		-0.49314398375247176 -0.62688929991297948 -0.49314398375247187
		-5.2236505548849408e-17 -0.62688929991297948 -0.69741091002544287
		0.49314398375247182 -0.62688929991297948 -0.49314398375247187
		0.69741091002544264 -0.62688929991297948 -3.8220826649571478e-17
		0.49314398375247176 -0.62688929991297948 0.49314398375247176
		0.69376195799323381 1.4110096967411615e-16 -0.69376195799323348
		0.98112757005254414 9.8620301612785453e-17 6.007673691100343e-17
		0.69376195799323348 5.6139633551454745e-17 0.6937619579932337
		-6.9291647336337382e-17 3.8543564701781999e-17 0.98112757005254447
		-0.6937619579932337 5.6139633551454757e-17 0.69376195799323348
		-0.98112757005254458 9.8620301612785453e-17 -2.1873254105973306e-17
		-0.69376195799323348 1.4110096967411617e-16 -0.6937619579932337
		-1.3642546491667792e-17 1.586970385237889e-16 -0.98112757005254447
		0.69376195799323381 1.4110096967411615e-16 -0.69376195799323348
		0.98112757005254414 9.8620301612785453e-17 6.007673691100343e-17
		0.69376195799323348 5.6139633551454745e-17 0.6937619579932337
		0.49314398375247193 0.62688929991297981 -0.4931439837524717
		0.69741091002544264 0.62688929991297981 1.2362903051488163e-16
		0.49314398375247165 0.62688929991297981 0.49314398375247198
		-9.1793328990372082e-17 0.62688929991297981 0.69741091002544287
		-0.49314398375247193 0.62688929991297981 0.49314398375247182
		-0.69741091002544309 0.62688929991297981 -1.9701207153310999e-17
		-0.49314398375247165 0.62688929991297981 -0.49314398375247187
		3.2841554159788168e-17 0.62688929991297981 -0.69741091002544287
		0.49314398375247193 0.62688929991297981 -0.4931439837524717
		0.69741091002544264 0.62688929991297981 1.2362903051488163e-16
		0.49314398375247165 0.62688929991297981 0.49314398375247198
		0.1599334326690981 0.80000000000000004 -0.15993343266909787
		0.22618002955752253 0.80000000000000004 1.1712126301221511e-16
		0.1599334326690979 0.80000000000000004 0.15993343266909812
		-7.0259710835092552e-17 0.80000000000000004 0.22618002955752267
		-0.15993343266909807 0.80000000000000004 0.15993343266909799
		-0.22618002955752267 0.80000000000000004 -1.0342443289478253e-17
		-0.1599334326690979 0.80000000000000004 -0.15993343266909801
		5.1140832736148774e-17 0.80000000000000004 -0.22618002955752256
		0.1599334326690981 0.80000000000000004 -0.15993343266909787
		0.22618002955752253 0.80000000000000004 1.1712126301221511e-16
		0.1599334326690979 0.80000000000000004 0.15993343266909812
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "group1" -p "st_guide";
	rename -uid "1C4BC305-4316-B8FA-8087-9DAE32DC6892";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 50 -140 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0.25 140.25 50.25 ;
	setAttr ".rpt" -type "double3" -50.5 0 -50 ;
	setAttr ".sp" -type "double3" 0.25 140.25 50.25 ;
createNode transform -n "cluster1Handle" -p "group1";
	rename -uid "2BA9C9AA-452B-46F7-FFE9-E0BDEAA6A8B3";
	setAttr ".rp" -type "double3" 0 140 50 ;
	setAttr ".sp" -type "double3" 0 140 50 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "321F5ACE-4B8B-CE54-9EF7-07B665681F2E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 140 50 ;
createNode transform -n "group2" -p "st_guide";
	rename -uid "6EAE809A-4003-19CB-90C1-A9B6A1093FAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 50 -140 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0.25 140.25 37.75 ;
	setAttr ".rpt" -type "double3" -38 0 -37.5 ;
	setAttr ".sp" -type "double3" 0.25 140.25 37.75 ;
createNode transform -n "cluster2Handle" -p "group2";
	rename -uid "A555C55E-473A-99C5-B44F-49850C2C3899";
	setAttr ".rp" -type "double3" 0 140 37.5 ;
	setAttr ".sp" -type "double3" 0 140 37.5 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "E1458F9B-4331-21E4-806F-019A117C5C38";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 140 37.5 ;
createNode transform -n "md_guide_ofs" -p "master_guide";
	rename -uid "DC2A7D33-4C13-4876-743E-4998B6CFFF5B";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "md_guide" -p "md_guide_ofs";
	rename -uid "67D57CBD-4024-CF3C-78B0-FFBE25AF9BD1";
createNode nurbsSurface -n "md_guideShape" -p "md_guide";
	rename -uid "1A6EDC5D-4BE0-1D13-7676-AFAD1CA0C67B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		0.15993343266909821 -0.80000000000000004 -0.15993343266909829
		0.22618002955752284 -0.80000000000000004 -8.9422198089347732e-17
		0.15993343266909821 -0.80000000000000004 0.15993343266909815
		3.8312006334682082e-17 -0.80000000000000004 0.22618002955752287
		-0.15993343266909821 -0.80000000000000004 0.15993343266909818
		-0.22618002955752298 -0.80000000000000004 2.5752994850813784e-19
		-0.15993343266909821 -0.80000000000000004 -0.15993343266909826
		-5.7430884433625879e-17 -0.80000000000000004 -0.22618002955752298
		0.15993343266909821 -0.80000000000000004 -0.15993343266909829
		0.22618002955752284 -0.80000000000000004 -8.9422198089347732e-17
		0.15993343266909821 -0.80000000000000004 0.15993343266909815
		0.49314398375247182 -0.62688929991297948 -0.49314398375247187
		0.69741091002544264 -0.62688929991297948 -3.8220826649571478e-17
		0.49314398375247176 -0.62688929991297948 0.49314398375247176
		-6.7152692817345114e-18 -0.62688929991297948 0.69741091002544287
		-0.49314398375247182 -0.62688929991297948 0.49314398375247176
		-0.69741091002544309 -0.62688929991297948 -1.1394944900488968e-17
		-0.49314398375247176 -0.62688929991297948 -0.49314398375247187
		-5.2236505548849408e-17 -0.62688929991297948 -0.69741091002544287
		0.49314398375247182 -0.62688929991297948 -0.49314398375247187
		0.69741091002544264 -0.62688929991297948 -3.8220826649571478e-17
		0.49314398375247176 -0.62688929991297948 0.49314398375247176
		0.69376195799323381 1.4110096967411615e-16 -0.69376195799323348
		0.98112757005254414 9.8620301612785453e-17 6.007673691100343e-17
		0.69376195799323348 5.6139633551454745e-17 0.6937619579932337
		-6.9291647336337382e-17 3.8543564701781999e-17 0.98112757005254447
		-0.6937619579932337 5.6139633551454757e-17 0.69376195799323348
		-0.98112757005254458 9.8620301612785453e-17 -2.1873254105973306e-17
		-0.69376195799323348 1.4110096967411617e-16 -0.6937619579932337
		-1.3642546491667792e-17 1.586970385237889e-16 -0.98112757005254447
		0.69376195799323381 1.4110096967411615e-16 -0.69376195799323348
		0.98112757005254414 9.8620301612785453e-17 6.007673691100343e-17
		0.69376195799323348 5.6139633551454745e-17 0.6937619579932337
		0.49314398375247193 0.62688929991297981 -0.4931439837524717
		0.69741091002544264 0.62688929991297981 1.2362903051488163e-16
		0.49314398375247165 0.62688929991297981 0.49314398375247198
		-9.1793328990372082e-17 0.62688929991297981 0.69741091002544287
		-0.49314398375247193 0.62688929991297981 0.49314398375247182
		-0.69741091002544309 0.62688929991297981 -1.9701207153310999e-17
		-0.49314398375247165 0.62688929991297981 -0.49314398375247187
		3.2841554159788168e-17 0.62688929991297981 -0.69741091002544287
		0.49314398375247193 0.62688929991297981 -0.4931439837524717
		0.69741091002544264 0.62688929991297981 1.2362903051488163e-16
		0.49314398375247165 0.62688929991297981 0.49314398375247198
		0.1599334326690981 0.80000000000000004 -0.15993343266909787
		0.22618002955752253 0.80000000000000004 1.1712126301221511e-16
		0.1599334326690979 0.80000000000000004 0.15993343266909812
		-7.0259710835092552e-17 0.80000000000000004 0.22618002955752267
		-0.15993343266909807 0.80000000000000004 0.15993343266909799
		-0.22618002955752267 0.80000000000000004 -1.0342443289478253e-17
		-0.1599334326690979 0.80000000000000004 -0.15993343266909801
		5.1140832736148774e-17 0.80000000000000004 -0.22618002955752256
		0.1599334326690981 0.80000000000000004 -0.15993343266909787
		0.22618002955752253 0.80000000000000004 1.1712126301221511e-16
		0.1599334326690979 0.80000000000000004 0.15993343266909812
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "group3" -p "md_guide";
	rename -uid "F21C50FA-471C-272A-8685-4191A6859BFC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -140 -5.4537835835963278e-14 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0.25000000000005751 140.25 12.75 ;
	setAttr ".rpt" -type "double3" -13.000000000000057 0 -12.499999999999943 ;
	setAttr ".sp" -type "double3" 0.25000000000005751 140.25 12.75 ;
createNode transform -n "cluster3Handle" -p "group3";
	rename -uid "0DBA1617-4DB5-9576-DF5E-8EA2EA96498B";
	setAttr ".rp" -type "double3" 5.7551132464172638e-14 140 12.5 ;
	setAttr ".sp" -type "double3" 5.7551132464172638e-14 140 12.5 ;
createNode clusterHandle -n "cluster3HandleShape" -p "cluster3Handle";
	rename -uid "F603ABE0-43D2-0691-A045-9C91748D77D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5.7551132464172638e-14 140 12.5 ;
createNode transform -n "group4" -p "md_guide";
	rename -uid "90EACA0E-4A39-E6DB-7AB2-79BF2FE7D074";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -140 -5.4537835835963278e-14 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0.25000000000005307 140.25 -12.25 ;
	setAttr ".rpt" -type "double3" 11.999999999999947 0 12.500000000000053 ;
	setAttr ".sp" -type "double3" 0.25000000000005307 140.25 -12.25 ;
createNode transform -n "cluster4Handle" -p "group4";
	rename -uid "423823C6-4774-A1A4-4CDE-EEA277BD5465";
	setAttr ".rp" -type "double3" 5.3087594728068932e-14 140 -12.5 ;
	setAttr ".sp" -type "double3" 5.3087594728068932e-14 140 -12.5 ;
createNode clusterHandle -n "cluster4HandleShape" -p "cluster4Handle";
	rename -uid "72144E7B-4DBD-B7A5-04A9-A291441C0B77";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5.3087594728068932e-14 140 -12.5 ;
createNode transform -n "ed_guide_ofs" -p "master_guide";
	rename -uid "4D3032FB-4663-78DC-57D6-38B48E6FDD7F";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 0 -50 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "ed_guide" -p "ed_guide_ofs";
	rename -uid "9889D14F-4DAD-1350-7B36-DE95035FF2E9";
createNode nurbsSurface -n "ed_guideShape" -p "ed_guide";
	rename -uid "17465DD6-4321-EF62-61D5-BB8C405146A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		7.677179745581559e-17 -0.80000000000000004 -2.0252946687752522e-16
		0.15993343266909821 -0.80000000000000004 -0.15993343266909829
		0.22618002955752284 -0.80000000000000004 -8.9422198089347732e-17
		0.15993343266909821 -0.80000000000000004 0.15993343266909815
		3.8312006334682082e-17 -0.80000000000000004 0.22618002955752287
		-0.15993343266909821 -0.80000000000000004 0.15993343266909818
		-0.22618002955752298 -0.80000000000000004 2.5752994850813784e-19
		-0.15993343266909821 -0.80000000000000004 -0.15993343266909826
		-5.7430884433625879e-17 -0.80000000000000004 -0.22618002955752298
		0.15993343266909821 -0.80000000000000004 -0.15993343266909829
		0.22618002955752284 -0.80000000000000004 -8.9422198089347732e-17
		0.15993343266909821 -0.80000000000000004 0.15993343266909815
		0.49314398375247182 -0.62688929991297948 -0.49314398375247187
		0.69741091002544264 -0.62688929991297948 -3.8220826649571478e-17
		0.49314398375247176 -0.62688929991297948 0.49314398375247176
		-6.7152692817345114e-18 -0.62688929991297948 0.69741091002544287
		-0.49314398375247182 -0.62688929991297948 0.49314398375247176
		-0.69741091002544309 -0.62688929991297948 -1.1394944900488968e-17
		-0.49314398375247176 -0.62688929991297948 -0.49314398375247187
		-5.2236505548849408e-17 -0.62688929991297948 -0.69741091002544287
		0.49314398375247182 -0.62688929991297948 -0.49314398375247187
		0.69741091002544264 -0.62688929991297948 -3.8220826649571478e-17
		0.49314398375247176 -0.62688929991297948 0.49314398375247176
		0.69376195799323381 1.4110096967411615e-16 -0.69376195799323348
		0.98112757005254414 9.8620301612785453e-17 6.007673691100343e-17
		0.69376195799323348 5.6139633551454745e-17 0.6937619579932337
		-6.9291647336337382e-17 3.8543564701781999e-17 0.98112757005254447
		-0.6937619579932337 5.6139633551454757e-17 0.69376195799323348
		-0.98112757005254458 9.8620301612785453e-17 -2.1873254105973306e-17
		-0.69376195799323348 1.4110096967411617e-16 -0.6937619579932337
		-1.3642546491667792e-17 1.586970385237889e-16 -0.98112757005254447
		0.69376195799323381 1.4110096967411615e-16 -0.69376195799323348
		0.98112757005254414 9.8620301612785453e-17 6.007673691100343e-17
		0.69376195799323348 5.6139633551454745e-17 0.6937619579932337
		0.49314398375247193 0.62688929991297981 -0.4931439837524717
		0.69741091002544264 0.62688929991297981 1.2362903051488163e-16
		0.49314398375247165 0.62688929991297981 0.49314398375247198
		-9.1793328990372082e-17 0.62688929991297981 0.69741091002544287
		-0.49314398375247193 0.62688929991297981 0.49314398375247182
		-0.69741091002544309 0.62688929991297981 -1.9701207153310999e-17
		-0.49314398375247165 0.62688929991297981 -0.49314398375247187
		3.2841554159788168e-17 0.62688929991297981 -0.69741091002544287
		0.49314398375247193 0.62688929991297981 -0.4931439837524717
		0.69741091002544264 0.62688929991297981 1.2362903051488163e-16
		0.49314398375247165 0.62688929991297981 0.49314398375247198
		0.1599334326690981 0.80000000000000004 -0.15993343266909787
		0.22618002955752253 0.80000000000000004 1.1712126301221511e-16
		0.1599334326690979 0.80000000000000004 0.15993343266909812
		-7.0259710835092552e-17 0.80000000000000004 0.22618002955752267
		-0.15993343266909807 0.80000000000000004 0.15993343266909799
		-0.22618002955752267 0.80000000000000004 -1.0342443289478253e-17
		-0.1599334326690979 0.80000000000000004 -0.15993343266909801
		5.1140832736148774e-17 0.80000000000000004 -0.22618002955752256
		0.1599334326690981 0.80000000000000004 -0.15993343266909787
		0.22618002955752253 0.80000000000000004 1.1712126301221511e-16
		0.1599334326690979 0.80000000000000004 0.15993343266909812
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		-6.9598693465453558e-17 0.80000000000000004 1.9535636288716322e-16
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "group5" -p "ed_guide";
	rename -uid "327557F6-4D61-4B90-607F-F7B90652AF6D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -50 -140 -5.4537835835963278e-14 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0.25000000000005451 140.25 -37.25 ;
	setAttr ".rpt" -type "double3" 36.999999999999943 0 37.500000000000057 ;
	setAttr ".sp" -type "double3" 0.25000000000005451 140.25 -37.25 ;
createNode transform -n "cluster5Handle" -p "group5";
	rename -uid "92760A77-411D-86A8-EEA6-3AA635601269";
	setAttr ".rp" -type "double3" 5.4537835835963278e-14 140 -37.5 ;
	setAttr ".sp" -type "double3" 5.4537835835963278e-14 140 -37.5 ;
createNode clusterHandle -n "cluster5HandleShape" -p "cluster5Handle";
	rename -uid "01A58494-4DF9-D54E-59A9-7DA053DACF2F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5.4537835835963278e-14 140 -37.5 ;
createNode transform -n "group6" -p "ed_guide";
	rename -uid "5C7CCB7A-4C17-2949-F51C-1F8A63DB25FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -50 -140 -5.4537835835963278e-14 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0.25000000000005451 140.25 -49.75 ;
	setAttr ".rpt" -type "double3" 49.499999999999943 0 50.000000000000057 ;
	setAttr ".sp" -type "double3" 0.25000000000005451 140.25 -49.75 ;
createNode transform -n "cluster6Handle" -p "group6";
	rename -uid "3FC566E5-4170-B815-7B2D-28B9EBA0BF7D";
	setAttr ".rp" -type "double3" 5.4537835835963278e-14 140 -50 ;
	setAttr ".sp" -type "double3" 5.4537835835963278e-14 140 -50 ;
createNode clusterHandle -n "cluster6HandleShape" -p "cluster6Handle";
	rename -uid "8AF19FCC-4C8F-D9D7-C035-B19B0AF81379";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 5.4537835835963278e-14 140 -50 ;
createNode nurbsCurve -n "master_guide_CRVShape1" -p "master_guide";
	rename -uid "F80BF05D-448B-22C9-DE31-ACACB42DB373";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-37.396785793489258 21.041256365830556 -1.7736073725770213e-15
		-2.3823618193303872e-15 22.551391669739807 -1.4587758882269119e-31
		37.396785793489258 21.041256365830552 1.7736073725770213e-15
		38.906921097398573 -16.355529427658723 2.3823618193303888e-15
		37.396785793489258 -53.752315221148073 1.7736073725770213e-15
		3.8973328959881643e-15 -55.262450525057275 2.3864281281417952e-31
		-37.396785793489258 -53.752315221148073 -1.7736073725770213e-15
		-38.906921097398573 -16.355529427658727 -2.3823618193303888e-15
		-37.396785793489258 21.041256365830556 -1.7736073725770213e-15
		-2.3823618193303872e-15 22.551391669739807 -1.4587758882269119e-31
		37.396785793489258 21.041256365830552 1.7736073725770213e-15
		;
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "120FBCEA-4270-A02D-E56D-EBB8AA8433C3";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "line_guide" -p "line_grp";
	rename -uid "57B1E972-4C72-08F5-F799-B69041585BF7";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 140 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_guideShape" -p "line_guide";
	rename -uid "762F95B7-4454-6C73-7201-B39BA59FE33D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".tw" yes;
	setAttr ".ls" 2;
createNode nurbsCurve -n "line_guideShape1Orig" -p "line_guide";
	rename -uid "764AA54B-4189-301B-D47B-A9A84D8F94A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 12 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[8].gtagnm" -type "string" "cluster3_1";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[9].gtagnm" -type "string" "cluster4_1";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[10].gtagnm" -type "string" "cluster5_1";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[11].gtagnm" -type "string" "cluster6_1";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".cc" -type "nurbsCurve" 
		2 4 0 no 3
		7 0 0 0.25 0.5 0.75 1 1
		6
		-5.4537835835963278e-14 0 50
		-5.453783583596329e-14 0 37.499999999999972
		3.0132965958785584e-15 0 12.499999999999865
		-1.4502410860348627e-15 0 -12.499999999999922
		0 0 -37.500000000000014
		0 0 -50
		

		"gtag" 12
		"cluster1" 1 "cv[0]"
		"cluster1_1" 1 "cv[0]"
		"cluster2" 1 "cv[1]"
		"cluster2_1" 1 "cv[1]"
		"cluster3" 1 "cv[2]"
		"cluster3_1" 1 "cv[2]"
		"cluster4" 1 "cv[3]"
		"cluster4_1" 1 "cv[3]"
		"cluster5" 1 "cv[4]"
		"cluster5_1" 1 "cv[4]"
		"cluster6" 1 "cv[5]"
		"cluster6_1" 1 "cv[5]";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "62B03719-4EC0-E5E3-3C6D-948E7BEBACB8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E9EFE55D-4370-5668-C455-3E9A19A67BBA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6122F672-47C2-7974-2F16-36823D6DFC6A";
createNode displayLayerManager -n "layerManager";
	rename -uid "56418FA6-4443-F19A-4A50-6296AF1B158E";
createNode displayLayer -n "defaultLayer";
	rename -uid "EDE7F8A1-4185-37A4-5FA7-49A7396409D6";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "21A672FD-42B5-0AA4-86D7-CF810BA1F0E8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D70BF562-46C4-2F8D-ABFE-179003332609";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4CA98D62-453C-1FB8-FC88-008CF921F276";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1298\n            -height 690\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.133333\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 3\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 3\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1298\n            -height 691\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1298\\n    -height 691\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1298\\n    -height 691\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "36612C2D-45FE-7AAC-D4BB-ECA588DB9A02";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 50 -ast 1 -aet 50 ";
	setAttr ".st" 6;
createNode script -n "RGN";
	rename -uid "AEFB69A2-4AA5-A528-BBC0-1F9753D63875";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -sn "setting" -ln "setting" -at "message";
	addAttr -s false -ci true -sn "anchorM1" -ln "anchorM1" -at "message";
	addAttr -s false -ci true -sn "anchorM2" -ln "anchorM2" -at "message";
	addAttr -s false -ci true -sn "st_ctl" -ln "st_ctl" -at "message";
	addAttr -s false -ci true -sn "md_ctl" -ln "md_ctl" -at "message";
	addAttr -s false -ci true -sn "ed_ctl" -ln "ed_ctl" -at "message";
	addAttr -s false -ci true -sn "cog_ctl" -ln "cog_ctl" -at "message";
	addAttr -s false -ci true -sn "rootJ" -ln "rootJ" -at "message";
	addAttr -s false -ci true -k true -sn "master_guide" -ln "master_guide" -at "message";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "QuadSpineCrv";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A727736B-43D8-1C1F-40DF-67BABAB92EB9";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "D8DAD8E9-4C72-695F-8767-96AFC6EC79CE";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "46E4A933-46F4-D470-763E-A0A656A68CB7";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "7CD0F12A-40E4-EF59-1AED-9A93E7ED23BC";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode cluster -n "cluster1";
	rename -uid "EE13D14B-497C-78D1-B752-D5BF89FA599D";
	setAttr ".ip[0].gtg" -type "string" "cluster1_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
createNode cluster -n "cluster2";
	rename -uid "0049808A-43A1-1DE7-24B5-7FBB45F2A56A";
	setAttr ".ip[0].gtg" -type "string" "cluster2_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
createNode cluster -n "cluster3";
	rename -uid "9D80AE77-4587-0231-D627-FA9C41E1888D";
	setAttr ".ip[0].gtg" -type "string" "cluster3_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
createNode cluster -n "cluster4";
	rename -uid "3FA7C01B-42B2-024F-FCCA-939B78717F5E";
	setAttr ".ip[0].gtg" -type "string" "cluster4_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
createNode cluster -n "cluster5";
	rename -uid "429D0F5A-4DB1-05DF-751F-B38C8B1EF62D";
	setAttr ".ip[0].gtg" -type "string" "cluster5_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
createNode cluster -n "cluster6";
	rename -uid "39342072-44CF-F5E2-1D90-5E9DD5809C7B";
	setAttr ".ip[0].gtg" -type "string" "cluster6_1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "37D0EF4F-491E-F1A4-1A86-87A86D74875D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 53891.070888120565 -23286.310035392416 ;
	setAttr ".tgi[0].vh" -type "double2" 103033.9291294062 22999.405284888227 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "6C39977F-4DEB-D0B5-F643-7DB07DDEE93E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -516.66664613617877 -276.19046521565321 ;
	setAttr ".tgi[0].vh" -type "double2" 517.85712227934971 276.19046521565321 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -91.428573608398438;
	setAttr ".tgi[0].ni[0].y" -31.428571701049805;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -91.428573608398438;
	setAttr ".tgi[0].ni[1].y" 98.571426391601562;
	setAttr ".tgi[0].ni[1].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rm";
	setAttr -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hom";
	setAttr -k on ".hodm";
	setAttr -k on ".xry";
	setAttr -k on ".jxr";
	setAttr -k on ".sslt";
	setAttr -k on ".cbr";
	setAttr -k on ".bbr";
	setAttr -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -k on ".mbcsx";
	setAttr -k on ".mbcsy";
	setAttr -k on ".mbasx";
	setAttr -k on ".mbasy";
	setAttr -k on ".blen";
	setAttr -k on ".blth";
	setAttr -k on ".blfr";
	setAttr -k on ".blfa";
	setAttr -k on ".blat";
	setAttr -av -k on ".msaa" yes;
	setAttr -av -k on ".aasc";
	setAttr -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -cb on ".macc";
	setAttr -av -cb on ".macd";
	setAttr -av -cb on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram" -type "string" "";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -cb on ".ope";
	setAttr -av -cb on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -k on ".hwcc";
	setAttr -av -k on ".hwdp";
	setAttr -av -k on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
select -ne :hyperGraphLayout;
	setAttr -k on ".nds";
	setAttr -s 3 ".hyp";
	setAttr ".hyp[83209].isc" yes;
	setAttr ".hyp[83212].isc" yes;
	setAttr ".hyp[83215].isc" yes;
connectAttr "cluster6.og[0]" "line_guideShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "line_guideShape1Orig.ws" "cluster1.ip[0].ig";
connectAttr "line_guideShape1Orig.l" "cluster1.orggeom[0]";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "cluster1.og[0]" "cluster2.ip[0].ig";
connectAttr "line_guideShape1Orig.l" "cluster2.orggeom[0]";
connectAttr "cluster2Handle.wm" "cluster2.ma";
connectAttr "cluster2HandleShape.x" "cluster2.x";
connectAttr "cluster2.og[0]" "cluster3.ip[0].ig";
connectAttr "line_guideShape1Orig.l" "cluster3.orggeom[0]";
connectAttr "cluster3Handle.wm" "cluster3.ma";
connectAttr "cluster3HandleShape.x" "cluster3.x";
connectAttr "cluster3.og[0]" "cluster4.ip[0].ig";
connectAttr "line_guideShape1Orig.l" "cluster4.orggeom[0]";
connectAttr "cluster4Handle.wm" "cluster4.ma";
connectAttr "cluster4HandleShape.x" "cluster4.x";
connectAttr "cluster4.og[0]" "cluster5.ip[0].ig";
connectAttr "line_guideShape1Orig.l" "cluster5.orggeom[0]";
connectAttr "cluster5Handle.wm" "cluster5.ma";
connectAttr "cluster5HandleShape.x" "cluster5.x";
connectAttr "cluster5.og[0]" "cluster6.ip[0].ig";
connectAttr "line_guideShape1Orig.l" "cluster6.orggeom[0]";
connectAttr "cluster6Handle.wm" "cluster6.ma";
connectAttr "cluster6HandleShape.x" "cluster6.x";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "st_guide_ofs.msg" ":hyperGraphLayout.hyp[83209].dn";
connectAttr "md_guide_ofs.msg" ":hyperGraphLayout.hyp[83212].dn";
connectAttr "module_grp.msg" ":hyperGraphLayout.hyp[83215].dn";
// End of quadSpineCrv.ma
