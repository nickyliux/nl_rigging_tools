//Maya ASCII 2023 scene
//Name: deer_ctl.ma
//Last modified: Tue, Jun 10, 2025 04:40:34 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "B6A533A0-4000-CD4A-4AFB-5A9B2AE4F7D0";
createNode transform -n "CHR";
	rename -uid "86953083-4B44-2CA6-AA26-65B410961945";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "E17CEF18-483D-44CE-2666-7EBAD3CF4834";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "30B9B305-4EDD-3809-7B36-369B87986A03";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "A9431A97-43B1-6CAE-D255-4A92065CBED9";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "65D5C2FE-44B4-B339-EA7C-4CAB69B1FBD8";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "AB1BEB48-4E72-E22B-0C43-888643A8661D";
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
	rename -uid "04BCF3BA-4944-B017-05B4-719C5440ACFA";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "DFF198BC-46D5-B356-A808-9F85E7C5DAF5";
	setAttr ".t" -type "double3" 0 89.994554400744406 55.866980391155543 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "3EF6C93B-46FA-F439-F224-D9B528D4E7D6";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "1D9BE8AF-493B-43EB-2178-90B1E085A726";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "3E0A7330-4A45-8817-96A6-2D8DE4901180";
	setAttr ".t" -type "double3" -5.0209008155148086e-14 -2.0352390678693979 -0.72897951288279472 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "5F86E772-498A-0988-E937-339BC421223D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "D4D2C51F-42FA-D258-A379-13967EE3FEE3";
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
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "590751B2-414D-668A-C5A6-F5822F8AAABE";
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
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "8DDBC842-4B15-74CD-BD2F-E68EACDCBC25";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "7F63C662-4DFC-1885-A3A5-F7B1ACD0012F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.0718851891296097 4.0718851891296097 4.0718851891296097 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "B877DE1A-412D-BFCE-5547-5D8CB7691C9F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "BD61E3BB-4F50-89CC-0024-FD8334FDC354";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "DAC79794-41E2-0CFE-28C7-118D9078D0D7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.5007643496007057 130.56652835228391 91.087876868264843 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "3F0AF3F5-461E-F448-25BC-D1B78A9B82EE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003672 64.068928352023747 -14.163551514349912 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "DD8CE993-4AB9-4E77-B537-3E86C9586FA5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106737 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "18E440E1-4C33-B1DA-D94C-3AB3BEE0796D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628197045 36.265191043615168 6.9366382381466769 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "B0F0A4E4-46A4-BBD9-9BCA-8C82E6F941D9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777811 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "C494E951-4B9D-BE58-3124-B4BDDEFC9D1D";
	setAttr ".t" -type "double3" 5.5614311105863514 -6.995673373921818e-09 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 23.061720469442385 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "D6D4A82F-4E13-F29B-A2A2-FB811D5EEAFA";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "549A94D1-431F-5D96-1F46-6796E09A4C7F";
	setAttr ".t" -type "double3" 5.5614311105863514 -6.9956715975649786e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.061720469442385 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "95EA73E2-4A22-E554-4EF9-B29AC9DC948E";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "DC8BB58A-41B3-7779-C904-F1B7348CA0B9";
	setAttr ".t" -type "double3" 5.5614311105863514 -6.9956698212081392e-09 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "68D02431-42B7-B273-73AF-819DA0FF8DB3";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 3.1805546814635168e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.4028326439010331e-13 -3.1805546814635161e-14 -2.5049759603897812e-15 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "0E240E5F-4E2D-69CC-A75D-00813E62EC64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710670089 -2.3092638912203256e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779847 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "81ACA86C-41E1-FB79-6DB5-D5804393AE33";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "6DA7E498-4FD3-70CE-AB8C-AF88A458A8AA";
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
	rename -uid "D3A466E0-4485-68AB-271D-08BEC1AC01E5";
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
	rename -uid "1629BCA8-4F8A-FA92-7545-FD8831B2CD8C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "90E8A453-412A-22F8-C198-40AE575C0A18";
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
	rename -uid "78728332-4833-35C7-EEE9-91A4881BB714";
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
	rename -uid "9B99D78D-44E7-D920-F2C5-4FBEE4B64B8A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "6C1EBC5C-42BC-32F6-A8CE-8684D88AFC64";
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
	rename -uid "CFD732DF-4CC4-A226-5879-9B87C60A4D44";
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
	rename -uid "B5F948BE-4C22-8D64-A514-D1A57861CB23";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "4ED7B9CA-4554-BE50-C8AB-CB9DEE249634";
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
	rename -uid "44303826-4C0D-CDA0-3D78-AEB425AB4243";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" -145.26855765322219 -3.1805546814635176e-15 -90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "507716A6-48F0-1132-027F-B9A79E9BE8AE";
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
	rename -uid "06C989A7-4218-C4EF-6798-D9B65B5BC7D2";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "8C3BA166-4BD2-62A5-F7C0-FE85D91F35B9";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "52A812A5-4557-C3DF-C2E5-148F27C612A2";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "BADAB0B8-4F9F-23B2-0001-869301314481";
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
	rename -uid "4E916569-42EA-7789-DA17-65A6D2F160BC";
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
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "6E783FDB-4423-F106-4785-34BFAE1C6FB4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -2.834300269510828e-30 1.1337201078043322e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 97.130792305316348 35.524862936853751 -1.5669053610114221 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "1FAB06FE-4C3A-F00E-FFF8-5E96390AAC0A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 63.787737634212448 7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.5444437451708134e-14 -4.8205281890931419e-15 2.1369351766083017e-15 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "972B047F-443B-A6CA-FCE5-F7B9F11B6E7B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "1D650A2D-4379-071B-0385-B6A6D882242F";
	setAttr ".t" -type "double3" 9.1257019482675599 8.3444269505183932 -34.108652544973296 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "D9281FAB-426C-83E5-6DCD-5E999AEFFEE3";
	setAttr ".t" -type "double3" 5.842691663815458e-08 -4.5705573020473951 3.1685175512877244 ;
	setAttr ".r" -type "double3" 0 237.79316281622025 89.999999999999972 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "2A913BE5-45E5-9890-81A1-2EBBC633E766";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "84A62B72-47A3-95D2-0C74-A9BC2B733CCA";
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
	rename -uid "579620AC-4DC6-8DBB-6E23-41B8BBD40E7D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710669911 -2.3447910280083306e-13 -3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8461295712475545 6.8035697908477369e-17 -0.53297724966496407 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "AD1C0ACB-49B2-5333-0267-0DAC102DACA0";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "6B8DE760-491E-78C3-2F81-438116DA0494";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "2D1F2C30-4F57-BD40-B4E8-7D9A3BD33AE3";
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
	rename -uid "4802AB16-4B92-AA01-42EE-6A8F34059204";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "636E591E-456F-AE64-2A0B-7BA4661A3CC5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.5007643496007057 130.56652835228391 91.087876868264843 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "7F360A1F-4FE4-0C1B-1816-E59A48FD695A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.524609981818497 -4.4408920985006262e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -7.749879348205734e-15 -6.9360898910140305e-06 1.6508658693477404e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003672 64.068928352023747 -14.163551514349912 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "105AABE4-452E-FBC1-21D8-30BDBB86CAF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.015521384923272 -1.2434497875801753e-14 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 2.0687047904514226e-20 1.4734575739974535e-05 -8.6077424834257698e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106737 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "26176C37-49F8-0AAC-BCF9-CCB54490AC84";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.713213754348693 -2.4868995751603507e-14 3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -7.8597733579245165e-07 -6.9428385723512421e-06 1.2907654147416406e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628197045 36.265191043615168 6.9366382381466769 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "8301935F-4D9B-83A8-360D-419F370E2AB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.352122984722996 0.56954940883229632 0.19538001629759094 ;
	setAttr ".r" -type "double3" -2.7815841211101114e-07 3.4989265825975787e-16 -1.7854049500392621e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777811 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "13215D62-43DF-A180-484D-85AB9B80E043";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.561431110586355 -6.9956680448512998e-09 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 1.0902076337183577e-07 -4.9994824665401031e-21 -4.756435810790042e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.061720469442356 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "E3FDAA78-4963-712B-55DE-19B5CDE9C07B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0356754710670089 -2.3092638912203256e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779847 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "9AE87874-4B18-CE41-C87C-D482F84679FC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "67F64863-4A31-0268-800B-89B808FBC18F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "62332F3E-4ED3-05EE-95A7-A08C7E932E8E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "0972462F-4540-35C2-18E9-779F3AE9CC76";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "B85AC7AA-4EAF-DC10-B8E8-199E3A15FDA3";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 12.5246099818185 -6.2172489379008766e-15 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -1.6447815427704538e-29 8.223907713852273e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 111.7779824902877 39.498109214033569 -5.0815358911596107 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "2EBA4E6E-431F-C840-7D2B-8BB0284B4033";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 32.975856781005859 2.1316282072803006e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.5444437451708134e-14 -4.8205281890931419e-15 2.1369351766083017e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "BD21671C-44AA-6212-ED45-B0A4589428F8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "52F19F7B-4580-9CA6-2F47-989E5B8AE9EA";
	setAttr ".t" -type "double3" 19.193384426812699 -25.803642726558994 15.581784412028018 ;
	setAttr ".r" -type "double3" 14.383126558787303 -57.892246045361922 79.141901062659329 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "C85FCCBF-4256-0D29-6CD5-4E9F37A4B46D";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "979DC08C-4788-E785-8192-438776B471FC";
	setAttr ".t" -type "double3" 9.6952514085311314 29.69655197345995 -33.913272503756751 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "DF6F39EB-4B37-128B-96EF-3B8960D35518";
	setAttr ".t" -type "double3" -0.56954940183653235 29.69655197345995 -2.5073573751738962 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "9FCF5463-4E1B-0D24-142F-12AA74065479";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "901D69CC-4F6B-FCDD-75E2-7588EF1B050C";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.3304632803622167e-16 -5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "E670C4D4-4B01-60BF-64C1-BCA46DE72108";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "6B55C283-41AB-1687-ACC0-A7BAA5EA7759";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "9E12B130-4DAD-22D2-D3C2-32ACF3DDCFD5";
	setAttr ".t" -type "double3" 2.1747055391654797 -3.5168412029400715e-16 2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "1041D1B9-4909-B40B-EBAC-169F8998A969";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "81DD1A4A-4287-4A8E-EAD3-908E9DD48068";
	setAttr ".t" -type "double3" -4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "B0506CCA-4AD5-250F-EE09-1286D2A0B872";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "61F567D7-4603-A655-4838-3688739BC3EC";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "D20945A0-447D-E19B-229E-219750F62510";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "EE83043E-4F93-2AF3-A2F1-88B591341E51";
	setAttr ".t" -type "double3" -6.9956680448512998e-09 -4.5705593402659233 3.1685175263687171 ;
	setAttr ".r" -type "double3" -0.24180007867023265 6.1519582345988901 -92.255167038188802 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "22692C99-4EEB-4E40-9A0A-5AA7C13F2579";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -6.1566900637152369 0 92.242173262946551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "30087C8F-470E-095D-C901-F1B2E86FEEAD";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "50BB1F55-43B6-58CA-E6A2-D0955923E9D7";
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
	rename -uid "C14C5ADB-42A8-7C53-9535-4BB81241F4F8";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "96BB2A3C-4BF7-491D-A4AB-E2A0084F0FEE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "E6B0F36F-4CA6-E188-EC15-0495AD3B8451";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.56954940883231409 -21.352122984723007 -0.19538001629761226 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "B8CF05B5-4A1F-14C6-DA05-BDABDF0EEA15";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "0EB0A2AB-4C30-E252-5A29-4F95361B940D";
	setAttr ".t" -type "double3" 0.56954940883231586 -21.352122984723 -0.19538001629761936 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "7B1D2A85-444A-4310-FF49-AF9DB65BF122";
	setAttr ".t" -type "double3" 0.56954949986540448 -21.35212188702581 -0.19537982644319385 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "FFCD08FD-4645-1530-D8EE-BFAAA3023BE0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 4.6567300639097766 -23.710584887454743 26.327343553517142 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "566C17DD-4504-63DC-9062-EA89D01C3C76";
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
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "77999BE4-4E2B-9B6A-A585-5CA47D4E363F";
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
	rename -uid "E5737B9B-4402-5483-9315-EC9AB84DD848";
	setAttr ".t" -type "double3" 2.5259669839163523 -3.773869648471027 1.8317166448935573 ;
	setAttr ".r" -type "double3" 179.99999999999989 57.793162816220203 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "9904BD93-4444-22D1-9BC0-41A6735CCE4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -3.5527136788005009e-15 3.3750779948604759e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 23.061720469442324 -7.675662847298718e-31 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.84612957124755406 -1.0946886862319545e-15 0.53297724966496507 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "734C501D-4CB6-8B32-D4FB-81BBEDA69861";
	setAttr ".t" -type "double3" 4.9737991503207013e-14 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -179.99999999999983 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "80E0B82F-4357-BA7D-BC4C-7A91FD5A57F0";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "B1B7ED81-4359-2553-3896-54940C6FBA65";
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
	rename -uid "C7948036-4ECA-800F-FE3A-A9AB8FE52700";
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
	rename -uid "D8ACC6D2-4F23-7E08-CF76-04812A43F018";
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
	rename -uid "BD2A9B5B-47DD-F253-412E-F392C8C90D36";
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
	rename -uid "56D10691-4CA5-9D3C-6B8C-3AB29BF6C779";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "B99BC14D-4E3D-BB18-5F59-C5BDC0A4760E";
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
	rename -uid "348E8915-4A06-5FB9-D529-25A0FB064DEA";
	setAttr ".t" -type "double3" 9.1257019996988138 8.3444289887369507 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "1D7D9FF3-444D-7E1A-9DD4-A785ECBA47CF";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "CCB5D812-4787-0BEB-E4EA-DD8159C23666";
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
	rename -uid "E3E4B9C4-47B6-EA9E-3121-12BC49295DED";
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
	rename -uid "A7B4CD12-4AF2-55DE-AC90-A3BCEE5C6E51";
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
	rename -uid "44A6002E-44F0-2941-18F6-C78ABFB1EA8F";
	setAttr ".t" -type "double3" 6.9957817316890214e-09 -8.3444289887369507 7.8719529438819507 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "804CACD0-4E7B-E8A9-CA14-C18DD987E2F3";
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
	rename -uid "958EB4CF-4368-3784-9F31-31904D6E946C";
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
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShape1" -p "lfLegQd0_ikc_gmb";
	rename -uid "AB3F3841-4D1A-A171-975A-73B134A33C56";
	setAttr -k off ".v" no;
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
		4.252067605972357 -7.6192903180456817 4.7835760517121075
		4.1703653192170904 -7.6192903180456817 5.6131132901956029
		3.9283982320121269 -7.6192903180456817 6.4107718778140192
		3.5354650038220479 -7.6192903180456817 7.1458982423772728
		3.0066658382467031 -7.6192903180456817 7.7902418899588088
		2.3623221906651644 -7.6192903180456817 8.3190410555341572
		1.6271958261019117 -7.6192903180456817 8.7119742837242349
		0.82953723848349437 -7.6192903180456817 8.9539413709291988
		-4.9640121709127393e-16 -7.6192903180456817 9.0356436576844654
		-0.82953723848349536 -7.6192903180456817 8.9539413709291988
		-1.6271958261019126 -7.6192903180456817 8.7119742837242349
		-2.3623221906651657 -7.6192903180456817 8.3190410555341572
		-3.0066658382467049 -7.6192903180456817 7.7902418899588106
		-3.5354650038220501 -7.6192903180456817 7.1458982423772728
		-3.92839823201213 -7.6192903180456817 6.4107718778140192
		-4.170365319217094 -7.6192903180456817 5.613113290195602
		-4.2520676059723597 -7.6192903180456817 4.7835760517121058
		-4.1703652941400362 -6.3459627032544468 4.7835760517121066
		-3.9283982130239594 -5.1060927085345718 4.7835760517121066
		-3.5354650841543362 -4.0324411020615862 4.7835760517121066
		-3.0066658374784074 -3.1781172929315806 4.7835760517121066
		-2.3623221393327749 -2.5347834402641758 4.7835760517121066
		-1.6271957742955063 -2.1418503113945526 4.7835760517121066
		-0.82953722024215526 -1.8998832302784763 4.7835760517121066
		2.6036404927654081e-16 -1.8181809184461519 4.7835760517121066
		0.82953722024215526 -1.8998832302784763 4.7835760517121066
		1.6271957742955063 -2.1418503113945526 4.7835760517121066
		2.3623221393327749 -2.5347834402641758 4.7835760517121066
		3.0066658374784074 -3.1781172929315806 4.7835760517121066
		3.5354650841543362 -4.0324411020615862 4.7835760517121066
		3.9283982130239594 -5.1060927085345718 4.7835760517121066
		4.1703652941400362 -6.3459627032544468 4.7835760517121066
		4.2520676059723606 -7.6192903180456817 4.7835760517121066
		4.2520676059723606 -7.6192903180456835 -3.4654351038742726
		4.2520676059723606 -7.3641662616873393 -3.7205591602326145
		4.1703652941400362 -6.3459627032544468 -3.7205591602326145
		3.9283982130239594 -5.1060927085345718 -3.7205591602326145
		3.5354650841543362 -4.0324411020615862 -3.7205591602326145
		3.0066658374784074 -3.1781172929315806 -3.7205591602326145
		2.3623221393327749 -2.5347834402641758 -3.7205591602326145
		1.6271957742955063 -2.1418503113945526 -3.7205591602326145
		0.82953722024215526 -1.8998832302784763 -3.7205591602326145
		2.6036404927654081e-16 -1.8181809184461519 -3.7205591602326145
		-0.82953722024215526 -1.8998832302784763 -3.7205591602326145
		-1.6271957742955063 -2.1418503113945526 -3.7205591602326145
		-2.3623221393327749 -2.5347834402641758 -3.7205591602326145
		-3.0066658374784074 -3.1781172929315806 -3.7205591602326145
		-3.5354650841543362 -4.0324411020615862 -3.7205591602326145
		-3.9283982130239594 -5.1060927085345718 -3.7205591602326145
		-4.1703652941400362 -6.3459627032544468 -3.7205591602326145
		-4.2520676059723606 -7.3641662616873393 -3.7205591602326145
		-4.2520676059723606 -7.6192903180456817 -3.4654351038742726
		-4.2520676059723606 -7.6192903180456817 4.7835760517121066
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "452DACCF-4136-A187-49DF-B3A689A9E06D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -81.307679396150832 13.888349543035057 -87.898364012409345 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_ikcShape1" -p "lfLegQd0_ikc";
	rename -uid "DF20C5FA-48E0-A2BD-3ECA-9886EE7BC966";
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
	rename -uid "7C4C5433-4E03-F045-B006-1190FFCE60E8";
	setAttr ".t" -type "double3" 11.666222281261755 38.371445997601931 -1.9846335679029337 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.4905512516266395 6.7132861421476646e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "F62DD549-4C58-8E33-C980-01A209E51E2D";
	setAttr ".t" -type "double3" 0 -2.1316282072803006e-14 1.0658141036401503e-14 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "EB2AD3EE-4638-890A-5C35-728FF8F137EC";
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
	rename -uid "4C19AB2E-4E34-E82F-411B-7C8541C00F6B";
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
	rename -uid "5E9CEAF9-4BB0-97A0-D7D9-1E98F62AE150";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -5.2132423233850362 -164.73094974363266 96.986244958291891 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "097A8A0C-4B57-18AD-2412-379FC848DBF6";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "DC9707C3-47C3-A427-456D-248CAD5C720E";
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
	rename -uid "1F18701F-46EB-1E02-975F-C49FBB85050D";
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
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "5A426B56-4EEF-8CC0-8FF1-8CA8C69F171B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "747939D2-4A66-8CF4-3AEB-CB89F56E91ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.630169014930903 10.630169014930903 10.630169014930903 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "7F0E02BD-42E2-45C5-6AB0-9A947C8426D5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "1F3DD3F8-49BB-BECB-5105-D5A4D3B461D3";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "3F3043B0-4263-364C-0CB3-5FAFFDDD26B2";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.87536779795647 -23.168291777141182 -84.51752292156516 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "1B279A49-41B3-A6BA-93A2-2987861A63FF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823374 -51.236978489001501 -2.4423350360291991 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "1E888861-45E3-E11A-CF40-9EA6467748CE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921282 0 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "0D4375C5-4FB2-5334-449C-518A4E03E78D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006481 3.6815551140188809 4.4718086105368675 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "AA891574-4A5D-62E5-F9F7-B580059C4151";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871289 0 ;
	setAttr ".radi" 1.3742356314627875;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "773DC68A-495B-AA75-60A2-F3A0D3BC8192";
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973209448903617e-09 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 23.837977704564292 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "F3D47D46-4861-E57D-E347-38A12F3D7ABA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "592BEBD0-4DD9-C751-B41D-DFB58967C81A";
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973218330687814e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.837977704564292 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "41E1058E-4774-372A-8317-2681421DE61B";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000004 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "8939E073-4F5C-FD96-BFD7-4190B0484F56";
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973227212472011e-09 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "6B6F26EC-4420-9758-74E3-129B6327FA05";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 -9.5416640443905503e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.6772963379953202e-15 0 -8.532792004878502e-15 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "7F149EEA-4A61-FE13-A18D-0E93417098BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157402 -8.6153306710912148e-14 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 1.3742356314627875;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "95EAF70B-4D2C-539E-347A-3397359059ED";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "5AC3A264-4C6F-124E-03FC-508F369ED924";
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
	rename -uid "010F4566-4867-C0C4-E160-808F017BC56A";
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
	rename -uid "F5B8E4DE-4445-F5BC-B329-F4A83A627A3F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "52093F79-4078-CE53-3E04-70A66A3949F0";
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
	rename -uid "6265D8A9-4135-9C62-B6FF-CA8AE8D0103E";
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
	rename -uid "149911F1-4CCC-5ECB-7E54-31BA9F8987E2";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "91A14A7E-4DCF-9155-EE4D-AF8ABF4EE6A8";
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
	rename -uid "130166B0-47B0-350C-01D0-0EADA1147A72";
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
	rename -uid "74C19899-4CE2-9A9E-98CD-B3A7CAFB0D7D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "E87D551D-4966-FBB3-E874-7BAFCD8258C3";
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
	rename -uid "993C2D2F-4327-0868-AD5C-1497A6EA6B20";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 1.5099033134902129e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" -144.75189473012873 0 -89.999999999999972 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "0CE91D67-42A0-8F07-CD67-1AAFB53F63C8";
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
	rename -uid "210FB323-4CF9-B89C-07DC-64B981E7F026";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "444BA88E-4C2D-2591-759A-659C9BA47112";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "10C6AAB8-4EC0-072C-7E71-80A4C841B2A2";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "FBEB9B8D-4A57-249A-0A3D-869507FE5630";
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
	rename -uid "1E62F07A-493E-A91F-2F40-DF9EF937394A";
	setAttr ".t" -type "double3" 14.756214514549193 -7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999944 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "7B80801D-4A90-E333-4A02-7FA6DA74AB5F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "01F17DDF-4ECC-28A0-4E74-C6A6B8573945";
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
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "4996B8D5-4D7C-73E4-FCB1-56B6F350EDF5";
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
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "1D2DF2A1-4119-574C-5AE6-D1B7872F86FC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 151.65839923224499 -23.487200375563834 4.8419983262060384 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "3708E958-4C2E-DBD2-9E5F-12BC6B847A78";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 62.626657879089962 3.3750779948604759e-14 -4.6185277824406512e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.180554681463512e-15 8.9453100416161419e-15 2.4549906447546519e-14 ;
	setAttr ".radi" 2.0613534471941812;
createNode ikEffector -n "effector12" -p "lfLegQd1_autoAim";
	rename -uid "60B470BC-4EB8-5C22-B1EB-A691BA64334F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "BB1C2F8D-4747-AD97-BF92-52A58191A27B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3948846218409017e-14 -3.5527136788005009e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 28.341600767756624 23.487200375563873 -175.15800167379396 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "33B8EDE8-47F8-061F-5F62-5FA0A3474E0B";
	setAttr ".t" -type "double3" 7.1263478947244074 6.0415997888533681 24.078625196720964 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "1A3615C0-44DA-F305-05CD-76A16C6E12C1";
	setAttr ".t" -type "double3" -4.9586899919518146e-08 -3.5695417512593233 2.5225249479652412 ;
	setAttr ".r" -type "double3" 180 -59.086082974435563 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "0F8D1430-404F-82F5-13A2-B792CFC5C7E2";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "F9BB1E41-4F20-6D75-8AC8-02B0219F1A9C";
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
	rename -uid "49A3DA63-4BBE-3191-3D6E-05A7FD4831C4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157402 -7.815970093361102e-14 4.0856207306205761e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.85794014231118809 0 -0.51374965908607506 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "2306774E-4AE0-4A30-BBE1-C79A2AB43194";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "8500F54F-432D-0CAB-19AD-03A3245CB5F6";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "79F5698C-4DA6-3AEE-3DF0-3B93323D5349";
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
	rename -uid "BDC26200-40FE-601A-30C2-E19A052A3E03";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "52B86AA2-4436-5116-5F72-7A920DB8D6C9";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.87536779795647 -23.168291777141182 -84.51752292156516 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "49127CFE-4960-18CA-F52D-809FBE1451A5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.7562145145492 -5.3290705182007514e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 1.158915079027688e-06 7.5403246742405895e-06 3.3878432816563438e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823374 -51.236978489001501 -2.4423350360291991 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "69CF4325-423D-E400-178F-19862DBD5446";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.772275812575892 5.3290705182007514e-15 -1.865174681370263e-14 ;
	setAttr ".r" -type "double3" 1.5284423203648089e-20 -1.4863374272749017e-05 1.5475489181583205e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921282 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "BFC7E522-465B-513A-582D-E399FFC2E32E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.274225002917792 1.7763568394002505e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 6.0202789831925264e-07 -8.037355769044727e-06 -2.5909295468769335e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006481 3.6815551140188809 4.4718086105368675 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "080A6549-46F1-43BE-B98D-03BD5ADD9600";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.224783969347424 0.61320485644200851 -1.161853782397543 ;
	setAttr ".r" -type "double3" 3.8725388035120513e-07 -6.1995061474762746e-16 -2.0950782346221226e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871289 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "6375D276-4AA7-0EF6-A7D7-ED92B7536CD5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.370898260786154 -6.9973244976040405e-09 0 ;
	setAttr ".r" -type "double3" 1.7666960933588021e-07 -3.9050554250865767e-21 4.0258302742953933e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.837977704564306 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "DC90D867-4A13-0ACC-C3C5-F9B256DE21FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8976837420157402 -8.6153306710912148e-14 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 2.0613534471941812;
createNode ikEffector -n "effector10" -p "lfLegQd1_ball_ik";
	rename -uid "F7309A63-4C9B-C0E4-FB17-5290E80A97F0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector9" -p "lfLegQd1_digit_ik";
	rename -uid "AAB2870F-4C95-09D3-E273-38B1443C97D7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector8" -p "lfLegQd1_palm_ik";
	rename -uid "BF407859-4AB4-8A02-8453-FBA702F555B9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "lfLegQd1_lwr_ik";
	rename -uid "241351E9-4092-5E98-C895-85926C733B7C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "A12B865E-482A-8ED3-C5F4-D687717C9BA8";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 14.756214514549178 -5.3290705182007514e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 88.416483961928279 -36.064431456154374 5.8669751135046573 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "6A2DBFAE-4D38-8275-E17F-408F639AF316";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 32.719341278076172 -7.1054273576010019e-15 1.7763568394002505e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635176e-15 3.1805546814635168e-15 1.9133024255678971e-14 ;
createNode ikEffector -n "effector11" -p "lfLegQd1_softJ";
	rename -uid "47EB2846-4BEF-6128-20CE-01AD1B94C1C6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "287C3DA7-4BCD-2F27-4CFB-B9A8D0F24428";
	setAttr ".t" -type "double3" 20.717375276182722 21.027952737167926 7.8186631536682043 ;
	setAttr ".r" -type "double3" 2.4790503236885324 70.271185416397842 77.0995854971612 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "8906E9DC-4B48-074A-A37F-D1B0777A481B";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 1.5543122344752192e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "722A197C-4B21-B369-A38A-A3A0136FD581";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "A96AF9E3-46F3-E0A1-D816-AF9E4F861306";
	setAttr ".t" -type "double3" -0.61320484944456677 23.266382580114158 -2.7857744119883634 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "FBF7DF28-40BF-C57E-16AA-20A6AF472F00";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "6CC09225-45C0-3754-2E4C-08B24C00EF83";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.2380387133425221e-16 -5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "06DB7C4F-4D41-08A2-AC3C-FA9882803F10";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "8BE8A350-406F-7349-4ED1-8B84F0AD4DDF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "B1E22073-4E2B-38C8-E1E3-0D8577C10C9F";
	setAttr ".t" -type "double3" 1.9186890794618412 -4.5924254968025838e-16 3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "15B35354-4705-76AE-0B18-6E8748A4780E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "85E10DA8-4128-03B5-268F-E49BCBCB5234";
	setAttr ".t" -type "double3" -4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "86089EC9-4F13-7849-03FA-AEA7ACE97481";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "14A37F60-4847-9984-24F7-A7B79015C8A5";
	setAttr ".t" -type "double3" 2.4370394343444381 -2.4720580375940271 0.44514092909522773 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "DAA87C11-4CD9-4D1E-52A1-7797603999FF";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "84FCE220-4EB3-0380-F4BD-508A3C8DB350";
	setAttr ".t" -type "double3" -6.9973227212472011e-09 -3.5695405731727106 2.5225248666003779 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "B094590E-41E7-213A-AE10-5B9110B87D3F";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -7.1286013757820026 0 89.250778809129059 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "DCF8C860-4C3D-8960-014B-59BAECD1C047";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "FAB796E6-45F8-9672-C046-61BCEF8CB1FE";
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
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "90097F92-4F25-181A-E0FD-AF8EC65CB520";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "0F744E2D-4942-2E67-021D-12A4019D9593";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0658141036401503e-14 1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "43A96BFC-4A5C-3126-380C-3297D3586911";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.61320485644202094 -17.224783969347406 1.1618537823975217 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "6804C138-45C0-3DAA-D380-5EAF12D56DD8";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "BBFCD00C-41A2-83DD-DA01-73BBB1817EF2";
	setAttr ".t" -type "double3" 0.61320485644202094 -17.224783969347413 1.1618537823975217 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "6A5E2ED9-4592-6E25-B562-2895927D9321";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "045A9031-4064-1E45-F416-CDAFB2FF9656";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "AC2AC533-4DEC-42E8-0120-C68D362CCA17";
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
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "2A87F330-4DD3-55FE-0D2A-DEB5D92648F1";
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
	rename -uid "98688639-4C65-DF60-396A-589060585F37";
	setAttr ".t" -type "double3" 2.4370394343444381 -2.4720580375940271 0.44514092909522773 ;
	setAttr ".r" -type "double3" 180 59.086082974435577 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "F572C59D-4AE7-0D6B-DDAF-30909BBAE98B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7763568394002505e-14 1.0658141036401503e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -180 23.83797770456432 -1.9302262979678899e-31 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8579401423111882 -9.46873702565296e-17 0.51374965908607484 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "2EAAED50-48A0-1792-2E50-21AE50EB7CCB";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.5987211554602254e-14 3.0198066269804258e-14 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "CD35AE6B-4BF7-4900-8582-9AAB4FEFD733";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "E25E7603-4EFD-103D-3E58-F19DA2A19A63";
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
	rename -uid "49CDFB6D-4145-039B-74DB-199A3C28E5A9";
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
	rename -uid "22240AE2-4E79-8733-BBC9-89AF9F1416B4";
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
	rename -uid "974AC233-49B9-20F6-0496-9BB5F04080E9";
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
	rename -uid "23B2FE37-422A-2CC9-A9A3-2CACE64EED87";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "10922975-49EE-DDD9-8F0A-8EA57D3C86A6";
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
	rename -uid "DD7237CC-4F40-57EE-4A17-64875F600CF3";
	setAttr ".t" -type "double3" 7.126347838140167 6.0415986107667372 24.078625278085806 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "987D6519-470C-9C5A-CE43-D995D67A9E3D";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "4E7F432F-4422-8BF0-AD87-78ACCC408954";
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
	rename -uid "08AA77E8-4512-8882-7727-7896B9BA6048";
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
	rename -uid "C9158566-41F3-5BFD-EEFF-E3B580D35024";
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
	rename -uid "187C85B8-4229-8F45-C935-458D2FCC5960";
	setAttr ".t" -type "double3" 6.9974417371554409e-09 -6.0415986107667372 6.7176657956956092 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "40A20A8F-4F76-AAA3-C485-02B2FF6B9952";
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
	rename -uid "D8BF8C90-40E7-86EA-67DC-B495E6908E28";
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
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShape1" -p "lfLegQd1_ikc_gmb";
	rename -uid "A179100E-44AD-B21F-A449-6A8223F25EDE";
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
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "1D7E891D-4996-9BED-816B-71977ACF35C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -27.468996460804529 0.30860936166094383 -89.406407000514406 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "17FE0B86-41C1-6188-6EDA-BAAB7ECD2729";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 1.0825677600255099e-30 -2.4037833057944044e-46 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -152.53100353919388 -0.30860936166097241 90.593592999485594 ;
	setAttr ".radi" 1.3742356314627875;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "2EB37BDA-4513-661B-CE58-B499DF2D86F2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 62.626657879090025 -2.6645352591003757e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.3742356314627875;
createNode ikEffector -n "effector13" -p "lfLegQd1_legLock";
	rename -uid "E5E3338C-4642-E3F0-91B7-238E3C1DA22C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "lfLegQd1_ikcShape1" -p "lfLegQd1_ikc";
	rename -uid "EA039FBF-49A1-3748-6729-BCB1B1142E9C";
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
	rename -uid "9B00DE71-4B4A-1C3C-EFB0-15AFC7964233";
	setAttr ".t" -type "double3" 15.474895217990841 39.660063022090768 5.0627737695144468 ;
	setAttr ".r" -type "double3" 2.479028709016931 160.53884389465048 -7.2965159907439432e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "51E455DA-4656-7C12-EB6C-D2A4D481960C";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "1FB44E61-42B3-ED51-AFC5-E59ECEEAD131";
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
	rename -uid "D99A25F2-4391-7BC7-A1EA-1498822B6FEC";
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
	rename -uid "97508D4D-4E4B-F0C9-205E-90ADA39EC5EF";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 22.343584163530252 28.105523883437485 -83.778878925073798 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "67E798EE-45B3-7A67-7F27-09B8744B445E";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "9A265886-4644-FE49-41F1-EB9678EFF5C0";
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
	rename -uid "C1B322F8-403B-A260-C713-67928D3C2947";
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
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "95C0881C-411F-F13D-AD86-54BA0B9336F6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "04B74BA0-4772-5833-AF26-F7B37C3666C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.306767235970906 10.306767235970906 10.306767235970906 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "044E40EE-4A18-AA88-7078-2DBB65878951";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "A2305DA3-4927-5921-8A5B-7B9FCF2AA744";
	setAttr ".t" -type "double3" 1.6361350750788981e-14 63.638631816388312 35.504896439407034 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "3AAA9895-48C9-43FB-B412-79BE10A4541E";
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "84DE86BB-46D4-6522-C906-A284FD366D2C";
	setAttr ".t" -type "double3" 0 2.1316282072803006e-14 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "E24745D7-425F-A1B8-20E8-3DA4A30A510E";
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
	rename -uid "94CBD152-4F8B-B751-EBF9-C8BD9ED2668C";
	setAttr ".t" -type "double3" 7.2045234361705946e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "6310E886-401C-EF81-5529-F889DDEBE792";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "268EA24D-4399-4D62-6FCF-10A7A212FA38";
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
	rename -uid "DFF954C2-4396-0D2C-1E68-FBA3FD1CC07D";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "E2EB356B-40D2-8A64-53BC-3A9233E08661";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "AAFBB2DF-4F42-287A-3001-B190DF2F015E";
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
	rename -uid "60FC6802-4DC9-B583-1BB9-249B524C667B";
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
	rename -uid "D4F2483A-4411-4B33-7DDC-F6AEB62842FF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -7.2045234361705946e-18 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631575 -1.5253946017807453e-14 -8.8227160329260719e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.604652269631597 0 0 ;
	setAttr ".radi" 5.9906425375606309;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "9492510D-4222-D468-542C-EF88C6D77769";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.6361350750788981e-14 14.269010402334771 25.374411055997655 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.9906425375606309;
createNode ikEffector -n "effector15" -p "neckQd0_two_ikj";
	rename -uid "67059271-44C5-DB93-55BD-728BA6C657DD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "1D2B9DE0-4494-A9EA-14EE-3086E1CEDAAD";
	setAttr ".t" -type "double3" -1.6368555274225146e-14 14.269010402334764 25.374411055997669 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "57120621-4F44-0AC7-3BB7-D48A53BB8BA9";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "70D3F2E9-4730-42E5-731F-FDA082F98416";
	setAttr ".t" -type "double3" -8.2002253731858222e-15 5.2506893486806945 13.599534167560421 ;
	setAttr ".r" -type "double3" -43.660985986598114 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "4233FCE7-4E84-85D2-924A-2A9C233063F0";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "D183FF16-403C-5C36-A1A3-0289DD87290C";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "13CE05FD-4FDC-7228-2C46-FB9664A366EB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "A7CF3F1D-4496-11E9-C6D1-CAA4A4CE5AD4";
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
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "4B9B93C9-4A6F-3F20-A180-A68B2BEAD899";
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
	rename -uid "57C1A7EB-4171-3349-12D5-A9B58E1D2D69";
	setAttr ".t" -type "double3" -1.6361350750788975e-14 14.269010402334771 25.374411055997655 ;
	setAttr ".r" -type "double3" 30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "E0AFD20E-492D-A19F-9608-8B9F664C0C22";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "782FEA33-4C8E-D3A2-B83E-E9BDFBD3224D";
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
	rename -uid "929A8D55-452C-DC64-912A-F3B0736C1A88";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "D4F6356F-451D-45B3-1EE0-29B9C55A26A5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "C00FB557-4325-B1E5-BC58-E09FC7ED280E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 88.838378437719086 50.080155082786305 1;
	setAttr ".radi" 1.1981285075121262;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "38E7ECDF-4D92-8367-470B-478CC1490BD6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "C64F24B6-4D09-F902-3F5A-3B8273206FF8";
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
	rename -uid "3ED09A9C-4A0B-4522-4C80-65BDE2D1F95F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "B876B160-4E39-BEA3-8BC5-F09619685AE5";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "CC08243F-48E0-043B-5CC9-5C93F5C46E6E";
	setAttr ".t" -type "double3" 0 1.156175963025305 5.7868253083692309 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "83F50FB5-4B86-F7B5-2C41-399557DC1B2A";
createNode nurbsCurve -n "neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "70092EA9-409B-46D6-9AB1-52850CC2D9F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0415056995005614 12.765507776888796 13.728325892138173
		6.0976345054992444e-16 15.682194937149372 13.728325892138173
		-7.0415056995005614 12.765507776888796 13.728325892138173
		-9.9581928597611427 5.1623447633510024e-16 3.1610244952664524e-32
		-7.0415056995005614 -7.0415056995005614 -4.3116787080356029e-16
		-9.9751898948222214e-16 -9.9581928597611444 -6.0976345054992563e-16
		7.0415056995005614 -7.0415056995005605 -4.3116787080356029e-16
		9.9581928597611427 -1.3579952442685278e-15 -8.3153226457539024e-32
		7.0415056995005614 12.765507776888796 13.728325892138173
		6.0976345054992444e-16 15.682194937149372 13.728325892138173
		-7.0415056995005614 12.765507776888796 13.728325892138173
		;
createNode nurbsCurve -n "neckQd0_cog_ctlShape1" -p "neckQd0_cog_ctl";
	rename -uid "8FB947EC-46A8-D068-2886-76BB76CFDE61";
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
	rename -uid "147D66B9-42D9-D80E-D558-1883822CAF8C";
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
	rename -uid "B0A9B95B-4A39-4326-EB7F-CE842331B411";
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
	rename -uid "788FEFEC-4995-D886-6C7C-56A8FC5132FC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "D4EF436C-4EA5-24EE-C939-9DA23FDE8E35";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.492981903170473 4.492981903170473 4.492981903170473 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "96C50D73-4750-E0EF-01F0-F79D0808F0FF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "46E51450-4A2B-C78F-2893-0DBE23BB8093";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 4.492981903170473 4.492981903170473 4.492981903170473 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "D03B2D2E-413E-EB76-BEE2-46806F0755D7";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "0DF60241-471B-5C6B-D827-98A7B7B0DC24";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "76F45A14-411C-C3DE-523A-BAAEE2639455";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.50076434960073446 -49.433471647716104 88.912123131735129 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "2854D81D-4B7A-5810-BF3C-BFAFBFE124E8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003516 64.068928352023718 -14.163551514349981 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "8890C763-4233-806D-F6A8-3FABC92197EF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106716 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "F7E49798-4CA5-8E11-B50F-409F2D3FEC40";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628196388 36.265191043615189 6.9366382381466307 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "6206FE59-46B8-C03C-17D6-F8AF9891A1AA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777825 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "25BD76A5-412F-7E01-8509-0E876DB81ADD";
	setAttr ".t" -type "double3" -5.561431110586355 6.9984569250891582e-09 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 23.061720469442371 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "DC38B793-44F9-260C-F8BD-5D8BFA79AD3F";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "B57B63F3-45AF-142E-4CE7-5387523FAB2D";
	setAttr ".t" -type "double3" -5.5614311105863514 6.9984587014459976e-09 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 23.061720469442346 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "95DF84DF-40EB-ECCC-7AD9-FEBEB66CEE9F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "5A256A36-4851-2CE1-F0D3-C2B7FE021F61";
	setAttr ".t" -type "double3" -5.5614311105863479 6.9984587014459976e-09 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "8A2BB639-4339-273D-A895-61BD406EB9AD";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 6.3611093629270335e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.0395750227524637e-13 3.1805546814635176e-15 5.8260293775470427e-14 ;
	setAttr ".radi" 1.4173558686574537;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "F8F31CE6-40FA-C038-B054-31A21569666A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670124 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779804 0 ;
	setAttr ".radi" 1.4173558686574537;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "28F423C0-42EF-5650-3ADC-FD95A921E55F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "8D781E7C-42C5-F72C-4A77-DF922A81779A";
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
	rename -uid "A90FA6DE-4D84-C80A-558B-A6928DE733C0";
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
	rename -uid "C2A0C76F-45F7-68AF-7368-C88BB8B1F47A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "A018E9E2-4FC9-94BB-8BBB-5299129AD10B";
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
	rename -uid "6CA62193-48B1-15A3-85AC-859A1D21344A";
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
	rename -uid "5C6277AC-43BF-7B5A-7DE8-8E8318348F44";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "901D2B3B-4E95-D3D4-DD5D-EA98FE4976B6";
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
	rename -uid "4CB0E9A6-4F93-21FA-3B33-5BA644665229";
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
	rename -uid "CEA6B0DB-4A37-A5B0-5448-FCB2BF189946";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "C00A26A5-448F-6A48-9CBD-2B899E1EF9C6";
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
	rename -uid "AD026DBA-4377-F7FA-2C1F-A483DC458BFE";
	setAttr ".t" -type "double3" 2.4868995751603507e-14 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 34.73144234677784 3.1805546814635168e-15 -89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "8626A474-4AF4-C619-398D-4FB0FC6B272E";
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
	rename -uid "D7EAD044-4142-0ECD-0AAE-A18E7D7CB0D1";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "898321F3-4B2C-3F38-82BA-D8813D0178D5";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "B224FC50-4EB2-41C3-D949-C4BD7CBD8271";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "D51F4116-4C36-4B7B-FDB9-6096B48BC61C";
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
	rename -uid "13881CAD-49A8-B1FA-80C4-2BA3337AAC3E";
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
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "C2B04C7C-428C-E021-0572-BD8F7055D6D7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.1316282072803006e-14 -8.8817841970012523e-16 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 97.130792305308532 35.524862936853822 -1.5669053610084642 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "8850349D-4E34-085F-0147-678B424CF761";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -63.787737634212363 -5.6843418860808015e-14 2.9309887850104133e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905503e-15 -2.6587449290359072e-15 7.6532097022715869e-15 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector21" -p "rtLegQd0_autoAim";
	rename -uid "838DCAE2-4A78-653B-E6C9-5EB41417CD17";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "9CD9DB20-4558-6D6C-D376-C3AB19AD7FC3";
	setAttr ".t" -type "double3" -9.1257019408539897 8.3444269510709113 -34.108652583725423 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "267CE6AB-4F23-5971-3A9D-47A7F9645CA0";
	setAttr ".t" -type "double3" -6.5840614738021941e-08 -4.5705573025998936 3.1685175900398335 ;
	setAttr ".r" -type "double3" -5.96752428637967e-15 57.793162816220239 89.999999999999915 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "36AB283D-46B1-73F3-1D78-7F9071FA8B74";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "7C02ECC9-4CBB-5047-9CA1-ACB202BE4066";
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
	rename -uid "3FA6E14C-4F05-8F50-9863-D3B33F7BD9C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670089 -1.0658141036401503e-14 2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755428 4.7312853690039326e-17 0.53297724966496474 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "7A490AF0-4A83-D724-2E7A-29B06AE4C482";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "F75D5731-415F-3117-3244-4D8BD8E580A8";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "3D2148F9-4593-E977-F5EF-62A4066D4EA0";
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
	rename -uid "2E169865-487E-5080-1F1C-E39B2F49D963";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "8523A2D7-4E96-37E7-FA24-1897411E2ECD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.50076434960073446 -49.433471647716104 88.912123131735129 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "957F1FA1-4C69-8334-1C7E-D2BA47D8EA92";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.52460998181849 -2.6645352591003757e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 3.9908600548996154e-15 -7.1431828152695357e-06 -8.5012495892588138e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -16.656299362003516 64.068928352023718 -14.163551514349981 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "F3CEF017-4F0B-8429-E172-EE80A95BE32E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.015521384923296 -5.3290705182007514e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -2.9552923362025075e-20 1.4734574635188943e-05 1.7548574934597607e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.288964377106716 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "192E1550-464B-83CB-40EC-A18B7E99A7FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.713213754348718 -3.5527136788005009e-14 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -7.689441374007535e-07 -6.6214760054210043e-06 1.2766568299583519e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.1690592628196388 36.265191043615189 6.9366382381466307 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "3031D7B4-42BD-B1F3-E415-6792712CFEA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.352122984722968 -0.56954940883502125 -0.19538001629759094 ;
	setAttr ".r" -type "double3" -2.5928120941002633e-07 3.2627723682255081e-16 -3.320025915750703e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.731442346777825 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "5D2FC7AD-48DD-8637-645E-A685B1C38420";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.5614311105863585 6.9984569250891582e-09 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 1.2319077058869202e-07 -9.3434268522587613e-32 8.6912180557911185e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.061720469442356 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "33881739-4468-3210-49E9-A4850484D34A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0356754710670124 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 32.206837183779804 0 ;
	setAttr ".radi" 2.1260338029861803;
createNode ikEffector -n "effector19" -p "rtLegQd0_ball_ik";
	rename -uid "B107BD16-4A45-CA5C-5B0C-4CA81FD8ACB0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector18" -p "rtLegQd0_digit_ik";
	rename -uid "1DF44580-44F8-D9D9-88F6-33B74396AAE6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "rtLegQd0_palm_ik";
	rename -uid "DB838B80-46D4-C4D0-5862-92A34C4DDBCD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "rtLegQd0_lwr_ik";
	rename -uid "F939EA24-4037-8388-91EF-119140534FB8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "94CEAFF9-49EC-0FBD-9809-80808DC7F0CC";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -12.524609981818482 -4.4408920985006262e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -5.0888874903416268e-14 -2.1930420570272714e-29 1.3706512856420459e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 111.77798249028768 39.498109214033576 -5.0815358911596347 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "369BD9C1-40A9-0512-5045-BF9A5CD17AC9";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -32.975856781005859 -1.4210854715202004e-14 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905503e-15 -2.6587449290359072e-15 7.6532097022715869e-15 ;
createNode ikEffector -n "effector20" -p "rtLegQd0_softJ";
	rename -uid "50308843-4C54-499F-8BCD-3082162C23DC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "222FAEC3-4A8E-94DF-E621-E0B106356B2A";
	setAttr ".t" -type "double3" -19.193384426812791 25.803642726558628 -15.581784412028679 ;
	setAttr ".r" -type "double3" -165.61686281110741 -57.892244334823474 79.141888513098579 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "6A5C8510-416E-1EB2-8191-4DAF2304CE59";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "ADD90344-4091-2E58-E02D-8FA112885AE8";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "F19B9DC3-4912-DC76-0A0B-24885EA57C85";
	setAttr ".t" -type "double3" 0.56954940183653591 -29.696551973459925 2.5073573751739033 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "9F17D240-4352-257F-A514-B5A779467148";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "94EB3AE2-46A8-778E-1C1B-DFA550A467D1";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.1692155524104813 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "301B7054-4D04-8149-E30F-CC9E91807032";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "F7F1FEBD-48FF-D944-CAD2-A2B69C11AB38";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "6DDBCA55-4677-F80C-3861-D1B233E82F85";
	setAttr ".t" -type "double3" -2.1747055391654797 0 -2.8717187726196904 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "934A5818-4033-5E1C-21F6-C89690A2430C";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "F01DB08E-46A4-8EF8-3199-80BB7AB2A04D";
	setAttr ".t" -type "double3" 4.7006725230819457 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "D870AD9E-4ED7-74DE-138D-DD9CCBE4DDEC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "2044A28A-4602-5312-B4FF-078E85367D88";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "EDA73E29-42DC-E120-6B1C-0DA70897A3FE";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "ABD124AC-4AEE-7A6E-5569-31BA3DDBB96D";
	setAttr ".t" -type "double3" 6.9984587014459976e-09 4.5705593402659277 -3.1685175263687135 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "5FC3389D-4FA1-91EC-42F6-609888C042EA";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 173.84330993628481 0 87.757826737056263 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "CCC41A82-4560-39C6-49DE-369D6D682C0E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "EEE23688-41E4-EEA1-3168-189DC708EDC6";
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
	rename -uid "2BB14458-46FC-684B-D82B-99817CFF9CE2";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "1A634287-46E2-010E-45A7-39BB79522C63";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 3.0814879110195774e-33 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "8123C2A2-4838-FE6D-F64B-368B1D6D445A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722982 0.19538001629758384 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "0775BD9A-4E75-5DBF-675D-EDAFC0D95816";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "681B471A-40D5-B604-D714-FAAB5C6120C8";
	setAttr ".t" -type "double3" -0.56954940883498928 21.352122984722985 0.19538001629756963 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "62090CD5-43C9-F293-176F-43A512885843";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "DBF5C860-436D-F297-7B0A-0FAAD9319830";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "AE530525-4223-BDE9-C1A6-38A4B854CC2D";
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
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "ECB0259F-4795-F048-FA39-298D9A8592B4";
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
	rename -uid "2252E4EF-4F29-8E4F-5004-28829BD736C7";
	setAttr ".t" -type "double3" -2.5259669839164749 3.7738696484710266 -1.8317166448935573 ;
	setAttr ".r" -type "double3" 0 57.793162816220232 89.999999999999986 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "A772D6B7-4C3E-5E03-F67E-70AE15D1BE72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.3092638912203256e-14 ;
	setAttr ".r" -type "double3" 0 -23.061720469442346 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84612957124755417 5.3991650363334001e-17 0.53297724966496496 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "A05E3E74-44B9-5979-22E2-35B538207B86";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "20722C93-49DB-239C-A781-5E8AABB3729F";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "FC9241ED-4EB2-E317-1517-B8A1BE68511A";
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
	rename -uid "F99D3246-4EB4-417C-F81A-24ACB7D85805";
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
	rename -uid "39DE9A7C-4D77-FB98-6677-058F6FA039D8";
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
	rename -uid "DDA35743-4379-6C4A-C81D-40B88C322AA9";
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
	rename -uid "65178EBE-449A-E880-1467-D6B1E8FB6594";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "DEC7C328-4061-72B6-B396-85B859C77B87";
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
	rename -uid "51B04F63-4911-0EBB-8729-5A8B8BD0F1C2";
	setAttr ".t" -type "double3" -9.1257019996961457 8.3444289887369543 -34.108652520054321 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "945A23CE-4A13-E074-D5FF-F98E1DBC1625";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "8EA9F6AC-4698-1282-DDBD-75B23D840730";
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
	rename -uid "7DD5EF78-4467-C269-1EFB-5F80CB84D266";
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
	rename -uid "E7D84D7B-4A88-2F64-CD91-4A8BD21C93E1";
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
	rename -uid "DDB28F52-49F7-FE62-E3B7-6382A5F8F08B";
	setAttr ".t" -type "double3" -6.9984498196618006e-09 -8.3444289887369578 7.8719529438819684 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "86824976-46F2-CF26-89FE-58949381B241";
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
	rename -uid "38CAAE2F-457C-F480-2998-58876F170BA3";
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
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShape1" -p "rtLegQd0_ikc_gmb";
	rename -uid "7C648393-41A1-318C-3947-CD8D82A6D97F";
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
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "D3CAF4EB-493F-E46C-C556-7095541C01C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 98.692320603839079 -13.888349543035075 87.898364012411818 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_ikcShape1" -p "rtLegQd0_ikc";
	rename -uid "CB6129CE-453A-AEDA-E266-00B4FACFF491";
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
	rename -uid "6B8484B2-442F-26B2-E985-1493CC1871CB";
	setAttr ".t" -type "double3" -11.666222281262513 38.371445997601946 -1.9846335679030154 ;
	setAttr ".r" -type "double3" 14.383137188892622 -6.4905529621657241 -1.0003349776607069e-16 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "587DD201-4146-3EC2-7719-D8B2538CDBC1";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "8D946230-4BFE-07AA-C7D8-50B5D122FB25";
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
	rename -uid "2ECAC451-43E0-F927-B406-EC9F92411B4A";
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
	rename -uid "E28EECAA-4E68-3BC6-8B7B-E8AD5C4B0BB6";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -5.2132423208352767 15.26905015400752 83.013755051389126 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "A44DDB1D-44DD-44ED-2DDE-D4A14BEAA658";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "46FC7D1B-4763-D609-6E77-1D8211F58690";
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
	rename -uid "9D960E95-4970-DDFA-B716-48B3000125D1";
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
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "341FD17E-401D-42C3-C87D-7AACBB54A020";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "C4170F98-4CA3-5DF9-2A18-DE8A54B61837";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.630169014930903 10.630169014930903 10.630169014930903 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "CF4B1252-46BD-6FF0-6DD3-3F9080263992";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "57DD53C6-4722-2C81-C609-B6A98C4B4DE9";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "2827AA73-46A1-D338-C3F5-E8B080FE852E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1246322020435211 23.168291777141256 84.517522921565174 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "28F7E25E-489F-B891-C439-7586EBCEABCD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823368 -51.236978489001558 -2.4423350360292724 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "1A2A51C8-4F19-ABE7-7679-F4BD3F538A45";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921303 0 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "1E0D6277-4489-A810-BC30-0C869A010039";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006483 3.6815551140188822 4.4718086105368702 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "6E38AB23-468D-CF80-5CF2-6EB44EB83D13";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871374 0 ;
	setAttr ".radi" 1.3742356314627873;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "DD8423C8-40FE-E963-3BEE-078D1AF9BFBA";
	setAttr ".t" -type "double3" -4.3708982607861486 6.9984595896244173e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.837977704564288 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "DF209593-4436-9F56-ACF8-998376831F7E";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "0298BB8B-4EF0-DF60-6B6C-179044C5A35E";
	setAttr ".t" -type "double3" -4.3708982607861486 6.9984587014459976e-09 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 23.83797770456427 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "A36633C0-4C35-B1E4-87FA-B59C0B56240B";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "EA3F7306-4538-F9F6-43EA-F5A912C11A38";
	setAttr ".t" -type "double3" -4.3708982607861468 6.9984587014459976e-09 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "6CA69FEF-41BE-C5FD-BAA4-BD99AE53558C";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 0 1.2722218725854067e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.6501062426265088e-14 -6.361109362927032e-15 3.0955800999939308e-14 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "B0AF9381-4224-7A7B-F163-AE8EE17E81F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157366 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 1.3742356314627873;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "69D3735B-4363-8AEA-1AF0-5A9E337428B7";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "FB2C0952-4E66-C6B2-86E9-FC83FA1F4ECB";
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
	rename -uid "64180824-48CB-5F99-252A-17A11C9DCA6D";
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
	rename -uid "1F8F3B98-4DB5-852A-4D38-D394FBDB1540";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "2AC137AC-4362-A923-1FF9-1FB7F89E378A";
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
	rename -uid "F7AC47D5-46D0-E7A8-85D4-DDA4C688C34F";
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
	rename -uid "6FBFA58D-43FA-6068-697A-57BABC16874C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "EE9533E2-4D9D-42DF-6201-B8A996CEAE01";
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
	rename -uid "46F29C31-483E-7641-8B3C-219B2346B119";
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
	rename -uid "0E27EA28-4FE1-8596-6E50-6F9154B2F9E4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "AB83EBBD-4CDB-7724-1A71-73B6B62BD058";
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
	rename -uid "AA91CE64-4E9C-89CF-8E95-AEA859729EBA";
	setAttr ".t" -type "double3" 2.4868995751603507e-14 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 35.248105269871381 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "844A2176-490F-AADB-8F6C-A8BF4CB35E1E";
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
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "F801DA4E-4558-5ACB-598B-B5A71F523675";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "2014FA2D-48BF-A42C-ADBC-53942229FD71";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "29F06C3B-4678-4CBC-813F-C99E92305AA2";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "4C590E29-4854-A05F-09A2-89B1E848038D";
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
	rename -uid "A971595D-4CF7-7A32-B4F7-80AFAB783CFF";
	setAttr ".t" -type "double3" -14.756214514549193 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "C162E90F-42D4-7F29-79C4-B8BFA4F5E1B1";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "A4822036-447F-CF36-379D-78A315FF239C";
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
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "36B0CE7B-4854-6ECD-7728-91A3D9416199";
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
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "F974AF2A-4120-1ABF-2979-329C845ED6CD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -3.6085592000850505e-31 5.7736947201360604e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 151.65839923220418 -23.487200375563962 4.8419983262070669 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "CC67ED4C-4951-9C61-5A3C-EE8CD24FB408";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -62.626657879089947 8.8817841970012523e-16 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.180554681463516e-15 -5.5659706925611551e-15 -9.6907525450841528e-15 ;
	setAttr ".radi" 2.0613534471941808;
createNode ikEffector -n "effector27" -p "rtLegQd1_autoAim";
	rename -uid "A69C78AC-44FC-052E-B1FB-49ABF8E1CD34";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "AFBCF8F6-4E69-6A1A-0ABA-5BB0EB35A1BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 28.341600767795448 23.487200375563962 -175.15800167379294 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "62FCA8B5-4E26-F68B-2079-FEA1A3177B8E";
	setAttr ".t" -type "double3" -7.1263478866606649 6.0415997908613477 24.07862522223461 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "B7F14CFF-4D15-7689-9E79-35BC8939CE50";
	setAttr ".t" -type "double3" 4.1523056992787133e-08 -3.569541753267353 2.5225249224515913 ;
	setAttr ".r" -type "double3" 0 59.086082974435662 90 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "84E0B5B3-48A9-1EB4-6D55-BA99570674E2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "B96CFC94-4405-63D5-1476-7F943AB6B84A";
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
	rename -uid "BB5BB465-49A6-E2FF-BB01-83BFED647CDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157224 2.6645352591003757e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118909 0 0.51374965908607351 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "A077F2B8-4EFF-EDCB-19FD-7B808DDAEE26";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "45D85DE6-47AB-9A45-FC30-85AB80C88318";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "295047F7-40D8-146A-C945-048FE49692FD";
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
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "D476C01F-4720-F55F-3766-CAA4C8C7999B";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "3759C5FB-4C04-B589-2AEB-68AD90145585";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1246322020435211 23.168291777141256 84.517522921565174 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "47F86A1E-432C-74FF-6075-3C9E989A26DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.7562145145492 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 6.8266803694267515e-21 7.5403246776668666e-06 -8.762920236923023e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -155.39579784823368 -51.236978489001558 -2.4423350360292724 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "8E85FF2C-41E4-ECC1-924B-A2BFEB799B99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.772275812575902 1.4210854715202004e-14 1.5987211554602254e-14 ;
	setAttr ".r" -type "double3" -3.0568845630598284e-21 -1.4863373895098215e-05 1.8823661790707477e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.104219197921303 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "7E277CEF-42FA-0424-B8BD-FBBF9F96E477";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.274225002917767 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 6.0202790127178387e-07 -8.0373557807760469e-06 -2.5909295098053799e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 160.63297040006483 3.6815551140188822 4.4718086105368702 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "10166255-4AD7-7A80-E9D7-A58690B4915B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.224783969347435 -0.61320485644302103 1.1618537823975288 ;
	setAttr ".r" -type "double3" 3.8725372768458044e-07 -6.200512522215788e-16 3.1266862718850077e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 35.248105269871374 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "C65A6A9B-4382-01F8-3CAC-4AA18E72ACE4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.3708982607861522 6.9984631423380961e-09 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 1.7666950755813038e-07 -2.4154968091540873e-22 -3.7240494448988991e-31 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 23.837977704564263 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "F6268519-4321-F0DF-AAEE-819F666926C4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8976837420157366 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 30.913917025564398 0 ;
	setAttr ".radi" 2.0613534471941808;
createNode ikEffector -n "effector25" -p "rtLegQd1_ball_ik";
	rename -uid "FE270683-49D6-62BB-CA93-109B8E2FADFD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector24" -p "rtLegQd1_digit_ik";
	rename -uid "67B20940-4D74-3E32-51B9-5D8CF7A2C4D1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector23" -p "rtLegQd1_palm_ik";
	rename -uid "892CE987-4417-B33A-BA84-4292C32B3C20";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector22" -p "rtLegQd1_lwr_ik";
	rename -uid "1D8EDEFE-43C4-8C69-71D7-2DB5DC606B1C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "3F842125-49C8-09E5-2D62-0EA50526F03D";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -14.7562145145492 1.2434497875801753e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 88.416483961928165 -36.064431456154495 5.866975113504691 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "4FA770F6-4BF9-4942-3FCF-B2B53D70BCEA";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -32.719341278076172 -1.0658141036401503e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.180554681463516e-15 -5.5659706925611551e-15 -9.6907525450841528e-15 ;
createNode ikEffector -n "effector26" -p "rtLegQd1_softJ";
	rename -uid "75E62D34-4D41-9912-A7D2-B28C9C1FD7D3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "8CB7447A-454D-111C-4BB2-57B8C848FBAF";
	setAttr ".t" -type "double3" -20.717375276182729 -21.027952737168189 -7.8186631536675826 ;
	setAttr ".r" -type "double3" -177.52096886001954 70.271185714248801 77.099565117165625 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "6187B7D2-449B-0DC6-5E40-6590EA7C34A4";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "FF33EE0E-4080-52DB-C42D-46852E331A0A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "78C12511-4C82-45BA-DC02-CE896883934D";
	setAttr ".t" -type "double3" 0.61320484944455167 -23.266382580114154 2.7857744119883705 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "DF389427-4384-34A8-6841-68A2D84DC612";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "AFFF08A9-46F3-D608-1EC2-1B868E9714BF";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 5.0937451661047781 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "C6A2DBA1-48D4-3963-A531-319C407B857B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "ED02F451-4A90-26D8-DB6A-73851927FDAF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "DD8590B4-41CB-664C-714F-9EAF0648BDE6";
	setAttr ".t" -type "double3" -1.9186890794618412 0 -3.7500000000000036 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "3C884803-453D-DF10-9418-798E73425658";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "298DBB43-49F6-0E1A-77EF-DE85BDC639ED";
	setAttr ".t" -type "double3" 4.3557285138063992 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "736E52C4-4A16-B41F-0A93-B0B885E0977B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "F6D4F375-4758-9861-EDAF-E0943D053BA7";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940076 -0.44514092909523484 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "0B909929-45A0-0DA1-C53A-A580A4B9E1B2";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "5B7D8806-4A01-D483-50D6-70BFCEE9F79C";
	setAttr ".t" -type "double3" 6.998460477802837e-09 3.5695405731727083 -2.5225248666003814 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "CCC849AB-408E-9D8F-ED2E-ADB0F0B124FF";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 172.87139862421796 -3.975693351829396e-16 90.749221190872092 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "522C62ED-42D7-BB06-B551-FAAAFE3E56A4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "19790E6C-436A-D517-89CD-4F99A875BD47";
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
	rename -uid "BB92600E-4E07-5CB1-3015-BBB4D1F15DFF";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "EBC430FE-4A0F-DB23-ABE7-A59C85CAECC6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "062B1A11-4C46-C771-B2CD-12B96B4F0623";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.61320485644301748 17.224783969347435 -1.1618537823975217 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "EA3F4C9C-4A5D-C688-6737-A48C0617F9F2";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "EDF462AB-4E30-6CDC-F1C3-EBB17F01C189";
	setAttr ".t" -type "double3" -0.61320485644301748 17.224783969347435 -1.1618537823975252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "007E5D42-44B9-0CD5-BA05-E18B16CDA893";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "A9534407-4139-1AE2-3168-A0AFD70E6279";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "7AA63AB0-4E85-837F-E113-CEB470D579F2";
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
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "957C1F0A-4A37-4E06-3565-29AE2F025B7A";
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
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "35EA2781-4291-D5B7-B79E-72BC33167EB0";
	setAttr ".t" -type "double3" -2.4370394343445563 2.4720580375940076 -0.44514092909523484 ;
	setAttr ".r" -type "double3" 0 59.086082974435655 90.000000000000057 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "46F91637-48C8-E432-54B2-46B5686B5D81";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -8.8817841970012523e-16 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 -23.837977704564263 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85794014231118898 -1.8261730389852504e-17 0.51374965908607373 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "4EB82129-423B-2D47-DBA9-D7803E623E2C";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "308626E7-4C2B-95B9-F1ED-B7B31D68748D";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "BE63E254-4D7F-CE6A-3D1E-CAAEF6B095F3";
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
	rename -uid "CC917577-4EDA-DA8F-03B2-6F99FAFD492F";
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
	rename -uid "C70BF3E0-4CC8-D312-D104-5D86D166A1B1";
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
	rename -uid "629BB977-4FB3-F764-5E43-E494A205EE09";
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
	rename -uid "5F58EE88-4BFC-F778-5D54-DA808F428EA8";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "3183923E-49FA-894F-C180-09A092E6F39B";
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
	rename -uid "60D04CA3-45D3-CDAC-FD45-78A11663EDF8";
	setAttr ".t" -type "double3" -7.1263478381391474 6.0415986107667159 24.078625278085795 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "E60F54E1-4086-17AD-FB81-CFBEA29D2DBB";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "0DA1FBFC-431E-ACAD-D61C-4A8BCE934987";
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
	rename -uid "289DB239-48C4-FACD-F298-DBAB7702B9B2";
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
	rename -uid "AE7D5894-4C35-9FA9-9028-33B4D09470A5";
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
	rename -uid "E9D16A67-4EE2-0244-2066-F39E842495DB";
	setAttr ".t" -type "double3" -6.9984613659812567e-09 -6.0415986107667159 6.7176657956956198 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "461A6515-4645-94E5-645C-41BD419127DB";
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
	rename -uid "FC12AC6F-40F3-2EAC-B066-6B8ED692325A";
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
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShape1" -p "rtLegQd1_ikc_gmb";
	rename -uid "F90B3B48-4DBB-1B4A-2A02-A2B5578CFD48";
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
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "1EA4CEC5-4565-E714-C85A-B89EE6C32B2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 152.53100353915508 -0.30860936166100583 89.406407000515358 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "3806145B-4816-1515-31BB-84BEAC15AD89";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -6.1345506401445646e-30 1.4434236800340139e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 27.468996460844537 0.30860936166099628 -90.593592999484642 ;
	setAttr ".radi" 1.3742356314627873;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "4E087905-4256-4592-F767-75912F56F527";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -62.626657879089947 1.5099033134902129e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.3742356314627873;
createNode ikEffector -n "effector28" -p "rtLegQd1_legLock";
	rename -uid "6E51265F-4A2A-68CA-06EE-09A2C5695622";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "rtLegQd1_ikcShape1" -p "rtLegQd1_ikc";
	rename -uid "B6302122-4D33-922C-4EB1-41867EE21839";
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
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "4B6736E5-4F60-78E4-DCAA-0FB6179349FF";
	setAttr ".t" -type "double3" -15.474895217990181 39.660063022090782 5.0627737695142176 ;
	setAttr ".r" -type "double3" 2.4790311399805716 -160.53884419250016 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "BDE00FBB-4BDC-01CC-49E9-35ACF7A4122D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "36116F58-4551-BC91-ADF6-D199E860482C";
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
	rename -uid "5011B836-405C-B811-BB90-F0A249D805EB";
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
	rename -uid "9C3FD1F9-47C2-C5B7-703C-8C9005656E18";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -157.65641585597294 -28.10552379459055 83.7788789664733 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "578BCB55-46CD-6843-395E-869377128704";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "1423FD7F-4616-2036-7F98-85A92380C337";
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
	rename -uid "2B954FB7-4A9F-E981-6EA5-1892A37B47E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.4355890786569683 -5.2371363689452236e-33 8.5528925661918163e-17
		-3.3695751775990681 4.1040986035070753e-17 -0.67025016493162826
		-3.1740704165484042 8.0504793850145659e-17 -1.3147430608687087
		-2.8565879841687138 1.168748426182644e-16 -1.9087109835134646
		-2.429328334268015 1.487534546285378e-16 -2.429328334268015
		-1.9087109835134646 1.7491556857525479e-16 -2.8565879841687138
		-1.3147430608687087 1.9435576880948942e-16 -3.1740704165484042
		-0.67025016493162826 2.0632698000517226e-16 -3.3695751775990681
		2.1036915850373307e-16 2.1036915850373307e-16 -3.4355890786569683
		0.67025016493162826 2.0632698000517226e-16 -3.3695751775990681
		1.3147430608687087 1.9435576880948942e-16 -3.1740704165484042
		1.9087109835134646 1.7491556857525479e-16 -2.8565879841687138
		2.429328334268015 1.487534546285378e-16 -2.429328334268015
		2.8565879841687138 1.168748426182644e-16 -1.9087109835134646
		3.1740704165484042 8.0504793850145659e-17 -1.3147430608687087
		3.3695751775990681 4.1040986035070753e-17 -0.67025016493162826
		3.4355890786569683 2.2753887122270542e-32 -3.7159916484473809e-16
		3.3048299114243394 4.0252396925072829e-17 -0.65737148947894097
		2.9324587064624916 7.4376731861233179e-17 -1.2146641671340075
		2.3751659468965984 9.717788440474471e-17 -1.5870352082742021
		1.7177945393284841 1.0518457925186653e-16 -1.7177945393284841
		1.0604230498495431 9.717788440474471e-17 -1.5870352082742021
		0.50313037219447665 7.4376731861233179e-17 -1.2146641671340075
		0.13075933105428206 4.0252396925072829e-17 -0.65737148947894097
		0 2.2753887122270542e-32 -3.7159916484473809e-16
		-0.13075933105428206 -4.0252396925072829e-17 0.65737148947894097
		-0.50313037219447665 -7.4376731861233179e-17 1.2146641671340075
		-1.0604230498495431 -9.717788440474471e-17 1.5870352082742021
		-1.7177945393284841 -1.0518457925186653e-16 1.7177945393284841
		-2.3751659468965984 -9.717788440474471e-17 1.5870352082742021
		-2.9324587064624916 -7.4376731861233179e-17 1.2146641671340075
		-3.3048299114243394 -4.0252396925072829e-17 0.65737148947894097
		-3.4355890786569683 -5.2371363689452236e-33 8.5528925661918163e-17
		-3.3695751775990681 -4.1040986035070753e-17 0.67025016493162826
		-3.1740704165484042 -8.0504793850145659e-17 1.3147430608687087
		-2.8565879841687138 -1.168748426182644e-16 1.9087109835134646
		-2.429328334268015 -1.487534546285378e-16 2.429328334268015
		-1.9087109835134646 -1.7491556857525479e-16 2.8565879841687138
		-1.3147430608687087 -1.9435576880948942e-16 3.1740704165484042
		-0.67025016493162826 -2.0632698000517226e-16 3.3695751775990681
		-4.0108266341751777e-16 -2.1036915850373307e-16 3.4355890786569683
		0.67025016493162826 -2.0632698000517226e-16 3.3695751775990681
		1.3147430608687087 -1.9435576880948942e-16 3.1740704165484042
		1.9087109835134646 -1.7491556857525479e-16 2.8565879841687138
		2.429328334268015 -1.487534546285378e-16 2.429328334268015
		2.8565879841687138 -1.168748426182644e-16 1.9087109835134646
		3.1740704165484042 -8.0504793850145659e-17 1.3147430608687087
		3.3695751775990681 -4.1040986035070753e-17 0.67025016493162826
		3.4355890786569683 2.2753887122270542e-32 -3.7159916484473809e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "E1CD224A-4196-9118-0115-B3876DE87F4A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "136FC91A-4ADC-AB64-92F3-C48D58DF83BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 10.306767235970904 10.306767235970904 10.306767235970904 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "7C821252-41E7-A043-21FB-0BB2D889C6B2";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "622D2C8C-47CA-D037-0987-D2BC5300C8D6";
	setAttr ".t" -type "double3" 2.5492561078581388e-14 69.844580203728867 -18.288410027193962 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "D59F2F6C-4435-0871-D4B2-228D04AA46FE";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "4C71378A-458E-250D-A6B9-B3AC83F75DE0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "73FE29A9-494E-B40D-3A62-C3A095CC2437";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 1.2825756581407006 8.4222605801790031 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "62909166-4298-802D-6016-DF9A39D38339";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "A7218A27-417F-29AC-BE20-ACAF57F1B687";
	setAttr ".t" -type "double3" 2.5504568617641672e-14 -1.2825756581407006 -8.4222605801790102 ;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "536CB3C4-4437-8607-7666-21899975DFC1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "4D08B0DA-4D94-8ADA-742C-45833E3FF533";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -10.229457130115025 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.229457130115025 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "80A448E6-4655-EF3C-70D1-A4A0A7243247";
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
	rename -uid "55C2DD61-4BBF-8AD1-92D3-C2887B596ECA";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.3889807842101192 -11.018676876752011 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "08FA51C9-4BC9-C35D-BE27-7AB8D8629250";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "5DCD10D5-457C-0841-B35B-D09381F84FFD";
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
	rename -uid "74BD0FED-400B-131D-768D-D49B393DE713";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.5492561078581388e-14 -1.2825756581407006 -8.4222605801790031 ;
	setAttr ".r" -type "double3" -10.22945713011506 5.8926173563338235e-16 -4.9831518720766284e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "3D8EA238-4E0C-FE70-5DE3-19B00C2BB5E6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.5492561078581391e-14 -15.21170541018919 49.837952447719665 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.521917452270781;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "BC383000-43B2-D7B9-2725-5AADEC3446D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277705e-14 10.042330869348618 -23.919648061967045 ;
	setAttr ".r" -type "double3" 19.167178409598623 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "8504AD49-4B87-00FB-F504-27852DC6D758";
	setAttr -k off ".v";
createNode ikEffector -n "effector30" -p "spineQd0_two_ikj";
	rename -uid "CE89F6DA-428F-FC7B-A92A-FB862E67A7D9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "55A5976F-474D-5396-0D47-13B99F43F5E7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2682730021277702e-14 -1.7669298493964334 18.002090620814126 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "77ED60EA-43CC-268E-1A8B-14B57F40116D";
	setAttr -k off ".v";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "62DCFCCC-40F6-1223-F239-689416EB30EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 21.118077271659679 -10.669228627027955
		1.0709837303546802e-15 26.240923667842139 -10.669228627027955
		-12.367645247617862 21.118077271659672 -10.669228627027955
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 21.118077271659679 -10.669228627027955
		1.0709837303546802e-15 26.240923667842139 -10.669228627027955
		-12.367645247617862 21.118077271659672 -10.669228627027955
		;
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "66534B12-4D4D-19F4-EEDE-B19751719157";
	setAttr ".t" -type "double3" -1.2809831057303686e-14 -0.48435419125573276 26.424351200993129 ;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "6B1EDDF1-4A73-B0DB-AB62-9DBC17C3C551";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "CC974C73-404D-3700-5C9C-52AA46EE89A2";
	setAttr ".t" -type "double3" -1.5777218104420236e-30 0 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "E0C725AF-4AF8-A508-465B-30AA7F6727E0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "E33B072E-4002-5E0F-AB7F-28982BE167B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 8.9377212794835632 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.9377212794835632 0 0 ;
	setAttr ".radi" 2.1043834904541563;
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "158402FB-44A2-685A-636E-D19F98983CFB";
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
		1.0709837303546802e-15 17.490491643800326 1.0709837303546802e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 12.367645247617864 7.5729985827425951e-16
		1.0709837303546802e-15 17.490491643800326 1.0709837303546802e-15
		-12.367645247617862 12.36764524761786 7.5729985827425931e-16
		;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "746C778B-4D6B-E6C9-58CC-C8971012357B";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 -6.119149120393331 51.747207651330662 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "F89195BB-4D87-E5A9-4632-3F82CCCC599E";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "097FBFFA-45D0-55DA-FAA4-BA9244641828";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "AA4CED07-4643-F37A-E53A-0389C7041F54";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "B28D3909-4A19-3F19-0CA6-898E394F9CD9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.1043834904541563;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "558D2F63-4E7F-D2B2-5464-C093BB1FF244";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4663308626521417e-30 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -10.229457130115042 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "E36B4A13-4E03-A1D2-70B1-DB8FC9BE7ED4";
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
	rename -uid "90900D57-4574-94B3-3C10-21AC8689DA12";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "CB4E82EE-4D74-081A-9DF5-1CB59A2CC9FC";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "ABF4B11C-4E9F-0F0D-738E-699505150D70";
	setAttr ".t" -type "double3" 1.6361350750788975e-14 -0.08679926694720308 2.0460988152703408 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "5D8D771A-48AB-B043-F0EC-459E92033E44";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "1F5BE9C5-485F-E85A-81F5-7D97E6EB45E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.367645247617862 26.491965344230387 -9.7932390308178192
		1.0709837303546802e-15 31.614811740412847 -9.7932390308178192
		-12.367645247617862 26.49196534423038 -9.7932390308178192
		-17.490491643800336 9.0671017540398263e-16 5.5519985703141112e-32
		-12.367645247617862 -12.367645247617862 -7.5729985827425931e-16
		-1.7520345102544488e-15 -17.49049164380034 -1.0709837303546808e-15
		12.367645247617862 -12.36764524761786 -7.5729985827425931e-16
		17.490491643800336 -2.3851721699602632e-15 -1.4604967316785914e-31
		12.367645247617862 26.491965344230387 -9.7932390308178192
		1.0709837303546802e-15 31.614811740412847 -9.7932390308178192
		-12.367645247617862 26.49196534423038 -9.7932390308178192
		;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1B4D05CE-480B-8AE7-4965-C5AEDEB891E1";
	setAttr ".t" -type "double3" -2.5492561078581388e-14 20.149974197015567 74.155390418349498 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "25E2E898-4358-5EA1-4353-ECADE766BBB5";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "4F08BD68-4F37-7311-58E4-31B33AD5789A";
	setAttr ".t" -type "double3" 9.1257019996987889 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "7FB5245F-4738-859D-47DD-1E8C88C0F341";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F3A35718-4F45-1AA9-A55A-269272879FE9";
	setAttr ".t" -type "double3" 11.66622228126173 -31.473134206126936 16.303776459291029 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.490551251626643 6.7132861421476638e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "37A6E42C-4D65-F1AA-27DF-94BD1C6B6978";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 0 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "371D5037-456B-AE77-A081-B2BCA3552CA5";
	setAttr ".t" -type "double3" 7.1263478381401413 -63.802981592962126 42.367035305279771 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "F701CDA7-4223-C2ED-1D5B-2EB9677D960A";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EB85ECA7-48C7-EEF7-FDBF-F1BA08825C0D";
	setAttr ".t" -type "double3" 15.474895217990817 -30.1845171816381 23.351183796708408 ;
	setAttr ".r" -type "double3" -177.52097129098306 19.461156105349517 179.999992703484 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "2E269892-4B95-DAD2-884A-8DBB435A0CA4";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 2.2204460492503131e-16 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EB62187D-42E2-FB27-8B55-BAA14FD3731D";
	setAttr ".t" -type "double3" -2.5492561078581382e-14 18.993798233990248 68.368565109980281 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "749A4A5E-401D-F150-E26B-9385D0C1C3B0";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CD26E0A2-4AC6-2D8D-353F-EA94C5D90793";
	setAttr ".t" -type "double3" -9.1312103277924069e-15 -6.2059483873405341 53.793306466601003 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "A14461D1-42F0-73ED-5F7A-2E8075D0BC6B";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "96A90B58-451D-F462-6E41-1681920D5D0B";
	setAttr ".t" -type "double3" -9.1257019996961706 -61.500151214991917 -15.820242492860359 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "3A91B2F6-48C4-277B-FAB1-7D9FD381E244";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "DF663804-4E22-DF1E-BBA6-A8876489C384";
	setAttr ".t" -type "double3" -11.666222281262538 -31.473134206126922 16.303776459290948 ;
	setAttr ".r" -type "double3" 14.383137188892626 -6.4905529621657303 -1.0003349776607067e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "805ABEFA-4304-580F-1E78-BB851AE2E3A9";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F2CA6E30-47E0-88D3-7BAB-9AAF985B6B31";
	setAttr ".t" -type "double3" -7.1263478381391732 -63.802981592962155 42.367035305279757 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "7242CC3B-4638-0B16-8A37-DA8A2E870D11";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9AFC776B-429E-DF51-20D0-599D80D3E3DE";
	setAttr ".t" -type "double3" -15.474895217990206 -30.184517181638086 23.351183796708177 ;
	setAttr ".r" -type "double3" 2.4790311399805716 199.46115580749984 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "3F3FE42E-43D2-7E3F-9456-21BE5297DD25";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "ADDD35DC-47CE-3D29-21B9-50B718EBF5D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.3152396815338476 31.388653142564081 26.454471929328747
		1.3152396815338476 34.916234389514379 26.454471929328747
		1.3152396815338476 36.649611868699473 15.932554477057963
		1.3152396815338476 31.388653142564081 15.932554477057963
		1.3152396815338476 31.388653142564081 26.454471929328747
		-1.3152396815338476 31.388653142564081 26.454471929328747
		-1.3152396815338476 31.388653142564081 15.932554477057963
		1.3152396815338476 31.388653142564081 15.932554477057963
		1.3152396815338476 36.649611868699473 15.932554477057963
		-1.3152396815338476 36.649611868699473 15.932554477057963
		-1.3152396815338476 31.388653142564081 15.932554477057963
		-1.3152396815338476 36.649611868699473 15.932554477057963
		-1.3152396815338476 34.916234389514379 26.454471929328747
		-1.3152396815338476 31.388653142564081 26.454471929328747
		1.3152396815338476 31.388653142564081 26.454471929328747
		1.3152396815338476 34.916234389514379 26.454471929328747
		-1.3152396815338476 34.916234389514379 26.454471929328747
		;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "4DA8DAEE-47C6-D72F-E5D1-448623919A00";
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
	rename -uid "C5B335D1-45F5-B126-EBC9-E08CE19C84FA";
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
	rename -uid "73023AA1-4EFC-8ED0-9386-CDB1648651D1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "219B3323-41FD-4DAB-8E2E-A3BF8390C822";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 7.8914380892030858 7.8914380892030858 7.8914380892030858 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "37F9EDE1-460E-CFC8-09B0-E29D246C448F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "508C03FE-42DF-E7E1-6218-FC9A9578E3AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 7.8914380892030858 7.8914380892030858 7.8914380892030858 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "E5D6D86F-4203-A345-62BD-ACA89A4ACAA4";
	setAttr ".t" -type "double3" 0 89.994554400744434 55.866980391155543 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "C3AA9C8D-43A5-9D8D-A33C-478BB78C30E1";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "B76BD697-4C78-FCA7-978E-59B5D5FC0855";
	setAttr ".t" -type "double3" 9.1257019996988138 8.3444289887369507 -34.108652520054321 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "1C770B81-4649-285A-454C-CA8525A3CB14";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "63C89439-4196-2B0C-4328-3D9AF71696B9";
	setAttr ".t" -type "double3" 11.666222281261755 38.371445997601931 -1.9846335679029337 ;
	setAttr ".r" -type "double3" 14.38313794775833 6.4905512516266421 6.7132861421476638e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "A9502342-47FC-FA60-CB37-AF893B374C36";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "0B59921C-43D5-C727-68DE-05A9FD370700";
	setAttr ".t" -type "double3" 7.126347838140167 6.0415986107667372 24.078625278085806 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "5662C5DC-4670-D03E-B533-D1BC442017AB";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "1D822F26-4A26-B86D-70F2-B7BAAB56B53D";
	setAttr ".t" -type "double3" 15.474895217990841 39.660063022090768 5.0627737695144468 ;
	setAttr ".r" -type "double3" -177.52097129098306 19.461156105349517 179.999992703484 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "384C2E9A-4A8F-20D5-F555-C7AA52691AE9";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 2.2204460492503131e-16 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "76476825-48DF-E55E-7246-D89026306F31";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 88.838378437719115 50.08015508278632 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "9ECC5A5E-4BBE-47CD-C521-1F9E5C6460EF";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "88CF8997-4E2B-0883-FD61-939474E1CDA4";
	setAttr ".t" -type "double3" 1.6361350750788981e-14 63.638631816388333 35.504896439407041 ;
	setAttr ".r" -type "double3" -30.604652269631597 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "2C1A8280-44A4-AF8B-CDDA-04A55D33AA94";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "F8EDD3FA-4635-3177-1BE2-199E2CF3A499";
	setAttr ".t" -type "double3" -9.1257019996961457 8.3444289887369543 -34.108652520054321 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "B88E1DD9-4ED9-4D94-FBDD-26A173378F2A";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "83001311-4396-0C86-3A55-BEA442D56674";
	setAttr ".t" -type "double3" -11.666222281262513 38.371445997601946 -1.9846335679030154 ;
	setAttr ".r" -type "double3" 14.383137188892626 -6.4905529621657285 -1.0003349776607069e-16 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "548042A5-446D-FB8B-B6B5-538D886B7506";
	setAttr ".t" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "A588697E-4DAA-364B-EC78-A9BCB5E6F83A";
	setAttr ".t" -type "double3" -7.1263478381391474 6.0415986107667159 24.078625278085795 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "166A9FFE-4BF7-928C-8A80-92A4FABC51E7";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "3705A4AD-4796-4F6F-EFF1-2BA38E4D80CC";
	setAttr ".t" -type "double3" -15.474895217990181 39.660063022090782 5.0627737695142176 ;
	setAttr ".r" -type "double3" 2.4790311399805716 199.46115580749984 0 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "E42C3402-46CD-533E-4882-2BB6E0995C59";
	setAttr ".t" -type "double3" 0 0 1.3322676295501878e-15 ;
createNode nurbsCurve -n "master_ctlShape1" -p "master_ctl";
	rename -uid "72DD3397-4A21-F1C6-5933-73980246C57A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -59.364707594776718 3.3861086929248331e-16 
		50.509620852560886 -6.2945550281311894e-14 4.7886808372037549e-16 71.431390840014458 
		59.364707594776704 3.3861086929248331e-16 50.509620852560893 83.954374606846415 1.3573954437678595e-31 
		-2.9802959909633264e-14 59.364707594776704 -3.3861086929248331e-16 -50.509620852560822 
		-4.9395060351083375e-14 -4.7886808372037549e-16 -71.431390840014544 -59.364707594776718 
		-3.3861086929248331e-16 -50.509620852560822 -83.954374606846415 4.5611866855707518e-32 
		-4.3247049372630515e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "D2F7E9DF-4C81-0CF8-3F66-79B629DDE5C0";
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
createNode nurbsCurve -n "master1_ctlShape1" -p "master1_ctl";
	rename -uid "9565639E-4FD6-D022-377F-16A0F2E1C91C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -65.063454273366872 3.7111599977989078e-16 
		55.358318769767578 -6.3439036701239577e-14 5.2483728010237419e-16 78.288485194378353 
		65.063454273366872 3.7111599977989078e-16 55.35831876976755 92.013619448237066 1.5482275605201073e-31 
		-2.7249199552965011e-14 65.063454273366872 -3.7111599977989078e-16 -55.358318769767564 
		-4.8587760283351426e-14 -5.2483728010237419e-16 -78.28848519437841 -65.063454273366872 
		-3.7111599977989078e-16 -55.358318769767543 -92.013619448237066 5.604322419302867e-32 
		-4.1983861534181151e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "1C8593D8-465D-6C16-1878-DCA20C13BFB2";
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
createNode nurbsCurve -n "master2_ctlShape1" -p "master2_ctl";
	rename -uid "4E046E3C-47EA-8DC1-E4D9-CEB182C6862D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -1.0227719204348679e-13 5.4473493193598257e-16 
		84.489413676917053 14.13210008088231 5.3919031577178989e-16 83.629433269360661 25.458749334905079 
		4.4496641505999018e-16 73.771328189300903 37.538958239476528 4.2184330592022357e-16 
		69.937729932504908 48.854982207708545 3.9013268356755738e-16 64.680401178041762 59.176459624326213 
		3.5048008482721433e-16 58.106365978467942 68.293274973810099 3.0369272226089302e-16 
		50.349452732494953 76.019836186369261 2.5072305164683047e-16 41.567569824719968 82.198852757278587 
		1.9264938272681151e-16 31.939491066286386 86.704537727966738 1.3065392792942269e-16 
		21.66121637562965 98.290915048529314 7.7523863740279281e-17 12.024097243235071 99.301662794604084 
		-1.6345082220468308e-31 -8.0228339011518674e-14 98.290915048529286 -7.7523863740279281e-17 
		-12.024097243235195 86.704537727966738 -1.3065392792942269e-16 -21.661216375629706 
		82.198852757278587 -1.926493827268119e-16 -31.939491066286454 76.019836186369261 
		-2.5072305164683047e-16 -41.567569824719996 68.293274973810099 -3.0369272226089302e-16 
		-50.34945273249496 59.176459624326171 -3.5048008482721433e-16 -58.10636597846792 
		48.854982207708531 -3.9013268356755817e-16 -64.680401178041762 37.5389582394765 -4.2184330592022357e-16 
		-69.937729932504965 25.458749334905079 -4.4496641505999175e-16 -73.771328189300874 
		14.132100080882303 -5.3919031577178989e-16 -83.629433269360661 -9.8384770125704561e-14 
		-5.4473493193598257e-16 -84.489413676916953 -14.132100080882458 -5.3919031577178989e-16 
		-83.629433269360661 -25.458749334905157 -4.4496641505999175e-16 -73.771328189300874 
		-37.538958239476599 -4.2184330592022357e-16 -69.937729932504936 -48.854982207708545 
		-3.9013268356755501e-16 -64.680401178041762 -59.176459624326199 -3.5048008482721354e-16 
		-58.106365978467906 -68.293274973810043 -3.0369272226089223e-16 -50.349452732494917 
		-76.01983618636929 -2.5072305164682968e-16 -41.567569824719968 -82.19885275727853 
		-1.9264938272681112e-16 -31.939491066286426 -86.704537727966652 -1.3065392792942269e-16 
		-21.661216375629699 -98.290915048529229 -7.7523863740278887e-17 -12.024097243235172 
		-99.301662794603942 -6.3847863750537883e-32 -6.4779732603317956e-14 -98.290915048529229 
		7.7523863740279281e-17 12.024097243235071 -86.704537727966624 1.3065392792942269e-16 
		21.66121637562965 -82.198852757278502 1.9264938272681112e-16 31.939491066286358 -76.019836186369204 
		2.5072305164682968e-16 41.567569824719939 -68.293274973809929 3.0369272226089223e-16 
		50.349452732494868 -59.176459624326114 3.5048008482721354e-16 58.106365978467792 
		-48.85498220770846 3.9013268356755422e-16 64.680401178041734 -37.538958239476585 
		4.2184330592022514e-16 69.93772993250488 -25.45874933490515 4.4496641505999175e-16 
		73.771328189300817 -14.132100080882426 5.3919031577178989e-16 83.629433269360405 
		-8.2983968370313557e-14 5.4473493193598257e-16 84.489413676916755;
createNode unitConversion -n "unitConversion22";
	rename -uid "FEF1A2B8-43D2-6165-2FAF-D09B6426E995";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "CB305F6A-4D24-2B0E-AC87-B9A4E446C511";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "77006587-49C2-42D8-6462-CF8AF854CF06";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "E5BE0D9B-4EEB-7CE0-AC47-CE8B16BCEC50";
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
