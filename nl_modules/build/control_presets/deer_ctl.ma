//Maya ASCII 2023 scene
//Name: deer_ctl.ma
//Last modified: Tue, Jun 10, 2025 12:50:22 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "92B1F85B-4AD2-0F42-3E6E-34A4AFDBF061";
createNode transform -n "CHR";
	rename -uid "865E03F2-4576-6D6C-80CF-2EA525273D88";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "5456513A-47E3-FD70-5FB6-0D9844E02FF3";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "BDDC97FC-4D29-C5CF-5E50-8F8644ADA498";
	addAttr -ci true -sn "size" -ln "size" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".size";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "3924EF38-4E3B-0095-276E-9A98CA2353AF";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "8842BCC4-4A35-4D6A-4E45-3ABFB152B513";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode transform -n "head0_ctl_data" -p "master_ctl";
	rename -uid "C246267F-49B7-0D37-907C-36BE9EA4BA95";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "E54ECF61-42DA-F83D-49E0-9AAFE8905CFA";
	setAttr ".t" -type "double3" 0 89.994554400744406 55.866980391155543 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "0FAD754D-4C07-F2A9-8B22-23A538F5D300";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "849C2A44-412F-F237-396E-B6896B44B69F";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "9A6D83E7-4ABF-A124-7DBB-01BA7DB964BB";
	setAttr ".t" -type "double3" -5.0209008155148086e-14 -2.0352390678693979 -0.72897951288279472 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "CFC3291E-4A3B-E0F9-828F-B29360DDCA42";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctl:head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "DCEDD5C6-4048-9774-58B1-0FAB324A60C4";
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
createNode nurbsCurve -n "ctl:head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "AD9581B5-4485-0360-48E8-29A055BB8971";
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
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "0D521CC7-4B7B-E9F9-0AA7-34A6ED98CEEA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "9E1D5734-4364-7E85-7D7B-6F880FDEB43E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "F23F21DA-445F-4B2D-ECFE-EABABCA7D639";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "16844C67-4325-648D-B9D1-A783560D3851";
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
createNode nurbsCurve -n "ctl:lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "A08298F0-4748-3849-1905-5083A895724B";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "B697AD68-4013-C692-C4DF-2094EF67238C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "51201C6F-4C62-A7F0-C58C-4CBADE4C195A";
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
createNode nurbsCurve -n "ctl:lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "0A9553CE-4BD4-DC2C-8C6D-DD9EAB2F7631";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "901DA321-4415-8375-A8CC-759C7A0DC348";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "ED16AFCD-47B6-7FB7-F6B4-A3A382F2ACF7";
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
createNode nurbsCurve -n "ctl:lfLegQd0_palm_fkcShape1" -p "lfLegQd0_palm_fkc";
	rename -uid "EFD83E3B-438B-382E-5C9A-05890BE62D03";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "E92622ED-4264-03EB-F883-0397D0C87DA8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "7022D390-498A-7765-8EB3-569ABBBBDD07";
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
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "CB7A04A7-44C4-A358-F65E-EFAF44639347";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" -145.26855765322219 -3.1805546814635176e-15 -90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "ctl:lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "BBC3890B-4CD5-E50D-E304-37A3031551C9";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "E97D08DC-4D96-1803-A640-94B92151F5F5";
	setAttr ".t" -type "double3" 6.8548495328830672 70.225699200876363 -18.797640192410181 ;
	setAttr ".r" -type "double3" 0.5007643496007057 130.56652835228391 91.087876868264843 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "639F6A61-49DA-1E09-8363-4B9B76FDDA5E";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.9083328088781095e-15 -9.5416640443905471e-15 4.4527765540489228e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "39F1DDA6-482E-644D-8E81-38AFD084BE78";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "8990789D-40EF-6F74-EF9E-C0AA36F6F32E";
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
createNode nurbsCurve -n "ctl:lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "8569C3D4-4069-FBDB-670F-BCA325ED0D52";
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
		-3.3167955472675903 -14.173558686574538 -1.2879027159238502e-15
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
	rename -uid "50B08DD7-4C0A-9866-DDF3-D6ABAE7CC961";
	setAttr ".t" -type "double3" 9.1257019482675599 8.3444269505183932 -34.108652544973296 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "989DDAD7-47EB-54F5-F242-E59783183C45";
	setAttr ".t" -type "double3" 5.842691663815458e-08 -4.5705573020473951 3.1685175512877244 ;
	setAttr ".r" -type "double3" 0 237.79316281622025 89.999999999999972 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "A4E6D0AB-475F-9F68-1B7B-F2BADE43287A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "902521C2-4AD6-6AF8-DBC7-FE90E9A67524";
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
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "DC4D7AB5-4681-A615-C9C0-AC9C2BA046E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710669911 -2.3447910280083306e-13 -3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8461295712475545 6.8035697908477369e-17 -0.53297724966496407 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "8E4120FB-442C-C62D-5858-DFB4DA92F176";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "852771DC-4F91-9AF6-D361-719A740E1A96";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
createNode nurbsCurve -n "ctl:lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "88F26A3F-40EE-A0D2-5C9C-1AAFE47EF221";
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
		-4.3456230273589485e-32 3.3167955472675903 -1.2879027159238502e-15
		-7.5289727335728972e-17 3.6681922215284222 3.6681922215284222
		-1.0647575350556052e-16 3.3224567843013827e-16 3.3167955472675841
		-7.5289727335728948e-17 -3.6681922215284222 3.6681922215284239
		-6.349601304885251e-32 -3.3167955472675903 -6.6364921135737638e-16
		7.5289727335728997e-17 -3.6681922215284222 -3.6681922215284266
		1.0647575350556041e-16 -2.03095152519372e-16 -3.3167955472675805
		7.5289727335728948e-17 3.6681922215284222 -3.6681922215284239
		;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "0052F66F-4627-1666-0ACB-7DA595BC9C88";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "BE82D043-4A1C-7A35-DCAF-7B95AFB25DF9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "7B14A320-4831-C9B5-3904-CEB25ED478A6";
	setAttr ".t" -type "double3" -0.56954940183653235 29.69655197345995 -2.5073573751738962 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "24C6C7A2-4A06-F097-B5C0-BFA5BC877A86";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "7960EE7E-418E-BE37-A820-E1B61645CE6A";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.3304632803622167e-16 -5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "4D76C950-403A-BB73-54B1-B5AD0FB8E332";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "3106836B-49A8-5037-7566-A69E518A1880";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "8743F345-4E6E-E2A1-9F69-F091404E4ADE";
	setAttr ".t" -type "double3" 2.1747055391654797 -3.5168412029400715e-16 2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "42D6018F-4A18-E3FB-9F54-5EB803ACF811";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "56BC5FB8-4A84-866C-1F08-73A242C39902";
	setAttr ".t" -type "double3" -4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "CD22E245-4771-1A34-EE25-43A06908CAAA";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "1AABF02E-45D9-AFCC-5779-E5A40F601C2F";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "A3A1D320-403A-0C72-8349-8BB163EA7918";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "BC9FB81B-40F2-6DBA-B86C-BDB70242913A";
	setAttr ".t" -type "double3" -6.9956680448512998e-09 -4.5705593402659233 3.1685175263687171 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "5C693B2A-4167-E053-C7EB-D580B3A6678A";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -6.1566900637152369 0 92.242173262946551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "E5F02311-483F-30C1-1998-9EAC77509645";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "A3A7344D-46C5-AF2F-7D62-D5808CFC5ECA";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "D334EF48-4CD8-4FF3-3770-1AA93205C866";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "FFA4693D-4C6B-3657-2630-1D9261EF5DF2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "ECC63172-4FAF-EF9D-793E-B798DF660654";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.56954940883231409 -21.352122984723007 -0.19538001629761226 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "DE4707BA-4997-DEDA-0AFA-C0866B239D57";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "CEBA4FAB-46AF-0EAF-97CB-A6A84FBAE3ED";
	setAttr ".t" -type "double3" 0.56954940883231586 -21.352122984723 -0.19538001629761936 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "BF21E6E5-4C8C-0CA4-A677-02A670FF2EE8";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "BAA88BA4-41AC-86AE-A1A4-3197C3132A12";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "2AE79597-4E2E-5CAB-912C-88A798C61CCA";
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
createNode nurbsCurve -n "ctl:stickCShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "5B1234DE-4325-64DD-5DDA-67BE8DA4A9BF";
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
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "CACD9893-4909-4CBD-FE13-968616F5ACFE";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr ".r" -type "double3" 179.99999999999989 57.793162816220203 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "8C6C6DC1-4D54-E47B-AF9E-698F7E68F922";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -3.5527136788005009e-15 3.3750779948604759e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 23.061720469442324 -7.675662847298718e-31 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.84612957124755406 -1.0946886862319545e-15 0.53297724966496507 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "F52477E9-4B69-C978-4557-DCA9FB620153";
	setAttr ".t" -type "double3" 4.9737991503207013e-14 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -179.99999999999983 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "40B89681-4AE0-2C91-C8DC-FAB86F0468FC";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode nurbsCurve -n "ctl:diamondShape2" -p "lfLegQd0_inRollG_ctl";
	rename -uid "CEDA086E-42D4-1E0F-3120-CCB62AD96186";
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
createNode nurbsCurve -n "ctl:diamondShape3" -p "lfLegQd0_outRollG_ctl";
	rename -uid "751BA603-4CA2-E4B8-B1C7-229F61B48530";
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
createNode nurbsCurve -n "ctl:diamondShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "A6AADF56-456A-92B2-9642-559498F1ADD6";
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
createNode nurbsCurve -n "ctl:diamondShape4" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "9FE9E8A0-4ABB-CDFA-659C-AAA7CD1E9596";
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
	rename -uid "A77C6055-4BDC-DD7E-3CB6-5AA4FF1C66FF";
	setAttr ".t" -type "double3" 9.1257019996988138 8.3444289887369507 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "A1C9F8C3-4F56-69D5-664A-92811CB8E988";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "1A9DC8D0-46E7-6C6A-B0B6-56AFFE5CF4A7";
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
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "620C21B8-4CF0-66E1-1C1B-25841DF93674";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "55AC474B-43F5-319A-E41C-27A96E8993A2";
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
	rename -uid "933EF813-4279-608A-4F1B-B2BA583CD467";
	setAttr ".t" -type "double3" 6.9957817316890214e-09 -8.3444289887369507 7.8719529438819507 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "85CE101E-4631-85B8-493C-C7BE9393CE4E";
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
createNode nurbsCurve -n "ctl:lfLegQd0_smart_ctlShape1" -p "lfLegQd0_smart_ctl";
	rename -uid "2A218577-4245-F39D-5F4C-07A444BFE99E";
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
createNode nurbsCurve -n "ctl:lfLegQd0_ikc_gmbShape" -p "lfLegQd0_ikc_gmb";
	rename -uid "3F34D964-4F4F-3ED7-D5DC-369AB5000EB2";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "2902C8D2-4052-62FD-1E98-35916D1A0E08";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -81.307679396150832 13.888349543035057 -87.898364012409345 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:lfLegQd0_ikcShape1" -p "lfLegQd0_ikc";
	rename -uid "9C2A77D2-463A-F49B-AB97-B19609F70578";
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
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "01866E18-4CE0-F306-4726-01AC96135643";
	setAttr ".t" -type "double3" 11.666222281261755 38.371445997601931 -1.9846335679029337 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.4905512516266395 6.7132861421476646e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "EBB2FB2F-46D7-4AE7-4A49-399EB28BC4DB";
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "8AEBDAC7-42C6-3EA6-F8D9-058962244639";
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
createNode nurbsCurve -n "ctl:lfLegQd0_pvcShape1" -p "lfLegQd0_pvc";
	rename -uid "BFE9F244-45B6-22FD-2261-A2A9636FAD37";
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
	rename -uid "9BAB7850-44DB-C7CB-AD81-559DF933032E";
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
createNode nurbsCurve -n "ctl:lfLegQd0_settingShape1" -p "lfLegQd0_setting";
	rename -uid "ED634A6F-4033-C803-F760-16BAC8ECF127";
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
	rename -uid "06742BE4-4BB1-A860-E2A0-9A8EB1AED61E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "9DE2518B-4472-FF40-BBB3-768E9FE1AD63";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "437DF841-48E4-5B38-E5B9-77BC13A86608";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "D54C2BC5-417D-DE96-3B79-30BDDC2F749B";
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
createNode nurbsCurve -n "ctl:lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "17C1033D-4B2B-BA4F-1AE2-A38EF31EF16F";
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
	rename -uid "899F3A36-4B26-1EFB-DA8D-90A2044A2BBF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "51841F10-403A-7759-8A8A-D3B18E1D5116";
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
createNode nurbsCurve -n "ctl:lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "D62D472B-45AC-65F7-2A0F-0F95026DB388";
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
	rename -uid "B56F7E8B-468E-B5FD-E345-04BAA1F2B81C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "18C373AC-440E-00F1-55A1-54878E64FAD6";
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
createNode nurbsCurve -n "ctl:lfLegQd1_palm_fkcShape1" -p "lfLegQd1_palm_fkc";
	rename -uid "52C4FD4A-4D11-8F4A-678B-94A6967D6815";
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
	rename -uid "36049B5C-437F-5AAB-65FC-60985F7C87BD";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "87390156-4CBE-DCE3-B0B0-02B05398FBBC";
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
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "1AD30565-4D25-DE42-5CBD-568C1FFA1EAE";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 3.1086244689504383e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -144.75189473012875 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode nurbsCurve -n "ctl:lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "9C20E3AA-42BC-F786-A99B-0C9DE3A38475";
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
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "85E82F09-4272-CFAE-ED90-50AB14C890E3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "7FB49614-4996-7AF0-5D2E-9990F97FCD22";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "67C87D77-4BEE-92F9-9B2E-3D9DB3B874AD";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "260CDC07-4417-AF2B-C94B-38B7CE61214F";
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
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "705E185A-4239-F15D-1934-DFB5D55CF2D3";
	setAttr ".t" -type "double3" 14.756214514549207 -8.8817841970012523e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "A63DEAA3-4A07-FF6E-8EF7-33850B5954AA";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "807414DB-4878-13A2-251B-F2B5A5CF1E07";
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
createNode nurbsCurve -n "ctl:lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "95CACF5D-487F-676D-CBD9-4796106F230A";
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
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "20EE6492-4735-D1CA-B5E3-81B990C84F03";
	setAttr ".t" -type "double3" 7.1263478896707966 6.0415997745710222 24.078625212668417 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "8A394464-42A8-4CFC-2DF2-C3AACC8FBF1C";
	setAttr ".t" -type "double3" -4.4533299714544228e-08 -3.5695417369770297 2.5225249320177703 ;
	setAttr ".r" -type "double3" 180 -59.086082974435598 -90 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "425AA746-441D-4B35-EBD3-8D8E8E6C3914";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "C6CB4072-41CC-E324-8D3A-6F9D68B39A39";
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
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "F1DAAB90-4BBB-0DDC-C66B-A29FFE1503D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157509 -8.0824236192711396e-14 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.85794014231118831 0 -0.51374965908607417 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "0F7AD561-47CA-C06D-F1CA-A18168635E2C";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "09BEA53D-4BB2-F94A-F68B-9B822AC7AC01";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode nurbsCurve -n "ctl:lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "FA88449A-4B8D-6A13-672A-938B7F7F244F";
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
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "4485F9DB-4B52-8C54-9412-89B14A5E41AA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "A8033684-428C-BC30-BCAE-04880B332BE7";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "1E873C04-4CC1-B00A-6B2B-24A2CF511298";
	setAttr ".t" -type "double3" -0.61320484944455167 23.266382580114158 -2.7857744119883669 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "2FCFDF52-4DDA-3D1B-771F-0EA1F65B840A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "D386A828-455B-7F7C-4752-CF8097600D50";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.2380387133425221e-16 -5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "44071709-4D49-A4E9-C79F-00BD580DBD9F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "1FD85377-49FD-C7A1-7902-CD8E84A33F65";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "791AAEC1-4652-56C9-91D9-EDB88ABC442B";
	setAttr ".t" -type "double3" 1.9186890794618412 -4.5924254968025838e-16 3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "C23AD518-4182-4245-39D5-069E425907DF";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "45192B7D-4EF8-955D-BB61-D1B8BD180728";
	setAttr ".t" -type "double3" -4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "1E07A7D6-4B47-9760-79A6-C2BC6C97E793";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "B3C5A49C-4D24-C69F-DBDA-07A40CE7139B";
	setAttr ".t" -type "double3" 2.4370394343444159 -2.4720580375940271 0.44514092909523129 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "75C68469-46F6-F1B3-C2B9-DD8B1E9EC8D0";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "7FC36B1C-4005-4B0D-4FD6-68B14506C746";
	setAttr ".t" -type "double3" -6.9973218330687814e-09 -3.5695405731727106 2.5225248666003779 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "F69EAFFE-46DF-F776-0A4F-35A60F51D9C6";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -7.1286013757820097 -7.9513867036587939e-16 89.250778809129031 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "B47881FC-4050-69CA-25AF-D280FE04C7AA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "2ACCF4DD-4C50-FD1B-70FF-4F9217871374";
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
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "B3BF2456-440D-976C-A3DF-99979A58E148";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "A5F95B73-4E73-F036-0F05-90A6126BA008";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3980817331903381e-14 2.7533531010703882e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "29FCDACF-4F77-8D44-95AC-478C9A797B27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.61320485644203515 -17.224783969347403 1.1618537823975252 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "B1F9F23E-45D1-FE54-9A7E-92B5A2FBD8EC";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "3DB37BDA-4172-9E4A-2091-37837B8981F4";
	setAttr ".t" -type "double3" 0.61320485644203515 -17.224783969347396 1.1618537823975288 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "9E7BEAC3-484E-A265-0071-80B4DF327C82";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "A9F7FFC5-4016-A437-8DD7-0A98A49E6A9B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "B5527E58-4422-E813-A5CC-478ECF94AA2A";
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
createNode nurbsCurve -n "ctl:stickCShape2" -p "lfLegQd1_ballG_ikc";
	rename -uid "61DE87DC-4A40-9767-AF3A-53BEC609AD6B";
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
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "1095D99C-4188-5865-BF96-50B7D880A20D";
	setAttr ".t" -type "double3" 2.4370394343444159 -2.4720580375940271 0.44514092909523129 ;
	setAttr ".r" -type "double3" 180 59.086082974435577 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "4C6BD424-49B3-A125-A7F8-BD86500D722B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 2.5757174171303632e-14 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 23.837977704564281 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8579401423111882 -7.5299400430922192e-17 0.51374965908607484 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "2124957F-47BF-0977-0161-0B95906C79B9";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 2.5757174171303632e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -179.99999999999991 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "B4555851-4833-204C-B27F-EB850F6A17C1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode nurbsCurve -n "ctl:diamondShape6" -p "lfLegQd1_inRollG_ctl";
	rename -uid "FB01F463-4602-9E1D-284D-9EB18C406105";
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
createNode nurbsCurve -n "ctl:diamondShape7" -p "lfLegQd1_outRollG_ctl";
	rename -uid "930B144D-4A32-2D06-E18C-6C852C2336F9";
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
createNode nurbsCurve -n "ctl:diamondShape5" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "E61064E5-42AA-BF83-5F41-D2B08DAE4AF4";
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
createNode nurbsCurve -n "ctl:diamondShape8" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "734F0CEB-4645-1827-93F1-E9AC5B77E462";
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
	rename -uid "4ADDA5CB-4398-F197-6D04-DC8587E4BC3C";
	setAttr ".t" -type "double3" 7.1263478381401457 6.0415986107667372 24.078625278085802 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "DEBC4278-4D53-7792-3748-7DBB8C40E6CE";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "C34426FC-4450-3C7F-8008-15B4321B9433";
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
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "7530228A-4759-82AF-E349-77AD3FD2B602";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "73B1EED6-44F4-0631-24DF-21A6620035F8";
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
	rename -uid "61941947-4E36-E2BD-B390-98BF2309AF40";
	setAttr ".t" -type "double3" 6.9974630534375137e-09 -6.0415986107667372 6.7176657956956127 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "3C264437-4A01-89C7-B154-E385183C15D1";
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
createNode nurbsCurve -n "ctl:lfLegQd1_smart_ctlShape1" -p "lfLegQd1_smart_ctl";
	rename -uid "D11192C8-4B6D-5C67-041E-09B91AB41D0F";
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
		-2.1475850904012698e-16 -6.8824293456043981e-17 2.1439257536404552
		2.3710631725603677 -4.8666124613141489e-17 2.3710631725603686
		2.1439257536404592 -4.1042848643797608e-32 -4.2897266814784187e-16
		2.3710631725603677 4.866612461314152e-17 -2.3710631725603704
		1.3127759059026801e-16 6.8824293456043907e-17 -2.143925753640453
		-2.3710631725603677 4.8666124613141489e-17 -2.3710631725603686
		;
createNode nurbsCurve -n "ctl:lfLegQd1_ikc_gmbShape" -p "lfLegQd1_ikc_gmb";
	rename -uid "737F97D2-460E-7451-4C0C-889B4805676D";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "168101CB-4E9E-1CBE-4E16-07B33E0EFF47";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -27.468996460806306 0.30860936166099157 -89.406407000514406 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "62A00A0B-4544-64C4-C45E-2F8E56E4C026";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -152.5310035391928 -0.30860936166098513 90.59359299948558 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "9FF21342-44D8-0B76-0F95-469584EC7A5F";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 62.626657879089969 -5.3290705182007514e-15 1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.3742356314627875;
createNode ikEffector -n "effector13" -p "lfLegQd1_legLock";
	rename -uid "F66D7565-4AB8-0B50-551C-1AAEB67BAA72";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "ctl:lfLegQd1_ikcShape1" -p "lfLegQd1_ikc";
	rename -uid "B57316E0-46F9-5800-8560-66A86B427888";
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
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "99F97458-4860-F7BA-1047-A98F7B3C1960";
	setAttr ".t" -type "double3" 15.474895217990841 39.660063022090768 5.0627737695144468 ;
	setAttr ".r" -type "double3" 2.479028709016931 160.53884389465048 -7.2965159907439432e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "487F5D5D-4264-7417-1404-E980DED900B1";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "D6F5B3AD-494B-281C-704B-278F77E15A1E";
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
createNode nurbsCurve -n "ctl:lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "352F7248-4D22-1E5E-3324-119D94046908";
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
	rename -uid "9A3AB1ED-4B78-2719-2570-269103D7980E";
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
createNode nurbsCurve -n "ctl:lfLegQd1_settingShape1" -p "lfLegQd1_setting";
	rename -uid "F2D51246-4C02-704C-CADA-54BEA7BB3101";
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
	rename -uid "2077E6EC-4A5F-0F09-2E00-19BEBBAF240E";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "5AA8645C-4452-C0DF-64A8-0195AC3B71C9";
	setAttr ".t" -type "double3" 1.6361350750788981e-14 63.638631816388312 35.504896439407034 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "61C598B9-4F77-DB6A-0F35-5AADCB82157C";
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "C639FE50-40A5-B144-C0CE-D2AED8C97BE9";
	setAttr ".t" -type "double3" 0 2.1316282072803006e-14 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "50543119-4759-C92F-DA92-E09645CD8E92";
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
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "9329530B-45E4-7C77-E8B5-BCAC8806564D";
	setAttr ".t" -type "double3" 7.2045234361705946e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "4AFD4D14-4E77-78D5-1017-CBB22FAF65A6";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "6BC53CF2-4205-27E7-8BE1-13A0B7796068";
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
	rename -uid "83B6D453-4BE9-D7D4-004E-9F823F96F362";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "7060740E-43C2-7681-338A-AA8BC6E6A5F8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "9E4E3764-4941-B96C-47D6-1285842F970A";
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
	rename -uid "4601D3BC-4B20-2A1E-D9B0-2498A9BF5F9D";
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
	rename -uid "7B523304-43B4-3BA4-6DB0-BAB24C106EF5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -7.2045234361705946e-18 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631575 -1.5253946017807453e-14 -8.8227160329260719e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.604652269631597 0 0 ;
	setAttr ".radi" 5.9906425375606309;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "598421E2-463E-17F4-8363-1AB2F99378F8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.6361350750788981e-14 14.269010402334771 25.374411055997655 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.9906425375606309;
createNode ikEffector -n "effector15" -p "neckQd0_two_ikj";
	rename -uid "950E9DCB-42C0-A841-6105-449DBE211B1E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "B34FB0AA-4B56-21C7-DF9D-ED946136936B";
	setAttr ".t" -type "double3" -1.6368555274225146e-14 14.269010402334764 25.374411055997669 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "6BFA67A5-41D5-C1BE-CE2C-A1821B404364";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "42E451E0-4657-61EB-629A-48B8262DB01E";
	setAttr ".t" -type "double3" -8.2002253731858222e-15 5.2506893486806945 13.599534167560421 ;
	setAttr ".r" -type "double3" -43.660985986598114 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "D79916D6-4EA4-6597-23CC-40ACBFEC8A29";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "141B8602-4D85-972E-0847-82A33905DA9C";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "D3E1BA92-4787-6763-8A1B-CCAD9BA736D5";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "AA27F353-44DE-6756-EA44-E8B55E578819";
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
createNode nurbsCurve -n "ctl:neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "B2CD8B30-4EB9-D3A8-E7F3-0BB84B374E16";
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
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "F67B81F2-43C5-797A-F15E-06A2E2AAF924";
	setAttr ".t" -type "double3" -1.6361350750788975e-14 14.269010402334771 25.374411055997655 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "7299667F-4641-2499-FC07-3596D0FE6822";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "038175C5-4F65-5B96-9549-079D4A4922D8";
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
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "6D121D7E-4B25-7483-FEBC-1990D8D841DB";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "3B93FC27-44B5-63ED-84CB-3EA710A63B9E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "4DFD3B57-4047-DCAE-6CD9-A296A4EF6AC0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 88.838378437719086 50.080155082786305 1;
	setAttr ".radi" 1.1981285075121262;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "33A8CB95-4C1D-A69A-3C03-72A661B675CA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "2DEE8CF7-4436-C394-74E5-A4BB3F235AED";
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
		-2.2305591024410153e-07 -1.0652599433160319 0.80625011032467075
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
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "29F4186E-4972-7D1E-255C-868612D4F11C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "E5CDCFFB-4D1E-CF78-B025-F9915B1BF0D1";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "9762F1DA-4559-6D38-0B9D-79A373979689";
	setAttr ".t" -type "double3" 0 1.156175963025305 5.7868253083692309 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "CC42747B-4990-2881-810D-B3859E2B0E2C";
createNode nurbsCurve -n "ctl:neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "E9D0C387-4894-3271-012E-8FA762A54014";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.5902838021947092 9.9338141082341167 -7.8884517086946815
		6.5728522270566713e-16 14.531521436511188 -7.8884517086946815
		-7.5902838021947092 9.9338141082341131 -7.8884517086946815
		-10.734282295324586 8.1376400845921424e-16 4.9828674411044773e-32
		-7.5902838021947092 -11.099847387748694 -6.7966962872152767e-16
		-1.0752603990344806e-15 -15.697554716025779 -9.6119800687107047e-16
		7.5902838021947092 -11.099847387748692 -6.7966962872152767e-16
		10.734282295324586 -2.1406699941659209e-15 -1.3107823281930397e-31
		7.5902838021947092 9.9338141082341167 -7.8884517086946815
		6.5728522270566713e-16 14.531521436511188 -7.8884517086946815
		-7.5902838021947092 9.9338141082341131 -7.8884517086946815
		;
createNode nurbsCurve -n "ctl:squRShape1" -p "neckQd0_cog_ctl";
	rename -uid "BF44C692-434D-A20D-3B3B-CD96C522EE01";
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
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "E42E6CBB-4E66-54A7-04FC-628D16CDCDEC";
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
createNode nurbsCurve -n "ctl:neckQd0_settingShape1" -p "neckQd0_setting";
	rename -uid "EBAF8096-4546-DAB7-BEC2-03AABE7C3199";
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
	rename -uid "6F49A46A-4C1E-B14E-2F22-3EBF7221CC7E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "E7B0AA70-4672-5C97-6A94-FC849D760A51";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "8E149792-4B12-9872-AEAC-4B92C74B7274";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "7900891A-40C9-5C5E-FB9F-41A7049EB3E0";
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
createNode nurbsCurve -n "ctl:rtLegQd0_upr_fkcShape1" -p "rtLegQd0_upr_fkc";
	rename -uid "34C50B2E-47E3-C520-4792-14B2950219FE";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "C6C1A1DD-4A49-B837-A0D2-B1BDE39FDCFD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "D44064C4-4E15-5078-3AFE-B29B88D7FF4D";
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
createNode nurbsCurve -n "ctl:rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "ECFDD889-481B-C3A7-22FE-26BBB5B2FEA0";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "FB9766DE-4A92-BC6B-055C-6BBED60A91EB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "0967F26D-4BB5-7869-12A8-D7A8BE683C3B";
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
createNode nurbsCurve -n "ctl:rtLegQd0_palm_fkcShape1" -p "rtLegQd0_palm_fkc";
	rename -uid "5EBE7886-4B6A-0BBD-7DF3-9C92B3BB17F2";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "9C4A452F-41C6-8E8F-22E2-9F96C03B5535";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "F9C82F31-48A1-1085-E30A-BD851415B769";
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
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "3564D5A2-41C4-0A71-59DC-4DBBA98AE3D4";
	setAttr ".t" -type "double3" 2.4868995751603507e-14 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 34.73144234677784 3.1805546814635168e-15 -89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode nurbsCurve -n "ctl:rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "4EB4D4B7-44CF-80B0-07E4-16825D9263B4";
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
		-8.6912460547178971e-32 6.6335910945351806 -2.5758054318477004e-15
		-1.5057945467145794e-16 7.3363844430568443 7.3363844430568443
		-2.1295150701112104e-16 6.6449135686027653e-16 6.6335910945351682
		-1.505794546714579e-16 -7.3363844430568443 7.3363844430568479
		-1.2699202609770502e-31 -6.6335910945351806 -1.3272984227147528e-15
		1.5057945467145799e-16 -7.3363844430568443 -7.3363844430568532
		2.1295150701112082e-16 -4.0619030503874401e-16 -6.633591094535161
		1.505794546714579e-16 7.3363844430568443 -7.3363844430568479
		;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "AB11AA23-4C4E-3ED4-5B31-42A2BA8EDF2F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "F4748E11-49CE-81B2-3DFA-1BA76A98D37E";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "E6CC8351-4792-1B65-CE7F-7A9A24FF8C1C";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "6C783263-4029-A1C9-30BE-11AC7534A5A4";
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
createNode nurbsCurve -n "ctl:rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "53DFE4AE-4E9C-9988-FB6E-DC8F1919375E";
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
		3.3167955472675903 14.173558686574538 1.2879027159238502e-15
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
	rename -uid "4E3BBA38-44EC-312B-773A-B299E484101E";
	setAttr ".t" -type "double3" -9.1257019408539897 8.3444269510709113 -34.108652583725423 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "ABA786D0-4B6E-873F-C660-94B164F03755";
	setAttr ".t" -type "double3" -6.5840614738021941e-08 -4.5705573025998936 3.1685175900398335 ;
	setAttr ".r" -type "double3" -5.96752428637967e-15 57.793162816220239 89.999999999999915 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "F6EFDFF6-478C-AFD4-7706-02B1E809529F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "BBFFAE6E-496C-7CE8-F12A-EAB9A38AB01E";
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
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "134ADB39-48E4-0E4E-1F67-BF949896C464";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670089 -1.0658141036401503e-14 2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755428 4.7312853690039326e-17 0.53297724966496474 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "5C50650C-43DC-C6C8-9538-F6B296D724F5";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "11F8156A-461D-99D1-7DB7-7EBFB15B2F0A";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "ctl:rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "136018D3-4B45-FEB0-8B11-A1A15BA8A6D2";
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
		-4.3456230273589485e-32 3.3167955472675903 -1.2879027159238502e-15
		-7.5289727335728972e-17 3.6681922215284222 3.6681922215284222
		-1.0647575350556052e-16 3.3224567843013827e-16 3.3167955472675841
		-7.5289727335728948e-17 -3.6681922215284222 3.6681922215284239
		-6.349601304885251e-32 -3.3167955472675903 -6.6364921135737638e-16
		7.5289727335728997e-17 -3.6681922215284222 -3.6681922215284266
		1.0647575350556041e-16 -2.03095152519372e-16 -3.3167955472675805
		7.5289727335728948e-17 3.6681922215284222 -3.6681922215284239
		;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "5E8886BD-4E06-C831-48E4-B8A9581474FD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "8F692CD7-4F63-2084-F90D-D8A066BF07CA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "8D5E9B63-4D5E-E59D-41D0-5185DA6810DB";
	setAttr ".t" -type "double3" 0.56954940183653591 -29.696551973459925 2.5073573751739033 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "EA09CE75-4FB0-2CAC-78A5-779BC82CB7D0";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "7F99D89B-4FE7-4E6D-E0C4-AE944B24C69B";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "34C4AF43-48C8-46D8-97FD-23A42BE52678";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "1B9EDB86-44D6-F8DE-B75C-748CFE727F3D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "F471B6DD-4810-5E27-DC0A-BA8922C0944C";
	setAttr ".t" -type "double3" -2.1747055391654797 0 -2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "4B8F556C-4568-F122-5A7C-6983CC9A8021";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "3ED619BD-4923-953D-5D35-2C9688A5D4D9";
	setAttr ".t" -type "double3" 4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "34CE2F66-4C97-1518-1328-D188AE2DE94A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "0FF562B4-4DBC-3FD4-DE76-8098CEADCEA5";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "291BECF9-4E0D-E4FC-2187-BAB06C825CB7";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "8A1A8260-4724-D54A-B192-F894EDA5A816";
	setAttr ".t" -type "double3" 6.9984587014459976e-09 4.5705593402659277 -3.1685175263687135 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "EC1DC758-493F-9545-C604-6CB1D75FD336";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 173.84330993628481 0 87.757826737056263 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "767F12BD-4D85-F77D-0245-CAA77690E326";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "7431E626-4472-387A-0431-DF945B93ECA3";
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
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "CC07008C-4F44-D8AD-1858-47A138A267CC";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "6BA3FE4C-4DCD-1828-342D-63974D9F7D4D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 3.0814879110195774e-33 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "CF8A4602-455F-CDBA-8E72-E18F269AD506";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722982 0.19538001629758384 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "70850FE2-4397-B487-0E51-2AA36D546392";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "DDA38694-4236-1DC5-14EB-0589804E8255";
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722985 0.19538001629756963 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "229EE9C8-4EF4-8F43-1716-5591C9A10D89";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "EB03F711-4C44-1023-71E3-3C9F40EFBA63";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "B78C623F-4B1E-ED42-EE2B-A6AF6F93A56C";
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
createNode nurbsCurve -n "ctl:stickCShape3" -p "rtLegQd0_ballG_ikc";
	rename -uid "1C9909A2-4428-886B-0451-D6B4D9EDC59F";
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
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "98DFAD84-4790-3D9C-8B85-8E8887BF9321";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr ".r" -type "double3" 0 57.793162816220232 89.999999999999986 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "865E15E5-47A1-9810-C6F6-17B4158F3241";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.3092638912203256e-14 ;
	setAttr ".r" -type "double3" 0 -23.061720469442346 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755417 5.3991650363334001e-17 0.53297724966496496 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "EDE70C77-47EB-0460-A3A7-448D9F18582E";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "BD0F7ABB-4966-90FF-72C3-A4A29D48779E";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "ctl:diamondShape10" -p "rtLegQd0_inRollG_ctl";
	rename -uid "82B2309D-4FD0-2A3E-F4E0-EA87382AECCC";
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
createNode nurbsCurve -n "ctl:diamondShape11" -p "rtLegQd0_outRollG_ctl";
	rename -uid "927E190E-4B50-C5A1-56F6-E9926CE417E4";
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
createNode nurbsCurve -n "ctl:diamondShape9" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "9A7AB9DF-407B-05DF-F01F-1681EB845BD8";
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
createNode nurbsCurve -n "ctl:diamondShape12" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "1A7A316B-480E-17EE-67F8-89AD3B792339";
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
	rename -uid "9BB5C25C-4BFC-D8DC-F7EB-5086785584AA";
	setAttr ".t" -type "double3" -9.1257019996961457 8.3444289887369543 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "A21CF07A-4FC9-B009-E4E1-A4B2F8BB2823";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "4550E202-439A-D5BC-EB59-38ABB80915F0";
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
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "229AC991-4A97-0813-7DA1-478CA3D27E15";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "60A095D4-4DE8-A6A1-6CAC-E4B9AA43D5DF";
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
	rename -uid "E9E6F9C6-44F5-F453-4C14-9FB8E236EC18";
	setAttr ".t" -type "double3" -6.9984498196618006e-09 -8.3444289887369578 7.8719529438819684 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "819E2D9E-433C-A497-0A86-68B8353B9F50";
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
createNode nurbsCurve -n "ctl:rtLegQd0_smart_ctlShape1" -p "rtLegQd0_smart_ctl";
	rename -uid "92515856-4823-49E4-B308-65BE53D5C885";
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
createNode nurbsCurve -n "ctl:rtLegQd0_ikc_gmbShape" -p "rtLegQd0_ikc_gmb";
	rename -uid "D816932B-4200-E44D-7E98-66AE49C7F567";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "D58B978B-4DF1-BBD3-CB15-5ABB6177D1A6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 98.692320603839079 -13.888349543035075 87.898364012411818 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:rtLegQd0_ikcShape1" -p "rtLegQd0_ikc";
	rename -uid "02FCC8E9-4661-9564-3DDF-8B9437B35EB8";
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
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "CD75B0E9-40E6-CC44-4F43-8A8C3CC2EC5C";
	setAttr ".t" -type "double3" -11.666222281262513 38.371445997601946 -1.9846335679030154 ;
	setAttr ".r" -type "double3" 14.383137188892622 -6.4905529621657241 -1.0003349776607069e-16 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "C1E808E1-49AF-7E84-4B3C-B392B0ACE3B6";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "B26F9A19-45DE-90DF-81B2-3C9022E1E7C9";
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
createNode nurbsCurve -n "ctl:rtLegQd0_pvcShape1" -p "rtLegQd0_pvc";
	rename -uid "8E47269F-4375-FE36-5DEF-5C809138E959";
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
	rename -uid "1EECAE62-49DF-906E-60EC-F79E870D15AD";
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
createNode nurbsCurve -n "ctl:rtLegQd0_settingShape1" -p "rtLegQd0_setting";
	rename -uid "6DB1BBC9-499A-88BA-9108-7DB904441F32";
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
	rename -uid "3F47A190-4B4A-3313-C893-B0A56277E184";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "4737E43E-4652-E172-45B2-C2813D68D16F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "36534B35-4B9C-9F19-F271-8E9CEB315DEA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "67E308A5-42FE-1D6D-12CA-599F9682CE89";
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
createNode nurbsCurve -n "ctl:rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "ACE655D0-49CB-0175-4698-C09F37E62E84";
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
	rename -uid "77C3EB25-400F-3C93-875C-58A60BC4050C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "46E97D13-4DD9-5512-0492-BEA11DD47A95";
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
createNode nurbsCurve -n "ctl:rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "0E1655EB-420E-9CF0-D0BF-6F8BFB7D042F";
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
	rename -uid "BFB4E6E6-49FF-12D0-51A5-CF8E54EAB0DC";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "0683F694-4133-7724-4A1A-04A03397054E";
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
createNode nurbsCurve -n "ctl:rtLegQd1_palm_fkcShape1" -p "rtLegQd1_palm_fkc";
	rename -uid "40F57F49-4B2B-6304-7B92-67B3C76E07EC";
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
	rename -uid "66238CBD-4101-1736-4420-98A9D675EA74";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "2074C4BF-467A-3F92-264E-B8BC1BAFC477";
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
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "F6E7075F-4E8E-D8AC-E2B7-6ABDBC37A1A9";
	setAttr ".t" -type "double3" 2.3092638912203256e-14 -1.7763568394002505e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 35.248105269871381 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "ctl:rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "053897EA-4B77-3628-77B4-C0927658E2F2";
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
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "A59BCC42-438F-A1C2-4C10-FF8F513F4DD0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "D3651044-48B6-180A-83D1-5FA008D7C76C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "6D1A807E-45F7-037D-FECF-578DA0195727";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "B23FCEF8-48B6-35EA-FBF8-6C9A702E3067";
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
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "32CF0C3E-49A3-87D6-C88F-E684E7AC17FC";
	setAttr ".t" -type "double3" -14.756214514549214 5.3290705182007514e-15 3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "E6BC2C74-4362-89B2-14ED-9BAEAA442C91";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "CB3877EA-4AE2-A196-9B26-F9A136A5A41A";
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
createNode nurbsCurve -n "ctl:rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "F2F25890-4FA0-DBC6-B09A-D2BE958065E4";
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
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "35670EA5-48EB-6C0C-03F0-D6B49AA693BD";
	setAttr ".t" -type "double3" -7.1263478896698285 6.0415997745710044 24.078625212668204 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "436708BD-4954-2C0D-46D2-E896B8529CB0";
	setAttr ".t" -type "double3" 4.4532202814195898e-08 -3.569541736977011 2.5225249320179728 ;
	setAttr ".r" -type "double3" -6.1908648019767329e-15 59.086082974435662 89.999999999999943 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "A951C299-47FE-DA8F-8E0F-2EA184FFC94C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "7ACF89C8-435C-D9F8-94F3-7EBF11BCF92F";
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
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "02C0860F-4DE4-CDFD-28E6-099BB9136D12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157224 -1.5987211554602254e-14 1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118898 -1.0257104630681869e-17 0.5137496590860734 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "34235182-42FF-604D-9D71-2A9DD855308B";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "7E03228D-4E4F-6E28-F519-AA888B242984";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode nurbsCurve -n "ctl:rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "09A0A2C4-4FF5-17A1-2F7D-F7AB8E28D63F";
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
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "DAD2FA39-4A3A-1F31-EE3D-BCB4AAE1FB9B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "E32FE6EA-4E45-2F54-CE34-14B80EFFD5B7";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "A9E4AE8E-4C93-982B-0135-4D909E6B6307";
	setAttr ".t" -type "double3" 0.61320484944455167 -23.266382580114165 2.7857744119883741 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "D1BB9AD5-4CC4-DE11-4CE5-6FBA9C6EE5E3";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "F15C0759-4318-0A2C-90FC-11A30C697159";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "887F4E93-4AB0-E033-F0F3-4787CD2DC321";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "987DA2FD-4A95-34D3-CDAD-97A89F17A8A0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "11F1D90B-4267-E2C4-0D1F-04815D263657";
	setAttr ".t" -type "double3" -1.9186890794618412 0 -3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "A036FB54-4503-4E98-9DFF-DCA2B557BA78";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "9ABC9BBA-4AA2-F4F9-34C9-128F18ABCB96";
	setAttr ".t" -type "double3" 4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "8685CF8A-4752-96B1-BC46-6B8FC7B9CCA8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "FF95908E-4668-5E66-60EE-D690C25413E4";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940222 -0.44514092909523839 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "C58F5E6A-49CC-35BC-D427-109DFC727412";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "98030A66-41B9-7903-5146-7C8C2B8C6F20";
	setAttr ".t" -type "double3" 6.998460477802837e-09 3.5695405731727079 -2.5225248666003814 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "09B17260-4921-662E-9F30-B3A3D26304FB";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 172.87139862421796 -3.975693351829396e-16 90.749221190872092 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "80FABD80-4C61-F897-A22B-8BBFD3362EF8";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "1E701D7D-47E4-D5C1-A0BE-4BAE0A7D7F03";
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
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "56977E5A-428C-0269-45DF-3BA31629938C";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "B44C4FE2-43A3-C7DC-4AA9-CDAE6C2785D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "BDA2881E-4084-F44F-5383-3DA6F6C20AF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.61320485644301748 17.224783969347424 -1.1618537823975252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "A1C25F2C-4ACA-680C-5C68-208D7C3EF1E3";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "16BF9ED3-48A4-37AB-75B0-CA85712A0479";
	setAttr ".t" -type "double3" -0.61320485644301925 17.224783969347421 -1.1618537823975252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "CF81A46E-4908-45F0-DE85-10B2D1AF38F1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "61889892-4C8B-CE40-EBB4-75930135CD31";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "CCE81942-4304-F4A1-B020-4DAA27F6F634";
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
createNode nurbsCurve -n "ctl:stickCShape4" -p "rtLegQd1_ballG_ikc";
	rename -uid "57F4ED8F-48B3-91DF-501B-05BD48771DD0";
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
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "2FF6F2AA-4024-9A9E-ED81-54B896DABC33";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940222 -0.44514092909523839 ;
	setAttr ".r" -type "double3" 0 59.086082974435641 90.000000000000028 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "8113E2B4-4D9B-A5D3-BABB-16B85708D5D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 8.8817841970012523e-16 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 -23.837977704564263 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118887 -3.7649700215460455e-17 0.51374965908607373 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "F3E0D542-4FDF-CB08-1717-11856A135993";
	setAttr ".t" -type "double3" -1.7763568394002505e-14 1.865174681370263e-14 -2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "CB2E92F9-4484-47BD-47FD-0CB3C03DEABD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "ctl:diamondShape14" -p "rtLegQd1_inRollG_ctl";
	rename -uid "D5CC5C23-478F-251D-B8D0-6BA902FD1B5D";
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
createNode nurbsCurve -n "ctl:diamondShape15" -p "rtLegQd1_outRollG_ctl";
	rename -uid "0FD69FE6-433F-665C-CFF6-5B96B8745158";
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
createNode nurbsCurve -n "ctl:diamondShape13" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "C882D530-4E3C-D414-5E45-319EF18AF789";
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
createNode nurbsCurve -n "ctl:diamondShape16" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "9F0296A5-478B-FA35-CADD-C499014B769E";
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
	rename -uid "2DD9F471-49EB-4CE9-DF06-1FBAFEA5C07E";
	setAttr ".t" -type "double3" -7.1263478381391474 6.0415986107667301 24.078625278085791 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "6F4D8896-4ACE-CB32-670C-C6B392A8859F";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "C188DC86-49FF-4B16-E77E-0E997012AC94";
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
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "F7949C79-4D47-1CAA-4FD7-FE980EF691EC";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "00BCCF02-4549-9914-704E-C88D45042135";
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
	rename -uid "54ADF630-4B0E-29F4-6937-B4997C1379F4";
	setAttr ".t" -type "double3" -6.9984613659812567e-09 -6.0415986107667301 6.7176657956956234 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "5BC49110-4524-0C60-7EBA-AE83C493C0AB";
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
createNode nurbsCurve -n "ctl:rtLegQd1_smart_ctlShape1" -p "rtLegQd1_smart_ctl";
	rename -uid "1B72990C-4056-FEA0-75F1-70BDABDBBCF3";
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
createNode nurbsCurve -n "ctl:rtLegQd1_ikc_gmbShape" -p "rtLegQd1_ikc_gmb";
	rename -uid "2793C47C-49CE-73E8-97CB-50BE1A739E6B";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "A829C0B2-4A94-1644-2821-D799FA232CD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 152.53100353915562 -0.30860936166101383 89.40640700051533 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "25436105-43B4-837F-83DD-F89D334032A6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 27.468996460844384 0.30860936166099473 -90.59359299948467 ;
	setAttr ".radi" 1.374235631462787;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "505E2DFB-4D44-7F8F-B5A7-E5B0FE8DA8DB";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -62.626657879089947 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.374235631462787;
createNode ikEffector -n "effector28" -p "rtLegQd1_legLock";
	rename -uid "890BA270-4384-F7F4-0D11-6193C27A1866";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "ctl:rtLegQd1_ikcShape1" -p "rtLegQd1_ikc";
	rename -uid "61AAB4FC-4C10-7124-9CBA-8BAC742DB502";
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
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "AAE6CD52-4877-1A8F-DDC1-FAB006C6EF93";
	setAttr ".t" -type "double3" -15.474895217990181 39.660063022090782 5.0627737695142176 ;
	setAttr ".r" -type "double3" 2.4790311399805716 -160.53884419250016 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "E655D7FD-4217-1CEA-045D-89B59773F80A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "F67A2408-4028-5F76-53C9-3A82694A1048";
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
createNode nurbsCurve -n "ctl:rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "65C6BDE9-4951-32CD-E448-58BADBE11D41";
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
	rename -uid "65BA4CA6-4308-5D99-5814-158E7A91B7F9";
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
createNode nurbsCurve -n "ctl:rtLegQd1_settingShape1" -p "rtLegQd1_setting";
	rename -uid "161BD16F-4891-D99A-830A-B38C963C974B";
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
	rename -uid "F24F4D06-4616-3735-9921-17AC0517ED2B";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "2DE0634C-47EA-8DEE-CF1F-969191D437AA";
	setAttr ".t" -type "double3" 2.5492561078581388e-14 69.844580203728867 -18.288410027193962 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "DD7BE619-48D9-EDB2-72D2-DCB191320AA6";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "A15AA6B0-4D76-5651-BA03-BCB3F431DC75";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "E51E21FB-41DD-3CC6-2FC6-A5AD5D8D03CC";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 1.2825756581407006 8.4222605801790031 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "E4CD3A7B-4D44-DBEE-D2D0-7D9F836005F4";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "0A9C4721-433D-2EC3-9EDA-4F8F956CF98D";
	setAttr ".t" -type "double3" 2.5504568617641672e-14 -1.2825756581407006 -8.4222605801790102 ;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "64506050-456C-5C1F-5982-14AF8533B823";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "FC8AEEB4-43B2-33F1-DEE3-2E9F21087119";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.229457130115025 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode nurbsCurve -n "ctl:spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "0F6C80D1-463E-CCB2-F43D-84A3A3984445";
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
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "72D7337C-4EDD-CF75-7C71-31A6BA13A8E3";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.3889807842101192 -11.018676876752011 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "43667089-4E79-088B-9F08-36AD5AB57BB9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctl:spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "933D7B35-4D0A-94C7-1F66-C8922090AB23";
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
	rename -uid "A6BE2B81-4DCE-3771-BDA1-4299293F490E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.5492561078581388e-14 -1.2825756581407006 -8.4222605801790031 ;
	setAttr ".r" -type "double3" -10.22945713011506 5.8926173563338235e-16 -4.9831518720766284e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "42717596-4726-23B5-3777-85A366996305";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.5492561078581391e-14 -15.21170541018919 49.837952447719665 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "CDD6F23D-4D19-CA79-2CF2-2A9E6D22075A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277705e-14 10.042330869348618 -23.919648061967045 ;
	setAttr ".r" -type "double3" 19.167178409598623 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "6599698D-4533-27B4-193F-0EB5EC4DB830";
	setAttr -k off ".v";
createNode ikEffector -n "effector30" -p "spineQd0_two_ikj";
	rename -uid "FC89069D-44F4-3C18-E5A0-08B69F7EE079";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "771B050F-496C-60A5-1D26-E1B97C7188B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277702e-14 -1.7669298493964334 18.002090620814126 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "C404C496-4A16-CCBC-6287-5299DD5E48C1";
	setAttr -k off ".v";
createNode nurbsCurve -n "ctl:spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "25BD2279-4B4D-E5FB-5984-16A9DE8BE250";
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
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "AFB46B10-46DF-A1B0-0FA7-728345211903";
	setAttr ".t" -type "double3" -1.2809831057303686e-14 -0.48435419125573276 26.424351200993129 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "C933CBDD-4541-24B7-CE4A-60BEB47D620F";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "8B17188E-4C9D-D154-78C2-E69D0AC2B5C6";
	setAttr ".t" -type "double3" -1.5777218104420236e-30 0 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "CEB2134C-49D4-A424-6F81-62AE4F390F7D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "9574F2AE-40BE-33D3-6CB4-CDBFDAE1A129";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.9377212794835632 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode nurbsCurve -n "ctl:spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "5B91AC4E-430B-AC79-FA56-188D85ECEDB7";
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
		1.0709837303546802e-15 10.072913969534984 1.0709837303546798e-15
		-12.367645247617862 4.950067573352519 7.5729985827425941e-16
		-17.490491643800336 -7.4175776742653428 0
		-12.367645247617862 -19.785222921883214 -7.5729985827425941e-16
		-1.7520345102544488e-15 -24.908069318065689 -1.0709837303546806e-15
		12.367645247617862 -19.785222921883207 -7.5729985827425941e-16
		17.490491643800336 -7.4175776742653445 0
		12.367645247617862 4.9500675733525226 7.5729985827425941e-16
		1.0709837303546802e-15 10.072913969534984 1.0709837303546798e-15
		-12.367645247617862 4.950067573352519 7.5729985827425941e-16
		;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "27A412A2-476C-26C6-7B19-A2AF4624D25D";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 -6.119149120393331 51.747207651330662 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "5B5CAF61-4BA4-D663-35F6-62AFEAE75799";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "0826D319-40F9-2309-3CA7-8BB1839FE9A3";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "43792B27-41FE-2CCA-F4B6-AA90E91318BD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "19AA3540-4543-5942-1336-949C260ED942";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.1043834904541563;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "00A7BB77-41F4-E9D1-1A64-4F89A699B3C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4663308626521417e-30 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -10.229457130115042 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "ctl:spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "DC530E4F-4950-5D77-00EC-A0BB487E95C9";
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
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "FAA3B486-487B-FEF0-7943-E699BC41A275";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "1192B550-438D-4AD6-2648-659F0D3FFE9F";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "A2274D2A-413B-8689-CB55-8EAA77F2E1BB";
	setAttr ".t" -type "double3" 1.6361350750788975e-14 -0.08679926694720308 2.0460988152703408 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "31782CCB-4676-2758-71F3-599910B632EA";
createNode nurbsCurve -n "ctl:spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "5DF35DCD-4CD1-AAD6-53C8-C896C52DE70E";
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
		1.0709837303546802e-15 23.696859971129442 -9.3674389606101442
		-12.367645247617862 18.574013574946974 -9.3674389606101442
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 18.574013574946981 -9.3674389606101442
		1.0709837303546802e-15 23.696859971129442 -9.3674389606101442
		-12.367645247617862 18.574013574946974 -9.3674389606101442
		;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "DE57B3E8-40C9-57CA-4564-37A53F232A56";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 20.149974197015567 74.155390418349498 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "1E183F2C-4EE7-C0DB-ED99-CAA26130E90E";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C0825554-4AEC-8558-4157-84A4D5D0306E";
	setAttr ".t" -type "double3" 9.1257019996987889 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "83A60009-4001-B062-ED57-77B6F9D86E11";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "FDE4607E-415A-3856-B643-629D3E906700";
	setAttr ".t" -type "double3" 11.66622228126173 -31.473134206126936 16.303776459291029 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.490551251626643 6.7132861421476638e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "C13EFECD-44D7-1261-6B8A-B8BDC786EDC7";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "35C99866-4D80-43A4-27C4-39A944AFCFFD";
	setAttr ".t" -type "double3" 7.12634783814012 -63.802981592962126 42.367035305279764 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "FE06F8D1-480A-D771-F622-149BBE6A24B9";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F3AD74DC-44EC-667F-ABF4-C096D63391AB";
	setAttr ".t" -type "double3" 15.474895217990817 -30.1845171816381 23.351183796708408 ;
	setAttr ".r" -type "double3" -177.52097129098306 19.461156105349517 179.999992703484 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "FB69BE01-43AF-CC01-D43B-73967C5FD9F6";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 2.2204460492503131e-16 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A44B9BAA-40A8-2395-0707-4CB848E56C36";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 18.993798233990248 68.368565109980281 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "D532895E-44EB-79AB-A565-8AB302A28153";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "E076155F-41FB-ED39-A725-FBBCB80DB77E";
	setAttr ".t" -type "double3" -9.1312103277924069e-15 -6.2059483873405341 53.793306466601003 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "B65585DF-4DD7-0D8A-0F75-68A542C2818C";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "AF2795F1-43A8-D100-503A-C2BE3CCF898A";
	setAttr ".t" -type "double3" -9.1257019996961706 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "13769B89-4E2C-D759-23C1-989C6BED7BF2";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "ECE24D2B-46A3-3FC8-202D-DDAE8C9EB3B9";
	setAttr ".t" -type "double3" -11.666222281262538 -31.473134206126922 16.303776459290948 ;
	setAttr ".r" -type "double3" 14.383137188892626 -6.4905529621657303 -1.0003349776607067e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "74EB90DD-46E6-1FAC-0D75-B898452C2362";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F59A5D79-4F29-8C91-EE2D-84B916E4FE17";
	setAttr ".t" -type "double3" -7.1263478381391732 -63.802981592962141 42.367035305279757 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "CCEF6CEC-4DDD-559F-A9FE-A894DB2258AF";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "44590FD7-44F0-F574-3577-64A06E3BB4DA";
	setAttr ".t" -type "double3" -15.474895217990206 -30.184517181638086 23.351183796708177 ;
	setAttr ".r" -type "double3" 2.4790311399805716 199.46115580749984 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "DBCAE0BC-40AB-A340-CEC2-3E948EBB0564";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode nurbsCurve -n "ctl:spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "DCCA165B-480B-3391-A14E-9CBAE13E114B";
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
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "F3489403-4652-B217-C373-E184F504F858";
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
createNode nurbsCurve -n "ctl:spineQd0_settingShape1" -p "spineQd0_setting";
	rename -uid "FA9E0987-40EE-B54E-59F0-D5B7F2B2A49C";
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
	rename -uid "719FCB6F-4ECA-FA1F-08CA-C1A35E5F17AA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "404CDF2F-4D20-129C-D38A-9799CAD1598F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "A96D911F-4256-C75C-967D-0085B190C8CC";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "9E823A71-4724-486D-41E8-0BBA86F51953";
	setAttr ".cf" 57.295779513082323;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
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
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector30.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector30.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector30.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector30.opm";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector30.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion51.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion82.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion111.i";
// End of deer_ctl.ma
