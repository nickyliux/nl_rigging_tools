//Maya ASCII 2023 scene
//Name: cheetah_ctl.ma
//Last modified: Thu, Jun 12, 2025 09:03:53 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "CEF13A20-4959-D4B2-0F4D-BA92CA894332";
createNode transform -n "CHR";
	rename -uid "7481870F-483B-DD80-D820-FEA7D40A3775";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "E146F8E7-4E80-E259-8AC8-FE8E1916723F";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "9A9B698E-4263-F0C0-4597-389DC1D88499";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug" no;
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "7A3EBFA2-49EB-4C2A-FAA3-59AF6A89BAEF";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "19A92E31-4DDD-2A65-9C5D-FA9B47D5B681";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "31B99673-4378-52A3-5240-30B9CADBF8E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -41.766070458145286 -1.5568927293857663e-15 
		22.876557852247004 -5.196874994805196e-14 -2.2017788130574177e-15 32.352338375060356 
		41.766070458145286 -1.5568927293857663e-15 22.876557852247004 59.06614328893928 -6.2411437108301857e-31 
		-1.2380147765696168e-14 41.766070458145286 1.5568927293857663e-15 -22.876557852246989 
		-4.2435295811774918e-14 2.2017788130574208e-15 -32.352338375060384 -41.766070458145286 
		1.5568927293857663e-15 -22.876557852246989 -59.06614328893928 -2.0971796927175888e-31 
		-1.8469175661367812e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "B4D14F9F-42F1-20CB-A711-E980E307BEB4";
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
	rename -uid "0843426E-44A3-6C85-37F3-E4A681EEACAE";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "254D5A2A-4CD4-C126-2E1F-A6AD8C03F0D5";
	setAttr ".t" -type "double3" 0 84.542631682197936 88.009835256880748 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "1AFEFE1C-4040-D5AF-DF26-52ABF9FAADD3";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "6C10BF9F-4FCD-E007-5718-1183738D5C84";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "5F4761CA-4495-FCF0-2DFB-57ABEF5F3277";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8249572021700944 8.20376443289436 -2.824957202170097
		1.5640813762926963e-16 8.20376443289436 -2.5543387324111251
		-2.8249572021700944 8.20376443289436 -2.824957202170097
		-2.5543387324111304 8.20376443289436 0
		-2.8249572021700944 8.20376443289436 2.824957202170097
		-2.5586985781787385e-16 8.20376443289436 2.5543387324111251
		2.8249572021700944 8.20376443289436 2.824957202170097
		2.5543387324111304 8.20376443289436 0
		2.8249572021700944 8.20376443289436 -2.824957202170097
		1.5640813762926963e-16 8.20376443289436 -2.5543387324111251
		-2.8249572021700944 8.20376443289436 -2.824957202170097
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "CFE7C7B6-4B60-0B1E-4BB7-B2A89E82B5B1";
	setAttr ".t" -type "double3" -5.0209008155148086e-14 -2.5005197942710282 3.4788679034041223 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "8E988BFF-4910-A14C-3D69-999903A90F01";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "E9C76C11-40E4-6A8D-98D3-07B03508ECA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9804966598994396 -9.4114949786969078 -1.5789923929267378
		5.0553651218657446e-14 -9.4114949786969078 -3.2277680944378684
		-3.9804966598993379 -9.4114949786969078 -1.5789923929267378
		-5.6292723614104698 -21.3764342400262 5.9684827191726697
		-3.9804966598993379 -21.3764342400262 9.9489793790720622
		4.9645069637232776e-14 -21.3764342400262 11.597755080583195
		3.9804966598994396 -21.3764342400262 9.9489793790720622
		5.6292723614105729 -21.3764342400262 5.9684827191726697
		3.9804966598994396 -9.4114949786969078 -1.5789923929267378
		5.0553651218657446e-14 -9.4114949786969078 -3.2277680944378684
		-3.9804966598993379 -9.4114949786969078 -1.5789923929267378
		;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "7A64BF73-41CD-E509-3E18-BDBDFD6CF1A1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "D4908936-4824-D6B3-7DAC-738FAA1A6F1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.0932659339348847 4.0932659339348847 4.0932659339348847 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "D268F57D-4743-E42F-1A14-A08325C81E2C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "158E37B8-4FD9-4B7A-2DEB-92AFFB3D6AD8";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "FD187BB3-4C98-CF92-B475-1988B6907E9E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 16.463663402465176 120.67321748617847 118.50448888088677 ;
	setAttr ".radi" 1.7356720056740018;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "853B9EC7-4AEE-5ACB-D35A-958D2D7B44CB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.891446251564144 73.483160211188761 47.135392040379386 ;
	setAttr ".radi" 1.7356720056740018;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "3F0722F4-4331-073B-4008-1699685FBCAA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.101642031291213 0 ;
	setAttr ".radi" 1.7356720056740018;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "2EC37549-44BE-3A2D-1AB0-EF8BEDB5EE85";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.4243773623721265 36.322898091884973 -1.9524086399154599 ;
	setAttr ".radi" 1.7356720056740018;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "55D4E2C6-45A8-25C3-C0FF-15B9BCB92831";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -83.426698592370244 72.881366480942731 -83.124837083142438 ;
	setAttr ".radi" 1.7356720056740018;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "84F90A32-420F-820C-10FF-E4B3F57B29F9";
	setAttr ".t" -type "double3" 4.0491729626950104 1.7763568394002505e-14 1.2878587085651816e-14 ;
	setAttr ".r" -type "double3" -0.020161363175128399 -10.481460940434717 -0.55862942895818302 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "2615E9AA-42DE-C96F-3F00-BEB237CA2CF2";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "105CB985-4425-FB01-FDA9-68A160A66F6E";
	setAttr ".t" -type "double3" 4.0491729626950175 1.7763568394002505e-14 1.1546319456101628e-14 ;
	setAttr ".r" -type "double3" -0.020161363175206531 -10.481460940434717 -0.55862942895819279 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "417821D1-48E0-76F4-5CFB-53A5FB9A925E";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "2E3C3179-42CF-2568-825F-548C201E2836";
	setAttr ".t" -type "double3" 4.0491729626950175 1.7763568394002505e-14 1.1324274851176597e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "8348953B-41EC-61BF-8407-D5A28A56DCD2";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 1.1863096240607183e-13 1.0116324505560134e-14 -5.3671860249696741e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.5781240166464568e-15 -4.7708320221952752e-15 -9.5416640443905503e-15 ;
	setAttr ".radi" 1.7356720056740018;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "31561443-4139-65B6-A85A-298EA884BB98";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.2978480595963582 3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.34860533412704475 12.495857060192666 -1.6107564372428935 ;
	setAttr ".radi" 1.7356720056740018;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "F7290D5A-4EBD-27E0-7C38-C9835126E3AB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "5405B910-4CB3-C3E5-9D23-BE933AC2D886";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "285C005B-4FD9-A119-D38A-6783FA4D6EB8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		-1.0643165068972699e-31 8.1233927304221094 -3.1542913667517165e-15
		-1.8439726386462755e-16 8.9840225607824831 8.9840225607824831
		-2.6077711142184713e-16 8.1372580564906369e-16 8.1233927304220934
		-1.8439726386462748e-16 -8.9840225607824831 8.9840225607824884
		-1.5551246480560422e-31 -8.1233927304221094 -1.6253890546651591e-15
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "4C86D44F-4403-AE5C-CBCD-F3BE199502E1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "6363B8D0-4147-4F58-67E7-61A4A431922E";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "DA73EBC3-4654-CAE3-8B16-74AB3FBA3445";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		-1.0643165068972699e-31 8.1233927304221094 -3.1542913667517165e-15
		-1.8439726386462755e-16 8.9840225607824831 8.9840225607824831
		-2.6077711142184713e-16 8.1372580564906369e-16 8.1233927304220934
		-1.8439726386462748e-16 -8.9840225607824831 8.9840225607824884
		-1.5551246480560422e-31 -8.1233927304221094 -1.6253890546651591e-15
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "A98ABF6B-4859-364A-BE24-06967AF21CDC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "AE5083AF-47A8-22F8-9368-4A8676031560";
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
	rename -uid "DB25F372-4315-D62A-4BF5-27B9C9DEC327";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		-1.0643165068972699e-31 8.1233927304221094 -3.1542913667517165e-15
		-1.8439726386462755e-16 8.9840225607824831 8.9840225607824831
		-2.6077711142184713e-16 8.1372580564906369e-16 8.1233927304220934
		-1.8439726386462748e-16 -8.9840225607824831 8.9840225607824884
		-1.5551246480560422e-31 -8.1233927304221094 -1.6253890546651591e-15
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "4E8B4AE6-4997-1F7A-66E9-D6899CADD033";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "C95CFEF1-4A5F-26F5-A5F6-869BF4B54E8E";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "FB2ACA23-438E-641E-17D4-FF84FFC5AAC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		-1.0643165068972699e-31 8.1233927304221094 -3.1542913667517165e-15
		-1.8439726386462755e-16 8.9840225607824831 8.9840225607824831
		-2.6077711142184713e-16 8.1372580564906369e-16 8.1233927304220934
		-1.8439726386462748e-16 -8.9840225607824831 8.9840225607824884
		-1.5551246480560422e-31 -8.1233927304221094 -1.6253890546651591e-15
		1.8439726386462758e-16 -8.9840225607824831 -8.9840225607824937
		2.6077711142184689e-16 -4.9741434527641473e-16 -8.1233927304220863
		1.8439726386462748e-16 8.9840225607824831 -8.9840225607824884
		;
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "8EF33778-4F82-B2C6-CE18-589EE22C9456";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 1.0658141036401503e-14 4.7961634663806763e-14 ;
	setAttr ".r" -type "double3" -91.931085248360603 0.59035746474279749 -73.007286879010024 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "8D7F1EC4-4A89-55F2-3F6E-D49F5E2A882C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "E52EAEDC-4C86-2D94-59A8-5599FCB12411";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "89B6309B-4367-A7E7-CB85-0DACDDDFE07C";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "54F2196F-42FC-AE0D-C9DF-23B5B3131A7C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "D6F83C75-41D3-A3C3-BA90-1EA4450C2B8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4920112803912415 -17.356720056740016 -4.4920112803912469
		2.4870717263820736e-16 -17.356720056740016 -4.0616963652110432
		-4.4920112803912415 -17.356720056740016 -4.4920112803912442
		-4.0616963652110547 -17.356720056740016 -1.5771456833758582e-15
		-4.4920112803912415 -17.356720056740016 4.4920112803912415
		-4.0686290282453184e-16 -17.356720056740016 4.0616963652110467
		4.4920112803912415 -17.356720056740016 4.4920112803912442
		4.0616963652110547 -17.356720056740016 -8.1269452733257953e-16
		4.4920112803912415 -17.356720056740016 -4.4920112803912469
		2.4870717263820736e-16 -17.356720056740016 -4.0616963652110432
		-4.4920112803912415 -17.356720056740016 -4.4920112803912442
		;
	setAttr ".adot" yes;
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "1E00DDDB-42FB-FDF2-FDB1-61A1BF2501C4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 106.40633875369426 43.815283468455767 19.478836570379691 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "B6860A10-4BEC-DF00-11DA-AE9BA6520D19";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 84.526852858164588 1.4210854715202004e-14 1.8207657603852567e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 -3.180554681463516e-15 2.385416011097638e-15 ;
	setAttr ".radi" 2.6035080085110027;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "224FC58D-46EA-889B-1EB2-FEB9F79ED6C2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "724A3D6F-4287-69A7-6F67-1A9C67A81CF9";
	setAttr ".t" -type "double3" 9.2393241063441138 2.7410231904505054 -42.132758878148088 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "D3B9BBB9-412B-B884-3E6B-E694AAC5107B";
	setAttr ".t" -type "double3" 1.1833083392762269 -0.14267325602185021 3.8697831715911519 ;
	setAttr ".r" -type "double3" 124.36333370573053 -68.555555160373387 -36.30217312767391 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "254D0555-40C7-09A6-19BD-BF9B03990E00";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "9373089E-46AF-747F-B757-AEB808E0F26A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "213FD6EC-421F-74F9-D700-F3B789B30928";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.2198631932313788e-17 -4.4920112803912415 -4.4920112803912469
		1.3038855571092344e-16 -2.4870717263820736e-16 -4.0616963652110432
		9.2198631932313739e-17 4.4920112803912415 -4.4920112803912442
		-5.3215825344863495e-32 4.0616963652110547 -1.5771456833758582e-15
		-9.2198631932313776e-17 4.4920112803912415 4.4920112803912415
		-1.3038855571092357e-16 4.0686290282453184e-16 4.0616963652110467
		-9.2198631932313739e-17 -4.4920112803912415 4.4920112803912442
		-7.7756232402802108e-32 -4.0616963652110547 -8.1269452733257953e-16
		9.2198631932313788e-17 -4.4920112803912415 -4.4920112803912469
		1.3038855571092344e-16 -2.4870717263820736e-16 -4.0616963652110432
		9.2198631932313739e-17 4.4920112803912415 -4.4920112803912442
		;
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "44741112-4F31-DBA7-AF3B-6896B06AAD98";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.2978480595963688 7.1054273576010019e-15 2.3980817331903381e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999944 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93077249764377046 0.3017927097766831 -0.20635822725450823 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "5F14FE7A-44B8-9156-B28B-4D991B301DD5";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "E9CAE2C2-4CE8-8683-A4C9-07BB1CA9C6BF";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1 ;
createNode ikHandle -n "lfLegQd0_toe01_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "504730C5-42B6-A7BB-BABB-00B1DC879106";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.14799494840436012 2.908384543110472 -0.15054423912530712 ;
	setAttr ".r" -type "double3" 1.2588337848256115 9.8015477227765402 5.8191809876386209 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93077249764377112 0.30179270977668332 -0.20635822725450828 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe02_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "F0226BC4-4EDA-3D2F-6956-D2A823F390B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1261407488728139 0.906647384987739 -0.8320376648774106 ;
	setAttr ".r" -type "double3" 0.19618122890604386 16.845319232721614 0.90378530833782234 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93077249764377112 0.30179270977668332 -0.20635822725450828 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe03_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "0AB75FAC-4E93-C9DC-7D31-BDBCC99CB01D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.95618959896613376 -0.90366310654815862 -0.73817928403180799 ;
	setAttr ".r" -type "double3" 0.079202601219601654 17.992486867606857 0.36423804084906469 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93077249764377112 0.30179270977668332 -0.20635822725450828 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe04_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "750FE1A9-4C31-C16E-739B-CCBD85C6E3AB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45462421913420314 -2.7873787053358079 -0.10544859525568384 ;
	setAttr ".r" -type "double3" -1.3348035966504201 0.42358008029260263 -6.0425255547313057 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93077249764377112 0.30179270977668332 -0.20635822725450828 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "BE2C1A60-4BAD-796C-E632-3FA716FE1677";
	setAttr ".t" -type "double3" -0.14799494840435301 2.908384543110472 -0.15054423912530623 ;
	setAttr ".r" -type "double3" 4.7440372240405209 -37.395996641022094 14.392371809241645 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs1" -p "lfLegQd0_toe01_3_ikc_ofs";
	rename -uid "0F69C0A1-4EFF-8EE5-F7D9-1FA6F5A8E8A3";
	setAttr ".t" -type "double3" -5.1349790197718903e-08 1.5810943665428567e-08 5.4538364935297068e-08 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe01_3_ikc" -p "lfLegQd0_toe01_3_ikc_ofs1";
	rename -uid "1F150256-4447-50F4-5128-2BB612736D0A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_3_ikcShape1" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "053E0C0A-4820-59A7-351E-1BB16DE0E8F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-3.4298457515743643e-15 -8.8817841970012523e-16 -3.0716981806534144e-17
		-3.4298457515743643e-15 -8.8817841970012523e-16 -0.93004412923087421
		0.10739942958151275 -8.8817841970012523e-16 -0.93004412923087421
		0.10739942958151275 -8.8817841970012523e-16 -1.1448429883939071
		-0.1073994295815196 -8.8817841970012523e-16 -1.1448429883939071
		-0.1073994295815196 -8.8817841970012523e-16 -0.93004412923087421
		-3.4298457515743643e-15 -8.8817841970012523e-16 -0.93004412923087421
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe01_3_1_ikj_ikh" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "19E601AA-4C41-C05F-7759-69AAFD46B0E7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2819326311180106 -0.68493681779006366 -1.784283128214124 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999922 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.65052155585287197 -0.0018515620778314168 -0.75948553448280376 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "E3F6183B-40F3-FE9B-7320-DDAD243D6296";
	setAttr ".t" -type "double3" 1.126140748872821 0.906647384987739 -0.83203766487740971 ;
	setAttr ".r" -type "double3" 2.0361965240594144 -38.172461712176549 5.9819943613727267 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs1" -p "lfLegQd0_toe02_3_ikc_ofs";
	rename -uid "9A570345-458F-4DBE-4894-6B92D7548155";
	setAttr ".t" -type "double3" -4.2122060506244452e-08 8.3962845565110911e-09 6.0076118302276882e-08 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe02_3_ikc" -p "lfLegQd0_toe02_3_ikc_ofs1";
	rename -uid "97235464-491C-F7B4-1E99-70B4FAD73FB2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_3_ikcShape1" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "687B10B4-4EF6-8986-B765-0B85D9949FDF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-3.4298457515743643e-15 3.7984495332527742e-15 7.2282952848271381e-15
		-3.4298457515743643e-15 3.7984495332527742e-15 -0.93004412923086699
		0.10739942958151275 3.7984495332527742e-15 -0.93004412923086699
		0.10739942958151275 3.7984495332527742e-15 -1.1448429883938998
		-0.1073994295815196 3.7984495332527742e-15 -1.1448429883938998
		-0.1073994295815196 3.7984495332527742e-15 -0.93004412923086699
		-3.4298457515743643e-15 3.7984495332527742e-15 -0.93004412923086699
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe02_3_1_ikj_ikh" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "4E9A7F6E-419D-20B7-D208-93B5E213EA48";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7395920112473036 -0.59576380576196186 -1.9515993259893349 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62493615885810916 0.17623729149478776 -0.76052298744893532 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "4574DE17-42E9-CA59-BA91-CF9C94087243";
	setAttr ".t" -type "double3" 0.95618959896613376 -0.90366310654815862 -0.73817928403180799 ;
	setAttr ".r" -type "double3" -2.1321080104958092 -32.100877529388001 -7.0430200492224238 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs1" -p "lfLegQd0_toe03_3_ikc_ofs";
	rename -uid "7490B31E-4C77-2E86-82F8-64BC6CCA3F38";
	setAttr ".t" -type "double3" -4.6574694323453514e-08 -1.1072117445110052e-08 5.5596554915382512e-08 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe03_3_ikc" -p "lfLegQd0_toe03_3_ikc_ofs1";
	rename -uid "16A215DF-42FA-1218-C28E-E989730C562D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_3_ikcShape1" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "FF16AFEC-4D1A-DDB6-E2AE-F4B049A7431F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		3.4298457515743643e-15 0 0
		3.4298457515743643e-15 0 -0.93004412923087421
		0.1073994295815196 0 -0.93004412923087421
		0.1073994295815196 0 -1.1448429883939071
		-0.10739942958151275 0 -1.1448429883939071
		-0.10739942958151275 0 -0.93004412923087421
		3.4298457515743643e-15 0 -0.93004412923087421
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe03_3_1_ikj_ikh" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "F9735345-431B-D692-05F0-2A8E7996CC75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1044582939046066 0.16768958982495974 -1.7642269172898111 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.64151280876184469 0.43739030465421141 -0.63019920468768009 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "5ABFC31F-4962-42E8-A858-65A131DB3435";
	setAttr ".t" -type "double3" -0.45462421913419604 -2.7873787053358079 -0.10544859525568384 ;
	setAttr ".r" -type "double3" -0.35516173248732513 -42.398582852817476 -0.94359972335274933 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs1" -p "lfLegQd0_toe04_3_ikc_ofs";
	rename -uid "E4EA4726-4A06-6528-8751-6FB2CC96D7D8";
	setAttr ".t" -type "double3" -5.2698656105576447e-08 6.10809536283341e-09 4.8879044811656058e-08 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "lfLegQd0_toe04_3_ikc" -p "lfLegQd0_toe04_3_ikc_ofs1";
	rename -uid "5C687D28-45DD-7077-0F20-E7904E17DF98";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_3_ikcShape1" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "264BEACB-48C5-C051-5F5B-A2B926B0E86F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 7.3511632120532743e-15 7.3511632120532743e-15
		0 7.3511632120532743e-15 -0.93004412923086688
		0.10739942958151617 7.3511632120532743e-15 -0.93004412923086688
		0.10739942958151617 7.3511632120532743e-15 -1.1448429883938998
		-0.10739942958151617 7.3511632120532743e-15 -1.1448429883938998
		-0.10739942958151617 7.3511632120532743e-15 -0.93004412923086688
		0 7.3511632120532743e-15 -0.93004412923086688
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe04_3_1_ikj_ikh" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "A4644877-4D0C-3B36-395E-3BB081DE2F67";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.003580080514503 -0.5416790684434396 -2.1266114732121757 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.5444419695713042 0.32188747406513335 -0.77457820509570718 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "A2C74EB1-4E58-9E23-BCB1-A1899A82FEF4";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "4B951E12-471E-4516-1BF0-2DB15E4925EB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 16.463663402465176 120.67321748617847 118.50448888088677 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "3DBE5623-4291-9359-E7E8-DE9E928A1DE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.595093563527808 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -8.4124969330302615e-16 -6.1566493183999537e-06 1.4844630298692551e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.891446251564144 73.483160211188761 47.135392040379386 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "37BF16DA-4176-E975-5B60-D0B5D5AEF081";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 29.217859088569089 -8.8817841970012523e-15 0 ;
	setAttr ".r" -type "double3" 6.0135426357625924e-21 1.0592143680392446e-05 -2.5718535631311835e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.101642031291213 0 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "DE8F5BDD-45F7-66CE-3E7F-499BE3522D0F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 37.546108196548921 -2.1316282072803006e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 5.1202655268219049e-07 -5.2071852856180854e-08 -9.5273301130080175e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.4243773623721265 36.322898091884973 -1.9524086399154599 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "87365D81-4E4E-4C19-C43C-5786A01E6E65";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.178326986866221 -1.6452964496953157 -3.0103177405399322 ;
	setAttr ".r" -type "double3" 1.1078637324215979e-06 2.9160937075965845e-21 2.8553418105777421e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -83.426698592370244 72.881366480942731 -83.124837083142438 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "E7A1C072-4CCC-679C-A76A-7C852522937D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0491729626949962 1.0658141036401503e-14 1.0436096431476471e-14 ;
	setAttr ".r" -type "double3" 1.1455507863976327e-06 7.6820133243578199e-22 1.9205034126848627e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.02016136317520922 -10.481460940434721 -0.5586294289581939 ;
	setAttr ".radi" 2.6035080085110027;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "755642BC-4E4D-37EC-6073-95B5EC7A8A71";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.2978480595963582 3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.34860533412704475 12.495857060192666 -1.6107564372428935 ;
	setAttr ".radi" 2.6035080085110027;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "A09F5616-4B92-08BD-2CD3-D5B37F3042CD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "EA7B06D5-4886-27B1-D67F-8489ECBA6024";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "A0215958-42B1-4067-7DB5-598B3B748F2E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "6A48D05D-42D2-9D4B-4117-C594BBF21F74";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "B70E4B8D-458D-4AFF-9C13-209BE313D3FE";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 14.595093563527811 -3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 95.452406376904932 45.547004619847797 25.946244006640349 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "0A4BD256-4B42-D03F-90F2-CC8073E16D7E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 60.092483520507812 4.9737991503207013e-14 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 -3.180554681463516e-15 2.385416011097638e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "205BA620-46A9-73DF-DAC6-E591FCB58E8C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "EBF630C1-45B5-1988-ACF6-3FA1281CC264";
	setAttr ".t" -type "double3" 19.844307759314098 -39.278557047563872 -4.5289855634018732 ;
	setAttr ".r" -type "double3" 1.2692178205204692 263.57778415425315 76.13477068382187 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "0BFE461A-49C9-E520-8A48-D3841C07D3D3";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "72974D9B-4D6F-2AEF-1B71-AF9B0EF669C2";
	setAttr ".t" -type "double3" 7.5940276919546115 18.919352524761752 -45.143077266866385 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "66E5167F-4B56-C7F0-964F-2CB2B8A3A86A";
	setAttr ".t" -type "double3" 1.6549242651976179 18.199352524761753 -0.54755993556199911 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "EF11F55A-4525-F4BA-8917-E8BB77D6DF7C";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "9F3B2D0F-458A-1098-32C0-0D8E8D438C7D";
	setAttr ".t" -type "double3" 2.9672751042045711 1.3322676295501878e-15 -11.216220509488458 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "75895E04-4796-BF08-A31A-E292733CB9F6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "FD3C2F67-43E0-46AE-C5DA-0DBDAABD1E61";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "4BCAD773-4B9C-F4FE-A02F-E59A3BA9BA21";
	setAttr ".t" -type "double3" 2.8881735156039596 -6.6613381477509392e-16 5.3248611863386301 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "2FFEEE5C-474E-C650-3537-0E995D4CC3BC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "37EC4722-4B7D-6681-FD12-E085CE539B2F";
	setAttr ".t" -type "double3" -8.632876311326811 -1.1102230246251565e-16 0.83342208357623804 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "CC7EBCEF-442A-69AF-6162-718AD7232BBB";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "0AC3136F-400B-5860-AC22-FDB6EB37E28C";
	setAttr ".t" -type "double3" 3.9511081799863845 -1.8783499344285977 -1.2746043851738946 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "AC434FC8-43E6-7E8A-D1CD-B98B6D2B0B74";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "1AC0012C-438E-2E97-669A-0EA9015B66B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		5.3750127792097105e-17 -7.8005538077829257 -4.7449125658415232e-16
		5.191863500239839e-17 -7.8304644610331708 -0.2271929574789523
		4.6548975714420113e-17 -7.9181576850569257 -0.43890307580883686
		3.8007077114687112e-17 -8.0576574185121235 -0.62070267882729391
		2.6875063896048552e-17 -8.239456918076467 -0.76020248125190049
		1.3911555973425633e-17 -8.4511670708910565 -0.8478956363062462
		-1.6459668272537142e-32 -8.6783600283700082 -0.87780615161767372
		-1.3911555973425633e-17 -8.9055529858489599 -0.8478956363062462
		-2.6875063896048552e-17 -9.1172631386635494 -0.76020248125190049
		-3.8007077114687112e-17 -9.2990626382278929 -0.62070267882729391
		-4.6548975714420113e-17 -9.4385629234383632 -0.43890307580883686
		-5.191863500239839e-17 -9.5262555957068464 -0.2271929574789523
		-5.3750127792097105e-17 -9.5561662489570907 -2.5938460210538687e-16
		-5.191863500239839e-17 -9.5262555957068464 0.2271929574789523
		-4.6548975714420113e-17 -9.4385629234383632 0.43890307580883686
		-3.8007077114687112e-17 -9.2990626382278929 0.62070267882729391
		-2.6875063896048552e-17 -9.1172631386635494 0.76020248125190049
		-1.3911555973425633e-17 -8.9055529858489599 0.8478956363062462
		4.0214103530190421e-32 -8.6783600283700082 0.87780615161767372
		1.3911555973425633e-17 -8.4511670708910565 0.8478956363062462
		2.6875063896048552e-17 -8.239456918076467 0.76020248125190049
		3.8007077114687112e-17 -8.0576574185121235 0.62070267882729391
		4.6548975714420113e-17 -7.9181576850569257 0.43890307580883686
		5.191863500239839e-17 -7.8304644610331708 0.2271929574789523
		5.3750127792097105e-17 -7.8005538077829257 -4.7449125658415232e-16
		0 0 0
		;
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "1827C614-4F6B-F399-D5CD-18B288FBB76E";
	setAttr ".t" -type "double3" -1.1833083039704011 -0.14267560346693076 3.8697838197695518 ;
	setAttr ".r" -type "double3" 0.0686015027388472 8.5576216379384924 -89.538990445608817 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "EBC1EA23-47A5-9C56-244E-F18F54194D60";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -8.5578945551496286 7.9513867036587909e-16 89.544123106120722 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "70ABD1CF-4E8B-8352-7393-35854CB362C3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "806D0DF0-40A3-A614-99EB-379D0B8CC2D5";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "B4FB0B78-405D-034B-4399-6CBE793464B3";
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
		5.1812412359253335 -8.6783600283700082 0
		4.8106544383557335 -6.6857218021823535 0
		3.681915702257216 -4.9964443261127922 0
		1.9926382261876552 -3.8677055900142747 0
		0 -3.497240289483857 0
		-1.9926382261876552 -3.8677055900142747 0
		-3.681915702257216 -4.9964443261127922 0
		-4.8106544383557335 -6.6857218021823535 0
		-5.1812412359253335 -8.6783602738533876 0
		-4.8106544383557335 -10.670998254557663 0
		-3.681915702257216 -12.360275730627224 0
		-1.9926382261876552 -13.489014466725742 0
		2.0690806918971254e-07 -13.859479767256159 -0.035230670018864187
		1.9926382261876552 -13.489014466725742 0
		3.681915702257216 -12.360275730627224 0
		4.8106544383557335 -10.670998254557663 0
		5.1812412359253335 -8.6783600283700082 0
		4.7868410186760206 -8.6648774672185187 -1.9827310104783402
		3.6636911463798851 -8.6534473034797745 -3.6636113054684225
		1.9827761379500364 -8.6458099301699018 -4.7867368783567219
		2.0690806918971254e-07 -8.6431279698135537 -5.1811266815741055
		-1.9827761379500364 -8.6458099301699018 -4.7867368783567219
		-3.6636911463798851 -8.6534473034797745 -3.6636113054684225
		-4.7868410186760206 -8.6648774672185187 -1.9827310104783402
		-5.1812412359253335 -8.6783602738533876 0
		-4.7868410186760206 -8.6918430755096541 1.982724067790387
		-3.6636911463798851 -8.7032732392483982 3.6636078341244454
		-1.9827761379500364 -8.7109106125582727 4.7867299356687694
		2.0690806918971254e-07 -8.7135924340608604 5.1811197388861512
		1.9827761379500364 -8.7109106125582727 4.7867299356687694
		3.6636911463798851 -8.7032732392483982 3.6636078341244454
		4.7868410186760206 -8.6918430755096541 1.982724067790387
		5.1812412359253335 -8.6783600283700082 0
		4.7868410186760206 -8.6648774672185187 -1.9827310104783402
		3.6636911463798851 -8.6534473034797745 -3.6636113054684225
		1.9827761379500364 -8.6458099301699018 -4.7867368783567219
		2.0690806918971254e-07 -8.6431279698135537 -5.1811266815741055
		2.0690806918971254e-07 -6.6630816967667421 -4.7732507070074961
		2.0690806918971254e-07 -4.9898418298692331 -3.638697469748116
		2.0690806918971254e-07 -3.8781473926959906 -1.9501802180094379
		0 -3.497240289483857 0
		2.0690806918971254e-07 -3.9051127927064879 2.0152783316032661
		2.0690806918971254e-07 -5.0396660299658693 3.6885147271567993
		2.0690806918971254e-07 -6.7281798103605706 4.8002126356740176
		2.0690806918971254e-07 -8.7135924340608604 5.1811197388861512
		2.0690806918971254e-07 -10.693638359973274 4.7732437643195436
		2.0690806918971254e-07 -12.366878226870783 3.6386905270601626
		2.0690806918971254e-07 -13.478572664044027 1.9501732753214844
		2.0690806918971254e-07 -13.859479767256159 -0.035230670018864187
		2.0690806918971254e-07 -13.451607264033528 -2.0152852742912195
		2.0690806918971254e-07 -12.317054026774148 -3.6885216698447518
		2.0690806918971254e-07 -10.628540246379446 -4.800219578361971
		2.0690806918971254e-07 -8.6431279698135537 -5.1811266815741055
		;
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "9EEDD064-4741-3A2A-1A07-D4A4DAAB1D3D";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "07750504-4FD9-0F7F-8366-DFA343ABFCE0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.1974423109204508e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "3DAF2F65-42F2-4364-6E52-F194C3EE7FD5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6452964496953175 -16.178326986866253 3.0103177405399535 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "403952C1-4F09-D3F8-3324-BE9E1F8ECFC5";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "42D6A84E-49CE-D2B5-7B18-A8828F95C16F";
	setAttr ".t" -type "double3" -1.6452964496953175 -16.17832698686626 3.0103177405399535 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "A6AC73C0-4BC2-2563-8CF6-87ABBDDC9F50";
	setAttr ".t" -type "double3" -1.6452965031759996 -16.178325596988753 3.0103180794090605 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "62404A89-46F1-1728-D53B-8094D13322D5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.72983098530673729 -28.678720674021363 33.676573929854456 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "462B57DF-4EA9-E967-37F1-3A9E93AB528A";
	setAttr ".t" -type "double3" 3.9511081799863845 -1.8783499344285977 -1.2746043851738946 ;
	setAttr ".r" -type "double3" 124.3633337057305 68.555555160373402 36.302173127674052 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "81BDF8A0-4BD4-38C2-ED4C-65B7CE80F8F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.0658141036401503e-14 2.6645352591003757e-14 ;
	setAttr ".r" -type "double3" -179.87615042332339 -10.480756562889459 -0.57183791709836285 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93077249764377079 -0.3017927097766831 0.20635822725450809 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "5244B9B5-4D9C-967A-75F1-8A800FAF7CA1";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 1.4210854715202004e-14 5.0626169922907138e-14 ;
	setAttr ".r" -type "double3" -179.99999999999986 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "215BE5F8-4EDA-0C1C-58F8-E8B8AA578E6C";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "09489198-43D6-BFF5-5EC5-13A6A940F406";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675539434
		-0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0 0.53697352675539434 0
		-0.53697352675539434 0 0
		0 -0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 -0.53697352675539434 0
		0 0 -0.53697352675539434
		;
createNode nurbsCurve -n "lfLegQd0_outRollG_ctlShape1" -p "lfLegQd0_outRollG_ctl";
	rename -uid "E85591D6-4200-239F-CC8D-DA8F1BDD23EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675539434
		-0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0 0.53697352675539434 0
		-0.53697352675539434 0 0
		0 -0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 -0.53697352675539434 0
		0 0 -0.53697352675539434
		;
createNode nurbsCurve -n "lfLegQd0_toeRollG_ctlShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "0D1E38F6-49DD-5654-9856-5B8AEE611DB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675539434
		-0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0 0.53697352675539434 0
		-0.53697352675539434 0 0
		0 -0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 -0.53697352675539434 0
		0 0 -0.53697352675539434
		;
createNode nurbsCurve -n "lfLegQd0_heelRollG_ctlShape1" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "2764AD30-4C5F-2660-FD94-ED80543E22BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675539434
		-0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 -0.53697352675539434
		0 0.53697352675539434 0
		-0.53697352675539434 0 0
		0 -0.53697352675539434 0
		0.53697352675539434 0 0
		0 0 0.53697352675539434
		0 -0.53697352675539434 0
		0 0 -0.53697352675539434
		;
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_IK";
	rename -uid "EEAC3031-4E88-FAB1-7ABF-0FBB3941D439";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "4CDBF7BF-420A-8778-C860-F2B4158A3507";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.4253115853553737 49.152375116515231 -22.954774065882091
		10.568764851765982 48.58215997254878 2.7578734959723201
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "6325810C-4AC5-04A7-1655-19A1950CBE1E";
	setAttr ".t" -type "double3" 9.2393241416499325 2.7410255378955277 -42.132759526326453 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "A34E8F18-4A93-C03B-AF7E-06BA726A6DDF";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "F923342E-4C4A-181C-08A4-9F8DFD98C08C";
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
	rename -uid "417F7BF0-49BC-F64A-3FC1-D98B27475E85";
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
		6.5087700212775008 -2.7410255378955259 6.5087700212775079
		6.3837058303987941 -2.7410255378955259 7.7785680606574577
		6.0133194044813356 -2.7410255378955259 8.9995684734949801
		5.4118444861580333 -2.7410255378955259 10.124848898669651
		4.6023954192290306 -2.7410255378955264 11.111165440506536
		3.6160788773921424 -2.7410255378955264 11.920614507435543
		2.4907984522174722 -2.7410255378955264 12.522089425758843
		1.2697980393799493 -2.7410255378955264 12.892475851676304
		-7.5985653562780008e-16 -2.7410255378955264 13.017540042555009
		-1.2697980393799506 -2.7410255378955264 12.892475851676304
		-2.490798452217474 -2.7410255378955264 12.522089425758843
		-3.6160788773921451 -2.7410255378955264 11.920614507435543
		-4.6023954192290342 -2.7410255378955264 11.111165440506539
		-5.4118444861580368 -2.7410255378955259 10.124848898669653
		-6.0133194044813392 -2.7410255378955259 8.9995684734949801
		-6.3837058303987986 -2.7410255378955259 7.7785680606574568
		-6.5087700212775053 -2.7410255378955259 6.5087700212775053
		-6.383705792012579 -0.7919039870582063 6.508770021277507
		-6.0133193754155663 1.1060029607474298 6.508770021277507
		-5.4118446091251258 2.7494743344604 6.508770021277507
		-4.6023954180529776 4.0572139361352857 6.508770021277507
		-3.6160787988160834 5.0419847539917928 6.508770021277507
		-2.4907983729158225 5.6434595202822333 6.508770021277507
		-1.269798011457373 6.0138459368792461 6.508770021277507
		3.9854721880933895e-16 6.1389101661441732 6.508770021277507
		1.269798011457373 6.0138459368792461 6.508770021277507
		2.4907983729158225 5.6434595202822333 6.508770021277507
		3.6160787988160834 5.0419847539917928 6.508770021277507
		4.6023954180529776 4.0572139361352857 6.508770021277507
		5.4118446091251258 2.7494743344604 6.508770021277507
		6.0133193754155663 1.1060029607474298 6.508770021277507
		6.383705792012579 -0.7919039870582063 6.508770021277507
		6.508770021277507 -2.7410255378955259 6.508770021277507
		6.508770021277507 -2.7410255378955277 -6.1182438200008553
		6.508770021277507 -2.3504993366188756 -6.508770021277507
		6.383705792012579 -0.7919039870582063 -6.508770021277507
		6.0133193754155663 1.1060029607474298 -6.508770021277507
		5.4118446091251258 2.7494743344604 -6.508770021277507
		4.6023954180529776 4.0572139361352857 -6.508770021277507
		3.6160787988160834 5.0419847539917928 -6.508770021277507
		2.4907983729158225 5.6434595202822333 -6.508770021277507
		1.269798011457373 6.0138459368792461 -6.508770021277507
		3.9854721880933895e-16 6.1389101661441732 -6.508770021277507
		-1.269798011457373 6.0138459368792461 -6.508770021277507
		-2.4907983729158225 5.6434595202822333 -6.508770021277507
		-3.6160787988160834 5.0419847539917928 -6.508770021277507
		-4.6023954180529776 4.0572139361352857 -6.508770021277507
		-5.4118446091251258 2.7494743344604 -6.508770021277507
		-6.0133193754155663 1.1060029607474298 -6.508770021277507
		-6.383705792012579 -0.7919039870582063 -6.508770021277507
		-6.508770021277507 -2.3504993366188756 -6.508770021277507
		-6.508770021277507 -2.7410255378955251 -6.1182438200008553
		-6.508770021277507 -2.7410255378955259 6.508770021277507
		;
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "52DCB5D8-4DCD-3967-F86A-8ABDBF502D89";
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
	rename -uid "1EF4067A-4F1D-8FEB-1DF5-29BE5CE53374";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.3017540042554998 0.88799359215246909 
		-0.6508770053541344 -1.2767411660797583 0.88799359215246909 -0.90483661323012399 
		-1.2026638808962664 0.88799359215246909 -1.1490366957976281 -1.0823688972316061 0.88799359215246909 
		-1.3740927808325623 -0.92047908384580612 0.88799359215246909 -1.5713560891999396 
		-0.7232157754784283 0.88799359215246909 -1.7332459025857414 -0.4981596904434944 0.88799359215246909 
		-1.8535408862503999 -0.25395960787598981 0.88799359215246909 -1.9276181714338936 
		1.5197130712556002e-16 0.88799359215246909 -1.9526310096096342 0.25395960787599003 
		0.88799359215246909 -1.9276181714338936 0.49815969044349462 0.88799359215246909 -1.8535408862503999 
		0.72321577547842875 0.88799359215246909 -1.7332459025857414 0.92047908384580657 0.88799359215246909 
		-1.5713560891999396 1.082368897231607 0.88799359215246909 -1.3740927808325623 1.2026638808962673 
		0.88799359215246909 -1.1490366957976281 1.2767411660797592 0.88799359215246909 -0.90483661323012399 
		1.3017540042555007 0.88799359215246909 -0.65087700535413351 1.2767411584025155 0.49816928198500532 
		-0.65087700535413351 1.2026638750831129 0.11858789242387813 -0.65087700535413351 
		1.082368921825025 -0.21010638231871592 -0.65087700535413351 0.92047908361059516 -0.47165430265369279 
		-0.65087700535413351 0.7232157597632165 -0.66860846622499448 -0.65087700535413351 
		0.49815967458316446 -0.7889034194830824 -0.65087700535413351 0.25395960229147452 
		-0.86298070280248496 -0.65087700535413351 -7.970944376186779e-17 -0.8879935486554702 
		-0.65087700535413351 -0.25395960229147452 -0.86298070280248496 -0.65087700535413351 
		-0.49815967458316446 -0.7889034194830824 -0.65087700535413351 -0.7232157597632165 
		-0.66860846622499448 -0.65087700535413351 -0.92047908361059516 -0.47165430265369279 
		-0.65087700535413351 -1.082368921825025 -0.21010638231871592 -0.65087700535413351 
		-1.2026638750831129 0.11858789242387813 -0.65087700535413351 -1.2767411584025155 
		0.49816928198500532 -0.65087700535413351 -1.3017540042555007 0.88799359215246909 
		-0.65087700535413351 -1.3017540042555007 0.88799359215246954 1.8745257629015377 -1.3017540042555007 
		0.80988835189713915 1.9526310031568679 -1.2767411584025155 0.49816928198500532 1.9526310031568679 
		-1.2026638750831129 0.11858789242387813 1.9526310031568679 -1.082368921825025 -0.21010638231871592 
		1.9526310031568679 -0.92047908361059516 -0.47165430265369279 1.9526310031568679 -0.7232157597632165 
		-0.66860846622499448 1.9526310031568679 -0.49815967458316446 -0.7889034194830824 
		1.9526310031568679 -0.25395960229147452 -0.86298070280248496 1.9526310031568679 -7.970944376186779e-17 
		-0.8879935486554702 1.9526310031568679 0.25395960229147452 -0.86298070280248496 1.9526310031568679 
		0.49815967458316446 -0.7889034194830824 1.9526310031568679 0.7232157597632165 -0.66860846622499448 
		1.9526310031568679 0.92047908361059516 -0.47165430265369279 1.9526310031568679 1.082368921825025 
		-0.21010638231871592 1.9526310031568679 1.2026638750831129 0.11858789242387813 1.9526310031568679 
		1.2767411584025155 0.49816928198500532 1.9526310031568679 1.3017540042555007 0.80988835189713915 
		1.9526310031568679 1.3017540042555007 0.88799359215246909 1.8745257629015377 1.3017540042555007 
		0.88799359215246909 -0.65087700535413351;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "D8AD4787-437C-0715-19D7-3B83C99D0239";
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
		6.5087700212775008 -2.7410255378955259 6.5087700212775079
		6.3837058303987941 -2.7410255378955259 7.7785680606574577
		6.0133194044813356 -2.7410255378955259 8.9995684734949801
		5.4118444861580333 -2.7410255378955259 10.124848898669651
		4.6023954192290306 -2.7410255378955264 11.111165440506536
		3.6160788773921424 -2.7410255378955264 11.920614507435543
		2.4907984522174722 -2.7410255378955264 12.522089425758843
		1.2697980393799493 -2.7410255378955264 12.892475851676304
		-7.5985653562780008e-16 -2.7410255378955264 13.017540042555009
		-1.2697980393799506 -2.7410255378955264 12.892475851676304
		-2.490798452217474 -2.7410255378955264 12.522089425758843
		-3.6160788773921451 -2.7410255378955264 11.920614507435543
		-4.6023954192290342 -2.7410255378955264 11.111165440506539
		-5.4118444861580368 -2.7410255378955259 10.124848898669653
		-6.0133194044813392 -2.7410255378955259 8.9995684734949801
		-6.3837058303987986 -2.7410255378955259 7.7785680606574568
		-6.5087700212775053 -2.7410255378955259 6.5087700212775053
		-6.383705792012579 -0.7919039870582063 6.508770021277507
		-6.0133193754155663 1.1060029607474298 6.508770021277507
		-5.4118446091251258 2.7494743344604 6.508770021277507
		-4.6023954180529776 4.0572139361352857 6.508770021277507
		-3.6160787988160834 5.0419847539917928 6.508770021277507
		-2.4907983729158225 5.6434595202822333 6.508770021277507
		-1.269798011457373 6.0138459368792461 6.508770021277507
		3.9854721880933895e-16 6.1389101661441732 6.508770021277507
		1.269798011457373 6.0138459368792461 6.508770021277507
		2.4907983729158225 5.6434595202822333 6.508770021277507
		3.6160787988160834 5.0419847539917928 6.508770021277507
		4.6023954180529776 4.0572139361352857 6.508770021277507
		5.4118446091251258 2.7494743344604 6.508770021277507
		6.0133193754155663 1.1060029607474298 6.508770021277507
		6.383705792012579 -0.7919039870582063 6.508770021277507
		6.508770021277507 -2.7410255378955259 6.508770021277507
		6.508770021277507 -2.7410255378955277 -6.1182438200008553
		6.508770021277507 -2.3504993366188756 -6.508770021277507
		6.383705792012579 -0.7919039870582063 -6.508770021277507
		6.0133193754155663 1.1060029607474298 -6.508770021277507
		5.4118446091251258 2.7494743344604 -6.508770021277507
		4.6023954180529776 4.0572139361352857 -6.508770021277507
		3.6160787988160834 5.0419847539917928 -6.508770021277507
		2.4907983729158225 5.6434595202822333 -6.508770021277507
		1.269798011457373 6.0138459368792461 -6.508770021277507
		3.9854721880933895e-16 6.1389101661441732 -6.508770021277507
		-1.269798011457373 6.0138459368792461 -6.508770021277507
		-2.4907983729158225 5.6434595202822333 -6.508770021277507
		-3.6160787988160834 5.0419847539917928 -6.508770021277507
		-4.6023954180529776 4.0572139361352857 -6.508770021277507
		-5.4118446091251258 2.7494743344604 -6.508770021277507
		-6.0133193754155663 1.1060029607474298 -6.508770021277507
		-6.383705792012579 -0.7919039870582063 -6.508770021277507
		-6.508770021277507 -2.3504993366188756 -6.508770021277507
		-6.508770021277507 -2.7410255378955251 -6.1182438200008553
		-6.508770021277507 -2.7410255378955259 6.508770021277507
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd0_smart_ctl_ofs" -p "lfLegQd0_ikc_gmb";
	rename -uid "84524B1F-45EF-9D3B-67DC-E39F68471182";
	setAttr ".t" -type "double3" 2.9769029197068679 -2.0210255378955289 8.7534627045105253 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "9F4F298D-4B7C-03DC-4C65-BC9AB7F623C2";
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
	rename -uid "30161FB9-4F62-EE01-0FF1-02994393FF9E";
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
		2.9946741869274942 6.146575462154253e-17 -2.9946741869274978
		1.6580478175880491e-16 8.6925703807282283e-17 -2.7077975768073621
		-2.9946741869274942 6.1465754621542493e-17 -2.994674186927496
		-2.7077975768073697 -3.5477216896575662e-32 -1.0514304555839055e-15
		-2.9946741869274942 -6.1465754621542505e-17 2.9946741869274942
		-2.7124193521635456e-16 -8.6925703807282369e-17 2.7077975768073643
		2.9946741869274942 -6.1465754621542493e-17 2.994674186927496
		2.7077975768073697 -5.1837488268534738e-32 -5.4179635155505302e-16
		2.9946741869274942 6.146575462154253e-17 -2.9946741869274978
		1.6580478175880491e-16 8.6925703807282283e-17 -2.7077975768073621
		-2.9946741869274942 6.1465754621542493e-17 -2.994674186927496
		;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "4CE4DECB-4E17-2B58-8E82-D2A2A2F2095F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "7418614C-4250-7CC0-0769-A8B34260276B";
	setAttr ".t" -type "double3" 10.568764851765982 48.582159972548787 2.7578734959723206 ;
	setAttr ".r" -type "double3" 1.2691569649236389 2.5462918157219709 6.891207655302465e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "4EF94FDD-4E33-59E4-F82C-F8B11E398D78";
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "DC76AAD8-4509-E935-82BF-E3AC830E2A4A";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -7.1054273576010019e-15 1.1102230246251565e-14 ;
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
	rename -uid "20731A5D-47B9-519D-D783-77AA814B3C83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.1478941070215773
		-2.1478941070215773 0 0
		0 0 -2.1478941070215773
		2.1478941070215773 0 0
		0 0 2.1478941070215773
		0 2.1478941070215773 0
		2.1478941070215773 0 0
		0 0 -2.1478941070215773
		0 2.1478941070215773 0
		-2.1478941070215773 0 0
		0 -2.1478941070215773 0
		2.1478941070215773 0 0
		0 0 2.1478941070215773
		0 -2.1478941070215773 0
		0 0 -2.1478941070215773
		;
createNode transform -n "lfLegQd0_extraRollG_ofs_loc" -p "lfLegQd0_IK";
	rename -uid "DD2DE954-4EE6-5A0C-98FC-81AFCD0DDC90";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -2.6817889528197654 -164.18271618494302 89.156941991834728 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "A20B0E92-46F7-09D1-0416-E3A6A5B87DCE";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "3EA94E62-483B-E152-9741-61AF8D3BD751";
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
	rename -uid "3C743D5A-42C7-6AB8-133F-D98512A352F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.3391800141850041 4.3391800141850041 1.0802380505062895e-16
		-4.2558038613417191 4.3391800141850041 -0.84653200763824865
		-4.0088795836103772 4.3391800141850041 -1.6605323520646618
		-3.6078964060834173 4.3391800141850041 -2.410719199210722
		-3.0682636120353179 4.3391800141850041 -3.0682636120353179
		-2.410719199210722 4.3391800141850041 -3.6078964060834173
		-1.6605323520646618 4.3391800141850041 -4.0088795836103772
		-0.84653200763824865 4.3391800141850041 -4.2558038613417191
		2.6569814587289263e-16 4.3391800141850041 -4.3391800141850041
		0.84653200763824865 4.3391800141850041 -4.2558038613417191
		1.6605323520646618 4.3391800141850041 -4.0088795836103772
		2.410719199210722 4.3391800141850041 -3.6078964060834173
		3.0682636120353179 4.3391800141850041 -3.0682636120353179
		3.6078964060834173 4.3391800141850041 -2.410719199210722
		4.0088795836103772 4.3391800141850041 -1.6605323520646618
		4.2558038613417191 4.3391800141850041 -0.84653200763824865
		4.3391800141850041 4.3391800141850041 -4.6933309905981419e-16
		4.1740300058059177 4.3391800141850041 -0.83026612430527413
		3.7037218131101612 4.3391800141850041 -1.534131806017659
		2.9998560279436632 4.3391800141850041 -2.0044397918051886
		2.169590007092502 4.3391800141850041 -2.169590007092502
		1.339323882787228 4.3391800141850041 -2.0044397918051886
		0.63545820107484341 4.3391800141850041 -1.534131806017659
		0.16515021528731352 4.3391800141850041 -0.83026612430527413
		0 4.3391800141850041 -4.6933309905981419e-16
		-0.16515021528731352 4.3391800141850041 0.83026612430527413
		-0.63545820107484341 4.3391800141850041 1.534131806017659
		-1.339323882787228 4.3391800141850041 2.0044397918051886
		-2.169590007092502 4.3391800141850041 2.169590007092502
		-2.9998560279436632 4.3391800141850041 2.0044397918051886
		-3.7037218131101612 4.3391800141850041 1.534131806017659
		-4.1740300058059177 4.3391800141850041 0.83026612430527413
		-4.3391800141850041 4.3391800141850041 1.0802380505062895e-16
		-4.2558038613417191 4.3391800141850041 0.84653200763824865
		-4.0088795836103772 4.3391800141850041 1.6605323520646618
		-3.6078964060834173 4.3391800141850041 2.410719199210722
		-3.0682636120353179 4.3391800141850041 3.0682636120353179
		-2.410719199210722 4.3391800141850041 3.6078964060834173
		-1.6605323520646618 4.3391800141850041 4.0088795836103772
		-0.84653200763824865 4.3391800141850041 4.2558038613417191
		-5.0657102385996788e-16 4.3391800141850041 4.3391800141850041
		0.84653200763824865 4.3391800141850041 4.2558038613417191
		1.6605323520646618 4.3391800141850041 4.0088795836103772
		2.410719199210722 4.3391800141850041 3.6078964060834173
		3.0682636120353179 4.3391800141850041 3.0682636120353179
		3.6078964060834173 4.3391800141850041 2.410719199210722
		4.0088795836103772 4.3391800141850041 1.6605323520646618
		4.2558038613417191 4.3391800141850041 0.84653200763824865
		4.3391800141850041 4.3391800141850041 -4.6933309905981419e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe01_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "857D47CB-4A2C-2D29-ECA6-C6BF97F7529E";
	setAttr ".t" -type "double3" 7.6139723014548037 1.4454908949269949 -36.35114820069839 ;
	setAttr ".r" -type "double3" -89.999999999999289 -106.14774277477675 -179.99999999999986 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe01_4_ctl" -p "lfLegQd0_toe01_4_ctl_ofs";
	rename -uid "14128B7E-42A7-DE03-10F2-10B16EA7551E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_4_ctlShape1" -p "lfLegQd0_toe01_4_ctl";
	rename -uid "7EED7B33-4F18-157D-3AE3-3291BFF979B4";
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
		7.3484396710600793e-18 -0.35802346741879676 -0.35802346741879693
		1.0392263045093661e-17 -1.9822524646932966e-17 -0.32372639459367625
		7.3484396710600747e-18 0.35802346741879676 -0.3580234674187967
		-4.2414217423473814e-33 0.32372639459367741 8.866327839188441e-17
		-7.3484396710600778e-18 0.35802346741879676 0.35802346741879698
		-1.0392263045093671e-17 3.2427894353067763e-17 0.32372639459367702
		-7.3484396710600747e-18 -0.35802346741879676 0.35802346741879715
		-6.1973477359229489e-33 -0.32372639459367741 1.4959176598354614e-16
		7.3484396710600793e-18 -0.35802346741879676 -0.35802346741879693
		1.0392263045093661e-17 -1.9822524646932966e-17 -0.32372639459367625
		7.3484396710600747e-18 0.35802346741879676 -0.3580234674187967
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe02_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "8CC0FC0C-4C93-B15B-173F-86915740B66D";
	setAttr ".t" -type "double3" 10.18339956201276 1.5166582800570318 -35.43466026001424 ;
	setAttr ".r" -type "double3" -270 -66.578300478696463 -1.9203569240258137e-13 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe02_4_ctl" -p "lfLegQd0_toe02_4_ctl_ofs";
	rename -uid "47CF6977-40FF-D247-6780-0F88335B8D3A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_4_ctlShape1" -p "lfLegQd0_toe02_4_ctl";
	rename -uid "14145301-4B19-1218-0A0A-2D870665D530";
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
		3.5600621184715608e-15 -0.35802346741879665 -0.3580234674187967
		3.5631059418455949e-15 1.0304540257920361e-16 -0.32372639459367603
		3.5600621184715608e-15 0.35802346741879687 -0.35802346741879648
		3.5527136788005009e-15 0.32372639459367752 3.030286378652822e-16
		3.5453652391294406e-15 0.35802346741879687 0.3580234674187972
		3.5423214157554074e-15 1.5529582157920434e-16 0.32372639459367725
		3.5453652391294406e-15 -0.35802346741879665 0.35802346741879737
		3.5527136788005009e-15 -0.3237263945936773 3.6395712545694391e-16
		3.5600621184715608e-15 -0.35802346741879665 -0.3580234674187967
		3.5631059418455949e-15 1.0304540257920361e-16 -0.32372639459367603
		3.5600621184715608e-15 0.35802346741879687 -0.35802346741879648
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe03_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "2125E9EA-451F-2C7E-0100-D5B90EE76B9A";
	setAttr ".t" -type "double3" 12.334429696568312 1.4942503989204912 -36.012400051725258 ;
	setAttr ".r" -type "double3" 90.000000000000341 -67.873344188688137 3.3776823642513658e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe03_4_ctl" -p "lfLegQd0_toe03_4_ctl_ofs";
	rename -uid "BAC6C636-43E3-2750-5A76-019808E62367";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_4_ctlShape1" -p "lfLegQd0_toe03_4_ctl";
	rename -uid "0890386C-4ACC-7BA3-6D49-1BB7E47DEAAE";
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
		-3.5453652391294406e-15 -0.35802346741879687 -0.35802346741879715
		-3.5423214157554074e-15 -1.4269045187306953e-16 -0.32372639459367647
		-3.5453652391294406e-15 0.35802346741879665 -0.35802346741879693
		-3.5527136788005009e-15 0.3237263945936773 -1.2570208108151336e-16
		-3.5600621184715608e-15 0.35802346741879665 0.35802346741879676
		-3.5631059418455949e-15 -9.0440032873068805e-17 0.3237263945936768
		-3.5600621184715608e-15 -0.35802346741879687 0.35802346741879693
		-3.5527136788005009e-15 -0.32372639459367752 -6.4773593489851629e-17
		-3.5453652391294406e-15 -0.35802346741879687 -0.35802346741879715
		-3.5423214157554074e-15 -1.4269045187306953e-16 -0.32372639459367647
		-3.5453652391294406e-15 0.35802346741879665 -0.35802346741879693
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe04_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "ECBA55F7-4613-066C-5621-B688D4403903";
	setAttr ".t" -type "double3" 13.232265542785077 1.5653145968497397 -38.684118540150706 ;
	setAttr ".r" -type "double3" 90.000000000000099 -59.451643158517648 6.8834318681868067e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe04_4_ctl" -p "lfLegQd0_toe04_4_ctl_ofs";
	rename -uid "4181459B-4486-A93A-9852-FEB86042AE19";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_4_ctlShape1" -p "lfLegQd0_toe04_4_ctl";
	rename -uid "9C44BCFF-4DDF-E81D-44F0-3AAC2946A70E";
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
		-3.4224973119033044e-15 -0.35802346741880042 -0.35802346741879737
		-3.4194534885292707e-15 -3.6954041306735706e-15 -0.32372639459367669
		-3.4224973119033044e-15 0.35802346741879304 -0.35802346741879715
		-3.4298457515743643e-15 0.32372639459367375 -3.4006744055491113e-16
		-3.4371941912454242e-15 0.35802346741879304 0.35802346741879654
		-3.4402380146194579e-15 -3.6431537116735694e-15 0.32372639459367658
		-3.4371941912454242e-15 -0.35802346741880042 0.3580234674187967
		-3.4298457515743643e-15 -0.32372639459368108 -2.7913895296324942e-16
		-3.4224973119033044e-15 -0.35802346741880042 -0.35802346741879737
		-3.4194534885292707e-15 -3.6954041306735706e-15 -0.32372639459367669
		-3.4224973119033044e-15 0.35802346741879304 -0.35802346741879715
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "B8737091-4FF3-3A94-0750-609B7CBE63A8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "8ADAA44A-49EA-BD99-6EFD-AB83050906FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.1501096345356041 4.1501096345356041 4.1501096345356041 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "C853F9B8-45D0-8964-2E53-80B90955C98E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "C83E5312-43DA-4FFF-B9AA-B5AFEC0362AA";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "E4E9FB47-4314-58C4-781D-6EB679E4A686";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.17525585818402 -11.930390147751005 -82.119275607628111 ;
	setAttr ".radi" 1.7222956575796804;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "E67F6FE1-48D8-A60A-D54A-84A3122ED627";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.41319340951401 -36.973216297676345 10.111224255903865 ;
	setAttr ".radi" 1.7222956575796804;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "9A16CE4D-4891-19BF-4C5A-A297E44299AD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -31.591147132459195 0 ;
	setAttr ".radi" 1.7222956575796804;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "78CFBE12-4CA5-BDA3-FE0B-59AA04049C08";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -179.67552600379349 6.5084974361084162 1.5200106132877189 ;
	setAttr ".radi" 1.7222956575796804;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "C502A70A-493E-F2C4-9E1D-C2BB041C9D24";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -92.609472538164752 69.489867539020466 -92.785812159969893 ;
	setAttr ".radi" 1.7222956575796804;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "2FBC9049-4A3E-9768-FA4D-62B82AD098CC";
	setAttr ".t" -type "double3" 4.0912487710456986 2.2026824808563106e-13 6.9499961341534799e-14 ;
	setAttr ".r" -type "double3" 0.0099216129841803551 -20.050794842114488 -0.55064774986217946 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "8FE76D60-4651-A237-CC5E-2C81523B1EA5";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "8ECDDF10-4209-ED1C-0609-278512C9E840";
	setAttr ".t" -type "double3" 4.0912487710456915 2.1671553440683056e-13 6.2172489379008766e-14 ;
	setAttr ".r" -type "double3" 0.0099216129841666525 -20.050794842114499 -0.55064774986216569 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "CCE661CB-4965-72F3-73AB-218B1BE99995";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "030B653A-4720-7C18-5C58-3B87B5717FCF";
	setAttr ".t" -type "double3" 4.0912487710456986 2.1849189124623081e-13 6.283862319378386e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "A82540AC-4A3C-5474-7E95-B79FF6139040";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.2701431406992607e-14 1.2943667563310097e-14 -1.8210539157637298e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.9420130803537528e-14 -6.3611093629270367e-15 1.2722218725854073e-14 ;
	setAttr ".radi" 1.7222956575796804;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "57675F4C-4442-7798-181A-DC9AE8ED7895";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0701347565282973 3.4994229736184934e-13 8.1712414612411521e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.0708020850498012 19.046141584770766 3.2781528108957509 ;
	setAttr ".radi" 1.7222956575796804;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "63940714-48CC-52FA-EFDB-7DBFC03059C1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "BB39152E-443F-8CB1-FC30-11828549DCD6";
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
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "70686687-4E10-359B-E8FC-8DBE29C287BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		-1.0561141114952298e-31 8.0607879707015027 -3.1299821083350034e-15
		-1.8297616472779156e-16 8.9147851630095118 8.9147851630095118
		-2.5876737374905701e-16 8.0745464405049466e-16 8.0607879707014867
		-1.8297616472779151e-16 -8.9147851630095118 8.9147851630095154
		-1.5431397289270511e-31 -8.0607879707015027 -1.6128626270262814e-15
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		;
createNode transform -n "lfLegQd1_lwr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "C87E063C-42ED-F2BD-AE7F-F3B86BACD855";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "323CF967-4727-887D-FD94-5EA600A64566";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "54CB6879-49E9-6101-FB9F-BAB7F84F0A91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		-1.0561141114952298e-31 8.0607879707015027 -3.1299821083350034e-15
		-1.8297616472779156e-16 8.9147851630095118 8.9147851630095118
		-2.5876737374905701e-16 8.0745464405049466e-16 8.0607879707014867
		-1.8297616472779151e-16 -8.9147851630095118 8.9147851630095154
		-1.5431397289270511e-31 -8.0607879707015027 -1.6128626270262814e-15
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		;
createNode transform -n "lfLegQd1_palm_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "CBF2E4F2-486C-D125-3BB9-12B2774C2C60";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "DECC7EA0-4ECE-7377-F28E-C1A696296470";
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
	rename -uid "3622D54B-4250-5922-DA06-91B130ABC4BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		-1.0561141114952298e-31 8.0607879707015027 -3.1299821083350034e-15
		-1.8297616472779156e-16 8.9147851630095118 8.9147851630095118
		-2.5876737374905701e-16 8.0745464405049466e-16 8.0607879707014867
		-1.8297616472779151e-16 -8.9147851630095118 8.9147851630095154
		-1.5431397289270511e-31 -8.0607879707015027 -1.6128626270262814e-15
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		;
createNode transform -n "lfLegQd1_digit_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "346003DD-4B9B-E2DA-5E78-74BA1A44CED4";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "B169FB93-4632-DF5C-55AF-589A2F626B75";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "7401A50A-4B4D-802D-68D5-27A340D9CD09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		-1.0561141114952298e-31 8.0607879707015027 -3.1299821083350034e-15
		-1.8297616472779156e-16 8.9147851630095118 8.9147851630095118
		-2.5876737374905701e-16 8.0745464405049466e-16 8.0607879707014867
		-1.8297616472779151e-16 -8.9147851630095118 8.9147851630095154
		-1.5431397289270511e-31 -8.0607879707015027 -1.6128626270262814e-15
		1.8297616472779161e-16 -8.9147851630095118 -8.9147851630095225
		2.5876737374905671e-16 -4.9358090934625318e-16 -8.0607879707014796
		1.8297616472779151e-16 8.9147851630095118 -8.9147851630095154
		;
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "1A3391D8-4551-9A06-8C6A-92B0C22EE43E";
	setAttr ".t" -type "double3" -3.5527136788005009e-14 -1.0658141036401503e-14 -4.4853010194856324e-14 ;
	setAttr ".r" -type "double3" -89.085972263128212 -0.34150260062809307 -69.514815349838841 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "AA1429C5-4EB9-2058-D0FB-9E99EF69E0CB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "47B4DFDB-4152-D825-BE19-3D97955668AE";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "3B907E1C-4DB5-9667-BD3B-768CBD429A54";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "E6C06B84-40FC-D930-03C7-86B72845CAE5";
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
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "8E64872D-4894-6A4B-3580-3BACC7BD839D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4573925815047559 -17.222956575796804 -4.4573925815047613
		2.4679045467312659e-16 -17.222956575796804 -4.0303939853507398
		-4.4573925815047559 -17.222956575796804 -4.4573925815047577
		-4.0303939853507513 -17.222956575796804 -1.5649910541675017e-15
		-4.4573925815047559 -17.222956575796804 4.4573925815047559
		-4.0372732202524733e-16 -17.222956575796804 4.0303939853507433
		4.4573925815047559 -17.222956575796804 4.4573925815047577
		4.0303939853507513 -17.222956575796804 -8.064313135131407e-16
		4.4573925815047559 -17.222956575796804 -4.4573925815047613
		2.4679045467312659e-16 -17.222956575796804 -4.0303939853507398
		-4.4573925815047559 -17.222956575796804 -4.4573925815047577
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "76AD1742-444C-7628-0227-A1AA227D2C40";
	setAttr ".t" -type "double3" 19.53214184540839 -7.1054273576010019e-15 5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "F148B300-4A41-39A9-3464-DE8098032929";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "5C48D0BF-4ADC-88B1-925D-3C9EB57324BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		-27.987304435669806 0 2.1528695719746009
		-27.987304435669806 0 -2.1528695719746
		-30.140174007644408 0 -3.229304357961901
		-32.29304357961901 0 -2.1528695719746009
		-32.29304357961901 0 2.1528695719746
		-27.987304435669806 0 2.1528695719746009
		-32.29304357961901 0 2.1528695719746
		-32.29304357961901 0 -2.1528695719746009
		-30.140174007644408 0 -3.229304357961901
		-27.987304435669806 0 -2.1528695719746
		;
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "DA1B1BFA-4DC4-B5C3-43D1-1BA0CA3353A8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 114.98770120484909 -13.934906442064158 6.926943891973508 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "DEAB7152-4EFE-71A7-9799-5095D9ACCAEC";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 83.405895879426652 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.590277340731758e-15 -2.981770013872046e-15 -1.2945851476894468e-14 ;
	setAttr ".radi" 2.5834434863695206;
createNode ikEffector -n "effector20" -p "lfLegQd1_autoAim";
	rename -uid "F1FAF995-4CF3-59C5-17C1-16981FAC2CDE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "C4E5801F-4F93-C7FD-83A0-788F6590C9F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 65.012298795151096 13.934906442064177 -173.07305610802646 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "BFDA2D43-4024-8A26-7C3D-90AF6223A20F";
	setAttr ".t" -type "double3" 8.1263705672314845 2.831954353496025 52.704151763502772 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "5E4BF185-4137-80EF-0627-298C5CB2F678";
	setAttr ".t" -type "double3" 1.4317692033492406 0.069671926909368853 3.8319051133421453 ;
	setAttr ".r" -type "double3" 130.35787258698562 -61.897950918515811 -43.931219385071998 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "77F28320-42CF-3885-55DC-2EBBFD651A15";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "DAD3E45A-4BBF-C929-B970-8BA7B8531947";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "89AA4C45-4446-8F09-5652-11BF91F27CCF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.1488082363895803e-17 -4.4573925815047559 -4.4573925815047613
		1.2938368687452836e-16 -2.4679045467312659e-16 -4.0303939853507398
		9.1488082363895754e-17 4.4573925815047559 -4.4573925815047577
		-5.2805705574761489e-32 4.0303939853507513 -1.5649910541675017e-15
		-9.1488082363895778e-17 4.4573925815047559 4.4573925815047559
		-1.293836868745285e-16 4.0372732202524733e-16 4.0303939853507433
		-9.1488082363895754e-17 -4.4573925815047559 4.4573925815047577
		-7.7156986446352555e-32 -4.0303939853507513 -8.064313135131407e-16
		9.1488082363895803e-17 -4.4573925815047559 -4.4573925815047613
		1.2938368687452836e-16 -2.4679045467312659e-16 -4.0303939853507398
		9.1488082363895754e-17 4.4573925815047559 -4.4573925815047577
		;
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "461077F3-4780-1499-7C0A-71BD596282AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0701347565282688 3.4283687000424834e-13 3.907985046680551e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999911 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270393 0.35894198850131681 -0.3050287863976574 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "CE75EE9C-4013-D2E5-199D-2EB5AE4D9767";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999933 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "CC959E80-43A7-39E5-64EF-7A9CC17F12E0";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000009 ;
createNode ikHandle -n "lfLegQd1_toe00_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "EE87AD19-4CB3-E961-607A-18992BE0E624";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.5378721099927333 3.5026812770435853 -0.81107579048797263 ;
	setAttr ".r" -type "double3" 18.303050065486264 -49.560437477685177 22.861212445919694 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270471 0.35894198850131648 -0.30502878639765768 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe01_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "AAEDB6A1-41AB-E271-8D27-69BA38FB2261";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4598802111889739 2.672604588699512 0.77585490226833542 ;
	setAttr ".r" -type "double3" 3.1190764097118504 -2.2265651965452924 8.9385206056531459 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270471 0.35894198850131648 -0.30502878639765768 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe02_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "5A262FB9-48D8-1DFD-D27E-77B707601112";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.080517145367991816 0.71732915513819329 0.15215464381630639 ;
	setAttr ".r" -type "double3" 2.6819149085428076 23.788631062008999 8.2015436454568409 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270471 0.35894198850131648 -0.30502878639765768 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe03_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "F64309E2-4AC0-E081-44AD-949335F0A102";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.027792257152960076 -1.3287208259144627 0.13392266788317286 ;
	setAttr ".r" -type "double3" 0.61143135635878865 20.881264260681046 1.8702808859506115 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 0.99999999999999944 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270471 0.35894198850131648 -0.30502878639765768 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe04_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "2A622D7B-4D3B-32E1-8612-5DA3027D6A9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.9156196986475678 -3.6993451687122807 0.78672299889694131 ;
	setAttr ".r" -type "double3" -4.3212267323375384 10.165995707069124 -13.183741620615212 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999922 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270471 0.35894198850131648 -0.30502878639765768 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe00_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "0B10577C-4C55-B0B2-F29C-CDBEE12213B0";
	setAttr ".t" -type "double3" -6.5378721099927617 3.5026812770435765 -0.81107579048796552 ;
	setAttr ".r" -type "double3" 55.879112390040937 -69.04955777618764 9.6239400451343329 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_toe00_3_ikc_ofs1" -p "lfLegQd1_toe00_3_ikc_ofs";
	rename -uid "ADDE7B15-4316-CBBA-7CA0-129A92D3FAE5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd1_toe00_3_ikc" -p "lfLegQd1_toe00_3_ikc_ofs1";
	rename -uid "D7D3688F-4266-810B-6A29-648745BE6699";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe00_3_ikcShape1" -p "lfLegQd1_toe00_3_ikc";
	rename -uid "2AC6D161-46E5-FE1D-FC04-A9B3B314EB56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		8.5693966063158367e-16 7.1054273576010019e-15 2.4991007254833207e-16
		8.5693966063158367e-16 7.1054273576010019e-15 -0.94584242225173587
		0.10922378135738962 7.1054273576010019e-15 -0.94584242225173587
		0.10922378135738962 7.1054273576010019e-15 -1.164289984966514
		-0.1092237813573879 7.1054273576010019e-15 -1.164289984966514
		-0.1092237813573879 7.1054273576010019e-15 -0.94584242225173587
		8.5693966063158367e-16 7.1054273576010019e-15 -0.94584242225173587
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe00_3_1_ikj_ikh" -p "lfLegQd1_toe00_3_ikc";
	rename -uid "73F24366-4190-A278-6BFC-5090FC756829";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8964376440170416 7.1054273576010019e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.047561774992254648 -0.69328088668956322 -0.71909630072092523 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "05C85114-4EBD-0B34-53DD-F78FBA750536";
	setAttr ".t" -type "double3" -1.4598802111890024 2.6726045886994978 0.77585490226834608 ;
	setAttr ".r" -type "double3" 3.5628996184312585 -26.173702330455434 7.7229778276966377 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs1" -p "lfLegQd1_toe01_3_ikc_ofs";
	rename -uid "BA3B177F-43EB-1EF5-FA27-3DBF0B885EBB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe01_3_ikc" -p "lfLegQd1_toe01_3_ikc_ofs1";
	rename -uid "44ED21DD-430A-41BD-7740-8AA1A747F2C1";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_3_ikcShape1" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "B8A7D2AB-4563-FBBC-D787-78AB69358386";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		6.8555172850526694e-15 1.3879985647967894e-15 1.4242093474270544e-14
		6.8555172850526694e-15 1.3879985647967894e-15 -0.94584242225172188
		0.10922378135739562 1.3879985647967894e-15 -0.94584242225172188
		0.10922378135739562 1.3879985647967894e-15 -1.1642899849665
		-0.10922378135738191 1.3879985647967894e-15 -1.1642899849665
		-0.10922378135738191 1.3879985647967894e-15 -0.94584242225172188
		6.8555172850526694e-15 1.3879985647967894e-15 -0.94584242225172188
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe01_3_1_ikj_ikh" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "B0E5AD7F-4160-B16F-AD82-D38E9D622BDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6171293934427453 -0.2567887045488515 -1.4033087899014021 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.69322192055784371 0.19439179521697203 -0.6940138318581397 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "60B34A51-4C9E-832E-5F67-4F815E884A7D";
	setAttr ".t" -type "double3" -0.080517145368020238 0.71732915513818263 0.1521546438163135 ;
	setAttr ".r" -type "double3" 3.5813000168134748 -10.312969128807289 9.6148043437828186 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs1" -p "lfLegQd1_toe02_3_ikc_ofs";
	rename -uid "61458459-4276-C525-1D7F-54B1DC8BB2C3";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd1_toe02_3_ikc" -p "lfLegQd1_toe02_3_ikc_ofs1";
	rename -uid "FCB68530-4B9C-A25E-F0F4-D28CA209390D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_3_ikcShape1" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "54F1CEAA-4054-60BC-FA8B-DDB8169071F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -6.6613381477509392e-16 -2.3429069301406131e-17
		0 -6.6613381477509392e-16 -0.94584242225173609
		0.10922378135738876 -6.6613381477509392e-16 -0.94584242225173609
		0.10922378135738876 -6.6613381477509392e-16 -1.1642899849665143
		-0.10922378135738876 -6.6613381477509392e-16 -1.1642899849665143
		-0.10922378135738876 -6.6613381477509392e-16 -0.94584242225173609
		0 -6.6613381477509392e-16 -0.94584242225173609
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe02_3_1_ikj_ikh" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "7B0DB6E6-4C07-C515-B8BC-798BFD18797D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6507210257030849 -0.29181045424433427 -0.96200551977589299 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999933 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.86004368406931486 0.17702138407675366 -0.47852721037787521 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "38B0CE81-4E5B-178C-25C9-C4878114B515";
	setAttr ".t" -type "double3" -0.027792257152988498 -1.3287208259144752 0.13392266788317997 ;
	setAttr ".r" -type "double3" -0.57446717781640111 -13.170870530415508 -1.4869609731447855 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs1" -p "lfLegQd1_toe03_3_ikc_ofs";
	rename -uid "02806306-4838-8BCA-985B-9C87BCBB4DE7";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe03_3_ikc" -p "lfLegQd1_toe03_3_ikc_ofs1";
	rename -uid "CFD59B6B-4CA3-E1F9-48FD-E08EB4EE0B05";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_3_ikcShape1" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "A4A6E220-4767-8B38-C38B-499D8817BBDE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 1.7763568394002505e-15 6.2477518137083017e-17
		0 1.7763568394002505e-15 -0.94584242225173598
		0.10922378135738876 1.7763568394002505e-15 -0.94584242225173598
		0.10922378135738876 1.7763568394002505e-15 -1.1642899849665143
		-0.10922378135738876 1.7763568394002505e-15 -1.1642899849665143
		-0.10922378135738876 1.7763568394002505e-15 -0.94584242225173598
		0 1.7763568394002505e-15 -0.94584242225173598
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe03_3_1_ikj_ikh" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "25F5D2E8-4961-81E5-EABC-3C93DF5C2F1C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.5373811403799849 0.14511945561807948 -1.0640836042037094 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.78004484059150092 0.38666326940905443 -0.4919568708296298 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "48B1A94D-4CC0-9EAA-FE60-2481F6F81BB9";
	setAttr ".t" -type "double3" -1.9156196986475891 -3.6993451687122878 0.78672299889694131 ;
	setAttr ".r" -type "double3" -2.1840424414554782 -20.054072017149768 -5.1968614837269822 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs1" -p "lfLegQd1_toe04_3_ikc_ofs";
	rename -uid "11F3CB50-4A4E-3800-AA14-3B9DD6832B55";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe04_3_ikc" -p "lfLegQd1_toe04_3_ikc_ofs1";
	rename -uid "F0922B22-4F25-1A99-790D-64BC1A4B729D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_3_ikcShape1" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "674D1F2D-4EB2-C52C-FBAF-B9B60A8FDCCC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		6.8555172850526694e-15 -2.4991007254833207e-16 -7.1054273576010019e-15
		6.8555172850526694e-15 -2.4991007254833207e-16 -0.9458424222517432
		0.10922378135739562 -2.4991007254833207e-16 -0.9458424222517432
		0.10922378135739562 -2.4991007254833207e-16 -1.1642899849665214
		-0.10922378135738191 -2.4991007254833207e-16 -1.1642899849665214
		-0.10922378135738191 -2.4991007254833207e-16 -0.9458424222517432
		6.8555172850526694e-15 -2.4991007254833207e-16 -0.9458424222517432
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe04_3_1_ikj_ikh" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "C5DACFDA-4141-76B9-16B1-7C8C27C936BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7875871585164163 0.3038360590658904 -1.2449976563179916 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000004 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.69008352792766647 0.45902343752418401 -0.55953749497811889 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "0B445897-4D95-C9EB-0B9D-46A4ABE65827";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "3DFD0976-4AAF-351A-2C62-0D88B861892A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.17525585818402 -11.930390147751005 -82.119275607628111 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "32529DE4-445A-4B24-9770-C895AE80FF8A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.532141845408354 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -1.4278311477155703e-14 -8.3215561470319716e-06 -1.0300263837532463e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.41319340951401 -36.973216297676345 10.111224255903865 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "2646646C-4C59-928E-0F01-6B87C0CD82C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.591760048278132 7.1054273576010019e-15 4.6185277824406512e-14 ;
	setAttr ".r" -type "double3" 9.5952216985103147e-19 1.6976894668786316e-05 -3.4599542753265863e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -31.591147132459195 0 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "14E43B21-4116-2A2A-40A0-46A5396EA6EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.610560234948156 -1.56052948341312e-12 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -2.4947301865091879e-07 1.2569210957783312e-05 -5.1858230473267764e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -179.67552600379349 6.5084974361084162 1.5200106132877189 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "7FBE5B37-4A5B-0152-F773-E2BA8D3D7B41";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.104208881603869 -0.1985002532433251 -2.0474560233079799 ;
	setAttr ".r" -type "double3" 1.396160633301867e-06 7.5773914628277792e-20 2.2732175394786841e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -92.609472538164752 69.489867539020466 -92.785812159969893 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "9CD38F7A-4445-6A03-C8B3-54A0DA1D7FF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0912487710457199 2.2204460492503131e-13 6.6613381477509392e-14 ;
	setAttr ".r" -type "double3" -3.7015448049497113e-08 -2.5548178798635699e-21 -5.9655645838722836e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.0099216129841307697 -20.050794842114509 -0.55064774986215326 ;
	setAttr ".radi" 2.5834434863695206;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "3CF31E2D-4011-0414-3131-E2ACEFC49BD1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0701347565282973 3.4994229736184934e-13 8.1712414612411521e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.0708020850498012 19.046141584770766 3.2781528108957509 ;
	setAttr ".radi" 2.5834434863695206;
createNode ikEffector -n "effector18" -p "lfLegQd1_ball_ik";
	rename -uid "182DE615-45DB-CEBF-B7EF-CA8C8692E280";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "lfLegQd1_digit_ik";
	rename -uid "135F9C36-4FE0-0033-22BE-6BA07B553915";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "lfLegQd1_palm_ik";
	rename -uid "88C5C0A2-4594-E72B-13FC-9793FD3C1A0D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector15" -p "lfLegQd1_lwr_ik";
	rename -uid "11858890-490D-7DB6-43BB-28BBE62AD507";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "76663800-4E9E-9DF2-43AC-EDA460876612";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 19.532141845408376 3.5527136788005009e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 79.624870705520252 -21.465655024869857 9.655254620240358 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "86316E15-46B8-F8D9-12DC-D588A10FECA9";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 54.080726623535156 -2.8421709430404007e-14 3.0142555118573e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.7708320221952752e-15 -9.9392333795734879e-16 5.466578358765418e-16 ;
createNode ikEffector -n "effector19" -p "lfLegQd1_softJ";
	rename -uid "79477ED1-448F-C1A4-627C-C4B004F208F2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "CA9AC9AE-44FC-9D54-F61D-72AC8045D32F";
	setAttr ".t" -type "double3" 30.034036239544854 44.345923444943608 7.0339883946848216 ;
	setAttr ".r" -type "double3" -5.7512435903109589 80.961294601629007 80.314912185518992 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999956 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "5CB3F307-454F-F3D3-A861-CE9965318162";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000007 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "735B236B-4899-3917-C0AA-75A21D60CAE0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "4F20EA3D-495C-FF8E-F5B3-A4A3E829BF5E";
	setAttr ".t" -type "double3" 2.0721296135173013 12.747974631088638 -0.052403655506658708 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "D186AA69-4D79-4DB1-D5DA-07AF2B69D2C4";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "881A0BAA-4422-3567-F52D-A7BF53C613FC";
	setAttr ".t" -type "double3" 1.2780960106798638 -0.056478686259870514 -10.2993745446243 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "96114CC3-499B-E55A-074B-6F8943223371";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "B7D573FF-4AF6-955B-417D-E08223503CAF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "B81A3A80-4CCD-23DC-8B31-36B39D8D5D4A";
	setAttr ".t" -type "double3" 2.715656743585102 0.05647868625987118 5.6866899434130787 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "D5262039-41E4-24D6-3DB3-B49A56D2F653";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "EC15AC61-4CBE-8124-1EA5-C29049A14063";
	setAttr ".t" -type "double3" -8.5151509361087339 -4.4408920985006262e-16 0.88595614751790208 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "AC77169B-4224-9A38-FB5C-CFADBFD20C36";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "09FA46AC-4304-7444-94AC-F091D5ED165C";
	setAttr ".t" -type "double3" 4.0795379524244915 -1.7134355574748696 -2.1002294166446944 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "88258745-47EF-0166-BAA8-DFA234028104";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "BBF66E35-4BFE-7793-7C7D-E0B1D87D0F3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		5.3335890299580685e-17 -7.7404370790920876 -4.7083448261128587e-16
		5.1518512322477416e-17 -7.770117219141512 -0.22544204366926815
		4.6190235525862191e-17 -7.8571346155398736 -0.43552057018421719
		3.7714166995798408e-17 -7.9955592628107794 -0.61591909352550334
		2.6667945149790342e-17 -8.1759576834952448 -0.75434380923429012
		1.3804343427146239e-17 -8.3860362442291336 -0.84136113719477146
		-1.6332818123654885e-32 -8.611478287898402 -0.87104114036843439
		-1.3804343427146239e-17 -8.8369203315676703 -0.84136113719477146
		-2.6667945149790342e-17 -9.0469988923015592 -0.75434380923429012
		-3.7714166995798408e-17 -9.2273973129860245 -0.61591909352550334
		-4.6190235525862191e-17 -9.3658225077599759 -0.43552057018421719
		-5.1518512322477416e-17 -9.4528393566552928 -0.22544204366926815
		-5.3335890299580685e-17 -9.4825194967047182 -2.5738559611996666e-16
		-5.1518512322477416e-17 -9.4528393566552928 0.22544204366926815
		-4.6190235525862191e-17 -9.3658225077599759 0.43552057018421719
		-3.7714166995798408e-17 -9.2273973129860245 0.61591909352550334
		-2.6667945149790342e-17 -9.0469988923015592 0.75434380923429012
		-1.3804343427146239e-17 -8.8369203315676703 0.84136113719477146
		3.9904184464052109e-32 -8.611478287898402 0.87104114036843439
		1.3804343427146239e-17 -8.3860362442291336 0.84136113719477146
		2.6667945149790342e-17 -8.1759576834952448 0.75434380923429012
		3.7714166995798408e-17 -7.9955592628107794 0.61591909352550334
		4.6190235525862191e-17 -7.8571346155398736 0.43552057018421719
		5.1518512322477416e-17 -7.770117219141512 0.22544204366926815
		5.3335890299580685e-17 -7.7404370790920876 -4.7083448261128587e-16
		0 0 0
		;
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "F69C3CA8-48C1-A17D-B242-D7B2F6B8BBFC";
	setAttr ".t" -type "double3" -1.4317691308540379 0.069669807990093258 3.8319055025367206 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "CBD3600F-499C-5BF1-EB9B-8BBFBA2DD798";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -6.1473767373690551 0 88.911604529131239 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "3CD887DE-42EC-B7BC-1E28-31AC667BB48B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "2AAADCA2-48E3-B2B1-5D53-FFAD5012EE09";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "E7BA588C-4FEB-9824-2C17-1E98582CFB68";
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
		5.1413108308108733 -8.611478287898402 0
		4.7735800440470291 -6.6341967779868654 0
		3.653540187801525 -4.957938100096877 0
		1.9772815099115366 -3.8378982438513729 0
		0 -3.4702880177823534 0
		-1.9772815099115366 -3.8378982438513729 0
		-3.653540187801525 -4.957938100096877 0
		-4.7735800440470291 -6.6341967779868654 0
		-5.1413108308108733 -8.6114785314899081 0
		-4.7735800440470291 -10.588759797809939 0
		-3.653540187801525 -12.265018475699927 0
		-1.9772815099115366 -13.38505833194543 0
		2.0531348545041281e-07 -13.752668558014451 -0.034959156907960781
		1.9772815099115366 -13.38505833194543 0
		3.653540187801525 -12.265018475699927 0
		4.7735800440470291 -10.588759797809939 0
		5.1413108308108733 -8.611478287898402 0
		4.7499501478613348 -8.598099633147763 -1.9674506463963806
		3.6354560835777803 -8.5867575585459317 -3.6353768579783234
		1.9674954260830297 -8.5791790443774083 -4.7498468101229134
		2.0531348545041281e-07 -8.5765177531539294 -5.1411971592986108
		-1.9674954260830297 -8.5791790443774083 -4.7498468101229134
		-3.6354560835777803 -8.5867575585459317 -3.6353768579783234
		-4.7499501478613348 -8.598099633147763 -1.9674506463963806
		-5.1413108308108733 -8.6114785314899081 0
		-4.7499501478613348 -8.6248574248918217 1.9674437572138193
		-3.6354560835777803 -8.6361994994936513 3.6353734133870423
		-1.9674954260830297 -8.6437780136621747 4.7498399209403521
		2.0531348545041281e-07 -8.6464391671020024 5.1411902701160486
		1.9674954260830297 -8.6437780136621747 4.7498399209403521
		3.6354560835777803 -8.6361994994936513 3.6353734133870423
		4.7499501478613348 -8.6248574248918217 1.9674437572138193
		5.1413108308108733 -8.611478287898402 0
		4.7499501478613348 -8.598099633147763 -1.9674506463963806
		3.6354560835777803 -8.5867575585459317 -3.6353768579783234
		1.9674954260830297 -8.5791790443774083 -4.7498468101229134
		2.0531348545041281e-07 -8.5765177531539294 -5.1411971592986108
		2.0531348545041281e-07 -6.611731153654052 -4.7364645729973409
		2.0531348545041281e-07 -4.9513864874809599 -3.610655026356643
		2.0531348545041281e-07 -3.8482595744237589 -1.9351507139571305
		0 -3.4702880177823534 0
		2.0531348545041281e-07 -3.8750171594923408 1.9997471342443498
		2.0531348545041281e-07 -5.00082670613304 3.6600883558261623
		2.0531348545041281e-07 -6.676327573941272 4.7632187134746431
		2.0531348545041281e-07 -8.6464391671020024 5.1411902701160486
		2.0531348545041281e-07 -10.611225422142752 4.7364576838147805
		2.0531348545041281e-07 -12.271570088315844 3.6106481371740817
		2.0531348545041281e-07 -13.374697001373045 1.9351438247745689
		2.0531348545041281e-07 -13.752668558014451 -0.034959156907960781
		2.0531348545041281e-07 -13.347939416304463 -1.9997540234269113
		2.0531348545041281e-07 -12.222129869663764 -3.6600952450087232
		2.0531348545041281e-07 -10.546629001855532 -4.7632256026572053
		2.0531348545041281e-07 -8.5765177531539294 -5.1411971592986108
		;
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "5E5F31EC-4388-E3B3-D56E-AD80A53B04AE";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "54F82CEE-42C4-E3A2-4D45-5F96CBE49B2F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 0 89.999999999997172 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "BD21B2E8-4EAA-12A0-2C93-4BB681A2803A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.1985002532439859 -11.104208881603858 2.0474560233079444 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "54125FE2-438A-88BC-A2B7-AD82C7B6ACD2";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "5A209C51-407A-601B-8F6D-B98CCD303EDA";
	setAttr ".t" -type "double3" -0.1985002532439859 -11.104208881603856 2.0474560233079444 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "48B02409-4392-0055-5488-6BB82F9BF4CA";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "3E308FFA-442A-39B6-0D89-768967AAB4B2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "81D62AC7-4860-6648-A3B2-019B94DCE671";
	setAttr ".t" -type "double3" 4.0795379524244915 -1.7134355574748696 -2.1002294166446944 ;
	setAttr ".r" -type "double3" 130.35787258698559 61.897950918515825 43.931219385072033 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "8F31B5D0-486F-D158-01F0-F083C8506675";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" -179.8095926704041 -20.049930307642832 -0.58255329743771622 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.88211002055270449 -0.35894198850131726 0.30502878639765713 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "96219BF5-49C9-EC5D-ED6D-36BF84984C66";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -7.1054273576010019e-15 -4.6185277824406512e-14 ;
	setAttr ".r" -type "double3" -179.99999999999991 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000007 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "B4C752B7-41F6-3A7E-5486-078B97DE8DE7";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999956 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "E7F33374-451B-BAA7-63A4-4FB74C42D3CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371367
		-0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0 0.53283521906371367 0
		-0.53283521906371367 0 0
		0 -0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 -0.53283521906371367 0
		0 0 -0.53283521906371367
		;
createNode nurbsCurve -n "lfLegQd1_outRollG_ctlShape1" -p "lfLegQd1_outRollG_ctl";
	rename -uid "F5E9CAEA-4D24-C107-177F-288F1BA90AB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371367
		-0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0 0.53283521906371367 0
		-0.53283521906371367 0 0
		0 -0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 -0.53283521906371367 0
		0 0 -0.53283521906371367
		;
createNode nurbsCurve -n "lfLegQd1_toeRollG_ctlShape1" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "24218C2D-4FAD-E042-6063-80B5FE7EEC48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371367
		-0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0 0.53283521906371367 0
		-0.53283521906371367 0 0
		0 -0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 -0.53283521906371367 0
		0 0 -0.53283521906371367
		;
createNode nurbsCurve -n "lfLegQd1_heelRollG_ctlShape1" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "C150517E-4372-69F2-0FA4-06863016001D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371367
		-0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 -0.53283521906371367
		0 0.53283521906371367 0
		-0.53283521906371367 0 0
		0 -0.53283521906371367 0
		0.53283521906371367 0 0
		0 0 0.53283521906371367
		0 -0.53283521906371367 0
		0 0 -0.53283521906371367
		;
createNode transform -n "lfLegQd1_line_30" -p "lfLegQd1_IK";
	rename -uid "6E42EC1A-4F6F-2D42-5DE2-7FB929BB425D";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "1866EC6A-42E5-3675-7DCE-32B3A8957207";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8.6425410413393191 41.359122367441429 47.524030214667619
		8.6425410777437879 45.100594343887401 10.375821564859358
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "75A97734-469E-467A-23CE-A199DCAE0B25";
	setAttr ".t" -type "double3" 8.1263706397266873 2.8319564724153441 52.704151374308182 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "14ABED7C-4925-1BB9-C532-C99DEDD444C3";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "762C8853-4882-B125-D671-DEA5FFACFBA4";
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
	rename -uid "61B55713-442A-1979-0BE8-EBB21620549D";
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
		6.4586087159237957 -2.8319564724153423 6.4586087159238028
		6.3345083604620678 -2.8319564724153423 7.7186207700895491
		5.9669764011409985 -2.8319564724153423 8.9302112676366061
		5.3701368850429985 -2.8319564724153423 10.046819465212021
		4.5669260200602571 -2.8319564724153428 11.025534735984058
		3.5882107492882169 -2.8319564724153428 11.828745600966801
		2.4716025517128029 -2.8319564724153428 12.4255851170648
		1.2600120541657456 -2.8319564724153428 12.793117076385872
		-7.5400052971822976e-16 -2.8319564724153428 12.917217431847599
		-1.2600120541657469 -2.8319564724153428 12.793117076385872
		-2.4716025517128046 -2.8319564724153428 12.4255851170648
		-3.5882107492882196 -2.8319564724153428 11.828745600966801
		-4.5669260200602597 -2.8319564724153428 11.02553473598406
		-5.370136885043002 -2.8319564724153423 10.046819465212021
		-5.966976401141002 -2.8319564724153423 8.9302112676366061
		-6.3345083604620722 -2.8319564724153423 7.7186207700895482
		-6.4586087159238001 -2.8319564724153423 6.4586087159238001
		-6.3345083223716845 -0.89785626677280161 6.4586087159238019
		-5.9669763722992313 0.985424032736677 6.4586087159238019
		-5.370137007062417 2.616229623337416 6.4586087159238019
		-4.566926018893267 3.9138908345839569 6.4586087159238019
		-3.588210671317722 4.8910722938463769 6.4586087159238019
		-2.4716024730223092 5.4879116590831902 6.4586087159238019
		-1.260012026458361 5.8554436091556443 6.4586087159238019
		3.9547572470596585e-16 5.97954400270776 6.4586087159238019
		1.260012026458361 5.8554436091556443 6.4586087159238019
		2.4716024730223092 5.4879116590831902 6.4586087159238019
		3.588210671317722 4.8910722938463769 6.4586087159238019
		4.566926018893267 3.9138908345839569 6.4586087159238019
		5.370137007062417 2.616229623337416 6.4586087159238019
		5.9669763722992313 0.985424032736677 6.4586087159238019
		6.3345083223716845 -0.89785626677280161 6.4586087159238019
		6.4586087159238019 -2.8319564724153423 6.4586087159238019
		6.4586087159238019 -2.8319564724153441 -6.0710921929683721
		6.4586087159238019 -2.4444399494599143 -6.4586087159238019
		6.3345083223716845 -0.89785626677280161 -6.4586087159238019
		5.9669763722992313 0.985424032736677 -6.4586087159238019
		5.370137007062417 2.616229623337416 -6.4586087159238019
		4.566926018893267 3.9138908345839569 -6.4586087159238019
		3.588210671317722 4.8910722938463769 -6.4586087159238019
		2.4716024730223092 5.4879116590831902 -6.4586087159238019
		1.260012026458361 5.8554436091556443 -6.4586087159238019
		3.9547572470596585e-16 5.97954400270776 -6.4586087159238019
		-1.260012026458361 5.8554436091556443 -6.4586087159238019
		-2.4716024730223092 5.4879116590831902 -6.4586087159238019
		-3.588210671317722 4.8910722938463769 -6.4586087159238019
		-4.566926018893267 3.9138908345839569 -6.4586087159238019
		-5.370137007062417 2.616229623337416 -6.4586087159238019
		-5.9669763722992313 0.985424032736677 -6.4586087159238019
		-6.3345083223716845 -0.89785626677280161 -6.4586087159238019
		-6.4586087159238019 -2.4444399494599143 -6.4586087159238019
		-6.4586087159238019 -2.8319564724153414 -6.0710921929683721
		-6.4586087159238019 -2.8319564724153423 6.4586087159238019
		;
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "EA6B3137-4D25-A2FB-D7DD-3D9DFE4BB55A";
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
	rename -uid "DD37CDCF-47F0-7B6B-54D9-85B38BDCDB9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.291721743184759 0.88115007210147667 
		-0.64586088045282697 -1.2669016720924136 0.88115007210147667 -0.89786329128597586 
		-1.1933952802281995 0.88115007210147667 -1.1401813907953873 -1.0740273770085995 0.88115007210147667 
		-1.3635030303104703 -0.91338520401205114 0.88115007210147667 -1.5592460844648777 
		-0.7176421498576433 0.88115007210147667 -1.7198882574614274 -0.49432051034256053 
		0.88115007210147667 -1.8392561606810265 -0.25200241083314912 0.88115007210147667 
		-1.9127625525452405 1.5080010594364595e-16 0.88115007210147667 -1.9375826236375868 
		0.25200241083314934 0.88115007210147667 -1.9127625525452405 0.49432051034256075 0.88115007210147667 
		-1.8392561606810265 0.71764214985764374 0.88115007210147667 -1.7198882574614274 0.91338520401205159 
		0.88115007210147667 -1.5592460844648794 1.0740273770086004 0.88115007210147667 -1.3635030303104703 
		1.1933952802282004 0.88115007210147667 -1.1401813907953873 1.2669016720924144 0.88115007210147667 
		-0.89786329128597675 1.2917217431847599 0.88115007210147667 -0.64586088045282608 
		1.2669016644743367 0.49433003097296846 -0.64586088045282608 1.1933952744598457 0.1176739710710728 
		-0.64586088045282608 1.0740274014124829 -0.20848714704907501 -0.64586088045282608 
		0.9133852037786534 -0.46801938929838283 -0.64586088045282608 0.7176421342635444 -0.66345568115086717 
		-0.64586088045282608 0.4943204946044617 -0.78282355419823002 -0.64586088045282608 
		0.25200240529167206 -0.85632994421272013 -0.64586088045282608 -7.9095144941193161e-17 
		-0.88115002292314326 -0.64586088045282608 -0.25200240529167206 -0.85632994421272013 
		-0.64586088045282608 -0.4943204946044617 -0.78282355419823002 -0.64586088045282608 
		-0.7176421342635444 -0.66345568115086717 -0.64586088045282608 -0.9133852037786534 
		-0.46801938929838283 -0.64586088045282608 -1.0740274014124829 -0.20848714704907501 
		-0.64586088045282608 -1.1933952744598457 0.1176739710710728 -0.64586088045282608 
		-1.2669016644743367 0.49433003097296846 -0.64586088045282608 -1.2917217431847599 
		0.88115007210147667 -0.64586088045282608 -1.2917217431847599 0.88115007210147711 
		1.8600793013256069 -1.2917217431847599 0.80364676751039088 1.9375826059166936 -1.2669016644743367 
		0.49433003097296846 1.9375826059166936 -1.1933952744598457 0.1176739710710728 1.9375826059166936 
		-1.0740274014124829 -0.20848714704907501 1.9375826059166936 -0.9133852037786534 -0.46801938929838283 
		1.9375826059166936 -0.7176421342635444 -0.66345568115086717 1.9375826059166936 -0.4943204946044617 
		-0.78282355419823002 1.9375826059166936 -0.25200240529167206 -0.85632994421272013 
		1.9375826059166936 -7.9095144941193161e-17 -0.88115002292314326 1.9375826059166936 
		0.25200240529167206 -0.85632994421272013 1.9375826059166936 0.4943204946044617 -0.78282355419823002 
		1.9375826059166936 0.7176421342635444 -0.66345568115086717 1.9375826059166936 0.9133852037786534 
		-0.46801938929838283 1.9375826059166936 1.0740274014124829 -0.20848714704907501 1.9375826059166936 
		1.1933952744598457 0.1176739710710728 1.9375826059166936 1.2669016644743367 0.49433003097296846 
		1.9375826059166936 1.2917217431847599 0.80364676751039088 1.9375826059166936 1.2917217431847599 
		0.88115007210147622 1.8600793013256069 1.2917217431847599 0.88115007210147667 -0.64586088045282608;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "1204635E-40C1-FE72-9C65-8F91615213BC";
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
		6.4586087159237957 -2.8319564724153423 6.4586087159238028
		6.3345083604620678 -2.8319564724153423 7.7186207700895491
		5.9669764011409985 -2.8319564724153423 8.9302112676366061
		5.3701368850429985 -2.8319564724153423 10.046819465212021
		4.5669260200602571 -2.8319564724153428 11.025534735984058
		3.5882107492882169 -2.8319564724153428 11.828745600966801
		2.4716025517128029 -2.8319564724153428 12.4255851170648
		1.2600120541657456 -2.8319564724153428 12.793117076385872
		-7.5400052971822976e-16 -2.8319564724153428 12.917217431847599
		-1.2600120541657469 -2.8319564724153428 12.793117076385872
		-2.4716025517128046 -2.8319564724153428 12.4255851170648
		-3.5882107492882196 -2.8319564724153428 11.828745600966801
		-4.5669260200602597 -2.8319564724153428 11.02553473598406
		-5.370136885043002 -2.8319564724153423 10.046819465212021
		-5.966976401141002 -2.8319564724153423 8.9302112676366061
		-6.3345083604620722 -2.8319564724153423 7.7186207700895482
		-6.4586087159238001 -2.8319564724153423 6.4586087159238001
		-6.3345083223716845 -0.89785626677280161 6.4586087159238019
		-5.9669763722992313 0.985424032736677 6.4586087159238019
		-5.370137007062417 2.616229623337416 6.4586087159238019
		-4.566926018893267 3.9138908345839569 6.4586087159238019
		-3.588210671317722 4.8910722938463769 6.4586087159238019
		-2.4716024730223092 5.4879116590831902 6.4586087159238019
		-1.260012026458361 5.8554436091556443 6.4586087159238019
		3.9547572470596585e-16 5.97954400270776 6.4586087159238019
		1.260012026458361 5.8554436091556443 6.4586087159238019
		2.4716024730223092 5.4879116590831902 6.4586087159238019
		3.588210671317722 4.8910722938463769 6.4586087159238019
		4.566926018893267 3.9138908345839569 6.4586087159238019
		5.370137007062417 2.616229623337416 6.4586087159238019
		5.9669763722992313 0.985424032736677 6.4586087159238019
		6.3345083223716845 -0.89785626677280161 6.4586087159238019
		6.4586087159238019 -2.8319564724153423 6.4586087159238019
		6.4586087159238019 -2.8319564724153441 -6.0710921929683721
		6.4586087159238019 -2.4444399494599143 -6.4586087159238019
		6.3345083223716845 -0.89785626677280161 -6.4586087159238019
		5.9669763722992313 0.985424032736677 -6.4586087159238019
		5.370137007062417 2.616229623337416 -6.4586087159238019
		4.566926018893267 3.9138908345839569 -6.4586087159238019
		3.588210671317722 4.8910722938463769 -6.4586087159238019
		2.4716024730223092 5.4879116590831902 -6.4586087159238019
		1.260012026458361 5.8554436091556443 -6.4586087159238019
		3.9547572470596585e-16 5.97954400270776 -6.4586087159238019
		-1.260012026458361 5.8554436091556443 -6.4586087159238019
		-2.4716024730223092 5.4879116590831902 -6.4586087159238019
		-3.588210671317722 4.8910722938463769 -6.4586087159238019
		-4.566926018893267 3.9138908345839569 -6.4586087159238019
		-5.370137007062417 2.616229623337416 -6.4586087159238019
		-5.9669763722992313 0.985424032736677 -6.4586087159238019
		-6.3345083223716845 -0.89785626677280161 -6.4586087159238019
		-6.4586087159238019 -2.4444399494599143 -6.4586087159238019
		-6.4586087159238019 -2.8319564724153414 -6.0710921929683721
		-6.4586087159238019 -2.8319564724153423 6.4586087159238019
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd1_smart_ctl_ofs" -p "lfLegQd1_ikc_gmb";
	rename -uid "1B77E54D-4302-445C-A9DF-A4AF288342EA";
	setAttr ".t" -type "double3" 3.1517253709531783 -1.5872870632249048 8.3043221768230069 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "AB941065-4A4D-6BC3-CF16-5B91F0327628";
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
	rename -uid "301F8790-4BDC-50CC-4F50-5DB87412C9CB";
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
		2.9715950543365039 6.0992054909263869e-17 -2.9715950543365075
		1.6452696978208441e-16 8.6255791249685579e-17 -2.6869293235671599
		-2.9715950543365039 6.0992054909263832e-17 -2.9715950543365053
		-2.6869293235671674 -3.5203803716507661e-32 -1.0433273694450013e-15
		-2.9715950543365039 -6.0992054909263856e-17 2.9715950543365039
		-2.691515480168316e-16 -8.6255791249685665e-17 2.6869293235671625
		2.9715950543365039 -6.0992054909263832e-17 2.9715950543365053
		2.6869293235671674 -5.1437990964235037e-32 -5.3762087567542713e-16
		2.9715950543365039 6.0992054909263869e-17 -2.9715950543365075
		1.6452696978208441e-16 8.6255791249685579e-17 -2.6869293235671599
		-2.9715950543365039 6.0992054909263832e-17 -2.9715950543365053
		;
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "34779146-4A5B-743C-CDF0-24B9BA6679EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3290705182007514e-15 2.6645352591003757e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "5DF9C5B1-46C1-E1F0-B8BD-F5B9BD5BCDC5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 2.5444437451708131e-14 4.3352715071724294e-30 6.5029072607586465e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -115.61555580094887 -1.9925699307207332 90.955063779095127 ;
	setAttr ".radi" 1.7222956575796804;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "2828CBA9-4E91-FDD9-CE04-288AEFB0683D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 83.405895879426694 1.4210854715202004e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.7222956575796804;
createNode ikEffector -n "effector21" -p "lfLegQd1_legLock";
	rename -uid "B214F198-4B1A-18AD-4EC4-F0B91D3FB2A8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "B1CFDE5A-4377-0593-5FF2-0B888B52A09D";
	setAttr ".t" -type "double3" 8.6425410777437879 45.100594343887394 10.375821564859358 ;
	setAttr ".r" -type "double3" -5.7512866602093577 -179.99999930994184 -6.8514301863974365e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "53B399A3-43C3-38FD-76DA-858BA79D8FDC";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "9FFEA2CC-4896-1DD6-E78C-E9AB9316CC1A";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 2.1316282072803006e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "04D7CE5C-4D50-09D8-0986-AE9B6873AE44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.1313408762548547
		-2.1313408762548547 0 0
		0 0 -2.1313408762548547
		2.1313408762548547 0 0
		0 0 2.1313408762548547
		0 2.1313408762548547 0
		2.1313408762548547 0 0
		0 0 -2.1313408762548547
		0 2.1313408762548547 0
		-2.1313408762548547 0 0
		0 -2.1313408762548547 0
		2.1313408762548547 0 0
		0 0 2.1313408762548547
		0 -2.1313408762548547 0
		0 0 -2.1313408762548547
		;
createNode transform -n "lfLegQd1_extraRollG_ofs_loc" -p "lfLegQd1_IK";
	rename -uid "2B15D6FA-46C1-23D3-EE3B-918EF2C2619B";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.16791404314739969 25.076265906990962 -91.581383487788059 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "713B3311-40C6-C902-8677-F68E4764BBA4";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "01D5DC70-42A4-15C2-1DFE-2F9CBB8A0C05";
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
	rename -uid "8F4D8095-469A-E759-6434-C3A7262E3E09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.305739143949201 4.305739143949201 1.0719129521345542e-16
		-4.22300554824779 4.305739143949201 -0.8400080176389072
		-3.9779842481994874 4.305739143949201 -1.6477350846716938
		-3.5800913380416115 4.305739143949201 -2.392140447545148
		-3.0446173459288439 4.305739143949201 -3.0446173459288439
		-2.392140447545148 4.305739143949201 -3.5800913380416115
		-1.6477350846716938 4.305739143949201 -3.9779842481994874
		-0.8400080176389072 4.305739143949201 -4.22300554824779
		2.6365048313731059e-16 4.305739143949201 -4.305739143949201
		0.8400080176389072 4.305739143949201 -4.22300554824779
		1.6477350846716938 4.305739143949201 -3.9779842481994874
		2.392140447545148 4.305739143949201 -3.5800913380416115
		3.0446173459288439 4.305739143949201 -3.0446173459288439
		3.5800913380416115 4.305739143949201 -2.392140447545148
		3.9779842481994874 4.305739143949201 -1.6477350846716938
		4.22300554824779 4.305739143949201 -0.8400080176389072
		4.305739143949201 4.305739143949201 -4.6571607759222821e-16
		4.141861901387986 4.305739143949201 -0.82386749100743639
		3.6751782449390227 4.305739143949201 -1.522308672964422
		2.9767369603252161 4.305739143949201 -1.9889921240997437
		2.1528695719746005 4.305739143949201 -2.1528695719746005
		1.3290020809671641 4.305739143949201 -1.9889921240997437
		0.63056089901017842 4.305739143949201 -1.522308672964422
		0.16387744787485681 4.305739143949201 -0.82386749100743639
		0 4.305739143949201 -4.6571607759222821e-16
		-0.16387744787485681 4.305739143949201 0.82386749100743639
		-0.63056089901017842 4.305739143949201 1.522308672964422
		-1.3290020809671641 4.305739143949201 1.9889921240997437
		-2.1528695719746005 4.305739143949201 2.1528695719746005
		-2.9767369603252161 4.305739143949201 1.9889921240997437
		-3.6751782449390227 4.305739143949201 1.522308672964422
		-4.141861901387986 4.305739143949201 0.82386749100743639
		-4.305739143949201 4.305739143949201 1.0719129521345542e-16
		-4.22300554824779 4.305739143949201 0.8400080176389072
		-3.9779842481994874 4.305739143949201 1.6477350846716938
		-3.5800913380416115 4.305739143949201 2.392140447545148
		-3.0446173459288439 4.305739143949201 3.0446173459288439
		-2.392140447545148 4.305739143949201 3.5800913380416115
		-1.6477350846716938 4.305739143949201 3.9779842481994874
		-0.8400080176389072 4.305739143949201 4.22300554824779
		-5.026670199194213e-16 4.305739143949201 4.305739143949201
		0.8400080176389072 4.305739143949201 4.22300554824779
		1.6477350846716938 4.305739143949201 3.9779842481994874
		2.392140447545148 4.305739143949201 3.5800913380416115
		3.0446173459288439 4.305739143949201 3.0446173459288439
		3.5800913380416115 4.305739143949201 2.392140447545148
		3.9779842481994874 4.305739143949201 1.6477350846716938
		4.22300554824779 4.305739143949201 0.8400080176389072
		4.305739143949201 4.305739143949201 -4.6571607759222821e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe01_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "AB68BC42-4004-78F6-AD40-6E81C2DB15C0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe01_4_ctl" -p "lfLegQd1_toe01_4_ctl_ofs";
	rename -uid "DE49C181-48C4-6D50-8657-8BA7087FAFC2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_4_ctlShape1" -p "lfLegQd1_toe01_4_ctl";
	rename -uid "465CF002-4D31-77EE-1D23-A68EBC8A5730";
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
		7.2378556585943308e-15 -0.36410507093508121 -0.36410507093507832
		7.2409511861962121e-15 -3.3229628483116875e-15 -0.32922540725300858
		7.2378556585943308e-15 0.3641050709350746 -0.3641050709350781
		7.2303823938751673e-15 0.3292254072530062 -1.2783733278392468e-16
		7.2229091291560038e-15 0.3641050709350746 0.36410507093507793
		7.2198136015541225e-15 -3.2698248720400687e-15 0.32922540725300886
		7.2229091291560038e-15 -0.36410507093508121 0.3641050709350781
		7.2303823938751673e-15 -0.3292254072530128 -6.5873876990176629e-17
		7.2378556585943308e-15 -0.36410507093508121 -0.36410507093507832
		7.2409511861962121e-15 -3.3229628483116875e-15 -0.32922540725300858
		7.2378556585943308e-15 0.3641050709350746 -0.3641050709350781
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe02_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "51D3F75A-46BB-85E2-E9E2-A3ACE99F5250";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe02_4_ctl" -p "lfLegQd1_toe02_4_ctl_ofs";
	rename -uid "92EEDB13-47F6-E06F-ADDF-438A421CDA83";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_4_ctlShape1" -p "lfLegQd1_toe02_4_ctl";
	rename -uid "DB181D8F-4026-236D-86A4-0695685168C9";
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
		7.1129006223201653e-15 -0.36410507093507766 -0.36410507093507877
		7.1159961499220467e-15 2.2975083048881301e-16 -0.32922540725300903
		7.1129006223201653e-15 0.36410507093507816 -0.36410507093507855
		7.1054273576010019e-15 0.32922540725300975 -5.5630716309971649e-16
		7.0979540928818376e-15 0.36410507093507816 0.36410507093507749
		7.0948585652799562e-15 2.8288880676043207e-16 0.32922540725300842
		7.0979540928818376e-15 -0.36410507093507766 0.36410507093507766
		7.1054273576010019e-15 -0.32922540725300925 -4.943437073059685e-16
		7.1129006223201653e-15 -0.36410507093507766 -0.36410507093507877
		7.1159961499220467e-15 2.2975083048881301e-16 -0.32922540725300903
		7.1129006223201653e-15 0.36410507093507816 -0.36410507093507855
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe03_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "115531B2-4274-43DD-BC72-29A84EE6BAF1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe03_4_ctl" -p "lfLegQd1_toe03_4_ctl_ofs";
	rename -uid "8F7487F5-4F0E-60A5-1733-80ACE090911A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_4_ctlShape1" -p "lfLegQd1_toe03_4_ctl";
	rename -uid "CB112C00-4E2A-5B45-384C-64A3A980618D";
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
		1.3242830099332951e-16 -0.36410507093508149 -0.3641050709350781
		1.3552382859521142e-16 -3.5728729208600196e-15 -0.32922540725300836
		1.3242830099332951e-16 0.36410507093507433 -0.36410507093507788
		1.2495503627416603e-16 0.32922540725300592 8.6397582373971237e-17
		1.1748177155500256e-16 0.36410507093507433 0.36410507093507816
		1.1438624395312065e-16 -3.5197349445884008e-15 0.32922540725300908
		1.1748177155500256e-16 -0.36410507093508149 0.36410507093507832
		1.2495503627416603e-16 -0.32922540725301308 1.483610381677193e-16
		1.3242830099332951e-16 -0.36410507093508149 -0.3641050709350781
		1.3552382859521142e-16 -3.5728729208600196e-15 -0.32922540725300836
		1.3242830099332951e-16 0.36410507093507433 -0.36410507093507788
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe04_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "90366E65-48D4-A9A8-A8CE-238DF0B34225";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe04_4_ctl" -p "lfLegQd1_toe04_4_ctl_ofs";
	rename -uid "A1B42CF4-4B57-B2B3-8CCD-7D96636F9469";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_4_ctlShape1" -p "lfLegQd1_toe04_4_ctl";
	rename -uid "3B36F665-4A51-D8CB-CCCE-AD871512694C";
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
		-7.0042378156762131e-15 -0.36410507093508077 -0.36410507093507855
		-7.0011422880743317e-15 -2.9346045737082268e-15 -0.32922540725300881
		-7.0042378156762131e-15 0.36410507093507505 -0.36410507093507832
		-7.0117110803953766e-15 0.32922540725300664 -3.4207224794182063e-16
		-7.01918434511454e-15 0.36410507093507505 0.36410507093507771
		-7.0222798727164222e-15 -2.881466597436608e-15 0.32922540725300864
		-7.01918434511454e-15 -0.36410507093508077 0.36410507093507788
		-7.0117110803953766e-15 -0.32922540725301236 -2.8010879214807254e-16
		-7.0042378156762131e-15 -0.36410507093508077 -0.36410507093507855
		-7.0011422880743317e-15 -2.9346045737082268e-15 -0.32922540725300881
		-7.0042378156762131e-15 0.36410507093507505 -0.36410507093507832
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "C0F986E5-4768-C25A-C881-88A2F7371532";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "2B159518-4F2E-F352-5527-E998FD4871C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.2206059110180068 4.2206059110180068 4.2206059110180068 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "C500539A-4C07-EF18-4D4B-F684BBB802A9";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "80D17F26-4DF9-FFFC-A713-AFAD72CA0EF1";
	setAttr ".t" -type "double3" 5.4537835835963279e-15 74.764644948749222 64.480367481934607 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "B556967C-4A16-EB64-C7C7-108BFD280316";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "B0C4C8CA-4B4C-42EF-48C3-E5B001D84BF2";
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "86EBCD35-4D57-81AA-B852-C4AB9BF6EEE8";
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
	rename -uid "D85A0B2F-4762-6DC7-B62A-11921AEB6738";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.7091218599862206 9.7091218599862312 1.9927994318769491e-16
		5.3756059276562405e-16 8.7790307073009828 2.8182439836497835e-16
		-9.7091218599862206 9.7091218599862241 1.9927994318769481e-16
		-8.7790307073010077 3.4088738150973113e-15 -1.1502173545477418e-31
		-9.7091218599862206 -9.7091218599862206 -1.9927994318769488e-16
		-8.7940151020436721e-16 -8.7790307073009899 -2.8182439836497865e-16
		9.7091218599862206 -9.7091218599862241 -1.9927994318769481e-16
		8.7790307073010077 1.7565739950966176e-15 -1.6806385573156023e-31
		9.7091218599862206 9.7091218599862312 1.9927994318769491e-16
		5.3756059276562405e-16 8.7790307073009828 2.8182439836497835e-16
		-9.7091218599862206 9.7091218599862241 1.9927994318769481e-16
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "549BFC83-46C5-E494-D7A9-1497973BC770";
	setAttr ".t" -type "double3" 2.4015078120602833e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "16DCF652-44F5-2078-D0BE-169D10CE9B47";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "02EAD56A-4081-27FB-1287-4B87E441D217";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4095970144686119 4.4095970144686127 2.7000994346493558e-16
		3.8185172402370433e-16 6.2361119024614178 3.8185172402370433e-16
		-4.4095970144686119 4.4095970144686119 2.7000994346493553e-16
		-6.2361119024614204 3.2328114223843975e-16 1.979526080335027e-32
		-4.4095970144686119 -4.4095970144686119 -2.7000994346493553e-16
		-6.2467559434178129e-16 -6.2361119024614213 -3.8185172402370458e-16
		4.4095970144686119 -4.4095970144686119 -2.7000994346493553e-16
		6.2361119024614204 -8.5041637830582238e-16 -5.2072984781735495e-32
		4.4095970144686119 4.4095970144686127 2.7000994346493558e-16
		3.8185172402370433e-16 6.2361119024614178 3.8185172402370433e-16
		-4.4095970144686119 4.4095970144686119 2.7000994346493553e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "0B15C969-4076-DFCB-FD5E-C79F1F9ABA86";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "4AAA862F-4D7C-D592-B5A6-76A45875254C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "3A7F8AC2-4205-1CE2-C8A7-A3A43A9A5F3B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.3341290439118277e-07 0.89645436326177619 -0.19182042603067276
		-1.6269950932451596e-07 0.9579012587723893 -0.35236060233231009
		-1.7155496517280185e-07 0.88174537982106982 -0.46968843510813391
		-1.5832439681051507e-07 0.79263815906448343 -0.50366752072672305
		-1.396841411264827e-07 0.66709696280052022 -0.50489742267123661
		5.7838428556698616e-08 -0.66320785202008525 -0.51793032480252932
		7.6478684241060109e-08 -0.78874904828403924 -0.51916022674703333
		8.9709252582317682e-08 -0.87785626904062974 -0.48692707230227128
		1.2175728757494662e-07 -0.9579012587723893 -0.36758427043722364
		1.3337417345621423e-07 -0.90034347404221327 -0.20609844807068839
		1.715549652130824e-07 -0.16483623371751868 0.79860487340867792
		1.6337012988576785e-07 -0.082627932998948883 0.88171845711354246
		1.53546573495923e-07 -0.00029152193793949803 0.91582013060234269
		1.3348856592462248e-07 0.082844988092546687 0.88369007135767108
		1.1179183729197511e-07 0.16610960846548573 0.8025481018969407
		-1.3341290439118277e-07 0.89645436326177619 -0.19182042603067276
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "5C7169DD-4C3A-6876-4B74-28A580428429";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4561850914083882e-15 74.764644948749222 64.480367481934607 1;
	setAttr ".radi" 0.7503031475285088;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "67DE7172-457F-F628-4D0E-21BA1A7CE891";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.4015078120602833e-18 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.7515157376425439;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "2405D0D5-4D4F-DE2E-833A-ADA1F61FD42D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.4537835835963279e-15 9.31156133663319 15.876210772554671 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.7515157376425439;
createNode ikEffector -n "effector33" -p "neckQd0_two_ikj";
	rename -uid "EF23E6C2-47F8-4762-3D40-E0BED426F911";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "A5DCCBBC-4C1B-79D1-EE2C-BDA3BF9489A5";
	setAttr ".t" -type "double3" -5.4561850914083819e-15 9.31156133663319 15.876210772554671 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "EB59C4C2-45F9-6514-0CBF-98AE1E64788F";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "0F54F6FC-41AC-F745-04A8-099902643F3D";
	setAttr ".t" -type "double3" -2.7396018954007574e-15 4.2747257873862594 7.3071126646285762 ;
	setAttr ".r" -type "double3" -40.618250517786102 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "40F8B44F-4F74-AC6D-C6C1-678C02A648CF";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "D0E96815-430F-0C49-8512-72B02EEE8DEE";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "0E1BC60C-4D94-957B-346D-CCB91C63F940";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "A9F27059-44EE-C4D7-8A04-32A12470FACE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4095970144686119 4.4095970144686127 2.7000994346493558e-16
		3.8185172402370433e-16 6.2361119024614178 3.8185172402370433e-16
		-4.4095970144686119 4.4095970144686119 2.7000994346493553e-16
		-6.2361119024614204 3.2328114223843975e-16 1.979526080335027e-32
		-4.4095970144686119 -4.4095970144686119 -2.7000994346493553e-16
		-6.2467559434178129e-16 -6.2361119024614213 -3.8185172402370458e-16
		4.4095970144686119 -4.4095970144686119 -2.7000994346493553e-16
		6.2361119024614204 -8.5041637830582238e-16 -5.2072984781735495e-32
		4.4095970144686119 4.4095970144686127 2.7000994346493558e-16
		3.8185172402370433e-16 6.2361119024614178 3.8185172402370433e-16
		-4.4095970144686119 4.4095970144686119 2.7000994346493553e-16
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "040E93E8-4841-E4B4-97DB-42BF45F90F82";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 3.944304526105059e-31 -1.0658141036401503e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -40.618250517786102 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 40.618250517786102 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.75906397665034431 -0.65101603617097292 0
		 0 0.65101603617097292 0.75906397665034431 0 2.714181688195571e-15 79.039370736135467 71.787480146563183 1;
	setAttr ".radi" 0.7503031475285088;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "9E3C548C-4A32-2C6C-7280-6186CB2C3264";
	setAttr ".t" -type "double3" -5.4537835835963216e-15 9.31156133663319 15.876210772554671 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "040F0954-4518-46C9-B3E2-E1AA3F79A51F";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "218DC68D-41C2-F87C-5E45-14A2E49D42A0";
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
	rename -uid "54ADD167-4E85-C7FA-F814-3A8F3AD57902";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.14267283757324 22.364914133310183 19.360537192493279
		9.6490650263473702e-16 26.980360343719308 19.360537192493279
		-11.14267283757324 22.364914133310183 19.360537192493279
		-15.758119047982365 -1.9565325739602286 -3.37539718388261
		-11.14267283757324 -13.099205411533475 -3.3753971838826109
		-1.5785015625074863e-15 -17.714651621942604 -3.3753971838826109
		11.14267283757324 -13.099205411533475 -3.3753971838826109
		15.758119047982365 -1.9565325739602315 -3.37539718388261
		11.14267283757324 22.364914133310183 19.360537192493279
		9.6490650263473702e-16 26.980360343719308 19.360537192493279
		-11.14267283757324 22.364914133310183 19.360537192493279
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "57DAB26C-4A0A-4FAA-9F14-A4B91DD22522";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "EA3CE016-4DF9-1979-86B0-0BA320C3B57E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "8443068C-432D-F6AA-642A-41BDEFECB358";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.3341290439118277e-07 -0.89645436326177619 0.19182042603067287
		-1.6269950932451596e-07 -0.9579012587723893 0.3523606023323102
		-1.7155496517280185e-07 -0.88174537982106982 0.46968843510813396
		-1.5832439681051507e-07 -0.79263815906448343 0.50366752072672305
		-1.396841411264827e-07 -0.66709696280052011 0.50489742267123661
		5.7838428556698616e-08 0.66320785202008525 0.51793032480252921
		7.6478684241060109e-08 0.78874904828403924 0.51916022674703322
		8.9709252582317682e-08 0.87785626904062974 0.48692707230227117
		1.2175728757494662e-07 0.9579012587723893 0.36758427043722353
		1.3337417345621423e-07 0.90034347404221327 0.20609844807068828
		1.715549652130824e-07 0.16483623371751857 -0.79860487340867792
		1.6337012988576785e-07 0.082627932998948786 -0.88171845711354246
		1.53546573495923e-07 0.00029152193793938587 -0.91582013060234269
		1.3348856592462248e-07 -0.082844988092546798 -0.88369007135767108
		1.1179183729197511e-07 -0.16610960846548584 -0.8025481018969407
		-1.3341290439118277e-07 -0.89645436326177619 0.19182042603067287
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "F52AB9C7-4036-CD7B-C5B8-E5994801F292";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 84.076206285382412 80.356578254489278 1;
	setAttr ".radi" 0.7503031475285088;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "CA32281E-458F-0F56-F52F-12BB188B0A47";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "EC72F24F-4462-BFB2-B5F4-CEAD794221FF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "7DC2CD27-4DE3-815C-912F-DABC89026C4F";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "501BD752-4392-DC95-1452-9EBA586F5D44";
	setAttr ".t" -type "double3" 0 0.46642539681555206 7.6532570023914701 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "8D86F6EB-4F4B-7E56-4F6A-0692F587903F";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "72E6A31B-4312-A820-59F6-89A1DC1205D8";
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
	rename -uid "BC837898-49D9-42DC-3023-63AF0752B284";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-1.4068184016159542 1.8757578688212719 3.502271771648142e-17
		-1.3797867722084545 1.8757578688212719 -0.27445664895423022
		-1.2997307209308895 1.8757578688212719 -0.53836611104551146
		-1.1697267775500528 1.8757578688212719 -0.78158641021845465
		-0.9947708314264655 1.8757578688212719 -0.9947708314264655
		-0.78158641021845465 1.8757578688212719 -1.1697267775500528
		-0.53836611104551146 1.8757578688212719 -1.2997307209308895
		-0.27445664895423022 1.8757578688212719 -1.3797867722084545
		8.6142782661076433e-17 1.8757578688212719 -1.4068184016159542
		0.27445664895423022 1.8757578688212719 -1.3797867722084545
		0.53836611104551146 1.8757578688212719 -1.2997307209308895
		0.78158641021845465 1.8757578688212719 -1.1697267775500528
		0.9947708314264655 1.8757578688212719 -0.9947708314264655
		1.1697267775500528 1.8757578688212719 -0.78158641021845465
		1.2997307209308895 1.8757578688212719 -0.53836611104551146
		1.3797867722084545 1.8757578688212719 -0.27445664895423022
		1.4068184016159542 1.8757578688212719 -1.5216387383937627e-16
		1.3532746283557506 1.8757578688212719 -0.26918303875217353
		1.2007946165212098 1.8757578688212719 -0.49738541571323275
		0.97259220601898611 1.8757578688212719 -0.64986536046544474
		0.70340920080797709 1.8757578688212719 -0.70340920080797709
		0.4342261620558035 1.8757578688212719 -0.64986536046544474
		0.20602378509474426 1.8757578688212719 -0.49738541571323275
		0.053543840342532338 1.8757578688212719 -0.26918303875217353
		0 1.8757578688212719 -1.5216387383937627e-16
		-0.053543840342532338 1.8757578688212719 0.26918303875217353
		-0.20602378509474426 1.8757578688212719 0.49738541571323275
		-0.4342261620558035 1.8757578688212719 0.64986536046544474
		-0.70340920080797709 1.8757578688212719 0.70340920080797709
		-0.97259220601898611 1.8757578688212719 0.64986536046544474
		-1.2007946165212098 1.8757578688212719 0.49738541571323275
		-1.3532746283557506 1.8757578688212719 0.26918303875217353
		-1.4068184016159542 1.8757578688212719 3.502271771648142e-17
		-1.3797867722084545 1.8757578688212719 0.27445664895423022
		-1.2997307209308895 1.8757578688212719 0.53836611104551146
		-1.1697267775500528 1.8757578688212719 0.78158641021845465
		-0.9947708314264655 1.8757578688212719 0.9947708314264655
		-0.78158641021845465 1.8757578688212719 1.1697267775500528
		-0.53836611104551146 1.8757578688212719 1.2997307209308895
		-0.27445664895423022 1.8757578688212719 1.3797867722084545
		-1.6423689170809606e-16 1.8757578688212719 1.4068184016159542
		0.27445664895423022 1.8757578688212719 1.3797867722084545
		0.53836611104551146 1.8757578688212719 1.2997307209308895
		0.78158641021845465 1.8757578688212719 1.1697267775500528
		0.9947708314264655 1.8757578688212719 0.9947708314264655
		1.1697267775500528 1.8757578688212719 0.78158641021845465
		1.2997307209308895 1.8757578688212719 0.53836611104551146
		1.3797867722084545 1.8757578688212719 0.27445664895423022
		1.4068184016159542 1.8757578688212719 -1.5216387383937627e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "1D1B6451-4080-9185-B372-E7A7FCDA0F5B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "CC1E3141-464A-9362-879C-36AEEFA2CD68";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2.8136368032319079 2.8136368032319079 2.8136368032319079 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "F03B85D9-490B-B6CE-5DB6-E9B9DC6F7E2B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "3B9629DB-4174-05FC-8F1D-928874D2048B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 2.8136368032319079 2.8136368032319079 2.8136368032319079 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "C61FC383-44B6-49D0-AEA2-919F4D780D74";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "718F0CE1-4A0D-4C1F-B303-278B60AEDF91";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "B22A43E5-4CDC-BDA1-F7F4-ABB12DE2B15B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 16.463663402465219 -59.32678251382152 61.495511119113225 ;
	setAttr ".radi" 1.7356720056739781;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "3A9ADD44-4A69-0862-00D1-D1B9E6CCCC24";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.891446251564215 73.483160211188761 47.135392040379244 ;
	setAttr ".radi" 1.7356720056739781;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "724C7754-4CFF-7200-8678-C98087D7A165";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.101642031291163 0 ;
	setAttr ".radi" 1.7356720056739781;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "6D4252EE-4408-5839-DA70-C7B060579F3F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.4243773623719114 36.322898091884916 -1.9524086399156007 ;
	setAttr ".radi" 1.7356720056739781;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "75500F3B-46EF-0352-0AA8-0FA961657A66";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -83.426698592266135 72.881366480966548 -83.124837083076173 ;
	setAttr ".radi" 1.7356720056739781;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "C1091FA7-414B-C841-9C73-CABED11E60E4";
	setAttr ".t" -type "double3" -4.0491729626944633 1.7763568394002505e-14 -5.5511151231257827e-15 ;
	setAttr ".r" -type "double3" -0.020161363216770048 -10.481460940406022 -0.55862942897287204 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "64BA73A9-4ECC-B5F0-20CB-2F91FC140BB5";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "ABB9400D-4495-D3E1-BE9F-B4AE3452305A";
	setAttr ".t" -type "double3" -4.049172962694449 3.5527136788005009e-15 -4.8849813083506888e-15 ;
	setAttr ".r" -type "double3" -0.020161363216731138 -10.481460940406027 -0.55862942897287526 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "D24E00BC-452D-07A1-C1CC-01AE088663F4";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "1250174F-4204-C569-C413-F49596CF0413";
	setAttr ".t" -type "double3" -4.0491729626944561 0 -4.6629367034256575e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "B389B51D-425C-F527-82F6-1485195BB11E";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".r" -type "double3" -7.8998269305022529e-14 2.0286615942360914e-14 8.152500879073582e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.6697912077683464e-14 -4.7708320221952752e-15 6.3611093629270335e-15 ;
	setAttr ".radi" 1.7356720056739781;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "C284693C-461A-49BF-DCB2-AF88D8382BCA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.2978480595959851 -7.1054273576010019e-15 -6.2172489379008766e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.8279193958649524 11.909019942471721 17.964714292047809 ;
	setAttr ".radi" 1.7356720056739781;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "7F33DCDC-4227-3299-E927-06B71A32AD20";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "E5F5D357-41F9-EF35-5EB8-0F9913913BA4";
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
	rename -uid "F09AD64A-4857-0BB3-108B-C6B2330B6F39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		-1.0643165068972552e-31 8.1233927304219975 -3.1542913667516731e-15
		-1.8439726386462501e-16 8.9840225607823605 8.9840225607823605
		-2.6077711142184358e-16 8.1372580564905254e-16 8.1233927304219833
		-1.8439726386462496e-16 -8.9840225607823605 8.9840225607823658
		-1.5551246480560209e-31 -8.1233927304219975 -1.6253890546651368e-15
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "8BE12D08-4728-484C-4375-7EAAC330D1D5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "549E0D1E-4DD4-BDBC-1D5A-0892238C6033";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "4C219CFF-4A3D-FDB3-B1FB-B3BAE4B0A604";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		-1.0643165068972552e-31 8.1233927304219975 -3.1542913667516731e-15
		-1.8439726386462501e-16 8.9840225607823605 8.9840225607823605
		-2.6077711142184358e-16 8.1372580564905254e-16 8.1233927304219833
		-1.8439726386462496e-16 -8.9840225607823605 8.9840225607823658
		-1.5551246480560209e-31 -8.1233927304219975 -1.6253890546651368e-15
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "4C810BE7-4692-4B52-4F02-978F25A61034";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "480C616B-48F8-E84C-CB12-6F8638F98303";
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
createNode nurbsCurve -n "rtLegQd0_palm_fkcShape1" -p "rtLegQd0_palm_fkc";
	rename -uid "826C10AA-4EA9-2BA2-8AA3-AA9FA1378F42";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		-1.0643165068972552e-31 8.1233927304219975 -3.1542913667516731e-15
		-1.8439726386462501e-16 8.9840225607823605 8.9840225607823605
		-2.6077711142184358e-16 8.1372580564905254e-16 8.1233927304219833
		-1.8439726386462496e-16 -8.9840225607823605 8.9840225607823658
		-1.5551246480560209e-31 -8.1233927304219975 -1.6253890546651368e-15
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "F5621D22-42EC-2989-9DD6-4DAC2E349592";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "8043089A-44AD-4B69-AE3D-46BF06900155";
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
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "A7EBA6D9-4BB3-5266-17F3-58860ECFD345";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		-1.0643165068972552e-31 8.1233927304219975 -3.1542913667516731e-15
		-1.8439726386462501e-16 8.9840225607823605 8.9840225607823605
		-2.6077711142184358e-16 8.1372580564905254e-16 8.1233927304219833
		-1.8439726386462496e-16 -8.9840225607823605 8.9840225607823658
		-1.5551246480560209e-31 -8.1233927304219975 -1.6253890546651368e-15
		1.8439726386462506e-16 -8.9840225607823605 -8.9840225607823712
		2.6077711142184329e-16 -4.9741434527640792e-16 -8.1233927304219744
		1.8439726386462496e-16 8.9840225607823605 -8.9840225607823658
		;
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "C0E02891-4CC2-9AC3-0837-8486C4081B7E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -1.1324274851176597e-14 ;
	setAttr ".r" -type "double3" 88.068914751611587 0.59035746470856665 -73.0072868790363 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "A104A9A6-4F8A-B4FC-B8B1-4CAC6CB663F5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "6DF3011A-4C14-0A4B-FA7E-1E867150FF33";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "399715D5-4E67-82C2-843B-06928B1A812F";
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "74411CF2-46D4-7475-D948-4099FF06F241";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "76A5C52C-457D-5211-B8B6-C293A00AC165";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4920112803911803 17.356720056739782 4.4920112803911856
		-2.4870717263820396e-16 17.356720056739782 4.0616963652109872
		4.4920112803911803 17.356720056739782 4.4920112803911829
		4.0616963652109987 17.356720056739782 1.5771456833758366e-15
		4.4920112803911803 17.356720056739782 -4.4920112803911803
		4.0686290282452627e-16 17.356720056739782 -4.0616963652109916
		-4.4920112803911803 17.356720056739782 -4.4920112803911829
		-4.0616963652109987 17.356720056739782 8.1269452733256839e-16
		-4.4920112803911803 17.356720056739782 4.4920112803911856
		-2.4870717263820396e-16 17.356720056739782 4.0616963652109872
		4.4920112803911803 17.356720056739782 4.4920112803911829
		;
	setAttr ".adot" yes;
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "ECBBD144-47D8-8C39-6297-20A45168A792";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 106.40633875369745 43.815283468455789 19.478836570377585 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "423213A8-42B2-5744-857D-1E8E33C85D57";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -84.526852858163579 2.8421709430404007e-14 5.3290705182007514e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635183e-15 -1.1131941385122306e-14 1.2722218725854064e-14 ;
	setAttr ".radi" 2.6035080085109672;
createNode ikEffector -n "effector39" -p "rtLegQd0_autoAim";
	rename -uid "C24BC1F4-40E5-62CD-CD7A-E7A5654341E8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "81C1348C-4348-7B1B-88D5-2CA925FE0B6B";
	setAttr ".t" -type "double3" -9.2393241063461851 2.7410231904517524 -42.132758878148216 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "2E02E0A7-4508-AD59-B26B-03BCFAC49651";
	setAttr ".t" -type "double3" -1.1833083392743227 -0.14267325602308478 3.8697831715913154 ;
	setAttr ".r" -type "double3" -55.636666294289633 68.555555160383435 36.302173127651422 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "A67ADA43-4A3E-6B4B-017A-458C33529527";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "7E4017D3-4099-57E1-517E-0DBD1A87424F";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "BACC0851-4F4C-7533-D67C-55AF703375BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.2198631932312531e-17 -4.4920112803911803 -4.4920112803911856
		1.3038855571092164e-16 -2.4870717263820396e-16 -4.0616963652109872
		9.2198631932312482e-17 4.4920112803911803 -4.4920112803911829
		-5.3215825344862762e-32 4.0616963652109987 -1.5771456833758366e-15
		-9.2198631932312507e-17 4.4920112803911803 4.4920112803911803
		-1.3038855571092179e-16 4.0686290282452627e-16 4.0616963652109916
		-9.2198631932312482e-17 -4.4920112803911803 4.4920112803911829
		-7.7756232402801046e-32 -4.0616963652109987 -8.1269452733256839e-16
		9.2198631932312531e-17 -4.4920112803911803 -4.4920112803911856
		1.3038855571092164e-16 -2.4870717263820396e-16 -4.0616963652109872
		9.2198631932312482e-17 4.4920112803911803 -4.4920112803911829
		;
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "CACFCF51-4C90-C7AE-5C55-16A8B1613579";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.2978480595959887 -7.1054273576010019e-15 -6.2172489379008766e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93077249764383485 -0.30179270977662115 0.20635822725431027 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "A555B9EC-4EFF-836C-5FAE-8D9CD2BF360E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.0658141036401503e-14 -5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "C1C29D9A-43C2-FDDD-7505-169F60D1F6A6";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
createNode ikHandle -n "rtLegQd0_toe01_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "08AC4736-47F5-49BC-CE3B-64A264F4367A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.14799494840417537 -2.9083845431106425 0.15054423912534531 ;
	setAttr ".r" -type "double3" 1.2588337848233337 9.8015477227642833 5.8191809876346152 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93077249764383496 -0.30179270977662126 0.20635822725431002 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe02_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "92D8125E-40B5-DC75-B983-D0AD6405A71B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1261407488730129 -0.90664738498783848 0.83203766487713526 ;
	setAttr ".r" -type "double3" 0.19618122890514153 16.845319232709116 0.90378530833413639 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93077249764383496 -0.30179270977662126 0.20635822725431002 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe03_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "75CBAFEF-4E2A-A129-4FCE-AD84012DEFFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.9561895989661906 0.90366310654807336 0.73817928403155308 ;
	setAttr ".r" -type "double3" 0.079202601218800614 17.992486867594405 0.3642380408452669 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93077249764383496 -0.30179270977662126 0.20635822725431002 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe04_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "5147CC6F-4E44-B54B-7929-63974E64857D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45462421913438789 2.7873787053356125 0.1054485952557096 ;
	setAttr ".r" -type "double3" -1.3348035966499694 0.42358008028007738 -6.0425255547349055 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93077249764383496 -0.30179270977662126 0.20635822725431002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "3CF99474-4950-55D1-5B2C-2B91676641F2";
	setAttr ".t" -type "double3" 0.14799494840417537 -2.9083845431106425 0.15054423912534531 ;
	setAttr ".r" -type "double3" 4.7440372240299391 -37.395996641033328 14.392371809222272 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs1" -p "rtLegQd0_toe01_3_ikc_ofs";
	rename -uid "5764562E-4775-94A9-DC39-C89426008029";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_3_ikc" -p "rtLegQd0_toe01_3_ikc_ofs1";
	rename -uid "217DE033-435C-DCFA-7C1B-F0942995314C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_3_ikcShape1" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "1180BA43-43C8-BD0E-A8A9-0C95C699CA10";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 0 0
		0 0 0.93004410904702184
		-0.10739942725072976 0 0.93004410904702184
		-0.10739942725072976 0 1.144842963548482
		0.10739942725072976 0 1.144842963548482
		0.10739942725072976 0 0.93004410904702184
		0 0 0.93004410904702184
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe01_3_1_ikj_ikh" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "B18604B0-4475-2AF0-2435-6DA0A593EB96";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.2819326311181776 0.6849368177891364 1.7842831282143621 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.65052155585286486 0.0018515620774366877 0.7594855344828122 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "54EB3C47-42B7-CD0E-2416-C39FDF7611D2";
	setAttr ".t" -type "double3" -1.1261407488730057 -0.90664738498783848 0.83203766487713526 ;
	setAttr ".r" -type "double3" 2.0361965240517077 -38.172461712186333 5.9819943613555173 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs1" -p "rtLegQd0_toe02_3_ikc_ofs";
	rename -uid "4C8B9B38-43C0-ACA6-47DD-79914654E987";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_3_ikc" -p "rtLegQd0_toe02_3_ikc_ofs1";
	rename -uid "06E53570-4F89-9D48-2A5E-29A6B481F36E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_3_ikcShape1" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "6D99F1F7-441F-83CF-FCC3-9F8ABA6E0CFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-7.3511632067203064e-15 0 0
		-7.3511632067203064e-15 0 0.93004410904702184
		-0.10739942725073712 0 0.93004410904702184
		-0.10739942725073712 0 1.144842963548482
		0.10739942725072241 0 1.144842963548482
		0.10739942725072241 0 0.93004410904702184
		-7.3511632067203064e-15 0 0.93004410904702184
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe02_3_1_ikj_ikh" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "E7B1FADF-44AB-C319-B17F-F48D733D9BE8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7395920112475487 0.59576380576115895 1.9515993259894344 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62493615885809961 -0.176237291495111 0.76052298744886826 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "E5C6E6EB-4528-81A0-D18F-DA9A8B13ED4C";
	setAttr ".t" -type "double3" -0.9561895989661906 0.90366310654806981 0.73817928403155308 ;
	setAttr ".r" -type "double3" -2.1321080104986292 -32.10087752939711 -7.0430200492388391 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs1" -p "rtLegQd0_toe03_3_ikc_ofs";
	rename -uid "0F1A25B0-4121-55F1-9079-CDA33E91B32F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_toe03_3_ikc" -p "rtLegQd0_toe03_3_ikc_ofs1";
	rename -uid "1324EE44-4C87-306E-1354-AA970631409A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_3_ikcShape1" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "E597E2A5-4C74-FE1A-DB73-F2B5F33A00C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 3.6755816033601532e-15 -3.6755816033601532e-15
		0 3.6755816033601532e-15 0.93004410904701817
		-0.10739942725072976 3.6755816033601532e-15 0.93004410904701817
		-0.10739942725072976 3.6755816033601532e-15 1.1448429635484783
		0.10739942725072976 3.6755816033601532e-15 1.1448429635484783
		0.10739942725072976 3.6755816033601532e-15 0.93004410904701817
		0 3.6755816033601532e-15 0.93004410904701817
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe03_3_1_ikj_ikh" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "5072093E-401A-45E5-7BFD-A99B95901C6D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1044582939048517 -0.16768958982558502 1.7642269172896583 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.64151280876180772 -0.43739030465443957 0.63019920468756008 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "01B14AC6-4BEC-C6C7-4AAA-89A44432C182";
	setAttr ".t" -type "double3" 0.45462421913439499 2.7873787053356089 0.10544859525571049 ;
	setAttr ".r" -type "double3" -0.35516173249611716 -42.39858285282628 -0.9435997233784128 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs1" -p "rtLegQd0_toe04_3_ikc_ofs";
	rename -uid "BB6A71A1-4265-5DBD-6436-C397B63CC046";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe04_3_ikc" -p "rtLegQd0_toe04_3_ikc_ofs1";
	rename -uid "D0BDBFC3-4D70-57AA-8BAD-F4966366F9A5";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_3_ikcShape1" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "CD41FAFC-45F8-98D4-9569-25879F7C64A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -6.9825594330413496e-15 -3.3069778296811964e-15
		0 -6.9825594330413496e-15 0.93004410904701851
		-0.10739942725072976 -6.9825594330413496e-15 0.93004410904701851
		-0.10739942725072976 -6.9825594330413496e-15 1.1448429635484785
		0.10739942725072976 -6.9825594330413496e-15 1.1448429635484785
		0.10739942725072976 -6.9825594330413496e-15 0.93004410904701851
		0 -6.9825594330413496e-15 0.93004410904701851
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe04_3_1_ikj_ikh" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "39D64573-47D0-419A-9483-7584C04C56BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.0035800805149009 0.54167906844214997 2.1266114732123249 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.54444196957126201 -0.32188747406560525 0.77457820509554087 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "9E4E34BA-44BD-B836-0A6D-71B101922C03";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "78514A02-4772-369B-194C-76B127F2209C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 16.463663402465219 -59.32678251382152 61.495511119113225 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "8BCB6F7D-4C2A-52B0-4CC9-438D77806795";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.595093563527801 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -2.4987297436390969e-15 -6.0971633888818219e-06 4.4092774381196169e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.891446251564215 73.483160211188761 47.135392040379244 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "1D306992-44D3-A934-6C59-8E98E5F2F277";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -29.217859088569117 5.3290705182007514e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -2.7060941506358266e-20 1.0592143541605996e-05 3.3697830579220644e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -52.101642031291163 0 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "DAF5311A-4B0A-F9D5-2E7F-07B23CC08200";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -37.546108196548907 -9.5923269327613525e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 5.1889340194226381e-07 -5.2770194689090146e-08 -9.6551022755081131e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.4243773623719114 36.322898091884916 -1.9524086399156007 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "621CE2DB-4E30-576C-59AF-C7B7155284AF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.178326986865056 1.645296449697347 3.0103177405399464 ;
	setAttr ".r" -type "double3" 1.1227216554493984e-06 -9.8506749647915773e-22 2.2779685243449686e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -83.426698592266135 72.881366480966548 -83.124837083076173 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "9AFF88AC-4B14-4DF0-41DC-9090EFD50B44";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.0491729626944775 3.5527136788005009e-15 -8.2156503822261584e-15 ;
	setAttr ".r" -type "double3" 1.1609139341754744e-06 1.5570075739805341e-21 1.362381655083698e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.020161363216715099 -10.481460940406036 -0.5586294289728706 ;
	setAttr ".radi" 2.6035080085109672;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "2B189FB1-4049-5984-8C08-9185978DF054";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.2978480595959851 -7.1054273576010019e-15 -6.2172489379008766e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.8279193958649524 11.909019942471721 17.964714292047809 ;
	setAttr ".radi" 2.6035080085109672;
createNode ikEffector -n "effector37" -p "rtLegQd0_ball_ik";
	rename -uid "D5C99258-4FDB-5237-A501-9AB8111A3545";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector36" -p "rtLegQd0_digit_ik";
	rename -uid "0170BDC5-4E59-6257-CCA0-B9A2B8ACE809";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector35" -p "rtLegQd0_palm_ik";
	rename -uid "1D18EFF1-4866-4B68-CD69-93B931BB030D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector34" -p "rtLegQd0_lwr_ik";
	rename -uid "5E0D8207-4807-4141-E6DB-7CA6CBC11AA7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "1F63FCA9-4763-138E-C5CF-C7BEAE858159";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -14.595093563527801 -2.1316282072803006e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 2.3381435663082064e-45 -1.0530062493964361e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 95.452406376904847 45.547004619847783 25.946244006640285 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "4A6EF0AA-4C8D-33F7-2DB4-A28567535DDA";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -60.092483520507812 0 2.4868995751603507e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635183e-15 -1.1131941385122306e-14 1.2722218725854064e-14 ;
createNode ikEffector -n "effector38" -p "rtLegQd0_softJ";
	rename -uid "211237EB-4889-5BA2-2502-5EA841C22A08";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "844844B9-4953-7197-B187-D79CFDCC60C0";
	setAttr ".t" -type "double3" -19.844307759314091 39.278557047563972 4.5289855634009282 ;
	setAttr ".r" -type "double3" 1.2691566587709349 -83.577784306778383 -103.86516776819168 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "A10BD2CF-4F95-F52E-ECF6-44A936470C9B";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "F9F111AA-4E42-1E23-1CB3-7CBC2DAA1B96";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "5D35A38F-4F66-5482-9F35-E5AA9D73AE7A";
	setAttr ".t" -type "double3" -1.6549242651976197 -18.199352524761768 0.54755993556199201 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "1C2E0BBB-4D86-A861-D01D-239699384542";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "1C4FDF69-4175-ADE2-5672-81882C440721";
	setAttr ".t" -type "double3" -2.9672751042045711 0 11.216220509488458 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "0DC1CB55-4B5D-3165-D17E-4CB166D320F5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "C2BD35F6-4C71-4568-F49A-7C98B6E69BC8";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "23BDDFCE-4725-0F90-A664-2585AB43CA6E";
	setAttr ".t" -type "double3" -2.8881735156039596 0 -5.3248611863386301 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "40759BC7-4F68-3ED6-10B9-D3973B9F523D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "4509CFBD-4B1F-7F3C-5F31-DAAFD5EDD70E";
	setAttr ".t" -type "double3" 8.632876311326811 0 -0.83342208357623804 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "1AE97102-49B2-86C7-A610-E1B067B41D8A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "A93DA140-4ACD-F21E-F817-3AA95EAF3103";
	setAttr ".t" -type "double3" -3.9511081799865586 1.878349934428639 1.2746043851739017 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "8CBDA27C-4E7F-7748-717A-D5B9B473DC47";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "D2E7E773-4C20-CBF5-82CB-338729878CCD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-5.3750127792096371e-17 7.80055380778282 4.7449125658414582e-16
		-5.1918635002397681e-17 7.8304644610330643 0.22719295747894919
		-4.6548975714419478e-17 7.9181576850568183 0.43890307580883087
		-3.8007077114686594e-17 8.0576574185120133 0.62070267882728547
		-2.6875063896048186e-17 8.2394569180763551 0.76020248125189016
		-1.3911555973425445e-17 8.451167070890941 0.84789563630623466
		1.6459668272536918e-32 8.678360028369891 0.87780615161766173
		1.3911555973425445e-17 8.9055529858488391 0.84789563630623466
		2.6875063896048186e-17 9.1172631386634251 0.76020248125189016
		3.8007077114686594e-17 9.2990626382277668 0.62070267882728547
		4.6548975714419478e-17 9.4385629234382336 0.43890307580883087
		5.1918635002397681e-17 9.5262555957067168 0.22719295747894919
		5.3750127792096371e-17 9.556166248956961 2.5938460210538332e-16
		5.1918635002397681e-17 9.5262555957067168 -0.22719295747894919
		4.6548975714419478e-17 9.4385629234382336 -0.43890307580883087
		3.8007077114686594e-17 9.2990626382277668 -0.62070267882728547
		2.6875063896048186e-17 9.1172631386634251 -0.76020248125189016
		1.3911555973425445e-17 8.9055529858488391 -0.84789563630623466
		-4.0214103530189874e-32 8.678360028369891 -0.87780615161766173
		-1.3911555973425445e-17 8.451167070890941 -0.84789563630623466
		-2.6875063896048186e-17 8.2394569180763551 -0.76020248125189016
		-3.8007077114686594e-17 8.0576574185120133 -0.62070267882728547
		-4.6548975714419478e-17 7.9181576850568183 -0.43890307580883087
		-5.1918635002397681e-17 7.8304644610330643 -0.22719295747894919
		-5.3750127792096371e-17 7.80055380778282 4.7449125658414582e-16
		0 0 0
		;
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "CCBD0F1F-4FFA-BDBC-98EB-188D554E0F73";
	setAttr ".t" -type "double3" 1.1833083039684968 0.14267560346808228 -3.8697838197695447 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "556A9C44-42DB-5D44-7A18-F09366A198F3";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 171.44210544485026 0 90.455876893877686 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "8728EAB8-4885-1F90-9AC0-E0BDDCC8B5FF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "7654DC92-449D-95DA-92B4-DAB48BD77F80";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "231DE30C-4F1E-2F97-E427-51B17D6F2AFA";
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
		5.1812412359252624 8.678360028369891 0
		4.8106544383556678 10.670998254557519 0
		3.6819157022571654 12.360275730627055 0
		1.9926382261876279 13.489014466725559 0
		0 13.859479767255971 0
		-1.9926382261876279 13.489014466725559 0
		-3.6819157022571654 12.360275730627055 0
		-4.8106544383556678 10.670998254557519 0
		-5.1812412359252624 8.6783597828865116 0
		-4.8106544383556678 6.6857218021822629 0
		-3.6819157022571654 4.9964443261127256 0
		-1.9926382261876279 3.8677055900142232 0
		2.0690806918970971e-07 3.4972402894838108 -0.035230670018863708
		1.9926382261876279 3.8677055900142232 0
		3.6819157022571654 4.9964443261127256 0
		4.8106544383556678 6.6857218021822629 0
		5.1812412359252624 8.678360028369891 0
		4.7868410186759558 8.6918425895213804 -1.9827310104783131
		3.6636911463798354 8.7032727532601246 -3.6636113054683723
		1.9827761379500093 8.7109101265699973 -4.7867368783566571
		2.0690806918970971e-07 8.7135920869263455 -5.1811266815740344
		-1.9827761379500093 8.7109101265699973 -4.7867368783566571
		-3.6636911463798354 8.7032727532601246 -3.6636113054683723
		-4.7868410186759558 8.6918425895213804 -1.9827310104783131
		-5.1812412359252624 8.6783597828865116 0
		-4.7868410186759558 8.6648769812302451 1.9827240677903599
		-3.6636911463798354 8.6534468174915009 3.6636078341243952
		-1.9827761379500093 8.6458094441816282 4.7867299356687036
		2.0690806918970971e-07 8.6431276226790388 5.1811197388860801
		1.9827761379500093 8.6458094441816282 4.7867299356687036
		3.6636911463798354 8.6534468174915009 3.6636078341243952
		4.7868410186759558 8.6648769812302451 1.9827240677903599
		5.1812412359252624 8.678360028369891 0
		4.7868410186759558 8.6918425895213804 -1.9827310104783131
		3.6636911463798354 8.7032727532601246 -3.6636113054683723
		1.9827761379500093 8.7109101265699973 -4.7867368783566571
		2.0690806918970971e-07 8.7135920869263455 -5.1811266815740344
		2.0690806918970971e-07 10.693638359973129 -4.7732507070074313
		2.0690806918970971e-07 12.366878226870616 -3.6386974697480663
		2.0690806918970971e-07 13.478572664043842 -1.9501802180094112
		0 13.859479767255971 0
		2.0690806918970971e-07 13.451607264033346 2.0152783316032385
		2.0690806918970971e-07 12.317054026773981 3.6885147271567487
		2.0690806918970971e-07 10.628540246379302 4.8002126356739518
		2.0690806918970971e-07 8.6431276226790388 5.1811197388860801
		2.0690806918970971e-07 6.6630816967666524 4.7732437643194787
		2.0690806918970971e-07 4.9898418298691656 3.6386905270601129
		2.0690806918970971e-07 3.8781473926959391 1.9501732753214578
		2.0690806918970971e-07 3.4972402894838108 -0.035230670018863708
		2.0690806918970971e-07 3.9051127927064364 -2.015285274291192
		2.0690806918970971e-07 5.0396660299658018 -3.6885216698447012
		2.0690806918970971e-07 6.72817981036048 -4.8002195783619053
		2.0690806918970971e-07 8.7135920869263455 -5.1811266815740344
		;
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "2E85F115-4CCD-6132-B7EC-40AC2FF8AB2A";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "3E10536F-4B0A-F385-B5BF-0F8C02986CDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999815 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "41130C8C-44B4-6929-1134-E2B562B31F17";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.6452964496974039 16.178326986865034 -3.0103177405399606 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "F7EF481D-4C17-43CC-6B77-25949A35E429";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "0984E96F-4666-D55B-56E0-488966829686";
	setAttr ".t" -type "double3" 1.6452964496974039 16.178326986865034 -3.0103177405399606 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "8A5FE5D8-415C-F5FA-59BE-97A55A614AA7";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "C895A3A2-4E35-C91B-387C-84BB64196316";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "915C0855-46FF-5908-F245-3B850DF930FE";
	setAttr ".t" -type "double3" -3.9511081799865586 1.878349934428639 1.2746043851739017 ;
	setAttr ".r" -type "double3" -55.636666294289569 68.55555516038342 36.30217312765145 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "5E4E83A3-4E61-E1B9-A4DA-E5B285736CCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 -2.5757174171303632e-14 ;
	setAttr ".r" -type "double3" 0.12384957672123711 10.480756562860289 0.57183791712091947 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93077249764383496 -0.3017927097766212 0.20635822725431047 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "34B61DB9-4CF0-639A-B011-CEA1B25E8550";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "0D36FD7C-441A-4746-DA06-FDB661F94E98";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "4941C401-40FE-31F0-8926-CE8671BD71C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675538701
		-0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0 0.53697352675538701 0
		-0.53697352675538701 0 0
		0 -0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 -0.53697352675538701 0
		0 0 -0.53697352675538701
		;
createNode nurbsCurve -n "rtLegQd0_outRollG_ctlShape1" -p "rtLegQd0_outRollG_ctl";
	rename -uid "37D7DB49-44DF-96D8-3D25-5C98D13269F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675538701
		-0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0 0.53697352675538701 0
		-0.53697352675538701 0 0
		0 -0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 -0.53697352675538701 0
		0 0 -0.53697352675538701
		;
createNode nurbsCurve -n "rtLegQd0_toeRollG_ctlShape1" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "0E4AB2E1-492B-FC60-62D9-5382925DD67E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675538701
		-0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0 0.53697352675538701 0
		-0.53697352675538701 0 0
		0 -0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 -0.53697352675538701 0
		0 0 -0.53697352675538701
		;
createNode nurbsCurve -n "rtLegQd0_heelRollG_ctlShape1" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "06699CAD-47F9-FE94-3802-229D760FCCDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53697352675538701
		-0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 -0.53697352675538701
		0 0.53697352675538701 0
		-0.53697352675538701 0 0
		0 -0.53697352675538701 0
		0.53697352675538701 0 0
		0 0 0.53697352675538701
		0 -0.53697352675538701 0
		0 0 -0.53697352675538701
		;
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_IK";
	rename -uid "7E475893-4857-D6E1-6410-FA917880E20D";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "90E4AFCF-4D78-C99C-3D2D-7C8C71FFBC6B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.4253115868960666 49.152375124752723 -22.954774036727912
		-10.568764851766916 48.582159972548794 2.7578734959722628
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "1D1127FA-4DB5-D14D-7DCD-47BAC9ACC7AA";
	setAttr ".t" -type "double3" -9.2393241416520109 2.7410255378967214 -42.132759526326439 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "8149ACCA-4F0C-F661-683E-C081369E8FA2";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "4DE1CE40-461B-0236-D1C1-41B1DE99A060";
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
	rename -uid "51355E90-4ED9-6CF0-12E2-41A251AF5F77";
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
		6.508770021277412 -2.7410255378967197 6.5087700212774191
		6.3837058303987071 -2.7410255378967197 7.778568060657352
		6.013319404481253 -2.7410255378967197 8.9995684734948576
		5.4118444861579595 -2.7410255378967197 10.124848898669512
		4.6023954192289684 -2.7410255378967201 11.111165440506385
		3.6160788773920931 -2.7410255378967201 11.92061450743538
		2.4907984522174385 -2.7410255378967201 12.522089425758672
		1.269798039379932 -2.7410255378967201 12.892475851676128
		-7.5985653562778963e-16 -2.7410255378967201 13.017540042554831
		-1.2697980393799333 -2.7410255378967201 12.892475851676128
		-2.4907984522174398 -2.7410255378967201 12.522089425758672
		-3.6160788773920958 -2.7410255378967201 11.92061450743538
		-4.6023954192289711 -2.7410255378967201 11.111165440506387
		-5.4118444861579631 -2.7410255378967197 10.124848898669514
		-6.0133194044812566 -2.7410255378967197 8.9995684734948576
		-6.3837058303987115 -2.7410255378967197 7.7785680606573511
		-6.5087700212774164 -2.7410255378967197 6.5087700212774164
		-6.3837057920124911 -0.79190398705942644 6.5087700212774182
		-6.0133193754154846 1.1060029607461836 6.5087700212774182
		-5.4118446091250521 2.7494743344591308 6.5087700212774182
		-4.6023954180529145 4.0572139361339987 6.5087700212774182
		-3.6160787988160341 5.0419847539904934 6.5087700212774182
		-2.4907983729157888 5.6434595202809259 6.5087700212774182
		-1.2697980114573557 6.0138459368779333 6.5087700212774182
		3.9854721880933353e-16 6.1389101661428587 6.5087700212774182
		1.2697980114573557 6.0138459368779333 6.5087700212774182
		2.4907983729157888 5.6434595202809259 6.5087700212774182
		3.6160787988160341 5.0419847539904934 6.5087700212774182
		4.6023954180529145 4.0572139361339987 6.5087700212774182
		5.4118446091250521 2.7494743344591308 6.5087700212774182
		6.0133193754154846 1.1060029607461836 6.5087700212774182
		6.3837057920124911 -0.79190398705942644 6.5087700212774182
		6.5087700212774182 -2.7410255378967197 6.5087700212774182
		6.5087700212774182 -2.7410255378967214 -6.1182438200007718
		6.5087700212774182 -2.3504993366200746 -6.5087700212774182
		6.3837057920124911 -0.79190398705942644 -6.5087700212774182
		6.0133193754154846 1.1060029607461836 -6.5087700212774182
		5.4118446091250521 2.7494743344591308 -6.5087700212774182
		4.6023954180529145 4.0572139361339987 -6.5087700212774182
		3.6160787988160341 5.0419847539904934 -6.5087700212774182
		2.4907983729157888 5.6434595202809259 -6.5087700212774182
		1.2697980114573557 6.0138459368779333 -6.5087700212774182
		3.9854721880933353e-16 6.1389101661428587 -6.5087700212774182
		-1.2697980114573557 6.0138459368779333 -6.5087700212774182
		-2.4907983729157888 5.6434595202809259 -6.5087700212774182
		-3.6160787988160341 5.0419847539904934 -6.5087700212774182
		-4.6023954180529145 4.0572139361339987 -6.5087700212774182
		-5.4118446091250521 2.7494743344591308 -6.5087700212774182
		-6.0133193754154846 1.1060029607461836 -6.5087700212774182
		-6.3837057920124911 -0.79190398705942644 -6.5087700212774182
		-6.5087700212774182 -2.3504993366200746 -6.5087700212774182
		-6.5087700212774182 -2.7410255378967188 -6.1182438200007718
		-6.5087700212774182 -2.7410255378967197 6.5087700212774182
		;
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "7A7D03E8-4082-B516-7E7C-B1A26A2AFF8F";
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
	rename -uid "CE272278-45B5-FD65-C86A-9A932BDD1984";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.301754004255482 0.88799359215270801 
		-0.65087700535411663 -1.2767411660797414 0.88799359215270801 -0.90483661323010267 
		-1.2026638808962504 0.88799359215270801 -1.1490366957976041 -1.0823688972315919 0.88799359215270801 
		-1.3740927808325356 -0.92047908384579369 0.88799359215270801 -1.5713560891999094 
		-0.72321577547841853 0.88799359215270801 -1.7332459025857077 -0.49815969044348751 
		0.88799359215270801 -1.8535408862503662 -0.25395960787598626 0.88799359215270801 
		-1.9276181714338581 1.5197130712555785e-16 0.88799359215270801 -1.9526310096095987 
		0.2539596078759867 0.88799359215270801 -1.9276181714338581 0.49815969044348796 0.88799359215270801 
		-1.8535408862503662 0.72321577547841898 0.88799359215270801 -1.7332459025857077 0.92047908384579413 
		0.88799359215270801 -1.5713560891999094 1.0823688972315928 0.88799359215270801 -1.3740927808325356 
		1.2026638808962513 0.88799359215270801 -1.1490366957976041 1.2767411660797423 0.88799359215270801 
		-0.90483661323010267 1.3017540042554829 0.88799359215270801 -0.65087700535411575 
		1.2767411584024977 0.49816928198524935 -0.65087700535411575 1.2026638750830969 0.11858789242412726 
		-0.65087700535411575 1.0823689218250099 -0.2101063823184619 -0.65087700535411575 
		0.92047908361058273 -0.47165430265343566 -0.65087700535411575 0.72321575976320673 
		-0.66860846622473424 -0.65087700535411575 0.49815967458315757 -0.78890341948282128 
		-0.65087700535411575 0.25395960229147119 -0.86298070280222205 -0.65087700535411575 
		-7.9709443761866706e-17 -0.8879935486552073 -0.65087700535411575 -0.25395960229147119 
		-0.86298070280222205 -0.65087700535411575 -0.49815967458315757 -0.78890341948282128 
		-0.65087700535411575 -0.72321575976320673 -0.66860846622473424 -0.65087700535411575 
		-0.92047908361058273 -0.47165430265343566 -0.65087700535411575 -1.0823689218250099 
		-0.2101063823184619 -0.65087700535411575 -1.2026638750830969 0.11858789242412726 
		-0.65087700535411575 -1.2767411584024977 0.49816928198524935 -0.65087700535411575 
		-1.3017540042554829 0.88799359215270801 -0.65087700535411575 -1.3017540042554829 
		0.88799359215270846 1.8745257629015208 -1.3017540042554829 0.80988835189737896 1.9526310031568501 
		-1.2767411584024977 0.49816928198524935 1.9526310031568501 -1.2026638750830969 0.11858789242412726 
		1.9526310031568501 -1.0823689218250099 -0.2101063823184619 1.9526310031568501 -0.92047908361058273 
		-0.47165430265343566 1.9526310031568501 -0.72321575976320673 -0.66860846622473424 
		1.9526310031568501 -0.49815967458315757 -0.78890341948282128 1.9526310031568501 -0.25395960229147119 
		-0.86298070280222205 1.9526310031568501 -7.9709443761866706e-17 -0.8879935486552073 
		1.9526310031568501 0.25395960229147119 -0.86298070280222205 1.9526310031568501 0.49815967458315757 
		-0.78890341948282128 1.9526310031568501 0.72321575976320673 -0.66860846622473424 
		1.9526310031568501 0.92047908361058273 -0.47165430265343566 1.9526310031568501 1.0823689218250099 
		-0.2101063823184619 1.9526310031568501 1.2026638750830969 0.11858789242412726 1.9526310031568501 
		1.2767411584024977 0.49816928198524935 1.9526310031568501 1.3017540042554829 0.80988835189737896 
		1.9526310031568501 1.3017540042554829 0.88799359215270757 1.8745257629015208 1.3017540042554829 
		0.88799359215270801 -0.65087700535411575;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "9E4C0169-4D0B-4240-1125-1380027E7EE1";
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
		6.508770021277412 -2.7410255378967197 6.5087700212774191
		6.3837058303987071 -2.7410255378967197 7.778568060657352
		6.013319404481253 -2.7410255378967197 8.9995684734948576
		5.4118444861579595 -2.7410255378967197 10.124848898669512
		4.6023954192289684 -2.7410255378967201 11.111165440506385
		3.6160788773920931 -2.7410255378967201 11.92061450743538
		2.4907984522174385 -2.7410255378967201 12.522089425758672
		1.269798039379932 -2.7410255378967201 12.892475851676128
		-7.5985653562778963e-16 -2.7410255378967201 13.017540042554831
		-1.2697980393799333 -2.7410255378967201 12.892475851676128
		-2.4907984522174398 -2.7410255378967201 12.522089425758672
		-3.6160788773920958 -2.7410255378967201 11.92061450743538
		-4.6023954192289711 -2.7410255378967201 11.111165440506387
		-5.4118444861579631 -2.7410255378967197 10.124848898669514
		-6.0133194044812566 -2.7410255378967197 8.9995684734948576
		-6.3837058303987115 -2.7410255378967197 7.7785680606573511
		-6.5087700212774164 -2.7410255378967197 6.5087700212774164
		-6.3837057920124911 -0.79190398705942644 6.5087700212774182
		-6.0133193754154846 1.1060029607461836 6.5087700212774182
		-5.4118446091250521 2.7494743344591308 6.5087700212774182
		-4.6023954180529145 4.0572139361339987 6.5087700212774182
		-3.6160787988160341 5.0419847539904934 6.5087700212774182
		-2.4907983729157888 5.6434595202809259 6.5087700212774182
		-1.2697980114573557 6.0138459368779333 6.5087700212774182
		3.9854721880933353e-16 6.1389101661428587 6.5087700212774182
		1.2697980114573557 6.0138459368779333 6.5087700212774182
		2.4907983729157888 5.6434595202809259 6.5087700212774182
		3.6160787988160341 5.0419847539904934 6.5087700212774182
		4.6023954180529145 4.0572139361339987 6.5087700212774182
		5.4118446091250521 2.7494743344591308 6.5087700212774182
		6.0133193754154846 1.1060029607461836 6.5087700212774182
		6.3837057920124911 -0.79190398705942644 6.5087700212774182
		6.5087700212774182 -2.7410255378967197 6.5087700212774182
		6.5087700212774182 -2.7410255378967214 -6.1182438200007718
		6.5087700212774182 -2.3504993366200746 -6.5087700212774182
		6.3837057920124911 -0.79190398705942644 -6.5087700212774182
		6.0133193754154846 1.1060029607461836 -6.5087700212774182
		5.4118446091250521 2.7494743344591308 -6.5087700212774182
		4.6023954180529145 4.0572139361339987 -6.5087700212774182
		3.6160787988160341 5.0419847539904934 -6.5087700212774182
		2.4907983729157888 5.6434595202809259 -6.5087700212774182
		1.2697980114573557 6.0138459368779333 -6.5087700212774182
		3.9854721880933353e-16 6.1389101661428587 -6.5087700212774182
		-1.2697980114573557 6.0138459368779333 -6.5087700212774182
		-2.4907983729157888 5.6434595202809259 -6.5087700212774182
		-3.6160787988160341 5.0419847539904934 -6.5087700212774182
		-4.6023954180529145 4.0572139361339987 -6.5087700212774182
		-5.4118446091250521 2.7494743344591308 -6.5087700212774182
		-6.0133193754154846 1.1060029607461836 -6.5087700212774182
		-6.3837057920124911 -0.79190398705942644 -6.5087700212774182
		-6.5087700212774182 -2.3504993366200746 -6.5087700212774182
		-6.5087700212774182 -2.7410255378967188 -6.1182438200007718
		-6.5087700212774182 -2.7410255378967197 6.5087700212774182
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd0_smart_ctl_ofs" -p "rtLegQd0_ikc_gmb";
	rename -uid "F52FEC2D-4A89-D3F4-8541-F0B597C02C34";
	setAttr ".t" -type "double3" -2.9769029197047896 -2.0210255378967226 8.7534627045105111 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "3025587C-4729-79B9-40F1-8C93988286A0";
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
	rename -uid "014B3DC5-41B3-22CF-AB3D-BDAF2F8FAA2F";
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
		2.9946741869274534 6.1465754621541692e-17 -2.9946741869274569
		1.6580478175880264e-16 8.69257038072811e-17 -2.7077975768073252
		-2.9946741869274534 6.1465754621541655e-17 -2.9946741869274551
		-2.7077975768073328 -3.547721689657518e-32 -1.0514304555838911e-15
		-2.9946741869274534 -6.1465754621541667e-17 2.9946741869274534
		-2.7124193521635086e-16 -8.6925703807281186e-17 2.7077975768073275
		2.9946741869274534 -6.1465754621541655e-17 2.9946741869274551
		2.7077975768073328 -5.1837488268534027e-32 -5.4179635155504562e-16
		2.9946741869274534 6.1465754621541692e-17 -2.9946741869274569
		1.6580478175880264e-16 8.69257038072811e-17 -2.7077975768073252
		-2.9946741869274534 6.1465754621541655e-17 -2.9946741869274551
		;
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "4DAB1B0E-4D1D-ED83-E9DB-40ABA83B4951";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -3.1974423109204508e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "F438E99B-4530-EC37-6343-E7B4FF21B3A4";
	setAttr ".t" -type "double3" -10.568764851766915 48.582159972548794 2.7578734959722628 ;
	setAttr ".r" -type "double3" 1.2691566587710343 -2.5462919682435343 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "B16DA025-49EE-4B23-549C-F4AFE113EEB9";
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "3FDAF218-4E81-EB56-AF63-23AE57242FA5";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 -6.2172489379008766e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_pvcShape1" -p "rtLegQd0_pvc";
	rename -uid "7E0BCE8D-4453-F3AB-67C0-42B4097AF8E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.147894107021548
		-2.147894107021548 0 0
		0 0 -2.147894107021548
		2.147894107021548 0 0
		0 0 2.147894107021548
		0 2.147894107021548 0
		2.147894107021548 0 0
		0 0 -2.147894107021548
		0 2.147894107021548 0
		-2.147894107021548 0 0
		0 -2.147894107021548 0
		2.147894107021548 0 0
		0 0 2.147894107021548
		0 -2.147894107021548 0
		0 0 -2.147894107021548
		;
createNode transform -n "rtLegQd0_extraRollG_ofs_loc" -p "rtLegQd0_IK";
	rename -uid "ABAB4983-4423-84BA-7458-F5B3A1CE35B5";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -2.681788953608037 15.817283874477772 90.843058005272468 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "E9D60A0D-4494-188A-2C47-3CBB6EC56820";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "47431A60-473D-0AFB-B0BE-D388C8246515";
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
	rename -uid "D575455E-4AE0-C409-A558-F2AF6C83173B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.3391800141849455 4.3391800141849455 1.0802380505062747e-16
		-4.2558038613416604 4.3391800141849455 -0.84653200763823699
		-4.008879583610323 4.3391800141849455 -1.6605323520646389
		-3.607896406083368 4.3391800141849455 -2.4107191992106891
		-3.0682636120352758 4.3391800141849455 -3.0682636120352758
		-2.4107191992106891 4.3391800141849455 -3.607896406083368
		-1.6605323520646389 4.3391800141849455 -4.008879583610323
		-0.84653200763823699 4.3391800141849455 -4.2558038613416604
		2.6569814587288899e-16 4.3391800141849455 -4.3391800141849455
		0.84653200763823699 4.3391800141849455 -4.2558038613416604
		1.6605323520646389 4.3391800141849455 -4.008879583610323
		2.4107191992106891 4.3391800141849455 -3.607896406083368
		3.0682636120352758 4.3391800141849455 -3.0682636120352758
		3.607896406083368 4.3391800141849455 -2.4107191992106891
		4.008879583610323 4.3391800141849455 -1.6605323520646389
		4.2558038613416604 4.3391800141849455 -0.84653200763823699
		4.3391800141849455 4.3391800141849455 -4.6933309905980768e-16
		4.1740300058058608 4.3391800141849455 -0.83026612430526281
		3.7037218131101106 4.3391800141849455 -1.5341318060176379
		2.9998560279436219 4.3391800141849455 -2.0044397918051615
		2.1695900070924727 4.3391800141849455 -2.1695900070924727
		1.3393238827872098 4.3391800141849455 -2.0044397918051615
		0.63545820107483464 4.3391800141849455 -1.5341318060176379
		0.16515021528731125 4.3391800141849455 -0.83026612430526281
		0 4.3391800141849455 -4.6933309905980768e-16
		-0.16515021528731125 4.3391800141849455 0.83026612430526281
		-0.63545820107483464 4.3391800141849455 1.5341318060176379
		-1.3393238827872098 4.3391800141849455 2.0044397918051615
		-2.1695900070924727 4.3391800141849455 2.1695900070924727
		-2.9998560279436219 4.3391800141849455 2.0044397918051615
		-3.7037218131101106 4.3391800141849455 1.5341318060176379
		-4.1740300058058608 4.3391800141849455 0.83026612430526281
		-4.3391800141849455 4.3391800141849455 1.0802380505062747e-16
		-4.2558038613416604 4.3391800141849455 0.84653200763823699
		-4.008879583610323 4.3391800141849455 1.6605323520646389
		-3.607896406083368 4.3391800141849455 2.4107191992106891
		-3.0682636120352758 4.3391800141849455 3.0682636120352758
		-2.4107191992106891 4.3391800141849455 3.607896406083368
		-1.6605323520646389 4.3391800141849455 4.008879583610323
		-0.84653200763823699 4.3391800141849455 4.2558038613416604
		-5.0657102385996098e-16 4.3391800141849455 4.3391800141849455
		0.84653200763823699 4.3391800141849455 4.2558038613416604
		1.6605323520646389 4.3391800141849455 4.008879583610323
		2.4107191992106891 4.3391800141849455 3.607896406083368
		3.0682636120352758 4.3391800141849455 3.0682636120352758
		3.607896406083368 4.3391800141849455 2.4107191992106891
		4.008879583610323 4.3391800141849455 1.6605323520646389
		4.2558038613416604 4.3391800141849455 0.84653200763823699
		4.3391800141849455 4.3391800141849455 -4.6933309905980768e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe01_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "48C66112-4498-49A3-BE34-C4B286D382C2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe01_4_ctl" -p "rtLegQd0_toe01_4_ctl_ofs";
	rename -uid "C1693484-4693-A622-0CD1-15BF852D3D88";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_4_ctlShape1" -p "rtLegQd0_toe01_4_ctl";
	rename -uid "97502A72-44D9-8E17-CFDB-45AA7BE7E149";
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
		-7.348439511583968e-18 0.3580234596489581 0.35802345964895876
		-1.0392262819560381e-17 1.9822524216743797e-17 0.32372638756815442
		-7.3484395115839634e-18 -0.3580234596489581 0.35802345964895854
		4.2414216502998889e-33 -0.32372638756815514 3.554259285635317e-16
		7.3484395115839649e-18 -0.3580234596489581 -0.35802345964895788
		1.0392262819560392e-17 -3.2427893649316389e-17 -0.32372638756815431
		7.3484395115839634e-18 0.3580234596489581 -0.3580234596489581
		6.1973476014278769e-33 0.32372638756815514 2.9449744229414228e-16
		-7.348439511583968e-18 0.3580234596489581 0.35802345964895876
		-1.0392262819560381e-17 1.9822524216743797e-17 0.32372638756815442
		-7.3484395115839634e-18 -0.3580234596489581 0.35802345964895854
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe02_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "5345F88F-46E1-8D9E-B916-2C8B46C0FD7C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_4_ctl" -p "rtLegQd0_toe02_4_ctl_ofs";
	rename -uid "B19E74BD-44FA-3DEA-2A1D-59A2E77556DC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_4_ctlShape1" -p "rtLegQd0_toe02_4_ctl";
	rename -uid "169C62FD-41CE-EAF5-C997-EB89DF54F7CF";
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
		-7.348439511583968e-18 0.3580234596489581 0.35802345964895854
		-1.0392262819560381e-17 1.9822524216743797e-17 0.32372638756815419
		-7.3484395115839634e-18 -0.3580234596489581 0.35802345964895832
		4.2414216502998889e-33 -0.32372638756815514 1.2570207835352211e-16
		7.3484395115839649e-18 -0.3580234596489581 -0.3580234596489581
		1.0392262819560392e-17 -3.2427893649316389e-17 -0.32372638756815453
		7.3484395115839634e-18 0.3580234596489581 -0.35802345964895832
		6.1973476014278769e-33 0.32372638756815514 6.4773592084132693e-17
		-7.348439511583968e-18 0.3580234596489581 0.35802345964895854
		-1.0392262819560381e-17 1.9822524216743797e-17 0.32372638756815419
		-7.3484395115839634e-18 -0.3580234596489581 0.35802345964895832
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe03_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "9C02B5E5-4640-B338-81BF-91B8E669F1F5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe03_4_ctl" -p "rtLegQd0_toe03_4_ctl_ofs";
	rename -uid "583C84E1-4335-2E98-2F0B-DDA014C43B85";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_4_ctlShape1" -p "rtLegQd0_toe03_4_ctl";
	rename -uid "F92A46A1-4E60-26F0-1AB2-D4A8A76F0EDB";
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
		-7.348439511583968e-18 0.3580234596489581 0.3580234596489581
		-1.0392262819560381e-17 1.9822524216743797e-17 0.32372638756815375
		-7.3484395115839634e-18 -0.3580234596489581 0.35802345964895788
		4.2414216502998889e-33 -0.32372638756815514 -3.3374562206649702e-16
		7.3484395115839649e-18 -0.3580234596489581 -0.35802345964895854
		1.0392262819560392e-17 -3.2427893649316389e-17 -0.32372638756815497
		7.3484395115839634e-18 0.3580234596489581 -0.35802345964895876
		6.1973476014278769e-33 0.32372638756815514 -3.9467410833588644e-16
		-7.348439511583968e-18 0.3580234596489581 0.3580234596489581
		-1.0392262819560381e-17 1.9822524216743797e-17 0.32372638756815375
		-7.3484395115839634e-18 -0.3580234596489581 0.35802345964895788
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe04_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "659CA369-4E10-048A-3DF8-FD995BEEEACB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe04_4_ctl" -p "rtLegQd0_toe04_4_ctl_ofs";
	rename -uid "A4D1F6EB-4A53-76DA-946E-8CA4708121C6";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_4_ctlShape1" -p "rtLegQd0_toe04_4_ctl";
	rename -uid "50BD39FF-4EE8-5AC1-BD31-86A5321D6C9A";
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
		1.1551948504806827e-16 0.35802345964896165 0.35802345964895876
		1.1247566174009187e-16 3.5725362030172448e-15 0.32372638756815442
		1.1551948504806827e-16 -0.35802345964895455 0.35802345964895854
		1.2286792455965224e-16 -0.32372638756815159 3.554259285635317e-16
		1.302163640712362e-16 -0.35802345964895455 -0.35802345964895788
		1.3326018737921264e-16 3.5202857851511846e-15 -0.32372638756815431
		1.302163640712362e-16 0.35802345964896165 -0.3580234596489581
		1.2286792455965224e-16 0.32372638756815869 2.9449744229414228e-16
		1.1551948504806827e-16 0.35802345964896165 0.35802345964895876
		1.1247566174009187e-16 3.5725362030172448e-15 0.32372638756815442
		1.1551948504806827e-16 -0.35802345964895455 0.35802345964895854
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "57B25541-4BF6-D252-0F81-8FBA5D2D16B9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "368D9F3E-4FCF-8B62-8237-BAA6CBFDF516";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.1501095444697702 4.1501095444697702 4.1501095444697702 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "BB46E993-4C89-CBBD-A6D7-D28268CD7FF4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "E213DF69-46CD-69E3-1575-FB845F011C72";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "20CCE3CF-4FD3-8A1D-D810-91967B4DCFEA";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.8247441418159781 11.930390147751 82.119275607628111 ;
	setAttr ".radi" 1.7222956575796735;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "4E5014BB-4363-238A-B1FA-33B8808F64D4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.41319340951799 -36.973216297676274 10.111224255903863 ;
	setAttr ".radi" 1.7222956575796735;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "C202E1B0-41B4-526E-0C97-25ACA61828FD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -31.591147132459135 0 ;
	setAttr ".radi" 1.7222956575796735;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "D782072A-4561-7069-8429-A1BEC257D11E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -179.67552600379349 6.5084974361084384 1.5200106132877551 ;
	setAttr ".radi" 1.7222956575796735;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "00E8DF94-4B8C-09CC-FACC-65A7DCF06B92";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -92.609472538180967 69.489867539049484 -92.785812160028229 ;
	setAttr ".radi" 1.7222956575796735;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "EE4DCE1A-4B87-A195-5F8E-38918B36B08E";
	setAttr ".t" -type "double3" -4.0912487710449454 3.1974423109204508e-14 -2.7533531010703882e-14 ;
	setAttr ".r" -type "double3" 0.009921612943454311 -20.050794842130415 -0.55064774987486131 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "3A9A2AD1-4F64-6F1F-A423-74A8CCBBAE74";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1.0000000000000004 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "EE4D879B-4852-D84D-5E2E-B4A399CDD258";
	setAttr ".t" -type "double3" -4.0912487710449454 3.730349362740526e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0.0099216129434474849 -20.050794842130415 -0.55064774987484755 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "F914980D-4942-8162-7379-CEB4FE9F0133";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "AA97ACD6-4F81-2FDE-BD66-909DE33515A7";
	setAttr ".t" -type "double3" -4.0912487710449383 3.907985046680551e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "9327BE88-4F50-ECF7-4592-1D9646B9645F";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 3.0600414767361882e-14 1.2897271532495291e-14 -2.3450378754931201e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.5996509640367975e-14 -9.5416640443905535e-15 1.9083328088781107e-14 ;
	setAttr ".radi" 1.7222956575796735;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "8A5E46F7-45B2-8E43-8B3A-01A4528755C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0701347565281267 7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.0753755668243663 17.759895772996163 22.142044085276684 ;
	setAttr ".radi" 1.7222956575796735;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "978087E0-46CA-A166-1D19-C9A5408BADC0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "CD9672CB-4A2F-1DDE-CB2D-ECB104271789";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "3E4BE774-4660-C419-D994-54ABB7EF671E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		-1.0561141114952256e-31 8.0607879707014689 -3.1299821083349912e-15
		-1.8297616472779084e-16 8.9147851630094763 8.9147851630094763
		-2.5876737374905597e-16 8.074546440504915e-16 8.0607879707014547
		-1.8297616472779077e-16 -8.9147851630094763 8.9147851630094799
		-1.543139728927045e-31 -8.0607879707014689 -1.6128626270262749e-15
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "AF972673-4FDB-F437-8BCC-788F14869AAF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "93AB019A-4863-30A9-8D7E-36AFC94638F5";
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
createNode nurbsCurve -n "rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "B771B45C-4C6A-3390-9188-34801D32E5E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		-1.0561141114952256e-31 8.0607879707014689 -3.1299821083349912e-15
		-1.8297616472779084e-16 8.9147851630094763 8.9147851630094763
		-2.5876737374905597e-16 8.074546440504915e-16 8.0607879707014547
		-1.8297616472779077e-16 -8.9147851630094763 8.9147851630094799
		-1.543139728927045e-31 -8.0607879707014689 -1.6128626270262749e-15
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "627B9D8C-4C8F-A9B4-A3EE-1F86CBFE9EC0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "DC68187A-47C0-74F5-773B-3CBF00A21542";
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
	rename -uid "D496F2C1-4AEA-54F2-3A3E-89AFB07CD643";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		-1.0561141114952256e-31 8.0607879707014689 -3.1299821083349912e-15
		-1.8297616472779084e-16 8.9147851630094763 8.9147851630094763
		-2.5876737374905597e-16 8.074546440504915e-16 8.0607879707014547
		-1.8297616472779077e-16 -8.9147851630094763 8.9147851630094799
		-1.543139728927045e-31 -8.0607879707014689 -1.6128626270262749e-15
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "7D4F625E-425A-0AC4-81D1-36A73623B7D1";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "87931F09-40D2-1881-2443-5A882FE7F015";
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
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "97621F70-42E8-D6F8-24DA-7A82DCD8F8D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		-1.0561141114952256e-31 8.0607879707014689 -3.1299821083349912e-15
		-1.8297616472779084e-16 8.9147851630094763 8.9147851630094763
		-2.5876737374905597e-16 8.074546440504915e-16 8.0607879707014547
		-1.8297616472779077e-16 -8.9147851630094763 8.9147851630094799
		-1.543139728927045e-31 -8.0607879707014689 -1.6128626270262749e-15
		1.8297616472779087e-16 -8.9147851630094763 -8.914785163009487
		2.5876737374905568e-16 -4.9358090934625121e-16 -8.0607879707014458
		1.8297616472779077e-16 8.9147851630094763 -8.9147851630094799
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "4C8D7E59-4EE8-2BD0-ABE3-B786FF269DDA";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-15 3.9745984281580604e-14 ;
	setAttr ".r" -type "double3" 90.91402773687625 -0.34150260066908156 -69.514815349871938 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "1ECB3ECF-4655-02E9-E011-BCA2261AAD5D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "4431295B-4F12-17B4-022F-3CBD25D66440";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "3459B964-4DB7-A8FB-C792-B1920071927B";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "3F74464F-4336-DD50-ECC3-A68DD669F128";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "2A2A754D-473E-7C7E-3DFA-5A8D4F103597";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4573925815047382 17.222956575796736 4.4573925815047435
		-2.467904546731256e-16 17.222956575796736 4.0303939853507229
		4.4573925815047382 17.222956575796736 4.4573925815047399
		4.0303939853507345 17.222956575796736 1.5649910541674956e-15
		4.4573925815047382 17.222956575796736 -4.4573925815047382
		4.0372732202524575e-16 17.222956575796736 -4.0303939853507273
		-4.4573925815047382 17.222956575796736 -4.4573925815047399
		-4.0303939853507345 17.222956575796736 8.0643131351313744e-16
		-4.4573925815047382 17.222956575796736 4.4573925815047435
		-2.467904546731256e-16 17.222956575796736 4.0303939853507229
		4.4573925815047382 17.222956575796736 4.4573925815047399
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "B2968CEB-41FF-B66B-80E8-79AF5EEC5829";
	setAttr ".t" -type "double3" -19.532141845408376 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "F8BA9B7F-4F39-39F4-0BE4-46936C5BC779";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "C8D7600B-4C8E-C2A5-6786-72A497BDD416";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		32.293043579618882 0 -2.1528695719745921
		32.293043579618882 0 2.1528695719745916
		30.140174007644287 0 3.2293043579618876
		27.987304435669696 0 2.1528695719745921
		27.987304435669696 0 -2.1528695719745916
		32.293043579618882 0 -2.1528695719745921
		27.987304435669696 0 -2.1528695719745916
		27.987304435669696 0 2.1528695719745921
		30.140174007644287 0 3.2293043579618876
		32.293043579618882 0 2.1528695719745916
		;
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "914355A4-4591-2B8E-BDA9-D7ABF11FE70C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 -1.0658141036401503e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 114.98770120488896 -13.934906442064134 6.9269438919718187 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "36E0E4E9-4315-710F-9959-AFB1C8D9436A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -83.405895879428044 -1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 -9.9392333795734879e-16 -1.0933156717530836e-15 ;
	setAttr ".radi" 2.5834434863695104;
createNode ikEffector -n "effector53" -p "rtLegQd1_autoAim";
	rename -uid "8532C202-47F5-D3D0-3A9E-289A443B0FF5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "CB1D1E47-4AA7-AD24-5F25-E391379B6154";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -1.0658141036401503e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 65.012298795110965 13.934906442064168 -173.07305610802817 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "07E58096-4BF3-02CB-1C82-598E93F11516";
	setAttr ".t" -type "double3" -8.126370567251989 2.8319543819457067 52.704151762592957 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "590DC7BA-40A4-B7D6-FA3C-1C9AD84E4565";
	setAttr ".t" -type "double3" -1.4317692033289138 0.069671898459689352 3.8319051142519669 ;
	setAttr ".r" -type "double3" -49.642127413009476 61.897950918523115 43.93121938507673 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "41CC573E-4D7A-D64D-A48B-8EBAD7952E9B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "66B267A4-49BD-5163-93E9-66887E0F2E34";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "19DDA515-4F29-3FB5-E2A3-ECA104BDB324";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.1488082363895433e-17 -4.4573925815047382 -4.4573925815047435
		1.2938368687452784e-16 -2.467904546731256e-16 -4.0303939853507229
		9.1488082363895384e-17 4.4573925815047382 -4.4573925815047399
		-5.2805705574761281e-32 4.0303939853507345 -1.5649910541674956e-15
		-9.1488082363895421e-17 4.4573925815047382 4.4573925815047382
		-1.2938368687452799e-16 4.0372732202524575e-16 4.0303939853507273
		-9.1488082363895384e-17 -4.4573925815047382 4.4573925815047399
		-7.7156986446352249e-32 -4.0303939853507345 -8.0643131351313744e-16
		9.1488082363895433e-17 -4.4573925815047382 -4.4573925815047435
		1.2938368687452784e-16 -2.467904546731256e-16 -4.0303939853507229
		9.1488082363895384e-17 4.4573925815047382 -4.4573925815047399
		;
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "09E440FB-476B-0376-B2AA-7E9249AC49FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0701347565280912 3.3750779948604759e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276477 -0.35894198850120462 0.30502878639761588 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "3D36F996-4863-7E93-78BF-EC81DA414D99";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.0658141036401503e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "1A88C731-4E32-F9ED-3B71-C4A387D4DA7D";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000007 1.0000000000000004 ;
createNode ikHandle -n "rtLegQd1_toe00_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "844F3159-4667-73B4-77AD-C3B1E4FBD7CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.5378721101475961 -3.5026812770508844 0.81107579043463218 ;
	setAttr ".r" -type "double3" 18.303050066551297 -49.560437477979811 22.861212447276085 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276488 -0.35894198850120485 0.30502878639761583 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe01_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "393515E0-45F5-482A-8B47-77897DABE0A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4598802113125302 -2.6726045888780678 -0.77585490231104615 ;
	setAttr ".r" -type "double3" 3.1190764104538036 -2.2265651966648883 8.9385206077910659 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276488 -0.35894198850120485 0.30502878639761583 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe02_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "E7919CA7-4C0C-3C0A-B640-7DA4FA4081CB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.080517145417587699 -0.71732915537710085 -0.15215464383348021 ;
	setAttr ".r" -type "double3" 2.6819149093541341 23.788631061898911 8.2015436479512491 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276488 -0.35894198850120485 0.30502878639761583 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe03_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "C6D788D5-4189-53AE-496F-37850B37518E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.027792257125149433 1.3287208256733223 -0.13392266787352725 ;
	setAttr ".r" -type "double3" 0.61143135716207619 20.881264260653417 1.8702808884038751 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276488 -0.35894198850120485 0.30502878639761583 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe04_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "BEA8C55B-4F86-666A-A821-C2A174F1DF2E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9156196985301364 3.6993451685511065 -0.78672299885611707 ;
	setAttr ".r" -type "double3" -4.3212267315940176 10.16599570723749 -13.183741618317129 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276488 -0.35894198850120485 0.30502878639761583 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe00_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "DC77C4DA-4F6F-8C3A-25B0-61A95BA95F46";
	setAttr ".t" -type "double3" 6.5378721101476174 -3.5026812770508915 0.81107579043464284 ;
	setAttr ".r" -type "double3" 55.879112391978332 -69.049557776312824 9.62394004532627 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe00_3_ikc_ofs1" -p "rtLegQd1_toe00_3_ikc_ofs";
	rename -uid "24CF1B71-4231-13C3-691C-42B718617244";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe00_3_ikc" -p "rtLegQd1_toe00_3_ikc_ofs1";
	rename -uid "C3323A42-478D-3763-564E-DDA5DB56770B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe00_3_ikcShape1" -p "rtLegQd1_toe00_3_ikc";
	rename -uid "ABD5D70C-4B48-D41A-364E-7E80C03C24AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		4.597085890157477e-16 -4.9982013330192284e-16 1.4210854715202004e-14
		4.597085890157477e-16 -4.9982013330192284e-16 0.94584239993178831
		-0.10922377877992867 -4.9982013330192284e-16 0.94584239993178831
		-0.10922377877992867 -4.9982013330192284e-16 1.164289957491647
		0.10922377877992959 -4.9982013330192284e-16 1.164289957491647
		0.10922377877992959 -4.9982013330192284e-16 0.94584239993178831
		4.597085890157477e-16 -4.9982013330192284e-16 0.94584239993178831
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe00_3_1_ikj_ikh" -p "rtLegQd1_toe00_3_ikc";
	rename -uid "0011E9E7-41B1-D848-5205-FF9F5898DBB9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8964376440170394 7.1054273576010019e-15 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999933 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.047561774990420157 0.69328088671633259 0.71909630069523778 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "C3BCE622-4E60-A5B9-490C-0AB0CE344562";
	setAttr ".t" -type "double3" 1.4598802113125373 -2.6726045888780767 -0.77585490231103904 ;
	setAttr ".r" -type "double3" 3.5628996192532254 -26.173702330557077 7.7229778294832956 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs1" -p "rtLegQd1_toe01_3_ikc_ofs";
	rename -uid "1D6641C1-483E-7722-0730-878D5353A4C8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe01_3_ikc" -p "rtLegQd1_toe01_3_ikc_ofs1";
	rename -uid "6F25297D-44AA-E987-9F98-D19634B6CD29";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_3_ikcShape1" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "CF50C669-4045-8617-F403-F9A8F0654A93";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		7.3553374242519632e-15 -6.3826835304916386e-16 -7.0741885992696317e-15
		7.3553374242519632e-15 -6.3826835304916386e-16 0.945842399931767
		-0.10922377877992177 -6.3826835304916386e-16 0.945842399931767
		-0.10922377877992177 -6.3826835304916386e-16 1.1642899574916259
		0.10922377877993648 -6.3826835304916386e-16 1.1642899574916259
		0.10922377877993648 -6.3826835304916386e-16 0.945842399931767
		7.3553374242519632e-15 -6.3826835304916386e-16 0.945842399931767
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe01_3_1_ikj_ikh" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "E246BF57-4D38-8585-215F-20982E6E57EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.6171293934429158 0.25678870454820402 1.4033087899014589 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999922 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.69322192056333121 -0.19439179517791294 0.69401383186359844 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "3159BFB2-4A10-9A7F-1DD9-178F7E6E2D48";
	setAttr ".t" -type "double3" 0.080517145417609015 -0.7173291553771044 -0.1521546438334731 ;
	setAttr ".r" -type "double3" 3.5813000175617447 -10.312969128934361 9.6148043458048029 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs1" -p "rtLegQd1_toe02_3_ikc_ofs";
	rename -uid "3A40B633-4E1A-D731-5F53-A48DAF00062D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe02_3_ikc" -p "rtLegQd1_toe02_3_ikc_ofs1";
	rename -uid "D1142FF7-42BB-3162-7936-D192853FEE61";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_3_ikcShape1" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "853AC689-4A38-CC38-4C2F-E9ADB8BA843C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-1.4710674848503926e-14 7.3535792464871438e-16 1.061909258848729e-14
		-1.4710674848503926e-14 7.3535792464871438e-16 0.94584239993178465
		-0.10922377877994384 7.3535792464871438e-16 0.94584239993178465
		-0.10922377877994384 7.3535792464871438e-16 1.1642899574916434
		0.10922377877991442 7.3535792464871438e-16 1.1642899574916434
		0.10922377877991442 7.3535792464871438e-16 0.94584239993178465
		-1.4710674848503926e-14 7.3535792464871438e-16 0.94584239993178465
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe02_3_1_ikj_ikh" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "83B0B5EB-420D-4A5F-3FAE-D9B813D5482F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6507210257032412 0.29181045424393015 0.9620055197759072 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.86004368407549958 -0.17702138403744128 0.47852721038130286 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "0D87D98D-4C82-1BC1-11A2-19A4D6F39459";
	setAttr ".t" -type "double3" 0.02779225712517075 1.3287208256733187 -0.13392266787352014 ;
	setAttr ".r" -type "double3" -0.57446717704989669 -13.170870530397009 -1.4869609711635328 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs1" -p "rtLegQd1_toe03_3_ikc_ofs";
	rename -uid "25937519-4BB3-0516-B30C-1EA44BA7790C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_toe03_3_ikc" -p "rtLegQd1_toe03_3_ikc_ofs1";
	rename -uid "B597575C-4760-2065-16A2-C89E159D2CF0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_3_ikcShape1" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "37902F89-4BD7-6D1A-3D2F-949EA8FD77DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 2.4991006665096142e-16 -7.1054273576010019e-15
		0 2.4991006665096142e-16 0.945842399931767
		-0.10922377877992913 2.4991006665096142e-16 0.945842399931767
		-0.10922377877992913 2.4991006665096142e-16 1.1642899574916259
		0.10922377877992913 2.4991006665096142e-16 1.1642899574916259
		0.10922377877992913 2.4991006665096142e-16 0.945842399931767
		0 2.4991006665096142e-16 0.945842399931767
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe03_3_1_ikj_ikh" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "D57ACB6A-46FD-F14B-08E1-E1AC321D71B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.5373811403801767 -0.14511945561847384 1.0640836042036241 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.78004484060458401 -0.38666326937222117 0.49195687083783535 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "BB8F832B-4955-D9AF-1B0E-C6845BED6FB2";
	setAttr ".t" -type "double3" 1.9156196985301577 3.6993451685511012 -0.78672299885610997 ;
	setAttr ".r" -type "double3" -2.184042440663772 -20.05407201708184 -5.1968614818458621 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs1" -p "rtLegQd1_toe04_3_ikc_ofs";
	rename -uid "5EB755E3-4AB0-592D-362D-70B933AFA557";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_toe04_3_ikc" -p "rtLegQd1_toe04_3_ikc_ofs1";
	rename -uid "EAE54859-449C-8280-26DE-2994C884265E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_3_ikcShape1" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "EC7FE7DE-4C77-CA13-1CDB-93AAADD579CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		7.3553374242519632e-15 3.3028036121495396e-15 6.9804723242755212e-15
		7.3553374242519632e-15 3.3028036121495396e-15 0.94584239993178099
		-0.10922377877992177 3.3028036121495396e-15 0.94584239993178099
		-0.10922377877992177 3.3028036121495396e-15 1.1642899574916397
		0.10922377877993648 3.3028036121495396e-15 1.1642899574916397
		0.10922377877993648 3.3028036121495396e-15 0.94584239993178099
		7.3553374242519632e-15 3.3028036121495396e-15 0.94584239993178099
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe04_3_1_ikj_ikh" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "FDDFB150-4CE2-0AF7-9894-E891CC48BE1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7875871585166152 -0.30383605906639133 1.2449976563178566 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.69008352794191852 -0.4590234374887473 0.55953749498961147 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "043596F1-4322-C5D5-A672-9D9D86D0FAA2";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "57288010-40E0-CA0E-3A05-D5B5841C6EE6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.8247441418159781 11.930390147751 82.119275607628111 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "4A87177A-472E-AB9D-2E76-709CC469F7AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.532141845408354 7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 7.5376383325964677e-16 -8.3215561470319716e-06 -2.7159860676702158e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.41319340951799 -36.973216297676274 10.111224255903863 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "44B80976-403F-01AC-41E4-4C9E1BC22146";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.591760048278164 7.9936057773011271e-15 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 3.3804452207442989e-19 1.6976894730154242e-05 -1.350995308182487e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -31.591147132459135 0 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "C95B63A5-4088-F250-2EE0-F783B6E4452B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.610560234948132 5.4978244179437752e-13 0 ;
	setAttr ".r" -type "double3" -2.4920843250495088e-07 1.2598123988599631e-05 -5.1993052317485192e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -179.67552600379349 6.5084974361084384 1.5200106132877551 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "9B29A16E-49B2-8C8B-D58D-5294D06D6F40";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.104208881605222 0.19850025324624809 2.0474560233079586 ;
	setAttr ".r" -type "double3" 1.406278970076663e-06 -1.2822275547029119e-20 9.4640602797257237e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -92.609472538180967 69.489867539049484 -92.785812160028229 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "81A5353E-4BCE-5707-5D66-C2B79B621643";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.0912487710449312 3.730349362740526e-14 -2.7533531010703882e-14 ;
	setAttr ".r" -type "double3" -3.6711845021823332e-08 5.1448996934915087e-23 -2.5724498510312777e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.009921612943367842 -20.050794842130429 -0.55064774987482956 ;
	setAttr ".radi" 2.5834434863695104;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "B9F4E13E-4766-1180-E449-66A4D0609D0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0701347565281267 7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.0753755668243663 17.759895772996163 22.142044085276684 ;
	setAttr ".radi" 2.5834434863695104;
createNode ikEffector -n "effector51" -p "rtLegQd1_ball_ik";
	rename -uid "0BE3FB88-4041-3E0D-17FE-0AB51B8F624A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector50" -p "rtLegQd1_digit_ik";
	rename -uid "5C513BAA-4505-43AA-6FB7-66B7C0A760E8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector49" -p "rtLegQd1_palm_ik";
	rename -uid "5A2EE6BB-40B8-2BC2-CABF-238561475E21";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector48" -p "rtLegQd1_lwr_ik";
	rename -uid "0E224B15-485F-5CC9-7EC2-1E996B5AD63D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "3BF77392-4E1E-7253-E158-55B4FBBB17EE";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -19.532141845408376 3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 79.624870705520166 -21.46565502486985 9.6552546202403136 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "218B1649-4C98-24AE-471F-B18E285FDDB0";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -54.080726623535156 7.1054273576010019e-15 2.248201624865942e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.9828607611311968e-32 -1.3914926731402886e-15 -1.1181637552020171e-15 ;
createNode ikEffector -n "effector52" -p "rtLegQd1_softJ";
	rename -uid "E0EBF035-49C7-5D75-4668-E2A9E96F40DC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "00DF3525-4896-7C91-8541-E1AE1FC91F0F";
	setAttr ".t" -type "double3" -30.034036239544875 -44.345923444943786 -7.033988394683873 ;
	setAttr ".r" -type "double3" 174.24871333979056 80.961293911573307 80.314868574072563 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "32A06763-4B8C-DD2C-2A4D-0FA9FBE01B0B";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "3AD5E2B1-4108-D32D-D25B-3FAC56921B40";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "B0F61ABC-4868-5C60-96A0-CEAC99648087";
	setAttr ".t" -type "double3" -2.0721296135173048 -12.747974631088638 0.052403655506651603 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "A91A184C-4F14-B561-E960-99B40A1C4A92";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "77953FD2-4307-EF7B-CF05-D2AB7B719660";
	setAttr ".t" -type "double3" -1.2780960106798638 0.056478686259871846 10.2993745446243 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "82169EC2-441F-2F3F-F962-3B83D0628604";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "469BC37B-4642-1374-1594-84BC3F268344";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "29C6246C-4873-304D-815D-2E8FC17B751A";
	setAttr ".t" -type "double3" -2.715656743585102 -0.056478686259871846 -5.6866899434130787 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "4E1B6CC1-467B-917A-7332-87824E801811";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "7F586EB6-41B5-2231-7C57-AA88E1A91D49";
	setAttr ".t" -type "double3" 8.5151509361087339 0 -0.88595614751790208 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "10AD1B72-46D4-6051-12D0-008EE9C7E492";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "DCD01625-49AD-58B2-9AAE-AC97914046C4";
	setAttr ".t" -type "double3" -4.079537952424678 1.7134355574748668 2.1002294166446944 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "779869B2-473D-8C8A-7C4B-9DB0B688A095";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "46CAFE25-439D-8EC7-33EA-7E914A79C27C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-5.3335890299580469e-17 7.7404370790920565 4.70834482611284e-16
		-5.1518512322477207e-17 7.77011721914148 0.22544204366926723
		-4.6190235525862006e-17 7.8571346155398416 0.43552057018421542
		-3.7714166995798254e-17 7.9955592628107475 0.61591909352550089
		-2.6667945149790235e-17 8.175957683495211 0.75434380923428701
		-1.3804343427146182e-17 8.3860362442290999 0.84136113719476813
		1.6332818123654819e-32 8.6114782878983682 0.87104114036843083
		1.3804343427146182e-17 8.8369203315676348 0.84136113719476813
		2.6667945149790235e-17 9.0469988923015237 0.75434380923428701
		3.7714166995798254e-17 9.2273973129859872 0.61591909352550089
		4.6190235525862006e-17 9.3658225077599386 0.43552057018421542
		5.1518512322477207e-17 9.4528393566552555 0.22544204366926723
		5.3335890299580469e-17 9.4825194967046791 2.5738559611996558e-16
		5.1518512322477207e-17 9.4528393566552555 -0.22544204366926723
		4.6190235525862006e-17 9.3658225077599386 -0.43552057018421542
		3.7714166995798254e-17 9.2273973129859872 -0.61591909352550089
		2.6667945149790235e-17 9.0469988923015237 -0.75434380923428701
		1.3804343427146182e-17 8.8369203315676348 -0.84136113719476813
		-3.9904184464051945e-32 8.6114782878983682 -0.87104114036843083
		-1.3804343427146182e-17 8.3860362442290999 -0.84136113719476813
		-2.6667945149790235e-17 8.175957683495211 -0.75434380923428701
		-3.7714166995798254e-17 7.9955592628107475 -0.61591909352550089
		-4.6190235525862006e-17 7.8571346155398416 -0.43552057018421542
		-5.1518512322477207e-17 7.77011721914148 -0.22544204366926723
		-5.3335890299580469e-17 7.7404370790920565 4.70834482611284e-16
		0 0 0
		;
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "69900256-405A-831C-30D8-54BA1A93610B";
	setAttr ".t" -type "double3" 1.4317691308517553 -0.06966980799144773 -3.8319055025367064 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "FA607FC2-4F6B-3315-31B2-869AD32A0A79";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 173.85262326263108 -3.975693351829396e-16 91.088395470866544 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "67B4BCC7-4CE6-800F-6113-88824F668B0E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "593B7749-4771-D7A5-E539-2BA83361EDC8";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "F358BD0F-4D3F-7B56-FE24-C382E3D8A836";
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
		5.1413108308108528 8.6114782878983682 0
		4.7735800440470095 10.588759797809898 0
		3.6535401878015104 12.265018475699879 0
		1.9772815099115288 13.385058331945377 0
		0 13.752668558014395 0
		-1.9772815099115288 13.385058331945377 0
		-3.6535401878015104 12.265018475699879 0
		-4.7735800440470095 10.588759797809898 0
		-5.1413108308108528 8.6114780443068621 0
		-4.7735800440470095 6.6341967779868396 0
		-3.6535401878015104 4.9579381000968574 0
		-1.9772815099115288 3.8378982438513587 0
		2.0531348545041199e-07 3.4702880177823401 -0.034959156907960642
		1.9772815099115288 3.8378982438513587 0
		3.6535401878015104 4.9579381000968574 0
		4.7735800440470095 6.6341967779868396 0
		5.1413108308108528 8.6114782878983682 0
		4.7499501478613162 8.6248569426490072 -1.9674506463963728
		3.6354560835777661 8.6361990172508385 -3.6353768579783092
		1.967495426083022 8.6437775314193619 -4.7498468101228948
		2.0531348545041199e-07 8.6464388226428408 -5.1411971592985903
		-1.967495426083022 8.6437775314193619 -4.7498468101228948
		-3.6354560835777661 8.6361990172508385 -3.6353768579783092
		-4.7499501478613162 8.6248569426490072 -1.9674506463963728
		-5.1413108308108528 8.6114780443068621 0
		-4.7499501478613162 8.5980991509049485 1.9674437572138115
		-3.6354560835777661 8.5867570763031189 3.6353734133870281
		-1.967495426083022 8.5791785621345955 4.7498399209403335
		2.0531348545041199e-07 8.5765174086947678 5.1411902701160281
		1.967495426083022 8.5791785621345955 4.7498399209403335
		3.6354560835777661 8.5867570763031189 3.6353734133870281
		4.7499501478613162 8.5980991509049485 1.9674437572138115
		5.1413108308108528 8.6114782878983682 0
		4.7499501478613162 8.6248569426490072 -1.9674506463963728
		3.6354560835777661 8.6361990172508385 -3.6353768579783092
		1.967495426083022 8.6437775314193619 -4.7498468101228948
		2.0531348545041199e-07 8.6464388226428408 -5.1411971592985903
		2.0531348545041199e-07 10.611225422142709 -4.7364645729973223
		2.0531348545041199e-07 12.271570088315796 -3.6106550263566288
		2.0531348545041199e-07 13.374697001372994 -1.9351507139571229
		0 13.752668558014395 0
		2.0531348545041199e-07 13.34793941630441 1.999747134244342
		2.0531348545041199e-07 12.222129869663716 3.6600883558261477
		2.0531348545041199e-07 10.546629001855491 4.7632187134746244
		2.0531348545041199e-07 8.5765174086947678 5.1411902701160281
		2.0531348545041199e-07 6.6117311536540262 4.7364576838147618
		2.0531348545041199e-07 4.9513864874809403 3.6106481371740675
		2.0531348545041199e-07 3.8482595744237438 1.9351438247745611
		2.0531348545041199e-07 3.4702880177823401 -0.034959156907960642
		2.0531348545041199e-07 3.8750171594923257 -1.9997540234269036
		2.0531348545041199e-07 5.0008267061330205 -3.6600952450087085
		2.0531348545041199e-07 6.6763275739412453 -4.7632256026571858
		2.0531348545041199e-07 8.6464388226428408 -5.1411971592985903
		;
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "CA45DDCC-4DA7-CC26-6FEE-A482428A9414";
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-16 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "C6E7D5FE-4F10-188A-DCBE-95B1A0F8FEC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -5.773159728050814e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 0 89.999999999998835 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 4.3790577010150533e-47 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "8B92B3A0-42A5-B5A8-53B7-9ABE048E4E02";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.19850025324645859 11.104208881605217 -2.0474560233079515 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "669DEC7E-4968-976C-41CA-659D35F2BD4C";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "2F397DE8-4544-990C-264B-068A8954BC78";
	setAttr ".t" -type "double3" 0.19850025324645948 11.104208881605206 -2.0474560233079515 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "5C2636E2-4AF7-B393-C9D9-D7AEDF9FFF0A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "2F13C042-4942-64C5-9BA6-9DB7E2EF6976";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "0ABCCD56-4814-EBCA-61D3-C68763F382D3";
	setAttr ".t" -type "double3" -4.079537952424678 1.7134355574748668 2.1002294166446944 ;
	setAttr ".r" -type "double3" -49.642127413009447 61.897950918523101 43.93121938507678 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "009447DA-45F9-12B8-29C1-AD8BCD3D86BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" 0.19040732964399792 20.049930307658311 0.58255329746609652 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.88211002055276477 -0.35894198850120468 0.30502878639761621 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "D470D9EF-42C1-E754-2C87-219B1C58C7CC";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -1.4210854715202004e-14 -3.1974423109204508e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "55169830-4826-21C6-F714-C19A70724BF9";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000002 ;
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "B034FBF4-4871-D386-A99E-F3B07846A5D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371156
		-0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0 0.53283521906371156 0
		-0.53283521906371156 0 0
		0 -0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 -0.53283521906371156 0
		0 0 -0.53283521906371156
		;
createNode nurbsCurve -n "rtLegQd1_outRollG_ctlShape1" -p "rtLegQd1_outRollG_ctl";
	rename -uid "1AC6B293-469B-9F1F-C1BA-2789F50C3BAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371156
		-0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0 0.53283521906371156 0
		-0.53283521906371156 0 0
		0 -0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 -0.53283521906371156 0
		0 0 -0.53283521906371156
		;
createNode nurbsCurve -n "rtLegQd1_toeRollG_ctlShape1" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "9B01C92F-49E0-99DA-8726-9AB010187A3A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371156
		-0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0 0.53283521906371156 0
		-0.53283521906371156 0 0
		0 -0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 -0.53283521906371156 0
		0 0 -0.53283521906371156
		;
createNode nurbsCurve -n "rtLegQd1_heelRollG_ctlShape1" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "9D68A2B1-44FE-B837-64CE-F4BBA708913B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.53283521906371156
		-0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 -0.53283521906371156
		0 0.53283521906371156 0
		-0.53283521906371156 0 0
		0 -0.53283521906371156 0
		0.53283521906371156 0 0
		0 0 0.53283521906371156
		0 -0.53283521906371156 0
		0 0 -0.53283521906371156
		;
createNode transform -n "rtLegQd1_line_53" -p "rtLegQd1_IK";
	rename -uid "8BFC12F0-40E7-5FF0-5A70-46B246EE873A";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "0E2E96CE-4BA2-B63A-346D-A5B59D520254";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8.6425410413393031 41.359122367441429 47.524030214667619
		-8.642541077742754 45.10059434388743 10.375821564859352
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "EB7B8CE8-4CC5-4B76-DB3F-45ACF83FD39E";
	setAttr ".t" -type "double3" -8.1263706397291564 2.831956472413987 52.704151374308196 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "8F2B8708-4E4F-9F16-893E-EB9EC8A15C64";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "362824E6-4D4D-181F-EE3C-ABB4ADB0C102";
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
	rename -uid "852A0412-401F-050A-698F-FD8570067030";
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
		6.4586087159237699 -2.8319564724139852 6.4586087159237771
		6.3345083604620429 -2.8319564724139852 7.7186207700895189
		5.9669764011409745 -2.8319564724139852 8.9302112676365706
		5.3701368850429771 -2.8319564724139852 10.04681946521198
		4.5669260200602384 -2.8319564724139856 11.025534735984014
		3.5882107492882032 -2.8319564724139856 11.828745600966755
		2.4716025517127931 -2.8319564724139856 12.425585117064752
		1.2600120541657405 -2.8319564724139856 12.793117076385823
		-7.540005297182268e-16 -2.8319564724139856 12.917217431847547
		-1.260012054165742 -2.8319564724139856 12.793117076385823
		-2.4716025517127949 -2.8319564724139856 12.425585117064752
		-3.5882107492882054 -2.8319564724139856 11.828745600966755
		-4.566926020060242 -2.8319564724139856 11.025534735984015
		-5.3701368850429807 -2.8319564724139852 10.046819465211982
		-5.966976401140978 -2.8319564724139852 8.9302112676365706
		-6.3345083604620473 -2.8319564724139852 7.7186207700895171
		-6.4586087159237744 -2.8319564724139852 6.4586087159237744
		-6.3345083223716596 -0.89785626677145203 6.4586087159237762
		-5.9669763722992073 0.98542403273801904 6.4586087159237762
		-5.3701370070623957 2.6162296233387519 6.4586087159237762
		-4.5669260188932483 3.9138908345852874 6.4586087159237762
		-3.5882106713177078 4.8910722938477038 6.4586087159237762
		-2.4716024730222994 5.4879116590845154 6.4586087159237762
		-1.2600120264583561 5.8554436091569677 6.4586087159237762
		3.9547572470596432e-16 5.9795440027090816 6.4586087159237762
		1.2600120264583561 5.8554436091569677 6.4586087159237762
		2.4716024730222994 5.4879116590845154 6.4586087159237762
		3.5882106713177078 4.8910722938477038 6.4586087159237762
		4.5669260188932483 3.9138908345852874 6.4586087159237762
		5.3701370070623957 2.6162296233387519 6.4586087159237762
		5.9669763722992073 0.98542403273801904 6.4586087159237762
		6.3345083223716596 -0.89785626677145203 6.4586087159237762
		6.4586087159237762 -2.8319564724139852 6.4586087159237762
		6.4586087159237762 -2.831956472413987 -6.0710921929683481
		6.4586087159237762 -2.4444399494585585 -6.4586087159237762
		6.3345083223716596 -0.89785626677145203 -6.4586087159237762
		5.9669763722992073 0.98542403273801904 -6.4586087159237762
		5.3701370070623957 2.6162296233387519 -6.4586087159237762
		4.5669260188932483 3.9138908345852874 -6.4586087159237762
		3.5882106713177078 4.8910722938477038 -6.4586087159237762
		2.4716024730222994 5.4879116590845154 -6.4586087159237762
		1.2600120264583561 5.8554436091569677 -6.4586087159237762
		3.9547572470596432e-16 5.9795440027090816 -6.4586087159237762
		-1.2600120264583561 5.8554436091569677 -6.4586087159237762
		-2.4716024730222994 5.4879116590845154 -6.4586087159237762
		-3.5882106713177078 4.8910722938477038 -6.4586087159237762
		-4.5669260188932483 3.9138908345852874 -6.4586087159237762
		-5.3701370070623957 2.6162296233387519 -6.4586087159237762
		-5.9669763722992073 0.98542403273801904 -6.4586087159237762
		-6.3345083223716596 -0.89785626677145203 -6.4586087159237762
		-6.4586087159237762 -2.4444399494585585 -6.4586087159237762
		-6.4586087159237762 -2.8319564724139843 -6.0710921929683481
		-6.4586087159237762 -2.8319564724139852 6.4586087159237762
		;
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "28370E3B-4B68-1D04-7FA2-24B84D25B622";
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
	rename -uid "833708E1-4DF4-D452-AB3D-13898B3F1ED5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.2917217431847536 0.88115007210120533 
		-0.64586088045282253 -1.2669016720924082 0.88115007210120533 -0.89786329128597053 
		-1.1933952802281951 0.88115007210120533 -1.1401813907953802 -1.0740273770085951 0.88115007210120533 
		-1.3635030303104632 -0.91338520401204759 0.88115007210120533 -1.5592460844648688 
		-0.71764214985764063 0.88115007210120533 -1.7198882574614185 -0.49432051034255853 
		0.88115007210120533 -1.8392561606810176 -0.25200241083314801 0.88115007210120533 
		-1.9127625525452316 1.5080010594364536e-16 0.88115007210120533 -1.9375826236375762 
		0.25200241083314845 0.88115007210120533 -1.9127625525452316 0.49432051034255897 0.88115007210120533 
		-1.8392561606810176 0.71764214985764108 0.88115007210120533 -1.7198882574614185 0.91338520401204804 
		0.88115007210120533 -1.5592460844648706 1.074027377008596 0.88115007210120533 -1.3635030303104632 
		1.1933952802281951 0.88115007210120533 -1.1401813907953802 1.2669016720924091 0.88115007210120533 
		-0.89786329128597053 1.2917217431847545 0.88115007210120533 -0.64586088045282164 
		1.2669016644743314 0.49433003097269856 -0.64586088045282164 1.1933952744598413 0.11767397107080457 
		-0.64586088045282164 1.0740274014124793 -0.2084871470493419 -0.64586088045282164 
		0.9133852037786494 -0.46801938929864928 -0.64586088045282164 0.71764213426354129 
		-0.66345568115113185 -0.64586088045282164 0.4943204946044597 -0.7828235541984947 
		-0.64586088045282164 0.25200240529167117 -0.85632994421298481 -0.64586088045282164 
		-7.9095144941192865e-17 -0.88115002292340794 -0.64586088045282164 -0.25200240529167117 
		-0.85632994421298481 -0.64586088045282164 -0.4943204946044597 -0.7828235541984947 
		-0.64586088045282164 -0.71764213426354129 -0.66345568115113185 -0.64586088045282164 
		-0.9133852037786494 -0.46801938929864928 -0.64586088045282164 -1.0740274014124793 
		-0.2084871470493419 -0.64586088045282164 -1.1933952744598413 0.11767397107080457 
		-0.64586088045282164 -1.2669016644743314 0.49433003097269856 -0.64586088045282164 
		-1.2917217431847545 0.88115007210120533 -0.64586088045282164 -1.2917217431847545 
		0.88115007210120533 1.8600793013256025 -1.2917217431847545 0.80364676751011976 1.9375826059166874 
		-1.2669016644743314 0.49433003097269856 1.9375826059166874 -1.1933952744598413 0.11767397107080457 
		1.9375826059166874 -1.0740274014124793 -0.2084871470493419 1.9375826059166874 -0.9133852037786494 
		-0.46801938929864928 1.9375826059166874 -0.71764213426354129 -0.66345568115113185 
		1.9375826059166874 -0.4943204946044597 -0.7828235541984947 1.9375826059166874 -0.25200240529167117 
		-0.85632994421298481 1.9375826059166874 -7.9095144941192865e-17 -0.88115002292340794 
		1.9375826059166874 0.25200240529167117 -0.85632994421298481 1.9375826059166874 0.4943204946044597 
		-0.7828235541984947 1.9375826059166874 0.71764213426354129 -0.66345568115113185 1.9375826059166874 
		0.9133852037786494 -0.46801938929864928 1.9375826059166874 1.0740274014124793 -0.2084871470493419 
		1.9375826059166874 1.1933952744598413 0.11767397107080457 1.9375826059166874 1.2669016644743314 
		0.49433003097269856 1.9375826059166874 1.2917217431847545 0.80364676751011976 1.9375826059166874 
		1.2917217431847545 0.88115007210120488 1.8600793013256025 1.2917217431847545 0.88115007210120533 
		-0.64586088045282164;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "E31A6511-461A-CEC7-5FAC-EDAAC16705A3";
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
		6.4586087159237699 -2.8319564724139852 6.4586087159237771
		6.3345083604620429 -2.8319564724139852 7.7186207700895189
		5.9669764011409745 -2.8319564724139852 8.9302112676365706
		5.3701368850429771 -2.8319564724139852 10.04681946521198
		4.5669260200602384 -2.8319564724139856 11.025534735984014
		3.5882107492882032 -2.8319564724139856 11.828745600966755
		2.4716025517127931 -2.8319564724139856 12.425585117064752
		1.2600120541657405 -2.8319564724139856 12.793117076385823
		-7.540005297182268e-16 -2.8319564724139856 12.917217431847547
		-1.260012054165742 -2.8319564724139856 12.793117076385823
		-2.4716025517127949 -2.8319564724139856 12.425585117064752
		-3.5882107492882054 -2.8319564724139856 11.828745600966755
		-4.566926020060242 -2.8319564724139856 11.025534735984015
		-5.3701368850429807 -2.8319564724139852 10.046819465211982
		-5.966976401140978 -2.8319564724139852 8.9302112676365706
		-6.3345083604620473 -2.8319564724139852 7.7186207700895171
		-6.4586087159237744 -2.8319564724139852 6.4586087159237744
		-6.3345083223716596 -0.89785626677145203 6.4586087159237762
		-5.9669763722992073 0.98542403273801904 6.4586087159237762
		-5.3701370070623957 2.6162296233387519 6.4586087159237762
		-4.5669260188932483 3.9138908345852874 6.4586087159237762
		-3.5882106713177078 4.8910722938477038 6.4586087159237762
		-2.4716024730222994 5.4879116590845154 6.4586087159237762
		-1.2600120264583561 5.8554436091569677 6.4586087159237762
		3.9547572470596432e-16 5.9795440027090816 6.4586087159237762
		1.2600120264583561 5.8554436091569677 6.4586087159237762
		2.4716024730222994 5.4879116590845154 6.4586087159237762
		3.5882106713177078 4.8910722938477038 6.4586087159237762
		4.5669260188932483 3.9138908345852874 6.4586087159237762
		5.3701370070623957 2.6162296233387519 6.4586087159237762
		5.9669763722992073 0.98542403273801904 6.4586087159237762
		6.3345083223716596 -0.89785626677145203 6.4586087159237762
		6.4586087159237762 -2.8319564724139852 6.4586087159237762
		6.4586087159237762 -2.831956472413987 -6.0710921929683481
		6.4586087159237762 -2.4444399494585585 -6.4586087159237762
		6.3345083223716596 -0.89785626677145203 -6.4586087159237762
		5.9669763722992073 0.98542403273801904 -6.4586087159237762
		5.3701370070623957 2.6162296233387519 -6.4586087159237762
		4.5669260188932483 3.9138908345852874 -6.4586087159237762
		3.5882106713177078 4.8910722938477038 -6.4586087159237762
		2.4716024730222994 5.4879116590845154 -6.4586087159237762
		1.2600120264583561 5.8554436091569677 -6.4586087159237762
		3.9547572470596432e-16 5.9795440027090816 -6.4586087159237762
		-1.2600120264583561 5.8554436091569677 -6.4586087159237762
		-2.4716024730222994 5.4879116590845154 -6.4586087159237762
		-3.5882106713177078 4.8910722938477038 -6.4586087159237762
		-4.5669260188932483 3.9138908345852874 -6.4586087159237762
		-5.3701370070623957 2.6162296233387519 -6.4586087159237762
		-5.9669763722992073 0.98542403273801904 -6.4586087159237762
		-6.3345083223716596 -0.89785626677145203 -6.4586087159237762
		-6.4586087159237762 -2.4444399494585585 -6.4586087159237762
		-6.4586087159237762 -2.8319564724139843 -6.0710921929683481
		-6.4586087159237762 -2.8319564724139852 6.4586087159237762
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "DB89360D-444B-B8CA-5B80-118E54CDC56A";
	setAttr ".t" -type "double3" -3.1517253709507091 -1.5872870632235476 8.3043221768229927 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "54A0468C-40E1-FA10-3831-7BB6030C83E8";
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
	rename -uid "94D6032B-4B96-1FA3-23D5-B2A8F92BAFEB";
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
		2.971595054336492 6.0992054909263622e-17 -2.9715950543364955
		1.6452696978208372e-16 8.6255791249685234e-17 -2.6869293235671488
		-2.971595054336492 6.0992054909263585e-17 -2.9715950543364933
		-2.6869293235671563 -3.5203803716507519e-32 -1.0433273694449969e-15
		-2.971595054336492 -6.099205490926361e-17 2.971595054336492
		-2.6915154801683047e-16 -8.625579124968532e-17 2.6869293235671514
		2.971595054336492 -6.0992054909263585e-17 2.9715950543364933
		2.6869293235671563 -5.1437990964234829e-32 -5.3762087567542496e-16
		2.971595054336492 6.0992054909263622e-17 -2.9715950543364955
		1.6452696978208372e-16 8.6255791249685234e-17 -2.6869293235671488
		-2.971595054336492 6.0992054909263585e-17 -2.9715950543364933
		;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "F709F254-4D25-44D3-DEDF-BDACD8194EF8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 4.7961634663806763e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "6237E63D-4DEE-9663-3FA1-65A535C4EFC2";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -5.0888874903416268e-14 -2.16763575358618e-29 -2.167635753586178e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 64.384444199011398 1.9925699307207112 -90.955063779096804 ;
	setAttr ".radi" 1.7222956575796735;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "B537828E-4230-EDA3-80A3-069426BAD554";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -83.405895879428087 -3.5527136788005009e-14 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.7222956575796735;
createNode ikEffector -n "effector54" -p "rtLegQd1_legLock";
	rename -uid "B2DA3E1D-4BD7-00A4-280A-D9B35CD00190";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "390ACDC8-4BE6-1C9D-84F7-C5940D2D0A26";
	setAttr ".t" -type "double3" -8.642541077742754 45.100594343887423 10.375821564859351 ;
	setAttr ".r" -type "double3" -5.751286660209459 180 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "A6262E9D-459C-0E69-4A57-6A8A6775DEAB";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "C3C2BFCE-4948-A0D6-F520-00A383E60A16";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 5.6843418860808015e-14 -1.9539925233402755e-14 ;
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
createNode nurbsCurve -n "rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "8E109CE5-43A5-9FC6-9926-AA95DF9931A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.1313408762548463
		-2.1313408762548463 0 0
		0 0 -2.1313408762548463
		2.1313408762548463 0 0
		0 0 2.1313408762548463
		0 2.1313408762548463 0
		2.1313408762548463 0 0
		0 0 -2.1313408762548463
		0 2.1313408762548463 0
		-2.1313408762548463 0 0
		0 -2.1313408762548463 0
		2.1313408762548463 0 0
		0 0 2.1313408762548463
		0 -2.1313408762548463 0
		0 0 -2.1313408762548463
		;
createNode transform -n "rtLegQd1_extraRollG_ofs_loc" -p "rtLegQd1_IK";
	rename -uid "43FF4CAA-4CA0-0040-DBB7-5E93E4CD75E5";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.16791404314336997 -154.92373409300913 -88.418616512211912 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "466F7934-4310-786A-3675-B3A316BF852E";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "57078138-46A0-E9E0-744D-818DA3ED7897";
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
	rename -uid "AF80FDC3-4B0D-D0AB-88F7-C596CE786802";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.3057391439491841 4.3057391439491841 1.0719129521345499e-16
		-4.2230055482477731 4.3057391439491841 -0.84000801763890387
		-3.9779842481994714 4.3057391439491841 -1.6477350846716872
		-3.5800913380415973 4.3057391439491841 -2.3921404475451382
		-3.0446173459288319 4.3057391439491841 -3.0446173459288319
		-2.3921404475451382 4.3057391439491841 -3.5800913380415973
		-1.6477350846716872 4.3057391439491841 -3.9779842481994714
		-0.84000801763890387 4.3057391439491841 -4.2230055482477731
		2.6365048313730955e-16 4.3057391439491841 -4.3057391439491841
		0.84000801763890387 4.3057391439491841 -4.2230055482477731
		1.6477350846716872 4.3057391439491841 -3.9779842481994714
		2.3921404475451382 4.3057391439491841 -3.5800913380415973
		3.0446173459288319 4.3057391439491841 -3.0446173459288319
		3.5800913380415973 4.3057391439491841 -2.3921404475451382
		3.9779842481994714 4.3057391439491841 -1.6477350846716872
		4.2230055482477731 4.3057391439491841 -0.84000801763890387
		4.3057391439491841 4.3057391439491841 -4.6571607759222644e-16
		4.1418619013879692 4.3057391439491841 -0.82386749100743317
		3.675178244939008 4.3057391439491841 -1.522308672964416
		2.9767369603252041 4.3057391439491841 -1.9889921240997357
		2.1528695719745921 4.3057391439491841 -2.1528695719745921
		1.3290020809671588 4.3057391439491841 -1.9889921240997357
		0.63056089901017598 4.3057391439491841 -1.522308672964416
		0.16387744787485617 4.3057391439491841 -0.82386749100743317
		0 4.3057391439491841 -4.6571607759222644e-16
		-0.16387744787485617 4.3057391439491841 0.82386749100743317
		-0.63056089901017598 4.3057391439491841 1.522308672964416
		-1.3290020809671588 4.3057391439491841 1.9889921240997357
		-2.1528695719745921 4.3057391439491841 2.1528695719745921
		-2.9767369603252041 4.3057391439491841 1.9889921240997357
		-3.675178244939008 4.3057391439491841 1.522308672964416
		-4.1418619013879692 4.3057391439491841 0.82386749100743317
		-4.3057391439491841 4.3057391439491841 1.0719129521345499e-16
		-4.2230055482477731 4.3057391439491841 0.84000801763890387
		-3.9779842481994714 4.3057391439491841 1.6477350846716872
		-3.5800913380415973 4.3057391439491841 2.3921404475451382
		-3.0446173459288319 4.3057391439491841 3.0446173459288319
		-2.3921404475451382 4.3057391439491841 3.5800913380415973
		-1.6477350846716872 4.3057391439491841 3.9779842481994714
		-0.84000801763890387 4.3057391439491841 4.2230055482477731
		-5.0266701991941932e-16 4.3057391439491841 4.3057391439491841
		0.84000801763890387 4.3057391439491841 4.2230055482477731
		1.6477350846716872 4.3057391439491841 3.9779842481994714
		2.3921404475451382 4.3057391439491841 3.5800913380415973
		3.0446173459288319 4.3057391439491841 3.0446173459288319
		3.5800913380415973 4.3057391439491841 2.3921404475451382
		3.9779842481994714 4.3057391439491841 1.6477350846716872
		4.2230055482477731 4.3057391439491841 0.84000801763890387
		4.3057391439491841 4.3057391439491841 -4.6571607759222644e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe01_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "3C90B140-44D9-7F97-AF17-6786800B7A1E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe01_4_ctl" -p "rtLegQd1_toe01_4_ctl_ofs";
	rename -uid "B1D34F62-4990-1FE6-8E51-D5A59CACA932";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_4_ctlShape1" -p "rtLegQd1_toe01_4_ctl";
	rename -uid "00F976E5-4298-9224-5C23-03B12B9971AB";
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
		7.0979540930581922e-15 0.36410506234293677 0.36410506234293744
		7.0948585655293585e-15 -2.2975082506715956e-16 0.32922539948395696
		7.0979540930581922e-15 -0.36410506234293727 0.36410506234293721
		7.1054273576010019e-15 -0.32922539948395813 1.2783732976722301e-16
		7.1129006221438107e-15 -0.36410506234293727 -0.36410506234293699
		7.1159961496726452e-15 -2.8288880008483022e-16 -0.32922539948395729
		7.1129006221438107e-15 0.36410506234293677 -0.36410506234293721
		7.1054273576010019e-15 0.32922539948395763 6.5873875435686797e-17
		7.0979540930581922e-15 0.36410506234293677 0.36410506234293744
		7.0948585655293585e-15 -2.2975082506715956e-16 0.32922539948395696
		7.0979540930581922e-15 -0.36410506234293727 0.36410506234293721
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe02_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "0D55CAA2-482B-FCDC-9A81-0A92E015730F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_4_ctl" -p "rtLegQd1_toe02_4_ctl_ofs";
	rename -uid "B1A66D52-4B4B-ECA5-4F4F-33895886187D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_4_ctlShape1" -p "rtLegQd1_toe02_4_ctl";
	rename -uid "5910A3C4-42D0-DB75-9D7F-A7B85F8C8936";
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
		-7.4732645428095998e-18 0.36410506234293699 0.36410506234293721
		-1.0568792071643315e-17 2.0159241583801847e-17 0.32922539948395674
		-7.4732645428095952e-18 -0.36410506234293699 0.36410506234293699
		4.3134689998228948e-33 -0.3292253994839579 -1.0201696474065084e-16
		7.4732645428095983e-18 -0.36410506234293699 -0.36410506234293721
		1.0568792071643326e-17 -3.2978733433868813e-17 -0.32922539948395751
		7.4732645428095952e-18 0.36410506234293699 -0.36410506234293744
		6.3026194903295772e-33 0.3292253994839579 -1.6398041907218704e-16
		-7.4732645428095998e-18 0.36410506234293699 0.36410506234293721
		-1.0568792071643315e-17 2.0159241583801847e-17 0.32922539948395674
		-7.4732645428095952e-18 -0.36410506234293699 0.36410506234293699
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe03_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "56185412-456B-0F0B-2380-448DB8DC716C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_4_ctl" -p "rtLegQd1_toe03_4_ctl_ofs";
	rename -uid "4738D924-401E-1615-599C-739A62E77CA8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_4_ctlShape1" -p "rtLegQd1_toe03_4_ctl";
	rename -uid "1211CE2E-4E68-659D-3F90-8F97EFF105F4";
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
		1.1748176878267111e-16 0.36410506234294054 0.36410506234293744
		1.143862412538374e-16 3.5728729203843025e-15 0.32922539948395696
		1.1748176878267111e-16 -0.36410506234293349 0.36410506234293721
		1.2495503332548071e-16 -0.32922539948395435 1.2783732976722301e-16
		1.3242829786829031e-16 -0.36410506234293349 -0.36410506234293699
		1.3552382539712405e-16 3.5197349453666322e-15 -0.32922539948395729
		1.3242829786829031e-16 0.36410506234294054 -0.36410506234293721
		1.2495503332548071e-16 0.32922539948396146 6.5873875435686797e-17
		1.1748176878267111e-16 0.36410506234294054 0.36410506234293744
		1.143862412538374e-16 3.5728729203843025e-15 0.32922539948395696
		1.1748176878267111e-16 -0.36410506234293349 0.36410506234293721
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe04_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "BFB14C27-45E0-6409-1B8C-9E8E5B2F8F34";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe04_4_ctl" -p "rtLegQd1_toe04_4_ctl_ofs";
	rename -uid "F4E15CB7-4BAA-0B07-F50A-4187EF49E288";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_4_ctlShape1" -p "rtLegQd1_toe04_4_ctl";
	rename -uid "0354471C-45C1-730A-A452-76BDAD0C70F5";
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
		-3.8712022874179775e-17 0.3641050623429361 0.36410506234293766
		-4.1807550403013493e-17 -8.6801917811632342e-16 0.32922539948395718
		-3.8712022874179775e-17 -0.36410506234293788 0.36410506234293744
		-3.1238758331370172e-17 -0.32922539948395879 3.5769162427509688e-16
		-2.3765493788560581e-17 -0.36410506234293788 -0.36410506234293677
		-2.0669966259726851e-17 -9.2115715313399398e-16 -0.32922539948395707
		-2.3765493788560581e-17 0.3641050623429361 -0.36410506234293699
		-3.1238758331370172e-17 0.32922539948395702 2.9572816994356066e-16
		-3.8712022874179775e-17 0.3641050623429361 0.36410506234293766
		-4.1807550403013493e-17 -8.6801917811632342e-16 0.32922539948395718
		-3.8712022874179775e-17 -0.36410506234293788 0.36410506234293744
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "ABC5ADC3-45B3-E763-C136-9F888B59B6A0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "16C956DF-4C7A-1A0B-38A8-6B95DE6F8DF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.2206058114202714 4.2206058114202714 4.2206058114202714 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "83118735-44B9-3B57-6530-D9BA8F874E43";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "10494754-43C1-38D4-81A3-33AE9DB85064";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 84.439823977964252 -18.492259890285055 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "950A1DA3-4F92-3E10-1A65-D792A2517FC3";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "823E0EFE-40E0-329B-BC2D-C5A9C78138D9";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "893F8378-40E2-DCDD-398C-F399B44E13EF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		2.0166072476325243 44.365359447915537 31.401001111003719
		2.0166072476325243 49.774066324000977 31.401001111003719
		2.0166072476325243 52.431788438445636 15.268143129943523
		2.0166072476325243 44.365359447915537 15.268143129943523
		2.0166072476325243 44.365359447915537 31.401001111003719
		-2.0166072476325243 44.365359447915537 31.401001111003719
		-2.0166072476325243 44.365359447915537 15.268143129943523
		2.0166072476325243 44.365359447915537 15.268143129943523
		2.0166072476325243 52.431788438445636 15.268143129943523
		-2.0166072476325243 52.431788438445636 15.268143129943523
		-2.0166072476325243 44.365359447915537 15.268143129943523
		-2.0166072476325243 52.431788438445636 15.268143129943523
		-2.0166072476325243 49.774066324000977 31.401001111003719
		-2.0166072476325243 44.365359447915537 31.401001111003719
		2.0166072476325243 44.365359447915537 31.401001111003719
		2.0166072476325243 49.774066324000977 31.401001111003719
		-2.0166072476325243 49.774066324000977 31.401001111003719
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A2405CE3-4491-184D-03C2-69AD57505540";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 -0.83122159794352513 6.6563525609524063 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "709731E3-4A08-675B-38A5-A4AC6C5E6AFB";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "98D3E7B7-43D7-BC94-B41E-2CBC1BC9A211";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.962842585016908 29.102997747448907 -15.365668943231109
		1.6420988379935702e-15 36.957664327308976 -15.365668943231109
		-18.962842585016908 29.102997747448903 -15.365668943231109
		-26.817509164876995 1.3902244107244667e-15 8.5126693734511659e-32
		-18.962842585016908 -18.962842585016908 -1.1611392237238038e-15
		-2.6863282343800665e-15 -26.817509164876999 -1.6420988379935713e-15
		18.962842585016908 -18.962842585016908 -1.1611392237238038e-15
		26.817509164876995 -3.6570942561464055e-15 -2.2393243874849326e-31
		18.962842585016908 29.102997747448907 -15.365668943231109
		1.6420988379935702e-15 36.957664327308976 -15.365668943231109
		-18.962842585016908 29.102997747448903 -15.365668943231109
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "B6A4787E-4FBA-8348-0162-A4B8F135F6F9";
	setAttr ".t" -type "double3" 5.4561850914083838e-14 0.83122159794352513 -6.6563525609524135 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "9C06EF30-4DAF-2A53-1320-6CBA95E6323C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "814E6F76-4D57-221F-43B8-DEB80C95DEFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-5.7372315349428357e-07 3.8550740395113334 -0.82489636387983345
		-6.9966601797331838e-07 4.1193176434240044 -1.5152764783868891
		-7.3774764192186171e-07 3.7918201556175126 -2.0198280771994277
		-6.8085147106063777e-07 3.4086272709046401 -2.1659502851141035
		-6.0069171198946358e-07 2.8687552746934104 -2.1712393028842745
		2.4872590680887708e-07 -2.8520307088695724 -2.2272854383317373
		3.288856658814665e-07 -3.3919027050807626 -2.232574456101867
		3.857818366522574e-07 -3.7750955897936529 -2.0939603760058838
		5.2359983696618655e-07 -4.1193176434240044 -1.5807436902188998
		5.7355659663646436e-07 -3.8717986053351807 -0.88629695978051037
		7.3774764209508238e-07 -0.70885469625369846 3.4342862743209324
		7.0254992598023353e-07 -0.35532963249096583 3.7917043783564321
		6.6030512382837218e-07 -0.0012536484855843327 3.9383537579101535
		5.7404852511977467e-07 0.35626304694100874 3.8001830240075232
		4.8074484037925385e-07 0.71433066261030775 3.4512435656231384
		-5.7372315349428357e-07 3.8550740395113334 -0.82489636387983345
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "AF0FA0BF-4576-3344-BEC0-5B924A98754A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.2265715962120392;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "A0DD1874-40DD-2821-9C2F-39AFE19CE40E";
	setAttr ".t" -type "double3" 0 1.1246887663444625 -11.186871379972594 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "7D3F6936-47C4-B6EF-8EA4-4DB883F290CA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "64A5027C-451B-54EA-119F-9B9AB1911657";
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
		0 16.92681622839552 -3.2604844513517568
		2.9938930022548034 16.553120277367739 -5.5096198514737917
		1.854621834306708 16.553120277367739 -5.5096198514737917
		1.854621834306708 16.308560274130745 -6.9215849121208901
		1.854621834306708 15.731855524614303 -8.4155364924595606
		1.854621834306708 14.933720944244889 -9.9641457525926143
		1.854621834306708 13.968814212816897 -11.345982861667087
		1.854621834306708 12.69909157500663 -12.699091575006634
		1.854621834306708 11.345982861667084 -13.968814212816902
		1.854621834306708 9.9641457525926107 -14.933720944244893
		1.854621834306708 8.415536492459557 -15.731855524614303
		1.854621834306708 6.9215849121208839 -16.308560274130748
		1.854621834306708 5.5096198514737855 -16.553120277367743
		2.9938930022548034 5.5096198514737855 -16.553120277367743
		0 3.2604844513517528 -16.92681622839552
		-2.9938930022548034 5.5096198514737855 -16.553120277367743
		-1.854621834306708 5.5096198514737855 -16.553120277367743
		-1.854621834306708 6.9215849121208839 -16.308560274130748
		-1.854621834306708 8.415536492459557 -15.731855524614303
		-1.854621834306708 9.9641457525926107 -14.933720944244893
		-1.854621834306708 11.345982861667084 -13.968814212816902
		-1.854621834306708 12.69909157500663 -12.699091575006634
		-1.854621834306708 13.968814212816897 -11.345982861667087
		-1.854621834306708 14.933720944244889 -9.9641457525926143
		-1.854621834306708 15.731855524614303 -8.4155364924595606
		-1.854621834306708 16.308560274130745 -6.9215849121208901
		-1.854621834306708 16.553120277367739 -5.5096198514737917
		-2.9938930022548034 16.553120277367739 -5.5096198514737917
		0 16.92681622839552 -3.2604844513517568
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "DC0FB28C-49C5-D3AD-9571-CB89D84CFEA6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 5.4537835835963278e-14 0.83122159794352513 -6.6563525609524063 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 16.132857981060194;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "064D3276-48C7-B8BD-B938-21A3AC625DB4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.4537835835963278e-14 -9.6304574173837381 79.955834235531654 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 16.132857981060194;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "DC75E611-4905-53A0-F849-E49CC1152941";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7141816881955649e-14 5.5910000850974768 -39.908554679873603 ;
	setAttr ".r" -type "double3" 10.726632542602742 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "B6813EE1-4473-21FD-2AE9-5DBEBDB9E9DF";
	setAttr -k off ".v";
createNode ikEffector -n "effector66" -p "spineQd0_two_ikj";
	rename -uid "C6F097AF-435F-B9C6-6F3A-62BDF17DAFA8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "66852FAD-4C4A-BF05-2040-0C9549C7896A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7141816881955649e-14 -3.2082357343427361 33.390926994705644 ;
	setAttr ".r" -type "double3" 10.726632542602742 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "654878A2-423B-DDCD-9F14-CBA5E9BB4CFD";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F094C486-4D1F-5DF6-3BC6-FDA99B9E8130";
	setAttr ".t" -type "double3" -2.7396018954007629e-14 -4.0394573322862612 40.047279555658051 ;
	setAttr ".r" -type "double3" 10.726632542602742 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "3FEB5D89-4DEA-D9AC-D032-3DAB197B7F94";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "25CFECF1-4F2F-B32B-EF2E-12930E3DE000";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "8947767D-451F-4329-4B95-E0A86EBF30EA";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "D2B3D4DE-4659-8685-7F64-7DB28B4495D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.962842585016908 18.962842585016912 1.161139223723804e-15
		1.6420988379935702e-15 26.817509164876981 1.6420988379935702e-15
		-18.962842585016908 18.962842585016908 1.1611392237238038e-15
		-26.817509164876995 1.3902244107244667e-15 8.5126693734511659e-32
		-18.962842585016908 -18.962842585016908 -1.1611392237238038e-15
		-2.6863282343800665e-15 -26.817509164876999 -1.6420988379935713e-15
		18.962842585016908 -18.962842585016908 -1.1611392237238038e-15
		26.817509164876995 -3.6570942561464055e-15 -2.2393243874849326e-31
		18.962842585016908 18.962842585016912 1.161139223723804e-15
		1.6420988379935702e-15 26.817509164876981 1.6420988379935702e-15
		-18.962842585016908 18.962842585016908 1.1611392237238038e-15
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "4FC617C4-4B65-1583-124D-1F8235230C63";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 10.726632542602742 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -10.726632542602742 0 0 ;
	setAttr ".radi" 3.2265715962120392;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "E5069C5A-4C62-EACB-74BD-1D9FFE095B73";
	setAttr ".t" -type "double3" -5.4537835835963271e-14 -9.6304574173837381 79.955834235531654 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "3444C194-45DF-9AA9-76C4-AD9EBFEA871D";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "CFB746B0-40F0-D022-A42D-CC9C7DB79B0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.962842585016908 35.793723899321122 -15.700794797932502
		1.6420988379935702e-15 43.648390479181188 -15.700794797932502
		-18.962842585016908 35.793723899321115 -15.700794797932502
		-26.817509164876995 1.3902244107244667e-15 8.5126693734511659e-32
		-18.962842585016908 -18.962842585016908 -1.1611392237238038e-15
		-2.6863282343800665e-15 -26.817509164876999 -1.6420988379935713e-15
		18.962842585016908 -18.962842585016908 -1.1611392237238038e-15
		26.817509164876995 -3.6570942561464055e-15 -2.2393243874849326e-31
		18.962842585016908 35.793723899321122 -15.700794797932502
		1.6420988379935702e-15 43.648390479181188 -15.700794797932502
		-18.962842585016908 35.793723899321115 -15.700794797932502
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "FF8336AE-494F-45EE-AB79-01B488E21568";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "426138AF-4296-673F-D104-21B9A2381228";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "D9FF222C-469C-6CF3-FF3C-C6A255219BC1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-5.7372315349428357e-07 -3.8550740395113334 0.824896363879834
		-6.9966601797331838e-07 -4.1193176434240044 1.5152764783868895
		-7.3774764192186171e-07 -3.7918201556175126 2.0198280771994277
		-6.8085147106063777e-07 -3.4086272709046401 2.1659502851141039
		-6.0069171198946358e-07 -2.8687552746934104 2.1712393028842749
		2.4872590680887708e-07 2.8520307088695724 2.2272854383317369
		3.288856658814665e-07 3.3919027050807626 2.2325744561018666
		3.857818366522574e-07 3.7750955897936529 2.0939603760058834
		5.2359983696618655e-07 4.1193176434240044 1.5807436902188994
		5.7355659663646436e-07 3.8717986053351807 0.88629695978050982
		7.3774764209508238e-07 0.70885469625369801 -3.4342862743209324
		7.0254992598023353e-07 0.35532963249096539 -3.7917043783564321
		6.6030512382837218e-07 0.0012536484855838505 -3.9383537579101535
		5.7404852511977467e-07 -0.35626304694100924 -3.8001830240075232
		4.8074484037925385e-07 -0.7143306626103082 -3.4512435656231384
		-5.7372315349428357e-07 -3.8550740395113334 0.824896363879834
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "04B3DA38-442E-32F9-6465-7B845786C50A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.2265715962120392;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "EC2A99D4-45C2-1B1B-2E54-14B9C95786AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "D0D69873-41D3-29E0-26DC-19897617E38E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "ABBA23AD-4270-ECDD-C710-EFA8B804171F";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "9BAB9EDC-4669-4B92-A3EA-91BB8BAE7D56";
	setAttr ".t" -type "double3" 5.4537835835963216e-15 -0.044721611831292307 3.0167931366880083 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "373B336A-4AAD-A082-491B-6AB73F389E7E";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "548EE6C0-493D-1751-04FD-E49E37919E62";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 0.10280770423368324 106.5020951471658 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "57CA67C2-4DCA-D190-AFBE-508B939CC8B8";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "29281FFD-48CF-19B7-7EDD-A395A4E23B68";
	setAttr ".t" -type "double3" 9.2393241416498775 -81.698798440068728 -23.640499636041397 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "00F90598-4F8F-B4E3-1E3B-DDA1B7AFF7E9";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "156AF93F-48C1-39F7-E73F-2F8E2149D5C1";
	setAttr ".t" -type "double3" 10.568764851765927 -35.857664005415465 21.250133386257374 ;
	setAttr ".r" -type "double3" 1.2691569649236414 2.5462918157219727 6.891207655302465e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "FEE624A9-404A-AAA6-EFF5-4F8935F09BD5";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5BEF8783-4A59-3B73-913F-148E01B4115E";
	setAttr ".t" -type "double3" 8.1263706397266322 -81.60786750554891 71.196411264593237 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "CD42F7B8-46FF-05BD-26BD-0EADAD43A36D";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1F93D121-46B5-BF06-02EE-8FA1AE7B265A";
	setAttr ".t" -type "double3" 8.6425410777437328 -39.339229634076858 28.868081455144413 ;
	setAttr ".r" -type "double3" 174.24871333979064 -4.739395799433465e-23 179.99999314856981 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "31049DDC-4049-BE0D-A01F-3F9137FA3202";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EE8F8FDF-4020-F53E-8746-EBA9BCF52223";
	setAttr ".t" -type "double3" -5.4537835835963271e-14 -0.3636176925818404 98.848838144774334 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "80958957-46D2-8DB0-0EEF-849961882BA9";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C6DD4210-463E-7D2B-1144-0E9832715215";
	setAttr ".t" -type "double3" -4.9084052252366947e-14 -9.6751790292150304 82.972627372219662 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "5D4906FB-4F5C-17EB-F1DC-D09B70076887";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A47FBF5F-466B-E0DE-DAB5-289ECA68D3A7";
	setAttr ".t" -type "double3" -9.2393241416520659 -81.698798440067534 -23.640499636041383 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "F3082038-4B6E-15E6-4D7B-50A099B59F37";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "57B2A9D7-4948-6A77-FC36-889100E8B14F";
	setAttr ".t" -type "double3" -10.56876485176697 -35.857664005415458 21.250133386257318 ;
	setAttr ".r" -type "double3" 1.2691566587710355 -2.5462919682435343 0 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "26A8A3DE-4B82-AC6A-F426-48A9E258F5F3";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -4.4408920985006262e-16 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F85DC4B6-4B12-D0AA-DCAE-4CB2B9529771";
	setAttr ".t" -type "double3" -8.1263706397292115 -81.60786750555026 71.196411264593252 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "FCF5BC6F-4F50-332F-C014-EDB4C2E9EF57";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B869F049-4D48-7C0E-751F-2A9278CDC50E";
	setAttr ".t" -type "double3" -8.6425410777428091 -39.33922963407683 28.868081455144406 ;
	setAttr ".r" -type "double3" 174.24871333979053 0 180 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "0AE57973-4D82-28B9-2BF9-79B11CDE460D";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "spineQd0_end" -p "spineQd0_IK";
	rename -uid "004AF9CD-4B5F-8DBB-605D-97A8DD91EDAE";
	addAttr -ci true -sn "proxyRatio" -ln "proxyRatio" -dv 5 -at "double";
	addAttr -ci true -sn "proxyDiv" -ln "proxyDiv" -dv 1 -at "double";
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6132857981060196;
	setAttr -cb on ".proxyRatio";
	setAttr -cb on ".proxyDiv";
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "E62B4BE3-49BF-CE9B-1E62-F59EF893CC7D";
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
	rename -uid "1F858C96-4443-B207-F392-52B1E1C84D0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-6.0498217428975734 8.0664289905300972 1.5061019879549071e-16
		-5.9335760788178362 8.0664289905300972 -1.1802616460083688
		-5.589306456588548 8.0664289905300972 -2.3151666202980721
		-5.030243053362951 8.0664289905300972 -3.3611008023931763
		-4.2778699782795604 8.0664289905300972 -4.2778699782795604
		-3.3611008023931763 8.0664289905300972 -5.030243053362951
		-2.3151666202980721 8.0664289905300972 -5.589306456588548
		-1.1802616460083688 8.0664289905300972 -5.9335760788178362
		3.7044474179329654e-16 8.0664289905300972 -6.0498217428975734
		1.1802616460083688 8.0664289905300972 -5.9335760788178362
		2.3151666202980721 8.0664289905300972 -5.589306456588548
		3.3611008023931763 8.0664289905300972 -5.030243053362951
		4.2778699782795604 8.0664289905300972 -4.2778699782795604
		5.030243053362951 8.0664289905300972 -3.3611008023931763
		5.589306456588548 8.0664289905300972 -2.3151666202980721
		5.9335760788178362 8.0664289905300972 -1.1802616460083688
		6.0498217428975734 8.0664289905300972 -6.5435902130620952e-16
		5.8195643882210408 8.0664289905300972 -1.157583238029541
		5.1638458605885669 8.0664289905300972 -2.1389349891397802
		4.1824939652393374 8.0664289905300972 -2.794653228294274
		3.0249108714487867 8.0664289905300972 -3.0249108714487867
		1.8673276334192457 8.0664289905300972 -2.794653228294274
		0.88597588230900626 8.0664289905300972 -2.1389349891397802
		0.23025764315451278 8.0664289905300972 -1.157583238029541
		0 8.0664289905300972 -6.5435902130620952e-16
		-0.23025764315451278 8.0664289905300972 1.157583238029541
		-0.88597588230900626 8.0664289905300972 2.1389349891397802
		-1.8673276334192457 8.0664289905300972 2.794653228294274
		-3.0249108714487867 8.0664289905300972 3.0249108714487867
		-4.1824939652393374 8.0664289905300972 2.794653228294274
		-5.1638458605885669 8.0664289905300972 2.1389349891397802
		-5.8195643882210408 8.0664289905300972 1.157583238029541
		-6.0498217428975734 8.0664289905300972 1.5061019879549071e-16
		-5.9335760788178362 8.0664289905300972 1.1802616460083688
		-5.589306456588548 8.0664289905300972 2.3151666202980721
		-5.030243053362951 8.0664289905300972 3.3611008023931763
		-4.2778699782795604 8.0664289905300972 4.2778699782795604
		-3.3611008023931763 8.0664289905300972 5.030243053362951
		-2.3151666202980721 8.0664289905300972 5.589306456588548
		-1.1802616460083688 8.0664289905300972 5.9335760788178362
		-7.0627731148543554e-16 8.0664289905300972 6.0498217428975734
		1.1802616460083688 8.0664289905300972 5.9335760788178362
		2.3151666202980721 8.0664289905300972 5.589306456588548
		3.3611008023931763 8.0664289905300972 5.030243053362951
		4.2778699782795604 8.0664289905300972 4.2778699782795604
		5.030243053362951 8.0664289905300972 3.3611008023931763
		5.589306456588548 8.0664289905300972 2.3151666202980721
		5.9335760788178362 8.0664289905300972 1.1802616460083688
		6.0498217428975734 8.0664289905300972 -6.5435902130620952e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "856F36EC-4A94-CF99-44C1-8F828FCA7F56";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "E5A87ABC-43CF-A86D-AE57-DF895DB42C00";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 12.099643485795147 12.099643485795147 12.099643485795147 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "FDE9ADE8-4D7A-D191-0CC1-9DB6263A753E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "BB2A2EAF-41C6-6412-626D-739B390AD97D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 12.099643485795147 12.099643485795147 12.099643485795147 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "E6F5F5DD-441E-FB9B-50B5-6291FCAFFEBF";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "F255A1DE-4BF4-0E7F-8B30-DAB392A2C446";
	setAttr ".t" -type "double3" -4.973799150320701e-15 80.090382592440534 -42.308505660809168 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "E95CEDD0-4E62-59B2-ECB8-FAA0955B270B";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "localScale" -ln "localScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "ikCtl" -ln "ikCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkCtl" -ln "fkCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "subCtl" -ln "subCtl" -min 0 -max 1 -at "bool";
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
	setAttr -k on ".stretchy";
	setAttr -k on ".localScale";
	setAttr -cb on ".ikCtl";
	setAttr -cb on ".fkCtl";
	setAttr -cb on ".subCtl";
createNode nurbsCurve -n "tail0_settingShape1" -p "tail0_setting";
	rename -uid "9C6F333D-46EE-D45A-572A-D59661AC5ED1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.3205381820505719 3.3205381820505719 8.266473574924322e-17
		-3.2567349523888467 3.3205381820505719 -0.6478048489580096
		-3.0677772484904575 3.3205381820505719 -1.2707149875174235
		-2.7609266575987319 3.3205381820505719 -1.8447921314656679
		-2.3479750651168283 3.3205381820505719 -2.3479750651168283
		-1.8447921314656679 3.3205381820505719 -2.7609266575987319
		-1.2707149875174235 3.3205381820505719 -3.0677772484904575
		-0.6478048489580096 3.3205381820505719 -3.2567349523888467
		2.0332432288746403e-16 3.3205381820505719 -3.3205381820505719
		0.6478048489580096 3.3205381820505719 -3.2567349523888467
		1.2707149875174235 3.3205381820505719 -3.0677772484904575
		1.8447921314656679 3.3205381820505719 -2.7609266575987319
		2.3479750651168283 3.3205381820505719 -2.3479750651168283
		2.7609266575987319 3.3205381820505719 -1.8447921314656679
		3.0677772484904575 3.3205381820505719 -1.2707149875174235
		3.2567349523888467 3.3205381820505719 -0.6478048489580096
		3.3205381820505719 3.3205381820505719 -3.5915506395992329e-16
		3.1941578736061138 3.3205381820505719 -0.63535745417481204
		2.8342566235837001 3.3205381820505719 -1.1739875325584141
		2.2956264660322985 3.3205381820505719 -1.5338886242452288
		1.660269091025286 3.3205381820505719 -1.660269091025286
		1.0249116368504738 3.3205381820505719 -1.5338886242452288
		0.48628155846687188 3.3205381820505719 -1.1739875325584141
		0.12638046678005732 3.3205381820505719 -0.63535745417481204
		0 3.3205381820505719 -3.5915506395992329e-16
		-0.12638046678005732 3.3205381820505719 0.63535745417481204
		-0.48628155846687188 3.3205381820505719 1.1739875325584141
		-1.0249116368504738 3.3205381820505719 1.5338886242452288
		-1.660269091025286 3.3205381820505719 1.660269091025286
		-2.2956264660322985 3.3205381820505719 1.5338886242452288
		-2.8342566235837001 3.3205381820505719 1.1739875325584141
		-3.1941578736061138 3.3205381820505719 0.63535745417481204
		-3.3205381820505719 3.3205381820505719 8.266473574924322e-17
		-3.2567349523888467 3.3205381820505719 0.6478048489580096
		-3.0677772484904575 3.3205381820505719 1.2707149875174235
		-2.7609266575987319 3.3205381820505719 1.8447921314656679
		-2.3479750651168283 3.3205381820505719 2.3479750651168283
		-1.8447921314656679 3.3205381820505719 2.7609266575987319
		-1.2707149875174235 3.3205381820505719 3.0677772484904575
		-0.6478048489580096 3.3205381820505719 3.2567349523888467
		-3.8765122008043923e-16 3.3205381820505719 3.3205381820505719
		0.6478048489580096 3.3205381820505719 3.2567349523888467
		1.2707149875174235 3.3205381820505719 3.0677772484904575
		1.8447921314656679 3.3205381820505719 2.7609266575987319
		2.3479750651168283 3.3205381820505719 2.3479750651168283
		2.7609266575987319 3.3205381820505719 1.8447921314656679
		3.0677772484904575 3.3205381820505719 1.2707149875174235
		3.2567349523888467 3.3205381820505719 0.6478048489580096
		3.3205381820505719 3.3205381820505719 -3.5915506395992329e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "AE68147A-464D-07E2-F82F-4F8E970E4F33";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "4BA9180D-41F7-CAD7-C6ED-92806819AD1F";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "519EF1F7-49F8-D563-7268-DF9CD2D26FDB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "F85445FA-46A5-9B10-9BB1-878638FD5B38";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "FA7399EF-4F97-4B06-CC54-359A70B9EA1D";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "A392F82A-4189-79DA-AD03-279EFCAB7B12";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_6_chainGrp" -p "tail0_5_chainGrp";
	rename -uid "467678F3-4FCA-B168-44C4-2D93127FFC2E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "857AFD52-4148-B27F-83FE-B495FE33CB86";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "B94ECEB3-499C-F393-7E34-7CB0424D70BB";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "73F74C04-498B-3EBC-25C5-44AE19BE8DE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514419107e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653178e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514419107e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "26C508A8-40F9-FAA8-7AFF-8A836621EB4F";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "23368956-4BAC-8668-939A-5E9328EBF1CD";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "633C53BF-4BFF-D89A-75B0-469D4B8AEA3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653187e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "EDF92B57-4985-14F7-20EA-8B9F88DAA111";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "899BA4CC-44BE-EF6C-7E3A-12BCB67BBAAE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "738F7265-4E62-7A62-8E60-6ABEBF915F7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653187e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "8EEC1B37-4F01-1C5F-8CEA-809A94517E5D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "3DF49ED3-47E1-4FBE-A023-AD9A8DD8DEF0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "EF051E8C-4027-40F4-1601-86B4D9E93451";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653187e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "1A4D1FEF-471A-5E6B-2BC3-84B540C5C26A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "0E83AA41-4734-C00B-3808-D381E0FC4234";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "B4E6F50D-4051-EC2B-8D40-12A3872DB248";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514419048e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653181e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514419048e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "FC110584-4D58-2499-1155-0786DA253232";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "F1EE08AC-4320-11FA-DEC7-679F2A64B1A8";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "486436B6-4E2C-2163-3D34-85BC025918F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653187e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_6_fkc_ofs" -p "tail0_5_fkc";
	rename -uid "17D5D497-4227-F999-D8C1-62910D4BFE15";
	setAttr -cb on ".ro";
createNode transform -n "tail0_6_fkc" -p "tail0_6_fkc_ofs";
	rename -uid "47E4E83E-4F8E-5C6B-DC3D-E7820CCE1300";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_6_fkcShape1" -p "tail0_6_fkc";
	rename -uid "61B6BF54-47C8-BF95-B30E-10BE47062B87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		-12.432780221599078 4.8276148426069852e-15 -1.6289269342990647e-31
		-13.74996651162677 -13.74996651162677 -2.8221836998074083e-16
		-1.2454000979653187e-15 -12.432780221599053 -3.9911704637759264e-16
		13.74996651162677 -13.749966511626777 -2.8221836998074073e-16
		12.432780221599078 2.4876434713743741e-15 -2.380104422880429e-31
		13.74996651162677 13.749966511626786 2.8221836998074092e-16
		7.6128822514418998e-16 12.432780221599042 3.9911704637759224e-16
		-13.74996651162677 13.749966511626777 2.8221836998074073e-16
		;
createNode transform -n "tail0_6_ofs_ctl" -p "tail0_6_fkc";
	rename -uid "CC4EBCC7-4EEB-A59A-FBFD-80AEA669DE06";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_6_ofs_ctlShape1" -p "tail0_6_ofs_ctl";
	rename -uid "32CD9C3C-43CE-CD1B-A846-8EA198840413";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 16.423752600457213 2.4309866269414306
		0.6135553142525989 16.677895521909328 2.4309866269414306
		0.46959493239388522 16.893347532851099 2.4309866269414306
		0.2541429214521147 17.03730791470981 2.4309866269414306
		0 17.084557401614198 2.4309866269414306
		-0.2541429214521147 17.03730791470981 2.4309866269414306
		-0.46959493239388522 16.893347532851099 2.4309866269414306
		-0.6135553142525989 16.677895521909328 2.4309866269414306
		-0.66082029700168121 16.423752569148036 2.4309866269414306
		-0.6135553142525989 16.169609679005099 2.4309866269414306
		-0.46959493239388522 15.954157668063328 2.4309866269414306
		-0.2541429214521147 15.810197286204613 2.4309866269414306
		2.6389246419554409e-08 15.762947799300225 2.4264932747184131
		0.2541429214521147 15.810197286204613 2.4309866269414306
		0.46959493239388522 15.954157668063328 2.4309866269414306
		0.6135553142525989 16.169609679005099 2.4309866269414306
		0.66082029700168121 16.423752600457213 2.4309866269414306
		0.61051812869245525 16.425472178770356 2.1781072809395567
		0.46727055568969367 16.426929992420153 1.9637262542353935
		0.25288510160133215 16.427904070072426 1.8204817804015707
		2.6389246419554409e-08 16.428246129775598 1.7701809403076041
		-0.25288510160133215 16.427904070072426 1.8204817804015707
		-0.46727055568969367 16.426929992420153 1.9637262542353935
		-0.61051812869245525 16.425472178770356 2.1781072809395567
		-0.66082029700168121 16.423752569148036 2.4309866269414306
		-0.61051812869245525 16.422032960160688 2.6838650874664651
		-0.46727055568969367 16.420575146510892 2.8982465569090481
		-0.25288510160133215 16.419601068858622 3.0414905880044509
		2.6389246419554409e-08 16.419259026864985 3.0917914280984173
		0.25288510160133215 16.419601068858622 3.0414905880044509
		0.46727055568969367 16.420575146510892 2.8982465569090481
		0.61051812869245525 16.422032960160688 2.6838650874664651
		0.66082029700168121 16.423752600457213 2.4309866269414306
		0.61051812869245525 16.425472178770356 2.1781072809395567
		0.46727055568969367 16.426929992420153 1.9637262542353935
		0.25288510160133215 16.427904070072426 1.8204817804015707
		2.6389246419554409e-08 16.428246129775598 1.7701809403076041
		2.6389246419554409e-08 16.680783061883563 1.8222018191626725
		2.6389246419554409e-08 16.894189621325644 1.9669037878746285
		2.6389246419554409e-08 17.035976157542915 2.1822588391024529
		0 17.084557401614198 2.4309866269414306
		2.6389246419554409e-08 17.032536965497549 2.688017088367781
		2.6389246419554409e-08 16.887834996785596 2.9014232050714432
		2.6389246419554409e-08 16.67248038829619 3.0432101840271328
		2.6389246419554409e-08 16.419259026864985 3.0917914280984173
		2.6389246419554409e-08 16.16672213903086 3.0397705492433489
		2.6389246419554409e-08 15.95331557958878 2.8950685805313934
		2.6389246419554409e-08 15.811529043371509 2.679713529303569
		2.6389246419554409e-08 15.762947799300225 2.4264932747184131
		2.6389246419554409e-08 15.814968235416874 2.1739552800382405
		2.6389246419554409e-08 15.95967020412883 1.9605491633345784
		2.6389246419554409e-08 16.175024812618233 1.8187621843788886
		2.6389246419554409e-08 16.428246129775598 1.7701809403076041
		;
createNode joint -n "tail0_6_ofs_jnt" -p "tail0_6_ofs_ctl";
	rename -uid "91E8CA0F-4571-9A29-9D6D-EDB10F638C21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -8.4195888461786925 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4195888461786925 0 0 ;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "54A6F2E1-43F7-A245-937D-919694DC7283";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "CEE2A526-4B18-0250-A293-F0B448F4D526";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 16.423752600457203 2.4309866269414306
		0.6135553142525989 16.677895521909317 2.4309866269414306
		0.46959493239388522 16.893347532851088 2.4309866269414306
		0.2541429214521147 17.0373079147098 2.4309866269414306
		0 17.084557401614187 2.4309866269414306
		-0.2541429214521147 17.0373079147098 2.4309866269414306
		-0.46959493239388522 16.893347532851088 2.4309866269414306
		-0.6135553142525989 16.677895521909317 2.4309866269414306
		-0.66082029700168121 16.423752569148025 2.4309866269414306
		-0.6135553142525989 16.169609679005088 2.4309866269414306
		-0.46959493239388522 15.954157668063317 2.4309866269414306
		-0.2541429214521147 15.810197286204604 2.4309866269414306
		2.6389246419554409e-08 15.762947799300216 2.4264932747184131
		0.2541429214521147 15.810197286204604 2.4309866269414306
		0.46959493239388522 15.954157668063317 2.4309866269414306
		0.6135553142525989 16.169609679005088 2.4309866269414306
		0.66082029700168121 16.423752600457203 2.4309866269414306
		0.61051812869245525 16.425472178770349 2.1781072809395567
		0.46727055568969367 16.426929992420142 1.9637262542353935
		0.25288510160133215 16.427904070072415 1.8204817804015707
		2.6389246419554409e-08 16.428246129775587 1.7701809403076041
		-0.25288510160133215 16.427904070072415 1.8204817804015707
		-0.46727055568969367 16.426929992420142 1.9637262542353935
		-0.61051812869245525 16.425472178770349 2.1781072809395567
		-0.66082029700168121 16.423752569148025 2.4309866269414306
		-0.61051812869245525 16.422032960160678 2.6838650874664651
		-0.46727055568969367 16.420575146510885 2.8982465569090481
		-0.25288510160133215 16.419601068858611 3.0414905880044509
		2.6389246419554409e-08 16.419259026864975 3.0917914280984173
		0.25288510160133215 16.419601068858611 3.0414905880044509
		0.46727055568969367 16.420575146510885 2.8982465569090481
		0.61051812869245525 16.422032960160678 2.6838650874664651
		0.66082029700168121 16.423752600457203 2.4309866269414306
		0.61051812869245525 16.425472178770349 2.1781072809395567
		0.46727055568969367 16.426929992420142 1.9637262542353935
		0.25288510160133215 16.427904070072415 1.8204817804015707
		2.6389246419554409e-08 16.428246129775587 1.7701809403076041
		2.6389246419554409e-08 16.680783061883552 1.8222018191626725
		2.6389246419554409e-08 16.894189621325634 1.9669037878746285
		2.6389246419554409e-08 17.035976157542905 2.1822588391024529
		0 17.084557401614187 2.4309866269414306
		2.6389246419554409e-08 17.032536965497542 2.688017088367781
		2.6389246419554409e-08 16.887834996785585 2.9014232050714432
		2.6389246419554409e-08 16.672480388296179 3.0432101840271328
		2.6389246419554409e-08 16.419259026864975 3.0917914280984173
		2.6389246419554409e-08 16.166722139030853 3.0397705492433489
		2.6389246419554409e-08 15.95331557958877 2.8950685805313934
		2.6389246419554409e-08 15.8115290433715 2.679713529303569
		2.6389246419554409e-08 15.762947799300216 2.4264932747184131
		2.6389246419554409e-08 15.814968235416865 2.1739552800382405
		2.6389246419554409e-08 15.95967020412882 1.9605491633345784
		2.6389246419554409e-08 16.175024812618226 1.8187621843788886
		2.6389246419554409e-08 16.428246129775587 1.7701809403076041
		;
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "850D1670-42C1-0FB2-C547-FAAC6DBC9295";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -8.4195888461786925 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4195888461786925 0 0 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "94938C43-4C9B-D88A-3FC0-00B74DF9085B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "A587B0E3-4FB0-5EB1-C8FB-ADAAA856F8F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 16.317345292169506 3.0648960957112714
		0.6135553142525989 16.57148821362162 3.0648960957112714
		0.46959493239388522 16.786940224563391 3.0648960957112714
		0.2541429214521147 16.930900606422107 3.0648960957112714
		1.0538332592193542e-30 16.978150093326494 3.0648960957112714
		-0.2541429214521147 16.930900606422107 3.0648960957112714
		-0.46959493239388522 16.786940224563391 3.0648960957112714
		-0.6135553142525989 16.57148821362162 3.0648960957112714
		-0.66082029700168121 16.317345260860328 3.0648960957112714
		-0.6135553142525989 16.063202370717391 3.0648960957112714
		-0.46959493239388522 15.847750359775622 3.0648960957112714
		-0.2541429214521147 15.703789977916909 3.0648960957112714
		2.6389246419554409e-08 15.656540491012521 3.0604027434882539
		0.2541429214521147 15.703789977916909 3.0648960957112714
		0.46959493239388522 15.847750359775622 3.0648960957112714
		0.6135553142525989 16.063202370717391 3.0648960957112714
		0.66082029700168121 16.317345292169506 3.0648960957112714
		0.61051812869245525 16.319064870482652 2.8120167497093975
		0.46727055568969367 16.320522684132449 2.5976357230052343
		0.25288510160133215 16.321496761784719 2.4543912491714117
		2.6389246419554409e-08 16.321838821487891 2.4040904090774449
		-0.25288510160133215 16.321496761784719 2.4543912491714117
		-0.46727055568969367 16.320522684132449 2.5976357230052343
		-0.61051812869245525 16.319064870482652 2.8120167497093975
		-0.66082029700168121 16.317345260860328 3.0648960957112714
		-0.61051812869245525 16.315625651872985 3.3177745562363059
		-0.46727055568969367 16.314167838223188 3.5321560256788889
		-0.25288510160133215 16.313193760570915 3.6754000567742917
		2.6389246419554409e-08 16.312851718577281 3.7257008968682581
		0.25288510160133215 16.313193760570915 3.6754000567742917
		0.46727055568969367 16.314167838223188 3.5321560256788889
		0.61051812869245525 16.315625651872985 3.3177745562363059
		0.66082029700168121 16.317345292169506 3.0648960957112714
		0.61051812869245525 16.319064870482652 2.8120167497093975
		0.46727055568969367 16.320522684132449 2.5976357230052343
		0.25288510160133215 16.321496761784719 2.4543912491714117
		2.6389246419554409e-08 16.321838821487891 2.4040904090774449
		2.6389246419554409e-08 16.574375753595859 2.4561112879325133
		2.6389246419554409e-08 16.78778231303794 2.6008132566444693
		2.6389246419554409e-08 16.929568849255208 2.8161683078722937
		1.0538332592193542e-30 16.978150093326494 3.0648960957112714
		2.6389246419554409e-08 16.926129657209845 3.3219265571376217
		2.6389246419554409e-08 16.781427688497889 3.535332673841284
		2.6389246419554409e-08 16.566073080008486 3.6771196527969736
		2.6389246419554409e-08 16.312851718577281 3.7257008968682581
		2.6389246419554409e-08 16.060314830743156 3.6736800180131897
		2.6389246419554409e-08 15.846908271301075 3.5289780493012342
		2.6389246419554409e-08 15.705121735083805 3.3136229980734098
		2.6389246419554409e-08 15.656540491012521 3.0604027434882539
		2.6389246419554409e-08 15.708560927129168 2.8078647488080812
		2.6389246419554409e-08 15.853262895841125 2.594458632104419
		2.6389246419554409e-08 16.068617504330529 2.4526716531487294
		2.6389246419554409e-08 16.321838821487891 2.4040904090774449
		;
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "622754B8-412E-0ED5-5668-59832C8D8E5F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.5777218104420236e-30 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -10.637950610207067 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.637950610207064 0 0 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "08CC7CA6-4A75-9475-B581-68ABF4BA8371";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "25D8F9F1-4852-1692-5C32-CCA8312A1BB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 16.378485396617464 2.7192943154762474
		0.6135553142525989 16.632628318069578 2.7192943154762474
		0.46959493239388522 16.848080329011349 2.7192943154762474
		0.2541429214521147 16.992040710870064 2.7192943154762474
		6.5864578701209637e-32 17.039290197774449 2.7192943154762474
		-0.2541429214521147 16.992040710870064 2.7192943154762474
		-0.46959493239388522 16.848080329011349 2.7192943154762474
		-0.6135553142525989 16.632628318069578 2.7192943154762474
		-0.66082029700168121 16.378485365308286 2.7192943154762474
		-0.6135553142525989 16.124342475165349 2.7192943154762474
		-0.46959493239388522 15.908890464223578 2.7192943154762474
		-0.2541429214521147 15.764930082364865 2.7192943154762474
		2.6389246419554409e-08 15.717680595460477 2.7148009632532299
		0.2541429214521147 15.764930082364865 2.7192943154762474
		0.46959493239388522 15.908890464223578 2.7192943154762474
		0.6135553142525989 16.124342475165349 2.7192943154762474
		0.66082029700168121 16.378485396617464 2.7192943154762474
		0.61051812869245525 16.38020497493061 2.4664149694743731
		0.46727055568969367 16.381662788580403 2.2520339427702103
		0.25288510160133215 16.382636866232676 2.1087894689363873
		2.6389246419554409e-08 16.382978925935848 2.0584886288424209
		-0.25288510160133215 16.382636866232676 2.1087894689363873
		-0.46727055568969367 16.381662788580403 2.2520339427702103
		-0.61051812869245525 16.38020497493061 2.4664149694743731
		-0.66082029700168121 16.378485365308286 2.7192943154762474
		-0.61051812869245525 16.376765756320939 2.9721727760012819
		-0.46727055568969367 16.375307942671146 3.1865542454438649
		-0.25288510160133215 16.374333865018873 3.3297982765392677
		2.6389246419554409e-08 16.373991823025236 3.3800991166332341
		0.25288510160133215 16.374333865018873 3.3297982765392677
		0.46727055568969367 16.375307942671146 3.1865542454438649
		0.61051812869245525 16.376765756320939 2.9721727760012819
		0.66082029700168121 16.378485396617464 2.7192943154762474
		0.61051812869245525 16.38020497493061 2.4664149694743731
		0.46727055568969367 16.381662788580403 2.2520339427702103
		0.25288510160133215 16.382636866232676 2.1087894689363873
		2.6389246419554409e-08 16.382978925935848 2.0584886288424209
		2.6389246419554409e-08 16.635515858043814 2.1105095076974894
		2.6389246419554409e-08 16.848922417485895 2.2552114764094453
		2.6389246419554409e-08 16.990708953703166 2.4705665276372697
		6.5864578701209637e-32 17.039290197774449 2.7192943154762474
		2.6389246419554409e-08 16.987269761657803 2.9763247769025978
		2.6389246419554409e-08 16.842567792945847 3.1897308936062601
		2.6389246419554409e-08 16.627213184456441 3.3315178725619496
		2.6389246419554409e-08 16.373991823025236 3.3800991166332341
		2.6389246419554409e-08 16.121454935191114 3.3280782377781657
		2.6389246419554409e-08 15.908048375749031 3.1833762690662102
		2.6389246419554409e-08 15.766261839531762 2.9680212178383858
		2.6389246419554409e-08 15.717680595460477 2.7148009632532299
		2.6389246419554409e-08 15.769701031577126 2.4622629685730573
		2.6389246419554409e-08 15.914403000289081 2.2488568518693954
		2.6389246419554409e-08 16.129757608778487 2.1070698729137054
		2.6389246419554409e-08 16.382978925935848 2.0584886288424209
		;
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "2FED0F06-49F9-93FF-92F7-77AA821E8B3D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 9.8607613152626476e-32 0 0 ;
	setAttr ".r" -type "double3" -9.4267389320408572 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.4267389320408572 0 0 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "CFAC0164-48C4-EF72-CE89-A8A296FAF93A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "3A872155-4A14-987B-76D6-44ADEC8FF9DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 16.393809900374549 2.6253271056716891
		0.6135553142525989 16.647952821826664 2.6253271056716891
		0.46959493239388522 16.863404832768435 2.6253271056716891
		0.2541429214521147 17.00736521462715 2.6253271056716891
		0 17.054614701531534 2.6253271056716891
		-0.2541429214521147 17.00736521462715 2.6253271056716891
		-0.46959493239388522 16.863404832768435 2.6253271056716891
		-0.6135553142525989 16.647952821826664 2.6253271056716891
		-0.66082029700168121 16.393809869065372 2.6253271056716891
		-0.6135553142525989 16.139666978922435 2.6253271056716891
		-0.46959493239388522 15.924214967980664 2.6253271056716891
		-0.2541429214521147 15.78025458612195 2.6253271056716891
		2.6389246419554409e-08 15.733005099217563 2.6208337534486716
		0.2541429214521147 15.78025458612195 2.6253271056716891
		0.46959493239388522 15.924214967980664 2.6253271056716891
		0.6135553142525989 16.139666978922435 2.6253271056716891
		0.66082029700168121 16.393809900374549 2.6253271056716891
		0.61051812869245525 16.395529478687696 2.3724477596698152
		0.46727055568969367 16.396987292337489 2.158066732965652
		0.25288510160133215 16.397961369989762 2.0148222591318294
		2.6389246419554409e-08 16.398303429692934 1.9645214190378626
		-0.25288510160133215 16.397961369989762 2.0148222591318294
		-0.46727055568969367 16.396987292337489 2.158066732965652
		-0.61051812869245525 16.395529478687696 2.3724477596698152
		-0.66082029700168121 16.393809869065372 2.6253271056716891
		-0.61051812869245525 16.392090260078024 2.8782055661967236
		-0.46727055568969367 16.390632446428231 3.0925870356393066
		-0.25288510160133215 16.389658368775958 3.2358310667347094
		2.6389246419554409e-08 16.389316326782321 3.2861319068286758
		0.25288510160133215 16.389658368775958 3.2358310667347094
		0.46727055568969367 16.390632446428231 3.0925870356393066
		0.61051812869245525 16.392090260078024 2.8782055661967236
		0.66082029700168121 16.393809900374549 2.6253271056716891
		0.61051812869245525 16.395529478687696 2.3724477596698152
		0.46727055568969367 16.396987292337489 2.158066732965652
		0.25288510160133215 16.397961369989762 2.0148222591318294
		2.6389246419554409e-08 16.398303429692934 1.9645214190378626
		2.6389246419554409e-08 16.650840361800899 2.016542297892931
		2.6389246419554409e-08 16.86424692124298 2.161244266604887
		2.6389246419554409e-08 17.006033457460251 2.3765993178327114
		0 17.054614701531534 2.6253271056716891
		2.6389246419554409e-08 17.002594265414888 2.8823575670980395
		2.6389246419554409e-08 16.857892296702932 3.0957636838017017
		2.6389246419554409e-08 16.642537688213526 3.2375506627573913
		2.6389246419554409e-08 16.389316326782321 3.2861319068286758
		2.6389246419554409e-08 16.136779438948199 3.2341110279736074
		2.6389246419554409e-08 15.923372879506116 3.0894090592616519
		2.6389246419554409e-08 15.781586343288847 2.8740540080338275
		2.6389246419554409e-08 15.733005099217563 2.6208337534486716
		2.6389246419554409e-08 15.785025535334212 2.368295758768499
		2.6389246419554409e-08 15.929727504046166 2.1548896420648367
		2.6389246419554409e-08 16.145082112535572 2.0131026631091471
		2.6389246419554409e-08 16.398303429692934 1.9645214190378626
		;
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "485A56E4-4F70-533A-708D-1996FB47CBBC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -9.0981742263057122 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.0981742263057104 0 0 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "2C6ECFBA-4007-36C3-B82C-6C8D0A20205A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "EE82ADDB-4083-6133-64E2-F693A8A4FAFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 16.161645545241612 3.801389052881182
		0.6135553142525989 16.415788466693726 3.801389052881182
		0.46959493239388522 16.631240477635497 3.801389052881182
		0.2541429214521147 16.775200859494213 3.801389052881182
		0 16.822450346398597 3.801389052881182
		-0.2541429214521147 16.775200859494213 3.801389052881182
		-0.46959493239388522 16.631240477635497 3.801389052881182
		-0.6135553142525989 16.415788466693726 3.801389052881182
		-0.66082029700168121 16.161645513932434 3.801389052881182
		-0.6135553142525989 15.907502623789497 3.801389052881182
		-0.46959493239388522 15.692050612847726 3.801389052881182
		-0.2541429214521147 15.548090230989013 3.801389052881182
		2.6389246419554409e-08 15.500840744084625 3.7968957006581645
		0.2541429214521147 15.548090230989013 3.801389052881182
		0.46959493239388522 15.692050612847726 3.801389052881182
		0.6135553142525989 15.907502623789497 3.801389052881182
		0.66082029700168121 16.161645545241612 3.801389052881182
		0.61051812869245525 16.163365123554758 3.5485097068793081
		0.46727055568969367 16.164822937204551 3.3341286801751449
		0.25288510160133215 16.165797014856825 3.1908842063413223
		2.6389246419554409e-08 16.166139074559997 3.1405833662473555
		-0.25288510160133215 16.165797014856825 3.1908842063413223
		-0.46727055568969367 16.164822937204551 3.3341286801751449
		-0.61051812869245525 16.163365123554758 3.5485097068793081
		-0.66082029700168121 16.161645513932434 3.801389052881182
		-0.61051812869245525 16.159925904945087 4.0542675134062165
		-0.46727055568969367 16.158468091295294 4.2686489828487995
		-0.25288510160133215 16.157494013643021 4.4118930139442023
		2.6389246419554409e-08 16.157151971649384 4.4621938540381683
		0.25288510160133215 16.157494013643021 4.4118930139442023
		0.46727055568969367 16.158468091295294 4.2686489828487995
		0.61051812869245525 16.159925904945087 4.0542675134062165
		0.66082029700168121 16.161645545241612 3.801389052881182
		0.61051812869245525 16.163365123554758 3.5485097068793081
		0.46727055568969367 16.164822937204551 3.3341286801751449
		0.25288510160133215 16.165797014856825 3.1908842063413223
		2.6389246419554409e-08 16.166139074559997 3.1405833662473555
		2.6389246419554409e-08 16.418676006667962 3.1926042451024239
		2.6389246419554409e-08 16.632082566110043 3.3373062138143799
		2.6389246419554409e-08 16.773869102327314 3.5526612650422043
		0 16.822450346398597 3.801389052881182
		2.6389246419554409e-08 16.770429910281951 4.0584195143075323
		2.6389246419554409e-08 16.625727941569995 4.2718256310111951
		2.6389246419554409e-08 16.410373333080589 4.4136126099668846
		2.6389246419554409e-08 16.157151971649384 4.4621938540381683
		2.6389246419554409e-08 15.904615083815262 4.4101729751831007
		2.6389246419554409e-08 15.691208524373179 4.2654710064711443
		2.6389246419554409e-08 15.54942198815591 4.0501159552433199
		2.6389246419554409e-08 15.500840744084625 3.7968957006581645
		2.6389246419554409e-08 15.552861180201274 3.5443577059779918
		2.6389246419554409e-08 15.697563148913229 3.3309515892743295
		2.6389246419554409e-08 15.912917757402633 3.18916461031864
		2.6389246419554409e-08 16.166139074559997 3.1405833662473555
		;
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "2F9A9DE6-4A70-5FD4-814A-E58F193732DA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -13.235981306481357 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 13.235981306481353 0 0 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "41B047EE-424F-452F-BABC-A188749F7B21";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "0B60073F-4E3B-D9FC-F6BD-C58AFA8DFDB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.66082029700168121 15.966925047863285 4.5504560186105527
		0.6135553142525989 16.221067969315399 4.5504560186105527
		0.46959493239388522 16.43651998025717 4.5504560186105527
		0.2541429214521147 16.580480362115885 4.5504560186105527
		-2.1076665184387084e-30 16.62772984902027 4.5504560186105527
		-0.2541429214521147 16.580480362115885 4.5504560186105527
		-0.46959493239388522 16.43651998025717 4.5504560186105527
		-0.6135553142525989 16.221067969315399 4.5504560186105527
		-0.66082029700168121 15.966925016554107 4.5504560186105527
		-0.6135553142525989 15.71278212641117 4.5504560186105527
		-0.46959493239388522 15.497330115469399 4.5504560186105527
		-0.2541429214521147 15.353369733610686 4.5504560186105527
		2.6389246419554409e-08 15.306120246706298 4.5459626663875357
		0.2541429214521147 15.353369733610686 4.5504560186105527
		0.46959493239388522 15.497330115469399 4.5504560186105527
		0.6135553142525989 15.71278212641117 4.5504560186105527
		0.66082029700168121 15.966925047863285 4.5504560186105527
		0.61051812869245525 15.968644626176429 4.2975766726086784
		0.46727055568969367 15.970102439826226 4.0831956459045156
		0.25288510160133215 15.971076517478497 3.9399511720706926
		2.6389246419554409e-08 15.971418577181669 3.8896503319767262
		-0.25288510160133215 15.971076517478497 3.9399511720706926
		-0.46727055568969367 15.970102439826226 4.0831956459045156
		-0.61051812869245525 15.968644626176429 4.2975766726086784
		-0.66082029700168121 15.966925016554107 4.5504560186105527
		-0.61051812869245525 15.96520540756676 4.8033344791355868
		-0.46727055568969367 15.963747593916965 5.0177159485781697
		-0.25288510160133215 15.962773516264694 5.1609599796735726
		2.6389246419554409e-08 15.962431474271057 5.2112608197675394
		0.25288510160133215 15.962773516264694 5.1609599796735726
		0.46727055568969367 15.963747593916965 5.0177159485781697
		0.61051812869245525 15.96520540756676 4.8033344791355868
		0.66082029700168121 15.966925047863285 4.5504560186105527
		0.61051812869245525 15.968644626176429 4.2975766726086784
		0.46727055568969367 15.970102439826226 4.0831956459045156
		0.25288510160133215 15.971076517478497 3.9399511720706926
		2.6389246419554409e-08 15.971418577181669 3.8896503319767262
		2.6389246419554409e-08 16.223955509289635 3.9416712108317946
		2.6389246419554409e-08 16.437362068731716 4.0863731795437506
		2.6389246419554409e-08 16.579148604948987 4.301728230771575
		-2.1076665184387084e-30 16.62772984902027 4.5504560186105527
		2.6389246419554409e-08 16.575709412903624 4.8074864800369035
		2.6389246419554409e-08 16.431007444191668 5.0208925967405653
		2.6389246419554409e-08 16.215652835702262 5.1626795756962549
		2.6389246419554409e-08 15.962431474271057 5.2112608197675394
		2.6389246419554409e-08 15.709894586436935 5.159239940912471
		2.6389246419554409e-08 15.496488026994852 5.0145379722005154
		2.6389246419554409e-08 15.354701490777583 4.7991829209726911
		2.6389246419554409e-08 15.306120246706298 4.5459626663875357
		2.6389246419554409e-08 15.358140682822947 4.2934246717073625
		2.6389246419554409e-08 15.502842651534902 4.0800185550037007
		2.6389246419554409e-08 15.718197260024306 3.9382315760480107
		2.6389246419554409e-08 15.971418577181669 3.8896503319767262
		;
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "15A2DB47-4D84-7987-5EB0-828955A8FCFC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".r" -type "double3" -15.907161568648634 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 15.907161568648629 0 0 ;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "A3485B35-4128-9F89-9AEF-018A2BAB737B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "B3C7655C-4585-776E-3CD0-24B5BC6E0BBF";
	setAttr ".t" -type "double3" -1.910378781174414e-14 -2.8421709430404007e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -15.907161568648634 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "CEF3820F-47D8-468E-A484-82B5366C7012";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "D2D3F9BA-4037-103E-8D6A-B98A88D019A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		2.4398919801222962e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075572e-16 2.8175700306395139 2.8175700306395139
		3.1461590224012532e-30 2.4398919801222646e-16 3.9846458184606863
		-1.7252640974074946e-16 -2.8175700306395139 2.8175700306395139
		-2.439891980122233e-16 -3.9846458184606863 2.4398919801222646e-16
		-1.7252640974074946e-16 -2.8175700306395139 -2.8175700306395139
		3.1162789651747183e-30 -2.4398919801222646e-16 -3.9846458184606863
		1.7252640974075572e-16 2.8175700306395139 -2.8175700306395139
		2.4398919801222962e-16 3.9846458184606863 -2.4398919801222646e-16
		-2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		-3.9846458184606863 1.4940028613267613e-32 2.4398919801222646e-16
		-2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		-2.439891980122233e-16 -3.9846458184606863 2.4398919801222646e-16
		2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		3.9846458184606863 -1.4940028613267613e-32 -2.4398919801222646e-16
		2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		2.4398919801222962e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075572e-16 2.8175700306395139 2.8175700306395139
		3.1461590224012532e-30 2.4398919801222646e-16 3.9846458184606863
		-2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		-3.9846458184606863 2.4398919801222646e-16 1.4940028613267613e-32
		-2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		3.1162789651747183e-30 -2.4398919801222646e-16 -3.9846458184606863
		2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		3.9846458184606863 -2.4398919801222646e-16 -1.4940028613267613e-32
		2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		3.1461590224012532e-30 2.4398919801222646e-16 3.9846458184606863
		;
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "633ED490-49A7-85EF-BFA6-B89C143F2E64";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.96170705906492759 -0.27407942743790142 0
		 0 0.27407942743790142 0.96170705906492759 0 -2.4077586962064842e-14 80.090382592440506 -42.308505660809153 1;
	setAttr ".radi" 2.6564305456404576;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "5CC4687B-48EB-CB30-EDC6-96A92F213BBE";
	setAttr ".t" -type "double3" 1.0822285383506862e-14 0.59970920914398107 -17.229208704008236 ;
	setAttr ".r" -type "double3" 4.9206421182774385 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "9A674829-4D8E-1549-3FE3-77B599F902E1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "D9F19D23-46C8-8CCF-7D4B-99921911288B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		2.4398919801222804e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075417e-16 2.8175700306395139 2.8175700306395139
		1.5805495255072603e-30 2.4398919801222646e-16 3.9846458184606863
		-1.7252640974075102e-16 -2.8175700306395139 2.8175700306395139
		-2.4398919801222488e-16 -3.9846458184606863 2.4398919801222646e-16
		-1.7252640974075102e-16 -2.8175700306395139 -2.8175700306395139
		1.5506694682807252e-30 -2.4398919801222646e-16 -3.9846458184606863
		1.7252640974075417e-16 2.8175700306395139 -2.8175700306395139
		2.4398919801222804e-16 3.9846458184606863 -2.4398919801222646e-16
		-2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		-3.9846458184606863 1.4940028613267613e-32 2.4398919801222646e-16
		-2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		-2.4398919801222488e-16 -3.9846458184606863 2.4398919801222646e-16
		2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		3.9846458184606863 -1.4940028613267613e-32 -2.4398919801222646e-16
		2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		2.4398919801222804e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075417e-16 2.8175700306395139 2.8175700306395139
		1.5805495255072603e-30 2.4398919801222646e-16 3.9846458184606863
		-2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		-3.9846458184606863 2.4398919801222646e-16 1.4940028613267613e-32
		-2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		1.5506694682807252e-30 -2.4398919801222646e-16 -3.9846458184606863
		2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		3.9846458184606863 -2.4398919801222646e-16 -1.4940028613267613e-32
		2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		1.5805495255072603e-30 2.4398919801222646e-16 3.9846458184606863
		;
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "C6D7D652-4B00-97D3-5823-93A6B8FC98AE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.98167204981329825 -0.19057803287723707 0
		 0 0.19057803287723707 0.98167204981329825 0 -1.3255301578557977e-14 75.944955515457849 -59.042325250228188 1;
	setAttr ".radi" 2.6564305456404576;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "8BA47150-4B20-60F6-EC79-B3A41160DC47";
	setAttr ".t" -type "double3" 2.3480287619505447e-14 2.5529489266892966 -33.782546938957886 ;
	setAttr ".r" -type "double3" 6.4804226366077557 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "5223FE08-4950-3D9A-32A8-878723C9BE18";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "2D59D122-42EB-F094-1BDA-8EBDC7944F2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		2.4398919801222646e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075259e-16 2.8175700306395139 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		-1.7252640974075259e-16 -2.8175700306395139 2.8175700306395139
		-2.4398919801222646e-16 -3.9846458184606863 2.4398919801222646e-16
		-1.7252640974075259e-16 -2.8175700306395139 -2.8175700306395139
		-1.4940028613267613e-32 -2.4398919801222646e-16 -3.9846458184606863
		1.7252640974075259e-16 2.8175700306395139 -2.8175700306395139
		2.4398919801222646e-16 3.9846458184606863 -2.4398919801222646e-16
		-2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		-3.9846458184606863 1.4940028613267613e-32 2.4398919801222646e-16
		-2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		-2.4398919801222646e-16 -3.9846458184606863 2.4398919801222646e-16
		2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		3.9846458184606863 -1.4940028613267613e-32 -2.4398919801222646e-16
		2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		2.4398919801222646e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075259e-16 2.8175700306395139 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		-2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		-3.9846458184606863 2.4398919801222646e-16 1.4940028613267613e-32
		-2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		-1.4940028613267613e-32 -2.4398919801222646e-16 -3.9846458184606863
		2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		3.9846458184606863 -2.4398919801222646e-16 -1.4940028613267613e-32
		2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		;
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "31D1D51A-4618-E7B6-8585-26A50302324F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.98649583282328401 -0.16378636030602572 0
		 0 0.16378636030602572 0.98649583282328401 0 -5.9729934255938721e-16 73.286470474246244 -75.49713030530242 1;
	setAttr ".radi" 2.6564305456404576;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "6C6EF8FE-4059-7EA1-ABC6-C2A2C23816BC";
	setAttr ".t" -type "double3" 3.6037364076595515e-14 4.0908214766097188 -49.530704130393744 ;
	setAttr ".r" -type "double3" 6.239862896491676 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "EF6C951C-41E4-A0D7-0237-909075730E12";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "9E2397B1-42C2-D34A-9A3C-A48F5DE7D45C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		2.4398919801222646e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075259e-16 2.8175700306395139 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		-1.7252640974075259e-16 -2.8175700306395139 2.8175700306395139
		-2.4398919801222646e-16 -3.9846458184606863 2.4398919801222646e-16
		-1.7252640974075259e-16 -2.8175700306395139 -2.8175700306395139
		-1.4940028613267613e-32 -2.4398919801222646e-16 -3.9846458184606863
		1.7252640974075259e-16 2.8175700306395139 -2.8175700306395139
		2.4398919801222646e-16 3.9846458184606863 -2.4398919801222646e-16
		-2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		-3.9846458184606863 1.4940028613267613e-32 2.4398919801222646e-16
		-2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		-2.4398919801222646e-16 -3.9846458184606863 2.4398919801222646e-16
		2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		3.9846458184606863 -1.4940028613267613e-32 -2.4398919801222646e-16
		2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		2.4398919801222646e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075259e-16 2.8175700306395139 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		-2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		-3.9846458184606863 2.4398919801222646e-16 1.4940028613267613e-32
		-2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		-1.4940028613267613e-32 -2.4398919801222646e-16 -3.9846458184606863
		2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		3.9846458184606863 -2.4398919801222646e-16 -1.4940028613267613e-32
		2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		;
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "543F5E8A-4D1C-A505-CFC3-579B52949CB8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.98579947314936089 -0.16792676599768872 0
		 0 0.16792676599768872 0.98579947314936089 0 1.1959777114530685e-14 70.449207455216083 -91.063743471525044 1;
	setAttr ".radi" 2.6564305456404576;
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "A70426B1-4789-F661-8FF0-FF914418E2F3";
	setAttr ".t" -type "double3" 4.6765823233890134e-14 6.3655236788705736 -66.104989491535605 ;
	setAttr ".r" -type "double3" 6.2398628964916725 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "1984291B-4695-1F9E-8B04-D18A74B30C10";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "E01948BE-47A4-C69A-B8B8-728C43F711D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		2.4398919801222646e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075259e-16 2.8175700306395139 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		-1.7252640974075259e-16 -2.8175700306395139 2.8175700306395139
		-2.4398919801222646e-16 -3.9846458184606863 2.4398919801222646e-16
		-1.7252640974075259e-16 -2.8175700306395139 -2.8175700306395139
		-1.4940028613267613e-32 -2.4398919801222646e-16 -3.9846458184606863
		1.7252640974075259e-16 2.8175700306395139 -2.8175700306395139
		2.4398919801222646e-16 3.9846458184606863 -2.4398919801222646e-16
		-2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		-3.9846458184606863 1.4940028613267613e-32 2.4398919801222646e-16
		-2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		-2.4398919801222646e-16 -3.9846458184606863 2.4398919801222646e-16
		2.8175700306395139 -2.8175700306395139 -1.7252640974075259e-16
		3.9846458184606863 -1.4940028613267613e-32 -2.4398919801222646e-16
		2.8175700306395139 2.8175700306395139 1.7252640974075259e-16
		2.4398919801222646e-16 3.9846458184606863 2.4398919801222646e-16
		1.7252640974075259e-16 2.8175700306395139 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		-2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		-3.9846458184606863 2.4398919801222646e-16 1.4940028613267613e-32
		-2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		-1.4940028613267613e-32 -2.4398919801222646e-16 -3.9846458184606863
		2.8175700306395139 -1.7252640974075259e-16 -2.8175700306395139
		3.9846458184606863 -2.4398919801222646e-16 -1.4940028613267613e-32
		2.8175700306395139 1.7252640974075259e-16 2.8175700306395139
		1.4940028613267613e-32 2.4398919801222646e-16 3.9846458184606863
		;
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "40D0E765-4C7B-1478-941F-FD82DCF69D40";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.98579947314936089 -0.16792676599768872 0
		 0 0.16792676599768872 0.98579947314936089 0 2.2688236271825307e-14 68.094133978426754 -107.62679977947906 1;
	setAttr ".radi" 2.6564305456404576;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "B0A8C5F2-450E-E435-1E83-1AB38C682D0B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "2696AC53-4FE3-7D44-2304-8E9FC16B2789";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 9.9616145461517149 9.9616145461517149 9.9616145461517149 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "3C534FE8-43ED-36C4-1EF5-1290EDDABB78";
	setAttr ".t" -type "double3" 0 84.542631682197936 88.009835256880748 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "D40641A0-48E8-0499-5F60-8FA8410A95B0";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "92AFDECE-4CD0-B5BC-C278-99B598CA9118";
	setAttr ".t" -type "double3" 9.2393241416499325 2.7410255378955277 -42.132759526326453 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "9B56E5F9-4157-B13E-2B02-FAA64C682260";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "B32D2752-4FBC-4623-01E7-36A4FCFC1911";
	setAttr ".t" -type "double3" 10.568764851765982 48.582159972548787 2.7578734959723206 ;
	setAttr ".r" -type "double3" 1.2691569649236405 2.5462918157219718 6.891207655302465e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "577F8706-42E1-1911-60D9-13A74BC16DC3";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "ACD6F679-4A1F-1CFA-349B-CA9B8049F287";
	setAttr ".t" -type "double3" 8.1263706397266873 2.8319564724153441 52.704151374308182 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "F5EC0551-4BD0-FC5A-31C7-6DBE1FB399F2";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "E646F393-4F00-DDB7-7184-9D9F99465DA4";
	setAttr ".t" -type "double3" 8.6425410777437879 45.100594343887394 10.375821564859358 ;
	setAttr ".r" -type "double3" 174.24871333979064 -4.739395799433465e-23 179.99999314856981 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "505C4FF3-414B-262B-0DBD-88AD5382ADD4";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "F14A4339-4FB4-99EE-6051-269F5FC25EA1";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 84.076206285382412 80.356578254489278 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "8075FE06-4E98-0982-7502-3DB282E40845";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "9E90F2A1-442D-AE29-B1E5-FC8094BBF290";
	setAttr ".t" -type "double3" 5.4537835835963279e-15 74.764644948749222 64.480367481934607 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "534D7598-41E9-5738-32BF-13B4385F2DC6";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "B789293E-4F61-07C1-B682-83A6552F1220";
	setAttr ".t" -type "double3" -9.2393241416520109 2.7410255378967214 -42.132759526326439 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "BCD1A67C-4DAC-C6F4-7365-67B6EAFC2104";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "9A4158C2-4F01-6E88-9EE3-128651F0A928";
	setAttr ".t" -type "double3" -10.568764851766915 48.582159972548794 2.7578734959722628 ;
	setAttr ".r" -type "double3" 1.269156658771035 -2.5462919682435343 0 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "46F0B88E-44F7-821F-C2E1-6E895CF0230F";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -4.4408920985006262e-16 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "7DDFFDAC-48F7-1AC9-F0D8-E4B17D7CEE56";
	setAttr ".t" -type "double3" -8.1263706397291564 2.831956472413987 52.704151374308196 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "F210EC74-47E6-6DB7-66C7-1F82D7FDE530";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "492B9FF7-4E66-5DE2-ADE7-D6AEAF5272E1";
	setAttr ".t" -type "double3" -8.642541077742754 45.100594343887423 10.375821564859351 ;
	setAttr ".r" -type "double3" 174.24871333979053 0 180 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "163BBDBB-4AE5-9711-6097-3A80061EB381";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "844A4D3D-4AF0-F645-E834-49B1D919AAC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -45.775426604995957 -1.7063474749741856e-15 
		25.072605190135874 -5.2315942571749013e-14 -2.4131397412295766e-15 35.458018303916234 
		45.775426604995957 -1.7063474749741848e-15 25.07260519013586 64.736229128199497 -7.1185672138785684e-31 
		-1.1223511751527111e-14 45.775426604995957 1.7063474749741848e-15 -25.07260519013586 
		-4.1867319435306908e-14 2.4131397412295766e-15 -35.458018303916248 -45.775426604995957 
		1.7063474749741848e-15 -25.072605190135832 -64.736229128199497 -2.5768011658862866e-31 
		-1.7897059118483952e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "34BD322A-4AEA-01B2-7CBA-998F92696CDC";
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
	rename -uid "85808BA4-4D5A-AC65-8955-F1A9EAAD1B70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -7.9640546670892517e-14 -2.5046267910585681e-15 
		38.266510958860607 9.9426462558980688 -2.4791333016992071e-15 37.877013053051911 
		17.911516144509097 -2.0459029501186879e-15 33.412130771796754 26.410553311531842 
		-1.9395856290719166e-15 31.675837154391459 34.371947774878308 -1.7937839379203132e-15 
		29.294714838093995 41.633628502040487 -1.6114659786383654e-15 26.317236606674314 
		48.047768614371257 -1.3963432191154782e-15 22.804015330586161 53.483794716036343 
		-1.1527949383727238e-15 18.826570063717092 57.831044991810415 -8.8577907707078486e-16 
		14.465870121695467 61.001021962513491 -6.0073130813560906e-16 9.8106867801207578 
		69.152623665473001 -3.5644555670443823e-16 5.4458923183931436 69.863735760324545 
		7.5152754911357545e-31 -3.5218551277237872e-14 69.152623665472973 3.5644555670443843e-16 
		-5.4458923183931507 61.001021962513491 6.0073130813560906e-16 -9.8106867801207613 
		57.831044991810415 8.8577907707078526e-16 -14.465870121695474 53.483794716036343 
		1.1527949383727238e-15 -18.826570063717092 48.047768614371257 1.3963432191154782e-15 
		-22.804015330586161 41.633628502040459 1.6114659786383646e-15 -26.317236606674314 
		34.371947774878301 1.7937839379203132e-15 -29.294714838093995 26.410553311531821 
		1.9395856290719166e-15 -31.675837154391445 17.911516144509093 2.0459029501186879e-15 
		-33.412130771796754 9.9426462558980617 2.4791333016992055e-15 -37.877013053051883 
		-7.6902031235414749e-14 2.5046267910585666e-15 -38.266510958860536 -9.9426462558981736 
		2.4791333016992055e-15 -37.877013053051883 -17.911516144509111 2.0459029501186879e-15 
		-33.412130771796754 -26.410553311531821 1.9395856290719166e-15 -31.675837154391445 
		-34.371947774878301 1.7937839379203132e-15 -29.294714838093995 -41.63362850204048 
		1.611465978638363e-15 -26.317236606674314 -48.047768614371222 1.3963432191154774e-15 
		-22.804015330586147 -53.483794716036343 1.1527949383727234e-15 -18.826570063717092 
		-57.831044991810408 8.8577907707078407e-16 -14.465870121695446 -61.001021962513448 
		6.0073130813560866e-16 -9.8106867801207578 -69.152623665472916 3.5644555670443705e-16 
		-5.4458923183931347 -69.863735760324403 2.9356492621671393e-31 -2.8221647870154011e-14 
		-69.152623665472916 -3.5644555670443823e-16 5.4458923183931436 -61.001021962513434 
		-6.0073130813560886e-16 9.8106867801207578 -57.831044991810415 -8.8577907707078407e-16 
		14.465870121695446 -53.483794716036293 -1.1527949383727234e-15 18.826570063717092 
		-48.047768614371144 -1.3963432191154751e-15 22.804015330586118 -41.633628502040395 
		-1.611465978638363e-15 26.317236606674257 -34.371947774878272 -1.7937839379203132e-15 
		29.294714838093981 -26.410553311531821 -1.9395856290719158e-15 31.675837154391445 
		-17.911516144509097 -2.0459029501186863e-15 33.412130771796754 -9.9426462558981505 
		-2.4791333016992055e-15 37.877013053051826 -6.6066789266090477e-14 -2.5046267910585658e-15 
		38.266510958860508;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "A8F88E10-4383-D007-30E8-E5967A185A1A";
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
	rename -uid "052CEEE6-4A2B-62C9-35D5-0893E2A63AA7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "820E04AF-4CAD-2E54-B059-1297C9E403B0";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "411A4724-4C5C-5472-AA1E-6C95B3952285";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "701E4763-4916-69E6-14A5-2EB387783202";
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
	setAttr -s 7 ".st";
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
	setAttr -s 10 ".s";
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
	setAttr -s 4 ".dsm";
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
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe01_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe04_3_ikc_ofs1.ry";
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
connectAttr "lfLegQd1_autoAim_end.tx" "effector20.tx";
connectAttr "lfLegQd1_autoAim_end.ty" "effector20.ty";
connectAttr "lfLegQd1_autoAim_end.tz" "effector20.tz";
connectAttr "lfLegQd1_autoAim_end.opm" "effector20.opm";
connectAttr "lfLegQd1_legLock.msg" "lfLegQd1_legLock_ikh.hsj";
connectAttr "effector21.hp" "lfLegQd1_legLock_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_ball_ik.msg" "lfLegQd1_3_ikh.hsj";
connectAttr "effector18.hp" "lfLegQd1_3_ikh.hee";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe00_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe01_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe04_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_upr_ik.is";
connectAttr "lfLegQd1_upr_ik.s" "lfLegQd1_lwr_ik.is";
connectAttr "lfLegQd1_lwr_ik.s" "lfLegQd1_palm_ik.is";
connectAttr "lfLegQd1_palm_ik.s" "lfLegQd1_digit_ik.is";
connectAttr "lfLegQd1_digit_ik.s" "lfLegQd1_ball_ik.is";
connectAttr "lfLegQd1_ball_ik.s" "lfLegQd1_tip_ik.is";
connectAttr "lfLegQd1_tip_ik.tx" "effector18.tx";
connectAttr "lfLegQd1_tip_ik.ty" "effector18.ty";
connectAttr "lfLegQd1_tip_ik.tz" "effector18.tz";
connectAttr "lfLegQd1_tip_ik.opm" "effector18.opm";
connectAttr "lfLegQd1_ball_ik.tx" "effector17.tx";
connectAttr "lfLegQd1_ball_ik.ty" "effector17.ty";
connectAttr "lfLegQd1_ball_ik.tz" "effector17.tz";
connectAttr "lfLegQd1_ball_ik.opm" "effector17.opm";
connectAttr "lfLegQd1_digit_ik.tx" "effector16.tx";
connectAttr "lfLegQd1_digit_ik.ty" "effector16.ty";
connectAttr "lfLegQd1_digit_ik.tz" "effector16.tz";
connectAttr "lfLegQd1_digit_ik.opm" "effector16.opm";
connectAttr "lfLegQd1_palm_ik.tx" "effector15.tx";
connectAttr "lfLegQd1_palm_ik.ty" "effector15.ty";
connectAttr "lfLegQd1_palm_ik.tz" "effector15.tz";
connectAttr "lfLegQd1_palm_ik.opm" "effector15.opm";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_softJ.is";
connectAttr "lfLegQd1_softJ.s" "lfLegQd1_softJ_end.is";
connectAttr "lfLegQd1_softJ_end.tx" "effector19.tx";
connectAttr "lfLegQd1_softJ_end.ty" "effector19.ty";
connectAttr "lfLegQd1_softJ_end.tz" "effector19.tz";
connectAttr "lfLegQd1_softJ_end.opm" "effector19.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_palm_ik.msg" "lfLegQd1_X_ikh.hsj";
connectAttr "effector16.hp" "lfLegQd1_X_ikh.hee";
connectAttr "lfLegQd1_upr_ik.msg" "lfLegQd1_1_ikh.hsj";
connectAttr "effector15.hp" "lfLegQd1_1_ikh.hee";
connectAttr "lfLegQd1_digit_ik.msg" "lfLegQd1_2_ikh.hsj";
connectAttr "effector17.hp" "lfLegQd1_2_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_line_30.v";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion51.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_autoAim.msg" "lfLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector20.hp" "lfLegQd1_autoAimJ_ikh.hee";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector21.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector21.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector21.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector21.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector33.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector33.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector33.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector33.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector33.hp" "neckQd0_two_ikj_ikh.hee";
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
connectAttr "rtLegQd0_autoAim_end.tx" "effector39.tx";
connectAttr "rtLegQd0_autoAim_end.ty" "effector39.ty";
connectAttr "rtLegQd0_autoAim_end.tz" "effector39.tz";
connectAttr "rtLegQd0_autoAim_end.opm" "effector39.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_ik.msg" "rtLegQd0_3_ikh.hsj";
connectAttr "effector37.hp" "rtLegQd0_3_ikh.hee";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe01_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe04_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_upr_ik.is";
connectAttr "rtLegQd0_upr_ik.s" "rtLegQd0_lwr_ik.is";
connectAttr "rtLegQd0_lwr_ik.s" "rtLegQd0_palm_ik.is";
connectAttr "rtLegQd0_palm_ik.s" "rtLegQd0_digit_ik.is";
connectAttr "rtLegQd0_digit_ik.s" "rtLegQd0_ball_ik.is";
connectAttr "rtLegQd0_ball_ik.s" "rtLegQd0_tip_ik.is";
connectAttr "rtLegQd0_tip_ik.tx" "effector37.tx";
connectAttr "rtLegQd0_tip_ik.ty" "effector37.ty";
connectAttr "rtLegQd0_tip_ik.tz" "effector37.tz";
connectAttr "rtLegQd0_tip_ik.opm" "effector37.opm";
connectAttr "rtLegQd0_ball_ik.tx" "effector36.tx";
connectAttr "rtLegQd0_ball_ik.ty" "effector36.ty";
connectAttr "rtLegQd0_ball_ik.tz" "effector36.tz";
connectAttr "rtLegQd0_ball_ik.opm" "effector36.opm";
connectAttr "rtLegQd0_digit_ik.tx" "effector35.tx";
connectAttr "rtLegQd0_digit_ik.ty" "effector35.ty";
connectAttr "rtLegQd0_digit_ik.tz" "effector35.tz";
connectAttr "rtLegQd0_digit_ik.opm" "effector35.opm";
connectAttr "rtLegQd0_palm_ik.tx" "effector34.tx";
connectAttr "rtLegQd0_palm_ik.ty" "effector34.ty";
connectAttr "rtLegQd0_palm_ik.tz" "effector34.tz";
connectAttr "rtLegQd0_palm_ik.opm" "effector34.opm";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_softJ.is";
connectAttr "rtLegQd0_softJ.s" "rtLegQd0_softJ_end.is";
connectAttr "rtLegQd0_softJ_end.tx" "effector38.tx";
connectAttr "rtLegQd0_softJ_end.ty" "effector38.ty";
connectAttr "rtLegQd0_softJ_end.tz" "effector38.tz";
connectAttr "rtLegQd0_softJ_end.opm" "effector38.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_palm_ik.msg" "rtLegQd0_X_ikh.hsj";
connectAttr "effector35.hp" "rtLegQd0_X_ikh.hee";
connectAttr "rtLegQd0_upr_ik.msg" "rtLegQd0_1_ikh.hsj";
connectAttr "effector34.hp" "rtLegQd0_1_ikh.hee";
connectAttr "rtLegQd0_digit_ik.msg" "rtLegQd0_2_ikh.hsj";
connectAttr "effector36.hp" "rtLegQd0_2_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_line_53.v";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion82.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_autoAim.msg" "rtLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector39.hp" "rtLegQd0_autoAimJ_ikh.hee";
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
connectAttr "rtLegQd1_autoAim_end.tx" "effector53.tx";
connectAttr "rtLegQd1_autoAim_end.ty" "effector53.ty";
connectAttr "rtLegQd1_autoAim_end.tz" "effector53.tz";
connectAttr "rtLegQd1_autoAim_end.opm" "effector53.opm";
connectAttr "rtLegQd1_legLock.msg" "rtLegQd1_legLock_ikh.hsj";
connectAttr "effector54.hp" "rtLegQd1_legLock_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_ik.msg" "rtLegQd1_3_ikh.hsj";
connectAttr "effector51.hp" "rtLegQd1_3_ikh.hee";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe00_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe01_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe04_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_upr_ik.is";
connectAttr "rtLegQd1_upr_ik.s" "rtLegQd1_lwr_ik.is";
connectAttr "rtLegQd1_lwr_ik.s" "rtLegQd1_palm_ik.is";
connectAttr "rtLegQd1_palm_ik.s" "rtLegQd1_digit_ik.is";
connectAttr "rtLegQd1_digit_ik.s" "rtLegQd1_ball_ik.is";
connectAttr "rtLegQd1_ball_ik.s" "rtLegQd1_tip_ik.is";
connectAttr "rtLegQd1_tip_ik.tx" "effector51.tx";
connectAttr "rtLegQd1_tip_ik.ty" "effector51.ty";
connectAttr "rtLegQd1_tip_ik.tz" "effector51.tz";
connectAttr "rtLegQd1_tip_ik.opm" "effector51.opm";
connectAttr "rtLegQd1_ball_ik.tx" "effector50.tx";
connectAttr "rtLegQd1_ball_ik.ty" "effector50.ty";
connectAttr "rtLegQd1_ball_ik.tz" "effector50.tz";
connectAttr "rtLegQd1_ball_ik.opm" "effector50.opm";
connectAttr "rtLegQd1_digit_ik.tx" "effector49.tx";
connectAttr "rtLegQd1_digit_ik.ty" "effector49.ty";
connectAttr "rtLegQd1_digit_ik.tz" "effector49.tz";
connectAttr "rtLegQd1_digit_ik.opm" "effector49.opm";
connectAttr "rtLegQd1_palm_ik.tx" "effector48.tx";
connectAttr "rtLegQd1_palm_ik.ty" "effector48.ty";
connectAttr "rtLegQd1_palm_ik.tz" "effector48.tz";
connectAttr "rtLegQd1_palm_ik.opm" "effector48.opm";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_softJ.is";
connectAttr "rtLegQd1_softJ.s" "rtLegQd1_softJ_end.is";
connectAttr "rtLegQd1_softJ_end.tx" "effector52.tx";
connectAttr "rtLegQd1_softJ_end.ty" "effector52.ty";
connectAttr "rtLegQd1_softJ_end.tz" "effector52.tz";
connectAttr "rtLegQd1_softJ_end.opm" "effector52.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_palm_ik.msg" "rtLegQd1_X_ikh.hsj";
connectAttr "effector49.hp" "rtLegQd1_X_ikh.hee";
connectAttr "rtLegQd1_upr_ik.msg" "rtLegQd1_1_ikh.hsj";
connectAttr "effector48.hp" "rtLegQd1_1_ikh.hee";
connectAttr "rtLegQd1_digit_ik.msg" "rtLegQd1_2_ikh.hsj";
connectAttr "effector50.hp" "rtLegQd1_2_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_line_53.v";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion111.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_autoAim.msg" "rtLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector53.hp" "rtLegQd1_autoAimJ_ikh.hee";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector54.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector54.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector54.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector54.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector66.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector66.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector66.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector66.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector66.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "tail0_setting.localScale" "tail0_FK.sx";
connectAttr "tail0_setting.localScale" "tail0_FK.sy";
connectAttr "tail0_setting.localScale" "tail0_FK.sz";
connectAttr "tail0_0_chainGrp.tx" "tail0_0_fkc_ofs.tx";
connectAttr "tail0_0_chainGrp.ty" "tail0_0_fkc_ofs.ty";
connectAttr "tail0_0_chainGrp.tz" "tail0_0_fkc_ofs.tz";
connectAttr "tail0_0_chainGrp.rx" "tail0_0_fkc_ofs.rx";
connectAttr "tail0_0_chainGrp.ry" "tail0_0_fkc_ofs.ry";
connectAttr "tail0_0_chainGrp.rz" "tail0_0_fkc_ofs.rz";
connectAttr "tail0_setting.fkCtl" "tail0_0_fkc.v" -l on;
connectAttr "tail0_1_chainGrp.tx" "tail0_1_fkc_ofs.tx";
connectAttr "tail0_1_chainGrp.ty" "tail0_1_fkc_ofs.ty";
connectAttr "tail0_1_chainGrp.tz" "tail0_1_fkc_ofs.tz";
connectAttr "tail0_1_chainGrp.rx" "tail0_1_fkc_ofs.rx";
connectAttr "tail0_1_chainGrp.ry" "tail0_1_fkc_ofs.ry";
connectAttr "tail0_1_chainGrp.rz" "tail0_1_fkc_ofs.rz";
connectAttr "tail0_2_chainGrp.tx" "tail0_2_fkc_ofs.tx";
connectAttr "tail0_2_chainGrp.ty" "tail0_2_fkc_ofs.ty";
connectAttr "tail0_2_chainGrp.tz" "tail0_2_fkc_ofs.tz";
connectAttr "tail0_2_chainGrp.rx" "tail0_2_fkc_ofs.rx";
connectAttr "tail0_2_chainGrp.ry" "tail0_2_fkc_ofs.ry";
connectAttr "tail0_2_chainGrp.rz" "tail0_2_fkc_ofs.rz";
connectAttr "tail0_3_chainGrp.tx" "tail0_3_fkc_ofs.tx";
connectAttr "tail0_3_chainGrp.ty" "tail0_3_fkc_ofs.ty";
connectAttr "tail0_3_chainGrp.tz" "tail0_3_fkc_ofs.tz";
connectAttr "tail0_3_chainGrp.rx" "tail0_3_fkc_ofs.rx";
connectAttr "tail0_3_chainGrp.ry" "tail0_3_fkc_ofs.ry";
connectAttr "tail0_3_chainGrp.rz" "tail0_3_fkc_ofs.rz";
connectAttr "tail0_4_chainGrp.tx" "tail0_4_fkc_ofs.tx";
connectAttr "tail0_4_chainGrp.ty" "tail0_4_fkc_ofs.ty";
connectAttr "tail0_4_chainGrp.tz" "tail0_4_fkc_ofs.tz";
connectAttr "tail0_4_chainGrp.rx" "tail0_4_fkc_ofs.rx";
connectAttr "tail0_4_chainGrp.ry" "tail0_4_fkc_ofs.ry";
connectAttr "tail0_4_chainGrp.rz" "tail0_4_fkc_ofs.rz";
connectAttr "tail0_5_chainGrp.tx" "tail0_5_fkc_ofs.tx";
connectAttr "tail0_5_chainGrp.ty" "tail0_5_fkc_ofs.ty";
connectAttr "tail0_5_chainGrp.tz" "tail0_5_fkc_ofs.tz";
connectAttr "tail0_5_chainGrp.rx" "tail0_5_fkc_ofs.rx";
connectAttr "tail0_5_chainGrp.ry" "tail0_5_fkc_ofs.ry";
connectAttr "tail0_5_chainGrp.rz" "tail0_5_fkc_ofs.rz";
connectAttr "tail0_6_chainGrp.tx" "tail0_6_fkc_ofs.tx";
connectAttr "tail0_6_chainGrp.ty" "tail0_6_fkc_ofs.ty";
connectAttr "tail0_6_chainGrp.tz" "tail0_6_fkc_ofs.tz";
connectAttr "tail0_6_chainGrp.rx" "tail0_6_fkc_ofs.rx";
connectAttr "tail0_6_chainGrp.ry" "tail0_6_fkc_ofs.ry";
connectAttr "tail0_6_chainGrp.rz" "tail0_6_fkc_ofs.rz";
connectAttr "tail0_setting.subCtl" "tail0_6_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_5_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_4_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_3_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_2_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_1_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_0_ofs_ctl.v";
connectAttr "tail0_setting.localScale" "tail0_IK.sx";
connectAttr "tail0_setting.localScale" "tail0_IK.sy";
connectAttr "tail0_setting.localScale" "tail0_IK.sz";
connectAttr "tail0_setting.ikCtl" "tail0_0_ikc.v" -l on;
connectAttr "master1_ctlShapeOrig.ws" "master1_ctlShape.cr";
connectAttr "master2_ctlShapeOrig.ws" "master2_ctlShape.cr";
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion51.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion82.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion111.i";
// End of cheetah_ctl.ma
