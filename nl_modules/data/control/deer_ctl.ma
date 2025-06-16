//Maya ASCII 2023 scene
//Name: deer_ctl.ma
//Last modified: Thu, Jun 12, 2025 08:32:51 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "867CCF37-4E03-4817-62A4-DE9A1C1C990A";
createNode transform -n "CHR";
	rename -uid "6C72BAC6-4FF2-EEA1-1D6C-DB8143EF4604";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "B65999A7-455B-8FB9-2261-4E829FF745D5";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "5E260C2D-4B48-6BDB-1907-8C9B8E8BF112";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "083CB7E4-4DA4-C23F-9ECB-428A63F5C631";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "9900E98D-438A-8A40-89F0-238197BE2F87";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "B1489CD4-4218-244E-FEE7-90B10CED8A1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -55.79259291950126 0 44.06099279474801 
		-6.942169274202234e-14 0 62.311653581955859 55.79259291950126 0 44.06099279474801 
		78.902641586719852 0 -2.3844566347147292e-14 55.79259291950126 0 -44.060992794747982 
		-5.6686567797120748e-14 0 -62.311653581955945 -55.79259291950126 0 -44.060992794747982 
		-78.902641586719852 0 -3.5572231670357408e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "27050200-4757-99E2-9CA2-5B8F8711EF93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		85.926572246554656 5.8478402413395386e-15 -85.926572246554684
		7.4408635628460746e-15 8.2700949798935363e-15 -121.5185238393092
		-85.926572246554656 5.8478402413395386e-15 -85.926572246554656
		-121.51852383930932 3.1330950746859183e-30 -3.8764091365867483e-14
		-85.926572246554656 -5.8478402413395378e-15 85.926572246554571
		-1.217259364330755e-14 -8.2700949798935426e-15 121.5185238393093
		85.926572246554656 -5.8478402413395378e-15 85.926572246554571
		121.51852383930932 1.5765819581179917e-30 -1.5893111441004154e-14
		85.926572246554656 5.8478402413395386e-15 -85.926572246554684
		7.4408635628460746e-15 8.2700949798935363e-15 -121.5185238393092
		-85.926572246554656 5.8478402413395386e-15 -85.926572246554656
		

		"gtag" 1
		"cluster1" 1 "cv[0:7]";
createNode transform -n "head0_ctl_data" -p "master_ctl";
	rename -uid "D43D7D17-4C7B-EB86-A72F-C4B4F5F92125";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "BE2CA39E-476B-92E7-667D-64A43F179C31";
	setAttr ".t" -type "double3" 0 89.994554400744406 55.866980391155543 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "CAAE16BE-4FDD-5B3E-B279-8F98481E3963";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "969708D4-4DC6-5A3C-F570-6BACA89BE45A";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "52B22B32-4D79-1D2C-37F2-7BA0D2DF07B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8102013348503867 9.9318560881918643 -2.8102013348503903
		1.5559115614551221e-16 9.9318560881918643 -2.5409964122527526
		-2.8102013348503867 9.9318560881918643 -2.8102013348503903
		-2.5409964122527597 9.9318560881918643 0
		-2.8102013348503867 9.9318560881918643 2.8102013348503831
		-2.5453334848237929e-16 9.9318560881918643 2.5409964122527526
		2.8102013348503867 9.9318560881918643 2.8102013348503903
		2.5409964122527597 9.9318560881918643 0
		2.8102013348503867 9.9318560881918643 -2.8102013348503903
		1.5559115614551221e-16 9.9318560881918643 -2.5409964122527526
		-2.8102013348503867 9.9318560881918643 -2.8102013348503903
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "D4823966-4456-DD54-7906-DF95EA3B62B3";
	setAttr ".t" -type "double3" -5.0209008155148086e-14 -2.0352390678693979 -0.72897951288279472 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "E9018630-4081-52A5-C59F-B496A88ECE1B";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "9C3DCF17-4E81-8598-B2AB-1A862EBF6DA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.2543687592325368 -11.11150752063611 12.265514579746387
		5.0577390689345421e-14 -11.11150752063611 10.503297340335898
		-4.2543687592324355 -11.11150752063611 12.265514579746387
		-6.0165859986429275 -11.11150752063611 16.519883338978872
		-4.2543687592324355 -11.11150752063611 20.774252098211356
		4.9606295515678128e-14 -11.11150752063611 22.536469337621853
		4.2543687592325368 -11.11150752063611 20.774252098211356
		6.0165859986430288 -11.11150752063611 16.519883338978872
		4.2543687592325368 -11.11150752063611 12.265514579746387
		5.0577390689345421e-14 -11.11150752063611 10.503297340335898
		-4.2543687592324355 -11.11150752063611 12.265514579746387
		;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "58A32573-4180-2F22-0F47-CB977C10743F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "328AAB6A-418E-EDD7-3D1B-31A6234BD364";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.0718851891296097 4.0718851891296097 4.0718851891296097 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "E0DEBF70-4479-A025-F74D-8EB42DC5253E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "EF3CC434-4707-B12D-6CC5-75A0884B9324";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "7D4E10C2-4498-0FD8-0DE2-54A11044CD31";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.5007643496007057 130.56652835228391 91.087876868264843 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "3C57D5BE-413D-B2C2-0538-84BA8E08AF2C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003672 64.068928352023747 -14.163551514349912 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "997F11C3-4414-C57B-F727-C68F43246C37";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106737 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "EF601CA8-4B53-9ADE-1671-77899EEFFEF8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628197045 36.265191043615168 6.9366382381466769 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "F9BDC43B-44FB-4F25-0D11-B48F096DCC1A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777811 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "A92BA0FA-476F-BC32-2843-28B75B4D99A5";
	setAttr ".t" -type "double3" 5.5614311105863514 -6.995673373921818e-09 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 23.061720469442385 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "ADB8E7F5-4D3F-1A5D-F6A3-8791ABFB284D";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "7B559132-4BE5-E2EC-1FDC-6F8A6644CE8F";
	setAttr ".t" -type "double3" 5.5614311105863514 -6.9956715975649786e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.061720469442385 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "C8A9B488-4853-7C53-B5F4-63BDBCAF1C8C";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "1C453C20-432E-5AFD-F1E1-BB9FD0D20E4A";
	setAttr ".t" -type "double3" 5.5614311105863514 -6.9956698212081392e-09 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "D2C74B39-43AD-0000-EB33-808D801FB0DE";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 3.1805546814635168e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.4028326439010331e-13 -3.1805546814635161e-14 -2.5049759603897812e-15 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "73E116D4-4E79-A16C-9A7F-A2B4E32A5D2E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710670089 -2.3092638912203256e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779847 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "39BDD5DF-4C28-4FCE-EF1A-5C854AE60A36";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "9CAB2316-4429-B47A-D544-81A0B2B1943D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "DCFED6F3-4968-7A04-E80C-88AE475364F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "D3E0332D-4B73-6F9A-9059-DA95DC5F6165";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "2C08CFA2-4255-66C5-8706-F8A185A04F2E";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "56052D6C-47E8-ED91-91D6-878DA8CEF289";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "EA585088-4121-BD05-1FDF-88BF50B52A1E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "3F4AA317-40E6-0C54-525C-A9AED7BFB534";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_palm_fkcShape1" -p "lfLegQd0_palm_fkc";
	rename -uid "EF6F93D8-4CC6-83A5-7376-9FABA42E62A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "93CA6441-4310-7A5D-6B7F-5BA8E8BDC8BB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "91E93189-4190-367E-BED2-78A4BB325818";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "60779C8C-49C7-405D-5E26-59869A4A4612";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "0AA1F5EC-4EFB-203F-781F-9BB14FC26314";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" -145.26855765322219 -3.1805546814635176e-15 -90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "E11169C7-490B-9FE9-17EE-FBAE635C12A9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "90501572-4CAB-455C-0BB2-F789EAEAF655";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "0B308B5D-4F14-EB02-BC42-E4BC385DE0D6";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "FD9A165A-43CE-5123-CE33-86AACB9E1C20";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "75837BA5-4B6B-CF5D-3C29-6EA9C2B2158F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.6681922215284222 -14.173558686574538 -3.6681922215284266
		2.03095152519372e-16 -14.173558686574538 -3.3167955472675805
		-3.6681922215284222 -14.173558686574538 -3.6681922215284239
		-3.3167955472675903 -14.173558686574538 -1.28790271592385e-15
		-3.6681922215284222 -14.173558686574538 3.6681922215284222
		-3.3224567843013827e-16 -14.173558686574538 3.3167955472675841
		3.6681922215284222 -14.173558686574538 3.6681922215284239
		3.3167955472675903 -14.173558686574538 -6.6364921135737638e-16
		3.6681922215284222 -14.173558686574538 -3.6681922215284266
		2.03095152519372e-16 -14.173558686574538 -3.3167955472675805
		-3.6681922215284222 -14.173558686574538 -3.6681922215284239
		;
	setAttr ".adot" yes;
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "989548C9-4437-3D3A-EC0B-369E442B048D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 97.130792305316348 35.524862936853751 -1.5669053610114221 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "BA7A6BD7-46E2-9CDF-37CB-66BB3CF51A2C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 63.787737634212448 7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.5444437451708134e-14 -4.8205281890931419e-15 2.1369351766083017e-15 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "8858D633-4F47-82C8-2EF8-04A2481A0549";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "A0236A27-493D-23B1-C3D2-5E902116D661";
	setAttr ".t" -type "double3" 9.1257019482675599 8.3444269505183932 -34.108652544973296 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "68C01A33-4CA4-BB8C-555F-6EB791BCA72A";
	setAttr ".t" -type "double3" 5.842691663815458e-08 -4.5705573020473951 3.1685175512877244 ;
	setAttr ".r" -type "double3" 0 237.79316281622025 89.999999999999972 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "05E89BF8-4C14-B9A0-FC71-EBBF4E5035A9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "BF2C68CC-4FE3-3145-C6E0-4CAE3B18533B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "5D772D9D-4C68-121B-5F5E-7A8528465794";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.5289727335728997e-17 -3.6681922215284222 -3.6681922215284266
		1.0647575350556041e-16 -2.03095152519372e-16 -3.3167955472675805
		7.5289727335728948e-17 3.6681922215284222 -3.6681922215284239
		-4.3456230273589485e-32 3.3167955472675903 -1.28790271592385e-15
		-7.5289727335728972e-17 3.6681922215284222 3.6681922215284222
		-1.0647575350556052e-16 3.3224567843013827e-16 3.3167955472675841
		-7.5289727335728948e-17 -3.6681922215284222 3.6681922215284239
		-6.349601304885251e-32 -3.3167955472675903 -6.6364921135737638e-16
		7.5289727335728997e-17 -3.6681922215284222 -3.6681922215284266
		1.0647575350556041e-16 -2.03095152519372e-16 -3.3167955472675805
		7.5289727335728948e-17 3.6681922215284222 -3.6681922215284239
		;
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "4FAFB933-40DB-C813-7E0F-AE941D9B53BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710669911 -2.3447910280083306e-13 -3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8461295712475545 6.8035697908477369e-17 -0.53297724966496407 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "B7AE0679-4CBC-F514-8233-AC81537CDE03";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "5D6B3936-4BCE-110C-77E6-3EA0EF2AD4A4";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "C20C96B9-4EC4-56FD-D76B-B29F6D546BD7";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "5A5255AE-47FB-39D9-413A-4381A9E88F7C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.5007643496007057 130.56652835228391 91.087876868264843 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "D45DC4AF-41EC-319B-DAF0-B39535A4E2B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.524609981818497 -4.4408920985006262e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -7.749879348205734e-15 -6.9360898910140305e-06 1.6508658693477404e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003672 64.068928352023747 -14.163551514349912 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "439C1F3D-455A-1180-E269-E58D5921110F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.015521384923272 -1.2434497875801753e-14 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 2.0687047904514226e-20 1.4734575739974535e-05 -8.6077424834257698e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106737 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "3223EBB9-4009-F17C-9DC6-4885CB8B9CFE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.713213754348693 -2.4868995751603507e-14 3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -7.8597733579245165e-07 -6.9428385723512421e-06 1.2907654147416406e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628197045 36.265191043615168 6.9366382381466769 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "D05FF358-4F4D-8767-E940-59BB0AADB67A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.352122984722996 0.56954940883229632 0.19538001629759094 ;
	setAttr ".r" -type "double3" -2.7815841211101114e-07 3.4989265825975787e-16 -1.7854049500392621e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777811 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "C843BE2E-4AAC-FCD7-6EC8-6496472CB09F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.561431110586355 -6.9956680448512998e-09 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 1.0902076337183577e-07 -4.9994824665401031e-21 -4.756435810790042e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.061720469442356 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "AFDD68B7-4979-58DD-BCF8-12BB8D0369C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710670089 -2.3092638912203256e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779847 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "273F0FBF-4EE4-E96D-5DA8-C6AF359FE0AB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "8F22D18B-451E-CFE6-B032-0E9566EB5F76";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "19E7ED68-4710-64B9-5682-5C8D63A265FA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "B9B42E26-4EC1-D52E-CE8A-3AA60FF0CCF0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "52EFE8C5-4325-4916-4F96-36A53669BE96";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 12.5246099818185 -6.2172489379008766e-15 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -1.6447815427704538e-29 8.223907713852273e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 111.7779824902877 39.498109214033569 -5.0815358911596107 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "5EB7E720-4FBD-86F1-CD6F-6BAEA75D46CD";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 32.975856781005859 2.1316282072803006e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.5444437451708134e-14 -4.8205281890931419e-15 2.1369351766083017e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "0EEDBD00-4926-F084-781B-1AAB43E4763D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "983CDCF1-4A79-C02E-2278-DABDDD0316E8";
	setAttr ".t" -type "double3" 19.193384426812699 -25.803642726558994 15.581784412028018 ;
	setAttr ".r" -type "double3" 14.383126558787303 -57.892246045361922 79.141901062659329 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "C90F1B8B-4D96-F05E-895A-4386CE48C453";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "58BD6ED5-4CB8-784F-7CD7-44AD37B2B3B1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "83F5CF4F-4C55-26D6-7FF3-E9BA62EB8425";
	setAttr ".t" -type "double3" -0.56954940183653235 29.69655197345995 -2.5073573751738962 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "A3CBC427-457B-BA6C-CF44-1BAC4C83B9DE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "A9674B7A-471D-4A5D-D616-0C9B14FDF2CF";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.3304632803622167e-16 -5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "727AC215-4B01-ADA9-11B3-609C04F0AF5D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "57257E61-47EB-1AF3-F349-9AB9674C4AC8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "CA77CA84-4FC7-1034-9FBC-A9B39912F430";
	setAttr ".t" -type "double3" 2.1747055391654797 -3.5168412029400715e-16 2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "84C68C73-4FCA-203A-C919-A897A9DE42E9";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "71B1FDF0-4D54-E4C7-1992-759D05547327";
	setAttr ".t" -type "double3" -4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "2204F918-4AF0-6325-E912-AE8FF9098A41";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "06F64234-4962-E3A9-F32E-EDB93CACE003";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "C1C50A80-493D-6F30-0F72-A09FDA1045FF";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "D2B427DC-4639-86FD-D365-509071C4086D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		4.3892543532516837e-17 -6.3699596940529171 -3.8747123013316193e-16
		4.2396940074376572e-17 -6.3943848387697901 -0.18552656869947678
		3.8012057400906479e-17 -6.4659954341502788 -0.35840979645684462
		3.103671294053013e-17 -6.5799114074692673 -0.50686799213866318
		2.1946271766258418e-17 -6.7283695186700925 -0.62078402177831382
		1.1360225570634047e-17 -6.9012527745877916 -0.69239456083813999
		-1.3441023042355365e-32 -7.0867793432872679 -0.71681959291368924
		-1.1360225570634047e-17 -7.272305911986745 -0.69239456083813999
		-2.1946271766258418e-17 -7.4451891679044433 -0.62078402177831382
		-3.103671294053013e-17 -7.5936472791052694 -0.50686799213866318
		-3.8012057400906479e-17 -7.7075637029895541 -0.35840979645684462
		-4.2396940074376572e-17 -7.7791738478047456 -0.18552656869947678
		-4.3892543532516837e-17 -7.8035989925216196 -2.118143790022616e-16
		-4.2396940074376572e-17 -7.7791738478047456 0.18552656869947678
		-3.8012057400906479e-17 -7.7075637029895541 0.35840979645684462
		-3.103671294053013e-17 -7.5936472791052694 0.50686799213866318
		-2.1946271766258418e-17 -7.4451891679044433 0.62078402177831382
		-1.1360225570634047e-17 -7.272305911986745 0.69239456083813999
		3.2838978479220382e-32 -7.0867793432872679 0.71681959291368924
		1.1360225570634047e-17 -6.9012527745877916 0.69239456083813999
		2.1946271766258418e-17 -6.7283695186700925 0.62078402177831382
		3.103671294053013e-17 -6.5799114074692673 0.50686799213866318
		3.8012057400906479e-17 -6.4659954341502788 0.35840979645684462
		4.2396940074376572e-17 -6.3943848387697901 0.18552656869947678
		4.3892543532516837e-17 -6.3699596940529171 -3.8747123013316193e-16
		0 0 0
		;
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "F17D8E9E-498F-E36A-70D6-20B412151224";
	setAttr ".t" -type "double3" -6.9956680448512998e-09 -4.5705593402659233 3.1685175263687171 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "D1222AC5-440C-8424-BBCF-9DACF1494451";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -6.1566900637152369 0 92.242173262946551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "A7123A60-48AA-87DB-120C-6FB96A93CAEC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "5E812E6A-4F1D-17C5-67E1-AEB7170C58A2";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "179BA00F-4020-5E07-A0CB-0ABA1F24372C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		4.231019829012598 -7.0867793432872688 0
		3.928397345810033 -5.4595839545470337 0
		3.0066653212337755 -4.0801140220534933 0
		1.6271953887402353 -3.1583819974772358 0
		0 -2.8558587291844848 0
		-1.6271953887402353 -3.1583819974772358 0
		-3.0066653212337755 -4.0801140220534933 0
		-3.928397345810033 -5.4595839545470337 0
		-4.231019829012598 -7.0867795437498602 0
		-3.928397345810033 -8.7139747320275038 0
		-3.0066653212337755 -10.093444664521044 0
		-1.6271953887402353 -11.015176689097302 0
		1.6896185752834155e-07 -11.317699957390053 -0.0287694891343141
		1.6271953887402353 -11.015176689097302 0
		3.0066653212337755 -10.093444664521044 0
		3.928397345810033 -8.7139747320275038 0
		4.231019829012598 -7.0867793432872688 0
		3.9089512234865142 -7.0757694363981063 -1.6191051215228414
		2.9917830847616953 -7.0664355244597541 -2.9917178863923888
		1.6191419727750578 -7.0601988185346194 -3.9088661821352453
		1.6896185752834155e-07 -7.0580087202682709 -4.2309262835262027
		-1.6191419727750578 -7.0601988185346194 -3.9088661821352453
		-2.9917830847616953 -7.0664355244597541 -2.9917178863923888
		-3.9089512234865142 -7.0757694363981063 -1.6191051215228414
		-4.231019829012598 -7.0867795437498602 0
		-3.9089512234865142 -7.0977896470360706 1.6190994520994235
		-2.9917830847616953 -7.1071235589744228 2.9917150516806794
		-1.6191419727750578 -7.1133602648995575 3.9088605127118274
		1.6896185752834155e-07 -7.1155502497774377 4.230920614102784
		1.6191419727750578 -7.1133602648995575 3.9088605127118274
		2.9917830847616953 -7.1071235589744228 2.9917150516806794
		3.9089512234865142 -7.0977896470360706 1.6190994520994235
		4.231019829012598 -7.0867793432872688 0
		3.9089512234865142 -7.0757694363981063 -1.6191051215228414
		2.9917830847616953 -7.0664355244597541 -2.9917178863923888
		1.6191419727750578 -7.0601988185346194 -3.9088661821352453
		1.6896185752834155e-07 -7.0580087202682709 -4.2309262835262027
		1.6896185752834155e-07 -5.4410959647811454 -3.897853327145905
		1.6896185752834155e-07 -4.0747224003830365 -2.971373160457127
		1.6896185752834155e-07 -3.1669088102978105 -1.5925240298278502
		0 -2.8558587291844848 0
		1.6896185752834155e-07 -3.1889288508530722 1.6456833785061233
		1.6896185752834155e-07 -4.1154090175418512 3.0120541081925243
		1.6896185752834155e-07 -5.4942553134594183 3.9198705329894583
		1.6896185752834155e-07 -7.1155502497774377 4.230920614102784
		1.6896185752834155e-07 -8.732462721793393 3.8978476577224876
		1.6896185752834155e-07 -10.098836286191501 2.9713674910337091
		1.6896185752834155e-07 -11.006649876276727 1.5925183604044322
		1.6896185752834155e-07 -11.317699957390053 -0.0287694891343141
		1.6896185752834155e-07 -10.984629835721465 -1.6456890479295414
		1.6896185752834155e-07 -10.058149669032687 -3.0120597776159417
		1.6896185752834155e-07 -8.6793033731151183 -3.9198762024128766
		1.6896185752834155e-07 -7.0580087202682709 -4.2309262835262027
		;
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "1D6DE9C1-4F93-C786-5F75-43BC60C444FA";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "9CDCBB20-47B9-A5BC-F299-80A053F0A090";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "416C335A-44F9-DD87-CCAF-89922210A7B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.56954940883231409 -21.352122984723007 -0.19538001629761226 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "B30CC2DA-446F-C181-C95B-1AAB34AF0976";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "40FE9186-49FF-9AA1-A70F-5292201C164A";
	setAttr ".t" -type "double3" 0.56954940883231586 -21.352122984723 -0.19538001629761936 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "9F5813CD-4F1E-833F-A571-E6A37285D2B1";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "A385F3D0-4590-55FC-B7E8-74849F632F5C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "E72D43E0-4558-0A53-595B-12A6B3392DFB";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr ".r" -type "double3" 179.99999999999989 57.793162816220203 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "74BE6ABF-4973-2EC7-24A8-1BB505831820";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -3.5527136788005009e-15 3.3750779948604759e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 23.061720469442324 -7.675662847298718e-31 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.84612957124755406 -1.0946886862319545e-15 0.53297724966496507 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "37D5A432-49D3-C7A4-EC2C-E08CCDF688E4";
	setAttr ".t" -type "double3" 4.9737991503207013e-14 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -179.99999999999983 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "FC7DEA67-40D3-C4E9-C262-8E9D373952C3";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "1F7E6A16-4A87-87F9-3405-D1A7DEEB42C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode nurbsCurve -n "lfLegQd0_outRollG_ctlShape1" -p "lfLegQd0_outRollG_ctl";
	rename -uid "3D4C0C2E-468D-50F3-BCE5-138A3CEC18F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode nurbsCurve -n "lfLegQd0_toeRollG_ctlShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "1D57DA0B-41E9-0E3A-BC1F-3BB8C1686EFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode nurbsCurve -n "lfLegQd0_heelRollG_ctlShape1" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "C4E34364-44AF-2F20-A62C-209F3D347B8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_IK";
	rename -uid "579B5FC1-4B86-3C6B-E2E6-B491E1594664";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "CDFDF009-4B1A-EC1F-54D7-32BB47F5DC76";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.2407251945172391 43.873960154037356 -23.304201847280567
		11.666222281261758 38.371445997601924 -1.9846335679029341
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "5DE1D360-403C-8115-2E8F-AE8C1F334BF8";
	setAttr ".t" -type "double3" 9.1257019996988138 8.3444289887369507 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "687A0408-42FB-FDAF-B2BF-16B208CD8251";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "4EA7DD6C-4299-DCA3-9D35-AEBE07AD6767";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd0_ikcShape1" -p "lfLegQd0_ikc";
	rename -uid "E99C142F-4E92-CC17-3BBB-6C93757EA12F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.3150845074654463 -8.3444289887369489 5.3150845074654516
		5.212956649021363 -8.3444289887369489 6.3520060555698201
		4.9104977900151585 -8.3444289887369489 7.349079290092841
		4.4193312547775596 -8.3444289887369489 8.2679872457969079
		3.7583322978083786 -8.3444289887369489 9.073416805273828
		2.9529027383314554 -8.3444289887369489 9.7344157622430121
		2.0339947826273894 -8.3444289887369489 10.22558229748061
		1.0369215481043679 -8.3444289887369489 10.528041156486816
		-6.2050152136409241e-16 -8.3444289887369489 10.630169014930898
		-1.0369215481043692 -8.3444289887369489 10.528041156486816
		-2.0339947826273908 -8.3444289887369489 10.22558229748061
		-2.9529027383314572 -8.3444289887369489 9.7344157622430121
		-3.7583322978083809 -8.3444289887369489 9.0734168052738298
		-4.4193312547775623 -8.3444289887369489 8.2679872457969079
		-4.9104977900151621 -8.3444289887369489 7.349079290092841
		-5.2129566490213675 -8.3444289887369489 6.3520060555698192
		-5.3150845074654498 -8.3444289887369489 5.3150845074654498
		-5.2129566176750446 -6.7527694702479062 5.3150845074654507
		-4.9104977662799492 -5.2029319768480633 5.3150845074654507
		-4.4193313551929201 -3.8608674687568296 5.3150845074654507
		-3.7583322968480091 -2.7929627073443237 5.3150845074654507
		-2.9529026741659687 -1.9887953915100676 5.3150845074654507
		-2.0339947178693829 -1.4976289804230385 5.3150845074654507
		-1.036921525302694 -1.1951701290279431 5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375378 5.3150845074654507
		1.036921525302694 -1.1951701290279431 5.3150845074654507
		2.0339947178693829 -1.4976289804230385 5.3150845074654507
		2.9529026741659687 -1.9887953915100676 5.3150845074654507
		3.7583322968480091 -2.7929627073443237 5.3150845074654507
		4.4193313551929201 -3.8608674687568296 5.3150845074654507
		4.9104977662799492 -5.2029319768480633 5.3150845074654507
		5.2129566176750446 -6.7527694702479062 5.3150845074654507
		5.3150845074654507 -8.3444289887369489 5.3150845074654507
		5.3150845074654507 -8.3444289887369507 -4.9961794370175232
		5.3150845074654507 -8.0255239182890215 -5.3150845074654507
		5.2129566176750446 -6.7527694702479062 -5.3150845074654507
		4.9104977662799492 -5.2029319768480633 -5.3150845074654507
		4.4193313551929201 -3.8608674687568296 -5.3150845074654507
		3.7583322968480091 -2.7929627073443237 -5.3150845074654507
		2.9529026741659687 -1.9887953915100676 -5.3150845074654507
		2.0339947178693829 -1.4976289804230385 -5.3150845074654507
		1.036921525302694 -1.1951701290279431 -5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375378 -5.3150845074654507
		-1.036921525302694 -1.1951701290279431 -5.3150845074654507
		-2.0339947178693829 -1.4976289804230385 -5.3150845074654507
		-2.9529026741659687 -1.9887953915100676 -5.3150845074654507
		-3.7583322968480091 -2.7929627073443237 -5.3150845074654507
		-4.4193313551929201 -3.8608674687568296 -5.3150845074654507
		-4.9104977662799492 -5.2029319768480633 -5.3150845074654507
		-5.2129566176750446 -6.7527694702479062 -5.3150845074654507
		-5.3150845074654507 -8.0255239182890215 -5.3150845074654507
		-5.3150845074654507 -8.3444289887369489 -4.9961794370175232
		-5.3150845074654507 -8.3444289887369489 5.3150845074654507
		;
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "7CFC40F8-4511-B521-857D-9D82C245C32E";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShape" -p "lfLegQd0_ikc_gmb";
	rename -uid "C798E1A1-4F53-CD48-B6FC-61A5CB38E3F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0630169014930893 0.72513867069126725 
		-0.53150845575334404 -1.0425913298042726 0.72513867069126725 -0.73889276537421722 
		-0.98209955800303161 0.72513867069126725 -0.93830741227882175 -0.88386625095551175 
		0.72513867069126725 -1.1220890034196351 -0.75166645956167555 0.72513867069126725 
		-1.2831749153150191 -0.59058054766629109 0.72513867069126725 -1.4153747067088549 
		-0.40679895652547771 0.72513867069126725 -1.5136080137563752 -0.20738430962087351 
		0.72513867069126725 -1.5740997855576175 1.2410030427281848e-16 0.72513867069126725 
		-1.5945253572464324 0.20738430962087384 0.72513867069126725 -1.5740997855576175 0.40679895652547815 
		0.72513867069126725 -1.5136080137563752 0.59058054766629153 0.72513867069126725 -1.4153747067088549 
		0.75166645956167599 0.72513867069126725 -1.2831749153150191 0.88386625095551219 0.72513867069126725 
		-1.1220890034196351 0.98209955800303206 0.72513867069126725 -0.93830741227882175 
		1.0425913298042735 0.72513867069126725 -0.73889276537421722 1.0630169014930901 0.72513867069126725 
		-0.53150845575334404 1.0425913235350084 0.40680676699345941 -0.53150845575334404 
		0.98209955325598974 0.096839268313491544 -0.53150845575334404 0.88386627103858384 
		-0.17157363330475661 -0.53150845575334404 0.75166645936960164 -0.3851545855872569 
		-0.53150845575334404 0.59058053483319384 -0.54598804875410822 -0.53150845575334404 
		0.40679894357387658 -0.64422133097151413 -0.53150845575334404 0.20738430506053873 
		-0.70471310125053321 -0.53150845575334404 -6.5091012319135202e-17 -0.72513867920861408 
		-0.53150845575334404 -0.20738430506053873 -0.70471310125053321 -0.53150845575334404 
		-0.40679894357387658 -0.64422133097151413 -0.53150845575334404 -0.59058053483319384 
		-0.54598804875410822 -0.53150845575334404 -0.75166645936960164 -0.3851545855872569 
		-0.53150845575334404 -0.88386627103858384 -0.17157363330475661 -0.53150845575334404 
		-0.98209955325598974 0.096839268313491544 -0.53150845575334404 -1.0425913235350084 
		0.40680676699345941 -0.53150845575334404 -1.0630169014930901 0.72513867069126725 
		-0.53150845575334404 -1.0630169014930901 0.72513867069126725 1.5307443331432506 -1.0630169014930901 
		0.66135765660168211 1.5945253472328362 -1.0425913235350084 0.40680676699345941 1.5945253472328362 
		-0.98209955325598974 0.096839268313491544 1.5945253472328362 -0.88386627103858384 
		-0.17157363330475661 1.5945253472328362 -0.75166645936960164 -0.3851545855872569 
		1.5945253472328362 -0.59058053483319384 -0.54598804875410822 1.5945253472328362 -0.40679894357387658 
		-0.64422133097151413 1.5945253472328362 -0.20738430506053873 -0.70471310125053321 
		1.5945253472328362 -6.5091012319135202e-17 -0.72513867920861408 1.5945253472328362 
		0.20738430506053873 -0.70471310125053321 1.5945253472328362 0.40679894357387658 -0.64422133097151413 
		1.5945253472328362 0.59058053483319384 -0.54598804875410822 1.5945253472328362 0.75166645936960164 
		-0.3851545855872569 1.5945253472328362 0.88386627103858384 -0.17157363330475661 1.5945253472328362 
		0.98209955325598974 0.096839268313491544 1.5945253472328362 1.0425913235350084 0.40680676699345941 
		1.5945253472328362 1.0630169014930901 0.66135765660168211 1.5945253472328362 1.0630169014930901 
		0.72513867069126725 1.5307443331432506 1.0630169014930901 0.72513867069126725 -0.53150845575334404;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "DD78650D-4C98-CF46-7B70-E2A91240E438";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.3150845074654463 -8.3444289887369489 5.3150845074654516
		5.212956649021363 -8.3444289887369489 6.3520060555698201
		4.9104977900151585 -8.3444289887369489 7.349079290092841
		4.4193312547775596 -8.3444289887369489 8.2679872457969079
		3.7583322978083786 -8.3444289887369489 9.073416805273828
		2.9529027383314554 -8.3444289887369489 9.7344157622430121
		2.0339947826273894 -8.3444289887369489 10.22558229748061
		1.0369215481043679 -8.3444289887369489 10.528041156486816
		-6.2050152136409241e-16 -8.3444289887369489 10.630169014930898
		-1.0369215481043692 -8.3444289887369489 10.528041156486816
		-2.0339947826273908 -8.3444289887369489 10.22558229748061
		-2.9529027383314572 -8.3444289887369489 9.7344157622430121
		-3.7583322978083809 -8.3444289887369489 9.0734168052738298
		-4.4193312547775623 -8.3444289887369489 8.2679872457969079
		-4.9104977900151621 -8.3444289887369489 7.349079290092841
		-5.2129566490213675 -8.3444289887369489 6.3520060555698192
		-5.3150845074654498 -8.3444289887369489 5.3150845074654498
		-5.2129566176750446 -6.7527694702479062 5.3150845074654507
		-4.9104977662799492 -5.2029319768480633 5.3150845074654507
		-4.4193313551929201 -3.8608674687568296 5.3150845074654507
		-3.7583322968480091 -2.7929627073443237 5.3150845074654507
		-2.9529026741659687 -1.9887953915100676 5.3150845074654507
		-2.0339947178693829 -1.4976289804230385 5.3150845074654507
		-1.036921525302694 -1.1951701290279431 5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375378 5.3150845074654507
		1.036921525302694 -1.1951701290279431 5.3150845074654507
		2.0339947178693829 -1.4976289804230385 5.3150845074654507
		2.9529026741659687 -1.9887953915100676 5.3150845074654507
		3.7583322968480091 -2.7929627073443237 5.3150845074654507
		4.4193313551929201 -3.8608674687568296 5.3150845074654507
		4.9104977662799492 -5.2029319768480633 5.3150845074654507
		5.2129566176750446 -6.7527694702479062 5.3150845074654507
		5.3150845074654507 -8.3444289887369489 5.3150845074654507
		5.3150845074654507 -8.3444289887369507 -4.9961794370175232
		5.3150845074654507 -8.0255239182890215 -5.3150845074654507
		5.2129566176750446 -6.7527694702479062 -5.3150845074654507
		4.9104977662799492 -5.2029319768480633 -5.3150845074654507
		4.4193313551929201 -3.8608674687568296 -5.3150845074654507
		3.7583322968480091 -2.7929627073443237 -5.3150845074654507
		2.9529026741659687 -1.9887953915100676 -5.3150845074654507
		2.0339947178693829 -1.4976289804230385 -5.3150845074654507
		1.036921525302694 -1.1951701290279431 -5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375378 -5.3150845074654507
		-1.036921525302694 -1.1951701290279431 -5.3150845074654507
		-2.0339947178693829 -1.4976289804230385 -5.3150845074654507
		-2.9529026741659687 -1.9887953915100676 -5.3150845074654507
		-3.7583322968480091 -2.7929627073443237 -5.3150845074654507
		-4.4193313551929201 -3.8608674687568296 -5.3150845074654507
		-4.9104977662799492 -5.2029319768480633 -5.3150845074654507
		-5.2129566176750446 -6.7527694702479062 -5.3150845074654507
		-5.3150845074654507 -8.0255239182890215 -5.3150845074654507
		-5.3150845074654507 -8.3444289887369489 -4.9961794370175232
		-5.3150845074654507 -8.3444289887369489 5.3150845074654507
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd0_smart_ctl_ofs" -p "lfLegQd0_ikc_gmb";
	rename -uid "D83C08B1-4A26-39D9-9A94-E887DC543194";
	setAttr ".t" -type "double3" 6.9957817316890214e-09 -8.3444289887369507 7.8719529438819507 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "C172BE4C-4A71-6A37-71A4-DCB10A749210";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd0_smart_ctlShape1" -p "lfLegQd0_smart_ctl";
	rename -uid "925D21DA-4664-CE11-9DFE-8687D22ED0B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.4454614810189481 5.0193151557152658e-17 -2.4454614810189508
		1.3539676834624798e-16 7.0983835670373612e-17 -2.2111970315117202
		-2.4454614810189481 5.0193151557152628e-17 -2.4454614810189494
		-2.2111970315117269 -2.8970820182392988e-32 -8.5860181061589996e-16
		-2.4454614810189481 -5.0193151557152646e-17 2.4454614810189481
		-2.2149711895342549e-16 -7.0983835670373673e-17 2.2111970315117224
		2.4454614810189481 -5.0193151557152628e-17 2.4454614810189494
		2.2111970315117269 -4.233067536590167e-32 -4.4243280757158421e-16
		2.4454614810189481 5.0193151557152658e-17 -2.4454614810189508
		1.3539676834624798e-16 7.0983835670373612e-17 -2.2111970315117202
		-2.4454614810189481 5.0193151557152628e-17 -2.4454614810189494
		;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "AFA47045-4DE4-5861-A8FF-E588992EF6F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "56A21127-4BC4-2E64-E733-77B8E4611C38";
	setAttr ".t" -type "double3" 11.666222281261755 38.371445997601931 -1.9846335679029337 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.4905512516266395 6.7132861421476646e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "FB1EAF81-4EE0-CE61-699D-668D4699AEFD";
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "73A79454-4786-FD4E-11C8-FCA4B9E1FC42";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -8.8817841970012523e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd0_pvcShape1" -p "lfLegQd0_pvc";
	rename -uid "F74A1E26-47C3-D25E-0724-8DA96B3C4175";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.753977887463599
		-1.753977887463599 0 0
		0 0 -1.753977887463599
		1.753977887463599 0 0
		0 0 1.753977887463599
		0 1.753977887463599 0
		1.753977887463599 0 0
		0 0 -1.753977887463599
		0 1.753977887463599 0
		-1.753977887463599 0 0
		0 -1.753977887463599 0
		1.753977887463599 0 0
		0 0 1.753977887463599
		0 -1.753977887463599 0
		0 0 -1.753977887463599
		;
createNode transform -n "lfLegQd0_extraRollG_ofs_loc" -p "lfLegQd0_IK";
	rename -uid "2F2C2058-4B12-83CF-9F27-48851A3E4734";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -5.2132423233850362 -164.73094974363266 96.986244958291891 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "C9536B27-4AA5-4332-7DC0-9FAB75D06406";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "1EEEDE28-4D2B-07D0-9C03-6FAD97B39C3E";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_settingShape1" -p "lfLegQd0_setting";
	rename -uid "E12CF95E-4756-30D7-A1C4-4FAB0D27547E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.5433896716436344 3.5433896716436344 8.8212619401994775e-17
		-3.4753044117833634 3.5433896716436344 -0.69128101686846266
		-3.2736651775199666 3.5433896716436344 -1.3559965630605819
		-2.9462209034619469 3.5433896716436344 -1.9686017827773128
		-2.5055548645653394 3.5433896716436344 -2.5055548645653394
		-1.9686017827773128 3.5433896716436344 -2.9462209034619469
		-1.3559965630605819 3.5433896716436344 -3.2736651775199666
		-0.69128101686846266 3.5433896716436344 -3.4753044117833634
		2.1697004106378403e-16 3.5433896716436344 -3.5433896716436344
		0.69128101686846266 3.5433896716436344 -3.4753044117833634
		1.3559965630605819 3.5433896716436344 -3.2736651775199666
		1.9686017827773128 3.5433896716436344 -2.9462209034619469
		2.5055548645653394 3.5433896716436344 -2.5055548645653394
		2.9462209034619469 3.5433896716436344 -1.9686017827773128
		3.2736651775199666 3.5433896716436344 -1.3559965630605819
		3.4753044117833634 3.5433896716436344 -0.69128101686846266
		3.5433896716436344 3.5433896716436344 -3.8325906054427622e-16
		3.4085275935437864 3.5433896716436344 -0.67799823928979441
		3.0244722681044869 3.5433896716436344 -1.2527774322826697
		2.4496929906306186 3.5433896716436344 -1.6368325887599833
		1.7716948358218172 3.5433896716436344 -1.7716948358218172
		1.0936965965320227 3.5433896716436344 -1.6368325887599833
		0.5189174035391475 3.5433896716436344 -1.2527774322826697
		0.13486224706183375 3.5433896716436344 -0.67799823928979441
		0 3.5433896716436344 -3.8325906054427622e-16
		-0.13486224706183375 3.5433896716436344 0.67799823928979441
		-0.5189174035391475 3.5433896716436344 1.2527774322826697
		-1.0936965965320227 3.5433896716436344 1.6368325887599833
		-1.7716948358218172 3.5433896716436344 1.7716948358218172
		-2.4496929906306186 3.5433896716436344 1.6368325887599833
		-3.0244722681044869 3.5433896716436344 1.2527774322826697
		-3.4085275935437864 3.5433896716436344 0.67799823928979441
		-3.5433896716436344 3.5433896716436344 8.8212619401994775e-17
		-3.4753044117833634 3.5433896716436344 0.69128101686846266
		-3.2736651775199666 3.5433896716436344 1.3559965630605819
		-2.9462209034619469 3.5433896716436344 1.9686017827773128
		-2.5055548645653394 3.5433896716436344 2.5055548645653394
		-1.9686017827773128 3.5433896716436344 2.9462209034619469
		-1.3559965630605819 3.5433896716436344 3.2736651775199666
		-0.69128101686846266 3.5433896716436344 3.4753044117833634
		-4.1366768099767081e-16 3.5433896716436344 3.5433896716436344
		0.69128101686846266 3.5433896716436344 3.4753044117833634
		1.3559965630605819 3.5433896716436344 3.2736651775199666
		1.9686017827773128 3.5433896716436344 2.9462209034619469
		2.5055548645653394 3.5433896716436344 2.5055548645653394
		2.9462209034619469 3.5433896716436344 1.9686017827773128
		3.2736651775199666 3.5433896716436344 1.3559965630605819
		3.4753044117833634 3.5433896716436344 0.69128101686846266
		3.5433896716436344 3.5433896716436344 -3.8325906054427622e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "0F0CE6FD-4A92-6FFD-127B-D0A63CA2A14E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "2CF11EAB-41DF-6E9F-2281-67BCB333D3D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.630169014930903 10.630169014930903 10.630169014930903 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "BD25D89D-4B87-8272-5BBA-7B91CFD4B522";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "C6615E00-4A3F-1F8B-93C6-808F582A0CB4";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "2017BEB6-4BD1-3310-B0FA-34A0DDA3595F";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.87536779795647 -23.168291777141182 -84.51752292156516 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "678B4145-4970-B183-176D-9ABEBE419B41";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823374 -51.236978489001501 -2.4423350360291991 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "E8F5BB25-4BB1-85E9-81F4-66BB86DB1F73";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921282 0 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "11FA11B6-490A-0812-5108-62A32534860B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006481 3.6815551140188809 4.4718086105368675 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "5A00A717-408A-7157-B044-85BDD8FC1E69";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871289 0 ;
	setAttr ".radi" 1.3742356314627875;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "8309BA89-491A-D341-E3F6-F1985B0FB72C";
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973209448903617e-09 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 23.837977704564292 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "43A662DB-4016-B51D-C34E-D4ACFEB07A5C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "C09C9EFC-45D0-6D16-A53F-FEB6DFA9CA85";
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973218330687814e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.837977704564292 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "AB44178E-4A1D-4966-80ED-FAAB08783382";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000004 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "A4C49EE3-4531-736A-8AB4-84B2D5995909";
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973227212472011e-09 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "7A30C11F-4599-C93E-AEFD-2992F4118049";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 -9.5416640443905503e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.6772963379953202e-15 0 -8.532792004878502e-15 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "5AE2F32D-4993-5F9F-FA1F-DEA4B26182A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157402 -8.6153306710912148e-14 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 1.3742356314627875;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "48E76D5F-4D44-9A20-CE04-199887118CAE";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "8E7F46A6-4569-6010-A85B-8588085FBFE2";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "A6807BE2-4922-DBB4-B0F2-27AA7D4C6CAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		-8.4268321557924062e-32 6.4317772609213772 -2.4974416675703564e-15
		-1.4599837383942451e-16 7.1131895176811026 7.1131895176811026
		-2.0647288036813193e-16 6.4427552712038101e-16 6.4317772609213657
		-1.4599837383942446e-16 -7.1131895176811026 7.1131895176811062
		-1.2312854593139281e-31 -6.4317772609213772 -1.2869180044435257e-15
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		;
createNode transform -n "lfLegQd1_lwr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "01104AEA-461F-CBDE-25F9-7D8E173117CF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "719DEFE2-48B4-4426-5935-A0850C412284";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "C3A405DE-4A0B-2BC0-B78E-A68E57092FDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		-8.4268321557924062e-32 6.4317772609213772 -2.4974416675703564e-15
		-1.4599837383942451e-16 7.1131895176811026 7.1131895176811026
		-2.0647288036813193e-16 6.4427552712038101e-16 6.4317772609213657
		-1.4599837383942446e-16 -7.1131895176811026 7.1131895176811062
		-1.2312854593139281e-31 -6.4317772609213772 -1.2869180044435257e-15
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		;
createNode transform -n "lfLegQd1_palm_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "94ED3023-468A-742F-4620-0CB40ED6A193";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "8B03655D-4EFF-3ABE-29F1-E1B66A9081D2";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_palm_fkcShape1" -p "lfLegQd1_palm_fkc";
	rename -uid "04B3AFC7-45BC-796B-870E-1BA2C3CAFD29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		-8.4268321557924062e-32 6.4317772609213772 -2.4974416675703564e-15
		-1.4599837383942451e-16 7.1131895176811026 7.1131895176811026
		-2.0647288036813193e-16 6.4427552712038101e-16 6.4317772609213657
		-1.4599837383942446e-16 -7.1131895176811026 7.1131895176811062
		-1.2312854593139281e-31 -6.4317772609213772 -1.2869180044435257e-15
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		;
createNode transform -n "lfLegQd1_digit_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "27B86EE1-4162-8E99-D524-4299FF66CA4E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "548CEB09-4157-E041-6563-36B7FBA15A9A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "C2A2F03B-48AF-A4A7-2969-8A8BB43A1A8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		-8.4268321557924062e-32 6.4317772609213772 -2.4974416675703564e-15
		-1.4599837383942451e-16 7.1131895176811026 7.1131895176811026
		-2.0647288036813193e-16 6.4427552712038101e-16 6.4317772609213657
		-1.4599837383942446e-16 -7.1131895176811026 7.1131895176811062
		-1.2312854593139281e-31 -6.4317772609213772 -1.2869180044435257e-15
		1.4599837383942456e-16 -7.1131895176811026 -7.1131895176811115
		2.0647288036813173e-16 -3.9383277177080402e-16 -6.4317772609213595
		1.4599837383942446e-16 7.1131895176811026 -7.1131895176811062
		;
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "ECCF14BF-4F35-41EF-E000-B9AC22A3F8D3";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 1.5099033134902129e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" -144.75189473012873 0 -89.999999999999972 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "336BF35C-4704-FC3E-E8E8-AFB769A1C4B6";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "40FA9041-40F7-8657-0FF2-9882FC438BF2";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "CEFDF13A-4F9B-C178-E0B0-E58AA20418D2";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "8F07B1FD-4303-E0FC-62E0-388EBBA5134A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "9EF623C1-4196-C674-FF10-DCB17183D7E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5565947588405513 -13.742356314627875 -3.5565947588405558
		1.9691638588540201e-16 -13.742356314627875 -3.2158886304606797
		-3.5565947588405513 -13.742356314627875 -3.5565947588405531
		-3.2158886304606886 -13.742356314627875 -1.2487208337851782e-15
		-3.5565947588405513 -13.742356314627875 3.5565947588405513
		-3.221377635601905e-16 -13.742356314627875 3.2158886304606829
		3.5565947588405513 -13.742356314627875 3.5565947588405531
		3.2158886304606886 -13.742356314627875 -6.4345900222176283e-16
		3.5565947588405513 -13.742356314627875 -3.5565947588405558
		1.9691638588540201e-16 -13.742356314627875 -3.2158886304606797
		-3.5565947588405513 -13.742356314627875 -3.5565947588405531
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "64DBE671-49B5-47B9-C5C1-BABA1FC2A6E1";
	setAttr ".t" -type "double3" 14.756214514549193 -7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999944 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "6E437657-4BB6-670D-62EA-1AA702ACCDE1";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "5281DF39-41B4-289C-6391-C0BEAB6E54B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		-22.331329011270299 0 1.7177945393284846
		-22.331329011270299 0 -1.7177945393284841
		-24.049123550598782 0 -2.5766918089927264
		-25.766918089927266 0 -1.7177945393284846
		-25.766918089927266 0 1.7177945393284841
		-22.331329011270299 0 1.7177945393284846
		-25.766918089927266 0 1.7177945393284841
		-25.766918089927266 0 -1.7177945393284846
		-24.049123550598782 0 -2.5766918089927264
		-22.331329011270299 0 -1.7177945393284841
		;
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "1102F4F2-47D6-895C-AB70-45BD616215C3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 151.65839923224499 -23.487200375563834 4.8419983262060384 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "983540C0-42F7-BADA-1C92-958EB5AE46F4";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 62.626657879089962 3.3750779948604759e-14 -4.6185277824406512e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.180554681463512e-15 8.9453100416161419e-15 2.4549906447546519e-14 ;
	setAttr ".radi" 2.0613534471941812;
createNode ikEffector -n "effector12" -p "lfLegQd1_autoAim";
	rename -uid "2478AAA2-4C93-2FD3-9AD5-D98CFD903649";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "68019373-452A-C61A-2404-18BBFC3F13B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3948846218409017e-14 -3.5527136788005009e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 28.341600767756624 23.487200375563873 -175.15800167379396 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "243FF0B3-435E-530C-7BE5-75BCDD0EE10C";
	setAttr ".t" -type "double3" 7.1263478947244074 6.0415997888533681 24.078625196720964 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "C996D6D3-45A9-025B-F1CF-D78B2589E461";
	setAttr ".t" -type "double3" -4.9586899919518146e-08 -3.5695417512593233 2.5225249479652412 ;
	setAttr ".r" -type "double3" 180 -59.086082974435563 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "28BE5B20-4696-11E3-F5AF-B199D2C38EA8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "88F7135E-443E-BA01-EC71-B7B2E03C35F2";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "9288C2A4-427C-F929-3D15-C18E9FF00B75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.299918691971228e-17 -3.5565947588405513 -3.5565947588405558
		1.0323644018406587e-16 -1.9691638588540201e-16 -3.2158886304606797
		7.2999186919712231e-17 3.5565947588405513 -3.5565947588405531
		-4.2134160778962031e-32 3.2158886304606886 -1.2487208337851782e-15
		-7.2999186919712255e-17 3.5565947588405513 3.5565947588405513
		-1.0323644018406596e-16 3.221377635601905e-16 3.2158886304606829
		-7.2999186919712231e-17 -3.5565947588405513 3.5565947588405531
		-6.1564272965696403e-32 -3.2158886304606886 -6.4345900222176283e-16
		7.299918691971228e-17 -3.5565947588405513 -3.5565947588405558
		1.0323644018406587e-16 -1.9691638588540201e-16 -3.2158886304606797
		7.2999186919712231e-17 3.5565947588405513 -3.5565947588405531
		;
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "1EE21E2F-40D3-DBC9-4F80-FC96594DC9F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157402 -7.815970093361102e-14 4.0856207306205761e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.85794014231118809 0 -0.51374965908607506 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "BB1DD1B2-4AEA-EC7A-F2F5-0589C16BF49E";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "DA250093-49EC-7A7E-07F2-03A7EF8A6D20";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "15508DBC-4A49-AF44-A867-F8A5F397FCEE";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "939597D4-46A8-E474-BB19-4899E3128728";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.87536779795647 -23.168291777141182 -84.51752292156516 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "30DE3412-4EA1-8917-D286-0D9CAB612548";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.7562145145492 -5.3290705182007514e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 1.158915079027688e-06 7.5403246742405895e-06 3.3878432816563438e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823374 -51.236978489001501 -2.4423350360291991 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "C5382F57-4808-C946-7408-3A918660DF57";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.772275812575892 5.3290705182007514e-15 -1.865174681370263e-14 ;
	setAttr ".r" -type "double3" 1.5284423203648089e-20 -1.4863374272749017e-05 1.5475489181583205e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921282 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "2B42B433-4D27-56F9-3784-A79D44505F0F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.274225002917792 1.7763568394002505e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 6.0202789831925264e-07 -8.037355769044727e-06 -2.5909295468769335e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006481 3.6815551140188809 4.4718086105368675 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "8919DFB9-4F9A-914A-2F5C-FDA49D7BBAE5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.224783969347424 0.61320485644200851 -1.161853782397543 ;
	setAttr ".r" -type "double3" 3.8725388035120513e-07 -6.1995061474762746e-16 -2.0950782346221226e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871289 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "4951113D-410D-DDFD-1CB6-479C23326FCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973244976040405e-09 0 ;
	setAttr ".r" -type "double3" 1.7666960933588021e-07 -3.9050554250865767e-21 4.0258302742953933e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.837977704564306 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "8FED8DBA-45B5-FB03-3599-F495C2208C29";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157402 -8.6153306710912148e-14 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode ikEffector -n "effector10" -p "lfLegQd1_ball_ik";
	rename -uid "467EAF13-4935-2945-C273-988811670802";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector9" -p "lfLegQd1_digit_ik";
	rename -uid "F677D610-4703-AF2B-E8AE-8FAC7AE0BBE0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector8" -p "lfLegQd1_palm_ik";
	rename -uid "1A80E3D4-48E2-07FD-04B4-3DA845088EF6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "lfLegQd1_lwr_ik";
	rename -uid "C2138032-49B5-570D-5E3F-C9BBC2576E94";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "892CC8CA-4365-F546-F20C-00947021690A";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 14.756214514549178 -5.3290705182007514e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 88.416483961928279 -36.064431456154374 5.8669751135046573 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "174757E0-4D2B-BE9E-6D98-11B9D8CAEB2E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 32.719341278076172 -7.1054273576010019e-15 1.7763568394002505e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635176e-15 3.1805546814635168e-15 1.9133024255678971e-14 ;
createNode ikEffector -n "effector11" -p "lfLegQd1_softJ";
	rename -uid "8C672CE1-479F-094A-C5D8-4DA04553949F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "51599C7C-4D7B-F2C5-8E88-159ACAB72866";
	setAttr ".t" -type "double3" 20.717375276182722 21.027952737167926 7.8186631536682043 ;
	setAttr ".r" -type "double3" 2.4790503236885324 70.271185416397842 77.0995854971612 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "9DB0DB5A-4C27-B4D6-ACF3-5AB2D0A4AB41";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 1.5543122344752192e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "6BB42DAF-4F91-FA80-8504-28B4962A84C2";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "3ECE6AC4-4B09-4430-4D53-328B437B0F47";
	setAttr ".t" -type "double3" -0.61320484944456677 23.266382580114158 -2.7857744119883634 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "6C68DA06-46AE-4F39-1B5F-90A32F4FDEE6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "5E03F2EA-48B8-098F-CBF3-60B165ACF9C7";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.2380387133425221e-16 -5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "836EDD49-4B29-4EC9-5E5E-1DA60C86C26A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "5A0CC1A1-4B2E-79B5-C1C8-1789F4848920";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "6C1F1E27-4CA4-6B5A-BC3A-3AAD551C734D";
	setAttr ".t" -type "double3" 1.9186890794618412 -4.5924254968025838e-16 3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "D1690CA6-456D-89B8-27FB-BD8FC630BF90";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "C936FBB8-4C1A-9C1E-C935-E48713DC8702";
	setAttr ".t" -type "double3" -4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "48F6B0DA-4EBB-6CA7-AD02-9787A9693D50";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "957CB28B-48F7-BD73-FBA7-15881824385B";
	setAttr ".t" -type "double3" 2.4370394343444381 -2.4720580375940271 0.44514092909522773 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "62224C5C-4373-814F-17C2-6AB3CAB1D8B7";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "FC410B5A-4FB9-DA64-F314-6BB87277E75B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		4.2557200073578684e-17 -6.1761663221820955 -3.7568318753996551e-16
		4.1107097380130111e-17 -6.1998483803834397 -0.1798822913340388
		3.6855616052879372e-17 -6.2692803656302694 -0.34750589026231199
		3.0092482593492376e-17 -6.3797306717174784 -0.49144754020367665
		2.1278600036789342e-17 -6.5236722397480165 -0.6018979008981038
		1.1014613270982971e-17 -6.6912958659798987 -0.67132983153771542
		-1.3032106612443994e-32 -6.8711781573139374 -0.69501178052462398
		-1.1014613270982971e-17 -7.0510604486479762 -0.67132983153771542
		-2.1278600036789342e-17 -7.2186840748798584 -0.6018979008981038
		-3.0092482593492376e-17 -7.3626256429103965 -0.49144754020367665
		-3.6855616052879372e-17 -7.4730763858553475 -0.34750589026231199
		-4.1107097380130111e-17 -7.5425079342444352 -0.1798822913340388
		-4.2557200073578684e-17 -7.5661899924457794 -2.0537034722041289e-16
		-4.1107097380130111e-17 -7.5425079342444352 0.1798822913340388
		-3.6855616052879372e-17 -7.4730763858553475 0.34750589026231199
		-3.0092482593492376e-17 -7.3626256429103965 0.49144754020367665
		-2.1278600036789342e-17 -7.2186840748798584 0.6018979008981038
		-1.1014613270982971e-17 -7.0510604486479762 0.67132983153771542
		3.1839917782773126e-32 -6.8711781573139374 0.69501178052462398
		1.1014613270982971e-17 -6.6912958659798987 0.67132983153771542
		2.1278600036789342e-17 -6.5236722397480165 0.6018979008981038
		3.0092482593492376e-17 -6.3797306717174784 0.49144754020367665
		3.6855616052879372e-17 -6.2692803656302694 0.34750589026231199
		4.1107097380130111e-17 -6.1998483803834397 0.1798822913340388
		4.2557200073578684e-17 -6.1761663221820955 -3.7568318753996551e-16
		0 0 0
		;
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "6D58CF1D-4407-3AD1-A3E8-83A9D9FE5413";
	setAttr ".t" -type "double3" -6.9973227212472011e-09 -3.5695405731727106 2.5225248666003779 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "DC7C58AB-40C7-3FCA-B6C4-23B29A145B32";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -7.1286013757820026 0 89.250778809129059 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "1214E34E-4BF0-1F18-9732-7996D8D7D960";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "ACD2EE93-4AEB-0CDD-8D30-4CA129065549";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "BDB363DA-481E-D78B-E380-0CAFBAF64998";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		4.1022994542381443 -6.8711781573139374 0
		3.80888365902742 -5.2934869563899962 0
		2.9151935005827045 -3.9559846567312329 0
		1.5776912009239408 -3.0622944982865175 0
		0 -2.7689748995690335 0
		-1.5776912009239408 -3.0622944982865175 0
		-2.9151935005827045 -3.9559846567312329 0
		-3.80888365902742 -5.2934869563899962 0
		-4.1022994542381443 -6.8711783516778526 0
		-3.80888365902742 -8.4488693582378787 0
		-2.9151935005827045 -9.7863716578966411 0
		-1.5776912009239408 -10.680061816341357 0
		1.6382152859995844e-07 -10.973381415058842 -0.027894234568489312
		1.5776912009239408 -10.680061816341357 0
		2.9151935005827045 -9.7863716578966411 0
		3.80888365902742 -8.4488693582378787 0
		4.1022994542381443 -6.8711781573139374 0
		3.7900291463522962 -6.8605032049743349 -1.5698470640179927
		2.900764026596641 -6.8514532587679735 -2.9007008117582256
		1.5698827941440534 -6.8454062922334558 -3.7899466922152332
		1.6382152859995844e-07 -6.8432828233569536 -4.1022087546873758
		-1.5698827941440534 -6.8454062922334558 -3.7899466922152332
		-2.900764026596641 -6.8514532587679735 -2.9007008117582256
		-3.7900291463522962 -6.8605032049743349 -1.5698470640179927
		-4.1022994542381443 -6.8711783516778526 0
		-3.7900291463522962 -6.8818534944395129 1.5698415670755219
		-2.900764026596641 -6.8909034406458742 2.9006980632869896
		-1.5698827941440534 -6.896950407180392 3.7899411952727622
		1.6382152859995844e-07 -6.8990737661180441 4.1022032577449039
		1.5698827941440534 -6.896950407180392 3.7899411952727622
		2.900764026596641 -6.8909034406458742 2.9006980632869896
		3.7900291463522962 -6.8818534944395129 1.5698415670755219
		4.1022994542381443 -6.8711781573139374 0
		3.7900291463522962 -6.8605032049743349 -1.5698470640179927
		2.900764026596641 -6.8514532587679735 -2.9007008117582256
		1.5698827941440534 -6.8454062922334558 -3.7899466922152332
		1.6382152859995844e-07 -6.8432828233569536 -4.1022087546873758
		1.6382152859995844e-07 -5.2755614269924509 -3.7792688814655446
		1.6382152859995844e-07 -3.950757064441424 -2.8809750337014663
		1.6382152859995844e-07 -3.0705618997627231 -1.5440746492432638
		0 -2.7689748995690335 0
		1.6382152859995844e-07 -3.0919120243196279 1.5956167303214863
		1.6382152859995844e-07 -3.990205872083707 2.9204183444012788
		1.6382152859995844e-07 -5.3271035080706737 3.8006162575512143
		1.6382152859995844e-07 -6.8990737661180441 4.1022032577449039
		1.6382152859995844e-07 -8.4667948876354231 3.7792633845230741
		1.6382152859995844e-07 -9.7915992501864508 2.8809695367589954
		1.6382152859995844e-07 -10.671794414865152 1.5440691523007928
		1.6382152859995844e-07 -10.973381415058842 -0.027894234568489312
		1.6382152859995844e-07 -10.650444290308247 -1.5956222272639573
		1.6382152859995844e-07 -9.752150442544167 -2.9204238413437489
		1.6382152859995844e-07 -8.4152528065572021 -3.8006217544936853
		1.6382152859995844e-07 -6.8432828233569536 -4.1022087546873758
		;
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "74C14096-4AB6-7AB0-CAA3-82ACCB62702E";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "8466BE1C-46B7-22FD-C79D-2EB8CD0A6486";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "F868AB9A-4D25-08FF-037E-7093405FAB41";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.61320485644202094 -17.224783969347406 1.1618537823975217 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "BCA89BA0-4100-5821-C00A-498650131CAD";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "EF5F71CE-4150-B0A0-CBC7-A1B1FC0AE6B3";
	setAttr ".t" -type "double3" 0.61320485644202094 -17.224783969347413 1.1618537823975217 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "443ACEDA-4B8E-E135-4960-35A9375D85C6";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "E60EB8F8-4722-15F5-C1AC-71B44C853840";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "4F18223E-4E3C-DFFF-4BFA-1795120D33AB";
	setAttr ".t" -type "double3" 2.4370394343444381 -2.4720580375940271 0.44514092909522773 ;
	setAttr ".r" -type "double3" 180 59.086082974435577 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "973F4DDC-445F-BE3A-8B64-2683E1FFD1BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7763568394002505e-14 1.0658141036401503e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -180 23.83797770456432 -1.9302262979678899e-31 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8579401423111882 -9.46873702565296e-17 0.51374965908607484 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "563BCBE1-4D62-9CEA-9366-BE92A5096F90";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.5987211554602254e-14 3.0198066269804258e-14 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "0C7DB04C-4066-4CBB-C5B1-9BAC138D3560";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "98D60253-4404-7B0E-4A69-5195ECD801D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4251541484837999
		-0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0 0.4251541484837999 0
		-0.4251541484837999 0 0
		0 -0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 -0.4251541484837999 0
		0 0 -0.4251541484837999
		;
createNode nurbsCurve -n "lfLegQd1_outRollG_ctlShape1" -p "lfLegQd1_outRollG_ctl";
	rename -uid "FD9D41FD-461E-1324-40B2-0FBA8FBCD809";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4251541484837999
		-0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0 0.4251541484837999 0
		-0.4251541484837999 0 0
		0 -0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 -0.4251541484837999 0
		0 0 -0.4251541484837999
		;
createNode nurbsCurve -n "lfLegQd1_toeRollG_ctlShape1" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "5EBABF12-42D1-6732-7F22-1F942AD169EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4251541484837999
		-0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0 0.4251541484837999 0
		-0.4251541484837999 0 0
		0 -0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 -0.4251541484837999 0
		0 0 -0.4251541484837999
		;
createNode nurbsCurve -n "lfLegQd1_heelRollG_ctlShape1" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "B1D15116-4190-A641-6989-38A1C2EB4825";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4251541484837999
		-0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 -0.4251541484837999
		0 0.4251541484837999 0
		-0.4251541484837999 0 0
		0 -0.4251541484837999 0
		0.4251541484837999 0 0
		0 0 0.4251541484837999
		0 -0.4251541484837999 0
		0 0 -0.4251541484837999
		;
createNode transform -n "lfLegQd1_line_30" -p "lfLegQd1_IK";
	rename -uid "CFFB8071-4711-526E-2D6C-D7ACE419734A";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "FABA46CE-4F09-8C9D-6858-EFBB40F53297";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.3768969185714734 40.452483146895972 22.320163433004694
		15.474895217990845 39.66006302209076 5.0627737695144486
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "897084D1-4841-2DFF-84C4-34BD59BFDA9F";
	setAttr ".t" -type "double3" 7.126347838140167 6.0415986107667372 24.078625278085806 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "8F2E8492-4C20-1684-CC3A-9EBB7C1A292D";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "8B6327DB-4A21-5103-5619-B9A2EE15593B";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "legLock" -ln "legLock" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "legLockLen" -ln "legLockLen" -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".legLock";
	setAttr -k on ".legLockLen";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_ikcShape1" -p "lfLegQd1_ikc";
	rename -uid "82A12036-4590-6D98-F349-57B70B3729F6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.1533836179854484 -6.0415986107667363 5.1533836179854537
		5.0543627967912723 -6.0415986107667363 6.1587588874908752
		4.7611056478357199 -6.0415986107667363 7.1254981492101503
		4.2848818788926488 -6.0415986107667363 8.0164501554690304
		3.6439925023331758 -6.0415986107667363 8.7973761203186278
		2.8630665374835762 -6.0415986107667363 9.4382654968781043
		1.9721145312246957 -6.0415986107667363 9.9144892658211727
		1.0053752695054208 -6.0415986107667363 10.207746414776729
		-6.0162399499789145e-16 -6.0415986107667363 10.306767235970902
		-1.0053752695054221 -6.0415986107667363 10.207746414776729
		-1.9721145312246973 -6.0415986107667363 9.9144892658211727
		-2.8630665374835784 -6.0415986107667363 9.4382654968781043
		-3.6439925023331781 -6.0415986107667363 8.7973761203186296
		-4.2848818788926515 -6.0415986107667363 8.0164501554690322
		-4.7611056478357225 -6.0415986107667363 7.1254981492101503
		-5.0543627967912759 -6.0415986107667363 6.1587588874908743
		-5.153383617985452 -6.0415986107667363 5.153383617985452
		-5.0543627663986035 -4.4983621718218636 5.1533836179854529
		-4.7611056248226067 -2.9956754059184885 5.1533836179854529
		-4.2848819762530717 -1.6944405449181099 5.1533836179854529
		-3.6439925014020234 -0.65902466483153255 5.1533836179854529
		-2.8630664752701973 0.12067745763119753 5.1533836179854529
		-1.9721144684368233 0.59690110620073256 5.1533836179854529
		-1.0053752473974427 0.89015824777672847 5.1533836179854529
		3.1555373775559965e-16 0.98917909936357784 5.1533836179854529
		1.0053752473974427 0.89015824777672847 5.1533836179854529
		1.9721144684368233 0.59690110620073256 5.1533836179854529
		2.8630664752701973 0.12067745763119753 5.1533836179854529
		3.6439925014020234 -0.65902466483153255 5.1533836179854529
		4.2848819762530717 -1.6944405449181099 5.1533836179854529
		4.7611056248226067 -2.9956754059184885 5.1533836179854529
		5.0543627663986035 -4.4983621718218636 5.1533836179854529
		5.1533836179854529 -6.0415986107667363 5.1533836179854529
		5.1533836179854529 -6.0415986107667372 -4.8441806009063253
		5.1533836179854529 -5.7323955936876088 -5.1533836179854529
		5.0543627663986035 -4.4983621718218636 -5.1533836179854529
		4.7611056248226067 -2.9956754059184885 -5.1533836179854529
		4.2848819762530717 -1.6944405449181099 -5.1533836179854529
		3.6439925014020234 -0.65902466483153255 -5.1533836179854529
		2.8630664752701973 0.12067745763119753 -5.1533836179854529
		1.9721144684368233 0.59690110620073256 -5.1533836179854529
		1.0053752473974427 0.89015824777672847 -5.1533836179854529
		3.1555373775559965e-16 0.98917909936357784 -5.1533836179854529
		-1.0053752473974427 0.89015824777672847 -5.1533836179854529
		-1.9721144684368233 0.59690110620073256 -5.1533836179854529
		-2.8630664752701973 0.12067745763119753 -5.1533836179854529
		-3.6439925014020234 -0.65902466483153255 -5.1533836179854529
		-4.2848819762530717 -1.6944405449181099 -5.1533836179854529
		-4.7611056248226067 -2.9956754059184885 -5.1533836179854529
		-5.0543627663986035 -4.4983621718218636 -5.1533836179854529
		-5.1533836179854529 -5.7323955936876088 -5.1533836179854529
		-5.1533836179854529 -6.0415986107667354 -4.8441806009063253
		-5.1533836179854529 -6.0415986107667363 5.1533836179854529
		;
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "7B05EF9B-448E-96BF-F435-6B846642863B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShape" -p "lfLegQd1_ikc_gmb";
	rename -uid "C6E07015-4D40-3BA6-A571-48A9498F2AC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0306767235970895 0.7030777499453249 
		-0.51533835041288523 -1.0108725593582539 0.7030777499453249 -0.71641340431396916 
		-0.95222112956714389 0.7030777499453249 -0.90976125665782526 -0.85697637577852959 
		0.7030777499453249 -1.0879516579096009 -0.72879850046663508 0.7030777499453249 -1.2441368508795208 
		-0.57261330749671524 0.7030777499453249 -1.3723147261914157 -0.39442290624493936 
		0.7030777499453249 -1.4675594799800287 -0.20107505390108438 0.7030777499453249 -1.5262109097711409 
		-5.7310884940446698e-17 0.7030777499453249 -1.5460150740099756 0.20107505390108416 
		0.7030777499453249 -1.5262109097711409 0.39442290624493914 0.7030777499453249 -1.4675594799800287 
		0.57261330749671568 0.7030777499453249 -1.3723147261914157 0.72879850046663552 0.7030777499453249 
		-1.2441368508795208 0.85697637577853003 0.7030777499453249 -1.0879516579096009 0.95222112956714433 
		0.7030777499453249 -0.90976125665782526 1.0108725593582548 0.7030777499453249 -0.71641340431397005 
		1.0306767235970904 0.7030777499453249 -0.51533835041288523 1.0108725532797207 0.39443046215635036 
		-0.51533835041288611 0.95222112496452116 0.093893108975674711 -0.51533835041288611 
		0.85697639525061398 -0.16635386322440082 -0.51533835041288611 0.72879850028040449 
		-0.37343703924171634 -0.51533835041288611 0.57261329505403946 -0.52937746373426231 
		-0.51533835041288611 0.39442289368736438 -0.62462219344816927 -0.51533835041288611 
		0.20107504947948829 -0.68327362176336848 -0.51533835041288611 -2.4074643149114494e-16 
		-0.70307779208073828 -0.51533835041288611 -0.20107504947948873 -0.68327362176336848 
		-0.51533835041288611 -0.39442289368736483 -0.62462219344816927 -0.51533835041288611 
		-0.57261329505403946 -0.52937746373426231 -0.51533835041288611 -0.72879850028040449 
		-0.37343703924171634 -0.51533835041288611 -0.85697639525061398 -0.16635386322440082 
		-0.51533835041288611 -0.95222112496452116 0.093893108975674711 -0.51533835041288611 
		-1.0108725532797207 0.39443046215635036 -0.51533835041288611 -1.0306767235970904 
		0.7030777499453249 -0.51533835041288611 -1.0306767235970904 0.70307774994532402 1.4841744933654697 
		-1.0306767235970904 0.64123714652949904 1.5460150967812951 -1.0108725532797207 0.39443046215635036 
		1.5460150967812951 -0.95222112496452116 0.093893108975674711 1.5460150967812951 -0.85697639525061398 
		-0.16635386322440082 1.5460150967812951 -0.72879850028040449 -0.37343703924171634 
		1.5460150967812951 -0.57261329505403946 -0.52937746373426231 1.5460150967812951 -0.39442289368736483 
		-0.62462219344816927 1.5460150967812951 -0.20107504947948873 -0.68327362176336848 
		1.5460150967812951 -2.4074643149114494e-16 -0.70307779208073828 1.5460150967812951 
		0.20107504947948829 -0.68327362176336848 1.5460150967812951 0.39442289368736438 -0.62462219344816927 
		1.5460150967812951 0.57261329505403946 -0.52937746373426231 1.5460150967812951 0.72879850028040449 
		-0.37343703924171634 1.5460150967812951 0.85697639525061398 -0.16635386322440082 
		1.5460150967812951 0.95222112496452116 0.093893108975674711 1.5460150967812951 1.0108725532797207 
		0.39443046215635036 1.5460150967812951 1.0306767235970904 0.64123714652949904 1.5460150967812951 
		1.0306767235970904 0.70307774994532402 1.4841744933654697 1.0306767235970904 0.7030777499453249 
		-0.51533835041288611;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "2FE65CBE-4DE3-3AA1-61B3-B2BB3C919C81";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.1533836179854484 -6.0415986107667363 5.1533836179854537
		5.0543627967912723 -6.0415986107667363 6.1587588874908752
		4.7611056478357199 -6.0415986107667363 7.1254981492101503
		4.2848818788926488 -6.0415986107667363 8.0164501554690304
		3.6439925023331758 -6.0415986107667363 8.7973761203186278
		2.8630665374835762 -6.0415986107667363 9.4382654968781043
		1.9721145312246957 -6.0415986107667363 9.9144892658211727
		1.0053752695054208 -6.0415986107667363 10.207746414776729
		-6.0162399499789145e-16 -6.0415986107667363 10.306767235970902
		-1.0053752695054221 -6.0415986107667363 10.207746414776729
		-1.9721145312246973 -6.0415986107667363 9.9144892658211727
		-2.8630665374835784 -6.0415986107667363 9.4382654968781043
		-3.6439925023331781 -6.0415986107667363 8.7973761203186296
		-4.2848818788926515 -6.0415986107667363 8.0164501554690322
		-4.7611056478357225 -6.0415986107667363 7.1254981492101503
		-5.0543627967912759 -6.0415986107667363 6.1587588874908743
		-5.153383617985452 -6.0415986107667363 5.153383617985452
		-5.0543627663986035 -4.4983621718218636 5.1533836179854529
		-4.7611056248226067 -2.9956754059184885 5.1533836179854529
		-4.2848819762530717 -1.6944405449181099 5.1533836179854529
		-3.6439925014020234 -0.65902466483153255 5.1533836179854529
		-2.8630664752701973 0.12067745763119753 5.1533836179854529
		-1.9721144684368233 0.59690110620073256 5.1533836179854529
		-1.0053752473974427 0.89015824777672847 5.1533836179854529
		3.1555373775559965e-16 0.98917909936357784 5.1533836179854529
		1.0053752473974427 0.89015824777672847 5.1533836179854529
		1.9721144684368233 0.59690110620073256 5.1533836179854529
		2.8630664752701973 0.12067745763119753 5.1533836179854529
		3.6439925014020234 -0.65902466483153255 5.1533836179854529
		4.2848819762530717 -1.6944405449181099 5.1533836179854529
		4.7611056248226067 -2.9956754059184885 5.1533836179854529
		5.0543627663986035 -4.4983621718218636 5.1533836179854529
		5.1533836179854529 -6.0415986107667363 5.1533836179854529
		5.1533836179854529 -6.0415986107667372 -4.8441806009063253
		5.1533836179854529 -5.7323955936876088 -5.1533836179854529
		5.0543627663986035 -4.4983621718218636 -5.1533836179854529
		4.7611056248226067 -2.9956754059184885 -5.1533836179854529
		4.2848819762530717 -1.6944405449181099 -5.1533836179854529
		3.6439925014020234 -0.65902466483153255 -5.1533836179854529
		2.8630664752701973 0.12067745763119753 -5.1533836179854529
		1.9721144684368233 0.59690110620073256 -5.1533836179854529
		1.0053752473974427 0.89015824777672847 -5.1533836179854529
		3.1555373775559965e-16 0.98917909936357784 -5.1533836179854529
		-1.0053752473974427 0.89015824777672847 -5.1533836179854529
		-1.9721144684368233 0.59690110620073256 -5.1533836179854529
		-2.8630664752701973 0.12067745763119753 -5.1533836179854529
		-3.6439925014020234 -0.65902466483153255 -5.1533836179854529
		-4.2848819762530717 -1.6944405449181099 -5.1533836179854529
		-4.7611056248226067 -2.9956754059184885 -5.1533836179854529
		-5.0543627663986035 -4.4983621718218636 -5.1533836179854529
		-5.1533836179854529 -5.7323955936876088 -5.1533836179854529
		-5.1533836179854529 -6.0415986107667354 -4.8441806009063253
		-5.1533836179854529 -6.0415986107667363 5.1533836179854529
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd1_smart_ctl_ofs" -p "lfLegQd1_ikc_gmb";
	rename -uid "475E25E2-456D-EF31-4D91-1A960F42DF46";
	setAttr ".t" -type "double3" 6.9974417371554409e-09 -6.0415986107667372 6.7176657956956092 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "63BC23C6-47A7-6254-2A81-CEB6942A5D17";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd1_smart_ctlShape1" -p "lfLegQd1_smart_ctl";
	rename -uid "D8F2A455-4D83-DA40-7C7F-88ADD2685247";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3710631725603677 4.866612461314152e-17 -2.3710631725603704
		1.3127759059026801e-16 6.8824293456043907e-17 -2.143925753640453
		-2.3710631725603677 4.8666124613141489e-17 -2.3710631725603686
		-2.1439257536404592 -2.8089440519308021e-32 -8.3248055585678545e-16
		-2.3710631725603677 -4.8666124613141508e-17 2.3710631725603677
		-2.14758509040127e-16 -6.8824293456043981e-17 2.1439257536404552
		2.3710631725603677 -4.8666124613141489e-17 2.3710631725603686
		2.1439257536404592 -4.1042848643797608e-32 -4.2897266814784187e-16
		2.3710631725603677 4.866612461314152e-17 -2.3710631725603704
		1.3127759059026801e-16 6.8824293456043907e-17 -2.143925753640453
		-2.3710631725603677 4.8666124613141489e-17 -2.3710631725603686
		;
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "F052F83B-4829-7AA7-1C04-19984046E6AB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "3FAF3AED-420B-DE5D-F07C-1383B993ACA8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 1.0825677600255099e-30 -2.4037833057944044e-46 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -152.53100353919388 -0.30860936166097241 90.593592999485594 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "598AD51E-4706-CBFA-5C54-47BF2CFC1B45";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 62.626657879090025 -2.6645352591003757e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.3742356314627875;
createNode ikEffector -n "effector13" -p "lfLegQd1_legLock";
	rename -uid "FE646445-43B9-7858-4D08-9FAF37955438";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "BE5C453C-4D8B-3B00-8127-F5B19886CA39";
	setAttr ".t" -type "double3" 15.474895217990841 39.660063022090768 5.0627737695144468 ;
	setAttr ".r" -type "double3" 2.479028709016931 160.53884389465048 -7.2965159907439432e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "6B064D4C-46A7-D79D-64AA-3BBF463E3C82";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "B44F432A-460E-D1D4-AFB7-2D82EA83A4BC";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 3.5527136788005009e-14 -8.8817841970012523e-16 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "44157E61-40F0-2664-3DC2-C5959B1EC84C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7006165939351996
		-1.7006165939351996 0 0
		0 0 -1.7006165939351996
		1.7006165939351996 0 0
		0 0 1.7006165939351996
		0 1.7006165939351996 0
		1.7006165939351996 0 0
		0 0 -1.7006165939351996
		0 1.7006165939351996 0
		-1.7006165939351996 0 0
		0 -1.7006165939351996 0
		1.7006165939351996 0 0
		0 0 1.7006165939351996
		0 -1.7006165939351996 0
		0 0 -1.7006165939351996
		;
createNode transform -n "lfLegQd1_extraRollG_ofs_loc" -p "lfLegQd1_IK";
	rename -uid "706BB53F-451D-5A31-D43D-96A5B6E67CA7";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 22.343584163530252 28.105523883437485 -83.778878925073798 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "7BBF3122-4B17-78F5-F3E5-DBAA567536E5";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "5D126958-47C3-FED2-CB9C-1BB3E643B62D";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_settingShape1" -p "lfLegQd1_setting";
	rename -uid "AB10AFF4-4FBE-435F-838D-50849433E62A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.4355890786569687 3.4355890786569687 8.5528925661918188e-17
		-3.369575177599069 3.4355890786569687 -0.67025016493162826
		-3.1740704165484046 3.4355890786569687 -1.3147430608687087
		-2.8565879841687143 3.4355890786569687 -1.9087109835134648
		-2.4293283342680154 3.4355890786569687 -2.4293283342680154
		-1.9087109835134648 3.4355890786569687 -2.8565879841687143
		-1.3147430608687087 3.4355890786569687 -3.1740704165484046
		-0.67025016493162826 3.4355890786569687 -3.369575177599069
		2.1036915850373309e-16 3.4355890786569687 -3.4355890786569687
		0.67025016493162826 3.4355890786569687 -3.369575177599069
		1.3147430608687087 3.4355890786569687 -3.1740704165484046
		1.9087109835134648 3.4355890786569687 -2.8565879841687143
		2.4293283342680154 3.4355890786569687 -2.4293283342680154
		2.8565879841687143 3.4355890786569687 -1.9087109835134648
		3.1740704165484046 3.4355890786569687 -1.3147430608687087
		3.369575177599069 3.4355890786569687 -0.67025016493162826
		3.4355890786569687 3.4355890786569687 -3.7159916484473814e-16
		3.3048299114243398 3.4355890786569687 -0.65737148947894108
		2.9324587064624921 3.4355890786569687 -1.2146641671340077
		2.3751659468965989 3.4355890786569687 -1.5870352082742023
		1.7177945393284844 3.4355890786569687 -1.7177945393284844
		1.0604230498495433 3.4355890786569687 -1.5870352082742023
		0.50313037219447665 3.4355890786569687 -1.2146641671340077
		0.13075933105428209 3.4355890786569687 -0.65737148947894108
		0 3.4355890786569687 -3.7159916484473814e-16
		-0.13075933105428209 3.4355890786569687 0.65737148947894108
		-0.50313037219447665 3.4355890786569687 1.2146641671340077
		-1.0604230498495433 3.4355890786569687 1.5870352082742023
		-1.7177945393284844 3.4355890786569687 1.7177945393284844
		-2.3751659468965989 3.4355890786569687 1.5870352082742023
		-2.9324587064624921 3.4355890786569687 1.2146641671340077
		-3.3048299114243398 3.4355890786569687 0.65737148947894108
		-3.4355890786569687 3.4355890786569687 8.5528925661918188e-17
		-3.369575177599069 3.4355890786569687 0.67025016493162826
		-3.1740704165484046 3.4355890786569687 1.3147430608687087
		-2.8565879841687143 3.4355890786569687 1.9087109835134648
		-2.4293283342680154 3.4355890786569687 2.4293283342680154
		-1.9087109835134648 3.4355890786569687 2.8565879841687143
		-1.3147430608687087 3.4355890786569687 3.1740704165484046
		-0.67025016493162826 3.4355890786569687 3.369575177599069
		-4.0108266341751782e-16 3.4355890786569687 3.4355890786569687
		0.67025016493162826 3.4355890786569687 3.369575177599069
		1.3147430608687087 3.4355890786569687 3.1740704165484046
		1.9087109835134648 3.4355890786569687 2.8565879841687143
		2.4293283342680154 3.4355890786569687 2.4293283342680154
		2.8565879841687143 3.4355890786569687 1.9087109835134648
		3.1740704165484046 3.4355890786569687 1.3147430608687087
		3.369575177599069 3.4355890786569687 0.67025016493162826
		3.4355890786569687 3.4355890786569687 -3.7159916484473814e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "481CAB91-4583-36D4-D2D7-9FA21B46415B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "536BB786-4845-456F-EAB2-C3A9B45EC38B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.306767235970906 10.306767235970906 10.306767235970906 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "95622993-465E-8C36-56BE-F58870034198";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "E81F6E22-4441-4068-7F5D-8AB87C87CD69";
	setAttr ".t" -type "double3" 1.6361350750788981e-14 63.638631816388312 35.504896439407034 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "90F18015-4F8B-065D-5470-9D97B7CCC562";
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "BD62F083-4364-A3A9-A9C5-05B2A04CDBA5";
	setAttr ".t" -type "double3" 0 2.1316282072803006e-14 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "CFC70B02-445C-F53C-6967-B2B61611EF2C";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "chest:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".space";
createNode nurbsCurve -n "neckQd0_cog_ctlShape1" -p "neckQd0_cog_ctl";
	rename -uid "AB1A188F-4DBD-5E81-E4EF-E3B0F956ABE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.504100871330339 15.504100871330357 3.1822201692083677e-16
		8.5840859501810745e-16 14.018876228080851 4.5003389217516841e-16
		-15.504100871330339 15.504100871330346 3.1822201692083657e-16
		-14.01887622808089 5.4434916204646763e-15 -1.8367352007762556e-31
		-15.504100871330339 -15.504100871330339 -3.1822201692083672e-16
		-1.4042804197153312e-15 -14.018876228080863 -4.500338921751689e-16
		15.504100871330339 -15.504100871330346 -3.1822201692083657e-16
		14.01887622808089 2.805001399783887e-15 -2.6837431949695574e-31
		15.504100871330339 15.504100871330357 3.1822201692083677e-16
		8.5840859501810745e-16 14.018876228080851 4.5003389217516841e-16
		-15.504100871330339 15.504100871330346 3.1822201692083657e-16
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "036205DC-491D-A13D-077C-7E835D10448A";
	setAttr ".t" -type "double3" 7.2045234361705946e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "F104DCED-4C07-FE90-0157-B9B532486BDD";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "2042E918-479B-35E9-999C-6A8E1BF9D360";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0415056995005614 7.0415056995005623 4.3116787080356039e-16
		6.0976345054992523e-16 9.9581928597611373 6.0976345054992523e-16
		-7.0415056995005614 7.0415056995005605 4.3116787080356029e-16
		-9.9581928597611427 5.1623447633510024e-16 3.1610244952664524e-32
		-7.0415056995005614 -7.0415056995005614 -4.3116787080356029e-16
		-9.9751898948222214e-16 -9.9581928597611444 -6.0976345054992563e-16
		7.0415056995005614 -7.0415056995005605 -4.3116787080356029e-16
		9.9581928597611427 -1.3579952442685278e-15 -8.3153226457539024e-32
		7.0415056995005614 7.0415056995005623 4.3116787080356039e-16
		6.0976345054992523e-16 9.9581928597611373 6.0976345054992523e-16
		-7.0415056995005614 7.0415056995005605 4.3116787080356029e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "88061FB8-4F91-E54B-2777-E693A6E9C5A7";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "347E72AE-4BAC-6A8B-B1E4-178D2B1EEA6B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "CC8BA2A9-4859-2527-5EE5-FA8C2DF89F96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-2.1304162797076927e-07 1.4315114255425065 -0.30631021808653364
		-2.5980821341620554e-07 1.5296334678821826 -0.56267028063139424
		-2.7394912983618251e-07 1.4080232495500629 -0.75002631350474536
		-2.528217746096186e-07 1.2657315614966207 -0.80428613005080363
		-2.230559102441015e-07 1.0652599433160319 -0.80625011032467053
		9.2359828572958218e-08 -1.0590495808641873 -0.827061820405527
		1.2212569293900083e-07 -1.2595211990447615 -0.8290258006793787
		1.432530481319841e-07 -1.4018128870982103 -0.7775539904457115
		1.9442924865959273e-07 -1.5296334678821826 -0.58698033558115981
		2.1297978011972232e-07 -1.4377217879943547 -0.32911020938788849
		2.7394912990050487e-07 -0.26322026148822275 1.2752595643785349
		2.6087910005023653e-07 -0.13194517758447893 1.4079802577760123
		2.4519226334350552e-07 -0.0004655194977670303 1.4624358298942801
		2.1316244878890766e-07 0.13229178401442246 1.4111286481825949
		1.7851582737973696e-07 0.26525366170960119 1.2815563451917089
		-2.1304162797076927e-07 1.4315114255425065 -0.30631021808653364
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "3397CC63-4AEC-4B81-22AD-1CA4A61951FE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -30.604652269631661 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.604652269631661 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.86070069131550575 -0.50911130410648953 0
		 0 0.50911130410648953 0.86070069131550575 0 1.6368555274225152e-14 63.638631816388312 35.504896439407034 1;
	setAttr ".radi" 1.1981285075121262;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "4974A142-4D22-DD36-0457-9B9461FADCCD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -7.2045234361705946e-18 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631575 -1.5253946017807453e-14 -8.8227160329260719e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.604652269631597 0 0 ;
	setAttr ".radi" 5.9906425375606309;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "B27EA54E-4E22-CEED-F5B3-48964C6DF3A9";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.6361350750788981e-14 14.269010402334771 25.374411055997655 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.9906425375606309;
createNode ikEffector -n "effector15" -p "neckQd0_two_ikj";
	rename -uid "2693386F-47FC-296F-5D2D-6B85DD5AD9D9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "E99F6616-4CA4-8D38-63FB-20A052184B91";
	setAttr ".t" -type "double3" -1.6368555274225146e-14 14.269010402334764 25.374411055997669 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "1E385180-4147-2617-8BFF-4597B345251E";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "0DB1F998-4314-C607-B74D-F2856D5065A4";
	setAttr ".t" -type "double3" -8.2002253731858222e-15 5.2506893486806945 13.599534167560421 ;
	setAttr ".r" -type "double3" -43.660985986598114 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "2FFB8A99-46F4-26A0-6D4B-A4BFAEF9D302";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "7F6A7AFA-4ACA-4546-5DB0-4E89052DF51A";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "F5F8F35B-457A-C300-3F01-A5B85AF7DEDC";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "9BFF297E-416F-C439-C07B-FF96D5E77B56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0415056995005614 7.0415056995005623 4.3116787080356039e-16
		6.0976345054992523e-16 9.9581928597611373 6.0976345054992523e-16
		-7.0415056995005614 7.0415056995005605 4.3116787080356029e-16
		-9.9581928597611427 5.1623447633510024e-16 3.1610244952664524e-32
		-7.0415056995005614 -7.0415056995005614 -4.3116787080356029e-16
		-9.9751898948222214e-16 -9.9581928597611444 -6.0976345054992563e-16
		7.0415056995005614 -7.0415056995005605 -4.3116787080356029e-16
		9.9581928597611427 -1.3579952442685278e-15 -8.3153226457539024e-32
		7.0415056995005614 7.0415056995005623 4.3116787080356039e-16
		6.0976345054992523e-16 9.9581928597611373 6.0976345054992523e-16
		-7.0415056995005614 7.0415056995005605 4.3116787080356029e-16
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "A979379A-4568-FFF0-24BC-F0B03ADDC381";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -74.265638256229693 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 74.265638256229693 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.27117774812976786 -0.96252928730468634 0
		 0 0.96252928730468634 0.27117774812976786 0 8.1611253776031576e-15 75.081580343968156 44.536839597230234 1;
	setAttr ".radi" 1.1981285075121262;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "8D24B055-4814-17A7-7AD7-6AAC989FACD5";
	setAttr ".t" -type "double3" -1.6361350750788975e-14 14.269010402334771 25.374411055997655 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "DB4D1ACD-4D18-CB33-68BA-EEACD1364329";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "DCA818F4-42E7-B0E0-FE05-23995E380818";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 2 -at "double";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neckBase:COG:master" 
		-at "enum";
	addAttr -ci true -sn "posSpace" -ln "posSpace" -min 0 -max 2 -en "neckBase:COG:master" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
	setAttr -k on ".space";
	setAttr -k on ".posSpace";
createNode nurbsCurve -n "neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "2662BEDB-45E2-C084-44B9-81888C113870";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0415056995005614 7.0415056995005623 4.3116787080356039e-16
		6.0976345054992523e-16 9.9581928597611373 6.0976345054992523e-16
		-7.0415056995005614 7.0415056995005605 4.3116787080356029e-16
		-9.9581928597611427 5.1623447633510024e-16 3.1610244952664524e-32
		-7.0415056995005614 -7.0415056995005614 -4.3116787080356029e-16
		-9.9751898948222214e-16 -9.9581928597611444 -6.0976345054992563e-16
		7.0415056995005614 -7.0415056995005605 -4.3116787080356029e-16
		9.9581928597611427 -1.3579952442685278e-15 -8.3153226457539024e-32
		7.0415056995005614 7.0415056995005623 4.3116787080356039e-16
		6.0976345054992523e-16 9.9581928597611373 6.0976345054992523e-16
		-7.0415056995005614 7.0415056995005605 4.3116787080356029e-16
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "88E697FB-4FE5-0A5C-0D51-EF91DECE6FB3";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "8DB60A02-4BEA-8605-4D2C-71B1FD562078";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "4992B8C9-4FF1-BE65-73B8-2BAA1467BEBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-2.1304162797076927e-07 -1.4315114255425065 0.3063102180865338
		-2.5980821341620554e-07 -1.5296334678821826 0.56267028063139446
		-2.7394912983618251e-07 -1.4080232495500629 0.75002631350474558
		-2.528217746096186e-07 -1.2657315614966207 0.80428613005080374
		-2.230559102441015e-07 -1.0652599433160319 0.80625011032467075
		9.2359828572958218e-08 1.0590495808641875 0.82706182040552689
		1.2212569293900083e-07 1.2595211990447615 0.82902580067937859
		1.432530481319841e-07 1.4018128870982103 0.77755399044571138
		1.9442924865959273e-07 1.5296334678821826 0.58698033558115958
		2.1297978011972232e-07 1.4377217879943547 0.32911020938788832
		2.7394912990050487e-07 0.26322026148822258 -1.2752595643785349
		2.6087910005023653e-07 0.13194517758447877 -1.4079802577760123
		2.4519226334350552e-07 0.00046551949776685124 -1.4624358298942801
		2.1316244878890766e-07 -0.13229178401442263 -1.4111286481825949
		1.7851582737973696e-07 -0.26525366170960135 -1.2815563451917089
		-2.1304162797076927e-07 -1.4315114255425065 0.3063102180865338
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "1522EE64-4BE7-C10C-49F9-A5BFDC4CCDCD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 88.838378437719086 50.080155082786305 1;
	setAttr ".radi" 1.1981285075121262;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "9A4685E7-43BB-3FBC-03A6-5BBF84B7FE19";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "C325B9E3-4D18-B75C-0DCD-268EA8D8E3C4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "53D44431-48F8-5407-885D-3BAF2ECDE3FC";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "360DF4DF-4379-BB2E-0A04-35A29036E77A";
	setAttr ".t" -type "double3" 0 1.156175963025305 5.7868253083692309 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "6E6B67E3-43C3-A670-1926-9683E8606EDD";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "ADDB9E8B-4482-8D0E-A7C5-92A56A0C1A6D";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "volumeScale" -ln "volumeScale" -dv 1 -at "double";
	addAttr -ci true -sn "volumeGraph" -ln "volumeGraph" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".stretchy";
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "neckQd0_settingShape1" -p "neckQd0_setting";
	rename -uid "CBA9FAC9-4B85-CD6F-702C-8496BD4CCAFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-2.2464909515852365 2.9953212687803155 5.5926350095808422e-17
		-2.203325244624907 2.9953212687803155 -0.43826863351365175
		-2.0754870001094012 2.9953212687803155 -0.85969489431944213
		-1.8678890029976349 2.9953212687803155 -1.248083474328243
		-1.5885089853342265 2.9953212687803155 -1.5885089853342265
		-1.248083474328243 2.9953212687803155 -1.8678890029976349
		-0.85969489431944213 2.9953212687803155 -2.0754870001094012
		-0.43826863351365175 2.9953212687803155 -2.203325244624907
		1.3755789771458389e-16 2.9953212687803155 -2.2464909515852365
		0.43826863351365175 2.9953212687803155 -2.203325244624907
		0.85969489431944213 2.9953212687803155 -2.0754870001094012
		1.248083474328243 2.9953212687803155 -1.8678890029976349
		1.5885089853342265 2.9953212687803155 -1.5885089853342265
		1.8678890029976349 2.9953212687803155 -1.248083474328243
		2.0754870001094012 2.9953212687803155 -0.85969489431944213
		2.203325244624907 2.9953212687803155 -0.43826863351365175
		2.2464909515852365 2.9953212687803155 -2.4298428663263493e-16
		2.1609890829683551 2.9953212687803155 -0.42984742037946205
		1.9174999684597316 2.9953212687803155 -0.79425449266711323
		1.5530928426115622 2.9953212687803155 -1.0377435000547006
		1.1232454757926182 2.9953212687803155 -1.1232454757926182
		0.69339805541315624 2.9953212687803155 -1.0377435000547006
		0.32899098312550501 2.9953212687803155 -0.79425449266711323
		0.085501975737917693 2.9953212687803155 -0.42984742037946205
		0 2.9953212687803155 -2.4298428663263493e-16
		-0.085501975737917693 2.9953212687803155 0.42984742037946205
		-0.32899098312550501 2.9953212687803155 0.79425449266711323
		-0.69339805541315624 2.9953212687803155 1.0377435000547006
		-1.1232454757926182 2.9953212687803155 1.1232454757926182
		-1.5530928426115622 2.9953212687803155 1.0377435000547006
		-1.9174999684597316 2.9953212687803155 0.79425449266711323
		-2.1609890829683551 2.9953212687803155 0.42984742037946205
		-2.2464909515852365 2.9953212687803155 5.5926350095808422e-17
		-2.203325244624907 2.9953212687803155 0.43826863351365175
		-2.0754870001094012 2.9953212687803155 0.85969489431944213
		-1.8678890029976349 2.9953212687803155 1.248083474328243
		-1.5885089853342265 2.9953212687803155 1.5885089853342265
		-1.248083474328243 2.9953212687803155 1.8678890029976349
		-0.85969489431944213 2.9953212687803155 2.0754870001094012
		-0.43826863351365175 2.9953212687803155 2.203325244624907
		-2.6226319666768426e-16 2.9953212687803155 2.2464909515852365
		0.43826863351365175 2.9953212687803155 2.203325244624907
		0.85969489431944213 2.9953212687803155 2.0754870001094012
		1.248083474328243 2.9953212687803155 1.8678890029976349
		1.5885089853342265 2.9953212687803155 1.5885089853342265
		1.8678890029976349 2.9953212687803155 1.248083474328243
		2.0754870001094012 2.9953212687803155 0.85969489431944213
		2.203325244624907 2.9953212687803155 0.43826863351365175
		2.2464909515852365 2.9953212687803155 -2.4298428663263493e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "C096B2C2-49B6-477E-B460-FE8B91EB3727";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "647FB26B-4123-0718-F616-6F88125A7A97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.492981903170473 4.492981903170473 4.492981903170473 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "FA9F14EC-4E3E-57AC-BE26-909F3ABA71C0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "BAAA1C33-4745-EA46-F536-7A8C172DF5E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 4.492981903170473 4.492981903170473 4.492981903170473 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "9FBE2762-44C3-4716-44B2-989FE206D560";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "17588036-4554-B6E3-80E4-F68B5D4AA50E";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "957D662D-4ABF-E7CF-3E84-7E918AAD1D47";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.50076434960073446 -49.433471647716104 88.912123131735129 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "A4D60BFE-4333-A15C-D6F3-AB97D8B662A2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003516 64.068928352023718 -14.163551514349981 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "C4914D1F-4811-1729-8AA9-5693E67E139A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106716 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "7DD0BCC0-44B2-5D67-17E1-E39437735C0D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628196388 36.265191043615189 6.9366382381466307 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "25FE9B93-4693-1311-7FBF-0C9391EF1E99";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777825 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "145BE71E-4827-3664-4496-41881AD6CF31";
	setAttr ".t" -type "double3" -5.561431110586355 6.9984569250891582e-09 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 23.061720469442371 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "F7ED8D01-4BBB-A6BD-90ED-A3960F7EEC83";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "9F617420-42A9-1B14-CC3B-84BE5AE007CD";
	setAttr ".t" -type "double3" -5.5614311105863514 6.9984587014459976e-09 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 23.061720469442346 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "99FAB4E7-4F12-EBEF-D307-7FAA9DA863F8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "78356BAC-4FB6-E78A-7EB3-EBB86CFBC568";
	setAttr ".t" -type "double3" -5.5614311105863479 6.9984587014459976e-09 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "F430D272-4E6D-F8F8-5C98-46B30465EF94";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 6.3611093629270335e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.0395750227524637e-13 3.1805546814635176e-15 5.8260293775470427e-14 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "B4682CFC-45C0-A1A1-8D47-38A62C581D37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670124 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779804 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "EA2A3CBD-47BB-F3CC-7C43-09AEB7601B9E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "454C973C-457E-5DB4-2D1B-8B86E3FC2515";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_upr_fkcShape1" -p "rtLegQd0_upr_fkc";
	rename -uid "7961AF8E-4061-4F1E-1F9B-A7877B2EB43B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "4D8E523D-43FA-E0F9-64B7-278FE4A320DB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "1E8A6BEE-4233-C1BD-19A5-5D9F1B273084";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "917A9FB0-4F95-89B2-94E6-3883081FFE63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "4B8CC8B9-4723-B24A-CE3C-4A90F6EADD85";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "46435B2B-4345-B410-A2DD-BD8151C59318";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_palm_fkcShape1" -p "rtLegQd0_palm_fkc";
	rename -uid "F482B257-4058-5533-C895-3D82D82E65F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "B987A81A-44A1-A26D-2A5A-C1850F07198A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "E47F02B2-479A-6B46-9DB1-2E8166637F09";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "D45BB05B-473E-FE2B-D5AC-3A98B4500709";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "2B851549-4FEF-2A48-2B1C-4ABC40915A30";
	setAttr ".t" -type "double3" 2.4868995751603507e-14 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 34.73144234677784 3.1805546814635168e-15 -89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "DA2AD7E0-442B-3F9B-50B9-D09A489064CA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "039D308F-4CF7-D238-5271-589703E77D2A";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "54DD93A5-42C9-05D7-0D77-D0861566E9A3";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "9113FAB0-475E-6EF2-7C12-4EB2235B7146";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "75FF0E70-408F-3789-2925-769781A54645";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.6681922215284222 14.173558686574538 3.6681922215284266
		-2.03095152519372e-16 14.173558686574538 3.3167955472675805
		3.6681922215284222 14.173558686574538 3.6681922215284239
		3.3167955472675903 14.173558686574538 1.28790271592385e-15
		3.6681922215284222 14.173558686574538 -3.6681922215284222
		3.3224567843013827e-16 14.173558686574538 -3.3167955472675841
		-3.6681922215284222 14.173558686574538 -3.6681922215284239
		-3.3167955472675903 14.173558686574538 6.6364921135737638e-16
		-3.6681922215284222 14.173558686574538 3.6681922215284266
		-2.03095152519372e-16 14.173558686574538 3.3167955472675805
		3.6681922215284222 14.173558686574538 3.6681922215284239
		;
	setAttr ".adot" yes;
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "FBE5C456-4030-927A-5E98-878C7A8913A8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.1316282072803006e-14 -8.8817841970012523e-16 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 97.130792305308532 35.524862936853822 -1.5669053610084642 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "C3D9FCFB-4545-B25E-BAF9-9A9E8E01759F";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -63.787737634212363 -5.6843418860808015e-14 2.9309887850104133e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905503e-15 -2.6587449290359072e-15 7.6532097022715869e-15 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector21" -p "rtLegQd0_autoAim";
	rename -uid "7633CECB-44E9-8652-60A5-B181244D7F05";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "CD8E88AA-4460-B671-585D-B790CBF4846B";
	setAttr ".t" -type "double3" -9.1257019408539897 8.3444269510709113 -34.108652583725423 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "6058E5EE-43C8-7CF2-994F-338B028E315C";
	setAttr ".t" -type "double3" -6.5840614738021941e-08 -4.5705573025998936 3.1685175900398335 ;
	setAttr ".r" -type "double3" -5.96752428637967e-15 57.793162816220239 89.999999999999915 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "A958BDAD-49CC-21AC-AB6B-0C88930C8701";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "4725C460-4884-766D-A24C-B0B0ABB95C69";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "2E59422C-45C9-7A80-AD54-59A04905975B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.5289727335728997e-17 -3.6681922215284222 -3.6681922215284266
		1.0647575350556041e-16 -2.03095152519372e-16 -3.3167955472675805
		7.5289727335728948e-17 3.6681922215284222 -3.6681922215284239
		-4.3456230273589485e-32 3.3167955472675903 -1.28790271592385e-15
		-7.5289727335728972e-17 3.6681922215284222 3.6681922215284222
		-1.0647575350556052e-16 3.3224567843013827e-16 3.3167955472675841
		-7.5289727335728948e-17 -3.6681922215284222 3.6681922215284239
		-6.349601304885251e-32 -3.3167955472675903 -6.6364921135737638e-16
		7.5289727335728997e-17 -3.6681922215284222 -3.6681922215284266
		1.0647575350556041e-16 -2.03095152519372e-16 -3.3167955472675805
		7.5289727335728948e-17 3.6681922215284222 -3.6681922215284239
		;
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "F20DCF62-42AE-4C83-9388-90BACB36C35F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670089 -1.0658141036401503e-14 2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755428 4.7312853690039326e-17 0.53297724966496474 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "EE0AE6D8-42E7-BB13-9D4C-7A94D92A3B6D";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "F9E231E5-44B7-ED43-881B-8B89FE37544B";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "A955F36F-4940-AE40-4C4D-A8A14FAEBAA9";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "5CF89BFF-4D6E-6C37-ACC6-1585A036E450";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.50076434960073446 -49.433471647716104 88.912123131735129 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "2DE95344-4073-55CA-B017-45B518B8DC22";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.52460998181849 -2.6645352591003757e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 3.9908600548996154e-15 -7.1431828152695357e-06 -8.5012495892588138e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003516 64.068928352023718 -14.163551514349981 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "60815BA4-41BF-6DCC-7513-308572AEDD35";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.015521384923296 -5.3290705182007514e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -2.9552923362025075e-20 1.4734574635188943e-05 1.7548574934597607e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106716 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "6F963738-41A6-E68D-A7B3-239B8C559799";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.713213754348718 -3.5527136788005009e-14 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -7.689441374007535e-07 -6.6214760054210043e-06 1.2766568299583519e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628196388 36.265191043615189 6.9366382381466307 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "2D00FE53-4184-ADFC-2471-2699A8F51EC3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.352122984722968 -0.56954940883502125 -0.19538001629759094 ;
	setAttr ".r" -type "double3" -2.5928120941002633e-07 3.2627723682255081e-16 -3.320025915750703e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777825 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "BE7A8950-462D-FD2D-CA17-0A9D51812D93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.5614311105863585 6.9984569250891582e-09 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 1.2319077058869202e-07 -9.3434268522587613e-32 8.6912180557911185e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.061720469442356 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "F7F0B469-49EB-EBCE-94E5-8291B5957C2D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670124 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779804 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector19" -p "rtLegQd0_ball_ik";
	rename -uid "366843B1-4D12-3F13-BFC3-05825B968810";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector18" -p "rtLegQd0_digit_ik";
	rename -uid "009B56CB-4338-B7F3-A3EB-4D99120AF979";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "rtLegQd0_palm_ik";
	rename -uid "A5A5A585-4D64-787B-075C-F98349CF3C24";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "rtLegQd0_lwr_ik";
	rename -uid "1F2A08D6-4CAC-2D75-1CA0-B5A3C752F114";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "0A515E59-4C46-F053-D97A-F3886B8A2A6C";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -12.524609981818482 -4.4408920985006262e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -5.0888874903416268e-14 -2.1930420570272714e-29 1.3706512856420459e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 111.77798249028768 39.498109214033576 -5.0815358911596347 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "CC16E73A-4541-BB3B-C6F4-75B48D2708C9";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -32.975856781005859 -1.4210854715202004e-14 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905503e-15 -2.6587449290359072e-15 7.6532097022715869e-15 ;
createNode ikEffector -n "effector20" -p "rtLegQd0_softJ";
	rename -uid "E24B3A95-4D77-341D-2490-E3BEE9CB6B00";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "E80C72F8-4268-EA85-B2FF-C08CB7611A0B";
	setAttr ".t" -type "double3" -19.193384426812791 25.803642726558628 -15.581784412028679 ;
	setAttr ".r" -type "double3" -165.61686281110741 -57.892244334823474 79.141888513098579 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "D6B19A11-4B55-8243-F19A-6E9024E1F67F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "D3AAB67E-4240-CF2F-DDB2-65BCA1422414";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "D702F120-4B6B-A877-49DF-8A98EE6213FE";
	setAttr ".t" -type "double3" 0.56954940183653591 -29.696551973459925 2.5073573751739033 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "31C83B63-48C1-B9A3-7346-B68411996195";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "B5FA791D-4EB2-03A9-A912-20851AB01F8D";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "C69A88A7-4CD6-44D6-D05F-8392ECAFE861";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "0C3F63E5-4881-0E22-1E37-F48FCC3CEB83";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "42667A65-49BE-4D0F-52C1-E8859D53380D";
	setAttr ".t" -type "double3" -2.1747055391654797 0 -2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "9095EEB0-4DA1-7FD0-8112-BA8A37B446A9";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "A0AFCC49-4358-7271-D3FC-FCB5F3424826";
	setAttr ".t" -type "double3" 4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "6E18B1E3-49CD-55AC-14E3-A18BB378EA71";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "EEF531E8-4DB3-D613-A7C0-7CBBC7B39990";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "01295BD5-46A9-522A-5E33-DE90AF1137A7";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "3EB6C5B2-4041-93BF-1D75-5082A40C4950";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-4.3892543532516837e-17 6.3699596940529171 3.8747123013316193e-16
		-4.2396940074376572e-17 6.3943848387697901 0.18552656869947678
		-3.8012057400906479e-17 6.4659954341502788 0.35840979645684462
		-3.103671294053013e-17 6.5799114074692673 0.50686799213866318
		-2.1946271766258418e-17 6.7283695186700925 0.62078402177831382
		-1.1360225570634047e-17 6.9012527745877916 0.69239456083813999
		1.3441023042355365e-32 7.0867793432872679 0.71681959291368924
		1.1360225570634047e-17 7.272305911986745 0.69239456083813999
		2.1946271766258418e-17 7.4451891679044433 0.62078402177831382
		3.103671294053013e-17 7.5936472791052694 0.50686799213866318
		3.8012057400906479e-17 7.7075637029895541 0.35840979645684462
		4.2396940074376572e-17 7.7791738478047456 0.18552656869947678
		4.3892543532516837e-17 7.8035989925216196 2.118143790022616e-16
		4.2396940074376572e-17 7.7791738478047456 -0.18552656869947678
		3.8012057400906479e-17 7.7075637029895541 -0.35840979645684462
		3.103671294053013e-17 7.5936472791052694 -0.50686799213866318
		2.1946271766258418e-17 7.4451891679044433 -0.62078402177831382
		1.1360225570634047e-17 7.272305911986745 -0.69239456083813999
		-3.2838978479220382e-32 7.0867793432872679 -0.71681959291368924
		-1.1360225570634047e-17 6.9012527745877916 -0.69239456083813999
		-2.1946271766258418e-17 6.7283695186700925 -0.62078402177831382
		-3.103671294053013e-17 6.5799114074692673 -0.50686799213866318
		-3.8012057400906479e-17 6.4659954341502788 -0.35840979645684462
		-4.2396940074376572e-17 6.3943848387697901 -0.18552656869947678
		-4.3892543532516837e-17 6.3699596940529171 3.8747123013316193e-16
		0 0 0
		;
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "C35E7C30-4612-9666-1ED7-B899D7463172";
	setAttr ".t" -type "double3" 6.9984587014459976e-09 4.5705593402659277 -3.1685175263687135 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "728FCD72-4625-11A1-E220-70BD23355C97";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 173.84330993628481 0 87.757826737056263 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "6069810B-409C-F99A-E539-3CA9E7132DFE";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "726C8B25-40F4-1F5C-C9A5-06901291AE9C";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "5526DF57-45F8-2361-F8D7-0190DF13F319";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		4.231019829012598 7.0867793432872688 0
		3.928397345810033 8.7139747320275038 0
		3.0066653212337755 10.093444664521044 0
		1.6271953887402353 11.015176689097302 0
		0 11.317699957390053 0
		-1.6271953887402353 11.015176689097302 0
		-3.0066653212337755 10.093444664521044 0
		-3.928397345810033 8.7139747320275038 0
		-4.231019829012598 7.0867791428246774 0
		-3.928397345810033 5.4595839545470337 0
		-3.0066653212337755 4.0801140220534933 0
		-1.6271953887402353 3.1583819974772358 0
		1.6896185752834155e-07 2.8558587291844848 -0.0287694891343141
		1.6271953887402353 3.1583819974772358 0
		3.0066653212337755 4.0801140220534933 0
		3.928397345810033 5.4595839545470337 0
		4.231019829012598 7.0867793432872688 0
		3.9089512234865142 7.0977892501764313 -1.6191051215228414
		2.9917830847616953 7.1071231621147835 -2.9917178863923888
		1.6191419727750578 7.1133598680399182 -3.9088661821352453
		1.6896185752834155e-07 7.1155499663062667 -4.2309262835262027
		-1.6191419727750578 7.1133598680399182 -3.9088661821352453
		-2.9917830847616953 7.1071231621147835 -2.9917178863923888
		-3.9089512234865142 7.0977892501764313 -1.6191051215228414
		-4.231019829012598 7.0867791428246774 0
		-3.9089512234865142 7.0757690395384669 1.6190994520994235
		-2.9917830847616953 7.0664351276001147 2.9917150516806794
		-1.6191419727750578 7.06019842167498 3.9088605127118274
		1.6896185752834155e-07 7.0580084367970999 4.230920614102784
		1.6191419727750578 7.06019842167498 3.9088605127118274
		2.9917830847616953 7.0664351276001147 2.9917150516806794
		3.9089512234865142 7.0757690395384669 1.6190994520994235
		4.231019829012598 7.0867793432872688 0
		3.9089512234865142 7.0977892501764313 -1.6191051215228414
		2.9917830847616953 7.1071231621147835 -2.9917178863923888
		1.6191419727750578 7.1133598680399182 -3.9088661821352453
		1.6896185752834155e-07 7.1155499663062667 -4.2309262835262027
		1.6896185752834155e-07 8.732462721793393 -3.897853327145905
		1.6896185752834155e-07 10.098836286191501 -2.971373160457127
		1.6896185752834155e-07 11.006649876276727 -1.5925240298278502
		0 11.317699957390053 0
		1.6896185752834155e-07 10.984629835721465 1.6456833785061233
		1.6896185752834155e-07 10.058149669032687 3.0120541081925243
		1.6896185752834155e-07 8.6793033731151183 3.9198705329894583
		1.6896185752834155e-07 7.0580084367970999 4.230920614102784
		1.6896185752834155e-07 5.4410959647811454 3.8978476577224876
		1.6896185752834155e-07 4.0747224003830365 2.9713674910337091
		1.6896185752834155e-07 3.1669088102978105 1.5925183604044322
		1.6896185752834155e-07 2.8558587291844848 -0.0287694891343141
		1.6896185752834155e-07 3.1889288508530722 -1.6456890479295414
		1.6896185752834155e-07 4.1154090175418512 -3.0120597776159417
		1.6896185752834155e-07 5.4942553134594183 -3.9198762024128766
		1.6896185752834155e-07 7.1155499663062667 -4.2309262835262027
		;
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "98D8D2F4-416C-3039-58A5-29B1BC522071";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "73F503B2-4529-1966-04FA-F4831EBA82A5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 3.0814879110195774e-33 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "B262CB92-453B-AAE4-3ABB-F3B935A7338F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722982 0.19538001629758384 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "DDF8B90F-4532-06BB-36B4-6A8A6DFC0DE8";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "187DBEA0-4687-47E5-41A1-5F9C83FFBAC1";
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722985 0.19538001629756963 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "91EDD930-493E-0DCA-FC4C-0FB938805F4A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "1C823A55-45BC-C390-06E4-16808F0606B8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "7645CB16-4E02-0F69-4800-C3992585F8B5";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr ".r" -type "double3" 0 57.793162816220232 89.999999999999986 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "9B6C7257-42B4-BF7B-08B2-A793D5FD49AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.3092638912203256e-14 ;
	setAttr ".r" -type "double3" 0 -23.061720469442346 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755417 5.3991650363334001e-17 0.53297724966496496 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "5544AE81-4E47-E1C6-9C0F-23AF30FF3CF0";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "884D0AA0-4B1B-B75D-085A-D8A4C24747DC";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "78F0943B-47FD-86EA-F303-29816FA515AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode nurbsCurve -n "rtLegQd0_outRollG_ctlShape1" -p "rtLegQd0_outRollG_ctl";
	rename -uid "F6CADF49-4A2C-6F2E-13D7-27B777E7F68E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode nurbsCurve -n "rtLegQd0_toeRollG_ctlShape1" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "E29F399E-41CF-EEFB-D0CB-D4956FB55031";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode nurbsCurve -n "rtLegQd0_heelRollG_ctlShape1" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "E3AA32E4-47C5-5B82-C15F-0CA727B4801B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.43849447186589974
		-0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 -0.43849447186589974
		0 0.43849447186589974 0
		-0.43849447186589974 0 0
		0 -0.43849447186589974 0
		0.43849447186589974 0 0
		0 0 0.43849447186589974
		0 -0.43849447186589974 0
		0 0 -0.43849447186589974
		;
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_IK";
	rename -uid "6E2E1CB8-4113-52B9-1593-A29131137974";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "0E016DEF-4905-2F54-E7DB-2183D183D5AE";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.2407251905110073 43.873960135386085 -23.304201913310798
		-11.666222281262513 38.371445997601938 -1.9846335679030174
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "83319E30-4CE8-4CE6-5BD2-6DB111268514";
	setAttr ".t" -type "double3" -9.1257019996961457 8.3444289887369543 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "12769659-40CB-9EBD-9617-E88391B06095";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "88D76BF0-4B1F-6956-DCB5-87A258F9B9A6";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_ikcShape1" -p "rtLegQd0_ikc";
	rename -uid "B4A6D496-4ECB-9EE7-FCC2-329AF4A709E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.3150845074654463 -8.3444289887369525 5.3150845074654516
		5.212956649021363 -8.3444289887369525 6.3520060555698201
		4.9104977900151585 -8.3444289887369525 7.349079290092841
		4.4193312547775596 -8.3444289887369525 8.2679872457969079
		3.7583322978083786 -8.3444289887369525 9.073416805273828
		2.9529027383314554 -8.3444289887369525 9.7344157622430121
		2.0339947826273894 -8.3444289887369525 10.22558229748061
		1.0369215481043679 -8.3444289887369525 10.528041156486816
		-6.2050152136409241e-16 -8.3444289887369525 10.630169014930898
		-1.0369215481043692 -8.3444289887369525 10.528041156486816
		-2.0339947826273908 -8.3444289887369525 10.22558229748061
		-2.9529027383314572 -8.3444289887369525 9.7344157622430121
		-3.7583322978083809 -8.3444289887369525 9.0734168052738298
		-4.4193312547775623 -8.3444289887369525 8.2679872457969079
		-4.9104977900151621 -8.3444289887369525 7.349079290092841
		-5.2129566490213675 -8.3444289887369525 6.3520060555698192
		-5.3150845074654498 -8.3444289887369525 5.3150845074654498
		-5.2129566176750446 -6.7527694702479097 5.3150845074654507
		-4.9104977662799492 -5.2029319768480669 5.3150845074654507
		-4.4193313551929201 -3.8608674687568332 5.3150845074654507
		-3.7583322968480091 -2.7929627073443273 5.3150845074654507
		-2.9529026741659687 -1.9887953915100711 5.3150845074654507
		-2.0339947178693829 -1.497628980423042 5.3150845074654507
		-1.036921525302694 -1.1951701290279466 5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375414 5.3150845074654507
		1.036921525302694 -1.1951701290279466 5.3150845074654507
		2.0339947178693829 -1.497628980423042 5.3150845074654507
		2.9529026741659687 -1.9887953915100711 5.3150845074654507
		3.7583322968480091 -2.7929627073443273 5.3150845074654507
		4.4193313551929201 -3.8608674687568332 5.3150845074654507
		4.9104977662799492 -5.2029319768480669 5.3150845074654507
		5.2129566176750446 -6.7527694702479097 5.3150845074654507
		5.3150845074654507 -8.3444289887369525 5.3150845074654507
		5.3150845074654507 -8.3444289887369543 -4.9961794370175232
		5.3150845074654507 -8.025523918289025 -5.3150845074654507
		5.2129566176750446 -6.7527694702479097 -5.3150845074654507
		4.9104977662799492 -5.2029319768480669 -5.3150845074654507
		4.4193313551929201 -3.8608674687568332 -5.3150845074654507
		3.7583322968480091 -2.7929627073443273 -5.3150845074654507
		2.9529026741659687 -1.9887953915100711 -5.3150845074654507
		2.0339947178693829 -1.497628980423042 -5.3150845074654507
		1.036921525302694 -1.1951701290279466 -5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375414 -5.3150845074654507
		-1.036921525302694 -1.1951701290279466 -5.3150845074654507
		-2.0339947178693829 -1.497628980423042 -5.3150845074654507
		-2.9529026741659687 -1.9887953915100711 -5.3150845074654507
		-3.7583322968480091 -2.7929627073443273 -5.3150845074654507
		-4.4193313551929201 -3.8608674687568332 -5.3150845074654507
		-4.9104977662799492 -5.2029319768480669 -5.3150845074654507
		-5.2129566176750446 -6.7527694702479097 -5.3150845074654507
		-5.3150845074654507 -8.025523918289025 -5.3150845074654507
		-5.3150845074654507 -8.3444289887369525 -4.9961794370175232
		-5.3150845074654507 -8.3444289887369525 5.3150845074654507
		;
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "16436E93-411F-687E-13EF-A882D32F17AA";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShape" -p "rtLegQd0_ikc_gmb";
	rename -uid "0009491D-4907-C4F0-8F20-55A7BF01BAF7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0630169014930893 0.72513867069126903 
		-0.53150845575334404 -1.0425913298042726 0.72513867069126903 -0.73889276537421722 
		-0.98209955800303161 0.72513867069126903 -0.93830741227882175 -0.88386625095551175 
		0.72513867069126903 -1.1220890034196351 -0.75166645956167555 0.72513867069126903 
		-1.2831749153150191 -0.59058054766629109 0.72513867069126903 -1.4153747067088549 
		-0.40679895652547771 0.72513867069126903 -1.5136080137563752 -0.20738430962087351 
		0.72513867069126903 -1.5740997855576175 1.2410030427281848e-16 0.72513867069126903 
		-1.5945253572464324 0.20738430962087384 0.72513867069126903 -1.5740997855576175 0.40679895652547815 
		0.72513867069126903 -1.5136080137563752 0.59058054766629153 0.72513867069126903 -1.4153747067088549 
		0.75166645956167599 0.72513867069126903 -1.2831749153150191 0.88386625095551219 0.72513867069126903 
		-1.1220890034196351 0.98209955800303206 0.72513867069126903 -0.93830741227882175 
		1.0425913298042735 0.72513867069126903 -0.73889276537421722 1.0630169014930901 0.72513867069126903 
		-0.53150845575334404 1.0425913235350084 0.40680676699345941 -0.53150845575334404 
		0.98209955325598974 0.096839268313491544 -0.53150845575334404 0.88386627103858384 
		-0.17157363330475484 -0.53150845575334404 0.75166645936960164 -0.38515458558725646 
		-0.53150845575334404 0.59058053483319384 -0.54598804875410778 -0.53150845575334404 
		0.40679894357387658 -0.64422133097151324 -0.53150845575334404 0.20738430506053873 
		-0.70471310125053233 -0.53150845575334404 -6.5091012319135202e-17 -0.72513867920861363 
		-0.53150845575334404 -0.20738430506053873 -0.70471310125053233 -0.53150845575334404 
		-0.40679894357387658 -0.64422133097151324 -0.53150845575334404 -0.59058053483319384 
		-0.54598804875410778 -0.53150845575334404 -0.75166645936960164 -0.38515458558725646 
		-0.53150845575334404 -0.88386627103858384 -0.17157363330475484 -0.53150845575334404 
		-0.98209955325598974 0.096839268313491544 -0.53150845575334404 -1.0425913235350084 
		0.40680676699345941 -0.53150845575334404 -1.0630169014930901 0.72513867069126903 
		-0.53150845575334404 -1.0630169014930901 0.72513867069126903 1.5307443331432506 -1.0630169014930901 
		0.66135765660168211 1.5945253472328362 -1.0425913235350084 0.40680676699345941 1.5945253472328362 
		-0.98209955325598974 0.096839268313491544 1.5945253472328362 -0.88386627103858384 
		-0.17157363330475484 1.5945253472328362 -0.75166645936960164 -0.38515458558725646 
		1.5945253472328362 -0.59058053483319384 -0.54598804875410778 1.5945253472328362 -0.40679894357387658 
		-0.64422133097151324 1.5945253472328362 -0.20738430506053873 -0.70471310125053233 
		1.5945253472328362 -6.5091012319135202e-17 -0.72513867920861363 1.5945253472328362 
		0.20738430506053873 -0.70471310125053233 1.5945253472328362 0.40679894357387658 -0.64422133097151324 
		1.5945253472328362 0.59058053483319384 -0.54598804875410778 1.5945253472328362 0.75166645936960164 
		-0.38515458558725646 1.5945253472328362 0.88386627103858384 -0.17157363330475484 
		1.5945253472328362 0.98209955325598974 0.096839268313491544 1.5945253472328362 1.0425913235350084 
		0.40680676699345941 1.5945253472328362 1.0630169014930901 0.66135765660168211 1.5945253472328362 
		1.0630169014930901 0.72513867069126903 1.5307443331432506 1.0630169014930901 0.72513867069126903 
		-0.53150845575334404;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "CA71692C-4473-A4EE-A706-A9A1DBA0D730";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.3150845074654463 -8.3444289887369525 5.3150845074654516
		5.212956649021363 -8.3444289887369525 6.3520060555698201
		4.9104977900151585 -8.3444289887369525 7.349079290092841
		4.4193312547775596 -8.3444289887369525 8.2679872457969079
		3.7583322978083786 -8.3444289887369525 9.073416805273828
		2.9529027383314554 -8.3444289887369525 9.7344157622430121
		2.0339947826273894 -8.3444289887369525 10.22558229748061
		1.0369215481043679 -8.3444289887369525 10.528041156486816
		-6.2050152136409241e-16 -8.3444289887369525 10.630169014930898
		-1.0369215481043692 -8.3444289887369525 10.528041156486816
		-2.0339947826273908 -8.3444289887369525 10.22558229748061
		-2.9529027383314572 -8.3444289887369525 9.7344157622430121
		-3.7583322978083809 -8.3444289887369525 9.0734168052738298
		-4.4193312547775623 -8.3444289887369525 8.2679872457969079
		-4.9104977900151621 -8.3444289887369525 7.349079290092841
		-5.2129566490213675 -8.3444289887369525 6.3520060555698192
		-5.3150845074654498 -8.3444289887369525 5.3150845074654498
		-5.2129566176750446 -6.7527694702479097 5.3150845074654507
		-4.9104977662799492 -5.2029319768480669 5.3150845074654507
		-4.4193313551929201 -3.8608674687568332 5.3150845074654507
		-3.7583322968480091 -2.7929627073443273 5.3150845074654507
		-2.9529026741659687 -1.9887953915100711 5.3150845074654507
		-2.0339947178693829 -1.497628980423042 5.3150845074654507
		-1.036921525302694 -1.1951701290279466 5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375414 5.3150845074654507
		1.036921525302694 -1.1951701290279466 5.3150845074654507
		2.0339947178693829 -1.497628980423042 5.3150845074654507
		2.9529026741659687 -1.9887953915100711 5.3150845074654507
		3.7583322968480091 -2.7929627073443273 5.3150845074654507
		4.4193313551929201 -3.8608674687568332 5.3150845074654507
		4.9104977662799492 -5.2029319768480669 5.3150845074654507
		5.2129566176750446 -6.7527694702479097 5.3150845074654507
		5.3150845074654507 -8.3444289887369525 5.3150845074654507
		5.3150845074654507 -8.3444289887369543 -4.9961794370175232
		5.3150845074654507 -8.025523918289025 -5.3150845074654507
		5.2129566176750446 -6.7527694702479097 -5.3150845074654507
		4.9104977662799492 -5.2029319768480669 -5.3150845074654507
		4.4193313551929201 -3.8608674687568332 -5.3150845074654507
		3.7583322968480091 -2.7929627073443273 -5.3150845074654507
		2.9529026741659687 -1.9887953915100711 -5.3150845074654507
		2.0339947178693829 -1.497628980423042 -5.3150845074654507
		1.036921525302694 -1.1951701290279466 -5.3150845074654507
		3.2545506159567601e-16 -1.0930422392375414 -5.3150845074654507
		-1.036921525302694 -1.1951701290279466 -5.3150845074654507
		-2.0339947178693829 -1.497628980423042 -5.3150845074654507
		-2.9529026741659687 -1.9887953915100711 -5.3150845074654507
		-3.7583322968480091 -2.7929627073443273 -5.3150845074654507
		-4.4193313551929201 -3.8608674687568332 -5.3150845074654507
		-4.9104977662799492 -5.2029319768480669 -5.3150845074654507
		-5.2129566176750446 -6.7527694702479097 -5.3150845074654507
		-5.3150845074654507 -8.025523918289025 -5.3150845074654507
		-5.3150845074654507 -8.3444289887369525 -4.9961794370175232
		-5.3150845074654507 -8.3444289887369525 5.3150845074654507
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd0_smart_ctl_ofs" -p "rtLegQd0_ikc_gmb";
	rename -uid "169184AE-407A-6C2B-1A94-C797374E879A";
	setAttr ".t" -type "double3" -6.9984498196618006e-09 -8.3444289887369578 7.8719529438819684 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "73A05DCE-4DF5-AA64-41B0-278FCD7E7340";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd0_smart_ctlShape1" -p "rtLegQd0_smart_ctl";
	rename -uid "3D879DEE-4805-576C-D5AC-A6AFA0936A22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.4454614810189481 5.0193151557152658e-17 -2.4454614810189508
		1.3539676834624798e-16 7.0983835670373612e-17 -2.2111970315117202
		-2.4454614810189481 5.0193151557152628e-17 -2.4454614810189494
		-2.2111970315117269 -2.8970820182392988e-32 -8.5860181061589996e-16
		-2.4454614810189481 -5.0193151557152646e-17 2.4454614810189481
		-2.2149711895342549e-16 -7.0983835670373673e-17 2.2111970315117224
		2.4454614810189481 -5.0193151557152628e-17 2.4454614810189494
		2.2111970315117269 -4.233067536590167e-32 -4.4243280757158421e-16
		2.4454614810189481 5.0193151557152658e-17 -2.4454614810189508
		1.3539676834624798e-16 7.0983835670373612e-17 -2.2111970315117202
		-2.4454614810189481 5.0193151557152628e-17 -2.4454614810189494
		;
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "1C936F06-4A32-8631-F91B-49A87BEC83E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "5B78162F-4A35-2B69-7196-369CE6B25D81";
	setAttr ".t" -type "double3" -11.666222281262513 38.371445997601946 -1.9846335679030154 ;
	setAttr ".r" -type "double3" 14.383137188892622 -6.4905529621657241 -1.0003349776607069e-16 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "A0A3F387-4DAB-30CE-B526-BFB66A46891C";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "80C647BD-4B56-CA8A-CD6D-CB82B7F3266D";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -1.4210854715202004e-14 -5.3290705182007514e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_pvcShape1" -p "rtLegQd0_pvc";
	rename -uid "33B6B19B-4D2B-A2EA-795C-93932F7D811D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.753977887463599
		-1.753977887463599 0 0
		0 0 -1.753977887463599
		1.753977887463599 0 0
		0 0 1.753977887463599
		0 1.753977887463599 0
		1.753977887463599 0 0
		0 0 -1.753977887463599
		0 1.753977887463599 0
		-1.753977887463599 0 0
		0 -1.753977887463599 0
		1.753977887463599 0 0
		0 0 1.753977887463599
		0 -1.753977887463599 0
		0 0 -1.753977887463599
		;
createNode transform -n "rtLegQd0_extraRollG_ofs_loc" -p "rtLegQd0_IK";
	rename -uid "0DB44766-4DC9-4C65-1EC6-C7A3993F9979";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -5.2132423208352767 15.26905015400752 83.013755051389126 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "6272A55E-4D07-300F-CF17-D5A66AE57B63";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "9DF9C3B7-4413-BD8D-B08D-FDA9C22EB563";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_settingShape1" -p "rtLegQd0_setting";
	rename -uid "E8D48BD6-4DEA-CBDB-6E7F-93AB415F506B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.5433896716436344 3.5433896716436344 8.8212619401994775e-17
		-3.4753044117833634 3.5433896716436344 -0.69128101686846266
		-3.2736651775199666 3.5433896716436344 -1.3559965630605819
		-2.9462209034619469 3.5433896716436344 -1.9686017827773128
		-2.5055548645653394 3.5433896716436344 -2.5055548645653394
		-1.9686017827773128 3.5433896716436344 -2.9462209034619469
		-1.3559965630605819 3.5433896716436344 -3.2736651775199666
		-0.69128101686846266 3.5433896716436344 -3.4753044117833634
		2.1697004106378403e-16 3.5433896716436344 -3.5433896716436344
		0.69128101686846266 3.5433896716436344 -3.4753044117833634
		1.3559965630605819 3.5433896716436344 -3.2736651775199666
		1.9686017827773128 3.5433896716436344 -2.9462209034619469
		2.5055548645653394 3.5433896716436344 -2.5055548645653394
		2.9462209034619469 3.5433896716436344 -1.9686017827773128
		3.2736651775199666 3.5433896716436344 -1.3559965630605819
		3.4753044117833634 3.5433896716436344 -0.69128101686846266
		3.5433896716436344 3.5433896716436344 -3.8325906054427622e-16
		3.4085275935437864 3.5433896716436344 -0.67799823928979441
		3.0244722681044869 3.5433896716436344 -1.2527774322826697
		2.4496929906306186 3.5433896716436344 -1.6368325887599833
		1.7716948358218172 3.5433896716436344 -1.7716948358218172
		1.0936965965320227 3.5433896716436344 -1.6368325887599833
		0.5189174035391475 3.5433896716436344 -1.2527774322826697
		0.13486224706183375 3.5433896716436344 -0.67799823928979441
		0 3.5433896716436344 -3.8325906054427622e-16
		-0.13486224706183375 3.5433896716436344 0.67799823928979441
		-0.5189174035391475 3.5433896716436344 1.2527774322826697
		-1.0936965965320227 3.5433896716436344 1.6368325887599833
		-1.7716948358218172 3.5433896716436344 1.7716948358218172
		-2.4496929906306186 3.5433896716436344 1.6368325887599833
		-3.0244722681044869 3.5433896716436344 1.2527774322826697
		-3.4085275935437864 3.5433896716436344 0.67799823928979441
		-3.5433896716436344 3.5433896716436344 8.8212619401994775e-17
		-3.4753044117833634 3.5433896716436344 0.69128101686846266
		-3.2736651775199666 3.5433896716436344 1.3559965630605819
		-2.9462209034619469 3.5433896716436344 1.9686017827773128
		-2.5055548645653394 3.5433896716436344 2.5055548645653394
		-1.9686017827773128 3.5433896716436344 2.9462209034619469
		-1.3559965630605819 3.5433896716436344 3.2736651775199666
		-0.69128101686846266 3.5433896716436344 3.4753044117833634
		-4.1366768099767081e-16 3.5433896716436344 3.5433896716436344
		0.69128101686846266 3.5433896716436344 3.4753044117833634
		1.3559965630605819 3.5433896716436344 3.2736651775199666
		1.9686017827773128 3.5433896716436344 2.9462209034619469
		2.5055548645653394 3.5433896716436344 2.5055548645653394
		2.9462209034619469 3.5433896716436344 1.9686017827773128
		3.2736651775199666 3.5433896716436344 1.3559965630605819
		3.4753044117833634 3.5433896716436344 0.69128101686846266
		3.5433896716436344 3.5433896716436344 -3.8325906054427622e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "7D733C87-4AFA-AB84-7801-0FBA1A411204";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "B82DB96A-446C-0196-938F-C185AA86D8DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.630169014930903 10.630169014930903 10.630169014930903 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "83AB5FB8-4BC9-DDD5-71F9-BD93FB6EFF26";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "11E0972D-441B-5EB2-FC92-53B4DB946E21";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "2A09A522-46F1-59E0-D14B-1BA9109EF463";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1246322020435211 23.168291777141256 84.517522921565174 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "4FC5E46B-4897-FD5C-C7D3-E48F43820B38";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823368 -51.236978489001558 -2.4423350360292724 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "5CB52E59-4A5F-22D2-EB86-16B68780D08D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921303 0 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "EA0E80B2-4A91-A766-E063-F189849EB517";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006483 3.6815551140188822 4.4718086105368702 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "D54BD3EF-4AAA-1F30-ED27-998647574182";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871374 0 ;
	setAttr ".radi" 1.3742356314627873;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "D574636A-4C26-E915-0C70-EEA8E50A0335";
	setAttr ".t" -type "double3" -4.3708982607861486 6.9984595896244173e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.837977704564288 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "AA01235D-4F27-9482-C565-2A9CD80AA00C";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "20787E3A-44ED-84AC-38FF-29A5A0814C33";
	setAttr ".t" -type "double3" -4.3708982607861486 6.9984587014459976e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.83797770456427 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "BEEEDFBE-4FF0-7505-001D-199642D754CA";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "3177B324-4941-217E-B6A6-0CAB0D0C36E6";
	setAttr ".t" -type "double3" -4.3708982607861468 6.9984587014459976e-09 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "5CFCB27A-4790-403C-11F7-D2944862DE2A";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 0 1.2722218725854067e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.6501062426265088e-14 -6.361109362927032e-15 3.0955800999939308e-14 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "D68D4882-4EFF-ECAE-2B2E-06A7ACFFEA80";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157366 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 1.3742356314627873;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "F654B87A-4125-A7B2-CF32-74A9A887FDE6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "F25F8604-43F5-0B3D-2C29-55A36359DF9C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "53823AF2-458F-40BD-7827-2E9CE9D84B17";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		-8.4268321557924051e-32 6.4317772609213764 -2.497441667570356e-15
		-1.4599837383942449e-16 7.1131895176811017 7.1131895176811017
		-2.0647288036813191e-16 6.4427552712038091e-16 6.4317772609213639
		-1.4599837383942444e-16 -7.1131895176811017 7.1131895176811053
		-1.2312854593139278e-31 -6.4317772609213764 -1.2869180044435255e-15
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "83404779-4176-5CA3-491B-58BDC46BEEB4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "F8EEEBCE-45F2-3317-FDD0-C2AB86822B46";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "E1578F13-4481-3BE0-E441-289BAF77F8F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		-8.4268321557924051e-32 6.4317772609213764 -2.497441667570356e-15
		-1.4599837383942449e-16 7.1131895176811017 7.1131895176811017
		-2.0647288036813191e-16 6.4427552712038091e-16 6.4317772609213639
		-1.4599837383942444e-16 -7.1131895176811017 7.1131895176811053
		-1.2312854593139278e-31 -6.4317772609213764 -1.2869180044435255e-15
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "4CF02A7E-4BE3-7DC9-636B-BC8983DB6CD0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "C4342B40-4518-F2E1-449D-B1B66A631770";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_palm_fkcShape1" -p "rtLegQd1_palm_fkc";
	rename -uid "12A23420-4B1B-1E5D-A4F8-1084A1CF7019";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		-8.4268321557924051e-32 6.4317772609213764 -2.497441667570356e-15
		-1.4599837383942449e-16 7.1131895176811017 7.1131895176811017
		-2.0647288036813191e-16 6.4427552712038091e-16 6.4317772609213639
		-1.4599837383942444e-16 -7.1131895176811017 7.1131895176811053
		-1.2312854593139278e-31 -6.4317772609213764 -1.2869180044435255e-15
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "7756B8BF-4763-C645-69DD-A3AD340C0E1B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "C1733C21-4D87-B144-B0A0-60B5C456905B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "94630B57-42AD-D4F4-F0AA-9FBD30F45E14";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		-8.4268321557924051e-32 6.4317772609213764 -2.497441667570356e-15
		-1.4599837383942449e-16 7.1131895176811017 7.1131895176811017
		-2.0647288036813191e-16 6.4427552712038091e-16 6.4317772609213639
		-1.4599837383942444e-16 -7.1131895176811017 7.1131895176811053
		-1.2312854593139278e-31 -6.4317772609213764 -1.2869180044435255e-15
		1.4599837383942454e-16 -7.1131895176811017 -7.1131895176811097
		2.0647288036813168e-16 -3.9383277177080392e-16 -6.4317772609213586
		1.4599837383942444e-16 7.1131895176811017 -7.1131895176811053
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "62EB1DAE-4516-68F4-377A-A6B256886E90";
	setAttr ".t" -type "double3" 2.4868995751603507e-14 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 35.248105269871381 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "98A2CD91-4D27-D86E-31F7-73AB79738828";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "85ED2894-4422-C490-B0DA-B1AC3A520F75";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "D076241F-46DF-D72B-6DEF-6BB4F93EA212";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "FE32B88B-4EAC-A72C-1C5B-D98C24960939";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "9316959D-4D7D-9A66-D1DC-C880AF494433";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.5565947588405509 13.742356314627873 3.5565947588405549
		-1.9691638588540196e-16 13.742356314627873 3.2158886304606793
		3.5565947588405509 13.742356314627873 3.5565947588405527
		3.2158886304606882 13.742356314627873 1.248720833785178e-15
		3.5565947588405509 13.742356314627873 -3.5565947588405509
		3.2213776356019045e-16 13.742356314627873 -3.215888630460682
		-3.5565947588405509 13.742356314627873 -3.5565947588405527
		-3.2158886304606882 13.742356314627873 6.4345900222176273e-16
		-3.5565947588405509 13.742356314627873 3.5565947588405549
		-1.9691638588540196e-16 13.742356314627873 3.2158886304606793
		3.5565947588405509 13.742356314627873 3.5565947588405527
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "04F26B2F-4DC6-45FF-37DD-7D8D5B022FEA";
	setAttr ".t" -type "double3" -14.756214514549193 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "757FD60E-4E92-2D62-C4E6-CC832EADF06A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "033B2B86-42D2-0283-772E-69857099C8D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		25.766918089927263 0 -1.7177945393284844
		25.766918089927263 0 1.7177945393284837
		24.049123550598779 0 2.576691808992726
		22.331329011270295 0 1.7177945393284844
		22.331329011270295 0 -1.7177945393284837
		25.766918089927263 0 -1.7177945393284844
		22.331329011270295 0 -1.7177945393284837
		22.331329011270295 0 1.7177945393284844
		24.049123550598779 0 2.576691808992726
		25.766918089927263 0 1.7177945393284837
		;
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "B617E811-43A8-9344-C45A-99A9DF1BEEFE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 151.65839923220418 -23.487200375563962 4.8419983262070669 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "693A85A9-4FBE-77D1-D382-C1BFFB3EF8BC";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -62.626657879089947 8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.180554681463516e-15 -5.5659706925611551e-15 -9.6907525450841528e-15 ;
	setAttr ".radi" 2.0613534471941808;
createNode ikEffector -n "effector27" -p "rtLegQd1_autoAim";
	rename -uid "6AFFE553-4D44-95C0-5134-4C80ED6C9AD0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "55DD4EAD-4928-3587-37FF-AD9E63EB385D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 28.341600767795448 23.487200375563962 -175.15800167379294 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "9CA27F15-440E-8BB3-F57E-5490383088BF";
	setAttr ".t" -type "double3" -7.1263478866606649 6.0415997908613477 24.07862522223461 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "5B5C20A7-4C38-02C5-E87E-10AB1C44707C";
	setAttr ".t" -type "double3" 4.1523056992787133e-08 -3.569541753267353 2.5225249224515913 ;
	setAttr ".r" -type "double3" 0 59.086082974435662 90 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "E6113578-4E70-12F5-F9E7-379D73632360";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "E94DED64-4670-7FE0-80D8-B983E883930A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "DF287C6F-44E3-041B-AE4C-A59C4E874617";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.2999186919712268e-17 -3.5565947588405509 -3.5565947588405549
		1.0323644018406584e-16 -1.9691638588540196e-16 -3.2158886304606793
		7.2999186919712218e-17 3.5565947588405509 -3.5565947588405527
		-4.2134160778962025e-32 3.2158886304606882 -1.248720833785178e-15
		-7.2999186919712243e-17 3.5565947588405509 3.5565947588405509
		-1.0323644018406595e-16 3.2213776356019045e-16 3.215888630460682
		-7.2999186919712218e-17 -3.5565947588405509 3.5565947588405527
		-6.1564272965696392e-32 -3.2158886304606882 -6.4345900222176273e-16
		7.2999186919712268e-17 -3.5565947588405509 -3.5565947588405549
		1.0323644018406584e-16 -1.9691638588540196e-16 -3.2158886304606793
		7.2999186919712218e-17 3.5565947588405509 -3.5565947588405527
		;
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "CDC94672-4295-0867-2509-008A2E9FBE4A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157224 2.6645352591003757e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118909 0 0.51374965908607351 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "5EA6C31D-4BB0-5938-1F42-589A5A7BEE9B";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "2D759CA3-4D6F-0E90-2960-02BB0B533930";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "D7DA26F6-4F48-F8EB-3ABB-4E85F2FF1AF9";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "32877282-4363-8FA6-024C-2C9FBE790F38";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1246322020435211 23.168291777141256 84.517522921565174 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "D22B0D6E-4936-2936-3FB0-86B579A47A82";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.7562145145492 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 6.8266803694267515e-21 7.5403246776668666e-06 -8.762920236923023e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823368 -51.236978489001558 -2.4423350360292724 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "E1C1B092-4FF4-345D-1983-F7994C44E923";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.772275812575902 1.4210854715202004e-14 1.5987211554602254e-14 ;
	setAttr ".r" -type "double3" -3.0568845630598284e-21 -1.4863373895098215e-05 1.8823661790707477e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921303 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "24BA4B3C-4226-6120-BD6C-EA9FF631C7E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.274225002917767 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 6.0202790127178387e-07 -8.0373557807760469e-06 -2.5909295098053799e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006483 3.6815551140188822 4.4718086105368702 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "A6E1052B-43E8-CA25-63F0-B48AFB0A49EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.224783969347435 -0.61320485644302103 1.1618537823975288 ;
	setAttr ".r" -type "double3" 3.8725372768458044e-07 -6.200512522215788e-16 3.1266862718850077e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871374 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "FBD5C3A6-47F6-9F81-CFCE-AE99F10AD1EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.3708982607861522 6.9984631423380961e-09 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 1.7666950755813038e-07 -2.4154968091540873e-22 -3.7240494448988991e-31 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.837977704564263 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "96B783CA-437B-002A-A987-319CC21E942F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157366 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode ikEffector -n "effector25" -p "rtLegQd1_ball_ik";
	rename -uid "83CE962C-46DC-B42A-DFF8-CE88A08959C1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector24" -p "rtLegQd1_digit_ik";
	rename -uid "6BC826C9-4201-E5AF-50D2-4BA68F9E9131";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector23" -p "rtLegQd1_palm_ik";
	rename -uid "45AA6165-4D5F-ABB1-EB3F-4F832D4547DF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector22" -p "rtLegQd1_lwr_ik";
	rename -uid "C6C915B6-4C71-A2F5-6F5B-A29A3EF7EEF1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "BDAF8221-4AD1-74A5-4AB4-23893FF661A4";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -14.7562145145492 1.2434497875801753e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 88.416483961928165 -36.064431456154495 5.866975113504691 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "9F92CB62-4FBB-512D-7C9E-3B9F893C8C5E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -32.719341278076172 -1.0658141036401503e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.180554681463516e-15 -5.5659706925611551e-15 -9.6907525450841528e-15 ;
createNode ikEffector -n "effector26" -p "rtLegQd1_softJ";
	rename -uid "2F21E598-4E83-4A80-4D04-E9964569A213";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "EBFDBA74-43D0-A868-510A-E2959EDEF018";
	setAttr ".t" -type "double3" -20.717375276182729 -21.027952737168189 -7.8186631536675826 ;
	setAttr ".r" -type "double3" -177.52096886001954 70.271185714248801 77.099565117165625 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "7222E14F-4B32-78B3-EA60-A39046E8BD1C";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "9031001F-4D6A-6D8A-0222-4DB648605413";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "1C467E49-4A33-26D2-994B-969254168AFA";
	setAttr ".t" -type "double3" 0.61320484944455167 -23.266382580114154 2.7857744119883705 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "A72B9718-48E0-4F70-F756-9C8FB220BC18";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "6927A550-4382-D76E-82D3-48A9FFC33045";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "D8995E26-4DE6-C002-E7D8-1D81387F7441";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "0755EA73-45BF-D507-DB4E-88B61CFE7E79";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "EB15F833-4794-03E9-39E1-4FBF1F4A713F";
	setAttr ".t" -type "double3" -1.9186890794618412 0 -3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "9A27C04A-44AB-5997-F3D1-02885B570104";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "0E5A905C-4162-CB0C-9F19-82BE2E22672C";
	setAttr ".t" -type "double3" 4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "E1872753-4B7E-9D13-CE27-B18EF5243064";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "73E71CB1-4AB7-0994-DD90-8E8518E9B8D8";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940076 -0.44514092909523484 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "06E69239-4E04-3D41-83B9-BE94087751FF";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "8F3491FE-48B2-8292-2972-468835923B17";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-4.2557200073578678e-17 6.1761663221820946 3.7568318753996546e-16
		-4.1107097380130104e-17 6.1998483803834388 0.1798822913340388
		-3.6855616052879372e-17 6.2692803656302685 0.34750589026231193
		-3.0092482593492376e-17 6.3797306717174775 0.49144754020367659
		-2.1278600036789339e-17 6.5236722397480156 0.6018979008981038
		-1.101461327098297e-17 6.6912958659798978 0.67132983153771542
		1.3032106612443991e-32 6.8711781573139366 0.69501178052462387
		1.101461327098297e-17 7.0510604486479753 0.67132983153771542
		2.1278600036789339e-17 7.2186840748798575 0.6018979008981038
		3.0092482593492376e-17 7.3626256429103956 0.49144754020367659
		3.6855616052879372e-17 7.4730763858553466 0.34750589026231193
		4.1107097380130104e-17 7.5425079342444343 0.1798822913340388
		4.2557200073578678e-17 7.5661899924457785 2.0537034722041286e-16
		4.1107097380130104e-17 7.5425079342444343 -0.1798822913340388
		3.6855616052879372e-17 7.4730763858553466 -0.34750589026231193
		3.0092482593492376e-17 7.3626256429103956 -0.49144754020367659
		2.1278600036789339e-17 7.2186840748798575 -0.6018979008981038
		1.101461327098297e-17 7.0510604486479753 -0.67132983153771542
		-3.1839917782773121e-32 6.8711781573139366 -0.69501178052462387
		-1.101461327098297e-17 6.6912958659798978 -0.67132983153771542
		-2.1278600036789339e-17 6.5236722397480156 -0.6018979008981038
		-3.0092482593492376e-17 6.3797306717174775 -0.49144754020367659
		-3.6855616052879372e-17 6.2692803656302685 -0.34750589026231193
		-4.1107097380130104e-17 6.1998483803834388 -0.1798822913340388
		-4.2557200073578678e-17 6.1761663221820946 3.7568318753996546e-16
		0 0 0
		;
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "35D0CEA6-48BC-EA4F-5C74-CDA3E9848D4A";
	setAttr ".t" -type "double3" 6.998460477802837e-09 3.5695405731727083 -2.5225248666003814 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "DC45CA0A-49ED-190A-B206-61A4CF07F4F3";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 172.87139862421796 -3.975693351829396e-16 90.749221190872092 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "1C28FFC6-40B2-9354-2434-B2B31613234D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "CA41EF99-4B6A-13FA-C6F0-7C8B07A13E6C";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "B6069F2D-46D9-C521-4ECB-AFA72CC27601";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		4.1022994542381435 6.8711781573139366 0
		3.8088836590274191 8.4488693582378769 0
		2.9151935005827041 9.7863716578966411 0
		1.5776912009239406 10.680061816341356 0
		0 10.973381415058839 0
		-1.5776912009239406 10.680061816341356 0
		-2.9151935005827041 9.7863716578966411 0
		-3.8088836590274191 8.4488693582378769 0
		-4.1022994542381435 6.8711779629500214 0
		-3.8088836590274191 5.2934869563899962 0
		-2.9151935005827041 3.9559846567312325 0
		-1.5776912009239406 3.0622944982865175 0
		1.6382152859995842e-07 2.7689748995690335 -0.027894234568489308
		1.5776912009239406 3.0622944982865175 0
		2.9151935005827041 3.9559846567312325 0
		3.8088836590274191 5.2934869563899962 0
		4.1022994542381435 6.8711781573139366 0
		3.7900291463522953 6.8818531096535391 -1.5698470640179925
		2.9007640265966401 6.8909030558599005 -2.9007008117582251
		1.5698827941440532 6.8969500223944182 -3.7899466922152323
		1.6382152859995842e-07 6.8990734912709204 -4.1022087546873749
		-1.5698827941440532 6.8969500223944182 -3.7899466922152323
		-2.9007640265966401 6.8909030558599005 -2.9007008117582251
		-3.7900291463522953 6.8818531096535391 -1.5698470640179925
		-4.1022994542381435 6.8711779629500214 0
		-3.7900291463522953 6.8605028201883611 1.5698415670755215
		-2.9007640265966401 6.8514528739819998 2.9006980632869892
		-1.5698827941440532 6.845405907447482 3.7899411952727613
		1.6382152859995842e-07 6.8432825485098299 4.102203257744903
		1.5698827941440532 6.845405907447482 3.7899411952727613
		2.9007640265966401 6.8514528739819998 2.9006980632869892
		3.7900291463522953 6.8605028201883611 1.5698415670755215
		4.1022994542381435 6.8711781573139366 0
		3.7900291463522953 6.8818531096535391 -1.5698470640179925
		2.9007640265966401 6.8909030558599005 -2.9007008117582251
		1.5698827941440532 6.8969500223944182 -3.7899466922152323
		1.6382152859995842e-07 6.8990734912709204 -4.1022087546873749
		1.6382152859995842e-07 8.4667948876354231 -3.7792688814655437
		1.6382152859995842e-07 9.7915992501864491 -2.8809750337014659
		1.6382152859995842e-07 10.67179441486515 -1.5440746492432633
		0 10.973381415058839 0
		1.6382152859995842e-07 10.650444290308245 1.5956167303214859
		1.6382152859995842e-07 9.752150442544167 2.9204183444012779
		1.6382152859995842e-07 8.4152528065572003 3.8006162575512135
		1.6382152859995842e-07 6.8432825485098299 4.102203257744903
		1.6382152859995842e-07 5.2755614269924509 3.7792633845230736
		1.6382152859995842e-07 3.9507570644414236 2.8809695367589949
		1.6382152859995842e-07 3.0705618997627231 1.5440691523007923
		1.6382152859995842e-07 2.7689748995690335 -0.027894234568489308
		1.6382152859995842e-07 3.0919120243196279 -1.5956222272639569
		1.6382152859995842e-07 3.9902058720837066 -2.9204238413437484
		1.6382152859995842e-07 5.3271035080706728 -3.8006217544936844
		1.6382152859995842e-07 6.8990734912709204 -4.1022087546873749
		;
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "75B0A232-46B6-1877-E776-8291810D5CFC";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "E29840B7-403C-4EB1-7B58-779109489F34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "F7A7F542-4E3C-F212-30D2-BE96441E4E75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.61320485644301748 17.224783969347435 -1.1618537823975217 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "EBE74A31-45A7-BCD8-A50A-D292D227FA9D";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "B485D3D0-4AD3-8E5D-19D4-45AA54EBC5EE";
	setAttr ".t" -type "double3" -0.61320485644301748 17.224783969347435 -1.1618537823975252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "D1BCCB72-4AC7-E810-F922-A88034D42404";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "DFD987B4-491B-752A-DD12-8CAD6834C64A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "4EDAECE5-497A-0E68-F42F-059DFCE92769";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940076 -0.44514092909523484 ;
	setAttr ".r" -type "double3" 0 59.086082974435655 90.000000000000057 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "EF53A831-4513-A2D6-929D-0B819A8C9A9D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -8.8817841970012523e-16 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 -23.837977704564263 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118898 -1.8261730389852504e-17 0.51374965908607373 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "A2EF4289-4E15-D1BC-0E7F-E6AF7DA08EE1";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "CDB36D76-4701-5095-8596-75946DCA5E48";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "1E305E67-42B9-426D-E213-1B8DA5AE12AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379984
		-0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0 0.42515414848379984 0
		-0.42515414848379984 0 0
		0 -0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 -0.42515414848379984 0
		0 0 -0.42515414848379984
		;
createNode nurbsCurve -n "rtLegQd1_outRollG_ctlShape1" -p "rtLegQd1_outRollG_ctl";
	rename -uid "735881CB-4D70-87DC-7559-E68B9FA1B965";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379984
		-0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0 0.42515414848379984 0
		-0.42515414848379984 0 0
		0 -0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 -0.42515414848379984 0
		0 0 -0.42515414848379984
		;
createNode nurbsCurve -n "rtLegQd1_toeRollG_ctlShape1" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "3EFD37C4-410E-9976-AE63-3F91E6AE0C57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379984
		-0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0 0.42515414848379984 0
		-0.42515414848379984 0 0
		0 -0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 -0.42515414848379984 0
		0 0 -0.42515414848379984
		;
createNode nurbsCurve -n "rtLegQd1_heelRollG_ctlShape1" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "DAC1C7C9-468C-27E4-5269-B18BAD3AF836";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379984
		-0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 -0.42515414848379984
		0 0.42515414848379984 0
		-0.42515414848379984 0 0
		0 -0.42515414848379984 0
		0.42515414848379984 0 0
		0 0 0.42515414848379984
		0 -0.42515414848379984 0
		0 0 -0.42515414848379984
		;
createNode transform -n "rtLegQd1_line_53" -p "rtLegQd1_IK";
	rename -uid "2B2A6F25-400B-FC89-550A-039A42B2264F";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "9997A234-4006-FC21-4F12-E7838C5F3337";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.376896918571461 40.452483146895943 22.320163433004716
		-15.474895217990181 39.660063022090782 5.0627737695142185
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "1BAAF4AF-4F79-9FFC-28C4-41A17395CB3B";
	setAttr ".t" -type "double3" -7.1263478381391474 6.0415986107667159 24.078625278085795 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "5407B8E0-4021-C782-0450-2AB930A5CD62";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "4F47A1BA-4200-DB72-40D0-18A945CACD03";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "legLock" -ln "legLock" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "legLockLen" -ln "legLockLen" -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".legLock";
	setAttr -k on ".legLockLen";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd1_ikcShape1" -p "rtLegQd1_ikc";
	rename -uid "EE040B18-4662-5AFB-B65E-14AF134013EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.1533836179854475 -6.041598610766715 5.1533836179854529
		5.0543627967912714 -6.041598610766715 6.1587588874908743
		4.7611056478357181 -6.041598610766715 7.1254981492101486
		4.2848818788926479 -6.041598610766715 8.0164501554690286
		3.643992502333175 -6.041598610766715 8.797376120318626
		2.8630665374835758 -6.041598610766715 9.4382654968781026
		1.9721145312246955 -6.041598610766715 9.914489265821171
		1.0053752695054206 -6.041598610766715 10.207746414776725
		-6.0162399499789135e-16 -6.041598610766715 10.3067672359709
		-1.0053752695054219 -6.041598610766715 10.207746414776725
		-1.9721145312246968 -6.041598610766715 9.914489265821171
		-2.8630665374835775 -6.041598610766715 9.4382654968781026
		-3.6439925023331772 -6.041598610766715 8.7973761203186278
		-4.2848818788926506 -6.041598610766715 8.0164501554690304
		-4.7611056478357217 -6.041598610766715 7.1254981492101486
		-5.054362796791275 -6.041598610766715 6.1587588874908734
		-5.1533836179854511 -6.041598610766715 5.1533836179854511
		-5.0543627663986017 -4.4983621718218423 5.153383617985452
		-4.7611056248226058 -2.995675405918468 5.153383617985452
		-4.2848819762530708 -1.6944405449180895 5.153383617985452
		-3.6439925014020229 -0.65902466483151301 5.153383617985452
		-2.8630664752701969 0.12067745763121707 5.153383617985452
		-1.9721144684368228 0.5969011062007521 5.153383617985452
		-1.0053752473974424 0.89015824777674801 5.153383617985452
		3.155537377555996e-16 0.98917909936359738 5.153383617985452
		1.0053752473974424 0.89015824777674801 5.153383617985452
		1.9721144684368228 0.5969011062007521 5.153383617985452
		2.8630664752701969 0.12067745763121707 5.153383617985452
		3.6439925014020229 -0.65902466483151301 5.153383617985452
		4.2848819762530708 -1.6944405449180895 5.153383617985452
		4.7611056248226058 -2.995675405918468 5.153383617985452
		5.0543627663986017 -4.4983621718218423 5.153383617985452
		5.153383617985452 -6.041598610766715 5.153383617985452
		5.153383617985452 -6.0415986107667159 -4.8441806009063244
		5.153383617985452 -5.7323955936875883 -5.153383617985452
		5.0543627663986017 -4.4983621718218423 -5.153383617985452
		4.7611056248226058 -2.995675405918468 -5.153383617985452
		4.2848819762530708 -1.6944405449180895 -5.153383617985452
		3.6439925014020229 -0.65902466483151301 -5.153383617985452
		2.8630664752701969 0.12067745763121707 -5.153383617985452
		1.9721144684368228 0.5969011062007521 -5.153383617985452
		1.0053752473974424 0.89015824777674801 -5.153383617985452
		3.155537377555996e-16 0.98917909936359738 -5.153383617985452
		-1.0053752473974424 0.89015824777674801 -5.153383617985452
		-1.9721144684368228 0.5969011062007521 -5.153383617985452
		-2.8630664752701969 0.12067745763121707 -5.153383617985452
		-3.6439925014020229 -0.65902466483151301 -5.153383617985452
		-4.2848819762530708 -1.6944405449180895 -5.153383617985452
		-4.7611056248226058 -2.995675405918468 -5.153383617985452
		-5.0543627663986017 -4.4983621718218423 -5.153383617985452
		-5.153383617985452 -5.7323955936875883 -5.153383617985452
		-5.153383617985452 -6.0415986107667141 -4.8441806009063244
		-5.153383617985452 -6.041598610766715 5.153383617985452
		;
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "367124EC-45D2-BC6A-53BC-F39354F2DBA9";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShape" -p "rtLegQd1_ikc_gmb";
	rename -uid "ACD9B276-42DC-6E4C-5360-91B729697FD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0306767235970895 0.70307774994531957 
		-0.51533835041288611 -1.0108725593582539 0.70307774994531957 -0.71641340431397005 
		-0.95222112956714344 0.70307774994531957 -0.90976125665782526 -0.85697637577852959 
		0.70307774994531957 -1.0879516579096009 -0.72879850046663464 0.70307774994531957 
		-1.2441368508795208 -0.57261330749671524 0.70307774994531957 -1.3723147261914157 
		-0.3944229062449387 0.70307774994531957 -1.4675594799800304 -0.20107505390108382 
		0.70307774994531957 -1.5262109097711409 2.9796048293960322e-16 0.70307774994531957 
		-1.5460150740099756 0.2010750539010846 0.70307774994531957 -1.5262109097711409 0.39442290624493959 
		0.70307774994531957 -1.4675594799800304 0.57261330749671524 0.70307774994531957 -1.3723147261914157 
		0.72879850046663508 0.70307774994531957 -1.2441368508795208 0.85697637577853003 0.70307774994531957 
		-1.0879516579096027 0.95222112956714433 0.70307774994531957 -0.90976125665782526 
		1.0108725593582548 0.70307774994531957 -0.71641340431397094 1.0306767235970904 0.70307774994531957 
		-0.51533835041288611 1.0108725532797198 0.39443046215634503 -0.515338350412887 0.95222112496452116 
		0.093893108975670714 -0.515338350412887 0.85697639525061398 -0.16635386322440504 
		-0.515338350412887 0.72879850028040449 -0.37343703924172011 -0.515338350412887 0.57261329505403946 
		-0.5293774637342662 -0.515338350412887 0.39442289368736461 -0.62462219344817327 -0.515338350412887 
		0.20107504947948862 -0.68327362176337236 -0.515338350412887 1.1452493638890508e-16 
		-0.70307779208074228 -0.515338350412887 -0.20107504947948818 -0.68327362176337236 
		-0.515338350412887 -0.39442289368736416 -0.62462219344817327 -0.515338350412887 -0.57261329505403946 
		-0.5293774637342662 -0.515338350412887 -0.72879850028040449 -0.37343703924172011 
		-0.515338350412887 -0.85697639525061398 -0.16635386322440504 -0.515338350412887 -0.95222112496452116 
		0.093893108975670714 -0.515338350412887 -1.0108725532797198 0.39443046215634503 -0.515338350412887 
		-1.0306767235970904 0.70307774994531957 -0.515338350412887 -1.0306767235970904 0.70307774994532046 
		1.4841744933654684 -1.0306767235970904 0.64123714652949459 1.5460150967812942 -1.0108725532797198 
		0.39443046215634503 1.5460150967812942 -0.95222112496452116 0.093893108975670714 
		1.5460150967812942 -0.85697639525061398 -0.16635386322440504 1.5460150967812942 -0.72879850028040449 
		-0.37343703924172011 1.5460150967812942 -0.57261329505403946 -0.5293774637342662 
		1.5460150967812942 -0.39442289368736416 -0.62462219344817327 1.5460150967812942 -0.20107504947948818 
		-0.68327362176337236 1.5460150967812942 1.1452493638890508e-16 -0.70307779208074228 
		1.5460150967812942 0.20107504947948862 -0.68327362176337236 1.5460150967812942 0.39442289368736461 
		-0.62462219344817327 1.5460150967812942 0.57261329505403946 -0.5293774637342662 1.5460150967812942 
		0.72879850028040449 -0.37343703924172011 1.5460150967812942 0.85697639525061398 -0.16635386322440504 
		1.5460150967812942 0.95222112496452116 0.093893108975670714 1.5460150967812942 1.0108725532797198 
		0.39443046215634503 1.5460150967812942 1.0306767235970904 0.64123714652949459 1.5460150967812942 
		1.0306767235970904 0.70307774994532046 1.4841744933654684 1.0306767235970904 0.70307774994531957 
		-0.515338350412887;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "368A0BD1-4BE6-0F4A-8005-01B2E7630CE3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		5.1533836179854475 -6.041598610766715 5.1533836179854529
		5.0543627967912714 -6.041598610766715 6.1587588874908743
		4.7611056478357181 -6.041598610766715 7.1254981492101486
		4.2848818788926479 -6.041598610766715 8.0164501554690286
		3.643992502333175 -6.041598610766715 8.797376120318626
		2.8630665374835758 -6.041598610766715 9.4382654968781026
		1.9721145312246955 -6.041598610766715 9.914489265821171
		1.0053752695054206 -6.041598610766715 10.207746414776725
		-6.0162399499789135e-16 -6.041598610766715 10.3067672359709
		-1.0053752695054219 -6.041598610766715 10.207746414776725
		-1.9721145312246968 -6.041598610766715 9.914489265821171
		-2.8630665374835775 -6.041598610766715 9.4382654968781026
		-3.6439925023331772 -6.041598610766715 8.7973761203186278
		-4.2848818788926506 -6.041598610766715 8.0164501554690304
		-4.7611056478357217 -6.041598610766715 7.1254981492101486
		-5.054362796791275 -6.041598610766715 6.1587588874908734
		-5.1533836179854511 -6.041598610766715 5.1533836179854511
		-5.0543627663986017 -4.4983621718218423 5.153383617985452
		-4.7611056248226058 -2.995675405918468 5.153383617985452
		-4.2848819762530708 -1.6944405449180895 5.153383617985452
		-3.6439925014020229 -0.65902466483151301 5.153383617985452
		-2.8630664752701969 0.12067745763121707 5.153383617985452
		-1.9721144684368228 0.5969011062007521 5.153383617985452
		-1.0053752473974424 0.89015824777674801 5.153383617985452
		3.155537377555996e-16 0.98917909936359738 5.153383617985452
		1.0053752473974424 0.89015824777674801 5.153383617985452
		1.9721144684368228 0.5969011062007521 5.153383617985452
		2.8630664752701969 0.12067745763121707 5.153383617985452
		3.6439925014020229 -0.65902466483151301 5.153383617985452
		4.2848819762530708 -1.6944405449180895 5.153383617985452
		4.7611056248226058 -2.995675405918468 5.153383617985452
		5.0543627663986017 -4.4983621718218423 5.153383617985452
		5.153383617985452 -6.041598610766715 5.153383617985452
		5.153383617985452 -6.0415986107667159 -4.8441806009063244
		5.153383617985452 -5.7323955936875883 -5.153383617985452
		5.0543627663986017 -4.4983621718218423 -5.153383617985452
		4.7611056248226058 -2.995675405918468 -5.153383617985452
		4.2848819762530708 -1.6944405449180895 -5.153383617985452
		3.6439925014020229 -0.65902466483151301 -5.153383617985452
		2.8630664752701969 0.12067745763121707 -5.153383617985452
		1.9721144684368228 0.5969011062007521 -5.153383617985452
		1.0053752473974424 0.89015824777674801 -5.153383617985452
		3.155537377555996e-16 0.98917909936359738 -5.153383617985452
		-1.0053752473974424 0.89015824777674801 -5.153383617985452
		-1.9721144684368228 0.5969011062007521 -5.153383617985452
		-2.8630664752701969 0.12067745763121707 -5.153383617985452
		-3.6439925014020229 -0.65902466483151301 -5.153383617985452
		-4.2848819762530708 -1.6944405449180895 -5.153383617985452
		-4.7611056248226058 -2.995675405918468 -5.153383617985452
		-5.0543627663986017 -4.4983621718218423 -5.153383617985452
		-5.153383617985452 -5.7323955936875883 -5.153383617985452
		-5.153383617985452 -6.0415986107667141 -4.8441806009063244
		-5.153383617985452 -6.041598610766715 5.153383617985452
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "C7DF6B5D-4901-26B9-43E4-77BC005DAC4A";
	setAttr ".t" -type "double3" -6.9984613659812567e-09 -6.0415986107667159 6.7176657956956198 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "0DCED97F-4912-B7F5-432E-71B1C9FC7382";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd1_smart_ctlShape1" -p "rtLegQd1_smart_ctl";
	rename -uid "B85932CA-49DD-ED30-080F-B687D12735A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3710631725603672 4.8666124613141514e-17 -2.3710631725603699
		1.3127759059026798e-16 6.8824293456043907e-17 -2.143925753640453
		-2.3710631725603672 4.8666124613141483e-17 -2.3710631725603686
		-2.1439257536404588 -2.8089440519308021e-32 -8.3248055585678535e-16
		-2.3710631725603672 -4.8666124613141502e-17 2.3710631725603672
		-2.1475850904012698e-16 -6.8824293456043968e-17 2.1439257536404548
		2.3710631725603672 -4.8666124613141483e-17 2.3710631725603686
		2.1439257536404588 -4.1042848643797602e-32 -4.2897266814784182e-16
		2.3710631725603672 4.8666124613141514e-17 -2.3710631725603699
		1.3127759059026798e-16 6.8824293456043907e-17 -2.143925753640453
		-2.3710631725603672 4.8666124613141483e-17 -2.3710631725603686
		;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "0F2D8E45-4104-8971-B9D6-18B043E8AD1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "FEE3B1D0-4227-2404-73B4-B0A07F0681EE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -6.1345506401445646e-30 1.4434236800340139e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 27.468996460844537 0.30860936166099628 -90.593592999484642 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "55A9CD67-47A0-9CED-2595-61BAD4154509";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -62.626657879089947 1.5099033134902129e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.3742356314627873;
createNode ikEffector -n "effector28" -p "rtLegQd1_legLock";
	rename -uid "F1357578-42E2-8BB8-CD5D-6E88DACB8611";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "F51D551A-4A93-780B-792E-F58C0F26AB9D";
	setAttr ".t" -type "double3" -15.474895217990181 39.660063022090782 5.0627737695142176 ;
	setAttr ".r" -type "double3" 2.4790311399805716 -160.53884419250016 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "608378FC-4B25-6853-35D0-0D91D717921D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "E225AE71-4F74-EAD8-F87A-0DB5C4AB24D5";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -1.1324274851176597e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "CF518A84-4F71-DA7D-53DA-2B916F9F0ADF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7006165939351994
		-1.7006165939351994 0 0
		0 0 -1.7006165939351994
		1.7006165939351994 0 0
		0 0 1.7006165939351994
		0 1.7006165939351994 0
		1.7006165939351994 0 0
		0 0 -1.7006165939351994
		0 1.7006165939351994 0
		-1.7006165939351994 0 0
		0 -1.7006165939351994 0
		1.7006165939351994 0 0
		0 0 1.7006165939351994
		0 -1.7006165939351994 0
		0 0 -1.7006165939351994
		;
createNode transform -n "rtLegQd1_extraRollG_ofs_loc" -p "rtLegQd1_IK";
	rename -uid "A693A682-4426-EB91-F793-CAA2B61F6270";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -157.65641585597294 -28.10552379459055 83.7788789664733 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "4644CBCA-4F5E-AF06-4140-16A4E6BA56B9";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "574F8077-4FCD-ACA6-5E3F-8AA53FE39FCA";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_settingShape1" -p "rtLegQd1_setting";
	rename -uid "7A33D41B-4F6F-640A-4A48-08BC50F8E292";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.4355890786569683 3.4355890786569683 8.5528925661918163e-17
		-3.3695751775990681 3.4355890786569683 -0.67025016493162826
		-3.1740704165484042 3.4355890786569683 -1.3147430608687087
		-2.8565879841687138 3.4355890786569683 -1.9087109835134646
		-2.429328334268015 3.4355890786569683 -2.429328334268015
		-1.9087109835134646 3.4355890786569683 -2.8565879841687138
		-1.3147430608687087 3.4355890786569683 -3.1740704165484042
		-0.67025016493162826 3.4355890786569683 -3.3695751775990681
		2.1036915850373307e-16 3.4355890786569683 -3.4355890786569683
		0.67025016493162826 3.4355890786569683 -3.3695751775990681
		1.3147430608687087 3.4355890786569683 -3.1740704165484042
		1.9087109835134646 3.4355890786569683 -2.8565879841687138
		2.429328334268015 3.4355890786569683 -2.429328334268015
		2.8565879841687138 3.4355890786569683 -1.9087109835134646
		3.1740704165484042 3.4355890786569683 -1.3147430608687087
		3.3695751775990681 3.4355890786569683 -0.67025016493162826
		3.4355890786569683 3.4355890786569683 -3.7159916484473809e-16
		3.3048299114243394 3.4355890786569683 -0.65737148947894097
		2.9324587064624916 3.4355890786569683 -1.2146641671340075
		2.3751659468965984 3.4355890786569683 -1.5870352082742021
		1.7177945393284841 3.4355890786569683 -1.7177945393284841
		1.0604230498495431 3.4355890786569683 -1.5870352082742021
		0.50313037219447665 3.4355890786569683 -1.2146641671340075
		0.13075933105428206 3.4355890786569683 -0.65737148947894097
		0 3.4355890786569683 -3.7159916484473809e-16
		-0.13075933105428206 3.4355890786569683 0.65737148947894097
		-0.50313037219447665 3.4355890786569683 1.2146641671340075
		-1.0604230498495431 3.4355890786569683 1.5870352082742021
		-1.7177945393284841 3.4355890786569683 1.7177945393284841
		-2.3751659468965984 3.4355890786569683 1.5870352082742021
		-2.9324587064624916 3.4355890786569683 1.2146641671340075
		-3.3048299114243394 3.4355890786569683 0.65737148947894097
		-3.4355890786569683 3.4355890786569683 8.5528925661918163e-17
		-3.3695751775990681 3.4355890786569683 0.67025016493162826
		-3.1740704165484042 3.4355890786569683 1.3147430608687087
		-2.8565879841687138 3.4355890786569683 1.9087109835134646
		-2.429328334268015 3.4355890786569683 2.429328334268015
		-1.9087109835134646 3.4355890786569683 2.8565879841687138
		-1.3147430608687087 3.4355890786569683 3.1740704165484042
		-0.67025016493162826 3.4355890786569683 3.3695751775990681
		-4.0108266341751777e-16 3.4355890786569683 3.4355890786569683
		0.67025016493162826 3.4355890786569683 3.3695751775990681
		1.3147430608687087 3.4355890786569683 3.1740704165484042
		1.9087109835134646 3.4355890786569683 2.8565879841687138
		2.429328334268015 3.4355890786569683 2.429328334268015
		2.8565879841687138 3.4355890786569683 1.9087109835134646
		3.1740704165484042 3.4355890786569683 1.3147430608687087
		3.3695751775990681 3.4355890786569683 0.67025016493162826
		3.4355890786569683 3.4355890786569683 -3.7159916484473809e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "9225E2B6-4475-3061-18E9-DA89B4782EFB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "1A7DA763-4555-78EE-AE90-4D9FB278353E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.306767235970904 10.306767235970904 10.306767235970904 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "A50B5E10-452C-7BE9-AF44-A185D5770A66";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "9073CAA5-4B5B-EAE1-1D93-F4935ABFB094";
	setAttr ".t" -type "double3" 2.5492561078581388e-14 69.844580203728867 -18.288410027193962 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "FC79E5A7-4793-B523-71A5-8CBCFC5349BB";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "12B658AE-43C0-A07F-2215-F5BBA4F6FE9D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "D0EECE27-40FF-4449-0003-24ACA60C4330";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.3152396815338476 28.935272993744647 5.2609587261353905
		1.3152396815338476 32.462854240694945 5.2609587261353905
		1.3152396815338476 34.196231719880039 -5.2609587261353905
		1.3152396815338476 28.935272993744647 -5.2609587261353905
		1.3152396815338476 28.935272993744647 5.2609587261353905
		-1.3152396815338476 28.935272993744647 5.2609587261353905
		-1.3152396815338476 28.935272993744647 -5.2609587261353905
		1.3152396815338476 28.935272993744647 -5.2609587261353905
		1.3152396815338476 34.196231719880039 -5.2609587261353905
		-1.3152396815338476 34.196231719880039 -5.2609587261353905
		-1.3152396815338476 28.935272993744647 -5.2609587261353905
		-1.3152396815338476 34.196231719880039 -5.2609587261353905
		-1.3152396815338476 32.462854240694945 5.2609587261353905
		-1.3152396815338476 28.935272993744647 5.2609587261353905
		1.3152396815338476 28.935272993744647 5.2609587261353905
		1.3152396815338476 32.462854240694945 5.2609587261353905
		-1.3152396815338476 32.462854240694945 5.2609587261353905
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3D18215E-4292-73F9-90D3-F8995C06D9D8";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 1.2825756581407006 8.4222605801790031 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "9D49A788-442F-B1A5-034A-E8A13D4FFFF8";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "0B6E23C8-47D7-83AD-4EBA-4CAEF8116276";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.07098373035468e-15 17.490491643800326 1.07098373035468e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.07098373035468e-15 17.490491643800326 1.07098373035468e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "10B8E52B-43FA-D3CD-411A-079BB6E0C8E0";
	setAttr ".t" -type "double3" 2.5504568617641672e-14 -1.2825756581407006 -8.4222605801790102 ;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "C6F6B6A8-4780-FCCB-C686-5F94F7769C2F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "2B5F2AD4-413E-13D2-CBFD-C29FBEFB74C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-3.7418464035388611e-07 2.5142954127378161 -0.53800085872023173
		-4.5632510333364176e-07 2.6866361964305607 -0.98826965697411151
		-4.8116209775244826e-07 2.4730409650976242 -1.3173403200487699
		-4.4405417714378063e-07 2.2231209629517061 -1.4126418352190369
		-3.9177364700268649e-07 1.8710141889631149 -1.4160913547305001
		1.6222007673758837e-07 -1.8601063571809169 -1.4526448786869688
		2.1450060687960554e-07 -2.2122131311694821 -1.4560943981984051
		2.5160852742929241e-07 -2.4621331333154122 -1.3656897153948602
		3.414940036693116e-07 -2.6866361964305607 -1.0309676463530197
		3.740760112745785e-07 -2.5252032445200205 -0.57804658417976384
		4.8116209786542361e-07 -0.46231799774051846 2.2398558723007325
		4.5820600019793749e-07 -0.23174747250641564 2.4729654546836994
		4.3065376354208706e-07 -0.00081763478578739536 2.5686107934018909
		3.7439684908892535e-07 0.23235624931481741 2.4784952628399832
		3.1354379565071855e-07 0.46588944590198483 2.2509154886133156
		-3.7418464035388611e-07 2.5142954127378161 -0.53800085872023173
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "86B69BB9-4E9D-34C5-9F2A-83B42FF7DDD6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.229457130115025 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "AD84B002-42FF-23F8-5AB4-65BE28258F90";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.3889807842101192 -11.018676876752011 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "092DE562-4E0D-6321-CDA4-349226E4A8CC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "4AE8DB88-4B2F-5C7E-4335-72A0AED19439";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 11.039740341979433 -2.1265015964196237
		1.952629538277632 10.796014279704648 -3.593397111575511
		1.209592117445256 10.796014279704648 -3.593397111575511
		1.209592117445256 10.636511222700882 -4.5142866297911146
		1.209592117445256 10.260381972950569 -5.4886480990650144
		1.209592117445256 9.7398352613692243 -6.4986575357111125
		1.209592117445256 9.1105190553290498 -7.3998974778983815
		1.209592117445256 8.2824006402284187 -8.2824006402284205
		1.209592117445256 7.3998974778983788 -9.1105190553290534
		1.209592117445256 6.4986575357111098 -9.7398352613692261
		1.209592117445256 5.4886480990650117 -10.260381972950569
		1.209592117445256 4.5142866297911102 -10.636511222700884
		1.209592117445256 3.5933971115755075 -10.79601427970465
		1.952629538277632 3.5933971115755075 -10.79601427970465
		0 2.126501596419621 -11.039740341979433
		-1.952629538277632 3.5933971115755075 -10.79601427970465
		-1.209592117445256 3.5933971115755075 -10.79601427970465
		-1.209592117445256 4.5142866297911102 -10.636511222700884
		-1.209592117445256 5.4886480990650117 -10.260381972950569
		-1.209592117445256 6.4986575357111098 -9.7398352613692261
		-1.209592117445256 7.3998974778983788 -9.1105190553290534
		-1.209592117445256 8.2824006402284187 -8.2824006402284205
		-1.209592117445256 9.1105190553290498 -7.3998974778983815
		-1.209592117445256 9.7398352613692243 -6.4986575357111125
		-1.209592117445256 10.260381972950569 -5.4886480990650144
		-1.209592117445256 10.636511222700882 -4.5142866297911146
		-1.209592117445256 10.796014279704648 -3.593397111575511
		-1.952629538277632 10.796014279704648 -3.593397111575511
		0 11.039740341979433 -2.1265015964196237
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "74F73BE7-4108-AE5A-3B30-C095995E7E8B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.5492561078581388e-14 -1.2825756581407006 -8.4222605801790031 ;
	setAttr ".r" -type "double3" -10.22945713011506 5.8926173563338235e-16 -4.9831518720766284e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "6AFF9019-475E-B992-443A-CE908EDA5E93";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.5492561078581391e-14 -15.21170541018919 49.837952447719665 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "349C3789-4D7A-C203-3D5F-26AD46D28732";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277705e-14 10.042330869348618 -23.919648061967045 ;
	setAttr ".r" -type "double3" 19.167178409598623 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "DE3EA83A-4CD4-4BF5-CADE-9F811B7D2005";
	setAttr -k off ".v";
createNode ikEffector -n "effector30" -p "spineQd0_two_ikj";
	rename -uid "6BFE4A1B-4B27-AD3F-0DB5-44A185D28C65";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "274EA2B5-4FD7-FC05-E9CE-9ABE12187209";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277702e-14 -1.7669298493964334 18.002090620814126 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "C95D1DD8-47D4-AAB5-4B7D-58A033449459";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3FF2176B-40FF-C8FA-D4D8-7985F5698DFA";
	setAttr ".t" -type "double3" -1.2809831057303686e-14 -0.48435419125573276 26.424351200993129 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "EB7E82F5-49BE-E95D-927A-E2B6A96AA2AF";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "946B8E6D-4BF1-1FF2-3F7D-08826C4746AF";
	setAttr ".t" -type "double3" -1.5777218104420236e-30 0 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "7A693E4D-416B-6859-2565-B79406F5BE21";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "6A86377E-48F3-BB53-D7B3-488F04530B29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.07098373035468e-15 17.490491643800326 1.07098373035468e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.07098373035468e-15 17.490491643800326 1.07098373035468e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "202A4EFB-4769-8252-C737-F0A5BB1F5A87";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.9377212794835632 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F27B1478-460C-982B-D339-3DA5BA0CEECF";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 -6.119149120393331 51.747207651330662 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "8CE774CC-4B33-4234-719A-6D84F8FB0603";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "274105B2-4482-CDA2-FEC9-F1855DCAEE0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.07098373035468e-15 17.490491643800326 1.07098373035468e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.07098373035468e-15 17.490491643800326 1.07098373035468e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "9E3B481F-4876-1F15-32FE-5E8C1D6CF5CE";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "42640A82-4DC6-6D55-B3D8-FAB417E89E30";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "DCFAEE86-45EE-8E61-EAB0-A09A3261673B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-3.7418464035388611e-07 -2.5142954127378161 0.53800085872023207
		-4.5632510333364176e-07 -2.6866361964305607 0.98826965697411184
		-4.8116209775244826e-07 -2.4730409650976242 1.3173403200487701
		-4.4405417714378063e-07 -2.2231209629517061 1.4126418352190371
		-3.9177364700268649e-07 -1.8710141889631147 1.4160913547305003
		1.6222007673758837e-07 1.8601063571809171 1.4526448786869686
		2.1450060687960554e-07 2.2122131311694821 1.4560943981984049
		2.5160852742929241e-07 2.4621331333154122 1.3656897153948599
		3.414940036693116e-07 2.6866361964305607 1.0309676463530195
		3.740760112745785e-07 2.5252032445200205 0.57804658417976351
		4.8116209786542361e-07 0.46231799774051818 -2.2398558723007325
		4.5820600019793749e-07 0.23174747250641536 -2.4729654546836994
		4.3065376354208706e-07 0.00081763478578708083 -2.5686107934018909
		3.7439684908892535e-07 -0.23235624931481771 -2.4784952628399832
		3.1354379565071855e-07 -0.46588944590198511 -2.2509154886133156
		-3.7418464035388611e-07 -2.5142954127378161 0.53800085872023207
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "38A52D13-4887-DF48-7171-BAA47A543B0A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.1043834904541563;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "89899D7B-485D-880C-089F-0DADCC7E4840";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4663308626521417e-30 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -10.229457130115042 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "452B63AC-4EEC-E88D-72D3-B690BB3D27B3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "7438B512-433F-D160-2298-7D90ACDC4A71";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "F9987F05-46C6-92E6-4473-C9A9F0314AED";
	setAttr ".t" -type "double3" 1.6361350750788975e-14 -0.08679926694720308 2.0460988152703408 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "288E1098-4E77-9F47-6FEF-47BDB82C7446";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F45BD5DD-423B-822C-6C6D-F1B0CC41CC84";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 20.149974197015567 74.155390418349498 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "6A5FF7C0-4B52-6EFC-BE65-A68254E42E86";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "6CE65096-46CD-4017-1558-DBBA1411702C";
	setAttr ".t" -type "double3" 9.1257019996987889 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "EA3DCF1E-4A5C-0A3B-8C5C-B898129FFD48";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "367D0800-4194-2FA0-3925-698DECCE4BAC";
	setAttr ".t" -type "double3" 11.66622228126173 -31.473134206126936 16.303776459291029 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.490551251626643 6.7132861421476638e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "78454520-4DB7-4FE3-4C9B-829F45DF6AAD";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D861AF08-4860-01D0-72C6-BDB3895E7248";
	setAttr ".t" -type "double3" 7.1263478381401413 -63.802981592962126 42.367035305279771 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "D1934DFA-455B-383F-94D0-DF921B60068A";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9C5FEF96-4F39-E8F1-EE1F-EAB380EB0B15";
	setAttr ".t" -type "double3" 15.474895217990817 -30.1845171816381 23.351183796708408 ;
	setAttr ".r" -type "double3" -177.52097129098306 19.461156105349517 179.999992703484 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "CD581372-406C-E234-B186-86B7322A9CCF";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 2.2204460492503131e-16 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C7341BF6-4686-8063-0283-C3B0838208AF";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 18.993798233990248 68.368565109980281 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "79A8F1AB-4207-C3FC-FB0E-BB8E81D90018";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B1E9956B-40E5-D847-B5CA-8AB2647FEFD5";
	setAttr ".t" -type "double3" -9.1312103277924069e-15 -6.2059483873405341 53.793306466601003 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "1BCF7C11-477C-921C-21D8-8C87CBF55577";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CFA88E16-47DB-196F-7B00-3D931AC9B21F";
	setAttr ".t" -type "double3" -9.1257019996961706 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "8AC4716A-42AF-61D4-7279-0C94A8E95240";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5A316A9B-4083-34BE-9839-AD803E057B7B";
	setAttr ".t" -type "double3" -11.666222281262538 -31.473134206126922 16.303776459290948 ;
	setAttr ".r" -type "double3" 14.383137188892626 -6.4905529621657303 -1.0003349776607067e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "9374BC24-4946-04E5-63C9-3B90B7FA9274";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B4F842D6-4E55-78D0-BB19-F99E9AFF0B14";
	setAttr ".t" -type "double3" -7.1263478381391732 -63.802981592962155 42.367035305279757 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "7566F604-4E99-28E9-02B7-06BF58171BA5";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "2A6EC880-409F-0DDE-038E-76B2CDD06DE6";
	setAttr ".t" -type "double3" -15.474895217990206 -30.184517181638086 23.351183796708177 ;
	setAttr ".r" -type "double3" 2.4790311399805716 199.46115580749984 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "79153702-40A9-5AF0-4ACA-979D615ACA08";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode joint -n "spineQd0_end" -p "spineQd0_IK";
	rename -uid "4AE2CEDA-4E14-6E1A-EC9D-48B2E2F32245";
	addAttr -ci true -sn "proxyRatio" -ln "proxyRatio" -dv 4 -at "double";
	addAttr -ci true -sn "proxyDiv" -ln "proxyDiv" -dv 1 -at "double";
	setAttr -cb on ".ro";
	setAttr ".radi" 1.0521917452270781;
	setAttr -cb on ".proxyRatio";
	setAttr -cb on ".proxyDiv";
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "F08EEA9B-4122-BB74-4300-DF9DA10763BD";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "volumeScale" -ln "volumeScale" -dv 1 -at "double";
	addAttr -ci true -sn "volumeGraph" -ln "volumeGraph" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".stretchy";
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "spineQd0_settingShape1" -p "spineQd0_setting";
	rename -uid "5587B731-42C4-904E-F4E0-2DA786BC494F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.9457190446015433 5.2609587261353905 9.8228601594130205e-17
		-3.8699031362815584 5.2609587261353905 -0.7697715820693779
		-3.6453690487272237 5.2609587261353905 -1.5099613531357818
		-3.2807455588142025 5.2609587261353905 -2.1921240014051131
		-2.7900446923817124 5.2609587261353905 -2.7900446923817124
		-2.1921240014051131 5.2609587261353905 -3.2807455588142025
		-1.5099613531357818 5.2609587261353905 -3.6453690487272237
		-0.7697715820693779 5.2609587261353905 -3.8699031362815584
		2.4160561001360045e-16 5.2609587261353905 -3.9457190446015433
		0.7697715820693779 5.2609587261353905 -3.8699031362815584
		1.5099613531357818 5.2609587261353905 -3.6453690487272237
		2.1921240014051131 5.2609587261353905 -3.2807455588142025
		2.7900446923817124 5.2609587261353905 -2.7900446923817124
		3.2807455588142025 5.2609587261353905 -2.1921240014051131
		3.6453690487272237 5.2609587261353905 -1.5099613531357818
		3.8699031362815584 5.2609587261353905 -0.7697715820693779
		3.9457190446015433 5.2609587261353905 -4.2677569060706312e-16
		3.7955442348109294 5.2609587261353905 -0.75498062953125455
		3.3678818684916276 5.2609587261353905 -1.3950223461908562
		2.7278400577587534 5.2609587261353905 -1.8226845243636118
		1.9728595223007717 5.2609587261353905 -1.9728595223007717
		1.2178788927695172 5.2609587261353905 -1.8226845243636118
		0.57783717610991558 5.2609587261353905 -1.3950223461908562
		0.15017499793715974 5.2609587261353905 -0.75498062953125455
		0 5.2609587261353905 -4.2677569060706312e-16
		-0.15017499793715974 5.2609587261353905 0.75498062953125455
		-0.57783717610991558 5.2609587261353905 1.3950223461908562
		-1.2178788927695172 5.2609587261353905 1.8226845243636118
		-1.9728595223007717 5.2609587261353905 1.9728595223007717
		-2.7278400577587534 5.2609587261353905 1.8226845243636118
		-3.3678818684916276 5.2609587261353905 1.3950223461908562
		-3.7955442348109294 5.2609587261353905 0.75498062953125455
		-3.9457190446015433 5.2609587261353905 9.8228601594130205e-17
		-3.8699031362815584 5.2609587261353905 0.7697715820693779
		-3.6453690487272237 5.2609587261353905 1.5099613531357818
		-3.2807455588142025 5.2609587261353905 2.1921240014051131
		-2.7900446923817124 5.2609587261353905 2.7900446923817124
		-2.1921240014051131 5.2609587261353905 3.2807455588142025
		-1.5099613531357818 5.2609587261353905 3.6453690487272237
		-0.7697715820693779 5.2609587261353905 3.8699031362815584
		-4.6063701661453082e-16 5.2609587261353905 3.9457190446015433
		0.7697715820693779 5.2609587261353905 3.8699031362815584
		1.5099613531357818 5.2609587261353905 3.6453690487272237
		2.1921240014051131 5.2609587261353905 3.2807455588142025
		2.7900446923817124 5.2609587261353905 2.7900446923817124
		3.2807455588142025 5.2609587261353905 2.1921240014051131
		3.6453690487272237 5.2609587261353905 1.5099613531357818
		3.8699031362815584 5.2609587261353905 0.7697715820693779
		3.9457190446015433 5.2609587261353905 -4.2677569060706312e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "B4592CBE-4DED-3CE0-B0D8-979A7412F8CF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "E94269EA-49F8-F8C4-C4F4-FD9E9EF19A3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 7.8914380892030858 7.8914380892030858 7.8914380892030858 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "BCC766EE-44C8-AFD4-FFFA-9DA0B20764F7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "0D0DDAE5-4A3B-5D5A-9D5F-B188F47523C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 7.8914380892030858 7.8914380892030858 7.8914380892030858 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "CF4EBFB4-4509-6865-E300-60B69EF98DBA";
	setAttr ".t" -type "double3" 0 89.994554400744434 55.866980391155543 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "369295F7-44E6-78D3-CE9F-B7889550D33F";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "3AB2BA79-49DD-1A54-A0B6-15AD02F0A99B";
	setAttr ".t" -type "double3" 9.1257019996988138 8.3444289887369507 -34.108652520054321 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "A5DCF336-4DC9-B671-F53B-03828F4D94BA";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "3F12C7CA-422A-3EEE-E5DB-F3A4204ADB64";
	setAttr ".t" -type "double3" 11.666222281261755 38.371445997601931 -1.9846335679029337 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.4905512516266421 6.7132861421476638e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "9220AEA9-4198-CF3D-37C8-EF9ABDD3BD5F";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "56AE271E-46CF-5B07-8B14-55AAE6FFB36F";
	setAttr ".t" -type "double3" 7.126347838140167 6.0415986107667372 24.078625278085806 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "134351E4-4DDC-95A3-0BBA-28AE11618AAC";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "07B3F195-4187-357D-28D1-BE8EB95F58B4";
	setAttr ".t" -type "double3" 15.474895217990841 39.660063022090768 5.0627737695144468 ;
	setAttr ".r" -type "double3" -177.52097129098306 19.461156105349517 179.999992703484 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "55416055-4089-74F9-8114-8BB02C237480";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 2.2204460492503131e-16 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "B536624E-4AB1-EC97-7DD4-E783AF9EDFE6";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 88.838378437719115 50.08015508278632 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "75B37AB3-4D9D-00EB-15BB-AB9564A7F464";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "0B3E0231-4CF5-7BD6-3DDE-F6A6D0B6F997";
	setAttr ".t" -type "double3" 1.6361350750788981e-14 63.638631816388333 35.504896439407041 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "E75218D3-4255-065F-A883-C6970B68CDB5";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "8A802FFF-472A-5CB6-D137-798AF68B2A9B";
	setAttr ".t" -type "double3" -9.1257019996961457 8.3444289887369543 -34.108652520054321 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "A234AA3F-469C-9710-E4BF-1197C2FF7E8B";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "2E713A0F-4AB0-866B-2AFF-228712CAC2C6";
	setAttr ".t" -type "double3" -11.666222281262513 38.371445997601946 -1.9846335679030154 ;
	setAttr ".r" -type "double3" 14.383137188892626 -6.4905529621657285 -1.0003349776607069e-16 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "A901F807-4D8D-66FA-E24B-06B81E0EB288";
	setAttr ".t" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "E93E90A1-4D42-38C0-CE35-41801AEA2AE3";
	setAttr ".t" -type "double3" -7.1263478381391474 6.0415986107667159 24.078625278085795 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "2942046A-4BE5-1CB3-A026-9B88C3300682";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "96D27129-4DC3-57B5-9BE8-F386BAC5017B";
	setAttr ".t" -type "double3" -15.474895217990181 39.660063022090782 5.0627737695142176 ;
	setAttr ".r" -type "double3" 2.4790311399805716 199.46115580749984 0 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "65FCA8F1-4540-1C96-23B2-B49FEDE65019";
	setAttr ".t" -type "double3" 0 0 1.3322676295501878e-15 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "4EDF98C0-4753-C64A-E242-BFB3ABAEB317";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -61.148432550014547 0 48.290651231851982 
		-6.9885484918449243e-14 0 68.293293907913963 61.148432550014547 0 48.290651231851896 
		86.476942630086981 0 -2.1616847849652969e-14 61.148432550014547 0 -48.290651231851896 
		-5.5927844881304944e-14 0 -68.29329390791402 -61.148432550014547 0 -48.290651231851868 
		-86.476942630086981 0 -3.4470316642905643e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "C29D19CC-465A-BA31-F8C7-228D9FDA7345";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		94.175139249279567 6.4092067754718655e-15 -94.17513924927961
		8.1551532179734528e-15 9.0639871459258518e-15 -133.18375916470583
		-94.175139249279567 6.4092067754718631e-15 -94.175139249279468
		-133.18375916470592 3.4626638608313624e-30 -4.3108528526229147e-14
		-94.175139249279567 -6.4092067754718631e-15 94.175139249279468
		-1.3341108244072288e-14 -9.0639871459258566e-15 133.18375916470589
		94.175139249279567 -6.4092067754718631e-15 94.175139249279425
		133.18375916470592 1.756732439809361e-30 -1.8042036719582734e-14
		94.175139249279567 6.4092067754718655e-15 -94.17513924927961
		8.1551532179734528e-15 9.0639871459258518e-15 -133.18375916470583
		-94.175139249279567 6.4092067754718631e-15 -94.175139249279468
		

		"gtag" 1
		"cluster1" 1 "cv[0:7]";
createNode nurbsCurve -n "master2_ctlShape" -p "master2_ctl";
	rename -uid "11551BA3-40B4-438C-95B6-0ABDF73ECBAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -1.0638665671812319e-13 0 
		73.702541900240362 13.281738239028911 0 72.952356293985872 23.926836253918616 0 64.352848129585169 
		35.280150455277379 0 61.008690277683975 45.915262532919236 0 56.422571426263595 55.615672274074001 
		0 50.687851729864327 64.183907310083313 0 43.921273543938867 71.445543084363635 0 
		36.260584887152518 77.252753633378916 0 27.861735288955632 81.487320896963553 0 18.895701106885383 
		92.376518527152257 0 10.488965330862678 93.326447193961997 0 -6.7832072643543568e-14 
		92.376518527152228 0 -10.488965330862799 81.487320896963553 0 -18.89570110688544 
		77.252753633378916 0 -27.861735288955657 71.445543084363635 0 -36.260584887152532 
		64.183907310083285 0 -43.921273543938867 55.615672274073965 0 -50.687851729864292 
		45.915262532919222 0 -56.42257142626358 35.280150455277365 0 -61.008690277683954 
		23.926836253918609 0 -64.352848129585112 13.2817382390289 0 -72.952356293985844 -1.0272845102102523e-13 
		0 -73.702541900240277 -13.281738239029092 0 -72.952356293985844 -23.926836253918736 
		0 -64.352848129585112 -35.280150455277408 0 -61.008690277683925 -45.915262532919265 
		0 -56.42257142626358 -55.615672274073987 0 -50.687851729864242 -64.183907310083228 
		0 -43.921273543938852 -71.445543084363635 0 -36.260584887152518 -77.252753633378887 
		0 -27.861735288955625 -81.487320896963439 0 -18.895701106885429 -92.376518527152172 
		0 -10.488965330862765 -93.326447193961883 0 -5.4355809623720876e-14 -92.376518527152172 
		0 10.488965330862678 -81.487320896963439 0 18.89570110688538 -77.252753633378887 
		0 27.861735288955607 -71.44554308436355 0 36.26058488715249 -64.183907310083157 0 
		43.921273543938824 -55.615672274073887 0 50.687851729864157 -45.915262532919201 0 
		56.422571426263531 -35.280150455277393 0 61.008690277683897 -23.926836253918722 0 
		64.352848129585084 -13.281738239029057 0 72.952356293985687 -8.8254351883913074e-14 
		0 73.702541900240149;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "4A8FC87D-42B6-CB77-CCE8-7599696E0C21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:44]";
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 0.14267836639846468 0.2853567327969293 0.4280350991953939 0.5707134655938586
		 0.71339183199232326 0.8560701983907878 0.99874856478925267 1.1414269311877174 1.2841052975861822
		 1.4267836639846467 1.5694620303831113 1.7121403967815758 1.8548187631800404 1.9974971295785049
		 2.1401754959769694 2.282853862375434 2.4255322287738985 2.5682105951723631 2.7108889615708276
		 2.8535673279692921 2.9962456943677567 3.1389240607662212 3.2816024271646858 3.4242807935631503
		 3.5669591599616148 3.7096375263600794 3.8523158927585439 3.9949942591570089 4.1376726255554734
		 4.280350991953938 4.4230293583524025 4.5657077247508671 4.7083860911493316 4.8510644575477961
		 4.9937428239462607 5.1364211903447252 5.2790995567431898 5.4217779231416543 5.5644562895401188
		 5.7071346559385834 5.8498130223370479 5.9924913887355125 6.135169755133977 6.2778481215324415
		
		45
		6.4370869527374703e-14 9.4076213870353788e-15 -143.73273023708637
		-20.455300258268654 9.3118653659852585e-15 -142.26973828875614
		-36.849892009324549 7.6846101056040569e-15 -125.49920697060369
		-54.335212585273275 7.2852719260147463e-15 -118.97751957686157
		-70.71442492279995 6.7376266190011534e-15 -110.03379298736827
		-85.654095492460328 6.0528226637353983e-15 -98.850095683908307
		-98.850095683908307 5.2448006939351603e-15 -85.654095492460328
		-110.03379298736826 4.3300097067626367e-15 -70.71442492279995
		-118.97751957686154 3.3270722086772955e-15 -54.335212585273275
		-125.49920697060368 2.2564051149072509e-15 -36.849892009324549
		-142.26973828875612 1.3388441162322385e-15 -20.455300258268668
		-143.73273023708632 -2.0339495307397927e-30 4.7019169472812565e-14
		-142.26973828875609 -1.3388441162322395e-15 20.455300258268704
		-125.49920697060368 -2.2564051149072509e-15 36.849892009324556
		-118.97751957686154 -3.3270722086772966e-15 54.335212585273304
		-110.03379298736826 -4.3300097067626391e-15 70.714424922799964
		-98.850095683908265 -5.2448006939351595e-15 85.654095492460328
		-85.654095492460286 -6.0528226637353975e-15 98.850095683908265
		-70.714424922799921 -6.737626619001151e-15 110.03379298736826
		-54.33521258527324 -7.2852719260147431e-15 118.9775195768615
		-36.849892009324542 -7.6846101056040537e-15 125.49920697060362
		-20.455300258268643 -9.3118653659852538e-15 142.26973828875609
		5.8736840713227621e-14 -9.4076213870353773e-15 143.7327302370862
		20.455300258268707 -9.3118653659852538e-15 142.26973828875609
		36.849892009324549 -7.6846101056040537e-15 125.49920697060362
		54.33521258527324 -7.2852719260147431e-15 118.97751957686147
		70.714424922799935 -6.7376266190011479e-15 110.03379298736824
		85.654095492460314 -6.052822663735392e-15 98.850095683908179
		98.850095683908179 -5.2448006939351547e-15 85.654095492460286
		110.03379298736824 -4.3300097067626351e-15 70.714424922799921
		118.97751957686145 -3.3270722086772943e-15 54.335212585273233
		125.49920697060355 -2.2564051149072485e-15 36.849892009324535
		142.26973828875597 -1.3388441162322364e-15 20.45530025826865
		143.73273023708612 -3.1379745818033964e-31 2.0738120986669667e-14
		142.26973828875597 1.3388441162322391e-15 -20.455300258268668
		125.49920697060354 2.2564051149072501e-15 -36.849892009324542
		118.97751957686144 3.3270722086772943e-15 -54.335212585273233
		110.03379298736813 4.3300097067626351e-15 -70.714424922799907
		98.850095683908037 5.24480069393515e-15 -85.654095492460215
		85.654095492460172 6.0528226637353904e-15 -98.850095683908037
		70.714424922799822 6.7376266190011455e-15 -110.03379298736813
		54.335212585273226 7.2852719260147384e-15 -118.97751957686141
		36.849892009324527 7.6846101056040458e-15 -125.49920697060352
		20.455300258268657 9.3118653659852443e-15 -142.2697382887558
		3.6445176889620944e-14 9.4076213870353709e-15 -143.732730237086
		

		"gtag" 1
		"cluster1" 1 "cv[0:44]";
createNode unitConversion -n "unitConversion22";
	rename -uid "3BBF1794-44EB-D84F-B999-8A8106FDE287";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "7359BE9B-41AC-CB9E-D560-0596587E3030";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "4DB1F6A7-4952-6C94-5037-1C9DA4B9FF00";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "D1DCDC2A-480B-98F3-C29F-BDA213C9BFDE";
	setAttr ".cf" 57.295779513082323;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
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
	setAttr -av -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rm";
	setAttr -av -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av -k on ".hom";
	setAttr -av -k on ".hodm";
	setAttr -av -k on ".xry";
	setAttr -av -k on ".jxr";
	setAttr -av -k on ".sslt";
	setAttr -av -k on ".cbr";
	setAttr -av -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon" yes;
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -av -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -av -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -av -k on ".mbcsx";
	setAttr -av -k on ".mbcsy";
	setAttr -av -k on ".mbasx";
	setAttr -av -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blth";
	setAttr -av -k on ".blfr";
	setAttr -av -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 2 ".dsm";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
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
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
lockNode -l 0 -lu 1;
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -k on ".nds";
	setAttr -s 65 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "master_ctlShapeOrig.ws" "master_ctlShape.cr";
connectAttr "lfLegQd0_hip_fk.s" "lfLegQd0_upr_fk.is";
connectAttr "lfLegQd0_upr_fk.s" "lfLegQd0_lwr_fk.is";
connectAttr "lfLegQd0_lwr_fk.s" "lfLegQd0_palm_fk.is";
connectAttr "lfLegQd0_palm_fk.s" "lfLegQd0_digit_fk.is";
connectAttr "lfLegQd0_ball_fk.s" "lfLegQd0_tip_fk.is";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_upr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_palm_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_digit_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_hip_fkc.fkIkBlend";
connectAttr "lfLegQd0_autoAim.s" "lfLegQd0_autoAim_end.is";
connectAttr "lfLegQd0_autoAim_end.tx" "effector6.tx";
connectAttr "lfLegQd0_autoAim_end.ty" "effector6.ty";
connectAttr "lfLegQd0_autoAim_end.tz" "effector6.tz";
connectAttr "lfLegQd0_autoAim_end.opm" "effector6.opm";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ball_fkc.fkIkBlend";
connectAttr "lfLegQd0_ball_ik.msg" "lfLegQd0_3_ikh.hsj";
connectAttr "effector4.hp" "lfLegQd0_3_ikh.hee";
connectAttr "lfLegQd0_hip_ik.s" "lfLegQd0_upr_ik.is";
connectAttr "lfLegQd0_upr_ik.s" "lfLegQd0_lwr_ik.is";
connectAttr "lfLegQd0_lwr_ik.s" "lfLegQd0_palm_ik.is";
connectAttr "lfLegQd0_palm_ik.s" "lfLegQd0_digit_ik.is";
connectAttr "lfLegQd0_digit_ik.s" "lfLegQd0_ball_ik.is";
connectAttr "lfLegQd0_ball_ik.s" "lfLegQd0_tip_ik.is";
connectAttr "lfLegQd0_tip_ik.tx" "effector4.tx";
connectAttr "lfLegQd0_tip_ik.ty" "effector4.ty";
connectAttr "lfLegQd0_tip_ik.tz" "effector4.tz";
connectAttr "lfLegQd0_tip_ik.opm" "effector4.opm";
connectAttr "lfLegQd0_ball_ik.tx" "effector3.tx";
connectAttr "lfLegQd0_ball_ik.ty" "effector3.ty";
connectAttr "lfLegQd0_ball_ik.tz" "effector3.tz";
connectAttr "lfLegQd0_ball_ik.opm" "effector3.opm";
connectAttr "lfLegQd0_digit_ik.tx" "effector2.tx";
connectAttr "lfLegQd0_digit_ik.ty" "effector2.ty";
connectAttr "lfLegQd0_digit_ik.tz" "effector2.tz";
connectAttr "lfLegQd0_digit_ik.opm" "effector2.opm";
connectAttr "lfLegQd0_palm_ik.tx" "effector1.tx";
connectAttr "lfLegQd0_palm_ik.ty" "effector1.ty";
connectAttr "lfLegQd0_palm_ik.tz" "effector1.tz";
connectAttr "lfLegQd0_palm_ik.opm" "effector1.opm";
connectAttr "lfLegQd0_hip_ik.s" "lfLegQd0_softJ.is";
connectAttr "lfLegQd0_softJ.s" "lfLegQd0_softJ_end.is";
connectAttr "lfLegQd0_softJ_end.tx" "effector5.tx";
connectAttr "lfLegQd0_softJ_end.ty" "effector5.ty";
connectAttr "lfLegQd0_softJ_end.tz" "effector5.tz";
connectAttr "lfLegQd0_softJ_end.opm" "effector5.opm";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikCstG.v";
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_outRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_inRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_ballG_ikc.v" -l on;
connectAttr "lfLegQd0_palm_ik.msg" "lfLegQd0_X_ikh.hsj";
connectAttr "effector2.hp" "lfLegQd0_X_ikh.hee";
connectAttr "lfLegQd0_upr_ik.msg" "lfLegQd0_1_ikh.hsj";
connectAttr "effector1.hp" "lfLegQd0_1_ikh.hee";
connectAttr "lfLegQd0_digit_ik.msg" "lfLegQd0_2_ikh.hsj";
connectAttr "effector3.hp" "lfLegQd0_2_ikh.hee";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_line_30.v";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd0_ikc.gimbalCtl" "lfLegQd0_ikc_gmbShape.v";
connectAttr "lfLegQd0_ikc_gmbShapeOrig.ws" "lfLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion22.o" "lfLegQd0_smart_ctl.footRoll";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_smart_ctl.fkIkBlend";
connectAttr "lfLegQd0_autoAim.msg" "lfLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector6.hp" "lfLegQd0_autoAimJ_ikh.hee";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.v" -l on;
connectAttr "lfLegQd1_hip_fk.s" "lfLegQd1_upr_fk.is";
connectAttr "lfLegQd1_upr_fk.s" "lfLegQd1_lwr_fk.is";
connectAttr "lfLegQd1_lwr_fk.s" "lfLegQd1_palm_fk.is";
connectAttr "lfLegQd1_palm_fk.s" "lfLegQd1_digit_fk.is";
connectAttr "lfLegQd1_ball_fk.s" "lfLegQd1_tip_fk.is";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_upr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_palm_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_digit_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_hip_fkc.fkIkBlend";
connectAttr "lfLegQd1_autoAim.s" "lfLegQd1_autoAim_end.is";
connectAttr "lfLegQd1_autoAim_end.tx" "effector12.tx";
connectAttr "lfLegQd1_autoAim_end.ty" "effector12.ty";
connectAttr "lfLegQd1_autoAim_end.tz" "effector12.tz";
connectAttr "lfLegQd1_autoAim_end.opm" "effector12.opm";
connectAttr "lfLegQd1_legLock.msg" "lfLegQd1_legLock_ikh.hsj";
connectAttr "effector13.hp" "lfLegQd1_legLock_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_ball_ik.msg" "lfLegQd1_3_ikh.hsj";
connectAttr "effector10.hp" "lfLegQd1_3_ikh.hee";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_upr_ik.is";
connectAttr "lfLegQd1_upr_ik.s" "lfLegQd1_lwr_ik.is";
connectAttr "lfLegQd1_lwr_ik.s" "lfLegQd1_palm_ik.is";
connectAttr "lfLegQd1_palm_ik.s" "lfLegQd1_digit_ik.is";
connectAttr "lfLegQd1_digit_ik.s" "lfLegQd1_ball_ik.is";
connectAttr "lfLegQd1_ball_ik.s" "lfLegQd1_tip_ik.is";
connectAttr "lfLegQd1_tip_ik.tx" "effector10.tx";
connectAttr "lfLegQd1_tip_ik.ty" "effector10.ty";
connectAttr "lfLegQd1_tip_ik.tz" "effector10.tz";
connectAttr "lfLegQd1_tip_ik.opm" "effector10.opm";
connectAttr "lfLegQd1_ball_ik.tx" "effector9.tx";
connectAttr "lfLegQd1_ball_ik.ty" "effector9.ty";
connectAttr "lfLegQd1_ball_ik.tz" "effector9.tz";
connectAttr "lfLegQd1_ball_ik.opm" "effector9.opm";
connectAttr "lfLegQd1_digit_ik.tx" "effector8.tx";
connectAttr "lfLegQd1_digit_ik.ty" "effector8.ty";
connectAttr "lfLegQd1_digit_ik.tz" "effector8.tz";
connectAttr "lfLegQd1_digit_ik.opm" "effector8.opm";
connectAttr "lfLegQd1_palm_ik.tx" "effector7.tx";
connectAttr "lfLegQd1_palm_ik.ty" "effector7.ty";
connectAttr "lfLegQd1_palm_ik.tz" "effector7.tz";
connectAttr "lfLegQd1_palm_ik.opm" "effector7.opm";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_softJ.is";
connectAttr "lfLegQd1_softJ.s" "lfLegQd1_softJ_end.is";
connectAttr "lfLegQd1_softJ_end.tx" "effector11.tx";
connectAttr "lfLegQd1_softJ_end.ty" "effector11.ty";
connectAttr "lfLegQd1_softJ_end.tz" "effector11.tz";
connectAttr "lfLegQd1_softJ_end.opm" "effector11.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_palm_ik.msg" "lfLegQd1_X_ikh.hsj";
connectAttr "effector8.hp" "lfLegQd1_X_ikh.hee";
connectAttr "lfLegQd1_upr_ik.msg" "lfLegQd1_1_ikh.hsj";
connectAttr "effector7.hp" "lfLegQd1_1_ikh.hee";
connectAttr "lfLegQd1_digit_ik.msg" "lfLegQd1_2_ikh.hsj";
connectAttr "effector9.hp" "lfLegQd1_2_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_line_30.v";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion51.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_autoAim.msg" "lfLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector12.hp" "lfLegQd1_autoAimJ_ikh.hee";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector13.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector13.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector13.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector13.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector15.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector15.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector15.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector15.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector15.hp" "neckQd0_two_ikj_ikh.hee";
connectAttr "rtLegQd0_hip_fk.s" "rtLegQd0_upr_fk.is";
connectAttr "rtLegQd0_upr_fk.s" "rtLegQd0_lwr_fk.is";
connectAttr "rtLegQd0_lwr_fk.s" "rtLegQd0_palm_fk.is";
connectAttr "rtLegQd0_palm_fk.s" "rtLegQd0_digit_fk.is";
connectAttr "rtLegQd0_ball_fk.s" "rtLegQd0_tip_fk.is";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_upr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_palm_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_digit_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_hip_fkc.fkIkBlend";
connectAttr "rtLegQd0_autoAim.s" "rtLegQd0_autoAim_end.is";
connectAttr "rtLegQd0_autoAim_end.tx" "effector21.tx";
connectAttr "rtLegQd0_autoAim_end.ty" "effector21.ty";
connectAttr "rtLegQd0_autoAim_end.tz" "effector21.tz";
connectAttr "rtLegQd0_autoAim_end.opm" "effector21.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_ik.msg" "rtLegQd0_3_ikh.hsj";
connectAttr "effector19.hp" "rtLegQd0_3_ikh.hee";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_upr_ik.is";
connectAttr "rtLegQd0_upr_ik.s" "rtLegQd0_lwr_ik.is";
connectAttr "rtLegQd0_lwr_ik.s" "rtLegQd0_palm_ik.is";
connectAttr "rtLegQd0_palm_ik.s" "rtLegQd0_digit_ik.is";
connectAttr "rtLegQd0_digit_ik.s" "rtLegQd0_ball_ik.is";
connectAttr "rtLegQd0_ball_ik.s" "rtLegQd0_tip_ik.is";
connectAttr "rtLegQd0_tip_ik.tx" "effector19.tx";
connectAttr "rtLegQd0_tip_ik.ty" "effector19.ty";
connectAttr "rtLegQd0_tip_ik.tz" "effector19.tz";
connectAttr "rtLegQd0_tip_ik.opm" "effector19.opm";
connectAttr "rtLegQd0_ball_ik.tx" "effector18.tx";
connectAttr "rtLegQd0_ball_ik.ty" "effector18.ty";
connectAttr "rtLegQd0_ball_ik.tz" "effector18.tz";
connectAttr "rtLegQd0_ball_ik.opm" "effector18.opm";
connectAttr "rtLegQd0_digit_ik.tx" "effector17.tx";
connectAttr "rtLegQd0_digit_ik.ty" "effector17.ty";
connectAttr "rtLegQd0_digit_ik.tz" "effector17.tz";
connectAttr "rtLegQd0_digit_ik.opm" "effector17.opm";
connectAttr "rtLegQd0_palm_ik.tx" "effector16.tx";
connectAttr "rtLegQd0_palm_ik.ty" "effector16.ty";
connectAttr "rtLegQd0_palm_ik.tz" "effector16.tz";
connectAttr "rtLegQd0_palm_ik.opm" "effector16.opm";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_softJ.is";
connectAttr "rtLegQd0_softJ.s" "rtLegQd0_softJ_end.is";
connectAttr "rtLegQd0_softJ_end.tx" "effector20.tx";
connectAttr "rtLegQd0_softJ_end.ty" "effector20.ty";
connectAttr "rtLegQd0_softJ_end.tz" "effector20.tz";
connectAttr "rtLegQd0_softJ_end.opm" "effector20.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_palm_ik.msg" "rtLegQd0_X_ikh.hsj";
connectAttr "effector17.hp" "rtLegQd0_X_ikh.hee";
connectAttr "rtLegQd0_upr_ik.msg" "rtLegQd0_1_ikh.hsj";
connectAttr "effector16.hp" "rtLegQd0_1_ikh.hee";
connectAttr "rtLegQd0_digit_ik.msg" "rtLegQd0_2_ikh.hsj";
connectAttr "effector18.hp" "rtLegQd0_2_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_line_53.v";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion82.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_autoAim.msg" "rtLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector21.hp" "rtLegQd0_autoAimJ_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.v" -l on;
connectAttr "rtLegQd1_hip_fk.s" "rtLegQd1_upr_fk.is";
connectAttr "rtLegQd1_upr_fk.s" "rtLegQd1_lwr_fk.is";
connectAttr "rtLegQd1_lwr_fk.s" "rtLegQd1_palm_fk.is";
connectAttr "rtLegQd1_palm_fk.s" "rtLegQd1_digit_fk.is";
connectAttr "rtLegQd1_ball_fk.s" "rtLegQd1_tip_fk.is";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_upr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_palm_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_digit_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_hip_fkc.fkIkBlend";
connectAttr "rtLegQd1_autoAim.s" "rtLegQd1_autoAim_end.is";
connectAttr "rtLegQd1_autoAim_end.tx" "effector27.tx";
connectAttr "rtLegQd1_autoAim_end.ty" "effector27.ty";
connectAttr "rtLegQd1_autoAim_end.tz" "effector27.tz";
connectAttr "rtLegQd1_autoAim_end.opm" "effector27.opm";
connectAttr "rtLegQd1_legLock.msg" "rtLegQd1_legLock_ikh.hsj";
connectAttr "effector28.hp" "rtLegQd1_legLock_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_ik.msg" "rtLegQd1_3_ikh.hsj";
connectAttr "effector25.hp" "rtLegQd1_3_ikh.hee";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_upr_ik.is";
connectAttr "rtLegQd1_upr_ik.s" "rtLegQd1_lwr_ik.is";
connectAttr "rtLegQd1_lwr_ik.s" "rtLegQd1_palm_ik.is";
connectAttr "rtLegQd1_palm_ik.s" "rtLegQd1_digit_ik.is";
connectAttr "rtLegQd1_digit_ik.s" "rtLegQd1_ball_ik.is";
connectAttr "rtLegQd1_ball_ik.s" "rtLegQd1_tip_ik.is";
connectAttr "rtLegQd1_tip_ik.tx" "effector25.tx";
connectAttr "rtLegQd1_tip_ik.ty" "effector25.ty";
connectAttr "rtLegQd1_tip_ik.tz" "effector25.tz";
connectAttr "rtLegQd1_tip_ik.opm" "effector25.opm";
connectAttr "rtLegQd1_ball_ik.tx" "effector24.tx";
connectAttr "rtLegQd1_ball_ik.ty" "effector24.ty";
connectAttr "rtLegQd1_ball_ik.tz" "effector24.tz";
connectAttr "rtLegQd1_ball_ik.opm" "effector24.opm";
connectAttr "rtLegQd1_digit_ik.tx" "effector23.tx";
connectAttr "rtLegQd1_digit_ik.ty" "effector23.ty";
connectAttr "rtLegQd1_digit_ik.tz" "effector23.tz";
connectAttr "rtLegQd1_digit_ik.opm" "effector23.opm";
connectAttr "rtLegQd1_palm_ik.tx" "effector22.tx";
connectAttr "rtLegQd1_palm_ik.ty" "effector22.ty";
connectAttr "rtLegQd1_palm_ik.tz" "effector22.tz";
connectAttr "rtLegQd1_palm_ik.opm" "effector22.opm";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_softJ.is";
connectAttr "rtLegQd1_softJ.s" "rtLegQd1_softJ_end.is";
connectAttr "rtLegQd1_softJ_end.tx" "effector26.tx";
connectAttr "rtLegQd1_softJ_end.ty" "effector26.ty";
connectAttr "rtLegQd1_softJ_end.tz" "effector26.tz";
connectAttr "rtLegQd1_softJ_end.opm" "effector26.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_palm_ik.msg" "rtLegQd1_X_ikh.hsj";
connectAttr "effector23.hp" "rtLegQd1_X_ikh.hee";
connectAttr "rtLegQd1_upr_ik.msg" "rtLegQd1_1_ikh.hsj";
connectAttr "effector22.hp" "rtLegQd1_1_ikh.hee";
connectAttr "rtLegQd1_digit_ik.msg" "rtLegQd1_2_ikh.hsj";
connectAttr "effector24.hp" "rtLegQd1_2_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_line_53.v";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion111.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_autoAim.msg" "rtLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector27.hp" "rtLegQd1_autoAimJ_ikh.hee";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector28.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector28.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector28.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector28.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector30.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector30.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector30.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector30.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector30.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "master1_ctlShapeOrig.ws" "master1_ctlShape.cr";
connectAttr "master2_ctlShapeOrig.ws" "master2_ctlShape.cr";
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion51.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion82.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion111.i";
// End of deer_ctl.ma
