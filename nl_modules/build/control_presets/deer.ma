//Maya ASCII 2023 scene
//Name: deer.ma
//Last modified: Mon, Jun 09, 2025 05:08:32 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "7983BFB2-40D6-A024-2656-F3B3341E16E8";
createNode transform -n "CHR";
	rename -uid "D3A35735-429D-5DDA-09C6-16943970A95E";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "977BBD30-4FE3-B349-7463-9D8A06F05039";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "FE03AACA-484C-0AAC-9687-A48F83495597";
	addAttr -ci true -sn "size" -ln "size" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".size" 0.49999999999999989;
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "6877C606-4248-065A-0579-D087FDB0B282";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "C9C76B2C-4770-764C-A1BC-9BBCC02B1C25";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode transform -n "head0_ctl_data" -p "master_ctl";
	rename -uid "C3151EC1-48AC-C90E-D464-A0885C1F0204";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "A86AE332-4CAA-503F-E324-049CAF1DEB0B";
	setAttr ".t" -type "double3" 0 89.994554400744406 55.866980391155543 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "9A4886C9-48CE-DF45-8B76-B1AC134DFCE1";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "23E38281-40A9-DA6E-4CE5-CD8888EBC03F";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "23BF796E-4FBA-0709-47FC-B5B4407844FB";
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
	rename -uid "A969710E-4DB8-98BE-D424-D4AA7601B3C9";
	setAttr ".t" -type "double3" -5.0209008155148086e-14 -2.0352390678693979 -0.72897951288279472 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "225B53B9-4E66-2C90-E709-969CA0CBCDF0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "CE5C1198-40E3-96E6-7AD0-0B9D05B3F736";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1271843796162933 -11.11150752063611 14.392698959362626
		5.0393185869719597e-14 -11.11150752063611 13.511590339657381
		-2.1271843796161929 -11.11150752063611 14.392698959362626
		-3.0082929993214389 -11.11150752063611 16.519883338978872
		-2.1271843796161929 -11.11150752063611 18.647067718595117
		4.9907638282885951e-14 -11.11150752063611 19.528176338300362
		2.1271843796162933 -11.11150752063611 18.647067718595117
		3.0082929993215393 -11.11150752063611 16.519883338978872
		2.1271843796162933 -11.11150752063611 14.392698959362626
		5.0393185869719597e-14 -11.11150752063611 13.511590339657381
		-2.1271843796161929 -11.11150752063611 14.392698959362626
		;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "5F4569DE-481C-E9A1-B2BD-B98B3275A7A9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "C361FBDF-47E0-D51C-2728-01A88345184C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "B4E4CE07-444B-F546-D7F5-65A0392D9F8A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "9F8D7CC8-4C9F-67B1-E0C3-80A6F4545852";
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
	rename -uid "C43C950F-4BE1-2FFD-CB82-28ADEC2565BF";
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
	rename -uid "4D50CC90-4503-21D0-15CE-F2BB0D29C8C1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "90F1ED37-4533-1FB6-8DA1-7FA3536B029E";
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
	rename -uid "EB0C7922-4EE6-BC43-6C0F-AF99956EBB41";
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
	rename -uid "A2A370CD-44A7-0371-CEBE-4DA407EB1B6C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "34A126EB-408A-3E67-786E-268228DF84FC";
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
	rename -uid "189B25B2-4B93-80BE-B4C3-9F8BF319CE12";
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
	rename -uid "F18EFF91-484E-C22C-E51F-F9BB14633554";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "430E70B1-405F-A403-5098-138B12E18B00";
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
	rename -uid "DEFC338B-4BCD-0A4C-911A-84B9E92FDC00";
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
	rename -uid "0CE62FFE-4099-36AF-25BA-4BB52CA42DF6";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" -145.26855765322219 -3.1805546814635176e-15 -90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "D531546F-4F36-54F0-851F-41B286E10554";
	setAttr ".t" -type "double3" 6.8548495328830672 70.225699200876363 -18.797640192410181 ;
	setAttr ".r" -type "double3" 0.5007643496007057 130.56652835228391 91.087876868264843 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "1885E226-47CA-2721-7F48-16B6887B2E16";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.9083328088781095e-15 -9.5416640443905471e-15 4.4527765540489228e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "97984313-41F9-AFBD-B9F6-5087B569FD1A";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "96DA875F-46C1-FE71-6881-A298B47E2DCC";
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
	rename -uid "E4090D06-4994-8313-61D5-D88C5A8F9C71";
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
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "5D73513F-4F8D-06C0-7C3B-B09821B3D42B";
	setAttr ".t" -type "double3" 9.1257019482675599 8.3444269505183932 -34.108652544973296 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "33BF747C-495E-EA56-2CD4-A1B70E269423";
	setAttr ".t" -type "double3" 5.842691663815458e-08 -4.5705573020473951 3.1685175512877244 ;
	setAttr ".r" -type "double3" 0 237.79316281622025 89.999999999999972 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "E71C8943-4D7D-E542-EDDD-DBBB49D79252";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "C30C748D-47E6-FBE6-A233-87A4BBF8F6E1";
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
	rename -uid "41F028C5-402F-FA2A-8354-D79DACEAD863";
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
	rename -uid "0A131810-47BC-3C3F-8244-8AB2BC75237E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710669911 -2.3447910280083306e-13 -3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8461295712475545 6.8035697908477369e-17 -0.53297724966496407 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "2291B2B3-4FCA-B9B4-FF0A-87BB22123569";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "37B03C95-4D27-CD46-E5C3-60A5FC16A799";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "34687035-4A18-8CB9-D6D4-C0B41570D4A1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "F86B29DF-4ECD-F0E1-AF4F-9296AC34A7BC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "4E9A0238-431A-7E3A-19BE-3E8C33343472";
	setAttr ".t" -type "double3" -0.56954940183653235 29.69655197345995 -2.5073573751738962 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "54D70E24-4C5D-74B1-1ACF-5ABE9E5137C3";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "001FA4BB-4148-8460-9DF3-81B240B94EE3";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.3304632803622167e-16 -5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "37F27DBE-401C-E06A-8F32-DFA1D8402D93";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "93E1ADB4-41DD-2E56-EB24-FCABD06E45CC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "88250761-4376-A6D7-8D7B-BBA5BB9E1CEF";
	setAttr ".t" -type "double3" 2.1747055391654797 -3.5168412029400715e-16 2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "33F79C09-4752-B0C8-40D0-3398065315D5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "38D0BF4E-4CAA-F33D-F2E4-998DE01CFE63";
	setAttr ".t" -type "double3" -4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "01648DAF-4190-5A46-5EF0-288223CD21C9";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "AA6B12C2-4D01-C1F8-E29B-79ACB8F5FBBE";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "F0053224-479D-BB07-DDA9-34B6EA9F5E68";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "C10482F0-4446-A520-BD5C-B09E41427A17";
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
	rename -uid "5794BDA2-40D4-C22A-28C8-3C9048D7DA65";
	setAttr ".t" -type "double3" -6.9956680448512998e-09 -4.5705593402659233 3.1685175263687171 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "2113FBF1-4F0A-BB73-C7BA-15B724F2A18B";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -6.1566900637152369 0 92.242173262946551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "854571B2-4707-BEC1-73DE-05B7EEA6D92A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "A24AE8A9-414F-78DC-420F-F49047963006";
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
	rename -uid "FE3AE5EE-4716-321F-AC6A-6285B9BE494E";
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
	rename -uid "50436F86-4CC7-B279-F6C7-9F81B3411E1A";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "C59F61D1-4D47-1410-7299-B9AE81C5EFB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "8D12F579-4E22-29E4-1B52-29AD1F296B51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.56954940883231409 -21.352122984723007 -0.19538001629761226 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "B0860EA6-4BA6-F99C-5F74-208182DB485F";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "D4F80914-42D4-BA16-365F-B2BFD3DE13FD";
	setAttr ".t" -type "double3" 0.56954940883231586 -21.352122984723 -0.19538001629761936 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "CF41F88F-49BF-FD85-8CCA-119E0DFB0472";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "C6425E42-4681-B34F-4EB0-6382419ED747";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "1496EBFF-42AA-F9DE-0EAF-84B1E00892B6";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr ".r" -type "double3" 179.99999999999989 57.793162816220203 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "60CAAD51-49E8-C589-60E0-22BC524E7FAB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -3.5527136788005009e-15 3.3750779948604759e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 23.061720469442324 -7.675662847298718e-31 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.84612957124755406 -1.0946886862319545e-15 0.53297724966496507 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "7E105829-43AB-3AC6-854B-16A83AF00386";
	setAttr ".t" -type "double3" 4.9737991503207013e-14 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -179.99999999999983 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "3FF0D7A3-42FB-E140-A5AD-3B9BCB3CBFF7";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode nurbsCurve -n "diamondShape2" -p "lfLegQd0_inRollG_ctl";
	rename -uid "42311A8C-43C9-7476-99AF-58B51F741388";
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
createNode nurbsCurve -n "diamondShape3" -p "lfLegQd0_outRollG_ctl";
	rename -uid "AAE20D3C-433C-1638-8297-288D1303265D";
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
createNode nurbsCurve -n "diamondShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "5DE069BC-4329-1929-58E5-C3B205BEECEE";
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
createNode nurbsCurve -n "diamondShape4" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "32D903F9-4565-CF0B-A19A-E390F1FB3057";
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
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "69498FAD-4682-E77C-EDBD-1E901FCF921E";
	setAttr ".t" -type "double3" 9.1257019996988138 8.3444289887369507 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "E93C2FBC-4F14-C510-4AD2-4D8F6806E0EB";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "C5815AB1-4270-92C6-701B-C68E4E08A73D";
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
	rename -uid "693257F3-48A2-762D-C850-7296F7D01212";
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
	rename -uid "5B6A7B66-4021-7A53-68EA-38B4F6294804";
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
	rename -uid "EF98B296-4D98-3B3D-3A37-7ABEC615CF47";
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
	rename -uid "BA52E689-4074-6CEB-A73A-91B44CE12873";
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
	rename -uid "D6EB47FB-41D4-B178-F376-C99FCF94365F";
	setAttr ".t" -type "double3" 6.9957817316890214e-09 -8.3444289887369507 7.8719529438819507 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "6D2A9DF6-46E5-7F6E-33EF-589D5D5FFA20";
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
	rename -uid "52FA8FCB-4CFB-1B3F-02B3-C1812D9C46C0";
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
	rename -uid "F30B46C9-46FE-9BFF-0C02-1BA9CDF69C85";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -81.307679396150832 13.888349543035057 -87.898364012409345 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "43926BDA-4C33-F883-9861-6DA08E514B48";
	setAttr ".t" -type "double3" 11.666222281261755 38.371445997601931 -1.9846335679029337 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.4905512516266395 6.7132861421476646e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "B0A93311-4427-7C1F-8EEA-38B0964D7074";
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "CE4B60BB-4D77-6D68-8383-05A23027C142";
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
	rename -uid "08080DB6-4BDA-0176-E5A4-11BACCEC930B";
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
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "96719577-46EB-7606-8878-81A4A8DBECA9";
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
	rename -uid "21414916-4C7A-6844-1013-EA8CCD021D7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.5433896716436344 -5.4014652200385065e-33 8.8212619401994775e-17
		-3.4753044117833634 4.2328754312954449e-17 -0.69128101686846266
		-3.2736651775199666 8.3030842314215047e-17 -1.3559965630605819
		-2.9462209034619469 1.2054209648682001e-16 -1.9686017827773128
		-2.5055548645653394 1.5342098332613166e-16 -2.5055548645653394
		-1.9686017827773128 1.8040400202387415e-16 -2.9462209034619469
		-1.3559965630605819 2.0045418938551265e-16 -3.2736651775199666
		-0.69128101686846266 2.1280102864267707e-16 -3.4753044117833634
		2.1697004106378403e-16 2.1697004106378403e-16 -3.5433896716436344
		0.69128101686846266 2.1280102864267707e-16 -3.4753044117833634
		1.3559965630605819 2.0045418938551265e-16 -3.2736651775199666
		1.9686017827773128 1.8040400202387415e-16 -2.9462209034619469
		2.5055548645653394 1.5342098332613166e-16 -2.5055548645653394
		2.9462209034619469 1.2054209648682001e-16 -1.9686017827773128
		3.2736651775199666 8.3030842314215047e-17 -1.3559965630605819
		3.4753044117833634 4.2328754312954449e-17 -0.69128101686846266
		3.5433896716436344 2.3467849842600093e-32 -3.8325906054427622e-16
		3.4085275935437864 4.1515421157107523e-17 -0.67799823928979441
		3.0244722681044869 7.6710496352703012e-17 -1.2527774322826697
		2.4496929906306186 1.0022709469275632e-16 -1.6368325887599833
		1.7716948358218172 1.0848502053189201e-16 -1.7716948358218172
		1.0936965965320227 1.0022709469275632e-16 -1.6368325887599833
		0.5189174035391475 7.6710496352703012e-17 -1.2527774322826697
		0.13486224706183375 4.1515421157107523e-17 -0.67799823928979441
		0 2.3467849842600093e-32 -3.8325906054427622e-16
		-0.13486224706183375 -4.1515421157107523e-17 0.67799823928979441
		-0.5189174035391475 -7.6710496352703012e-17 1.2527774322826697
		-1.0936965965320227 -1.0022709469275632e-16 1.6368325887599833
		-1.7716948358218172 -1.0848502053189201e-16 1.7716948358218172
		-2.4496929906306186 -1.0022709469275632e-16 1.6368325887599833
		-3.0244722681044869 -7.6710496352703012e-17 1.2527774322826697
		-3.4085275935437864 -4.1515421157107523e-17 0.67799823928979441
		-3.5433896716436344 -5.4014652200385065e-33 8.8212619401994775e-17
		-3.4753044117833634 -4.2328754312954449e-17 0.69128101686846266
		-3.2736651775199666 -8.3030842314215047e-17 1.3559965630605819
		-2.9462209034619469 -1.2054209648682001e-16 1.9686017827773128
		-2.5055548645653394 -1.5342098332613166e-16 2.5055548645653394
		-1.9686017827773128 -1.8040400202387415e-16 2.9462209034619469
		-1.3559965630605819 -2.0045418938551265e-16 3.2736651775199666
		-0.69128101686846266 -2.1280102864267707e-16 3.4753044117833634
		-4.1366768099767081e-16 -2.1697004106378403e-16 3.5433896716436344
		0.69128101686846266 -2.1280102864267707e-16 3.4753044117833634
		1.3559965630605819 -2.0045418938551265e-16 3.2736651775199666
		1.9686017827773128 -1.8040400202387415e-16 2.9462209034619469
		2.5055548645653394 -1.5342098332613166e-16 2.5055548645653394
		2.9462209034619469 -1.2054209648682001e-16 1.9686017827773128
		3.2736651775199666 -8.3030842314215047e-17 1.3559965630605819
		3.4753044117833634 -4.2328754312954449e-17 0.69128101686846266
		3.5433896716436344 2.3467849842600093e-32 -3.8325906054427622e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "3C057B25-4594-2D63-DBBA-C4ACC4ACE01A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "0AC9EC59-4613-4CDC-F390-FF892C0F1DB6";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "35E36B38-478A-ABBB-0EBF-87A5E04C62C4";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "4AA807BB-4D22-11B4-9BD5-019BF4BA1DFC";
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
	rename -uid "37D08A64-412B-6BAC-85FD-5F92BB9F8894";
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
	rename -uid "5ED2D68C-4FEB-7C75-31F7-38BE26F847BD";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "CC64A1A9-4333-C895-0520-838AB14C428A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "9E53BEB3-40B3-EA21-8A1E-4E9C0D616A5E";
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
	rename -uid "5538699B-4313-B2E1-C1C0-CAA8E1E0688A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "4B598559-4688-1E5A-0B59-8A830E2E4D76";
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
	rename -uid "EB599D1B-4013-AB42-9AF8-F5846C7413C1";
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
	rename -uid "5AE58135-44EF-4803-A38B-808842E2BFA9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "36B22F29-41D7-576E-1365-94AA29238348";
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
	rename -uid "DE4E9DA2-42BE-EE13-D954-3080F6088DF9";
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
	rename -uid "C4340203-41AE-B5DB-760C-369E6A9E9EA4";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 3.1086244689504383e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -144.75189473012875 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "C2229DB7-4A8E-9B5E-EB86-15B37199EC26";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "B9B7CCF4-4629-D33B-E31A-8F9801C72EE3";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "513AEB63-45EE-7154-CCD8-1082B2C283FF";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "C04C3B6C-420E-402E-DE96-C58551080A39";
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
	rename -uid "123A6807-42D0-AA26-D551-53BBA9744A13";
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
	rename -uid "8290C543-439F-5F5D-D385-11AD52026695";
	setAttr ".t" -type "double3" 14.756214514549207 -8.8817841970012523e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "DF6D04DB-45EF-89AB-CEF3-1C84D6537438";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "E4B3C1E5-47D0-A545-2026-D3BBB2B496A3";
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
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "349EAB9C-470C-5970-432D-A594328B631A";
	setAttr ".t" -type "double3" 7.1263478896707966 6.0415997745710222 24.078625212668417 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "5320C364-439D-781C-E933-FBBFA2DBD64F";
	setAttr ".t" -type "double3" -4.4533299714544228e-08 -3.5695417369770297 2.5225249320177703 ;
	setAttr ".r" -type "double3" 180 -59.086082974435598 -90 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "830D0CE5-4ACE-9B53-36C6-9B992528DE69";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "05B9EB64-46AC-2E87-3D8D-B8943C300F12";
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
	rename -uid "9BB61F75-4B82-C9ED-458B-C8BBF98A1B85";
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
	rename -uid "FA0A63F9-46DB-7C64-76D6-BAB4B471219E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157509 -8.0824236192711396e-14 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.85794014231118831 0 -0.51374965908607417 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "013746F2-413A-C388-2BBF-4BB537C99C5E";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "BA3DB2FA-456D-7256-FD70-FB96883B3DEF";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "9C72EF87-4B4F-0552-3DAA-35ADECB93AB0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "D2A04295-4B5A-BC6D-3EE0-90A44554FDE5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "C04B09D3-4C7D-2DA6-D78C-EDB005A7ACB1";
	setAttr ".t" -type "double3" -0.61320484944455167 23.266382580114158 -2.7857744119883669 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "CB149C3B-467C-7089-2BED-3882FE52D928";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "3268FFD3-4DC1-9EF5-DC43-48BBAD7A20A3";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.2380387133425221e-16 -5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "F172CBD1-4971-8BCC-4ADD-33BF8A94EBBC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "DE0766E2-4730-60FD-D10F-50B111C11400";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "C0F99F7B-4098-D9F8-DAEA-3CBAF2D9D331";
	setAttr ".t" -type "double3" 1.9186890794618412 -4.5924254968025838e-16 3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "D2A74D40-49FB-D60E-F0A6-95B56DE9E5F0";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "2955DD1C-43A2-C782-5064-C082120869FA";
	setAttr ".t" -type "double3" -4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "C21D47B2-4E47-DFDC-9A4C-8FB984DF93AF";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "8DCDB9EE-4198-AF54-24FA-9CA31F3688D9";
	setAttr ".t" -type "double3" 2.4370394343444159 -2.4720580375940271 0.44514092909523129 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "E1C61B5B-4927-BEFE-0F7B-E8BBD671BA13";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape2" -p "lfLegQd1_ballG_ikc";
	rename -uid "A14105D1-497E-8A9A-5C1E-ED9C60A3C8F0";
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
	rename -uid "4798B7D7-4028-04DF-9518-35B28FE3C6EE";
	setAttr ".t" -type "double3" -6.9973218330687814e-09 -3.5695405731727106 2.5225248666003779 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "2165C6C8-4490-8D0C-9653-D3BADC90927C";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -7.1286013757820097 -7.9513867036587939e-16 89.250778809129031 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "66E7F965-4463-EB6B-900E-29BA0964BC94";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "E347E257-471C-DEF9-A5FA-2FACECD19E89";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "4F34013F-4E0B-9278-6B14-6CB0E7471A24";
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
	rename -uid "CEE8D772-4F0F-087C-98CE-CD8C3459FC75";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "FF84339F-4EAD-0AF1-9703-6F9B34D6E598";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3980817331903381e-14 2.7533531010703882e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "E7D48B29-4661-A7DE-F738-8A8B34ABCF5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.61320485644203515 -17.224783969347403 1.1618537823975252 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "401B14BE-45B0-ECAE-20BC-FE9F3320DB65";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "B7119F33-4FE8-796E-7AD5-60BC83A56B65";
	setAttr ".t" -type "double3" 0.61320485644203515 -17.224783969347396 1.1618537823975288 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "BF68C0EA-4495-8837-43A6-8D94409BC170";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "51B47128-4770-C4B3-42A8-13B2B2EC6C4E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "5AB60854-49A6-CBCF-66BC-2EBF973F84CF";
	setAttr ".t" -type "double3" 2.4370394343444159 -2.4720580375940271 0.44514092909523129 ;
	setAttr ".r" -type "double3" 180 59.086082974435577 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "B992F997-4353-74F3-F45C-F6AA03EA5854";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 2.5757174171303632e-14 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 23.837977704564281 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8579401423111882 -7.5299400430922192e-17 0.51374965908607484 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "94532F07-4D28-F6E1-DF02-789F90606179";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 2.5757174171303632e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -179.99999999999991 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "419D0991-45F4-5321-0530-B2AF666CD748";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode nurbsCurve -n "diamondShape6" -p "lfLegQd1_inRollG_ctl";
	rename -uid "22C2A8ED-4E06-BDF9-60E7-1AA5FBF4D8D2";
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
createNode nurbsCurve -n "diamondShape7" -p "lfLegQd1_outRollG_ctl";
	rename -uid "874FA655-4AE5-05A9-26D4-37A386DBD59F";
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
createNode nurbsCurve -n "diamondShape5" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "1B1EB6AC-48C2-1614-F4AD-29A224B489F4";
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
createNode nurbsCurve -n "diamondShape8" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "30B575F0-41AC-5534-CCFD-55A665A8C08D";
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
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "F5023A43-498A-367B-3F76-F28BB8CDA756";
	setAttr ".t" -type "double3" 7.1263478381401457 6.0415986107667372 24.078625278085802 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "21529346-4FA7-DC93-C3F9-94AA15289DE1";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "40D47E7B-4464-4FBE-82E5-95B286F58F31";
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
	rename -uid "FCF8B629-4A4D-1F1A-AA8E-1FA477180863";
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
	rename -uid "59F2E537-40CC-F6DC-22E0-588BD79D75DB";
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
	rename -uid "9B8C1A7C-422A-6A2F-6ED1-2A92A63B1322";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0306767235970895 0.7030777499453249 
		-0.515338350412887 -1.0108725593582539 0.7030777499453249 -0.71641340431397094 -0.95222112956714389 
		0.7030777499453249 -0.90976125665782526 -0.85697637577852959 0.7030777499453249 -1.0879516579096027 
		-0.72879850046663508 0.7030777499453249 -1.2441368508795208 -0.57261330749671524 
		0.7030777499453249 -1.3723147261914175 -0.39442290624493936 0.7030777499453249 -1.4675594799800304 
		-0.20107505390108438 0.7030777499453249 -1.5262109097711427 -5.7310884940446698e-17 
		0.7030777499453249 -1.5460150740099774 0.20107505390108416 0.7030777499453249 -1.5262109097711427 
		0.39442290624493914 0.7030777499453249 -1.4675594799800304 0.57261330749671568 0.7030777499453249 
		-1.3723147261914175 0.72879850046663552 0.7030777499453249 -1.2441368508795225 0.85697637577853003 
		0.7030777499453249 -1.0879516579096027 0.95222112956714433 0.7030777499453249 -0.90976125665782526 
		1.0108725593582548 0.7030777499453249 -0.71641340431397005 1.0306767235970904 0.7030777499453249 
		-0.515338350412887 1.0108725532797207 0.39443046215635036 -0.51533835041288611 0.95222112496452116 
		0.093893108975674711 -0.51533835041288611 0.85697639525061398 -0.16635386322440082 
		-0.51533835041288611 0.72879850028040449 -0.37343703924171634 -0.51533835041288611 
		0.57261329505403946 -0.52937746373426231 -0.51533835041288611 0.39442289368736438 
		-0.62462219344816927 -0.51533835041288611 0.20107504947948829 -0.68327362176336848 
		-0.51533835041288611 -2.4074643149114494e-16 -0.70307779208073828 -0.51533835041288611 
		-0.20107504947948873 -0.68327362176336848 -0.51533835041288611 -0.39442289368736483 
		-0.62462219344816927 -0.51533835041288611 -0.57261329505403946 -0.52937746373426231 
		-0.51533835041288611 -0.72879850028040449 -0.37343703924171634 -0.51533835041288611 
		-0.85697639525061398 -0.16635386322440082 -0.51533835041288611 -0.95222112496452116 
		0.093893108975674711 -0.51533835041288611 -1.0108725532797207 0.39443046215635036 
		-0.51533835041288611 -1.0306767235970904 0.7030777499453249 -0.51533835041288611 
		-1.0306767235970904 0.70307774994532402 1.4841744933654688 -1.0306767235970904 0.64123714652949904 
		1.5460150967812942 -1.0108725532797207 0.39443046215635036 1.5460150967812942 -0.95222112496452116 
		0.093893108975674711 1.5460150967812942 -0.85697639525061398 -0.16635386322440082 
		1.5460150967812942 -0.72879850028040449 -0.37343703924171634 1.5460150967812942 -0.57261329505403946 
		-0.52937746373426231 1.5460150967812942 -0.39442289368736483 -0.62462219344816927 
		1.5460150967812942 -0.20107504947948873 -0.68327362176336848 1.5460150967812942 -2.4074643149114494e-16 
		-0.70307779208073828 1.5460150967812942 0.20107504947948829 -0.68327362176336848 
		1.5460150967812942 0.39442289368736438 -0.62462219344816927 1.5460150967812942 0.57261329505403946 
		-0.52937746373426231 1.5460150967812942 0.72879850028040449 -0.37343703924171634 
		1.5460150967812942 0.85697639525061398 -0.16635386322440082 1.5460150967812942 0.95222112496452116 
		0.093893108975674711 1.5460150967812942 1.0108725532797207 0.39443046215635036 1.5460150967812942 
		1.0306767235970904 0.64123714652949904 1.5460150967812942 1.0306767235970904 0.70307774994532402 
		1.4841744933654688 1.0306767235970904 0.7030777499453249 -0.51533835041288611;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "758EFF31-4FFD-7394-31E5-3E8908926A3F";
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
	rename -uid "E4CA809F-4320-1615-F17A-2783B2789F62";
	setAttr ".t" -type "double3" 6.9974630534375137e-09 -6.0415986107667372 6.7176657956956127 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "B33F3E2B-495C-3464-DF07-14B60E07FFFA";
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
	rename -uid "25D2CBE6-4E07-B4EB-BA30-CC8C93981CE3";
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
	rename -uid "D2B9488E-45F0-944E-3DB2-2A9C63A12DD9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -27.468996460806306 0.30860936166099157 -89.406407000514406 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "3CFCB737-4D87-A6E2-1CF8-A5877F56B621";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -152.5310035391928 -0.30860936166098513 90.59359299948558 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "5BB7C0DF-4AB6-A089-97DC-189DF3B190FB";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 62.626657879089969 -5.3290705182007514e-15 1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.3742356314627875;
createNode ikEffector -n "effector13" -p "lfLegQd1_legLock";
	rename -uid "122FA74F-402F-6BCA-9343-FB90496C0FB3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "71301E93-48F2-FEC5-2C9A-B2906731CF17";
	setAttr ".t" -type "double3" 15.474895217990841 39.660063022090768 5.0627737695144468 ;
	setAttr ".r" -type "double3" 2.479028709016931 160.53884389465048 -7.2965159907439432e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "C3347AAF-44FE-34BB-1293-0BAE6ECDA0E1";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "3099C903-4301-6CEC-0BF1-40A8C77D2D26";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 -1.0658141036401503e-14 ;
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
	rename -uid "44DAE8FB-42BC-CED1-B1BC-D9B218128E67";
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
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "06F9DBCD-4430-8F2E-91C6-ABB13912C803";
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
	rename -uid "611DF618-4DA5-FCCD-AFC0-E585FC9F4AEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.4355890786569687 -5.2371363689452243e-33 8.5528925661918188e-17
		-3.369575177599069 4.1040986035070759e-17 -0.67025016493162826
		-3.1740704165484046 8.0504793850145671e-17 -1.3147430608687087
		-2.8565879841687143 1.168748426182644e-16 -1.9087109835134648
		-2.4293283342680154 1.4875345462853782e-16 -2.4293283342680154
		-1.9087109835134648 1.7491556857525481e-16 -2.8565879841687143
		-1.3147430608687087 1.9435576880948944e-16 -3.1740704165484046
		-0.67025016493162826 2.0632698000517228e-16 -3.369575177599069
		2.1036915850373309e-16 2.1036915850373309e-16 -3.4355890786569687
		0.67025016493162826 2.0632698000517228e-16 -3.369575177599069
		1.3147430608687087 1.9435576880948944e-16 -3.1740704165484046
		1.9087109835134648 1.7491556857525481e-16 -2.8565879841687143
		2.4293283342680154 1.4875345462853782e-16 -2.4293283342680154
		2.8565879841687143 1.168748426182644e-16 -1.9087109835134648
		3.1740704165484046 8.0504793850145671e-17 -1.3147430608687087
		3.369575177599069 4.1040986035070759e-17 -0.67025016493162826
		3.4355890786569687 2.2753887122270545e-32 -3.7159916484473814e-16
		3.3048299114243398 4.0252396925072836e-17 -0.65737148947894108
		2.9324587064624921 7.4376731861233191e-17 -1.2146641671340077
		2.3751659468965989 9.7177884404744722e-17 -1.5870352082742023
		1.7177945393284844 1.0518457925186655e-16 -1.7177945393284844
		1.0604230498495433 9.7177884404744722e-17 -1.5870352082742023
		0.50313037219447665 7.4376731861233191e-17 -1.2146641671340077
		0.13075933105428209 4.0252396925072836e-17 -0.65737148947894108
		0 2.2753887122270545e-32 -3.7159916484473814e-16
		-0.13075933105428209 -4.0252396925072836e-17 0.65737148947894108
		-0.50313037219447665 -7.4376731861233191e-17 1.2146641671340077
		-1.0604230498495433 -9.7177884404744722e-17 1.5870352082742023
		-1.7177945393284844 -1.0518457925186655e-16 1.7177945393284844
		-2.3751659468965989 -9.7177884404744722e-17 1.5870352082742023
		-2.9324587064624921 -7.4376731861233191e-17 1.2146641671340077
		-3.3048299114243398 -4.0252396925072836e-17 0.65737148947894108
		-3.4355890786569687 -5.2371363689452243e-33 8.5528925661918188e-17
		-3.369575177599069 -4.1040986035070759e-17 0.67025016493162826
		-3.1740704165484046 -8.0504793850145671e-17 1.3147430608687087
		-2.8565879841687143 -1.168748426182644e-16 1.9087109835134648
		-2.4293283342680154 -1.4875345462853782e-16 2.4293283342680154
		-1.9087109835134648 -1.7491556857525481e-16 2.8565879841687143
		-1.3147430608687087 -1.9435576880948944e-16 3.1740704165484046
		-0.67025016493162826 -2.0632698000517228e-16 3.369575177599069
		-4.0108266341751782e-16 -2.1036915850373309e-16 3.4355890786569687
		0.67025016493162826 -2.0632698000517228e-16 3.369575177599069
		1.3147430608687087 -1.9435576880948944e-16 3.1740704165484046
		1.9087109835134648 -1.7491556857525481e-16 2.8565879841687143
		2.4293283342680154 -1.4875345462853782e-16 2.4293283342680154
		2.8565879841687143 -1.168748426182644e-16 1.9087109835134648
		3.1740704165484046 -8.0504793850145671e-17 1.3147430608687087
		3.369575177599069 -4.1040986035070759e-17 0.67025016493162826
		3.4355890786569687 2.2753887122270545e-32 -3.7159916484473814e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "690E02D2-4EDC-9F48-1AC5-1289D0F1CF18";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "EC2F09ED-48D1-5B1B-7E5D-DDAEE1C911C3";
	setAttr ".t" -type "double3" 1.6361350750788981e-14 63.638631816388312 35.504896439407034 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "BD57C20A-4150-FF9A-7B59-DC88F28D51C3";
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "12872179-4CA0-E723-12F6-93A1D253F637";
	setAttr ".t" -type "double3" 0 2.1316282072803006e-14 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "EE0B2BEA-446E-22F0-40E5-61B466007986";
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
createNode nurbsCurve -n "squRShape1" -p "neckQd0_cog_ctl";
	rename -uid "4C39E46F-4C36-6A9E-6056-C48C7FA342EB";
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
	rename -uid "1ACD878E-4309-B2CE-40AD-39B5ADEAD134";
	setAttr ".t" -type "double3" 7.2045234361705946e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "6C36B35D-41A6-0EB3-C9C4-16A6AA0F9040";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "20798B4C-4562-E3FF-7D7A-E1ADD83F9A02";
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
	rename -uid "CB735D9B-481B-ECF8-CEA4-8FB079C60177";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "EDA0DAA1-4EF4-8C0E-1568-50891FDEF7EF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "9BBBF67D-4101-445B-D55C-BE9B0C39F3F3";
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
	rename -uid "FCA82699-4613-C5DF-D1F1-67AA8B2256DB";
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
	rename -uid "39313F94-4373-1D0A-EEF1-43B404FB4FCE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -7.2045234361705946e-18 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631575 -1.5253946017807453e-14 -8.8227160329260719e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.604652269631597 0 0 ;
	setAttr ".radi" 5.9906425375606309;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "8B08B7C9-499C-26BB-1096-B3BC37B203E3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.6361350750788981e-14 14.269010402334771 25.374411055997655 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.9906425375606309;
createNode ikEffector -n "effector15" -p "neckQd0_two_ikj";
	rename -uid "FB48425D-4F09-9B17-F372-B98956529BB3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "015754FD-48F3-AFCF-6708-E8A68637CA8E";
	setAttr ".t" -type "double3" -1.6368555274225146e-14 14.269010402334764 25.374411055997669 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "6D80061A-4536-079E-F0F3-FC9DD262A60D";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "18E59C91-48B2-EA03-3775-0AB4BDCD650A";
	setAttr ".t" -type "double3" -8.2002253731858222e-15 5.2506893486806945 13.599534167560421 ;
	setAttr ".r" -type "double3" -43.660985986598114 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "530ED423-4151-9C5F-E9FE-18BD2ED0D29B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "F864C166-434B-DDBE-ADCD-53B9A1EE7AF4";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "56548A0C-48CB-7128-FA63-A9896B17E0B1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "92FCBA01-44B8-6A02-EEED-D7922E90D891";
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
	rename -uid "2F42A7CD-4AC7-09A3-2CA9-289619591768";
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
	rename -uid "74D241D1-47F0-51AC-7B8D-309F9B623496";
	setAttr ".t" -type "double3" -1.6361350750788975e-14 14.269010402334771 25.374411055997655 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "E5CEEDBE-4B16-05C4-6BCE-3DA8D6981259";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "6147E51C-448B-20FA-D254-A3B58B7FE523";
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
	rename -uid "B87BCACB-4EF6-F4F1-814D-8A835C97D94A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.5902838021947092 11.3444784433743 12.934862340934025
		6.5728522270566713e-16 15.942185771651371 12.934862340934025
		-7.5902838021947092 11.344478443374296 12.934862340934025
		-10.734282295324586 8.1376400845921424e-16 4.9828674411044773e-32
		-7.5902838021947092 -11.099847387748694 -6.7966962872152767e-16
		-1.0752603990344806e-15 -15.697554716025779 -9.6119800687107047e-16
		7.5902838021947092 -11.099847387748692 -6.7966962872152767e-16
		10.734282295324586 -2.1406699941659209e-15 -1.3107823281930397e-31
		7.5902838021947092 11.3444784433743 12.934862340934025
		6.5728522270566713e-16 15.942185771651371 12.934862340934025
		-7.5902838021947092 11.344478443374296 12.934862340934025
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "1609FCD5-4712-CD18-CF32-01BB03DECB89";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "EAABDAF8-412D-A49C-F4E5-E78E01AE18A8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "02B57BB3-4B99-F418-33A6-A0AD524CD0E4";
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
	rename -uid "28221B69-4F40-8140-20FB-2BA3B47C6EFB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 88.838378437719086 50.080155082786305 1;
	setAttr ".radi" 1.1981285075121262;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "21698316-43A6-3CDE-7CDB-4E99789927A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "E28AE759-4406-D61B-594E-E1A5C8ED5409";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "5A1C5CB4-4386-9B52-5F87-9086CA75CB7D";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "F2631A9C-495B-338D-7CDC-9FA7AF0F84C9";
	setAttr ".t" -type "double3" 0 1.156175963025305 5.7868253083692309 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "63C14F69-4680-5C02-6C19-6386BB30638E";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "2BAEEB38-41ED-85D8-892D-66A5573D5BE7";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
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
	setAttr -k on ".moduleScale";
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "neckQd0_settingShape1" -p "neckQd0_setting";
	rename -uid "6A1573F4-4E26-DF79-1E6C-B0A5C16C76EC";
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
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "ED2B6751-4B5F-61CB-6046-82BACD45D35E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "6123F26B-432E-5959-98B7-8BA3C83CBAF0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "463BBBD4-4E92-7C02-7F8D-F4B14BD2F4C3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "F2E7E313-43C1-76DC-CEEA-F6AE5BAAD58C";
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
	rename -uid "DDC6636A-425A-6C62-8B1F-A9B81855B490";
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
	rename -uid "EC2D7E46-4937-9EBC-A8DA-4D957B8689D6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "2655274E-48EB-C354-22A7-A194CD253161";
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
	rename -uid "550F224A-4EBE-6985-6C81-39BA699AD99E";
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
	rename -uid "F9441CF5-41D3-F34A-ED42-36A60B51F69E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "EA9C11ED-4068-881B-1354-DEBC9129CEC2";
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
	rename -uid "4AE0F5FD-4EA9-ED66-B37E-54824C92BE2D";
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
	rename -uid "9A2ECC1F-4DBC-5DAD-D7CF-3A9A7CF5D03A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "F5E5F0CB-4C0A-4761-545F-7A8A7E709A97";
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
	rename -uid "B803483A-4849-7515-4E6C-59B941C68DFC";
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
	rename -uid "2632291F-453E-00A8-57E9-239E1175A42F";
	setAttr ".t" -type "double3" 2.4868995751603507e-14 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 34.73144234677784 3.1805546814635168e-15 -89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "7DC72130-4A9A-FC03-B240-C095F22CC187";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "2E1125AC-45F8-4D29-8C9C-4F8B76F23717";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "E4E5B95D-4295-595B-C767-01A364478FD2";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "A626B21D-460D-BEAB-2EDA-97AAE9B14AE5";
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
	rename -uid "21BE1C93-4007-2C1E-9807-8A81AED08D99";
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
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "879AB408-4937-093F-4604-A6A4BB7F1FE0";
	setAttr ".t" -type "double3" -9.1257019408539897 8.3444269510709113 -34.108652583725423 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "3D161B66-4A02-95C4-D293-B19272623B42";
	setAttr ".t" -type "double3" -6.5840614738021941e-08 -4.5705573025998936 3.1685175900398335 ;
	setAttr ".r" -type "double3" -5.96752428637967e-15 57.793162816220239 89.999999999999915 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "E88E137C-4F6A-F156-5F02-FB913E7A50FF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "732EAD09-4330-8DB3-D3A7-688181AECEFB";
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
	rename -uid "65EAE1D9-4641-866D-BCBB-98A3C9C98000";
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
	rename -uid "C416772C-4F9D-ABF2-629E-B39D1A67D56F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670089 -1.0658141036401503e-14 2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755428 4.7312853690039326e-17 0.53297724966496474 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "665AF4E3-417C-F677-5258-4596B90DC6E3";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "A77078BA-4F29-1563-2D5A-4DB05505B653";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "C5BC8FB0-4CD2-81BE-82A7-13928CA11B4C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "60298AAA-4033-85DB-28F5-E68E0C94FB43";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "FE062EFC-4506-ACEB-87A8-FA9105262F6E";
	setAttr ".t" -type "double3" 0.56954940183653591 -29.696551973459925 2.5073573751739033 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "9B1D726F-4629-7E90-D52D-82ADB13DA930";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "11E78332-439E-6F22-C593-82B39EB27FC9";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "A21DB08A-4CA3-3D1A-E9BC-E8A66924D476";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "AEFF2FF4-43ED-7F48-0759-37AE8BF67BA6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "A898603A-4491-5FFD-5A39-7281A5488DE6";
	setAttr ".t" -type "double3" -2.1747055391654797 0 -2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "CB32FD20-49E7-FA5C-D10A-17AFE2CEC586";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "BAA2371B-4607-E93F-5F32-6B86E07BE20E";
	setAttr ".t" -type "double3" 4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "4C65CFE4-4CF9-6EFD-F7A8-B0BD5A16B59D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "168CB85E-4A0F-609C-C4AB-619440262D67";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "260A6B28-457A-FA93-D91B-48BCBC571C93";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape3" -p "rtLegQd0_ballG_ikc";
	rename -uid "1D5469C0-4D9D-5E27-2CD7-9B8A8D07D5D5";
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
	rename -uid "80683CED-4BA1-CB5C-0EEC-1584CB86EB0C";
	setAttr ".t" -type "double3" 6.9984587014459976e-09 4.5705593402659277 -3.1685175263687135 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "9BCCF69C-4629-9188-B348-7797BCB20476";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 173.84330993628481 0 87.757826737056263 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "54B16997-49B9-0C2E-EAA1-0C96581082F4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "7917593B-400E-EB42-99C9-95BFA600233D";
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
	rename -uid "7586D96B-4A03-AD89-C157-3D88348C1ABA";
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
	rename -uid "68215170-4608-65F1-04DC-F1884BC926AF";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "190E9F2C-4731-6B0E-9781-C1B1295EA16D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 3.0814879110195774e-33 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "19DB1B39-4737-C7CE-A01C-209A82E55B60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722982 0.19538001629758384 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "AFF17FBF-4278-FE52-C772-CAAF0F52C89E";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "B235EF59-4213-C537-D798-529E8DBAFA0B";
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722985 0.19538001629756963 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "79017201-4009-9824-5A5B-B3A7FF3DDCF5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "40F25C7C-46ED-DAB3-060E-76A380010018";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "58697BA1-4A00-BEAB-C9EC-FC9AB90AD46C";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr ".r" -type "double3" 0 57.793162816220232 89.999999999999986 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "39108BDC-4CC7-1DA4-9552-F4A1D454A92B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.3092638912203256e-14 ;
	setAttr ".r" -type "double3" 0 -23.061720469442346 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755417 5.3991650363334001e-17 0.53297724966496496 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "9D7DB772-4AAA-3DDF-77A6-549EE0CCEC0F";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "94E7F8D0-444A-E93C-44BA-B29DD56F7DC4";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "diamondShape10" -p "rtLegQd0_inRollG_ctl";
	rename -uid "FD65FE88-40BC-A813-A917-E3BE09D0EF7D";
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
createNode nurbsCurve -n "diamondShape11" -p "rtLegQd0_outRollG_ctl";
	rename -uid "53118E63-4B34-3475-80DC-248DAA138592";
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
createNode nurbsCurve -n "diamondShape9" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "E194FBF7-471E-2F1A-7442-2DB904D36923";
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
createNode nurbsCurve -n "diamondShape12" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "A1D367CE-4ACD-F54D-E8A3-A3A149D7BDB0";
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
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "EAB2E79E-4EFF-01A6-6C1E-2E92FEE03A8A";
	setAttr ".t" -type "double3" -9.1257019996961457 8.3444289887369543 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "46E0CAB4-4E6D-7881-4BC0-4D979852C5C5";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "13FA2193-4868-7752-640F-978E45D0FDD7";
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
	rename -uid "6628450A-424F-FDB0-2096-12B00CEC4098";
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
	rename -uid "B6BC2194-45F4-DFBF-9787-C08FD1D42A12";
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
	rename -uid "21321A7C-49E0-5787-C5FD-7FBE4866297D";
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
	rename -uid "CBA97528-4AB3-00B8-3EBA-2CBFE32C7DC3";
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
	rename -uid "D43C33E5-421C-4E94-C744-6B8E5AAAB76E";
	setAttr ".t" -type "double3" -6.9984498196618006e-09 -8.3444289887369578 7.8719529438819684 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "A9C526DB-4329-95B5-3847-E284CD5791D4";
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
	rename -uid "FF60ACA6-43D7-0D62-A4B5-BA983A07D595";
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
	rename -uid "3021D5FF-40FC-7FA0-193B-C8B4D1A75CE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 98.692320603839079 -13.888349543035075 87.898364012411818 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "5BD74EB9-42C6-B4CC-9D40-708CF5C344A0";
	setAttr ".t" -type "double3" -11.666222281262513 38.371445997601946 -1.9846335679030154 ;
	setAttr ".r" -type "double3" 14.383137188892622 -6.4905529621657241 -1.0003349776607069e-16 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "E24BFE72-4946-A586-A057-E894EDB1336C";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "475D6FC3-4F21-A017-31D8-36B703D8043C";
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
	rename -uid "6C516812-4332-3064-C0BC-3B82D85C44B2";
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
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "00DD238B-4CBB-B33A-DAB7-7DA1A4235F19";
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
	rename -uid "5C434F93-4507-A029-8234-128AE3A68EA4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.5433896716436344 -5.4014652200385065e-33 8.8212619401994775e-17
		-3.4753044117833634 4.2328754312954449e-17 -0.69128101686846266
		-3.2736651775199666 8.3030842314215047e-17 -1.3559965630605819
		-2.9462209034619469 1.2054209648682001e-16 -1.9686017827773128
		-2.5055548645653394 1.5342098332613166e-16 -2.5055548645653394
		-1.9686017827773128 1.8040400202387415e-16 -2.9462209034619469
		-1.3559965630605819 2.0045418938551265e-16 -3.2736651775199666
		-0.69128101686846266 2.1280102864267707e-16 -3.4753044117833634
		2.1697004106378403e-16 2.1697004106378403e-16 -3.5433896716436344
		0.69128101686846266 2.1280102864267707e-16 -3.4753044117833634
		1.3559965630605819 2.0045418938551265e-16 -3.2736651775199666
		1.9686017827773128 1.8040400202387415e-16 -2.9462209034619469
		2.5055548645653394 1.5342098332613166e-16 -2.5055548645653394
		2.9462209034619469 1.2054209648682001e-16 -1.9686017827773128
		3.2736651775199666 8.3030842314215047e-17 -1.3559965630605819
		3.4753044117833634 4.2328754312954449e-17 -0.69128101686846266
		3.5433896716436344 2.3467849842600093e-32 -3.8325906054427622e-16
		3.4085275935437864 4.1515421157107523e-17 -0.67799823928979441
		3.0244722681044869 7.6710496352703012e-17 -1.2527774322826697
		2.4496929906306186 1.0022709469275632e-16 -1.6368325887599833
		1.7716948358218172 1.0848502053189201e-16 -1.7716948358218172
		1.0936965965320227 1.0022709469275632e-16 -1.6368325887599833
		0.5189174035391475 7.6710496352703012e-17 -1.2527774322826697
		0.13486224706183375 4.1515421157107523e-17 -0.67799823928979441
		0 2.3467849842600093e-32 -3.8325906054427622e-16
		-0.13486224706183375 -4.1515421157107523e-17 0.67799823928979441
		-0.5189174035391475 -7.6710496352703012e-17 1.2527774322826697
		-1.0936965965320227 -1.0022709469275632e-16 1.6368325887599833
		-1.7716948358218172 -1.0848502053189201e-16 1.7716948358218172
		-2.4496929906306186 -1.0022709469275632e-16 1.6368325887599833
		-3.0244722681044869 -7.6710496352703012e-17 1.2527774322826697
		-3.4085275935437864 -4.1515421157107523e-17 0.67799823928979441
		-3.5433896716436344 -5.4014652200385065e-33 8.8212619401994775e-17
		-3.4753044117833634 -4.2328754312954449e-17 0.69128101686846266
		-3.2736651775199666 -8.3030842314215047e-17 1.3559965630605819
		-2.9462209034619469 -1.2054209648682001e-16 1.9686017827773128
		-2.5055548645653394 -1.5342098332613166e-16 2.5055548645653394
		-1.9686017827773128 -1.8040400202387415e-16 2.9462209034619469
		-1.3559965630605819 -2.0045418938551265e-16 3.2736651775199666
		-0.69128101686846266 -2.1280102864267707e-16 3.4753044117833634
		-4.1366768099767081e-16 -2.1697004106378403e-16 3.5433896716436344
		0.69128101686846266 -2.1280102864267707e-16 3.4753044117833634
		1.3559965630605819 -2.0045418938551265e-16 3.2736651775199666
		1.9686017827773128 -1.8040400202387415e-16 2.9462209034619469
		2.5055548645653394 -1.5342098332613166e-16 2.5055548645653394
		2.9462209034619469 -1.2054209648682001e-16 1.9686017827773128
		3.2736651775199666 -8.3030842314215047e-17 1.3559965630605819
		3.4753044117833634 -4.2328754312954449e-17 0.69128101686846266
		3.5433896716436344 2.3467849842600093e-32 -3.8325906054427622e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "6A2A6E01-407A-489E-543F-C8BD6AF1BCAD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "F0A46E34-4080-AD7C-722C-BEAC05A5851F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "4F70F635-4054-49BF-266A-5D8650359D24";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "E08DE686-461E-1206-6D5A-10AC189B9446";
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
createNode nurbsCurve -n "rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "5EAFA805-409C-96DE-7A90-EC91C73E309E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		-8.426832155792404e-32 6.4317772609213755 -2.4974416675703557e-15
		-1.4599837383942446e-16 7.1131895176811 7.1131895176811
		-2.0647288036813186e-16 6.4427552712038081e-16 6.431777260921363
		-1.4599837383942441e-16 -7.1131895176811 7.1131895176811044
		-1.2312854593139278e-31 -6.4317772609213755 -1.2869180044435253e-15
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "75D2DA61-4933-CFA3-9424-C3B85F57498C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "7D1F846E-42FD-E49E-35E1-99B88335A74E";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "32277CAD-4733-FCF4-B031-ABA3C1F04F70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		-8.426832155792404e-32 6.4317772609213755 -2.4974416675703557e-15
		-1.4599837383942446e-16 7.1131895176811 7.1131895176811
		-2.0647288036813186e-16 6.4427552712038081e-16 6.431777260921363
		-1.4599837383942441e-16 -7.1131895176811 7.1131895176811044
		-1.2312854593139278e-31 -6.4317772609213755 -1.2869180044435253e-15
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "CCCB71FD-412D-2C9A-C6D0-D48D118DD030";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "685FA66B-49D1-D2B4-A951-BBBA2762E436";
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
	rename -uid "067DB1EC-41E7-30A5-8ADD-7A9570E8B56D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		-8.426832155792404e-32 6.4317772609213755 -2.4974416675703557e-15
		-1.4599837383942446e-16 7.1131895176811 7.1131895176811
		-2.0647288036813186e-16 6.4427552712038081e-16 6.431777260921363
		-1.4599837383942441e-16 -7.1131895176811 7.1131895176811044
		-1.2312854593139278e-31 -6.4317772609213755 -1.2869180044435253e-15
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "765F8302-4424-E93B-D4AA-EA9A79EA7175";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "DC514FF6-47A2-A38B-65C8-5C972B306171";
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
	rename -uid "EE33057A-4A28-9E13-A4E0-5ABBE145C1FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		-8.426832155792404e-32 6.4317772609213755 -2.4974416675703557e-15
		-1.4599837383942446e-16 7.1131895176811 7.1131895176811
		-2.0647288036813186e-16 6.4427552712038081e-16 6.431777260921363
		-1.4599837383942441e-16 -7.1131895176811 7.1131895176811044
		-1.2312854593139278e-31 -6.4317772609213755 -1.2869180044435253e-15
		1.4599837383942451e-16 -7.1131895176811 -7.1131895176811089
		2.0647288036813166e-16 -3.9383277177080388e-16 -6.4317772609213568
		1.4599837383942441e-16 7.1131895176811 -7.1131895176811044
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "602F02F7-4F81-7D34-995D-D49B39848F40";
	setAttr ".t" -type "double3" 2.3092638912203256e-14 -1.7763568394002505e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 35.248105269871381 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "184E0117-463A-0736-B7D8-E796DC9DA483";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "03D998DA-4449-32A7-C47E-12BC49DDEFEE";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "DC453D69-4044-CA5B-2281-DB981EB1E6B9";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "C962C800-4029-DAAA-1040-43A53B192EA6";
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
	rename -uid "CA9D988F-43C5-3F64-D954-5299F3255C38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.55659475884055 13.74235631462787 3.5565947588405544
		-1.9691638588540194e-16 13.74235631462787 3.2158886304606784
		3.55659475884055 13.74235631462787 3.5565947588405522
		3.2158886304606877 13.74235631462787 1.2487208337851778e-15
		3.55659475884055 13.74235631462787 -3.55659475884055
		3.2213776356019041e-16 13.74235631462787 -3.2158886304606815
		-3.55659475884055 13.74235631462787 -3.5565947588405522
		-3.2158886304606877 13.74235631462787 6.4345900222176263e-16
		-3.55659475884055 13.74235631462787 3.5565947588405544
		-1.9691638588540194e-16 13.74235631462787 3.2158886304606784
		3.55659475884055 13.74235631462787 3.5565947588405522
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "30FD8FCF-4C5F-A40E-3FEB-B9A73166207A";
	setAttr ".t" -type "double3" -14.756214514549214 5.3290705182007514e-15 3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "94BD52E0-4BAC-3DA9-9E6A-7E98F0185E58";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "7D9A5648-4620-86FC-72CE-6FAD785E39E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		25.766918089927255 0 -1.7177945393284841
		25.766918089927255 0 1.7177945393284835
		24.049123550598772 0 2.5766918089927255
		22.331329011270288 0 1.7177945393284841
		22.331329011270288 0 -1.7177945393284835
		25.766918089927255 0 -1.7177945393284841
		22.331329011270288 0 -1.7177945393284835
		22.331329011270288 0 1.7177945393284841
		24.049123550598772 0 2.5766918089927255
		25.766918089927255 0 1.7177945393284835
		;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "5A542B4D-4EA5-5DDA-C6D3-96962A83B942";
	setAttr ".t" -type "double3" -7.1263478896698285 6.0415997745710044 24.078625212668204 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "0DF1681C-4C2F-AFA1-A415-058C0A815D99";
	setAttr ".t" -type "double3" 4.4532202814195898e-08 -3.569541736977011 2.5225249320179728 ;
	setAttr ".r" -type "double3" -6.1908648019767329e-15 59.086082974435662 89.999999999999943 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "DF85E896-413B-D2FD-E8B1-759F85BB1D98";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "A86D8D51-4901-B693-1A4B-0A88429DE9E7";
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
	rename -uid "752E3668-4686-B8B6-0E2A-0EB6714E08BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.2999186919712255e-17 -3.55659475884055 -3.5565947588405544
		1.0323644018406583e-16 -1.9691638588540194e-16 -3.2158886304606784
		7.2999186919712206e-17 3.55659475884055 -3.5565947588405522
		-4.213416077896202e-32 3.2158886304606877 -1.2487208337851778e-15
		-7.2999186919712231e-17 3.55659475884055 3.55659475884055
		-1.0323644018406593e-16 3.2213776356019041e-16 3.2158886304606815
		-7.2999186919712206e-17 -3.55659475884055 3.5565947588405522
		-6.1564272965696392e-32 -3.2158886304606877 -6.4345900222176263e-16
		7.2999186919712255e-17 -3.55659475884055 -3.5565947588405544
		1.0323644018406583e-16 -1.9691638588540194e-16 -3.2158886304606784
		7.2999186919712206e-17 3.55659475884055 -3.5565947588405522
		;
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "9E0DCD9B-48EC-857A-3EBE-D38801A8AD3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157224 -1.5987211554602254e-14 1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118898 -1.0257104630681869e-17 0.5137496590860734 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "8543D1CC-4D1E-45CF-4108-1291ADB641EE";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "1240111B-4A82-CC34-8B1A-C5BE47AECFDB";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "1279CD6E-4836-FB24-9122-11AD1D77A420";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "F6EC0706-4C73-AF19-0DC1-E8BE95E6253D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "4DB02494-4956-E47C-767B-17B51FDCD288";
	setAttr ".t" -type "double3" 0.61320484944455167 -23.266382580114165 2.7857744119883741 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "738FA6AE-4379-D2E2-4350-BAA29F63B81D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "D387B777-4581-84F5-3426-928F444FADEB";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "43869026-4751-7EC3-67DF-F89C098815C8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "1CEB66D4-4E87-A1B4-D7E1-F08EEB6DEE9E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "89071949-4021-DDFF-47ED-49939786208F";
	setAttr ".t" -type "double3" -1.9186890794618412 0 -3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "D64F02EB-4E6D-B9BA-5088-338DF39B3BC1";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "6E5FBC76-4F2D-1795-6FD8-06A0C9BB6222";
	setAttr ".t" -type "double3" 4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "5F3164A7-48EB-47BD-9E8F-E981C6FC31DE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "83901C3B-47EF-1D0C-6CDA-E88ECCE9B99B";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940222 -0.44514092909523839 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "BD210899-4D5A-3DBC-C43A-72B9AB7E0FF7";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape4" -p "rtLegQd1_ballG_ikc";
	rename -uid "E7F9B300-4E4A-B752-A5C5-42B938F1BA6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-4.2557200073578665e-17 6.1761663221820937 3.7568318753996536e-16
		-4.1107097380130098e-17 6.1998483803834379 0.17988229133403874
		-3.685561605287936e-17 6.2692803656302667 0.34750589026231188
		-3.009248259349237e-17 6.3797306717174767 0.49144754020367648
		-2.1278600036789333e-17 6.5236722397480138 0.60189790089810358
		-1.1014613270982967e-17 6.691295865979896 0.67132983153771519
		1.3032106612443989e-32 6.8711781573139348 0.69501178052462376
		1.1014613270982967e-17 7.0510604486479735 0.67132983153771519
		2.1278600036789333e-17 7.2186840748798557 0.60189790089810358
		3.009248259349237e-17 7.3626256429103938 0.49144754020367648
		3.685561605287936e-17 7.4730763858553448 0.34750589026231188
		4.1107097380130098e-17 7.5425079342444326 0.17988229133403874
		4.2557200073578665e-17 7.5661899924457767 2.0537034722041281e-16
		4.1107097380130098e-17 7.5425079342444326 -0.17988229133403874
		3.685561605287936e-17 7.4730763858553448 -0.34750589026231188
		3.009248259349237e-17 7.3626256429103938 -0.49144754020367648
		2.1278600036789333e-17 7.2186840748798557 -0.60189790089810358
		1.1014613270982967e-17 7.0510604486479735 -0.67132983153771519
		-3.1839917782773115e-32 6.8711781573139348 -0.69501178052462376
		-1.1014613270982967e-17 6.691295865979896 -0.67132983153771519
		-2.1278600036789333e-17 6.5236722397480138 -0.60189790089810358
		-3.009248259349237e-17 6.3797306717174767 -0.49144754020367648
		-3.685561605287936e-17 6.2692803656302667 -0.34750589026231188
		-4.1107097380130098e-17 6.1998483803834379 -0.17988229133403874
		-4.2557200073578665e-17 6.1761663221820937 3.7568318753996536e-16
		0 0 0
		;
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "6292804E-410F-B0B6-5319-E28468C50A72";
	setAttr ".t" -type "double3" 6.998460477802837e-09 3.5695405731727079 -2.5225248666003814 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "1D7C65E1-4733-A11E-B253-06BE45904850";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 172.87139862421796 -3.975693351829396e-16 90.749221190872092 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "3E565495-4A86-BC7B-319A-0DB34FE70E8D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "56E7CA1A-49A0-A5CC-6D41-59AE1BA9AD12";
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
	rename -uid "3AEFAA89-4555-B13A-8DC5-209429F7ABA5";
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
		4.1022994542381435 6.8711781573139348 0
		3.8088836590274191 8.4488693582378751 0
		2.9151935005827041 9.7863716578966393 0
		1.5776912009239406 10.680061816341354 0
		0 10.973381415058839 0
		-1.5776912009239406 10.680061816341354 0
		-2.9151935005827041 9.7863716578966393 0
		-3.8088836590274191 8.4488693582378751 0
		-4.1022994542381435 6.8711779629500196 0
		-3.8088836590274191 5.2934869563899944 0
		-2.9151935005827041 3.9559846567312307 0
		-1.5776912009239406 3.0622944982865157 0
		1.6382152859995842e-07 2.7689748995690318 -0.027894234568489308
		1.5776912009239406 3.0622944982865157 0
		2.9151935005827041 3.9559846567312307 0
		3.8088836590274191 5.2934869563899944 0
		4.1022994542381435 6.8711781573139348 0
		3.7900291463522953 6.8818531096535374 -1.5698470640179925
		2.9007640265966401 6.8909030558598987 -2.9007008117582251
		1.5698827941440532 6.8969500223944165 -3.7899466922152323
		1.6382152859995842e-07 6.8990734912709186 -4.1022087546873749
		-1.5698827941440532 6.8969500223944165 -3.7899466922152323
		-2.9007640265966401 6.8909030558598987 -2.9007008117582251
		-3.7900291463522953 6.8818531096535374 -1.5698470640179925
		-4.1022994542381435 6.8711779629500196 0
		-3.7900291463522953 6.8605028201883593 1.5698415670755215
		-2.9007640265966401 6.851452873981998 2.9006980632869892
		-1.5698827941440532 6.8454059074474802 3.7899411952727613
		1.6382152859995842e-07 6.8432825485098281 4.102203257744903
		1.5698827941440532 6.8454059074474802 3.7899411952727613
		2.9007640265966401 6.851452873981998 2.9006980632869892
		3.7900291463522953 6.8605028201883593 1.5698415670755215
		4.1022994542381435 6.8711781573139348 0
		3.7900291463522953 6.8818531096535374 -1.5698470640179925
		2.9007640265966401 6.8909030558598987 -2.9007008117582251
		1.5698827941440532 6.8969500223944165 -3.7899466922152323
		1.6382152859995842e-07 6.8990734912709186 -4.1022087546873749
		1.6382152859995842e-07 8.4667948876354213 -3.7792688814655437
		1.6382152859995842e-07 9.7915992501864473 -2.8809750337014659
		1.6382152859995842e-07 10.671794414865149 -1.5440746492432633
		0 10.973381415058839 0
		1.6382152859995842e-07 10.650444290308243 1.5956167303214859
		1.6382152859995842e-07 9.7521504425441652 2.9204183444012779
		1.6382152859995842e-07 8.4152528065571985 3.8006162575512135
		1.6382152859995842e-07 6.8432825485098281 4.102203257744903
		1.6382152859995842e-07 5.2755614269924491 3.7792633845230736
		1.6382152859995842e-07 3.9507570644414218 2.8809695367589949
		1.6382152859995842e-07 3.0705618997627213 1.5440691523007923
		1.6382152859995842e-07 2.7689748995690318 -0.027894234568489308
		1.6382152859995842e-07 3.0919120243196261 -1.5956222272639569
		1.6382152859995842e-07 3.9902058720837048 -2.9204238413437484
		1.6382152859995842e-07 5.327103508070671 -3.8006217544936844
		1.6382152859995842e-07 6.8990734912709186 -4.1022087546873749
		;
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "53B181BA-46F4-5865-0FD5-2DAC9A51DC95";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "79D625B3-4462-A111-3225-DBBC9B681803";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "32D34EE5-442F-5FBA-16D8-358B933915B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.61320485644301748 17.224783969347424 -1.1618537823975252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "802C6C9E-499E-6F0F-8F22-008D5CE24CFA";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "0902255A-433F-3ECE-47A5-A2921EC63090";
	setAttr ".t" -type "double3" -0.61320485644301925 17.224783969347421 -1.1618537823975252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "613132AA-40D7-0C6D-7A00-E4B4A195847A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "23654905-4538-1051-8A57-C8B3B9E95A74";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "E0CA0CDD-45FA-495C-1E64-27BC142B18BA";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940222 -0.44514092909523839 ;
	setAttr ".r" -type "double3" 0 59.086082974435641 90.000000000000028 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "3A25825D-4F90-87C5-0268-28915E2CA77F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 8.8817841970012523e-16 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 -23.837977704564263 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118887 -3.7649700215460455e-17 0.51374965908607373 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "1C285CC8-4DBC-2323-0AA1-B0BA01965C3B";
	setAttr ".t" -type "double3" -1.7763568394002505e-14 1.865174681370263e-14 -2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "4BF88EA4-4B73-D9F5-3AB6-18894E41AF23";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "diamondShape14" -p "rtLegQd1_inRollG_ctl";
	rename -uid "D2B16D70-4F2B-197F-16A8-5593CAE5EF30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379973
		-0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0 0.42515414848379973 0
		-0.42515414848379973 0 0
		0 -0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 -0.42515414848379973 0
		0 0 -0.42515414848379973
		;
createNode nurbsCurve -n "diamondShape15" -p "rtLegQd1_outRollG_ctl";
	rename -uid "E089E431-4C97-6DD6-8894-40B25664B9A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379973
		-0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0 0.42515414848379973 0
		-0.42515414848379973 0 0
		0 -0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 -0.42515414848379973 0
		0 0 -0.42515414848379973
		;
createNode nurbsCurve -n "diamondShape13" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "DD206E48-4A98-9CF0-920D-A783D801FBAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379973
		-0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0 0.42515414848379973 0
		-0.42515414848379973 0 0
		0 -0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 -0.42515414848379973 0
		0 0 -0.42515414848379973
		;
createNode nurbsCurve -n "diamondShape16" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "B10BFACF-49C5-84DB-29F6-5D8226D157F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.42515414848379973
		-0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 -0.42515414848379973
		0 0.42515414848379973 0
		-0.42515414848379973 0 0
		0 -0.42515414848379973 0
		0.42515414848379973 0 0
		0 0 0.42515414848379973
		0 -0.42515414848379973 0
		0 0 -0.42515414848379973
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "9653FCC8-4EB3-577D-1DF8-5D8B261700CF";
	setAttr ".t" -type "double3" -7.1263478381391474 6.0415986107667301 24.078625278085791 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "026400A8-4DD9-8A8E-283A-C2B9342DABE9";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "B3C93949-4E21-C0A2-DF70-DFAB719284E9";
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
	rename -uid "331F6466-4879-1C28-F864-F297197FD14E";
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
		5.1533836179854475 -6.0415986107667292 5.1533836179854529
		5.0543627967912714 -6.0415986107667292 6.1587588874908743
		4.7611056478357181 -6.0415986107667292 7.1254981492101486
		4.2848818788926479 -6.0415986107667292 8.0164501554690286
		3.643992502333175 -6.0415986107667292 8.797376120318626
		2.8630665374835758 -6.0415986107667292 9.4382654968781026
		1.9721145312246955 -6.0415986107667292 9.914489265821171
		1.0053752695054206 -6.0415986107667292 10.207746414776725
		-6.0162399499789135e-16 -6.0415986107667292 10.3067672359709
		-1.0053752695054219 -6.0415986107667292 10.207746414776725
		-1.9721145312246968 -6.0415986107667292 9.914489265821171
		-2.8630665374835775 -6.0415986107667292 9.4382654968781026
		-3.6439925023331772 -6.0415986107667292 8.7973761203186278
		-4.2848818788926506 -6.0415986107667292 8.0164501554690304
		-4.7611056478357217 -6.0415986107667292 7.1254981492101486
		-5.054362796791275 -6.0415986107667292 6.1587588874908734
		-5.1533836179854511 -6.0415986107667292 5.1533836179854511
		-5.0543627663986017 -4.4983621718218565 5.153383617985452
		-4.7611056248226058 -2.9956754059184822 5.153383617985452
		-4.2848819762530708 -1.6944405449181037 5.153383617985452
		-3.6439925014020229 -0.65902466483152722 5.153383617985452
		-2.8630664752701969 0.12067745763120286 5.153383617985452
		-1.9721144684368228 0.59690110620073789 5.153383617985452
		-1.0053752473974424 0.8901582477767338 5.153383617985452
		3.155537377555996e-16 0.98917909936358317 5.153383617985452
		1.0053752473974424 0.8901582477767338 5.153383617985452
		1.9721144684368228 0.59690110620073789 5.153383617985452
		2.8630664752701969 0.12067745763120286 5.153383617985452
		3.6439925014020229 -0.65902466483152722 5.153383617985452
		4.2848819762530708 -1.6944405449181037 5.153383617985452
		4.7611056248226058 -2.9956754059184822 5.153383617985452
		5.0543627663986017 -4.4983621718218565 5.153383617985452
		5.153383617985452 -6.0415986107667292 5.153383617985452
		5.153383617985452 -6.0415986107667301 -4.8441806009063244
		5.153383617985452 -5.7323955936876025 -5.153383617985452
		5.0543627663986017 -4.4983621718218565 -5.153383617985452
		4.7611056248226058 -2.9956754059184822 -5.153383617985452
		4.2848819762530708 -1.6944405449181037 -5.153383617985452
		3.6439925014020229 -0.65902466483152722 -5.153383617985452
		2.8630664752701969 0.12067745763120286 -5.153383617985452
		1.9721144684368228 0.59690110620073789 -5.153383617985452
		1.0053752473974424 0.8901582477767338 -5.153383617985452
		3.155537377555996e-16 0.98917909936358317 -5.153383617985452
		-1.0053752473974424 0.8901582477767338 -5.153383617985452
		-1.9721144684368228 0.59690110620073789 -5.153383617985452
		-2.8630664752701969 0.12067745763120286 -5.153383617985452
		-3.6439925014020229 -0.65902466483152722 -5.153383617985452
		-4.2848819762530708 -1.6944405449181037 -5.153383617985452
		-4.7611056248226058 -2.9956754059184822 -5.153383617985452
		-5.0543627663986017 -4.4983621718218565 -5.153383617985452
		-5.153383617985452 -5.7323955936876025 -5.153383617985452
		-5.153383617985452 -6.0415986107667283 -4.8441806009063244
		-5.153383617985452 -6.0415986107667292 5.153383617985452
		;
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "48885E5D-4416-B0C1-5567-A5901F6E6520";
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
	rename -uid "084F4AE1-4FC6-0126-42EE-198316C377F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0306767235970895 0.70307774994532313 
		-0.51533835041288611 -1.0108725593582539 0.70307774994532313 -0.71641340431397005 
		-0.95222112956714344 0.70307774994532313 -0.90976125665782526 -0.85697637577852959 
		0.70307774994532313 -1.0879516579096009 -0.72879850046663464 0.70307774994532313 
		-1.2441368508795208 -0.57261330749671524 0.70307774994532313 -1.3723147261914157 
		-0.3944229062449387 0.70307774994532313 -1.4675594799800287 -0.20107505390108382 
		0.70307774994532313 -1.5262109097711392 2.9796048293960322e-16 0.70307774994532313 
		-1.5460150740099738 0.2010750539010846 0.70307774994532313 -1.5262109097711392 0.39442290624493959 
		0.70307774994532313 -1.4675594799800287 0.57261330749671524 0.70307774994532313 -1.3723147261914157 
		0.72879850046663508 0.70307774994532313 -1.2441368508795208 0.85697637577853003 0.70307774994532313 
		-1.0879516579096009 0.95222112956714433 0.70307774994532313 -0.90976125665782526 
		1.0108725593582548 0.70307774994532313 -0.71641340431396916 1.0306767235970904 0.70307774994532313 
		-0.51533835041288611 1.0108725532797198 0.39443046215634858 -0.51533835041288523 
		0.95222112496452116 0.093893108975673378 -0.51533835041288523 0.85697639525061398 
		-0.16635386322440215 -0.51533835041288523 0.72879850028040449 -0.37343703924171745 
		-0.51533835041288523 0.57261329505403946 -0.52937746373426342 -0.51533835041288523 
		0.39442289368736461 -0.62462219344817038 -0.51533835041288523 0.20107504947948862 
		-0.68327362176336948 -0.51533835041288523 1.1452493638890508e-16 -0.70307779208073939 
		-0.51533835041288523 -0.20107504947948818 -0.68327362176336948 -0.51533835041288523 
		-0.39442289368736416 -0.62462219344817038 -0.51533835041288523 -0.57261329505403946 
		-0.52937746373426342 -0.51533835041288523 -0.72879850028040449 -0.37343703924171745 
		-0.51533835041288523 -0.85697639525061398 -0.16635386322440215 -0.51533835041288523 
		-0.95222112496452116 0.093893108975673378 -0.51533835041288523 -1.0108725532797198 
		0.39443046215634858 -0.51533835041288523 -1.0306767235970904 0.70307774994532313 
		-0.51533835041288523 -1.0306767235970904 0.70307774994532224 1.4841744933654692 -1.0306767235970904 
		0.64123714652949815 1.5460150967812951 -1.0108725532797198 0.39443046215634858 1.5460150967812951 
		-0.95222112496452116 0.093893108975673378 1.5460150967812951 -0.85697639525061398 
		-0.16635386322440215 1.5460150967812951 -0.72879850028040449 -0.37343703924171745 
		1.5460150967812951 -0.57261329505403946 -0.52937746373426342 1.5460150967812951 -0.39442289368736416 
		-0.62462219344817038 1.5460150967812951 -0.20107504947948818 -0.68327362176336948 
		1.5460150967812951 1.1452493638890508e-16 -0.70307779208073939 1.5460150967812951 
		0.20107504947948862 -0.68327362176336948 1.5460150967812951 0.39442289368736461 -0.62462219344817038 
		1.5460150967812951 0.57261329505403946 -0.52937746373426342 1.5460150967812951 0.72879850028040449 
		-0.37343703924171745 1.5460150967812951 0.85697639525061398 -0.16635386322440215 
		1.5460150967812951 0.95222112496452116 0.093893108975673378 1.5460150967812951 1.0108725532797198 
		0.39443046215634858 1.5460150967812951 1.0306767235970904 0.64123714652949815 1.5460150967812951 
		1.0306767235970904 0.70307774994532224 1.4841744933654692 1.0306767235970904 0.70307774994532313 
		-0.51533835041288523;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "F28B24BE-4206-EDCF-E27C-268FB1B51C4B";
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
		5.1533836179854475 -6.0415986107667292 5.1533836179854529
		5.0543627967912714 -6.0415986107667292 6.1587588874908743
		4.7611056478357181 -6.0415986107667292 7.1254981492101486
		4.2848818788926479 -6.0415986107667292 8.0164501554690286
		3.643992502333175 -6.0415986107667292 8.797376120318626
		2.8630665374835758 -6.0415986107667292 9.4382654968781026
		1.9721145312246955 -6.0415986107667292 9.914489265821171
		1.0053752695054206 -6.0415986107667292 10.207746414776725
		-6.0162399499789135e-16 -6.0415986107667292 10.3067672359709
		-1.0053752695054219 -6.0415986107667292 10.207746414776725
		-1.9721145312246968 -6.0415986107667292 9.914489265821171
		-2.8630665374835775 -6.0415986107667292 9.4382654968781026
		-3.6439925023331772 -6.0415986107667292 8.7973761203186278
		-4.2848818788926506 -6.0415986107667292 8.0164501554690304
		-4.7611056478357217 -6.0415986107667292 7.1254981492101486
		-5.054362796791275 -6.0415986107667292 6.1587588874908734
		-5.1533836179854511 -6.0415986107667292 5.1533836179854511
		-5.0543627663986017 -4.4983621718218565 5.153383617985452
		-4.7611056248226058 -2.9956754059184822 5.153383617985452
		-4.2848819762530708 -1.6944405449181037 5.153383617985452
		-3.6439925014020229 -0.65902466483152722 5.153383617985452
		-2.8630664752701969 0.12067745763120286 5.153383617985452
		-1.9721144684368228 0.59690110620073789 5.153383617985452
		-1.0053752473974424 0.8901582477767338 5.153383617985452
		3.155537377555996e-16 0.98917909936358317 5.153383617985452
		1.0053752473974424 0.8901582477767338 5.153383617985452
		1.9721144684368228 0.59690110620073789 5.153383617985452
		2.8630664752701969 0.12067745763120286 5.153383617985452
		3.6439925014020229 -0.65902466483152722 5.153383617985452
		4.2848819762530708 -1.6944405449181037 5.153383617985452
		4.7611056248226058 -2.9956754059184822 5.153383617985452
		5.0543627663986017 -4.4983621718218565 5.153383617985452
		5.153383617985452 -6.0415986107667292 5.153383617985452
		5.153383617985452 -6.0415986107667301 -4.8441806009063244
		5.153383617985452 -5.7323955936876025 -5.153383617985452
		5.0543627663986017 -4.4983621718218565 -5.153383617985452
		4.7611056248226058 -2.9956754059184822 -5.153383617985452
		4.2848819762530708 -1.6944405449181037 -5.153383617985452
		3.6439925014020229 -0.65902466483152722 -5.153383617985452
		2.8630664752701969 0.12067745763120286 -5.153383617985452
		1.9721144684368228 0.59690110620073789 -5.153383617985452
		1.0053752473974424 0.8901582477767338 -5.153383617985452
		3.155537377555996e-16 0.98917909936358317 -5.153383617985452
		-1.0053752473974424 0.8901582477767338 -5.153383617985452
		-1.9721144684368228 0.59690110620073789 -5.153383617985452
		-2.8630664752701969 0.12067745763120286 -5.153383617985452
		-3.6439925014020229 -0.65902466483152722 -5.153383617985452
		-4.2848819762530708 -1.6944405449181037 -5.153383617985452
		-4.7611056248226058 -2.9956754059184822 -5.153383617985452
		-5.0543627663986017 -4.4983621718218565 -5.153383617985452
		-5.153383617985452 -5.7323955936876025 -5.153383617985452
		-5.153383617985452 -6.0415986107667283 -4.8441806009063244
		-5.153383617985452 -6.0415986107667292 5.153383617985452
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "7CF9B782-4E51-ED48-00DD-0E9C993ADCC4";
	setAttr ".t" -type "double3" -6.9984613659812567e-09 -6.0415986107667301 6.7176657956956234 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "BFF1205E-4DD7-CB88-956B-33AB907CB4A8";
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
	rename -uid "23C8482F-48E2-5CEC-602E-0BA306CFB9D5";
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
		2.3710631725603668 4.8666124613141502e-17 -2.3710631725603695
		1.3127759059026796e-16 6.8824293456043882e-17 -2.1439257536404521
		-2.3710631725603668 4.8666124613141471e-17 -2.3710631725603681
		-2.1439257536404583 -2.808944051930801e-32 -8.3248055585678515e-16
		-2.3710631725603668 -4.8666124613141489e-17 2.3710631725603668
		-2.1475850904012693e-16 -6.8824293456043956e-17 2.1439257536404543
		2.3710631725603668 -4.8666124613141471e-17 2.3710631725603681
		2.1439257536404583 -4.1042848643797591e-32 -4.2897266814784172e-16
		2.3710631725603668 4.8666124613141502e-17 -2.3710631725603695
		1.3127759059026796e-16 6.8824293456043882e-17 -2.1439257536404521
		-2.3710631725603668 4.8666124613141471e-17 -2.3710631725603681
		;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "73D083FD-447E-71EF-8DE1-43A391994177";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 152.53100353915562 -0.30860936166101383 89.40640700051533 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "C42B11D8-4B9F-5E95-B883-67A50947B359";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 27.468996460844384 0.30860936166099473 -90.59359299948467 ;
	setAttr ".radi" 1.374235631462787;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "A087426D-4DBB-5655-812B-0397AA6BB966";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -62.626657879089947 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.374235631462787;
createNode ikEffector -n "effector28" -p "rtLegQd1_legLock";
	rename -uid "3A5B9FA2-4680-9D46-7387-40BB07BD8842";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "23434B6D-4BAF-5912-1E6C-C7A905CF094C";
	setAttr ".t" -type "double3" -15.474895217990181 39.660063022090782 5.0627737695142176 ;
	setAttr ".r" -type "double3" 2.4790311399805716 -160.53884419250016 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "10C8F18A-4FB6-D15E-5D39-D7BD99059FAD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "A17D7AED-4B9C-945A-6CD4-DBB59764BD42";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 1.1102230246251565e-15 ;
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
	rename -uid "9E221BDD-4685-F221-C3F3-4EA48DFBA29A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7006165939351989
		-1.7006165939351989 0 0
		0 0 -1.7006165939351989
		1.7006165939351989 0 0
		0 0 1.7006165939351989
		0 1.7006165939351989 0
		1.7006165939351989 0 0
		0 0 -1.7006165939351989
		0 1.7006165939351989 0
		-1.7006165939351989 0 0
		0 -1.7006165939351989 0
		1.7006165939351989 0 0
		0 0 1.7006165939351989
		0 -1.7006165939351989 0
		0 0 -1.7006165939351989
		;
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "CE6D5754-498C-9F2B-DB9B-3BBF6E24A6EB";
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
	rename -uid "FC45BC93-4D96-9F80-E92E-FF9AF3149F93";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.4355890786569674 -5.2371363689452229e-33 8.5528925661918151e-17
		-3.3695751775990677 4.1040986035070746e-17 -0.67025016493162815
		-3.1740704165484037 8.0504793850145634e-17 -1.3147430608687085
		-2.8565879841687134 1.1687484261826438e-16 -1.9087109835134641
		-2.4293283342680145 1.4875345462853777e-16 -2.4293283342680145
		-1.9087109835134641 1.7491556857525474e-16 -2.8565879841687134
		-1.3147430608687085 1.943557688094894e-16 -3.1740704165484037
		-0.67025016493162815 2.0632698000517223e-16 -3.3695751775990677
		2.1036915850373304e-16 2.1036915850373304e-16 -3.4355890786569674
		0.67025016493162815 2.0632698000517223e-16 -3.3695751775990677
		1.3147430608687085 1.943557688094894e-16 -3.1740704165484037
		1.9087109835134641 1.7491556857525474e-16 -2.8565879841687134
		2.4293283342680145 1.4875345462853777e-16 -2.4293283342680145
		2.8565879841687134 1.1687484261826438e-16 -1.9087109835134641
		3.1740704165484037 8.0504793850145634e-17 -1.3147430608687085
		3.3695751775990677 4.1040986035070746e-17 -0.67025016493162815
		3.4355890786569674 2.2753887122270537e-32 -3.7159916484473804e-16
		3.3048299114243389 4.0252396925072817e-17 -0.65737148947894086
		2.9324587064624912 7.4376731861233166e-17 -1.2146641671340073
		2.375165946896598 9.7177884404744698e-17 -1.5870352082742019
		1.7177945393284837 1.0518457925186652e-16 -1.7177945393284837
		1.0604230498495428 9.7177884404744698e-17 -1.5870352082742019
		0.50313037219447654 7.4376731861233166e-17 -1.2146641671340073
		0.13075933105428206 4.0252396925072817e-17 -0.65737148947894086
		0 2.2753887122270537e-32 -3.7159916484473804e-16
		-0.13075933105428206 -4.0252396925072817e-17 0.65737148947894086
		-0.50313037219447654 -7.4376731861233166e-17 1.2146641671340073
		-1.0604230498495428 -9.7177884404744698e-17 1.5870352082742019
		-1.7177945393284837 -1.0518457925186652e-16 1.7177945393284837
		-2.375165946896598 -9.7177884404744698e-17 1.5870352082742019
		-2.9324587064624912 -7.4376731861233166e-17 1.2146641671340073
		-3.3048299114243389 -4.0252396925072817e-17 0.65737148947894086
		-3.4355890786569674 -5.2371363689452229e-33 8.5528925661918151e-17
		-3.3695751775990677 -4.1040986035070746e-17 0.67025016493162815
		-3.1740704165484037 -8.0504793850145634e-17 1.3147430608687085
		-2.8565879841687134 -1.1687484261826438e-16 1.9087109835134641
		-2.4293283342680145 -1.4875345462853777e-16 2.4293283342680145
		-1.9087109835134641 -1.7491556857525474e-16 2.8565879841687134
		-1.3147430608687085 -1.943557688094894e-16 3.1740704165484037
		-0.67025016493162815 -2.0632698000517223e-16 3.3695751775990677
		-4.0108266341751772e-16 -2.1036915850373304e-16 3.4355890786569674
		0.67025016493162815 -2.0632698000517223e-16 3.3695751775990677
		1.3147430608687085 -1.943557688094894e-16 3.1740704165484037
		1.9087109835134641 -1.7491556857525474e-16 2.8565879841687134
		2.4293283342680145 -1.4875345462853777e-16 2.4293283342680145
		2.8565879841687134 -1.1687484261826438e-16 1.9087109835134641
		3.1740704165484037 -8.0504793850145634e-17 1.3147430608687085
		3.3695751775990677 -4.1040986035070746e-17 0.67025016493162815
		3.4355890786569674 2.2753887122270537e-32 -3.7159916484473804e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "B4596ED3-4434-DD5B-29FC-26B47A58224B";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "68C66F26-452E-FAD2-77A0-C59D8255DF69";
	setAttr ".t" -type "double3" 2.5492561078581388e-14 69.844580203728867 -18.288410027193962 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "21738C58-4E6B-CC02-CF94-E5957F873969";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "326C70D4-414E-9B73-AEAE-708E8B089E8C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "527B978C-43FF-0D88-C083-1BA3C1F52F35";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.3152396815338476 28.935272993744647 25.778261832914311
		1.3152396815338476 32.462854240694945 25.778261832914311
		1.3152396815338476 34.196231719880039 15.256344380643526
		1.3152396815338476 28.935272993744647 15.256344380643526
		1.3152396815338476 28.935272993744647 25.778261832914311
		-1.3152396815338476 28.935272993744647 25.778261832914311
		-1.3152396815338476 28.935272993744647 15.256344380643526
		1.3152396815338476 28.935272993744647 15.256344380643526
		1.3152396815338476 34.196231719880039 15.256344380643526
		-1.3152396815338476 34.196231719880039 15.256344380643526
		-1.3152396815338476 28.935272993744647 15.256344380643526
		-1.3152396815338476 34.196231719880039 15.256344380643526
		-1.3152396815338476 32.462854240694945 25.778261832914311
		-1.3152396815338476 28.935272993744647 25.778261832914311
		1.3152396815338476 28.935272993744647 25.778261832914311
		1.3152396815338476 32.462854240694945 25.778261832914311
		-1.3152396815338476 32.462854240694945 25.778261832914311
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A211D844-481D-2958-DD0E-C19A088891A0";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 1.2825756581407006 8.4222605801790031 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "3A1AC3E3-4F8C-755E-FEB0-E5967B2D4614";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "B84FB2D8-42A8-4D72-84AD-E9ADB989EAE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617876 12.400970330948814 -13.08510121430346
		1.5281838445556682e-14 17.523816727131276 -13.08510121430346
		-12.367645247617848 12.400970330948811 -13.08510121430346
		-17.490491643800336 -7.5255564003435458 5.5519985703141112e-32
		-12.367645247617862 -19.893201647961408 -7.5729985827425931e-16
		-1.7520345102544488e-15 -25.016048044143886 -1.0709837303546808e-15
		12.367645247617862 -19.893201647961405 -7.5729985827425931e-16
		17.490491643800336 -7.5255564003435493 -1.4604967316785914e-31
		12.367645247617876 12.400970330948814 -13.08510121430346
		1.5281838445556682e-14 17.523816727131276 -13.08510121430346
		-12.367645247617848 12.400970330948811 -13.08510121430346
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "FE6F40E2-4433-C540-335B-4EA7066CBC90";
	setAttr ".t" -type "double3" 2.5504568617641672e-14 -1.2825756581407006 -8.4222605801790102 ;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "BB2C316B-4A6A-9738-4D23-06BE53C7B90B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "EAB5477D-49C8-13EE-9B3B-EC9A4318840C";
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
	rename -uid "A10055C7-472E-0C87-354F-9E8838956C50";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.229457130115025 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "160C8D23-4868-8365-8825-068664044F36";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.3889807842101192 -11.018676876752011 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "90BD02C5-46BA-9973-EE7C-FABB0859DD8E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "A0A85C10-40B8-A30E-8B9E-BA9C47B3FB99";
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
		6.3026115593200176 9.3099389573846842 0
		5.0930194418747625 10.174850372057152 -1.952629538277632
		5.0930194418747625 10.174850372057152 -1.209592117445256
		4.3290665255935483 10.71323190188367 -1.209592117445256
		3.3741253802420301 11.136245961033078 -1.209592117445256
		2.2918587488436426 11.482348373064413 -1.209592117445256
		1.209592117445256 11.674627490859605 -1.209592117445256
		0 11.713083314418634 -1.209592117445256
		-1.209592117445256 11.674627490859605 -1.209592117445256
		-2.2918587488436426 11.482348373064413 -1.209592117445256
		-3.3741253802420301 11.136245961033078 -1.209592117445256
		-4.3290665255935483 10.71323190188367 -1.209592117445256
		-5.0930194418747625 10.174850372057152 -1.209592117445256
		-5.0930194418747625 10.174850372057152 -1.952629538277632
		-6.3026115593200176 9.3099389573846842 0
		-5.0930194418747625 10.174850372057152 1.952629538277632
		-5.0930194418747625 10.174850372057152 1.209592117445256
		-4.3290665255935483 10.71323190188367 1.209592117445256
		-3.3741253802420301 11.136245961033078 1.209592117445256
		-2.2918587488436426 11.482348373064413 1.209592117445256
		-1.209592117445256 11.674627490859605 1.209592117445256
		0 11.713083314418634 1.209592117445256
		1.209592117445256 11.674627490859605 1.209592117445256
		2.2918587488436426 11.482348373064413 1.209592117445256
		3.3741253802420301 11.136245961033078 1.209592117445256
		4.3290665255935483 10.71323190188367 1.209592117445256
		5.0930194418747625 10.174850372057152 1.209592117445256
		5.0930194418747625 10.174850372057152 1.952629538277632
		6.3026115593200176 9.3099389573846842 0
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "A0B7087C-4824-7BDE-6FDC-6E9122082141";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.5492561078581388e-14 -1.2825756581407006 -8.4222605801790031 ;
	setAttr ".r" -type "double3" -10.22945713011506 5.8926173563338235e-16 -4.9831518720766284e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "AA102FAD-4BD8-4196-2B81-55B8E84A3331";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.5492561078581391e-14 -15.21170541018919 49.837952447719665 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "92F2A5C3-4FFA-2EE7-BB68-8CAC9DC02257";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277705e-14 10.042330869348618 -23.919648061967045 ;
	setAttr ".r" -type "double3" 19.167178409598623 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "9C197DCD-4F0A-F825-51F2-0595F30EC190";
	setAttr -k off ".v";
createNode ikEffector -n "effector30" -p "spineQd0_two_ikj";
	rename -uid "898B310E-442C-8843-A5F9-A9A25FD659B4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "19747C5E-4F3F-E381-93EE-2CB37FDF3992";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277702e-14 -1.7669298493964334 18.002090620814126 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "1214F208-4B63-73C2-3844-B7B767D27F2B";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1989695A-4D7F-9951-849F-36BDBDC66ACF";
	setAttr ".t" -type "double3" -1.2809831057303686e-14 -0.48435419125573276 26.424351200993129 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "80320AC0-4C6C-A910-BF9F-8AB7E2C16182";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "7A60AF4E-42EA-8091-FF5E-13B2C018DED8";
	setAttr ".t" -type "double3" -1.5777218104420236e-30 0 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "32E87E38-469F-295B-31D6-96926DFE5886";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "5B4B57F4-49A7-216F-AC7F-2BBA8F524FAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 4.9500675733525226 7.5729985827425941e-16
		1.07098373035468e-15 10.072913969534984 1.0709837303546798e-15
		-12.367645247617862 4.950067573352519 7.5729985827425941e-16
		-17.490491643800336 -7.4175776742653428 0
		-12.367645247617862 -19.785222921883214 -7.5729985827425941e-16
		-1.7520345102544488e-15 -24.908069318065689 -1.0709837303546806e-15
		12.367645247617862 -19.785222921883207 -7.5729985827425941e-16
		17.490491643800336 -7.4175776742653445 0
		12.367645247617862 4.9500675733525226 7.5729985827425941e-16
		1.07098373035468e-15 10.072913969534984 1.0709837303546798e-15
		-12.367645247617862 4.950067573352519 7.5729985827425941e-16
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "553CDB69-4AFF-8B34-A4E5-CD8CD73C6FF2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.9377212794835632 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EEE250ED-4AF6-FB5D-92E5-CDAB67B5D60A";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 -6.119149120393331 51.747207651330662 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "F52F7809-469F-6CC8-5903-4CA20F4A08A6";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "D3584E21-45E8-F5F3-1785-C3966FAA18A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 18.574013574946981 -9.3674389606101442
		1.07098373035468e-15 23.696859971129442 -9.3674389606101442
		-12.367645247617862 18.574013574946974 -9.3674389606101442
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 18.574013574946981 -9.3674389606101442
		1.07098373035468e-15 23.696859971129442 -9.3674389606101442
		-12.367645247617862 18.574013574946974 -9.3674389606101442
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "EA93C19A-49D4-B8C6-8C88-C4A93EFD45D8";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "1B45F944-4C1C-3893-07E8-5A8CF4993EA8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "F9BF41E9-468E-40A2-EA20-48A9498E0DA9";
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
	rename -uid "25D1F446-4523-9F8C-D238-34AF17F3AD4B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.1043834904541563;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "67F7D43D-4D4F-A2A6-5B1A-B3928912F8B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4663308626521417e-30 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -10.229457130115042 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "3962855D-4DD9-233C-43CE-EAA786BD942C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "DB84361C-407F-6E65-4401-F8A0E457ED64";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "A1695FC0-46EC-458E-A00A-3A91144A3BAB";
	setAttr ".t" -type "double3" 1.6361350750788975e-14 -0.08679926694720308 2.0460988152703408 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "EA4B08C7-4369-D130-0ACF-3585294293B7";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F06C255C-4598-4DBE-954C-E797956AEE8B";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 20.149974197015567 74.155390418349498 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "1FA355C0-4E56-4D87-2FD8-138B2D41B22F";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "99C7BB65-4FE6-7787-B84C-79881B5E1A6D";
	setAttr ".t" -type "double3" 9.1257019996987889 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "C50C83AC-4F75-F921-7D1E-41A4739441F1";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "02CF726F-44DF-A337-35B0-B2800ACCF707";
	setAttr ".t" -type "double3" 11.66622228126173 -31.473134206126936 16.303776459291029 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.490551251626643 6.7132861421476638e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "96DEF0F5-4173-CD56-4EE9-DA97FC527528";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "01750FBD-41A1-D47D-14C2-E59D6D2E5CD2";
	setAttr ".t" -type "double3" 7.12634783814012 -63.802981592962126 42.367035305279764 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "47FA6352-4C4D-8F99-323C-11AA27C5FB78";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "FF13E1B5-4A45-1149-30E2-4A8EB6C8E605";
	setAttr ".t" -type "double3" 15.474895217990817 -30.1845171816381 23.351183796708408 ;
	setAttr ".r" -type "double3" -177.52097129098306 19.461156105349517 179.999992703484 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "9D7A9F6C-4500-CE7A-6D63-BDBA24F39D89";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 2.2204460492503131e-16 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "81C0769A-4F91-BD9A-6862-8F9A24191053";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 18.993798233990248 68.368565109980281 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "580868E6-49FF-CB0B-FF19-A7A30C305073";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D44B0BBA-410D-3136-718A-BE94B85A9864";
	setAttr ".t" -type "double3" -9.1312103277924069e-15 -6.2059483873405341 53.793306466601003 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "A6F47B0D-48D6-B647-7CB2-EF919B26DFBC";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "75941E94-4D09-05F3-89BF-F2841058297B";
	setAttr ".t" -type "double3" -9.1257019996961706 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "1B7C085B-4FCC-5A9D-3A96-A2A73CAD5EF4";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B6EBD26B-4381-2C72-73C7-3D8D8A9E4C85";
	setAttr ".t" -type "double3" -11.666222281262538 -31.473134206126922 16.303776459290948 ;
	setAttr ".r" -type "double3" 14.383137188892626 -6.4905529621657303 -1.0003349776607067e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "762AD0D4-4B68-9B3F-AF88-988B9B7A47CB";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "91E11A31-48C0-481A-E11C-8B86DEDD90F0";
	setAttr ".t" -type "double3" -7.1263478381391732 -63.802981592962141 42.367035305279757 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "3812D130-4AC0-0947-5230-01B6D899275C";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B65412C9-44C0-A4A1-2619-13A4737142A6";
	setAttr ".t" -type "double3" -15.474895217990206 -30.184517181638086 23.351183796708177 ;
	setAttr ".r" -type "double3" 2.4790311399805716 199.46115580749984 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "EA45E245-4AD4-1CF9-64BE-82A11384A16C";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "389587C5-4DD7-0F55-36D0-8C8C97A4EA49";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
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
	setAttr -k on ".moduleScale";
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "spineQd0_settingShape1" -p "spineQd0_setting";
	rename -uid "8448787A-404D-B632-816B-93954E0AE642";
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
createNode unitConversion -n "unitConversion22";
	rename -uid "E4630FB5-4033-4816-0320-8FA0E24257BA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "F61FB67D-4DD9-6319-2035-64935D380044";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "C7A59AC7-422A-4322-E987-6FB0981A1B01";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "8D88054C-4C05-B763-1D09-C09D45664594";
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
	setAttr -s 8 ".st";
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
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
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
	setAttr -s 65 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_upr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_palm_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_digit_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_hip_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ball_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikCstG.v";
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_outRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_inRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_ballG_ikc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd0_ikc.gimbalCtl" "lfLegQd0_ikc_gmbShape.v";
connectAttr "lfLegQd0_ikc_gmbShapeOrig.ws" "lfLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion22.o" "lfLegQd0_smart_ctl.footRoll";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_smart_ctl.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_upr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_palm_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_digit_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_hip_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion51.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector13.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector13.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector13.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector13.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sx";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sy";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sz";
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
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_upr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_palm_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_digit_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_hip_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion82.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_upr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_palm_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_digit_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_hip_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion111.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector28.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector28.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector28.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector28.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sx";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sy";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sz";
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
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion51.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion82.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion111.i";
// End of deer.ma
