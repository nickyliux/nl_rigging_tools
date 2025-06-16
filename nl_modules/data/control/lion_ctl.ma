//Maya ASCII 2023 scene
//Name: lion_ctl.ma
//Last modified: Thu, Jun 12, 2025 08:18:20 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "595304B2-4863-0399-6202-41AD0475AD12";
createNode transform -n "CHR";
	rename -uid "424F490D-4650-F07F-8F3A-F287FC42E41B";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "F3038296-4587-2B16-99D8-78B71F31599C";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "62FBDC05-49B9-9D0C-FAE8-6CB30813B52D";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "8749CF38-4CE8-28A8-98E4-39980B291DEA";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "4E19773F-4204-BA6A-62F0-5FB2D12EEAA2";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "057EB5A3-44FC-E8B5-C5EB-56A0405F339F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -37.381377438136404 -1.0315402285517564e-15 
		15.157171248846666 -4.6512957419421383e-14 -1.4588181813513438e-15 21.43547714733046 
		37.381377438136404 -1.0315402285517564e-15 15.157171248846652 52.86525095320026 -4.1351537510449289e-31 
		-8.2026334985642241e-15 37.381377438136404 1.0315402285517564e-15 -15.157171248846652 
		-3.7980346056940744e-14 1.4588181813513454e-15 -21.43547714733046 -37.381377438136404 
		1.0315402285517564e-15 -15.157171248846652 -52.86525095320026 -1.3895146266072458e-31 
		-1.2237000869293198e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "FED35292-41D2-CC26-886F-C598B3D418FE";
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
	rename -uid "C3F9361A-4AFF-65F2-72A3-83A469867C9F";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "9566EB70-4FAC-0E27-0930-5E87817C9BC7";
	setAttr ".t" -type "double3" 0 104.41270821916447 98.611642971070737 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "7B0E2734-47D4-FC89-7F2D-0C8886ABE2BB";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "88587D32-4B57-35EC-B887-359A67541268";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "990E2736-4446-9633-5CA2-02A06E88BC58";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.802895560623849 14.4006810817461 -4.8028955606238526
		2.6591976306331012e-16 14.4006810817461 -4.3427992993319151
		-4.802895560623849 14.4006810817461 -4.8028955606238526
		-4.3427992993319275 14.4006810817461 0
		-4.802895560623849 14.4006810817461 4.8028955606238526
		-4.3502117599051934e-16 14.4006810817461 4.3427992993319151
		4.802895560623849 14.4006810817461 4.8028955606238526
		4.3427992993319275 14.4006810817461 0
		4.802895560623849 14.4006810817461 -4.8028955606238526
		2.6591976306331012e-16 14.4006810817461 -4.3427992993319151
		-4.802895560623849 14.4006810817461 -4.8028955606238526
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "4F4707A5-4A78-E977-E337-1D8F32306EBA";
	setAttr ".t" -type "double3" -6.5152535693759807e-14 -4.3474507881247604 1.043313637084097 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "60950D94-4B16-DE95-ABC9-8096DD4738F2";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "CB4EAF85-48BD-E0FD-F2E9-CDB91EC39661";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.6355560317998923 -28.156651587921857 7.3503801498951873
		6.5467323697877166e-14 -28.156651587921857 5.8444835347563782
		-3.6355560317997617 -28.156651587921857 7.3503801498951873
		-5.1414526469385615 -28.156651587921857 10.98593618169501
		-3.6355560317997617 -28.156651587921857 14.621492213494832
		6.4637477693480802e-14 -28.156651587921857 16.127388828633642
		3.6355560317998923 -28.156651587921857 14.621492213494832
		5.1414526469386912 -28.156651587921857 10.98593618169501
		3.6355560317998923 -28.156651587921857 7.3503801498951873
		6.5467323697877166e-14 -28.156651587921857 5.8444835347563782
		-3.6355560317997617 -28.156651587921857 7.3503801498951873
		;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "6B455AEF-40A3-3178-E99A-6B97FF1E59CA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "5A871EBE-4EFC-4E6A-34D6-459ED123FF47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 6.9592306628385385 6.9592306628385385 6.9592306628385385 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "66CE28B3-4277-B1C0-0421-FEBA520F77F8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "610E5C3D-422A-4559-D435-359D994F032C";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "9A6B4E4B-437B-7910-255E-049857A077D6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.453373909237639 132.27714362201669 95.542950963022122 ;
	setAttr ".radi" 1.9192689687500939;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "4420D19A-42DE-F8C0-7EEF-9BB940E3D340";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.2374840724496785 63.796237744181688 1.5239924979247645 ;
	setAttr ".radi" 1.9192689687500939;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "B33DFE0C-4B24-9414-5EB5-B2ACD61C7183";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 1.9192689687500939;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "BE718BD2-4728-DD5A-BB2C-9E83B04FE9E3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533399688 28.202196682808211 0.15151114604104376 ;
	setAttr ".radi" 1.9192689687500939;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "7EEF60C1-4BAE-4B98-40E4-39A389014B8F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431889 109.81053629005903 37.746206672014772 ;
	setAttr ".radi" 1.9192689687500939;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "1162BC19-4162-9B2E-E060-EC9BF1AE7FBB";
	setAttr ".t" -type "double3" 6.9774500664449377 1.4210854715202004e-14 -8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 4.1631179532213949 -87.519412399546184 -4.8064433304300529 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "2EC4201B-47CE-8B5B-AC09-79ACE8BA7CF7";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "2D4B5882-4C5B-680C-825F-0587B9B16455";
	setAttr ".t" -type "double3" 6.9774500664449448 7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 4.1631179532225691 -87.519412399546169 -4.8064433304312395 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "82D98126-46BC-157F-12D0-DFB2CD5BB844";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "E215D92E-4826-86B4-6921-3AB63DED1CB1";
	setAttr ".t" -type "double3" 6.9774500664449448 7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "C58B868B-4BF8-4B36-A61F-3CB48F28F9F4";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -3.3564791122819673e-13 -1.9772474153185078e-14 1.4337344150034816e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317576e-15 2.5444437451708122e-14 -2.8624992133171641e-14 ;
	setAttr ".radi" 1.9192689687500939;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "3A49C814-408D-C867-635A-18879660F868";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982322 67.847764185930785 36.972456027853944 ;
	setAttr ".radi" 1.9192689687500939;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "53B74F9F-4D1D-3FD6-E1E3-A49F67C96A95";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "EA3E458C-4A80-8F9F-7603-2BBBC4B26A35";
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
	rename -uid "8A4858D4-4D03-C1E3-20F2-66935B644B5C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		-1.1768984220167759e-31 8.9826738793398437 -3.4879479065239678e-15
		-2.0390254915724817e-16 9.9343399323680472 9.9343399323680472
		-2.8836175042062773e-16 8.9980058602544013e-16 8.982673879339826
		-2.0390254915724809e-16 -9.9343399323680472 9.9343399323680508
		-1.7196235635507316e-31 -8.9826738793398437 -1.797320441055044e-15
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "7BFA2B7D-4B00-0F37-6D31-B68110889EA6";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "E33BBE15-4424-2CA7-1541-32ADBD94C023";
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
createNode nurbsCurve -n "lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "086EB412-4604-A7EA-694E-83A33014A5F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		-1.1768984220167759e-31 8.9826738793398437 -3.4879479065239678e-15
		-2.0390254915724817e-16 9.9343399323680472 9.9343399323680472
		-2.8836175042062773e-16 8.9980058602544013e-16 8.982673879339826
		-2.0390254915724809e-16 -9.9343399323680472 9.9343399323680508
		-1.7196235635507316e-31 -8.9826738793398437 -1.797320441055044e-15
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "C19C84FD-44DC-12EB-30B9-64A44BDA94B3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "5F3E9BC4-415A-47FD-63E2-DB93E895AD0A";
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
	rename -uid "8A83CEAA-4483-5154-11E6-C7BA76FF231E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		-1.1768984220167759e-31 8.9826738793398437 -3.4879479065239678e-15
		-2.0390254915724817e-16 9.9343399323680472 9.9343399323680472
		-2.8836175042062773e-16 8.9980058602544013e-16 8.982673879339826
		-2.0390254915724809e-16 -9.9343399323680472 9.9343399323680508
		-1.7196235635507316e-31 -8.9826738793398437 -1.797320441055044e-15
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "32412530-4FAF-058F-E5BC-0B998C874CA3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "B3798A72-4540-AAAB-A0DC-2AAB10D44351";
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
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "509BFA71-4D3D-E916-D877-8FBCFE368238";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		-1.1768984220167759e-31 8.9826738793398437 -3.4879479065239678e-15
		-2.0390254915724817e-16 9.9343399323680472 9.9343399323680472
		-2.8836175042062773e-16 8.9980058602544013e-16 8.982673879339826
		-2.0390254915724809e-16 -9.9343399323680472 9.9343399323680508
		-1.7196235635507316e-31 -8.9826738793398437 -1.797320441055044e-15
		2.0390254915724821e-16 -9.9343399323680472 -9.9343399323680579
		2.8836175042062743e-16 -5.5003014070590277e-16 -8.9826738793398171
		2.0390254915724809e-16 9.9343399323680472 -9.9343399323680508
		;
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "3D192B38-4829-1EEF-524D-53A89BD0BC6A";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -74.803134575536674 -3.3083777434185406 -78.005620489158488 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "B4740E3A-4327-7526-E84D-89BA6BAA4300";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "9E004CFA-4D02-A39A-A015-C3B9E5497D0D";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "03680CCB-44BA-72F7-0C2E-7E87C0578BF6";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "892E5777-4333-D3F2-63DA-A69CFB082AA3";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "D2C46A0B-41C1-615A-2B1E-10910B14670E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.9671699661840236 -19.192689687500938 -4.967169966184029
		2.7501507035295139e-16 -19.192689687500938 -4.4913369396699085
		-4.9671699661840236 -19.192689687500938 -4.9671699661840254
		-4.4913369396699219 -19.192689687500938 -1.7439739532619839e-15
		-4.9671699661840236 -19.192689687500938 4.9671699661840236
		-4.4990029301272007e-16 -19.192689687500938 4.491336939669913
		4.9671699661840236 -19.192689687500938 4.9671699661840254
		4.4913369396699219 -19.192689687500938 -8.9866022052752199e-16
		4.9671699661840236 -19.192689687500938 -4.967169966184029
		2.7501507035295139e-16 -19.192689687500938 -4.4913369396699085
		-4.9671699661840236 -19.192689687500938 -4.9671699661840254
		;
	setAttr ".adot" yes;
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "FE0CD425-483D-F493-9BF4-7DB63B02E8B4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 98.147122544539585 39.687083909305926 3.8358903435120815 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "9E216227-49BC-5D40-B0D3-93B2A123ADA8";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 90.165654146188359 0 -1.3322676295501878e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317581e-14 9.939233379573482e-16 1.5902773407317584e-15 ;
	setAttr ".radi" 2.8789034531251407;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "9F0E8691-4625-7A07-EB29-6FBDD45EDF8E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "40E47091-4EB5-5855-06B8-F9B2CB720839";
	setAttr ".t" -type "double3" 11.526513843273905 4.7403963678317442 -44.65853940740012 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "54A09DA3-4546-E645-0803-308F90CFAB48";
	setAttr ".t" -type "double3" 1.4476070410130522 1.8698696087982345 6.5645120900945173 ;
	setAttr ".r" -type "double3" 166.24154916441344 -17.532672327093529 -85.781365618985731 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "13F219F5-4CE0-4AB0-7A78-0C94F83007DD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "C6C79F6B-4D88-7475-F561-40A2FB3A3F74";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "2CFC27B3-4021-5001-7683-94902EC042A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0195127457862411e-16 -4.9671699661840236 -4.967169966184029
		1.4418087521031372e-16 -2.7501507035295139e-16 -4.4913369396699085
		1.0195127457862405e-16 4.9671699661840236 -4.9671699661840254
		-5.8844921100838794e-32 4.4913369396699219 -1.7439739532619839e-15
		-1.0195127457862408e-16 4.9671699661840236 4.9671699661840236
		-1.4418087521031387e-16 4.4990029301272007e-16 4.491336939669913
		-1.0195127457862405e-16 -4.9671699661840236 4.9671699661840254
		-8.5981178177536578e-32 -4.4913369396699219 -8.9866022052752199e-16
		1.0195127457862411e-16 -4.9671699661840236 -4.967169966184029
		1.4418087521031372e-16 -2.7501507035295139e-16 -4.4913369396699085
		1.0195127457862405e-16 4.9671699661840236 -4.9671699661840254
		;
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "E7650BEF-4119-41F6-A14D-20A47E5AD83D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039364894 7.1054273576010019e-15 -6.0396132539608516e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.22678088064234284 -0.92618524711821837 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "FEAAA4CE-442A-9AB5-CEAA-6D8DF48EE82A";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "4EF74F3B-4FE1-68E7-265E-58AFA3D21D2C";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd0_toe01_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "2873569B-4FD7-C292-52E5-E392DDD1A78E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.95005788317386575 4.7695677060483561 1.0401287459695467 ;
	setAttr ".r" -type "double3" 34.397312503312811 70.986343301706512 36.406368017225645 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe02_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "D2691A89-4A9D-093C-0EBF-94B64235CE8A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.53635655089943057 1.351140702226477 -0.20480056262740476 ;
	setAttr ".r" -type "double3" 10.505007780709871 83.751864507277332 10.813849714442814 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe03_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "D49B5171-404D-C721-1DB9-E3AB35B2DAF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.62757604096223574 -1.9977720025686772 -0.27204527236868969 ;
	setAttr ".r" -type "double3" -24.348088858574258 79.799102698971268 -25.371460481394102 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe04_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "DB7ACA7B-4B5F-99F3-3AF4-05895CC667BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.83855776201675525 -4.6680201906544063 2.0699847239756899 ;
	setAttr ".r" -type "double3" -37.288936376721679 68.219959849212813 -39.568623976758758 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "6331D894-4777-8087-2AA8-22BD9BC34DDA";
	setAttr ".t" -type "double3" 0.95005788317385864 4.769567706048349 1.0401287459695467 ;
	setAttr ".r" -type "double3" 23.462131422776924 -7.1040108787492233 4.9687479993287713 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs1" -p "lfLegQd0_toe01_3_ikc_ofs";
	rename -uid "560571AC-4A8F-5F8F-53A4-C1AA377A11C1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_toe01_3_ikc" -p "lfLegQd0_toe01_3_ikc_ofs1";
	rename -uid "3FC38258-4649-4474-21C5-79991516BB3E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_3_ikcShape1" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "A13AF302-4137-7EA7-9C5F-23A32DE1BB6C";
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
		-1.71715498906944e-15 -9.6259506064304806e-17 7.0943270106639748e-15
		-1.71715498906944e-15 -9.6259506064304806e-17 -0.89625233505302127
		0.10349722827173582 -9.6259506064304806e-17 -0.89625233505302127
		0.10349722827173582 -9.6259506064304806e-17 -1.103246791596497
		-0.10349722827173927 -9.6259506064304806e-17 -1.103246791596497
		-0.10349722827173927 -9.6259506064304806e-17 -0.89625233505302127
		-1.71715498906944e-15 -9.6259506064304806e-17 -0.89625233505302127
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe01_3_1_ikj_ikh" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "93F38AF8-4902-434E-4D96-CA94323113B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6291491541308769 -1.212001595656508 -3.1012442427601883 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.20276264859431561 -0.19835287177007016 -0.95892828021473253 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "E2479B39-41F2-520D-A157-EDA23009BC67";
	setAttr ".t" -type "double3" 0.53635655089941991 1.3511407022264734 -0.20480056262740476 ;
	setAttr ".r" -type "double3" 2.3234926622744698 -3.8237351579363406 0.59945408601452776 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs1" -p "lfLegQd0_toe02_3_ikc_ofs";
	rename -uid "55B75AF1-4676-1F61-89E6-4093B7FCFD7A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_toe02_3_ikc" -p "lfLegQd0_toe02_3_ikc_ofs1";
	rename -uid "18DE6B9D-4AC5-E31D-85FF-26BC974A3251";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_3_ikcShape1" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "C35D0560-4357-F4B2-907C-D4A5DD3027B4";
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
		-3.4343099781388799e-15 -2.3680740132324216e-16 -7.1054273576010019e-15
		-3.4343099781388799e-15 -2.3680740132324216e-16 -0.89625233505303548
		0.10349722827173412 -2.3680740132324216e-16 -0.89625233505303548
		0.10349722827173412 -2.3680740132324216e-16 -1.1032467915965112
		-0.10349722827174097 -2.3680740132324216e-16 -1.1032467915965112
		-0.10349722827174097 -2.3680740132324216e-16 -0.89625233505303548
		-3.4343099781388799e-15 -2.3680740132324216e-16 -0.89625233505303548
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe02_3_1_ikj_ikh" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "D3548F2F-4E8E-44C6-65FB-DABFA220508D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.7235537165460411 0.070219300521490169 -3.2891403472724221 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.24116516335593016 0.18514670761907737 -0.95265946730262674 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "241C446E-4E45-D1C7-BAAA-E1A4154D005A";
	setAttr ".t" -type "double3" 0.62757604096223218 -1.9977720025686807 -0.27204527236868969 ;
	setAttr ".r" -type "double3" 16.136251602860799 -2.6800632013313352 4.6182660438050389 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs1" -p "lfLegQd0_toe03_3_ikc_ofs";
	rename -uid "9DE2B853-408C-19A6-E73F-AB857610B786";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe03_3_ikc" -p "lfLegQd0_toe03_3_ikc_ofs1";
	rename -uid "683D1ED3-4676-CE21-3992-37B09AE8049B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_3_ikcShape1" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "4DC4D92D-4AD0-6F93-13CE-09BE1E9BD74F";
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
		0 -3.789521080123743e-15 -7.2238310582626233e-15
		0 -3.789521080123743e-15 -0.89625233505303559
		0.10349722827173755 -3.789521080123743e-15 -0.89625233505303559
		0.10349722827173755 -3.789521080123743e-15 -1.1032467915965114
		-0.10349722827173755 -3.789521080123743e-15 -1.1032467915965114
		-0.10349722827173755 -3.789521080123743e-15 -0.89625233505303559
		0 -3.789521080123743e-15 -0.89625233505303559
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe03_3_1_ikj_ikh" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "89926D93-47A9-F314-4FA7-27B66DD5F6F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.7733038800069831 -0.78359770912789628 -3.1741325994171632 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.27487538160239156 -0.06742640095180541 -0.95911271759039096 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "FD5AF981-48C3-6170-2D11-F0B19B09B0F3";
	setAttr ".t" -type "double3" 0.83855776201674814 -4.6680201906544134 2.0699847239756828 ;
	setAttr ".r" -type "double3" 13.674781386795946 -6.7225221584969317 2.8744576905620849 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs1" -p "lfLegQd0_toe04_3_ikc_ofs";
	rename -uid "0AA7737B-4A9C-48F8-1FEE-5E812BC78306";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe04_3_ikc" -p "lfLegQd0_toe04_3_ikc_ofs1";
	rename -uid "63AC1A2C-477B-7931-4D6F-AF9B21EBD696";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_3_ikcShape1" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "FE224155-485E-EDD8-5BB4-3D847AC932D4";
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
		1.71715498906944e-15 0 0
		1.71715498906944e-15 0 -0.89625233505302837
		0.10349722827173927 0 -0.89625233505302837
		0.10349722827173927 0 -1.1032467915965041
		-0.10349722827173582 0 -1.1032467915965041
		-0.10349722827173582 0 -0.89625233505302837
		1.71715498906944e-15 0 -0.89625233505302837
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe04_3_1_ikj_ikh" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "1C89936B-4FF7-EB76-DBD7-C2B7E9D7E770";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4739011017029586 -1.1392126960739581 -3.1309827192303956 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.20167605816009065 -0.020699272600920367 -0.97923353071614194 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "3D9AC8F2-4195-26C3-D2C6-5B81A1E01789";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "3EB89066-407A-05B6-4B69-2A8ED52EFA42";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.453373909237639 132.27714362201669 95.542950963022122 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "7B84D784-4DE5-DBA4-E96C-3292EF239AB8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.203400271288366 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 7.8472049351915061e-07 -9.5454795543855623e-06 3.3636750457665695e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.2374840724496785 63.796237744181688 1.5239924979247645 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "FE045041-42A2-952A-1142-5BA3E1003E35";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.251914290918272 -5.3290705182007514e-14 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 1.2476418555920269e-20 1.8155371898187513e-05 -1.3744679597384928e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "F427DA62-4E29-D29D-9F49-CB93EC3A2891";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 36.188739948176888 -2.4868995751603507e-14 0 ;
	setAttr ".r" -type "double3" 2.6400687991883609e-07 -2.6410264383454569e-08 -1.0971380055483406e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533399688 28.202196682808211 0.15151114604104376 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "013C22BF-47AF-10BA-308B-BC8DBDE9B4A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.259600490642221 -1.526513579355985 -6.3414588457820642 ;
	setAttr ".r" -type "double3" 5.9580560614015715e-07 2.0132793159027003e-05 -8.2724673322664792e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431889 109.81053629005903 37.746206672014772 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "B6DA6E20-4F1D-F15A-F89D-F0998F239848";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9774500664449377 1.4210854715202004e-14 -1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 2.7462113466700392e-07 -3.5761346663361224e-05 -1.8201560601490376e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179532236544 -87.519412399546155 -4.8064433304319385 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "1835AAA2-40ED-F165-DC6A-18A96140565A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982322 67.847764185930785 36.972456027853944 ;
	setAttr ".radi" 2.8789034531251407;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "220DA193-431F-7033-0CE1-319F1C110096";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "1E8B4362-4646-2B58-971E-8FB7549D6AF1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "CED5AAE0-4BB2-E535-1FF7-F7B19AC9C04E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "DB9F1B73-4041-9BA4-53AB-858EEC2D7050";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "EB5B430D-49B7-1AF7-314E-E7A1BA10CD08";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 15.203400271288363 -8.8817841970012523e-15 0 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -8.4355822612689286e-30 -7.0296518843907717e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 85.728783746642037 40.76446762926961 6.3138508374305191 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "AA2C74AE-48C7-BD7A-6D53-9293A823B034";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 64.296783447265625 2.1316282072803006e-14 1.7763568394002505e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317581e-14 9.939233379573482e-16 1.5902773407317584e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "5F1525FE-4CD2-2607-2B51-02B629A0791D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "1E29CFE7-4155-BC63-0921-BE835F3EEEE9";
	setAttr ".t" -type "double3" 26.740373408540854 -44.665640417510843 0.85668887026009344 ;
	setAttr ".r" -type "double3" 0.076148319340443221 -88.909162991060924 83.020195805951161 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "98F76FED-4ACA-778D-31D8-68B04B9F4355";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "5FDCE681-456E-28D7-981F-5FA006E8B727";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "B8E26137-473F-6395-8C92-478D801639B4";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 19.999999999999975 -3.8482876911586246 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "BB1F19E4-436B-B8A5-234F-51A5657B43C9";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "A0A97C70-4D30-AE61-F48F-0C96C577D53B";
	setAttr ".t" -type "double3" 3.3129778471460689 1.92663599703401e-15 -15.73217680702232 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "67A307CE-4698-51CB-F202-A281F31E6E5D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "CF4DB73D-466B-3817-5E6B-27945A65CEF1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "2EB8D3DF-4B67-43AA-912B-C8822A064E5E";
	setAttr ".t" -type "double3" 5.4785272737373383 -1.0508038382894787e-15 8.5804644981809375 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "C43B391A-4EC5-11AB-86A3-7F998961BE5A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "B2057021-4E00-5F87-831D-788D72ADBD84";
	setAttr ".t" -type "double3" -12.024823832191306 -1.5777218104420236e-30 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "EC771D7F-4A39-3F6D-DC4A-99A3A50113B6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "5B028647-4B5A-5E82-1636-F088E6685405";
	setAttr ".t" -type "double3" 6.2074395955948471 -6.6102659766299841 -1.9059726826944399 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "131E9485-4145-B324-5ED7-7F8640693102";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "7BF62728-41F1-F8C3-23F2-C28C936E7871";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		5.9435741315459062e-17 -8.625685505902613 -5.2468227967505031e-16
		5.7410515773843396e-17 -8.6587600663210402 -0.25122511153170701
		5.1472861418361958e-17 -8.7557293572286774 -0.48532963079147984
		4.202741270277288e-17 -8.9099851778527484 -0.68635974216261753
		2.9717870657729531e-17 -9.1110151748265409 -0.84061563905158521
		1.5383100954294407e-17 -9.3451197322187625 -0.93758485369432454
		-1.8200749017170246e-32 -9.5963448437504688 -0.97065926158295968
		-1.5383100954294407e-17 -9.8475699552821752 -0.93758485369432454
		-2.9717870657729531e-17 -10.081674512674397 -0.84061563905158521
		-4.202741270277288e-17 -10.282704509648189 -0.68635974216261753
		-5.1472861418361958e-17 -10.436960940391435 -0.48532963079147984
		-5.7410515773843396e-17 -10.533929621179897 -0.25122511153170701
		-5.9435741315459062e-17 -10.567004181598325 -2.8682194341156111e-16
		-5.7410515773843396e-17 -10.533929621179897 0.25122511153170701
		-5.1472861418361958e-17 -10.436960940391435 0.48532963079147984
		-4.202741270277288e-17 -10.282704509648189 0.68635974216261753
		-2.9717870657729531e-17 -10.081674512674397 0.84061563905158521
		-1.5383100954294407e-17 -9.8475699552821752 0.93758485369432454
		4.4467895293170113e-32 -9.5963448437504688 0.97065926158295968
		1.5383100954294407e-17 -9.3451197322187625 0.93758485369432454
		2.9717870657729531e-17 -9.1110151748265409 0.84061563905158521
		4.202741270277288e-17 -8.9099851778527484 0.68635974216261753
		5.1472861418361958e-17 -8.7557293572286774 0.48532963079147984
		5.7410515773843396e-17 -8.6587600663210402 0.25122511153170701
		5.9435741315459062e-17 -8.625685505902613 -5.2468227967505031e-16
		0 0 0
		;
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "54127AFD-4AC1-0708-1B45-269A456B7813";
	setAttr ".t" -type "double3" -1.4476073049309708 1.8698664672722343 6.5645138369123615 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "330FF520-4E20-0FC2-0F0C-95BDA6FD5D0F";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -1.0211563012251688 0 90.390172239136632 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "5D1073BC-4932-A4CF-2DA0-DC810083D1C5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "5BE8F873-4DB1-6248-5EB2-D28B2F964FEF";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "1ACC01DD-4E9F-6855-4B08-1D9AB5455E19";
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
		5.7293057047712841 -9.5963448437504688 0
		5.3195187528133836 -7.3929281262110909 0
		4.071383608075112 -5.5249612356753568 0
		2.2034167175393775 -4.2768260909370852 0
		0 -3.8671734878056538 0
		-2.2034167175393775 -4.2768260909370852 0
		-4.071383608075112 -5.5249612356753568 0
		-5.3195187528133836 -7.3929281262110909 0
		-5.7293057047712841 -9.5963451152007373 0
		-5.3195187528133836 -11.799761561289847 0
		-4.071383608075112 -13.667728451825582 0
		-2.2034167175393775 -14.915863596563852 0
		2.2879451606157855e-07 -15.325516199695283 -0.038957321138116188
		2.2034167175393775 -14.915863596563852 0
		4.071383608075112 -13.667728451825582 0
		5.3195187528133836 -11.799761561289847 0
		5.7293057047712841 -9.5963448437504688 0
		5.2931863828254571 -9.5814361160918224 -2.1924615303753039
		4.0512312841047606 -9.5687968855806496 -4.0511429977330806
		2.1925114313679925 -9.5603516415780483 -5.2930712266884834
		2.2879451606157855e-07 -9.5573859871971933 -5.7291790330206149
		-2.1925114313679925 -9.5603516415780483 -5.2930712266884834
		-4.0512312841047606 -9.5687968855806496 -4.0511429977330806
		-5.2931863828254571 -9.5814361160918224 -2.1924615303753039
		-5.7293057047712841 -9.5963451152007373 0
		-5.2931863828254571 -9.6112541088044203 2.1924538532995057
		-4.0512312841047606 -9.6238933393155932 4.0511391591951806
		-2.1925114313679925 -9.6323385833181945 5.2930635496126852
		2.2879451606157855e-07 -9.6353040841575339 5.729171355944815
		2.1925114313679925 -9.6323385833181945 5.2930635496126852
		4.0512312841047606 -9.6238933393155932 4.0511391591951806
		5.2931863828254571 -9.6112541088044203 2.1924538532995057
		5.7293057047712841 -9.5963448437504688 0
		5.2931863828254571 -9.5814361160918224 -2.1924615303753039
		4.0512312841047606 -9.5687968855806496 -4.0511429977330806
		2.1925114313679925 -9.5603516415780483 -5.2930712266884834
		2.2879451606157855e-07 -9.5573859871971933 -5.7291790330206149
		2.2879451606157855e-07 -7.3678931820330646 -5.2781585069504215
		2.2879451606157855e-07 -5.5176603365912396 -4.0235938112311329
		2.2879451606157855e-07 -4.2883724129376217 -2.1564675604953045
		0 -3.8671734878056538 0
		2.2879451606157855e-07 -4.3181901753379455 2.2284516617174046
		2.2879451606157855e-07 -5.572754871057235 4.0786806686213302
		2.2879451606157855e-07 -7.4398772832551643 5.3079724308128471
		2.2879451606157855e-07 -9.6353040841575339 5.729171355944815
		2.2879451606157855e-07 -11.824796505467873 5.2781508298746243
		2.2879451606157855e-07 -13.675029350909698 4.0235861341553347
		2.2879451606157855e-07 -14.904317274563315 2.1564598834195059
		2.2879451606157855e-07 -15.325516199695283 -0.038957321138116188
		2.2879451606157855e-07 -14.874499512162991 -2.2284593387932028
		2.2879451606157855e-07 -13.619934816443703 -4.0786883456971283
		2.2879451606157855e-07 -11.752812404245773 -5.3079801078886462
		2.2879451606157855e-07 -9.5573859871971933 -5.7291790330206149
		;
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "11DEB2F6-44F2-5937-8027-5F8CC05768A2";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "565D55FD-46AF-D562-1841-399705A7A5DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "CDD496CC-4391-CC5D-FF5A-CCA445AF4E37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.5265135793559974 -15.259600490642255 6.3414588457820429 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "AFD52EFA-4C76-8A94-2126-59B2217CBBFE";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "D29BA6BA-4C33-0AE5-66F4-1EB8C8FC968C";
	setAttr ".t" -type "double3" -1.5265135793559974 -15.259600490642255 6.3414588457820429 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "83112B82-426B-CC94-EE07-9E93DBC308AD";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "99C8917B-4B0D-2B5E-688D-49AB0D5DC85E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "DBF176AA-49A5-7538-77BD-4CB8986DB439";
	setAttr ".t" -type "double3" 6.2074395955948471 -6.6102659766299841 -1.9059726826944399 ;
	setAttr ".r" -type "double3" 166.24154916441344 17.532672327093522 85.781365618985703 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "E231146A-464D-7C33-0048-2892DB440BA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-14 0 2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" -165.51750035534454 -87.444713791537211 -14.676500591160124 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483246 -0.22678088064234286 0.92618524711821826 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "8AF3697A-4A64-72E7-ADB3-60A122DFF4C8";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "032680B2-45F5-7DBE-0973-4694FD80F2F0";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "36E36852-432A-0633-49BB-359441DFFC64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720706034
		-0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0 0.59377383720706034 0
		-0.59377383720706034 0 0
		0 -0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 -0.59377383720706034 0
		0 0 -0.59377383720706034
		;
createNode nurbsCurve -n "lfLegQd0_outRollG_ctlShape1" -p "lfLegQd0_outRollG_ctl";
	rename -uid "DBB6B39D-426D-6225-16A7-42B3375E0AB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720706034
		-0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0 0.59377383720706034 0
		-0.59377383720706034 0 0
		0 -0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 -0.59377383720706034 0
		0 0 -0.59377383720706034
		;
createNode nurbsCurve -n "lfLegQd0_toeRollG_ctlShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "F24C17E4-4166-970A-03FA-5CA9DC57FCFF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720706034
		-0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0 0.59377383720706034 0
		-0.59377383720706034 0 0
		0 -0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 -0.59377383720706034 0
		0 0 -0.59377383720706034
		;
createNode nurbsCurve -n "lfLegQd0_heelRollG_ctlShape1" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "EF0F9A51-4B92-2E3D-6DCC-7D8B5818CDAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720706034
		-0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 -0.59377383720706034
		0 0.59377383720706034 0
		-0.59377383720706034 0 0
		0 -0.59377383720706034 0
		0.59377383720706034 0 0
		0 0 0.59377383720706034
		0 -0.59377383720706034 0
		0 0 -0.59377383720706034
		;
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_IK";
	rename -uid "6890DB35-40D5-6FE6-E173-2C8B061C5892";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "3B505214-4987-83DC-7EFF-429413BB999F";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12.411266732458699 51.892492721845628 -34.068392896492711
		17.032164269784559 51.850024983659551 -2.6020486514903194
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "0CA15C40-4C83-4949-805B-838D82773B2E";
	setAttr ".t" -type "double3" 11.526513579355978 4.7403995093577507 -44.658541154217936 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "4863D5F4-4496-2B42-BA63-0BA06E74A06E";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "6BE92E57-4E8E-D613-4532-899A77045938";
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
	rename -uid "38F3F465-4756-86D8-62A0-C892F2744AE8";
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
		7.1972586328128454 -4.7403995093577489 7.1972586328128534
		7.0589653263179173 -4.7403995093577489 8.6013741371216703
		6.6493999410459539 -4.7403995093577489 9.9515302700369457
		5.9843018450660441 -4.7403995093577489 11.19584128854703
		5.0892303852153837 -4.7403995093577489 12.286489018028234
		3.9985826557341762 -4.7403995093577489 13.181560477878898
		2.7542716372240927 -4.7403995093577489 13.846658573858807
		1.4041155043088165 -4.7403995093577489 14.256223959130773
		-8.402330997820455e-16 -4.7403995093577489 14.394517265625698
		-1.404115504308818 -4.7403995093577489 14.256223959130773
		-2.7542716372240945 -4.7403995093577489 13.846658573858807
		-3.9985826557341788 -4.7403995093577489 13.181560477878898
		-5.0892303852153873 -4.7403995093577489 12.286489018028236
		-5.9843018450660477 -4.7403995093577489 11.195841288547031
		-6.6493999410459583 -4.7403995093577489 9.9515302700369457
		-7.0589653263179226 -4.7403995093577489 8.6013741371216685
		-7.1972586328128507 -4.7403995093577489 7.1972586328128507
		-7.0589652838712622 -2.5851026003709312 7.1972586328128516
		-6.6493999089056484 -0.48643770366767569 7.1972586328128516
		-5.9843019810404234 1.3308777789148278 7.1972586328128516
		-5.0892303839149289 2.7769482510404435 7.1972586328128516
		-3.9985825688464511 3.8658867520152853 7.1972586328128516
		-2.7542715495340251 4.5309846798805111 7.1972586328128516
		-1.4041154734326293 4.9405500548461241 7.1972586328128516
		4.4070498754479939e-16 5.0788434037877117 7.1972586328128516
		1.4041154734326293 4.9405500548461241 7.1972586328128516
		2.7542715495340251 4.5309846798805111 7.1972586328128516
		3.9985825688464511 3.8658867520152853 7.1972586328128516
		5.0892303839149289 2.7769482510404435 7.1972586328128516
		5.9843019810404234 1.3308777789148278 7.1972586328128516
		6.6493999089056484 -0.48643770366767569 7.1972586328128516
		7.0589652838712622 -2.5851026003709312 7.1972586328128516
		7.1972586328128516 -4.7403995093577489 7.1972586328128516
		7.1972586328128516 -4.7403995093577507 -6.7654231148440793
		7.1972586328128516 -4.3085639913889775 -7.1972586328128516
		7.0589652838712622 -2.5851026003709312 -7.1972586328128516
		6.6493999089056484 -0.48643770366767569 -7.1972586328128516
		5.9843019810404234 1.3308777789148278 -7.1972586328128516
		5.0892303839149289 2.7769482510404435 -7.1972586328128516
		3.9985825688464511 3.8658867520152853 -7.1972586328128516
		2.7542715495340251 4.5309846798805111 -7.1972586328128516
		1.4041154734326293 4.9405500548461241 -7.1972586328128516
		4.4070498754479939e-16 5.0788434037877117 -7.1972586328128516
		-1.4041154734326293 4.9405500548461241 -7.1972586328128516
		-2.7542715495340251 4.5309846798805111 -7.1972586328128516
		-3.9985825688464511 3.8658867520152853 -7.1972586328128516
		-5.0892303839149289 2.7769482510404435 -7.1972586328128516
		-5.9843019810404234 1.3308777789148278 -7.1972586328128516
		-6.6493999089056484 -0.48643770366767569 -7.1972586328128516
		-7.0589652838712622 -2.5851026003709312 -7.1972586328128516
		-7.1972586328128516 -4.3085639913889775 -7.1972586328128516
		-7.1972586328128516 -4.740399509357748 -6.7654231148440793
		-7.1972586328128516 -4.7403995093577489 7.1972586328128516
		;
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "64325B01-4470-6F6A-B0C3-A3B8B1491AE1";
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
	rename -uid "65F709FC-4034-A07C-1080-378DC0355DFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.4394517265625684 0.98192432516561734 
		-0.71972587931830745 -1.4117930652635833 0.98192432516561734 -1.0005489801800707 
		-1.3298799882091901 0.98192432516561734 -1.2705802067631264 -1.1968603690132085 0.98192432516561734 
		-1.5194424104651425 -1.0178460770430764 0.98192432516561734 -1.7375719563613838 -0.79971653114683505 
		0.98192432516561734 -1.9165862483315159 -0.55085432744481855 0.98192432516561734 
		-2.0496058675274984 -0.28082310086176321 0.98192432516561734 -2.1315189445818916 
		1.6804661995640908e-16 0.98192432516561734 -2.1591776058808758 0.28082310086176365 
		0.98192432516561734 -2.1315189445818916 0.55085432744481899 0.98192432516561734 -2.0496058675274984 
		0.7997165311468355 0.98192432516561734 -1.9165862483315159 1.0178460770430773 0.98192432516561734 
		-1.7375719563613838 1.1968603690132094 0.98192432516561734 -1.5194424104651425 1.329879988209191 
		0.98192432516561734 -1.2705802067631264 1.4117930652635842 0.98192432516561734 -1.0005489801800707 
		1.4394517265625701 0.98192432516561734 -0.71972587931830745 1.4117930567742523 0.55086494336825353 
		-0.71972587931830745 1.3298799817811293 0.13113196402760252 -0.71972587931830745 
		1.1968603962080842 -0.23233113248889814 -0.71972587931830745 1.0178460767829858 -0.52154522691402105 
		-0.71972587931830745 0.79971651376928987 -0.73933292710898924 -0.71972587931830745 
		0.55085430990680484 -0.8723525126820344 -0.71972587931830745 0.28082309468652578 
		-0.9542655876751569 -0.71972587931830745 -8.8140997508959839e-17 -0.98192425746347478 
		-0.71972587931830745 -0.28082309468652578 -0.9542655876751569 -0.71972587931830745 
		-0.55085430990680484 -0.8723525126820344 -0.71972587931830745 -0.79971651376928987 
		-0.73933292710898924 -0.71972587931830745 -1.0178460767829858 -0.52154522691402105 
		-0.71972587931830745 -1.1968603962080842 -0.23233113248889814 -0.71972587931830745 
		-1.3298799817811293 0.13113196402760252 -0.71972587931830745 -1.4117930567742523 
		0.55086494336825353 -0.71972587931830745 -1.4394517265625701 0.98192432516561734 
		-0.71972587931830745 -1.4394517265625701 0.98192432516561734 2.0728104702130778 -1.4394517265625701 
		0.89555722157186279 2.1591775738068328 -1.4117930567742523 0.55086494336825353 2.1591775738068328 
		-1.3298799817811293 0.13113196402760252 2.1591775738068328 -1.1968603962080842 -0.23233113248889814 
		2.1591775738068328 -1.0178460767829858 -0.52154522691402105 2.1591775738068328 -0.79971651376928987 
		-0.73933292710898924 2.1591775738068328 -0.55085430990680484 -0.8723525126820344 
		2.1591775738068328 -0.28082309468652578 -0.9542655876751569 2.1591775738068328 -8.8140997508959839e-17 
		-0.98192425746347478 2.1591775738068328 0.28082309468652578 -0.9542655876751569 2.1591775738068328 
		0.55085430990680484 -0.8723525126820344 2.1591775738068328 0.79971651376928987 -0.73933292710898924 
		2.1591775738068328 1.0178460767829858 -0.52154522691402105 2.1591775738068328 1.1968603962080842 
		-0.23233113248889814 2.1591775738068328 1.3298799817811293 0.13113196402760252 2.1591775738068328 
		1.4117930567742523 0.55086494336825353 2.1591775738068328 1.4394517265625701 0.89555722157186279 
		2.1591775738068328 1.4394517265625701 0.9819243251656169 2.0728104702130778 1.4394517265625701 
		0.98192432516561734 -0.71972587931830745;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "5E3FA9D1-47FC-9D0A-29A4-B7B7363AA6A4";
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
		7.1972586328128454 -4.7403995093577489 7.1972586328128534
		7.0589653263179173 -4.7403995093577489 8.6013741371216703
		6.6493999410459539 -4.7403995093577489 9.9515302700369457
		5.9843018450660441 -4.7403995093577489 11.19584128854703
		5.0892303852153837 -4.7403995093577489 12.286489018028234
		3.9985826557341762 -4.7403995093577489 13.181560477878898
		2.7542716372240927 -4.7403995093577489 13.846658573858807
		1.4041155043088165 -4.7403995093577489 14.256223959130773
		-8.402330997820455e-16 -4.7403995093577489 14.394517265625698
		-1.404115504308818 -4.7403995093577489 14.256223959130773
		-2.7542716372240945 -4.7403995093577489 13.846658573858807
		-3.9985826557341788 -4.7403995093577489 13.181560477878898
		-5.0892303852153873 -4.7403995093577489 12.286489018028236
		-5.9843018450660477 -4.7403995093577489 11.195841288547031
		-6.6493999410459583 -4.7403995093577489 9.9515302700369457
		-7.0589653263179226 -4.7403995093577489 8.6013741371216685
		-7.1972586328128507 -4.7403995093577489 7.1972586328128507
		-7.0589652838712622 -2.5851026003709312 7.1972586328128516
		-6.6493999089056484 -0.48643770366767569 7.1972586328128516
		-5.9843019810404234 1.3308777789148278 7.1972586328128516
		-5.0892303839149289 2.7769482510404435 7.1972586328128516
		-3.9985825688464511 3.8658867520152853 7.1972586328128516
		-2.7542715495340251 4.5309846798805111 7.1972586328128516
		-1.4041154734326293 4.9405500548461241 7.1972586328128516
		4.4070498754479939e-16 5.0788434037877117 7.1972586328128516
		1.4041154734326293 4.9405500548461241 7.1972586328128516
		2.7542715495340251 4.5309846798805111 7.1972586328128516
		3.9985825688464511 3.8658867520152853 7.1972586328128516
		5.0892303839149289 2.7769482510404435 7.1972586328128516
		5.9843019810404234 1.3308777789148278 7.1972586328128516
		6.6493999089056484 -0.48643770366767569 7.1972586328128516
		7.0589652838712622 -2.5851026003709312 7.1972586328128516
		7.1972586328128516 -4.7403995093577489 7.1972586328128516
		7.1972586328128516 -4.7403995093577507 -6.7654231148440793
		7.1972586328128516 -4.3085639913889775 -7.1972586328128516
		7.0589652838712622 -2.5851026003709312 -7.1972586328128516
		6.6493999089056484 -0.48643770366767569 -7.1972586328128516
		5.9843019810404234 1.3308777789148278 -7.1972586328128516
		5.0892303839149289 2.7769482510404435 -7.1972586328128516
		3.9985825688464511 3.8658867520152853 -7.1972586328128516
		2.7542715495340251 4.5309846798805111 -7.1972586328128516
		1.4041154734326293 4.9405500548461241 -7.1972586328128516
		4.4070498754479939e-16 5.0788434037877117 -7.1972586328128516
		-1.4041154734326293 4.9405500548461241 -7.1972586328128516
		-2.7542715495340251 4.5309846798805111 -7.1972586328128516
		-3.9985825688464511 3.8658867520152853 -7.1972586328128516
		-5.0892303839149289 2.7769482510404435 -7.1972586328128516
		-5.9843019810404234 1.3308777789148278 -7.1972586328128516
		-6.6493999089056484 -0.48643770366767569 -7.1972586328128516
		-7.0589652838712622 -2.5851026003709312 -7.1972586328128516
		-7.1972586328128516 -4.3085639913889775 -7.1972586328128516
		-7.1972586328128516 -4.740399509357748 -6.7654231148440793
		-7.1972586328128516 -4.7403995093577489 7.1972586328128516
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd0_smart_ctl_ofs" -p "lfLegQd0_ikc_gmb";
	rename -uid "3175C9C6-4B3E-9D93-717A-D9BCB2CF1421";
	setAttr ".t" -type "double3" 1.786464267790091 -4.7403995093577507 13.23900565239888 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "890A5A1E-4CBD-DB91-686B-51A26856691D";
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
	rename -uid "BA013F1B-46DC-C011-91F4-F1A06DEF9EF4";
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
		3.311446644122682 6.7967516385749392e-17 -3.311446644122686
		1.8334338023530091e-16 9.6120583473542478e-17 -2.9942246264466057
		-3.311446644122682 6.7967516385749355e-17 -3.3114466441226837
		-2.9942246264466141 -3.9229947400559196e-32 -1.1626493021746558e-15
		-3.311446644122682 -6.796751638574938e-17 3.311446644122682
		-2.9993352867514669e-16 -9.6120583473542577e-17 2.9942246264466084
		3.311446644122682 -6.7967516385749355e-17 3.3114466441226837
		2.9942246264466141 -5.7320785451691052e-32 -5.9910681368501469e-16
		3.311446644122682 6.7967516385749392e-17 -3.311446644122686
		1.8334338023530091e-16 9.6120583473542478e-17 -2.9942246264466057
		-3.311446644122682 6.7967516385749355e-17 -3.3114466441226837
		;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "A20378DA-49F4-8431-6A99-2094A123E456";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.1316282072803006e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "6E248BBC-4FD7-4F7E-5AA2-F28DE9C07C7A";
	setAttr ".t" -type "double3" 17.032164269784552 51.850024983659559 -2.6020486514903185 ;
	setAttr ".r" -type "double3" 0.076510975842926154 8.3542899897748786 6.9599418124252433e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "2CB0B369-4D3D-F8DA-7F99-85A37D5DD4CD";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "7970DC44-49DB-13B3-E073-EC8225DED645";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -3.2390756743438942e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd0_pvcShape1" -p "lfLegQd0_pvc";
	rename -uid "C24BC8D0-4426-EA4A-E769-9C957BE8C802";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.3750953488282414
		-2.3750953488282414 0 0
		0 0 -2.3750953488282414
		2.3750953488282414 0 0
		0 0 2.3750953488282414
		0 2.3750953488282414 0
		2.3750953488282414 0 0
		0 0 -2.3750953488282414
		0 2.3750953488282414 0
		-2.3750953488282414 0 0
		0 -2.3750953488282414 0
		2.3750953488282414 0 0
		0 0 2.3750953488282414
		0 -2.3750953488282414 0
		0 0 -2.3750953488282414
		;
createNode transform -n "lfLegQd0_extraRollG_ofs_loc" -p "lfLegQd0_IK";
	rename -uid "30BA722A-469F-CDB0-FEBA-21B4700509CE";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -8.694499584157489 -163.97288476982274 92.552601435283989 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "D58287F3-40A3-ECA3-1A90-658A8B457837";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "7166CB83-4991-16CE-09AD-49B28AB9FF0D";
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
	rename -uid "E150B4D7-4AA9-A23C-0DE9-B6834F588BCC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.7981724218752344 4.7981724218752344 1.1945041242943365e-16
		-4.7059768559141748 4.7981724218752344 -0.9360769822884194
		-4.4329332726037656 4.7981724218752344 -1.8361811474200287
		-3.9895346540269494 4.7981724218752344 -2.6657217125643009
		-3.3928202559432856 4.7981724218752344 -3.3928202559432856
		-2.6657217125643009 4.7981724218752344 -3.9895346540269494
		-1.8361811474200287 4.7981724218752344 -4.4329332726037656
		-0.9360769822884194 4.7981724218752344 -4.7059768559141748
		2.9380332502986628e-16 4.7981724218752344 -4.7981724218752344
		0.9360769822884194 4.7981724218752344 -4.7059768559141748
		1.8361811474200287 4.7981724218752344 -4.4329332726037656
		2.6657217125643009 4.7981724218752344 -3.9895346540269494
		3.3928202559432856 4.7981724218752344 -3.3928202559432856
		3.9895346540269494 4.7981724218752344 -2.6657217125643009
		4.4329332726037656 4.7981724218752344 -1.8361811474200287
		4.7059768559141748 4.7981724218752344 -0.9360769822884194
		4.7981724218752344 4.7981724218752344 -5.189784994446705e-16
		4.6155530760341907 4.7981724218752344 -0.91809051651134177
		4.0954963389092605 4.7981724218752344 -1.6964101279716428
		3.3171766130516138 4.7981724218752344 -2.2164666363018828
		2.3990862109376172 4.7981724218752344 -2.3990862109376172
		1.4809956944262757 4.7981724218752344 -2.2164666363018828
		0.70267608296597461 4.7981724218752344 -1.6964101279716428
		0.18261957463573442 4.7981724218752344 -0.91809051651134177
		0 4.7981724218752344 -5.189784994446705e-16
		-0.18261957463573442 4.7981724218752344 0.91809051651134177
		-0.70267608296597461 4.7981724218752344 1.6964101279716428
		-1.4809956944262757 4.7981724218752344 2.2164666363018828
		-2.3990862109376172 4.7981724218752344 2.3990862109376172
		-3.3171766130516138 4.7981724218752344 2.2164666363018828
		-4.0954963389092605 4.7981724218752344 1.6964101279716428
		-4.6155530760341907 4.7981724218752344 0.91809051651134177
		-4.7981724218752344 4.7981724218752344 1.1945041242943365e-16
		-4.7059768559141748 4.7981724218752344 0.9360769822884194
		-4.4329332726037656 4.7981724218752344 1.8361811474200287
		-3.9895346540269494 4.7981724218752344 2.6657217125643009
		-3.3928202559432856 4.7981724218752344 3.3928202559432856
		-2.6657217125643009 4.7981724218752344 3.9895346540269494
		-1.8361811474200287 4.7981724218752344 4.4329332726037656
		-0.9360769822884194 4.7981724218752344 4.7059768559141748
		-5.601553999742331e-16 4.7981724218752344 4.7981724218752344
		0.9360769822884194 4.7981724218752344 4.7059768559141748
		1.8361811474200287 4.7981724218752344 4.4329332726037656
		2.6657217125643009 4.7981724218752344 3.9895346540269494
		3.3928202559432856 4.7981724218752344 3.3928202559432856
		3.9895346540269494 4.7981724218752344 2.6657217125643009
		4.4329332726037656 4.7981724218752344 1.8361811474200287
		4.7059768559141748 4.7981724218752344 0.9360769822884194
		4.7981724218752344 4.7981724218752344 -5.189784994446705e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe01_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "DA5C5D19-4F65-848A-4831-FFA031C3D4FE";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe01_4_ctl" -p "lfLegQd0_toe01_4_ctl_ofs";
	rename -uid "8A58D37E-471C-E420-F6EB-6F8A6B73397A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_4_ctlShape1" -p "lfLegQd0_toe01_4_ctl";
	rename -uid "E3B45E84-4BE0-B0AB-6014-239C903BC5D9";
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
		6.6283295186153498e-17 -0.34501520798076551 -0.34501520798076418
		6.9216525686433754e-17 -1.7954591415847197e-15 -0.31196426917163639
		6.6283295186153498e-17 0.34501520798076196 -0.34501520798076396
		5.9201850330810527e-17 0.3119642691716355 -1.2113487967877332e-16
		5.2120405475467574e-17 0.34501520798076196 0.34501520798076374
		4.9187174975187312e-17 -1.7451071651951944e-15 0.31196426917163667
		5.2120405475467574e-17 -0.34501520798076551 0.34501520798076396
		5.9201850330810527e-17 -0.31196426917163905 -6.2420139636883786e-17
		6.6283295186153498e-17 -0.34501520798076551 -0.34501520798076418
		6.9216525686433754e-17 -1.7954591415847197e-15 -0.31196426917163639
		6.6283295186153498e-17 0.34501520798076196 -0.34501520798076396
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe02_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "B5A3ED81-4993-BE6B-AAFC-2BB717F9E528";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe02_4_ctl" -p "lfLegQd0_toe02_4_ctl_ofs";
	rename -uid "1C43DFCD-49A5-DDFF-E300-E49A5937F3EF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_4_ctlShape1" -p "lfLegQd0_toe02_4_ctl";
	rename -uid "67E2343B-4D2F-EF86-F13D-698E0912483F";
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
		7.0814448553429669e-18 -0.34501520798076374 -0.34501520798076396
		1.0014675355623215e-17 -1.9102302184469406e-17 -0.31196426917163617
		7.0814448553429623e-18 0.34501520798076374 -0.34501520798076374
		-4.0873158821691448e-33 0.31196426917163728 9.3509493954906677e-17
		-7.0814448553429654e-18 0.34501520798076374 0.34501520798076396
		-1.0014675355623226e-17 3.1249674205056083e-17 0.31196426917163689
		-7.0814448553429623e-18 -0.34501520798076374 0.34501520798076418
		-5.9721761633503305e-33 -0.31196426917163728 1.5222423399679621e-16
		7.0814448553429669e-18 -0.34501520798076374 -0.34501520798076396
		1.0014675355623215e-17 -1.9102302184469406e-17 -0.31196426917163617
		7.0814448553429623e-18 0.34501520798076374 -0.34501520798076374
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe03_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "3A48C8F6-42DA-BBFF-EBA4-B7A81CFBE779";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe03_4_ctl" -p "lfLegQd0_toe03_4_ctl_ofs";
	rename -uid "7FEC6C69-42E0-9B73-2690-A0AEC540BAE2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_4_ctlShape1" -p "lfLegQd0_toe03_4_ctl";
	rename -uid "FA451CFF-4C26-D42E-6A11-9EA52EDFBB10";
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
		7.0814448553429669e-18 -0.34501520798076374 -0.34501520798076418
		1.0014675355623215e-17 -1.9102302184469406e-17 -0.31196426917163639
		7.0814448553429623e-18 0.34501520798076374 -0.34501520798076396
		-4.0873158821691448e-33 0.31196426917163728 -1.2113487967877332e-16
		-7.0814448553429654e-18 0.34501520798076374 0.34501520798076374
		-1.0014675355623226e-17 3.1249674205056083e-17 0.31196426917163667
		-7.0814448553429623e-18 -0.34501520798076374 0.34501520798076396
		-5.9721761633503305e-33 -0.31196426917163728 -6.2420139636883786e-17
		7.0814448553429669e-18 -0.34501520798076374 -0.34501520798076418
		1.0014675355623215e-17 -1.9102302184469406e-17 -0.31196426917163639
		7.0814448553429623e-18 0.34501520798076374 -0.34501520798076396
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe04_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "3A220FA5-41E8-80D7-7489-418EF1D24BA9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe04_4_ctl" -p "lfLegQd0_toe04_4_ctl_ofs";
	rename -uid "F47F89BC-4E7D-91A6-7B8B-A5AE3B280EC4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_4_ctlShape1" -p "lfLegQd0_toe04_4_ctl";
	rename -uid "3955EF38-4B26-6E2D-B21E-1FA6365E8A0A";
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
		7.1125088024563443e-15 -0.34501520798076352 -0.34501520798076396
		7.1154420329566246e-15 2.1770509913877275e-16 -0.31196426917163617
		7.1125088024563443e-15 0.34501520798076402 -0.34501520798076374
		7.1054273576010019e-15 0.3119642691716375 9.3509493954906677e-17
		7.0983459127456594e-15 0.34501520798076402 0.34501520798076396
		7.0954126822453791e-15 2.6805707552829822e-16 0.31196426917163689
		7.0983459127456594e-15 -0.34501520798076352 0.34501520798076418
		7.1054273576010019e-15 -0.31196426917163705 1.5222423399679621e-16
		7.1125088024563443e-15 -0.34501520798076352 -0.34501520798076396
		7.1154420329566246e-15 2.1770509913877275e-16 -0.31196426917163617
		7.1125088024563443e-15 0.34501520798076402 -0.34501520798076374
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "D0264A06-497C-7E30-0171-C38EBFF14827";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "596C1CFB-411B-E108-4326-2BBF86E3D8CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.9993214663422334 3.9993214663422334 3.9993214663422334 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "4B634D6C-43E1-2C73-AD24-07A010755BF7";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "46169138-456A-3E38-4D84-C18614BCEA0A";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "07C61647-4592-5E71-598B-A2B85DF76BEF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.35948997968271 -16.744161296497751 -78.887112396642181 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "FC148424-44AC-98E6-7A93-D68C859C89DE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068366 10.610383260348033 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "CF2D15C2-4EFA-8F4E-ED80-2E89E77CA287";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871609 0 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "12352B4F-46CF-CE39-8739-5687F3A9FB52";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292598 6.1429192907087344 4.6257962827270109 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "DFBB2A2A-4BC8-A035-9342-2292963A8F57";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431939 109.81053629005909 37.746206672014772 ;
	setAttr ".radi" 2.0406822939529223;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "039BBD4A-4045-8F3B-BC21-A1949DB915A2";
	setAttr ".t" -type "double3" 6.9774500664449022 4.8849813083506888e-15 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 4.1631179532237246 -87.519412399546255 -4.8064433304326748 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "DEF5E14A-4ED1-CA7B-2D18-B5BE8E81D46A";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -2.6645352591003757e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "DE12D0A8-47CB-713E-B6BA-7A8DBC966ABD";
	setAttr ".t" -type "double3" 6.9774500664449306 4.8849813083506888e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.163117953223276 -87.519412399546212 -4.8064433304324883 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999933 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "F528C426-4538-0640-B9C4-7C8482177FF0";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "67A69D00-48B1-9E96-7DC4-04BEFD1F3D1E";
	setAttr ".t" -type "double3" 6.9774500664449448 4.8849813083506888e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "C7AE281B-4A5C-94FA-3367-DE911223748D";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.3322676295501878e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -4.0586859505488344e-13 -4.5160032788873496e-14 -1.8909391504638405e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -7.9513867036587903e-15 2.8624992133171648e-14 1.6697912077683461e-14 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "CCA0BE63-4D40-9E37-5A41-3798142C57FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 -5.773159728050814e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982564 67.847764185930785 36.97245602785415 ;
	setAttr ".radi" 2.0406822939529223;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "94368E70-40D5-FA04-30F2-77B94BA26750";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "6145E68A-4CCB-28FE-D51F-BE9B3E2407EB";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "CEEFA083-47AB-A299-472D-6B8DDD214374";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		-1.2513492432250587e-31 9.5509195617641751 -3.7085961639389295e-15
		-2.1680146375108809e-16 10.562788192889627 10.562788192889627
		-3.0660357037912842e-16 9.5672214467490283e-16 9.5509195617641574
		-2.1680146375108801e-16 -10.562788192889627 10.562788192889633
		-1.8284072819077273e-31 -9.5509195617641751 -1.9110192788712049e-15
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		;
createNode transform -n "lfLegQd1_lwr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "915891BD-4F1C-36B7-5725-F58B30D84C7F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "9214EBA7-43EE-391E-7BF1-C4A639A4F60B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "95D1CA9A-43B9-2FD8-7D9E-90A6BBC9B36D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		-1.2513492432250587e-31 9.5509195617641751 -3.7085961639389295e-15
		-2.1680146375108809e-16 10.562788192889627 10.562788192889627
		-3.0660357037912842e-16 9.5672214467490283e-16 9.5509195617641574
		-2.1680146375108801e-16 -10.562788192889627 10.562788192889633
		-1.8284072819077273e-31 -9.5509195617641751 -1.9110192788712049e-15
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		;
createNode transform -n "lfLegQd1_palm_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "DE6BFE1D-47A8-BD9D-14CA-FB80CC0DC588";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "31FA29A3-495E-6DD3-109D-18AFF5FD2B4A";
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
	rename -uid "1BE7A2AA-4EFF-B6A2-85D4-07B0F91FB4DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		-1.2513492432250587e-31 9.5509195617641751 -3.7085961639389295e-15
		-2.1680146375108809e-16 10.562788192889627 10.562788192889627
		-3.0660357037912842e-16 9.5672214467490283e-16 9.5509195617641574
		-2.1680146375108801e-16 -10.562788192889627 10.562788192889633
		-1.8284072819077273e-31 -9.5509195617641751 -1.9110192788712049e-15
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		;
createNode transform -n "lfLegQd1_digit_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "146B70D2-46E8-2262-FE36-82BE82FF2C1D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "114DC182-4527-1088-5FF8-32BE8A0026BE";
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
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "7AF2562E-4AE4-9A7B-1A89-00B1E58157AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		-1.2513492432250587e-31 9.5509195617641751 -3.7085961639389295e-15
		-2.1680146375108809e-16 10.562788192889627 10.562788192889627
		-3.0660357037912842e-16 9.5672214467490283e-16 9.5509195617641574
		-2.1680146375108801e-16 -10.562788192889627 10.562788192889633
		-1.8284072819077273e-31 -9.5509195617641751 -1.9110192788712049e-15
		2.1680146375108814e-16 -10.562788192889627 -10.562788192889641
		3.0660357037912812e-16 -5.8482515351141579e-16 -9.5509195617641485
		2.1680146375108801e-16 10.562788192889627 -10.562788192889633
		;
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "740A85BB-4D98-022F-FA98-A0A25AAFB782";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -1.5543122344752192e-15 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" -74.803134575536575 -3.3083777434184327 -78.00562048915863 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "4549ED64-4F2C-5E53-C0B5-FE81E6A98BA9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "E5A6764C-4F8D-2B45-BFB6-818816698AAA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000004 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "2B9EA8A5-4E15-9203-2F57-95BA48C9EDCC";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999933 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "964BF050-4028-8E58-F241-9D84131CAA0B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "D7AD607D-420F-0B8A-B270-67824AF1FF3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2813940964448136 -20.406822939529224 -5.2813940964448207
		2.9241257675570789e-16 -20.406822939529224 -4.7754597808820742
		-5.2813940964448136 -20.406822939529224 -5.2813940964448163
		-4.7754597808820876 -20.406822939529224 -1.8542980819694647e-15
		-5.2813940964448136 -20.406822939529224 5.2813940964448136
		-4.7836107233745142e-16 -20.406822939529224 4.7754597808820787
		5.2813940964448136 -20.406822939529224 5.2813940964448163
		4.7754597808820876 -20.406822939529224 -9.5550963943560245e-16
		5.2813940964448136 -20.406822939529224 -5.2813940964448207
		2.9241257675570789e-16 -20.406822939529224 -4.7754597808820742
		-5.2813940964448136 -20.406822939529224 -5.2813940964448163
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "9A15AA54-4023-4C8D-061C-85930E4FF171";
	setAttr ".t" -type "double3" 28.632099274069212 1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "5FFA6CB0-4CE8-948A-2FFD-DF88088434E0";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "D161B90C-43EE-A12B-3A28-5FBD5B86921A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		-33.161087276734989 0 2.5508528674411535
		-33.161087276734989 0 -2.5508528674411526
		-35.71194014417614 0 -3.8262793011617293
		-38.262793011617291 0 -2.5508528674411535
		-38.262793011617291 0 2.5508528674411526
		-33.161087276734989 0 2.5508528674411535
		-38.262793011617291 0 2.5508528674411526
		-38.262793011617291 0 -2.5508528674411535
		-35.71194014417614 0 -3.8262793011617293
		-33.161087276734989 0 -2.5508528674411526
		;
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "5312CE39-4059-B233-4F1A-358D4FA20019";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -133.89853950919786 -14.882759485808144 9.2347906832216893 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "5EC2B716-4AA6-493D-BFE5-BA9705A8EB1A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 96.110222499894661 -1.4210854715202004e-14 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 1.7890620083232284e-15 6.9574633657014419e-16 ;
	setAttr ".radi" 3.0610234409293833;
createNode ikEffector -n "effector20" -p "lfLegQd1_autoAim";
	rename -uid "5FCC28AC-4082-0CC0-49F7-3F993688DC96";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "16D5AE72-46A3-6535-DA25-FBBBEF11DA48";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.0658141036401503e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -46.10146049080226 14.882759485808144 -170.76520931677831 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "2292BD73-4CCB-42F8-BD01-25BD6BBFB84C";
	setAttr ".t" -type "double3" 11.526513511227174 4.7404004120754113 59.044988435225513 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "8F13FEF3-4103-4F37-1E28-6BB97C89F077";
	setAttr ".t" -type "double3" 1.4476073730597783 1.8698655645546367 6.5645141505462234 ;
	setAttr ".r" -type "double3" 166.24154916441358 -17.532672327093529 -85.781365618985745 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "0C41B0D8-4873-88BE-22FC-F3B5F3CE69FF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "C1E64750-4D50-21B1-8090-67B6D047D29A";
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
	rename -uid "3B441172-4B24-06EC-1D21-C8A6B4DF9914";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0840073187554407e-16 -5.2813940964448136 -5.2813940964448207
		1.5330178518956406e-16 -2.9241257675570789e-16 -4.7754597808820742
		1.0840073187554401e-16 5.2813940964448136 -5.2813940964448163
		-6.2567462161252936e-32 4.7754597808820876 -1.8542980819694647e-15
		-1.0840073187554404e-16 5.2813940964448136 5.2813940964448136
		-1.5330178518956421e-16 4.7836107233745142e-16 4.7754597808820787
		-1.0840073187554401e-16 -5.2813940964448136 5.2813940964448163
		-9.1420364095386366e-32 -4.7754597808820876 -9.5550963943560245e-16
		1.0840073187554407e-16 -5.2813940964448136 -5.2813940964448207
		1.5330178518956406e-16 -2.9241257675570789e-16 -4.7754597808820742
		1.0840073187554401e-16 5.2813940964448136 -5.2813940964448163
		;
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "D0C95E47-43D5-F4A6-9C9A-8CB5388ECBBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365516 9.3258734068513149e-15 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483257 0.22678088064234006 -0.92618524711821826 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "614FE046-4E56-4401-8769-5DBF18D46AE5";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 6.6613381477509392e-15 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "79C3B9E8-4CD8-1C4B-6344-1489857179E0";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_toe01_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "0B1232EB-4B3F-2081-3F72-2198ACBCA4AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.67815955126463123 4.5017535728021958 1.3164646049625901 ;
	setAttr ".r" -type "double3" 29.724325536613463 73.915909626409331 31.334682455869142 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe02_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "12557217-45FA-674F-686B-A6B2DEA024D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45532223815155604 0.74375689646166299 -0.36853481296998325 ;
	setAttr ".r" -type "double3" -17.918402842230915 82.75575858259451 -18.507979197419349 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe03_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "EEFDEF60-4A78-8414-5986-3AAF97F0A45B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.1223045525015678 -3.0584011316220825 0.49654536015401618 ;
	setAttr ".r" -type "double3" -65.261647378854903 81.569987026312674 -67.528668066506327 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe04_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "029082E4-4A9F-115C-D305-35BE2EB45453";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.33886448789202994 -6.316218132045627 3.7852547441283662 ;
	setAttr ".r" -type "double3" -62.23276402251124 59.056451340940797 -68.021071212105056 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "34254601-4CE6-10A9-DA26-0F8857AB095E";
	setAttr ".t" -type "double3" 0.67815955126463123 4.5017535728021958 1.3164646049625901 ;
	setAttr ".r" -type "double3" 8.3411969766498313 -5.1162832953030035 1.9731774330296783 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs1" -p "lfLegQd1_toe01_3_ikc_ofs";
	rename -uid "CF67B5DA-49A9-D402-A581-829E02BB8E54";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999956 ;
createNode transform -n "lfLegQd1_toe01_3_ikc" -p "lfLegQd1_toe01_3_ikc_ofs1";
	rename -uid "A90C7503-439F-C155-F369-A8BAAD88585D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_3_ikcShape1" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "04165867-468B-3F3D-43F6-E9A92ADEB660";
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
		-1.7015599033890121e-15 1.3322676295501878e-15 5.6097702008428719e-17
		-1.7015599033890121e-15 1.3322676295501878e-15 -1.1323451577998416
		0.13076070286865288 1.3322676295501878e-15 -1.1323451577998416
		0.13076070286865288 1.3322676295501878e-15 -1.3938665635371514
		-0.13076070286865626 1.3322676295501878e-15 -1.3938665635371514
		-0.13076070286865626 1.3322676295501878e-15 -1.1323451577998416
		-1.7015599033890121e-15 1.3322676295501878e-15 -1.1323451577998416
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe01_3_1_ikj_ikh" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "83D3E777-411A-0F62-E149-D3B192400651";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7333317786118503 -0.79112400107924241 -3.2149593759111497 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.22505400097623776 0.076165995769225919 -0.97136472950847352 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "318F6329-40D5-CC85-8DE4-4AA934DAA0EA";
	setAttr ".t" -type "double3" 0.45532223815155604 0.74375689646166476 -0.36853481296998325 ;
	setAttr ".r" -type "double3" 9.7001640894294123 -0.050193913746908216 3.1786163596571266 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs1" -p "lfLegQd1_toe02_3_ikc_ofs";
	rename -uid "2DF33A89-43BB-7D1A-08A1-1DB488F3D495";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999944 ;
createNode transform -n "lfLegQd1_toe02_3_ikc" -p "lfLegQd1_toe02_3_ikc_ofs1";
	rename -uid "516416D6-4B48-7B18-75A4-B4B98043E640";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_3_ikcShape1" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "A79CE047-426D-4C1C-95D9-CCB0EF714C8A";
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
		0 -3.5527136788005009e-15 -1.4959387202247658e-16
		0 -3.5527136788005009e-15 -1.1323451577998418
		0.13076070286865457 -3.5527136788005009e-15 -1.1323451577998418
		0.13076070286865457 -3.5527136788005009e-15 -1.3938665635371514
		-0.13076070286865457 -3.5527136788005009e-15 -1.3938665635371514
		-0.13076070286865457 -3.5527136788005009e-15 -1.1323451577998418
		0 -3.5527136788005009e-15 -1.1323451577998418
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe02_3_1_ikj_ikh" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "CCD7A4A7-4650-B914-AC60-C9A47758984D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3970855628994823 -0.38899597430827448 -3.2019136936042116 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.31254937306753133 0.050628364122695141 -0.94855134712958633 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "32B9C555-4F23-2564-E161-ADB7E0352C8E";
	setAttr ".t" -type "double3" 0.1223045525015678 -3.0584011316220825 0.49654536015401618 ;
	setAttr ".r" -type "double3" 9.9925668796984652 1.4068899419581349 3.5321615839465443 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs1" -p "lfLegQd1_toe03_3_ikc_ofs";
	rename -uid "98287FA4-4DD8-D5AE-19DC-D7AB26BC87D4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode transform -n "lfLegQd1_toe03_3_ikc" -p "lfLegQd1_toe03_3_ikc_ofs1";
	rename -uid "6E8F892F-472A-126E-16B3-43A79F3007A7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_3_ikcShape1" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "4B96E52D-4C7C-3D1C-436D-43A4F5B8CAB5";
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
		3.4031198067780242e-15 -1.4771690953552973e-15 7.0306304215897633e-15
		3.4031198067780242e-15 -1.4771690953552973e-15 -1.1323451577998345
		0.13076070286865799 -1.4771690953552973e-15 -1.1323451577998345
		0.13076070286865799 -1.4771690953552973e-15 -1.3938665635371443
		-0.13076070286865116 -1.4771690953552973e-15 -1.3938665635371443
		-0.13076070286865116 -1.4771690953552973e-15 -1.1323451577998345
		3.4031198067780242e-15 -1.4771690953552973e-15 -1.1323451577998345
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe03_3_1_ikj_ikh" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "B72363EC-4962-22FA-F3CB-84A647A93785";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4824458763511537 -0.40692294419032393 -3.1712842431151813 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.33729424848294748 0.045315240003537864 -0.94030799154518785 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "A76ACB1E-4447-D168-71CD-9790E2F89146";
	setAttr ".t" -type "double3" 0.33886448789203172 -6.316218132045627 3.7852547441283662 ;
	setAttr ".r" -type "double3" -2.7621105709198326 2.0274650077385199 -0.99636430511547358 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs1" -p "lfLegQd1_toe04_3_ikc_ofs";
	rename -uid "9B8702A2-4E78-2FE1-E2AD-D9A7DC2C9A26";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe04_3_ikc" -p "lfLegQd1_toe04_3_ikc_ofs1";
	rename -uid "D697AC25-4EF9-1FA6-7C51-9DA22A909888";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_3_ikcShape1" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "92E87059-4973-CAB2-2A25-C4BEECE37743";
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
		0 2.1094237467877974e-15 8.8821361513345469e-17
		0 2.1094237467877974e-15 -1.1323451577998414
		0.13076070286865457 2.1094237467877974e-15 -1.1323451577998414
		0.13076070286865457 2.1094237467877974e-15 -1.3938665635371514
		-0.13076070286865457 2.1094237467877974e-15 -1.3938665635371514
		-0.13076070286865457 2.1094237467877974e-15 -1.1323451577998414
		0 2.1094237467877974e-15 -1.1323451577998414
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe04_3_1_ikj_ikh" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "0DD87BD9-40F7-AF0F-E3A6-6998C2C08D72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8207197219266185 -0.14318177052873493 -3.1847226037282965 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.32984157110116102 0.27581293980274757 -0.90284647654564409 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "BB84A95F-441D-D585-9FD2-10AC8D2835E6";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "5961754B-4D1D-7759-BD75-7E8B6DF94A35";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.35948997968271 -16.744161296497751 -78.887112396642181 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "7DBAD751-4677-9C04-7251-4EB619FE3324";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.632099274069176 7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -5.9374137844645619e-15 4.2688682312579702e-06 1.9943120442950742e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068366 10.610383260348033 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "A59F30C4-4A90-74FC-7754-2BBACE8070AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.654603735688628 -2.1316282072803006e-14 -5.3290705182007514e-14 ;
	setAttr ".r" -type "double3" -1.6368408568712011e-21 -7.7068895908990666e-06 8.9920138311613619e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871609 0 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "F0723B18-48DB-AF81-53A3-87BC983A929C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.455142515112193 -7.1054273576010019e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 3.3431595078639922e-07 -5.5574204785294078e-06 -2.2112548202671107e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292598 6.1429192907087344 4.6257962827270109 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "B8920239-4138-3777-4B4C-6C9046FF127D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.782206896175094 -0.55224344285567994 -3.4724006270753023 ;
	setAttr ".r" -type "double3" 1.7735734703576245e-07 5.6440735785241985e-24 4.5152589196002992e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431939 109.81053629005909 37.746206672014772 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "C09FD97D-45F8-5F5B-AB34-64A10BC0317E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9774500664449377 2.2204460492503131e-16 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 3.3437827832712207e-07 -2.777127186095735e-22 1.3672010557807945e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179532238463 -87.519412399546198 -4.8064433304321641 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "774FE7B3-4B5A-8D83-BB1D-33A678736B40";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 -5.773159728050814e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982564 67.847764185930785 36.97245602785415 ;
	setAttr ".radi" 3.0610234409293833;
createNode ikEffector -n "effector18" -p "lfLegQd1_ball_ik";
	rename -uid "2F23F011-42B6-BE3C-8B1A-588765724B06";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "lfLegQd1_digit_ik";
	rename -uid "36EFAFA8-4B62-B27C-78A3-FBA7FA7932ED";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "lfLegQd1_palm_ik";
	rename -uid "38EA4C7A-4DEC-1FCB-DF26-FFA0788102F2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector15" -p "lfLegQd1_lwr_ik";
	rename -uid "8ED0996C-4E5D-7F17-DD3E-AFA39307518D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "E4BEE3F5-4F96-CC17-A770-7B8C0E2E7CBF";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 28.632099274069247 7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 9.1903850617814787e-30 -2.6805289763529287e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 68.486370334776197 -24.942365871053283 14.461723033380917 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "D2A4DE79-49FA-DD48-253E-4F9805079417";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 59.01611328125 2.1316282072803006e-14 -6.2172489379008766e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905456e-15 -2.7829853462805787e-15 -1.8387581752210956e-14 ;
createNode ikEffector -n "effector19" -p "lfLegQd1_softJ";
	rename -uid "9B485F7D-427E-BAD5-B17C-9EB98903863A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "7580BD12-49E4-315A-E39E-0EB6199F4596";
	setAttr ".t" -type "double3" 30.454615597759691 38.062763101794161 23.520838967979486 ;
	setAttr ".r" -type "double3" -1.3581542853093567 58.477578254814098 81.226126097410159 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "DC2D0476-4866-5EF4-DCA3-A680F9783CA6";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "41F2847A-494F-BB9D-ABBB-8E82FC29A87A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "95387BB6-4756-90E8-1A7A-9B9AB026261E";
	setAttr ".t" -type "double3" -0.97427013650032634 15.522606405532876 -0.97922947245189107 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "4FCA9FA4-4210-510C-8ACA-D0B66556CE92";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "E278F6A9-408D-4FDB-8E7D-E4B9FFEA87BD";
	setAttr ".t" -type "double3" 3.3129778471460689 1.7873145284848359e-15 -14.594530682064693 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "93CCB604-48DE-3317-06C3-79A0BE40F5C7";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "7434C3FA-4658-52E2-1A78-A88C3BB3D07A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "0E865BE8-478E-DD2E-A863-4EBF9E24A6FE";
	setAttr ".t" -type "double3" 6.9126955251844109 -9.1148236974030456e-16 7.442818373223318 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "CF6A38E3-488D-8398-B01D-3B840A739EDE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "693B6D3D-4F01-14D3-3F96-678B7FDD0BDD";
	setAttr ".t" -type "double3" -12.466795531247644 -7.8886090522101181e-31 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "CECF3C13-4D36-006A-6C5B-A4A9B750F5FA";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "51084DD4-4D6B-FA2F-6234-AF951AC1C747";
	setAttr ".t" -type "double3" 5.2152430432041328 -6.6102659766300125 -1.9059726826944328 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "D095EBD6-428C-9D67-9B83-F88D6A90AD15";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "E1C8B72E-4F7A-6097-5B01-D0B3A034C927";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		6.3195657776623212e-17 -9.1713480349578838 -5.5787378190198135e-16
		6.104231607656552e-17 -9.2065148984486829 -0.26711766055019093
		5.4729044561143468e-17 -9.3096184854051547 -0.51603167685864948
		4.4686074937716599e-17 -9.4736325589988741 -0.72977899185516548
		3.1597828888311606e-17 -9.687379752361247 -0.89379314653831365
		1.6356238888165143e-17 -9.9362938092144208 -0.99689665240535652
		-1.9352131911041487e-32 -10.20341146976461 -1.032063353717299
		-1.6356238888165143e-17 -10.470529130314802 -0.99689665240535652
		-3.1597828888311606e-17 -10.719443187167975 -0.89379314653831365
		-4.4686074937716599e-17 -10.933190380530348 -0.72977899185516548
		-5.4729044561143468e-17 -11.097205102839498 -0.51603167685864948
		-6.104231607656552e-17 -11.20030804108054 -0.26711766055019093
		-6.3195657776623212e-17 -11.235474904571339 -3.0496635488162927e-16
		-6.104231607656552e-17 -11.20030804108054 0.26711766055019093
		-5.4729044561143468e-17 -11.097205102839498 0.51603167685864948
		-4.4686074937716599e-17 -10.933190380530348 0.72977899185516548
		-3.1597828888311606e-17 -10.719443187167975 0.89379314653831365
		-1.6356238888165143e-17 -10.470529130314802 0.99689665240535652
		4.7280942927567618e-32 -10.20341146976461 1.032063353717299
		1.6356238888165143e-17 -9.9362938092144208 0.99689665240535652
		3.1597828888311606e-17 -9.687379752361247 0.89379314653831365
		4.4686074937716599e-17 -9.4736325589988741 0.72977899185516548
		5.4729044561143468e-17 -9.3096184854051547 0.51603167685864948
		6.104231607656552e-17 -9.2065148984486829 0.26711766055019093
		6.3195657776623212e-17 -9.1713480349578838 -5.5787378190198135e-16
		0 0 0
		;
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "47B484A0-4053-DA56-F65C-EA9272EC6592";
	setAttr ".t" -type "double3" -1.4476073049309672 1.8698664672722272 6.5645138369123686 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "4EE69CBC-4EB0-5BC2-00AC-E0AED384587D";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -4.1839818710111034 0 88.073551663925841 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "66BFD06D-4C2E-F9C2-C428-B2A2700E2DF5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "9A0D7748-4A42-5484-A153-D69DFD91A989";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "88EB11B1-4151-E28C-704A-DA97E880CFB2";
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
		6.0917426888761375 -10.203411469764612 0
		5.6560325352867631 -7.8606061856200125 0
		4.3289401205188112 -5.8744713492458009 0
		2.3428052841445992 -4.547378934477849 0
		0 -4.1118116286476232 0
		-2.3428052841445992 -4.547378934477849 0
		-4.3289401205188112 -5.8744713492458009 0
		-5.6560325352867631 -7.8606061856200125 0
		-6.0917426888761375 -10.203411758386878 0
		-5.6560325352867631 -12.546216753909212 0
		-4.3289401205188112 -14.532351590283422 0
		-2.3428052841445992 -15.859444005051376 0
		2.432681012836117e-07 -16.295011310881602 -0.041421768788438722
		2.3428052841445992 -15.859444005051376 0
		4.3289401205188112 -14.532351590283422 0
		5.6560325352867631 -12.546216753909212 0
		6.0917426888761375 -10.203411469764612 0
		5.6280343744937111 -10.187559613118287 -2.3311570697271979
		4.307512956646578 -10.174120822446787 -4.3074190852619942
		2.33121012746631 -10.165141330679438 -5.6279119335572982
		2.432681012836117e-07 -10.161988068430354 -6.0916080038460843
		-2.33121012746631 -10.165141330679438 -5.6279119335572982
		-4.307512956646578 -10.174120822446787 -4.3074190852619942
		-5.6280343744937111 -10.187559613118287 -2.3311570697271979
		-6.0917426888761375 -10.203411758386878 0
		-5.6280343744937111 -10.219263897801973 2.331148906998104
		-4.307512956646578 -10.232702688473474 4.3074150038974466
		-2.33121012746631 -10.241682180240822 5.6279037708282047
		2.432681012836117e-07 -10.244835279235325 6.0915998411169889
		2.33121012746631 -10.241682180240822 5.6279037708282047
		4.307512956646578 -10.232702688473474 4.3074150038974466
		5.6280343744937111 -10.219263897801973 2.331148906998104
		6.0917426888761375 -10.203411469764612 0
		5.6280343744937111 -10.187559613118287 -2.3311570697271979
		4.307512956646578 -10.174120822446787 -4.3074190852619942
		2.33121012746631 -10.165141330679438 -5.6279119335572982
		2.432681012836117e-07 -10.161988068430354 -6.0916080038460843
		2.432681012836117e-07 -7.8339875260438774 -5.6120558322918441
		2.432681012836117e-07 -5.8667085938772319 -4.2781271319075138
		2.432681012836117e-07 -4.5596556790355018 -2.2928861143691144
		0 -4.1118116286476232 0
		2.432681012836117e-07 -4.5913597188373139 2.3694239437207343
		2.432681012836117e-07 -5.925288419221646 4.3366987945228344
		2.432681012836117e-07 -7.9105253553954977 5.6437557907291103
		2.432681012836117e-07 -10.244835279235325 6.0915998411169889
		2.432681012836117e-07 -12.572835413485347 5.6120476695627506
		2.432681012836117e-07 -14.540114345651993 4.2781189691784194
		2.432681012836117e-07 -15.847167260493723 2.29287795164002
		2.432681012836117e-07 -16.295011310881602 -0.041421768788438722
		2.432681012836117e-07 -15.81546322069191 -2.3694321064498287
		2.432681012836117e-07 -14.481534520307578 -4.3367069572519279
		2.432681012836117e-07 -12.496297584133726 -5.6437639534582047
		2.432681012836117e-07 -10.161988068430354 -6.0916080038460843
		;
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "99922BBA-45D7-8F20-0E9E-578995ADF15B";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "83D0113A-4C9E-73A2-C064-E38D5E069B74";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "631D916A-4D3F-BE82-B8EE-A390AA3C89A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.55224344285568172 -10.782206896175094 3.472400627075281 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "DD63BE94-43D7-0689-5EBC-B68F720ABFB5";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "B37925FF-4171-3408-E0D5-48A99B664086";
	setAttr ".t" -type "double3" -0.55224344285567817 -10.782206896175083 3.472400627075281 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "BFA8998C-43C6-C80F-7A76-88A2391E5CCB";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "7E867FFA-4AF8-E442-E162-CA9DFCDAB258";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "8F03A299-438C-EF0C-3353-5BA2D1984BC4";
	setAttr ".t" -type "double3" 5.2152430432041328 -6.6102659766300125 -1.9059726826944328 ;
	setAttr ".r" -type "double3" 166.24154916441353 17.532672327093511 85.781365618985703 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999956 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "391D74C4-473E-AB45-B5C4-7FB124FBE3B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.5987211554602254e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -165.51750035534275 -87.444713791537268 -14.676500591162092 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 -0.22678088064234117 0.92618524711821892 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "9F349401-4515-03B9-7268-58A19269A2D6";
	setAttr ".t" -type "double3" -6.0396132539608516e-14 6.2172489379008766e-15 -8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" -179.99999999999994 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "83F3DA8B-4B0C-5A3C-2A8F-58BCBEC76F6F";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "17D0EC8E-45F6-C028-7832-08BFF1ABA6CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469168534
		-0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0 0.63133608469168534 0
		-0.63133608469168534 0 0
		0 -0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 -0.63133608469168534 0
		0 0 -0.63133608469168534
		;
createNode nurbsCurve -n "lfLegQd1_outRollG_ctlShape1" -p "lfLegQd1_outRollG_ctl";
	rename -uid "9DE3D8E4-4504-55F6-5C86-D097FF8540D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469168534
		-0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0 0.63133608469168534 0
		-0.63133608469168534 0 0
		0 -0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 -0.63133608469168534 0
		0 0 -0.63133608469168534
		;
createNode nurbsCurve -n "lfLegQd1_toeRollG_ctlShape1" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "038F1F07-4626-A2D7-501B-CB9BB530B14F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469168534
		-0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0 0.63133608469168534 0
		-0.63133608469168534 0 0
		0 -0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 -0.63133608469168534 0
		0 0 -0.63133608469168534
		;
createNode nurbsCurve -n "lfLegQd1_heelRollG_ctlShape1" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "34E684D7-4D34-DACE-BB01-CBA93B2E79C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469168534
		-0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 -0.63133608469168534
		0 0.63133608469168534 0
		-0.63133608469168534 0 0
		0 -0.63133608469168534 0
		0.63133608469168534 0 0
		0 0 0.63133608469168534
		0 -0.63133608469168534 0
		0 0 -0.63133608469168534
		;
createNode transform -n "lfLegQd1_line_30" -p "lfLegQd1_IK";
	rename -uid "A09482D9-453D-EFF7-B874-65B95EF746F9";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "F7E85E5B-43BE-D440-9E85-AB84113B4BFE";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14.367473498162473 48.677303756583427 52.65731032935971
		22.604483774476268 49.555798908967311 16.531033653757884
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "241AEE9B-4342-21F5-83C3-8E843F4D04A9";
	setAttr ".t" -type "double3" 11.526513579356001 4.7403995093577844 59.044988748859424 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "58E55AC6-4166-7CB0-50DD-6586B127CABE";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "9FB12538-429A-9322-DBC4-80BBBA7CC81B";
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
	rename -uid "51C0AC4C-4E04-078F-4F70-6F804DB705AA";
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
		7.6525586023234515 -4.7403995093577826 7.6525586023234595
		7.5055168345819592 -4.7403995093577826 9.1454987242980348
		7.0700422640298157 -4.7403995093577826 10.581065994635592
		6.3628699341963877 -4.7403995093577826 11.904092368212462
		5.4111760811303613 -4.7403995093577826 13.063734683453818
		4.2515337658890013 -4.7403995093577826 14.015428536519849
		2.9285073923121323 -4.7403995093577826 14.722600866353275
		1.4929401219745739 -4.7403995093577835 15.158075436905422
		-8.9338640776078851e-16 -4.7403995093577835 15.30511720464691
		-1.4929401219745757 -4.7403995093577835 15.158075436905422
		-2.9285073923121341 -4.7403995093577826 14.722600866353275
		-4.251533765889004 -4.7403995093577826 14.015428536519849
		-5.4111760811303649 -4.7403995093577826 13.063734683453822
		-6.3628699341963921 -4.7403995093577826 11.904092368212464
		-7.0700422640298202 -4.7403995093577826 10.581065994635592
		-7.5055168345819645 -4.7403995093577826 9.145498724298033
		-7.6525586023234569 -4.7403995093577826 7.6525586023234569
		-7.5055167894501205 -2.4487581021374085 7.6525586023234577
		-7.0700422298563081 -0.21733125922234464 7.6525586023234577
		-6.3628700787725334 1.7149479513605232 7.6525586023234577
		-5.4111760797476398 3.2524971205093776 7.6525586023234577
		-4.251533673504742 4.4103220811193378 7.6525586023234577
		-2.928507299074774 5.1174942322031125 7.6525586023234577
		-1.4929400891451532 5.5529687917969248 7.6525586023234577
		4.6858407007179479e-16 5.7000106046702612 7.6525586023234577
		1.4929400891451532 5.5529687917969248 7.6525586023234577
		2.928507299074774 5.1174942322031125 7.6525586023234577
		4.251533673504742 4.4103220811193378 7.6525586023234577
		5.4111760797476398 3.2524971205093776 7.6525586023234577
		6.3628700787725334 1.7149479513605232 7.6525586023234577
		7.0700422298563081 -0.21733125922234464 7.6525586023234577
		7.5055167894501205 -2.4487581021374085 7.6525586023234577
		7.6525586023234577 -4.7403995093577826 7.6525586023234577
		7.6525586023234577 -4.7403995093577844 -7.1934050861840495
		7.6525586023234577 -4.2812459932183753 -7.6525586023234577
		7.5055167894501205 -2.4487581021374085 -7.6525586023234577
		7.0700422298563081 -0.21733125922234464 -7.6525586023234577
		6.3628700787725334 1.7149479513605232 -7.6525586023234577
		5.4111760797476398 3.2524971205093776 -7.6525586023234577
		4.251533673504742 4.4103220811193378 -7.6525586023234577
		2.928507299074774 5.1174942322031125 -7.6525586023234577
		1.4929400891451532 5.5529687917969248 -7.6525586023234577
		4.6858407007179479e-16 5.7000106046702612 -7.6525586023234577
		-1.4929400891451532 5.5529687917969248 -7.6525586023234577
		-2.928507299074774 5.1174942322031125 -7.6525586023234577
		-4.251533673504742 4.4103220811193378 -7.6525586023234577
		-5.4111760797476398 3.2524971205093776 -7.6525586023234577
		-6.3628700787725334 1.7149479513605232 -7.6525586023234577
		-7.0700422298563081 -0.21733125922234464 -7.6525586023234577
		-7.5055167894501205 -2.4487581021374085 -7.6525586023234577
		-7.6525586023234577 -4.2812459932183753 -7.6525586023234577
		-7.6525586023234577 -4.7403995093577818 -7.1934050861840495
		-7.6525586023234577 -4.7403995093577826 7.6525586023234577
		;
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "599C0D21-45E4-A95B-79FD-538CAB976B89";
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
	rename -uid "5DC2DBFA-4BF0-7F15-7482-5093A015DB82";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.5305117204646903 1.04404104345786 
		-0.76525584010885694 -1.5011033669163911 1.04404104345786 -1.063843864503772 -1.4140084528059624 
		1.04404104345786 -1.3509573185712842 -1.2725739868392774 1.04404104345786 -1.6155625932866577 
		-1.0822352162260724 1.04404104345786 -1.8474910563349294 -0.85030675317780036 1.04404104345786 
		-2.0378298269481352 -0.58570147846242682 1.04404104345786 -2.1792642929148194 -0.29858802439491527 
		1.04404104345786 -2.2663592070252498 -1.7659408632789235e-16 1.04404104345786 -2.2957675605735464 
		0.29858802439491461 1.04404104345786 -2.2663592070252498 0.58570147846242637 1.04404104345786 
		-2.1792642929148194 0.85030675317780036 1.04404104345786 -2.0378298269481352 1.0822352162260724 
		1.04404104345786 -1.8474910563349294 1.2725739868392782 1.04404104345786 -1.6155625932866577 
		1.4140084528059633 1.04404104345786 -1.3509573185712842 1.5011033669163929 1.04404104345786 
		-1.063843864503772 1.5305117204646912 1.04404104345786 -0.76525584010885606 1.5011033578900239 
		0.58571276201378542 -0.76525584010885694 1.4140084459712616 0.13942739343077262 -0.76525584010885694 
		1.2725740157545067 -0.24702844868580076 -0.76525584010885694 1.0822352159495274 -0.5545382825155718 
		-0.76525584010885694 0.85030673470094786 -0.78610327463756402 -0.76525584010885694 
		0.58570145981495436 -0.92753770485431897 -0.76525584010885694 0.29858801782903011 
		-1.0146326167730813 -0.76525584010885694 -4.4898818189440899e-16 -1.0440409793477485 
		-0.76525584010885694 -0.29858801782903099 -1.0146326167730813 -0.76525584010885694 
		-0.58570145981495525 -0.92753770485431897 -0.76525584010885694 -0.85030673470094875 
		-0.78610327463756402 -0.76525584010885694 -1.0822352159495274 -0.5545382825155718 
		-0.76525584010885694 -1.2725740157545067 -0.24702844868580076 -0.76525584010885694 
		-1.4140084459712616 0.13942739343077262 -0.76525584010885694 -1.5011033578900239 
		0.58571276201378542 -0.76525584010885694 -1.5305117204646912 1.04404104345786 -0.76525584010885694 
		-1.5305117204646912 1.0440410434578604 2.2039368975926434 -1.5305117204646912 0.95221034022997841 
		2.2957676008205254 -1.5011033578900239 0.58571276201378542 2.2957676008205254 -1.4140084459712616 
		0.13942739343077262 2.2957676008205254 -1.2725740157545067 -0.24702844868580076 2.2957676008205254 
		-1.0822352159495274 -0.5545382825155718 2.2957676008205254 -0.85030673470094875 -0.78610327463756402 
		2.2957676008205254 -0.58570145981495525 -0.92753770485431897 2.2957676008205254 -0.29858801782903099 
		-1.0146326167730813 2.2957676008205254 -4.4898818189440899e-16 -1.0440409793477485 
		2.2957676008205254 0.29858801782903011 -1.0146326167730813 2.2957676008205254 0.58570145981495436 
		-0.92753770485431897 2.2957676008205254 0.85030673470094786 -0.78610327463756402 
		2.2957676008205254 1.0822352159495274 -0.5545382825155718 2.2957676008205254 1.2725740157545067 
		-0.24702844868580076 2.2957676008205254 1.4140084459712616 0.13942739343077262 2.2957676008205254 
		1.5011033578900239 0.58571276201378542 2.2957676008205254 1.5305117204646912 0.95221034022997841 
		2.2957676008205254 1.5305117204646912 1.0440410434578595 2.2039368975926434 1.5305117204646912 
		1.04404104345786 -0.76525584010885694;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "FB609A4B-465E-65A7-282C-109ABF874849";
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
		7.6525586023234515 -4.7403995093577826 7.6525586023234595
		7.5055168345819592 -4.7403995093577826 9.1454987242980348
		7.0700422640298157 -4.7403995093577826 10.581065994635592
		6.3628699341963877 -4.7403995093577826 11.904092368212462
		5.4111760811303613 -4.7403995093577826 13.063734683453818
		4.2515337658890013 -4.7403995093577826 14.015428536519849
		2.9285073923121323 -4.7403995093577826 14.722600866353275
		1.4929401219745739 -4.7403995093577835 15.158075436905422
		-8.9338640776078851e-16 -4.7403995093577835 15.30511720464691
		-1.4929401219745757 -4.7403995093577835 15.158075436905422
		-2.9285073923121341 -4.7403995093577826 14.722600866353275
		-4.251533765889004 -4.7403995093577826 14.015428536519849
		-5.4111760811303649 -4.7403995093577826 13.063734683453822
		-6.3628699341963921 -4.7403995093577826 11.904092368212464
		-7.0700422640298202 -4.7403995093577826 10.581065994635592
		-7.5055168345819645 -4.7403995093577826 9.145498724298033
		-7.6525586023234569 -4.7403995093577826 7.6525586023234569
		-7.5055167894501205 -2.4487581021374085 7.6525586023234577
		-7.0700422298563081 -0.21733125922234464 7.6525586023234577
		-6.3628700787725334 1.7149479513605232 7.6525586023234577
		-5.4111760797476398 3.2524971205093776 7.6525586023234577
		-4.251533673504742 4.4103220811193378 7.6525586023234577
		-2.928507299074774 5.1174942322031125 7.6525586023234577
		-1.4929400891451532 5.5529687917969248 7.6525586023234577
		4.6858407007179479e-16 5.7000106046702612 7.6525586023234577
		1.4929400891451532 5.5529687917969248 7.6525586023234577
		2.928507299074774 5.1174942322031125 7.6525586023234577
		4.251533673504742 4.4103220811193378 7.6525586023234577
		5.4111760797476398 3.2524971205093776 7.6525586023234577
		6.3628700787725334 1.7149479513605232 7.6525586023234577
		7.0700422298563081 -0.21733125922234464 7.6525586023234577
		7.5055167894501205 -2.4487581021374085 7.6525586023234577
		7.6525586023234577 -4.7403995093577826 7.6525586023234577
		7.6525586023234577 -4.7403995093577844 -7.1934050861840495
		7.6525586023234577 -4.2812459932183753 -7.6525586023234577
		7.5055167894501205 -2.4487581021374085 -7.6525586023234577
		7.0700422298563081 -0.21733125922234464 -7.6525586023234577
		6.3628700787725334 1.7149479513605232 -7.6525586023234577
		5.4111760797476398 3.2524971205093776 -7.6525586023234577
		4.251533673504742 4.4103220811193378 -7.6525586023234577
		2.928507299074774 5.1174942322031125 -7.6525586023234577
		1.4929400891451532 5.5529687917969248 -7.6525586023234577
		4.6858407007179479e-16 5.7000106046702612 -7.6525586023234577
		-1.4929400891451532 5.5529687917969248 -7.6525586023234577
		-2.928507299074774 5.1174942322031125 -7.6525586023234577
		-4.251533673504742 4.4103220811193378 -7.6525586023234577
		-5.4111760797476398 3.2524971205093776 -7.6525586023234577
		-6.3628700787725334 1.7149479513605232 -7.6525586023234577
		-7.0700422298563081 -0.21733125922234464 -7.6525586023234577
		-7.5055167894501205 -2.4487581021374085 -7.6525586023234577
		-7.6525586023234577 -4.2812459932183753 -7.6525586023234577
		-7.6525586023234577 -4.7403995093577818 -7.1934050861840495
		-7.6525586023234577 -4.7403995093577826 7.6525586023234577
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd1_smart_ctl_ofs" -p "lfLegQd1_ikc_gmb";
	rename -uid "8480FB78-40B7-BAFC-DD9E-86A2D4875529";
	setAttr ".t" -type "double3" 1.7864642677900662 -4.7403995093577826 12.101359527441275 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "CBD997E7-43D6-1977-DD48-A98A295A1C7D";
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
	rename -uid "EA69B7B3-4B46-5091-5AB6-7495A2499AB2";
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
		3.5209293976298759 7.2267154583696033e-17 -3.5209293976298799
		1.9494171783713857e-16 1.0220119012637604e-16 -3.1836398539213824
		-3.5209293976298759 7.2267154583695996e-17 -3.5209293976298777
		-3.1836398539213913 -4.1711641440835291e-32 -1.2361987213129764e-15
		-3.5209293976298759 -7.226715458369602e-17 3.5209293976298759
		-3.1890738155830091e-16 -1.0220119012637614e-16 3.1836398539213855
		3.5209293976298759 -7.2267154583695996e-17 3.5209293976298777
		3.1836398539213913 -6.0946909396924244e-32 -6.3700642629040153e-16
		3.5209293976298759 7.2267154583696033e-17 -3.5209293976298799
		1.9494171783713857e-16 1.0220119012637604e-16 -3.1836398539213824
		-3.5209293976298759 7.2267154583695996e-17 -3.5209293976298777
		;
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "4B3C73A0-4573-BCF4-DA6D-A1929E326CA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -4.0856207306205761e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "48CEA1FF-4A3E-79B9-A2DC-18A1757ABA87";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -2.5444437451708131e-14 7.5244275693288632e-30 -1.8811068923322172e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 132.79921901487549 1.9040497044281479 91.762240751753112 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "3DC44C99-49C7-A3EB-81F0-D99CBDCA6B86";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 96.110222499894576 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.0406822939529223;
createNode ikEffector -n "effector21" -p "lfLegQd1_legLock";
	rename -uid "EFF01D6A-4478-67A4-320B-93AB30C1F9A1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "C4E2E648-4602-17C8-2D6E-48806F038F4C";
	setAttr ".t" -type "double3" 22.604483774476272 49.555798908967311 16.531033653757884 ;
	setAttr ".r" -type "double3" -1.3581670790018443 167.15578675770601 -7.0608332248485039e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "94FFD227-41E7-4A5E-F6E7-DAA136E6FB47";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "D1996879-4B02-C7D8-71B7-53B22D6DCF29";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 0 2.1316282072803006e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "AFEFBCE1-4B49-E425-70CE-618BDB651053";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.5253443387667414
		-2.5253443387667414 0 0
		0 0 -2.5253443387667414
		2.5253443387667414 0 0
		0 0 2.5253443387667414
		0 2.5253443387667414 0
		2.5253443387667414 0 0
		0 0 -2.5253443387667414
		0 2.5253443387667414 0
		-2.5253443387667414 0 0
		0 -2.5253443387667414 0
		2.5253443387667414 0 0
		0 0 2.5253443387667414
		0 -2.5253443387667414 0
		0 0 -2.5253443387667414
		;
createNode transform -n "lfLegQd1_extraRollG_ofs_loc" -p "lfLegQd1_IK";
	rename -uid "BB2ED9B6-44B5-7016-5168-46BB11D9C2CB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 13.967066527718689 24.443160835528957 -88.838635664795007 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "18A261C6-471D-0935-5861-E7AC13953B09";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "9451417C-44C9-7F26-EF4A-0DBC6C726D95";
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
	rename -uid "2C963A12-4108-4155-775B-6EA57DA88293";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-5.1017057348823061 5.1017057348823061 1.2700686856249544e-16
		-5.0036778596334139 5.1017057348823061 -0.99529339276343542
		-4.7133614865708724 5.1017057348823061 -1.952338321017326
		-4.2419133858483562 5.1017057348823061 -2.8343557823364947
		-3.6074507198317596 5.1017057348823061 -3.6074507198317596
		-2.8343557823364947 5.1017057348823061 -4.2419133858483562
		-1.952338321017326 5.1017057348823061 -4.7133614865708724
		-0.99529339276343542 5.1017057348823061 -5.0036778596334139
		3.123893800478632e-16 5.1017057348823061 -5.1017057348823061
		0.99529339276343542 5.1017057348823061 -5.0036778596334139
		1.952338321017326 5.1017057348823061 -4.7133614865708724
		2.8343557823364947 5.1017057348823061 -4.2419133858483562
		3.6074507198317596 5.1017057348823061 -3.6074507198317596
		4.2419133858483562 5.1017057348823061 -2.8343557823364947
		4.7133614865708724 5.1017057348823061 -1.952338321017326
		5.0036778596334139 5.1017057348823061 -0.99529339276343542
		5.1017057348823061 5.1017057348823061 -5.5180917943393071e-16
		4.9075338539948756 5.1017057348823061 -0.97616909969159138
		4.3545782273570328 5.1017057348823061 -1.8037253599158798
		3.5270218454986009 5.1017057348823061 -2.3566807432854362
		2.550852867441153 5.1017057348823061 -2.550852867441153
		1.5746837677495615 5.1017057348823061 -2.3566807432854362
		0.74712750752527313 5.1017057348823061 -1.8037253599158798
		0.19417212415571661 5.1017057348823061 -0.97616909969159138
		0 5.1017057348823061 -5.5180917943393071e-16
		-0.19417212415571661 5.1017057348823061 0.97616909969159138
		-0.74712750752527313 5.1017057348823061 1.8037253599158798
		-1.5746837677495615 5.1017057348823061 2.3566807432854362
		-2.550852867441153 5.1017057348823061 2.550852867441153
		-3.5270218454986009 5.1017057348823061 2.3566807432854362
		-4.3545782273570328 5.1017057348823061 1.8037253599158798
		-4.9075338539948756 5.1017057348823061 0.97616909969159138
		-5.1017057348823061 5.1017057348823061 1.2700686856249544e-16
		-5.0036778596334139 5.1017057348823061 0.99529339276343542
		-4.7133614865708724 5.1017057348823061 1.952338321017326
		-4.2419133858483562 5.1017057348823061 2.8343557823364947
		-3.6074507198317596 5.1017057348823061 3.6074507198317596
		-2.8343557823364947 5.1017057348823061 4.2419133858483562
		-1.952338321017326 5.1017057348823061 4.7133614865708724
		-0.99529339276343542 5.1017057348823061 5.0036778596334139
		-5.9559093863429019e-16 5.1017057348823061 5.1017057348823061
		0.99529339276343542 5.1017057348823061 5.0036778596334139
		1.952338321017326 5.1017057348823061 4.7133614865708724
		2.8343557823364947 5.1017057348823061 4.2419133858483562
		3.6074507198317596 5.1017057348823061 3.6074507198317596
		4.2419133858483562 5.1017057348823061 2.8343557823364947
		4.7133614865708724 5.1017057348823061 1.952338321017326
		5.0036778596334139 5.1017057348823061 0.99529339276343542
		5.1017057348823061 5.1017057348823061 -5.5180917943393071e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe01_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "F93CC55D-4AF9-E874-D63F-969B06CEE5E5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe01_4_ctl" -p "lfLegQd1_toe01_4_ctl_ofs";
	rename -uid "0694AC48-42A7-596E-2E5B-18AF621C411F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_4_ctlShape1" -p "lfLegQd1_toe01_4_ctl";
	rename -uid "6FB97D3D-4741-8646-1E83-809E5AD6B69F";
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
		8.946855119434384e-18 -0.43589989654108746 -0.43589989654108796
		1.2652763850491279e-17 -2.4134273948790848e-17 -0.39414260447329058
		8.9468551194343794e-18 0.43589989654108746 -0.43589989654108768
		-5.1640059016401672e-33 0.39414260447329169 -1.5304450441047911e-16
		-8.9468551194343824e-18 0.43589989654108746 0.43589989654108746
		-1.2652763850491291e-17 3.9481534256559817e-17 0.39414260447329091
		-8.9468551194343794e-18 -0.43589989654108746 0.43589989654108768
		-7.5453803528414383e-33 -0.39414260447329169 -7.8862994385206644e-17
		8.946855119434384e-18 -0.43589989654108746 -0.43589989654108796
		1.2652763850491279e-17 -2.4134273948790848e-17 -0.39414260447329058
		8.9468551194343794e-18 0.43589989654108746 -0.43589989654108768
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe02_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "4088B378-4AB1-8D95-DE28-058621B3097F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe02_4_ctl" -p "lfLegQd1_toe02_4_ctl_ofs";
	rename -uid "70FEBB73-42BA-C2D5-2BD3-1AAD7E4D2E06";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_4_ctlShape1" -p "lfLegQd1_toe02_4_ctl";
	rename -uid "86A9CFE0-4DD1-F8BD-0060-57A01ECA1F96";
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
		1.4079557315300367e-14 -0.43589989654108352 -0.43589989654108841
		1.4083263224031423e-14 3.9049102880165849e-15 -0.39414260447329102
		1.4079557315300365e-14 0.43589989654109135 -0.43589989654108813
		1.4070610460180931e-14 0.39414260447329558 -5.7843448025773209e-16
		1.4061663605061496e-14 0.43589989654109135 0.43589989654108702
		1.4057957696330441e-14 3.9685260962219358e-15 0.39414260447329047
		1.4061663605061498e-14 -0.43589989654108352 0.43589989654108724
		1.4070610460180931e-14 -0.39414260447328775 -5.0425297023245967e-16
		1.4079557315300367e-14 -0.43589989654108352 -0.43589989654108841
		1.4083263224031423e-14 3.9049102880165849e-15 -0.39414260447329102
		1.4079557315300365e-14 0.43589989654109135 -0.43589989654108813
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe03_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "C49F96D6-4A20-2F0A-1701-3AA92BE4FF47";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe03_4_ctl" -p "lfLegQd1_toe03_4_ctl_ofs";
	rename -uid "8C7D7214-4E0B-0C32-6C5A-619AA364C264";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_4_ctlShape1" -p "lfLegQd1_toe03_4_ctl";
	rename -uid "2DC5026A-4A8E-11BB-195F-C4A279259CD2";
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
		4.6345323125053527e-17 -0.43589989654108835 -0.43589989654108752
		5.0051231856110425e-17 -9.1231269364891609e-16 -0.39414260447329014
		4.6345323125053527e-17 0.43589989654108652 -0.43589989654108724
		3.739846800561914e-17 0.3941426044732908 2.7234547143677392e-16
		2.8451612886184765e-17 0.43589989654108652 0.43589989654108791
		2.4745704155127855e-17 -8.4869688544356538e-16 0.39414260447329136
		2.8451612886184765e-17 -0.43589989654108835 0.43589989654108813
		3.739846800561914e-17 -0.39414260447329258 3.4652698146204639e-16
		4.6345323125053527e-17 -0.43589989654108835 -0.43589989654108752
		5.0051231856110425e-17 -9.1231269364891609e-16 -0.39414260447329014
		4.6345323125053527e-17 0.43589989654108652 -0.43589989654108724
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe04_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "662EC65E-4039-5AC0-5310-3389FE7AB38A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe04_4_ctl" -p "lfLegQd1_toe04_4_ctl_ofs";
	rename -uid "56B1EEE2-4E2B-122B-0B04-1983FF3E7663";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_4_ctlShape1" -p "lfLegQd1_toe04_4_ctl";
	rename -uid "C6B15FD8-4228-F32C-CB35-3DAAAF8EDA21";
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
		1.3984149313910138e-16 -0.43589989654109063 -0.43589989654108796
		1.4354740187015828e-16 -3.1327587428992294e-15 -0.39414260447329058
		1.3984149313910138e-16 0.4358998965410843 -0.43589989654108768
		1.30894638019667e-16 0.39414260447328853 -1.5304450441047911e-16
		1.2194778290023264e-16 0.4358998965410843 0.43589989654108746
		1.1824187416917572e-16 -3.0691429346938785e-15 0.39414260447329091
		1.2194778290023264e-16 -0.43589989654109063 0.43589989654108768
		1.30894638019667e-16 -0.39414260447329486 -7.8862994385206644e-17
		1.3984149313910138e-16 -0.43589989654109063 -0.43589989654108796
		1.4354740187015828e-16 -3.1327587428992294e-15 -0.39414260447329058
		1.3984149313910138e-16 0.4358998965410843 -0.43589989654108768
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "E3FA314B-47BA-9B58-5FAB-C7B0A90B6158";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "BF5EAD82-4090-6BB7-7F69-A0A927592801";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5.0528317972300139 5.0528317972300139 5.0528317972300139 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "89D89006-4E81-E8CB-4E36-0FB87F5753E2";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "236F34CC-4B42-582A-0FEF-828D6EAF5F23";
	setAttr ".t" -type "double3" 1.4584993911388731e-14 89.195039674419846 64.830668500115692 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "BDC614A3-42AB-18D0-6725-C0B7152AB25E";
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "790203CF-4F69-57DF-2CCB-49B4A030E60E";
	setAttr ".t" -type "double3" 0 0 -1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "F8EA01B4-469D-5C03-53E6-83B10DEB6F22";
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
	rename -uid "912CF538-4D97-5AEC-FFE0-A89A3E63F3F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.390753251328395 15.390753251328412 3.1589555448683043e-16
		8.5213292820956418e-16 13.916386811329627 4.467437774486451e-16
		-15.390753251328395 15.390753251328402 3.1589555448683023e-16
		-13.916386811329666 5.4036952578893308e-15 -1.8233071687149601e-31
		-15.390753251328395 -15.390753251328395 -3.1589555448683038e-16
		-1.3940139847436394e-15 -13.916386811329639 -4.467437774486456e-16
		15.390753251328395 -15.390753251328402 -3.1589555448683023e-16
		13.916386811329666 2.7844945522468238e-15 -2.664122843788231e-31
		15.390753251328395 15.390753251328412 3.1589555448683043e-16
		8.5213292820956418e-16 13.916386811329627 4.467437774486451e-16
		-15.390753251328395 15.390753251328402 3.1589555448683023e-16
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "001F00DD-4EB2-32E2-4374-1C888B6CBF29";
	setAttr ".t" -type "double3" 7.2045234361705946e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "A36D9C09-42E0-B9DF-5416-ABB6F69A7EE5";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "2C263255-477A-DCFA-4915-198EC5538982";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.9900265509261095 6.9900265509261104 4.2801568207733369e-16
		6.0530558250213582e-16 9.8853903496677269 6.0530558250213582e-16
		-6.9900265509261095 6.9900265509261086 4.2801568207733359e-16
		-9.8853903496677322 5.1246038135589795e-16 3.1379148285866617e-32
		-6.9900265509261095 -6.9900265509261095 -4.2801568207733359e-16
		-9.9022631225424872e-16 -9.885390349667734 -6.0530558250213631e-16
		6.9900265509261095 -6.9900265509261086 -4.2801568207733359e-16
		9.8853903496677322 -1.3480671916720415e-15 -8.2545308565836361e-32
		6.9900265509261095 6.9900265509261104 4.2801568207733369e-16
		6.0530558250213582e-16 9.8853903496677269 6.0530558250213582e-16
		-6.9900265509261095 6.9900265509261086 4.2801568207733359e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "113431E4-45A0-CE11-1038-849D61395237";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "E6B330CF-45EB-37D7-79AC-4290A52FFAA5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "EA46B8E9-4522-E9BC-7F6B-B4B1106E1BF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-2.1148411994807061e-07 1.4210459097130221 -0.30407084061533907
		-2.5790880351865131e-07 1.5184505999107563 -0.55855670205726815
		-2.7194633830855812e-07 1.3977294514402336 -0.74454300955309227
		-2.5097344127674797e-07 1.2564780316565072 -0.79840614259468423
		-2.2142518965195881e-07 1.0574720244769875 -0.80035576457124513
		9.1684602912378908e-08 -1.0513070648388312 -0.82101532408075195
		1.2123285453768978e-07 -1.2503130720183364 -0.82296494605729764
		1.4220575153616473e-07 -1.3915644918020693 -0.77186943672850694
		1.9300781230689955e-07 -1.5184505999107563 -0.58268903068200906
		2.114227242552479e-07 -1.4272108693511818 -0.32670414538830245
		2.7194633837241021e-07 -0.26129590673694852 1.2659363770678593
		2.5897186109814594e-07 -0.13098055074322881 1.3976867739711085
		2.4339970795938336e-07 -0.00046211617063607975 1.4517442314520508
		2.1160405746750654e-07 0.13132462319753341 1.4008121470765018
		1.7721073111300744e-07 0.26331444114459696 1.2721871232786548
		-2.1148411994807061e-07 1.4210459097130221 -0.30407084061533907
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "7557A820-4563-FD16-3E4C-26A3CF2AAE47";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -10.36864157989338 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.36864157989338 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.98367012301057399 -0.17998080202166622 0
		 0 0.17998080202166622 0.98367012301057399 0 1.4592198434824902e-14 89.195039674419846 64.830668500115692 1;
	setAttr ".radi" 1.1893692111227363;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "B511D55D-4DEE-13DB-C5EF-51A94906D6D9";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -7.2045234361705946e-18 0 0 ;
	setAttr ".r" -type "double3" -10.368641579893524 -2.7246750569648928e-15 -5.1416977595943357e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.368641579893449 0 0 ;
	setAttr ".radi" 5.9468460556136815;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "89C77309-48F7-E7DA-2F6C-488B7CC6C38B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.6361350750788981e-14 8.8155866387476465 27.872506220282858 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.9468460556136815;
createNode ikEffector -n "effector31" -p "neckQd0_two_ikj";
	rename -uid "7EC769F0-4EBA-F13B-615B-E9AE9382C441";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "F780640F-4B14-A0EA-C440-878D9D2603F3";
	setAttr ".t" -type "double3" -1.6368555274225146e-14 8.8155866387476891 27.872506220282858 ;
	setAttr ".r" -type "double3" 10.368641579893449 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "26C870EA-4F7F-7CCB-9A73-4C9247E2D14C";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "BB8FC49C-4C4B-4BF1-535B-AD914A120A8C";
	setAttr ".t" -type "double3" -8.2188056862022839e-15 2.1947767935445768 14.571996177830016 ;
	setAttr ".r" -type "double3" -19.186731427957685 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "F28C86EB-4AD7-2CA6-493D-9EB1443E7ADD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "F1FDDC2B-4448-BFFC-B43E-99B3B89380FB";
	setAttr ".t" -type "double3" 7.8886090522101181e-31 -1.0658141036401503e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "80D7CD5D-449F-E96B-FB7B-4A84368F8C26";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "3835E1CD-47E2-176D-66CF-5D8034129BE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.9900265509261095 6.9900265509261104 4.2801568207733369e-16
		6.0530558250213582e-16 9.8853903496677269 6.0530558250213582e-16
		-6.9900265509261095 6.9900265509261086 4.2801568207733359e-16
		-9.8853903496677322 5.1246038135589795e-16 3.1379148285866617e-32
		-6.9900265509261095 -6.9900265509261095 -4.2801568207733359e-16
		-9.9022631225424872e-16 -9.885390349667734 -6.0530558250213631e-16
		6.9900265509261095 -6.9900265509261086 -4.2801568207733359e-16
		9.8853903496677322 -1.3480671916720415e-15 -8.2545308565836361e-32
		6.9900265509261095 6.9900265509261104 4.2801568207733369e-16
		6.0530558250213582e-16 9.8853903496677269 6.0530558250213582e-16
		-6.9900265509261095 6.9900265509261086 4.2801568207733359e-16
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "F9BD645B-4245-6FD1-941C-64A6CB4FDAB1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -29.555373007851134 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 29.555373007851134 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.86987939108666057 -0.49326447770207488 0
		 0 0.49326447770207488 0.86987939108666057 0 6.366188225186447e-15 93.976655592049099 78.769688085310648 1;
	setAttr ".radi" 1.1893692111227363;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "2267CC9F-4C83-09C8-3175-8799C88D162C";
	setAttr ".t" -type "double3" -1.6361350750788975e-14 8.8155866387476607 27.872506220282858 ;
	setAttr ".r" -type "double3" 10.368641579893449 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "F8404A1B-47E6-EB9A-37EE-E997755B1FFD";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "EE2EF96C-4739-94E0-C329-BCB0145196EF";
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
	rename -uid "3313381A-4CFD-2788-B7D8-FCBCB4D2D620";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.553042301287245 26.341414411110616 22.763111823044852
		1.1736339061215567e-15 31.955268343720064 22.763111823044852
		-13.553042301287245 26.341414411110613 22.763111823044852
		-19.166896233896697 9.9361528538544495e-16 6.0841388941558408e-32
		-13.553042301287245 -13.553042301287245 -8.2988449364900536e-16
		-1.919961104589993e-15 -19.166896233896697 -1.1736339061215527e-15
		13.553042301287245 -13.553042301287244 -8.2988449364900536e-16
		19.166896233896697 -2.6137828720104135e-15 -1.6004804139368636e-31
		13.553042301287245 26.341414411110616 22.763111823044852
		1.1736339061215567e-15 31.955268343720064 22.763111823044852
		-13.553042301287245 26.341414411110613 22.763111823044852
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "6FFA148E-49BA-83C6-9C0E-05A5AA1D2002";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "A5244BAB-4E39-4739-3A59-0BAC3F835A66";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "3BC88170-4339-8615-5106-43A9DE91A9D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-2.1148411994807061e-07 -1.4210459097130221 0.30407084061533929
		-2.5790880351865131e-07 -1.5184505999107563 0.55855670205726837
		-2.7194633830855812e-07 -1.3977294514402336 0.74454300955309238
		-2.5097344127674797e-07 -1.2564780316565072 0.79840614259468434
		-2.2142518965195881e-07 -1.0574720244769875 0.80035576457124524
		9.1684602912378908e-08 1.0513070648388314 0.82101532408075184
		1.2123285453768978e-07 1.2503130720183364 0.82296494605729753
		1.4220575153616473e-07 1.3915644918020693 0.77186943672850683
		1.9300781230689955e-07 1.5184505999107563 0.58268903068200895
		2.114227242552479e-07 1.4272108693511818 0.32670414538830228
		2.7194633837241021e-07 0.26129590673694836 -1.2659363770678593
		2.5897186109814594e-07 0.13098055074322865 -1.3976867739711085
		2.4339970795938336e-07 0.00046211617063590194 -1.4517442314520508
		2.1160405746750654e-07 -0.13132462319753357 -1.4008121470765018
		1.7721073111300744e-07 -0.26331444114459712 -1.2721871232786548
		-2.1148411994807061e-07 -1.4210459097130221 0.30407084061533929
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "94748B0C-4B39-A19D-B6B6-92A379EC7D57";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.7763568394002442e-15 102.88318489164752 90.661383768901032 1;
	setAttr ".radi" 1.1893692111227363;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "E14C9AA8-4A33-F8F5-1D40-E7AF53C9C8BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "2F26D607-44BA-96A7-C9FB-EF8D36AD2A82";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "D2BE3E78-42A0-1662-A029-D2BA08DCBAC6";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "12A3F78C-4269-2715-4581-978554C85ECB";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.5295233275169409 7.9502592021697183 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "11CD7483-46D7-B9C0-8E16-048A414EEE79";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "DA258F8D-4B7B-7738-43B3-6BAB3D4252DE";
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
	rename -uid "36D1E8A6-4BCE-E73B-8BA6-FC94D6B21A1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-2.2300672708551303 2.9734230278068408 5.5517482872138757e-17
		-2.1872171404116374 2.9734230278068408 -0.43506453242178272
		-2.0603134977076984 2.9734230278068408 -0.85340982361410878
		-1.8542332112381081 2.9734230278068408 -1.2389589663962506
		-1.5768956893208932 2.9734230278068408 -1.5768956893208932
		-1.2389589663962506 2.9734230278068408 -1.8542332112381081
		-0.85340982361410878 2.9734230278068408 -2.0603134977076984
		-0.43506453242178272 2.9734230278068408 -2.1872171404116374
		1.3655223731235761e-16 2.9734230278068408 -2.2300672708551303
		0.43506453242178272 2.9734230278068408 -2.1872171404116374
		0.85340982361410878 2.9734230278068408 -2.0603134977076984
		1.2389589663962506 2.9734230278068408 -1.8542332112381081
		1.5768956893208932 2.9734230278068408 -1.5768956893208932
		1.8542332112381081 2.9734230278068408 -1.2389589663962506
		2.0603134977076984 2.9734230278068408 -0.85340982361410878
		2.1872171404116374 2.9734230278068408 -0.43506453242178272
		2.2300672708551303 2.9734230278068408 -2.4120787335873728e-16
		2.1451904906193087 2.9734230278068408 -0.42670488522258093
		1.903481480088012 2.9734230278068408 -0.7884478446604466
		1.5417384674811991 2.9734230278068408 -1.0301567488538492
		1.1150336354275652 2.9734230278068408 -1.1150336354275652
		0.68832875020498441 2.9734230278068408 -1.0301567488538492
		0.32658579076711863 2.9734230278068408 -0.7884478446604466
		0.084876886573716115 2.9734230278068408 -0.42670488522258093
		0 2.9734230278068408 -2.4120787335873728e-16
		-0.084876886573716115 2.9734230278068408 0.42670488522258093
		-0.32658579076711863 2.9734230278068408 0.7884478446604466
		-0.68832875020498441 2.9734230278068408 1.0301567488538492
		-1.1150336354275652 2.9734230278068408 1.1150336354275652
		-1.5417384674811991 2.9734230278068408 1.0301567488538492
		-1.903481480088012 2.9734230278068408 0.7884478446604466
		-2.1451904906193087 2.9734230278068408 0.42670488522258093
		-2.2300672708551303 2.9734230278068408 5.5517482872138757e-17
		-2.1872171404116374 2.9734230278068408 0.43506453242178272
		-2.0603134977076984 2.9734230278068408 0.85340982361410878
		-1.8542332112381081 2.9734230278068408 1.2389589663962506
		-1.5768956893208932 2.9734230278068408 1.5768956893208932
		-1.2389589663962506 2.9734230278068408 1.8542332112381081
		-0.85340982361410878 2.9734230278068408 2.0603134977076984
		-0.43506453242178272 2.9734230278068408 2.1872171404116374
		-2.6034583884067516e-16 2.9734230278068408 2.2300672708551303
		0.43506453242178272 2.9734230278068408 2.1872171404116374
		0.85340982361410878 2.9734230278068408 2.0603134977076984
		1.2389589663962506 2.9734230278068408 1.8542332112381081
		1.5768956893208932 2.9734230278068408 1.5768956893208932
		1.8542332112381081 2.9734230278068408 1.2389589663962506
		2.0603134977076984 2.9734230278068408 0.85340982361410878
		2.1872171404116374 2.9734230278068408 0.43506453242178272
		2.2300672708551303 2.9734230278068408 -2.4120787335873728e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "C07A877F-44A4-775B-1C0D-8CB5F6C5E783";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "44209D27-450F-688D-4737-1DBC76881B92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.4601345417102607 4.4601345417102607 4.4601345417102607 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "10FDED17-4AF5-882F-DE2D-98BC2F984EF9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "9F189909-49B6-2641-73C9-4BB094A14FCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 4.4601345417102607 4.4601345417102607 4.4601345417102607 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "3DE124D5-4827-3C18-3ECB-55AA1631DE48";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "0CB5B52D-40C8-9718-159C-8E8340A5023E";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "FBA8DEA0-43EC-6455-7831-709F9D3F1814";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.4533739092377043 -47.722856377983369 84.45704903697775 ;
	setAttr ".radi" 1.9192689687500737;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "73B71B4F-41DD-8750-5C9C-AEB7DA1B1D15";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.237484072449698 63.796237744181688 1.5239924979247303 ;
	setAttr ".radi" 1.9192689687500737;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "9523C96A-49C2-95E2-3C1E-0080B43B85AF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 1.9192689687500737;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "1E53D25F-49B0-EB73-7C3B-C7980476870B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533401553 28.202196682808168 0.1515111460411159 ;
	setAttr ".radi" 1.9192689687500737;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "8D10D0B0-4F63-E36B-441B-8B957948D461";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 1.9192689687500737;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "485EF882-4099-3996-4652-BF8EC355DD1F";
	setAttr ".t" -type "double3" -6.977450066444451 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.1631179523009534 -87.519412399538908 -4.8064433295208451 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "9CD401B1-49EC-A9A8-91C9-318F90F10F74";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "213CE8D0-495F-9C35-3F9F-36B2B68229B4";
	setAttr ".t" -type "double3" -6.9774500664444403 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.1631179523003352 -87.519412399538908 -4.8064433295201363 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "31B21143-42B0-0F12-5519-F2B3F0A47A37";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "41D6894E-4421-99D2-4492-F5AD9DF403AF";
	setAttr ".t" -type "double3" -6.9774500664444474 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "D8A7523D-4399-F7AB-6404-D184F81FE719";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -5.8939653940870797e-14 2.5575084015466954e-14 -4.2415678447329874e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635152e-15 -2.2263882770244611e-14 2.3059021440610491e-14 ;
	setAttr ".radi" 1.9192689687500737;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "E2839004-4611-E844-0FAE-5D85E4675EDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.951137303935619 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000647 67.847764185926991 36.972456027856822 ;
	setAttr ".radi" 1.9192689687500737;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "E90C8B09-4330-9D8A-EEDC-DDAC87FD034E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "8064AE94-4EA4-7797-C78F-45A0215E216B";
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
createNode nurbsCurve -n "rtLegQd0_upr_fkcShape1" -p "rtLegQd0_upr_fkc";
	rename -uid "0E402E02-4E8E-EBCB-4A8C-AA982A4B1879";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		-1.1768984220167636e-31 8.9826738793397478 -3.4879479065239312e-15
		-2.0390254915724602e-16 9.9343399323679424 9.9343399323679424
		-2.8836175042062467e-16 8.9980058602543067e-16 8.9826738793397318
		-2.0390254915724595e-16 -9.9343399323679424 9.9343399323679478
		-1.7196235635507136e-31 -8.9826738793397478 -1.797320441055025e-15
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "DEDCE9C4-4CF7-E813-A0F9-E392808E47E0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "C67858B0-43B9-3CE3-6D70-2082A4850CD8";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "4759E612-412C-642E-BFD9-2EBA790C7847";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		-1.1768984220167636e-31 8.9826738793397478 -3.4879479065239312e-15
		-2.0390254915724602e-16 9.9343399323679424 9.9343399323679424
		-2.8836175042062467e-16 8.9980058602543067e-16 8.9826738793397318
		-2.0390254915724595e-16 -9.9343399323679424 9.9343399323679478
		-1.7196235635507136e-31 -8.9826738793397478 -1.797320441055025e-15
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "815EF651-48DB-3E41-1AC3-FDAD49B2FE09";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "F437BEDE-48A8-127F-FD9B-70A1044E41A1";
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
	rename -uid "083FB271-4691-29C1-DE60-E79E6D73B2C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		-1.1768984220167636e-31 8.9826738793397478 -3.4879479065239312e-15
		-2.0390254915724602e-16 9.9343399323679424 9.9343399323679424
		-2.8836175042062467e-16 8.9980058602543067e-16 8.9826738793397318
		-2.0390254915724595e-16 -9.9343399323679424 9.9343399323679478
		-1.7196235635507136e-31 -8.9826738793397478 -1.797320441055025e-15
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "33E5EE06-42E4-3153-8068-95AD09210B63";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "6E00F9AD-456C-B93B-23BB-C8AAB88BEAEF";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "727DB4A0-4A1E-C280-7A0F-93A139A1FC7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		-1.1768984220167636e-31 8.9826738793397478 -3.4879479065239312e-15
		-2.0390254915724602e-16 9.9343399323679424 9.9343399323679424
		-2.8836175042062467e-16 8.9980058602543067e-16 8.9826738793397318
		-2.0390254915724595e-16 -9.9343399323679424 9.9343399323679478
		-1.7196235635507136e-31 -8.9826738793397478 -1.797320441055025e-15
		2.0390254915724604e-16 -9.9343399323679424 -9.9343399323679531
		2.8836175042062443e-16 -5.5003014070589696e-16 -8.9826738793397229
		2.0390254915724595e-16 9.9343399323679424 -9.9343399323679478
		;
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "A26E74C1-4AB9-03DB-CDCF-BC93DE2457CB";
	setAttr ".t" -type "double3" -7.815970093361102e-14 3.5527136788005009e-15 8.1712414612411521e-14 ;
	setAttr ".r" -type "double3" 105.19686542444728 -3.3083777434560968 -78.005620489165295 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "A9F3CF7E-49C7-04F2-D7CC-889DE0C2557D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "D19EEEB3-4A4D-900D-FF52-0D9F287D134C";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "9E754E61-4110-BD75-0999-08A71AE4ADEC";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "1BAEA105-4AE4-DC11-BE5B-729D5D86AC8B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "2801AA9B-434F-9E41-1B46-B9BEC003FE76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.9671699661839712 19.192689687500739 4.9671699661839765
		-2.7501507035294848e-16 19.192689687500739 4.4913369396698615
		4.9671699661839712 19.192689687500739 4.9671699661839739
		4.4913369396698739 19.192689687500739 1.7439739532619656e-15
		4.9671699661839712 19.192689687500739 -4.9671699661839712
		4.4990029301271533e-16 19.192689687500739 -4.4913369396698659
		-4.9671699661839712 19.192689687500739 -4.9671699661839739
		-4.4913369396698739 19.192689687500739 8.9866022052751252e-16
		-4.9671699661839712 19.192689687500739 4.9671699661839765
		-2.7501507035294848e-16 19.192689687500739 4.4913369396698615
		4.9671699661839712 19.192689687500739 4.9671699661839739
		;
	setAttr ".adot" yes;
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "095B2F69-4166-C754-CF04-2E84885F4F4D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -3.5527136788005009e-14 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 98.147122544543905 39.687083909305876 3.8358903435112435 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "77DB8531-467A-4D9E-172D-E8AA49C8251A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -90.165654146187137 0 2.7533531010703882e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270351e-15 3.3793393490549868e-15 -5.5659706925611559e-15 ;
	setAttr ".radi" 2.8789034531251105;
createNode ikEffector -n "effector37" -p "rtLegQd0_autoAim";
	rename -uid "B5D9326D-40C8-CB26-C127-7495B227BF5D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "85AF0119-450B-4BF0-DFED-A7BF75CC0FF1";
	setAttr ".t" -type "double3" -11.526513858654408 4.740396366071316 -44.658539302698848 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "CD815B05-47AE-8C87-700D-59AD648067C7";
	setAttr ".t" -type "double3" -1.447607025632669 1.869869610558637 6.564511985393203 ;
	setAttr ".r" -type "double3" -13.758450835589835 17.532672327095767 85.781365618984069 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "49E6B332-4B4F-DBE6-B065-808D215E6A06";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "B3C4EB5C-46DD-DF17-D14E-8A884C15BFE3";
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
	rename -uid "A0B4281D-4CEB-DE64-898E-268206BCE3DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0195127457862302e-16 -4.9671699661839712 -4.9671699661839765
		1.4418087521031221e-16 -2.7501507035294848e-16 -4.4913369396698615
		1.0195127457862297e-16 4.9671699661839712 -4.9671699661839739
		-5.8844921100838181e-32 4.4913369396698739 -1.7439739532619656e-15
		-1.0195127457862301e-16 4.9671699661839712 4.9671699661839712
		-1.4418087521031234e-16 4.4990029301271533e-16 4.4913369396698659
		-1.0195127457862297e-16 -4.9671699661839712 4.9671699661839739
		-8.598117817753568e-32 -4.4913369396698739 -8.9866022052751252e-16
		1.0195127457862302e-16 -4.9671699661839712 -4.9671699661839765
		1.4418087521031221e-16 -2.7501507035294848e-16 -4.4913369396698615
		1.0195127457862297e-16 4.9671699661839712 -4.9671699661839739
		;
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "9C3CD0A7-43AD-7F8A-C193-058025351AA1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039355107 7.1054273576010019e-15 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486954 -0.22678088064239274 0.92618524711819461 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "040664BE-4C8E-83C0-4A3E-2388257C10A1";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "89CE89F8-4BE5-EBA0-EEF5-499BE1A6DECB";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_toe01_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "886333C7-4301-4949-7220-679AED220C1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.95005788316907847 -4.7695677060876172 -1.0401287459840098 ;
	setAttr ".r" -type "double3" 34.397312503735591 70.986343301602034 36.406368017681665 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe02_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "626AA185-47FC-1819-272E-628A2DAAB03B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.53635655089807344 -1.3511407022690989 0.20480056262326229 ;
	setAttr ".r" -type "double3" 10.505007782266091 83.751864507242459 10.813849716046114 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe03_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "C1A35349-4CAE-BCF5-5746-F78380816A5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.62757604096418618 1.9977720025257568 0.2720452723746547 ;
	setAttr ".r" -type "double3" -24.348088857686019 79.799102699042962 -25.371460480463529 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe04_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "03019B0B-4349-C8CA-1F4B-81B01068FD9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.83855776202123167 4.6680201906183569 -2.0699847239616886 ;
	setAttr ".r" -type "double3" -37.288936376357938 68.219959849320787 -39.568623976364947 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "88838CF0-4253-B4B5-654A-39B6B53FDB88";
	setAttr ".t" -type "double3" -0.95005788316907847 -4.7695677060876172 -1.0401287459840169 ;
	setAttr ".r" -type "double3" 23.462131422915974 -7.1040108787648961 4.9687479993563306 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs1" -p "rtLegQd0_toe01_3_ikc_ofs";
	rename -uid "5C77A6C2-4111-D21D-A694-05B02BA2EBCB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "rtLegQd0_toe01_3_ikc" -p "rtLegQd0_toe01_3_ikc_ofs1";
	rename -uid "B6895FAB-47E3-0DA8-67CE-CF9A3DFFD45A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_3_ikcShape1" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "2DABB973-4BBE-049A-BDEE-A1B025E01DB8";
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
		0 -1.1102230246251564e-16 3.700115553197417e-18
		0 -1.1102230246251564e-16 0.89625231265269056
		-0.10349722568499632 -1.1102230246251564e-16 0.89625231265269056
		-0.10349722568499632 -1.1102230246251564e-16 1.1032467640226837
		0.10349722568499632 -1.1102230246251564e-16 1.1032467640226837
		0.10349722568499632 -1.1102230246251564e-16 0.89625231265269056
		0 -1.1102230246251564e-16 0.89625231265269056
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe01_3_1_ikj_ikh" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "90082CB6-48A1-208A-FD35-78A6E63AF256";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6291491541309622 1.2120015956545094 3.1012442427608988 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20276264859419291 0.19835287177251482 0.95892828021425247 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "98A98407-49E9-FEA4-F611-80804B597771";
	setAttr ".t" -type "double3" -0.53635655089807344 -1.3511407022690989 0.20480056262325519 ;
	setAttr ".r" -type "double3" 2.3234926624242491 -3.8237351579393151 0.59945408605349049 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs1" -p "rtLegQd0_toe02_3_ikc_ofs";
	rename -uid "B483C325-49AC-1125-1D94-41AC3BF2599D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe02_3_ikc" -p "rtLegQd0_toe02_3_ikc_ofs1";
	rename -uid "01E4FBA6-4AAB-337B-9597-5483278899B1";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_3_ikcShape1" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "0D6C43BD-4334-1256-DCCA-38B9A9EA2B32";
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
		0 2.3680739540463469e-16 -7.1054273576010011e-15
		0 2.3680739540463469e-16 0.89625231265268357
		-0.10349722568499632 2.3680739540463469e-16 0.89625231265268357
		-0.10349722568499632 2.3680739540463469e-16 1.1032467640226769
		0.10349722568499632 2.3680739540463469e-16 1.1032467640226769
		0.10349722568499632 2.3680739540463469e-16 0.89625231265268357
		0 2.3680739540463469e-16 0.89625231265268357
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe02_3_1_ikj_ikh" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "08DB5A1A-41D2-5D2D-DE2B-C7832BFD04FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.723553716546121 -0.070219300522929018 3.2891403472723582 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.24116516335607197 -0.1851467076164301 0.95265946730310425 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "86490616-49C9-8579-3694-5CAC21D18490";
	setAttr ".t" -type "double3" -0.62757604096418618 1.9977720025257568 0.2720452723746476 ;
	setAttr ".r" -type "double3" 16.136251603012656 -2.6800632013464472 4.6182660438474903 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs1" -p "rtLegQd0_toe03_3_ikc_ofs";
	rename -uid "5A025F0A-4029-950B-E830-5487083D7851";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe03_3_ikc" -p "rtLegQd0_toe03_3_ikc_ofs1";
	rename -uid "4CBD8832-4822-CD23-8249-62AD450D71EC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_3_ikcShape1" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "C491F642-44FA-0613-17D3-69AE25610413";
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
		0 0 0.89625231265269056
		-0.10349722568499632 0 0.89625231265269056
		-0.10349722568499632 0 1.1032467640226837
		0.10349722568499632 0 1.1032467640226837
		0.10349722568499632 0 0.89625231265269056
		0 0 0.89625231265269056
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe03_3_1_ikj_ikh" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "9BCC7B1F-4189-C5B5-559A-0CB94F01F031";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.7733038800070293 0.78359770912667415 3.1741325994174403 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999944 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.27487538160233527 0.067426400954544941 0.95911271759021444 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "F6C2129D-4D71-7F91-432D-B4A81DC06180";
	setAttr ".t" -type "double3" -0.83855776202123167 4.6680201906183569 -2.0699847239616957 ;
	setAttr ".r" -type "double3" 13.674781386933427 -6.7225221585064485 2.8744576905906736 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs1" -p "rtLegQd0_toe04_3_ikc_ofs";
	rename -uid "B3E720B1-404B-A368-BD1B-3A95E46DA5B2";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe04_3_ikc" -p "rtLegQd0_toe04_3_ikc_ofs1";
	rename -uid "947720CD-46F8-3305-7A1B-D497D513DFB4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_3_ikcShape1" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "C21E9FEC-4660-5DAB-31B1-0F922C884D76";
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
		0 0 0.89625231265269056
		-0.10349722568499632 0 0.89625231265269056
		-0.10349722568499632 0 1.1032467640226837
		0.10349722568499632 0 1.1032467640226837
		0.10349722568499632 0 0.89625231265269056
		0 0 0.89625231265269056
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe04_3_1_ikj_ikh" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "F702FA0D-46EB-CA8C-49FB-2588DA760BD9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.4739011017031149 1.1392126960718798 3.1309827192311275 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20167605816007877 0.020699272603380989 0.97923353071609232 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "AE159E8E-4A9A-54EA-02F2-AC822945766A";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "EFE16C10-4CF6-0A41-CAEC-8DAD523B6413";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.4533739092377043 -47.722856377983369 84.45704903697775 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "C7A12C50-4A60-E63A-5FAE-0A86CB911845";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.20340027128837 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -7.8472049396926138e-07 -9.4688077942670305e-06 -3.3636750457669242e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.237484072449698 63.796237744181688 1.5239924979247303 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "1FD66AE5-4E38-DB89-BAEB-FDA19AD1B08C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.251914290918286 -7.1054273576010019e-15 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -1.2476418838448234e-20 1.8155372309314924e-05 1.1102380739683818e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "4AB3B58E-4E75-AA5A-6A04-8EAF19003B3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -36.188739948176845 -2.4868995751603507e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 2.6635766139743913e-07 -2.6645427799562407e-08 -1.1069071892337133e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533401553 28.202196682808168 0.1515111460411159 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "F8C2C04D-4394-47B9-E81A-82A825E8F751";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.259600490641112 1.5265135793570774 6.3414588457820571 ;
	setAttr ".r" -type "double3" 6.0111106461521396e-07 2.0310447644554647e-05 -8.8809256833979759e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "DB1A7020-436B-490A-BC11-06937DCFEC0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.977450066444451 1.0658141036401503e-14 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 2.7706073798628643e-07 -3.6821932536734721e-05 -1.8970208375589368e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179522998609 -87.519412399538922 -4.8064433295195466 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "133F8A72-4DE3-A9CE-5385-B3A95DA9A490";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.951137303935619 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000647 67.847764185926991 36.972456027856822 ;
	setAttr ".radi" 2.8789034531251105;
createNode ikEffector -n "effector35" -p "rtLegQd0_ball_ik";
	rename -uid "193EE5D8-4E26-5784-0768-5DA9C46A312C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector34" -p "rtLegQd0_digit_ik";
	rename -uid "8B7AB97C-491A-7769-8AC4-E38C1F8D00A5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector33" -p "rtLegQd0_palm_ik";
	rename -uid "A0C26308-47E0-870D-B26E-DCB6BFE5F61A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector32" -p "rtLegQd0_lwr_ik";
	rename -uid "031CE786-444E-4538-377A-3382FC7FE70A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "9D259D48-43E8-51D3-C4DE-578578931569";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -15.20340027128838 -1.7763568394002505e-15 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 1.4059303768781546e-29 4.2177911306344664e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 85.728783746642094 40.764467629269589 6.3138508374306195 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "AB014508-4BDC-B80E-9EEA-FBA019131943";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -64.296783447265625 -3.5527136788005009e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270351e-15 3.3793393490549868e-15 -5.5659706925611559e-15 ;
createNode ikEffector -n "effector36" -p "rtLegQd0_softJ";
	rename -uid "4CA19DE4-4FD8-6ABD-4077-B2BC56F900D9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "79734313-40F9-6138-38B0-2984AF8D321D";
	setAttr ".t" -type "double3" -26.740373408540727 44.665640417510829 -0.85668887026110241 ;
	setAttr ".r" -type "double3" -179.92349003539292 -88.909162981886894 83.01983409513231 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "25A149B1-4F86-7D0C-5D54-28BEE0E6DE04";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "1DF4C9C3-4EF5-9353-3005-B5B54A46EB60";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "85E79DD5-4596-7235-E38E-EF891328EEF1";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -20.000000000000039 3.848287691158653 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "05F7B020-4A6C-E657-A81D-B88F88D0DF92";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "1D86A93F-435B-768D-80F1-E5882567EC4E";
	setAttr ".t" -type "double3" -3.3129778471460689 0 15.73217680702232 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "BCB0C927-4E08-852A-B361-71BD0395293A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "CC42EE96-4169-F256-4BE3-F7B98C4025D8";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "AAF2DC35-49F4-BAFC-2ABB-6F9F67BE5295";
	setAttr ".t" -type "double3" -5.4785272737373383 0 -8.5804644981809375 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "505F5E74-42F0-22D1-AE34-9997704EA8BE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "B3DE4540-41CD-CFEC-E2CE-6599DFACC183";
	setAttr ".t" -type "double3" 12.024823832191306 0 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "7E4DCC8C-4BA9-77E3-FDD0-78B64C4B3ACD";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "74251ED9-40A0-F5A1-FB95-51849DA88833";
	setAttr ".t" -type "double3" -6.2074395955949946 6.6102659766300782 1.905972682694383 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "CBA4F4BF-4323-BCEF-B305-D68C143A75C5";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "DB474E60-4DF4-A0A6-6A9A-4B8F71CBBBBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-5.9435741315458446e-17 8.6256855059025224 5.2468227967504488e-16
		-5.7410515773842804e-17 8.6587600663209514 0.2512251115317044
		-5.1472861418361422e-17 8.7557293572285868 0.48532963079147479
		-4.2027412702772443e-17 8.909985177852656 0.68635974216261042
		-2.9717870657729223e-17 9.111015174826445 0.84061563905157655
		-1.5383100954294247e-17 9.3451197322186648 0.93758485369431477
		1.8200749017170057e-32 9.5963448437503693 0.97065926158294957
		1.5383100954294247e-17 9.8475699552820739 0.93758485369431477
		2.9717870657729223e-17 10.081674512674292 0.84061563905157655
		4.2027412702772443e-17 10.282704509648083 0.68635974216261042
		5.1472861418361422e-17 10.436960940391327 0.48532963079147479
		5.7410515773842804e-17 10.533929621179787 0.2512251115317044
		5.9435741315458446e-17 10.567004181598215 2.868219434115581e-16
		5.7410515773842804e-17 10.533929621179787 -0.2512251115317044
		5.1472861418361422e-17 10.436960940391327 -0.48532963079147479
		4.2027412702772443e-17 10.282704509648083 -0.68635974216261042
		2.9717870657729223e-17 10.081674512674292 -0.84061563905157655
		1.5383100954294247e-17 9.8475699552820739 -0.93758485369431477
		-4.4467895293169654e-32 9.5963448437503693 -0.97065926158294957
		-1.5383100954294247e-17 9.3451197322186648 -0.93758485369431477
		-2.9717870657729223e-17 9.111015174826445 -0.84061563905157655
		-4.2027412702772443e-17 8.909985177852656 -0.68635974216261042
		-5.1472861418361422e-17 8.7557293572285868 -0.48532963079147479
		-5.7410515773842804e-17 8.6587600663209514 -0.2512251115317044
		-5.9435741315458446e-17 8.6256855059025224 5.2468227967504488e-16
		0 0 0
		;
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "25AE9D5A-4FED-6035-A4CB-3ABC4B4984E6";
	setAttr ".t" -type "double3" 1.447607304930024 -1.8698664672711534 -6.5645138369123543 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "7DD20646-45AB-9A14-9BCB-7C8ACE8804F0";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 178.97884369877477 0 89.609827760862572 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "C1C3113D-4E81-7F6F-FE9C-8780B9616EE3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "DD5E5A34-4157-B23D-5CB2-1EB266229ACA";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "353941F1-4C31-28E0-167D-C3B7E1F03BF6";
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
		5.7293057047712246 9.5963448437503693 0
		5.3195187528133276 11.799761561289724 0
		4.0713836080750694 13.66772845182544 0
		2.2034167175393544 14.915863596563696 0
		0 15.325516199695125 0
		-2.2034167175393544 14.915863596563696 0
		-4.0713836080750694 13.66772845182544 0
		-5.3195187528133276 11.799761561289724 0
		-5.7293057047712246 9.5963445723001009 0
		-5.3195187528133276 7.3929281262110145 0
		-4.0713836080750694 5.5249612356753 0
		-2.2034167175393544 4.2768260909370417 0
		2.2879451606157614e-07 3.8671734878056139 -0.038957321138115779
		2.2034167175393544 4.2768260909370417 0
		4.0713836080750694 5.5249612356753 0
		5.3195187528133276 7.3929281262110145 0
		5.7293057047712246 9.5963448437503693 0
		5.2931863828254011 9.6112535714090157 -2.1924615303752808
		4.051231284104718 9.6238928019201886 -4.051142997733038
		2.1925114313679694 9.6323380459227881 -5.2930712266884283
		2.2879451606157614e-07 9.6353037003036448 -5.7291790330205545
		-2.1925114313679694 9.6323380459227881 -5.2930712266884283
		-4.051231284104718 9.6238928019201886 -4.051142997733038
		-5.2931863828254011 9.6112535714090157 -2.1924615303752808
		-5.7293057047712246 9.5963445723001009 0
		-5.2931863828254011 9.5814355786964178 2.1924538532994831
		-4.051231284104718 9.5687963481852449 4.051139159195138
		-2.1925114313679694 9.5603511041826437 5.2930635496126301
		2.2879451606157614e-07 9.5573856033433042 5.7291713559447555
		2.1925114313679694 9.5603511041826437 5.2930635496126301
		4.051231284104718 9.5687963481852449 4.051139159195138
		5.2931863828254011 9.5814355786964178 2.1924538532994831
		5.7293057047712246 9.5963448437503693 0
		5.2931863828254011 9.6112535714090157 -2.1924615303752808
		4.051231284104718 9.6238928019201886 -4.051142997733038
		2.1925114313679694 9.6323380459227881 -5.2930712266884283
		2.2879451606157614e-07 9.6353037003036448 -5.7291790330205545
		2.2879451606157614e-07 11.82479650546775 -5.2781585069503665
		2.2879451606157614e-07 13.675029350909554 -4.0235938112310912
		2.2879451606157614e-07 14.90431727456316 -2.1564675604952819
		0 15.325516199695125 0
		2.2879451606157614e-07 14.874499512162838 2.2284516617173811
		2.2879451606157614e-07 13.619934816443561 4.0786806686212875
		2.2879451606157614e-07 11.752812404245651 5.3079724308127911
		2.2879451606157614e-07 9.5573856033433042 5.7291713559447555
		2.2879451606157614e-07 7.3678931820329883 5.2781508298745692
		2.2879451606157614e-07 5.5176603365911836 4.023586134155293
		2.2879451606157614e-07 4.2883724129375782 2.1564598834194832
		2.2879451606157614e-07 3.8671734878056139 -0.038957321138115779
		2.2879451606157614e-07 4.3181901753379011 -2.2284593387931797
		2.2879451606157614e-07 5.5727548710571781 -4.0786883456970848
		2.2879451606157614e-07 7.4398772832550879 -5.3079801078885902
		2.2879451606157614e-07 9.6353037003036448 -5.7291790330205545
		;
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "D6110FA7-4CB6-72FE-9D40-989CA5751A2E";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "2E5CF792-4E1C-EB66-B396-B4A13991ACD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -1.1546319456101628e-14 -6.3948846218409017e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -1.9721522630525295e-31 6.1629758220391547e-33 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "DA99F54B-48D9-4435-65F2-239491A9AC4D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5265135793570916 15.259600490641104 -6.3414588457820926 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "1A8A1767-4183-4EC9-4107-D99417CB3EA9";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "FBDEF670-48B2-F777-A015-F28D8DDD26EE";
	setAttr ".t" -type "double3" 1.5265135793570916 15.259600490641104 -6.3414588457820926 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "79EF1EE1-413B-B06B-EB20-1782A058903C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "3DA64D95-42FC-3C8E-04C5-B89C8382B1D4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "772D74BC-40B4-2257-3C08-548901A49F12";
	setAttr ".t" -type "double3" -6.2074395955949946 6.6102659766300782 1.905972682694383 ;
	setAttr ".r" -type "double3" -13.758450835589796 17.532672327095764 85.781365618984069 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "5CF6EAE7-4EB0-F9E8-8077-09A92934A011";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -6.3948846218409017e-14 ;
	setAttr ".r" -type "double3" 14.482499644864644 87.44471379152435 14.676500591330571 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486965 -0.22678088064239207 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "EBEEB5A8-4A5D-8591-C6E3-F5A6179928BA";
	setAttr ".t" -type "double3" -1.0658141036401503e-13 -1.4210854715202004e-14 -5.3290705182007514e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "9EBD153C-4746-DF61-962F-ABB12C8FBCB2";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "2CFFC039-40F1-24F0-0E29-2B832CA13A9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720705412
		-0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0 0.59377383720705412 0
		-0.59377383720705412 0 0
		0 -0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 -0.59377383720705412 0
		0 0 -0.59377383720705412
		;
createNode nurbsCurve -n "rtLegQd0_outRollG_ctlShape1" -p "rtLegQd0_outRollG_ctl";
	rename -uid "ED969B1E-4986-BB31-5CF4-018052A38593";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720705412
		-0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0 0.59377383720705412 0
		-0.59377383720705412 0 0
		0 -0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 -0.59377383720705412 0
		0 0 -0.59377383720705412
		;
createNode nurbsCurve -n "rtLegQd0_toeRollG_ctlShape1" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "44A1FC5F-4D17-1A9A-FE9D-F7AE3087BFA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720705412
		-0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0 0.59377383720705412 0
		-0.59377383720705412 0 0
		0 -0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 -0.59377383720705412 0
		0 0 -0.59377383720705412
		;
createNode nurbsCurve -n "rtLegQd0_heelRollG_ctlShape1" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "3A6DD373-43E5-5423-140C-9C91150FCB0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.59377383720705412
		-0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 -0.59377383720705412
		0 0.59377383720705412 0
		-0.59377383720705412 0 0
		0 -0.59377383720705412 0
		0.59377383720705412 0 0
		0 0 0.59377383720705412
		0 -0.59377383720705412 0
		0 0 -0.59377383720705412
		;
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_IK";
	rename -uid "063E0C1B-4262-96BE-5FA3-37B8703BAE59";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "997646BE-41EE-AC12-C0E6-3BA871D2F5B6";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12.411266738637568 51.892492734277155 -34.068392854216917
		-17.032164269785561 51.850024983659551 -2.6020486514904699
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "7E6876B0-4BA0-0C2C-A7BF-028E7ECCEA04";
	setAttr ".t" -type "double3" -11.526513579357072 4.7403995093589248 -44.658541154217986 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "0888249D-43B6-D6BB-4C71-15855CFDE203";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "D28041A0-452E-CD99-73F2-C38AE5FEFC01";
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
	rename -uid "CE6D61A0-4E93-0F10-2219-C796A62DFC45";
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
		7.1972586328127699 -4.7403995093589231 7.1972586328127779
		7.0589653263178436 -4.7403995093589231 8.6013741371215797
		6.6493999410458846 -4.7403995093589231 9.9515302700368427
		5.9843018450659811 -4.7403995093589231 11.195841288546912
		5.0892303852153304 -4.7403995093589231 12.286489018028105
		3.9985826557341344 -4.7403995093589231 13.18156047787876
		2.7542716372240639 -4.7403995093589231 13.846658573858662
		1.4041155043088018 -4.7403995093589231 14.256223959130624
		-8.4023309978203673e-16 -4.7403995093589231 14.394517265625547
		-1.4041155043088034 -4.7403995093589231 14.256223959130624
		-2.7542716372240656 -4.7403995093589231 13.846658573858662
		-3.9985826557341371 -4.7403995093589231 13.18156047787876
		-5.089230385215334 -4.7403995093589231 12.286489018028108
		-5.9843018450659846 -4.7403995093589231 11.195841288546914
		-6.6493999410458882 -4.7403995093589231 9.9515302700368427
		-7.058965326317848 -4.7403995093589231 8.6013741371215797
		-7.1972586328127752 -4.7403995093589231 7.1972586328127752
		-7.0589652838711876 -2.585102600372128 7.1972586328127761
		-6.6493999089055791 -0.48643770366889516 7.1972586328127761
		-5.9843019810403613 1.3308777789135906 7.1972586328127761
		-5.0892303839148756 2.7769482510391903 7.1972586328127761
		-3.9985825688464089 3.8658867520140205 7.1972586328127761
		-2.7542715495339962 4.5309846798792393 7.1972586328127761
		-1.4041154734326144 4.9405500548448487 7.1972586328127761
		4.4070498754479476e-16 5.0788434037864345 7.1972586328127761
		1.4041154734326144 4.9405500548448487 7.1972586328127761
		2.7542715495339962 4.5309846798792393 7.1972586328127761
		3.9985825688464089 3.8658867520140205 7.1972586328127761
		5.0892303839148756 2.7769482510391903 7.1972586328127761
		5.9843019810403613 1.3308777789135906 7.1972586328127761
		6.6493999089055791 -0.48643770366889516 7.1972586328127761
		7.0589652838711876 -2.585102600372128 7.1972586328127761
		7.1972586328127761 -4.7403995093589231 7.1972586328127761
		7.1972586328127761 -4.7403995093589248 -6.7654231148440092
		7.1972586328127761 -4.3085639913901561 -7.1972586328127761
		7.0589652838711876 -2.585102600372128 -7.1972586328127761
		6.6493999089055791 -0.48643770366889516 -7.1972586328127761
		5.9843019810403613 1.3308777789135906 -7.1972586328127761
		5.0892303839148756 2.7769482510391903 -7.1972586328127761
		3.9985825688464089 3.8658867520140205 -7.1972586328127761
		2.7542715495339962 4.5309846798792393 -7.1972586328127761
		1.4041154734326144 4.9405500548448487 -7.1972586328127761
		4.4070498754479476e-16 5.0788434037864345 -7.1972586328127761
		-1.4041154734326144 4.9405500548448487 -7.1972586328127761
		-2.7542715495339962 4.5309846798792393 -7.1972586328127761
		-3.9985825688464089 3.8658867520140205 -7.1972586328127761
		-5.0892303839148756 2.7769482510391903 -7.1972586328127761
		-5.9843019810403613 1.3308777789135906 -7.1972586328127761
		-6.6493999089055791 -0.48643770366889516 -7.1972586328127761
		-7.0589652838711876 -2.585102600372128 -7.1972586328127761
		-7.1972586328127761 -4.3085639913901561 -7.1972586328127761
		-7.1972586328127761 -4.7403995093589222 -6.7654231148440092
		-7.1972586328127761 -4.7403995093589231 7.1972586328127761
		;
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "FC26017B-4995-54FD-F9A1-269E1301492C";
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
	rename -uid "6BE53165-4894-6C4C-B12E-1089D5DBD1A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.4394517265625533 0.98192432516585182 
		-0.71972587931829235 -1.4117930652635682 0.98192432516585182 -1.0005489801800529 
		-1.3298799882091767 0.98192432516585182 -1.2705802067631051 -1.196860369013196 0.98192432516585182 
		-1.5194424104651194 -1.0178460770430657 0.98192432516585182 -1.7375719563613572 -0.79971653114682661 
		0.98192432516585182 -1.9165862483314893 -0.55085432744481277 0.98192432516585182 
		-2.0496058675274682 -0.28082310086176032 0.98192432516585182 -2.1315189445818614 
		1.6804661995640731e-16 0.98192432516585182 -2.1591776058808456 0.28082310086176054 
		0.98192432516585182 -2.1315189445818614 0.55085432744481322 0.98192432516585182 -2.0496058675274682 
		0.79971653114682706 0.98192432516585182 -1.9165862483314893 1.0178460770430666 0.98192432516585182 
		-1.737571956361359 1.1968603690131969 0.98192432516585182 -1.5194424104651194 1.3298799882091776 
		0.98192432516585182 -1.2705802067631051 1.4117930652635691 0.98192432516585182 -1.0005489801800529 
		1.439451726562555 0.98192432516585182 -0.71972587931829235 1.4117930567742372 0.5508649433684929 
		-0.71972587931829235 1.3298799817811151 0.13113196402784633 -0.71972587931829235 
		1.1968603962080717 -0.23233113248865078 -0.71972587931829235 1.0178460767829751 -0.52154522691377059 
		-0.71972587931829235 0.79971651376928143 -0.73933292710873655 -0.71972587931829235 
		0.55085430990679907 -0.87235251268177993 -0.71972587931829235 0.28082309468652289 
		-0.95426558767490199 -0.71972587931829235 -8.8140997508958952e-17 -0.98192425746321899 
		-0.71972587931829235 -0.28082309468652289 -0.95426558767490199 -0.71972587931829235 
		-0.55085430990679907 -0.87235251268177993 -0.71972587931829235 -0.79971651376928143 
		-0.73933292710873655 -0.71972587931829235 -1.0178460767829751 -0.52154522691377059 
		-0.71972587931829235 -1.1968603962080717 -0.23233113248865078 -0.71972587931829235 
		-1.3298799817811151 0.13113196402784633 -0.71972587931829235 -1.4117930567742372 
		0.5508649433684929 -0.71972587931829235 -1.439451726562555 0.98192432516585182 -0.71972587931829235 
		-1.439451726562555 0.98192432516585226 2.0728104702130645 -1.439451726562555 0.89555722157209861 
		2.1591775738068177 -1.4117930567742372 0.5508649433684929 2.1591775738068177 -1.3298799817811151 
		0.13113196402784633 2.1591775738068177 -1.1968603962080717 -0.23233113248865078 2.1591775738068177 
		-1.0178460767829751 -0.52154522691377059 2.1591775738068177 -0.79971651376928143 
		-0.73933292710873655 2.1591775738068177 -0.55085430990679907 -0.87235251268177993 
		2.1591775738068177 -0.28082309468652289 -0.95426558767490199 2.1591775738068177 -8.8140997508958952e-17 
		-0.98192425746321899 2.1591775738068177 0.28082309468652289 -0.95426558767490199 
		2.1591775738068177 0.55085430990679907 -0.87235251268177993 2.1591775738068177 0.79971651376928143 
		-0.73933292710873655 2.1591775738068177 1.0178460767829751 -0.52154522691377059 2.1591775738068177 
		1.1968603962080717 -0.23233113248865078 2.1591775738068177 1.3298799817811151 0.13113196402784633 
		2.1591775738068177 1.4117930567742372 0.5508649433684929 2.1591775738068177 1.439451726562555 
		0.89555722157209861 2.1591775738068177 1.439451726562555 0.98192432516585182 2.0728104702130645 
		1.439451726562555 0.98192432516585182 -0.71972587931829235;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "F7CEE1D6-48B9-F69B-9807-D38C6429C8FC";
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
		7.1972586328127699 -4.7403995093589231 7.1972586328127779
		7.0589653263178436 -4.7403995093589231 8.6013741371215797
		6.6493999410458846 -4.7403995093589231 9.9515302700368427
		5.9843018450659811 -4.7403995093589231 11.195841288546912
		5.0892303852153304 -4.7403995093589231 12.286489018028105
		3.9985826557341344 -4.7403995093589231 13.18156047787876
		2.7542716372240639 -4.7403995093589231 13.846658573858662
		1.4041155043088018 -4.7403995093589231 14.256223959130624
		-8.4023309978203673e-16 -4.7403995093589231 14.394517265625547
		-1.4041155043088034 -4.7403995093589231 14.256223959130624
		-2.7542716372240656 -4.7403995093589231 13.846658573858662
		-3.9985826557341371 -4.7403995093589231 13.18156047787876
		-5.089230385215334 -4.7403995093589231 12.286489018028108
		-5.9843018450659846 -4.7403995093589231 11.195841288546914
		-6.6493999410458882 -4.7403995093589231 9.9515302700368427
		-7.058965326317848 -4.7403995093589231 8.6013741371215797
		-7.1972586328127752 -4.7403995093589231 7.1972586328127752
		-7.0589652838711876 -2.585102600372128 7.1972586328127761
		-6.6493999089055791 -0.48643770366889516 7.1972586328127761
		-5.9843019810403613 1.3308777789135906 7.1972586328127761
		-5.0892303839148756 2.7769482510391903 7.1972586328127761
		-3.9985825688464089 3.8658867520140205 7.1972586328127761
		-2.7542715495339962 4.5309846798792393 7.1972586328127761
		-1.4041154734326144 4.9405500548448487 7.1972586328127761
		4.4070498754479476e-16 5.0788434037864345 7.1972586328127761
		1.4041154734326144 4.9405500548448487 7.1972586328127761
		2.7542715495339962 4.5309846798792393 7.1972586328127761
		3.9985825688464089 3.8658867520140205 7.1972586328127761
		5.0892303839148756 2.7769482510391903 7.1972586328127761
		5.9843019810403613 1.3308777789135906 7.1972586328127761
		6.6493999089055791 -0.48643770366889516 7.1972586328127761
		7.0589652838711876 -2.585102600372128 7.1972586328127761
		7.1972586328127761 -4.7403995093589231 7.1972586328127761
		7.1972586328127761 -4.7403995093589248 -6.7654231148440092
		7.1972586328127761 -4.3085639913901561 -7.1972586328127761
		7.0589652838711876 -2.585102600372128 -7.1972586328127761
		6.6493999089055791 -0.48643770366889516 -7.1972586328127761
		5.9843019810403613 1.3308777789135906 -7.1972586328127761
		5.0892303839148756 2.7769482510391903 -7.1972586328127761
		3.9985825688464089 3.8658867520140205 -7.1972586328127761
		2.7542715495339962 4.5309846798792393 -7.1972586328127761
		1.4041154734326144 4.9405500548448487 -7.1972586328127761
		4.4070498754479476e-16 5.0788434037864345 -7.1972586328127761
		-1.4041154734326144 4.9405500548448487 -7.1972586328127761
		-2.7542715495339962 4.5309846798792393 -7.1972586328127761
		-3.9985825688464089 3.8658867520140205 -7.1972586328127761
		-5.0892303839148756 2.7769482510391903 -7.1972586328127761
		-5.9843019810403613 1.3308777789135906 -7.1972586328127761
		-6.6493999089055791 -0.48643770366889516 -7.1972586328127761
		-7.0589652838711876 -2.585102600372128 -7.1972586328127761
		-7.1972586328127761 -4.3085639913901561 -7.1972586328127761
		-7.1972586328127761 -4.7403995093589222 -6.7654231148440092
		-7.1972586328127761 -4.7403995093589231 7.1972586328127761
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd0_smart_ctl_ofs" -p "rtLegQd0_ikc_gmb";
	rename -uid "A5171D38-4DDD-6E0C-153A-E18E064B4903";
	setAttr ".t" -type "double3" -1.7864642677889968 -4.7403995093589248 13.23900565239893 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "FC5C8935-48E5-8C3E-5AA5-B19ED5FD2C11";
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
	rename -uid "CF6F47E0-451D-C0B8-6BD3-338649A7F69A";
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
		3.3114466441226473 6.796751638574869e-17 -3.3114466441226513
		1.8334338023529899e-16 9.612058347354148e-17 -2.9942246264465746
		-3.3114466441226473 6.7967516385748653e-17 -3.3114466441226491
		-2.994224626446583 -3.9229947400558791e-32 -1.1626493021746438e-15
		-3.3114466441226473 -6.7967516385748678e-17 3.3114466441226473
		-2.9993352867514354e-16 -9.6120583473541566e-17 2.9942246264465773
		3.3114466441226473 -6.7967516385748653e-17 3.3114466441226491
		2.994224626446583 -5.732078545169045e-32 -5.9910681368500838e-16
		3.3114466441226473 6.796751638574869e-17 -3.3114466441226513
		1.8334338023529899e-16 9.612058347354148e-17 -2.9942246264465746
		-3.3114466441226473 6.7967516385748653e-17 -3.3114466441226491
		;
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "106CBA17-46B6-63CA-0DFE-34B857B327B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "60197BBC-425D-D9D0-2408-399A56D68BF6";
	setAttr ".t" -type "double3" -17.032164269785561 51.850024983659566 -2.6020486514904699 ;
	setAttr ".r" -type "double3" 0.076509964608046405 -8.3542899989706747 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "738E0A71-40CC-21C4-8246-70A792E8E72B";
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "F9EA721B-4BC9-E0DA-01CA-F59A40E75D87";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 8.8817841970012523e-16 ;
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
	rename -uid "C700F871-4AFA-99DB-871E-908736795D32";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.3750953488282165
		-2.3750953488282165 0 0
		0 0 -2.3750953488282165
		2.3750953488282165 0 0
		0 0 2.3750953488282165
		0 2.3750953488282165 0
		2.3750953488282165 0 0
		0 0 -2.3750953488282165
		0 2.3750953488282165 0
		-2.3750953488282165 0 0
		0 -2.3750953488282165 0
		2.3750953488282165 0 0
		0 0 2.3750953488282165
		0 -2.3750953488282165 0
		0 0 -2.3750953488282165
		;
createNode transform -n "rtLegQd0_extraRollG_ofs_loc" -p "rtLegQd0_IK";
	rename -uid "900BFE3B-40F5-0789-50FA-4283B14DF5B0";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -8.6944995874868205 16.027115305967875 87.447398552657077 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "138AA734-4BFA-059E-6838-B6B3E3589550";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "32B5A682-4748-3CCC-4E83-78AAB1E8D613";
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
	rename -uid "4ECA63C4-4D10-9FF4-4A51-EA88DB079494";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.7981724218751847 4.7981724218751847 1.194504124294324e-16
		-4.7059768559141251 4.7981724218751847 -0.93607698228840952
		-4.4329332726037194 4.7981724218751847 -1.8361811474200094
		-3.9895346540269072 4.7981724218751847 -2.6657217125642729
		-3.3928202559432497 4.7981724218751847 -3.3928202559432497
		-2.6657217125642729 4.7981724218751847 -3.9895346540269072
		-1.8361811474200094 4.7981724218751847 -4.4329332726037194
		-0.93607698228840952 4.7981724218751847 -4.7059768559141251
		2.9380332502986317e-16 4.7981724218751847 -4.7981724218751847
		0.93607698228840952 4.7981724218751847 -4.7059768559141251
		1.8361811474200094 4.7981724218751847 -4.4329332726037194
		2.6657217125642729 4.7981724218751847 -3.9895346540269072
		3.3928202559432497 4.7981724218751847 -3.3928202559432497
		3.9895346540269072 4.7981724218751847 -2.6657217125642729
		4.4329332726037194 4.7981724218751847 -1.8361811474200094
		4.7059768559141251 4.7981724218751847 -0.93607698228840952
		4.7981724218751847 4.7981724218751847 -5.1897849944466507e-16
		4.6155530760341419 4.7981724218751847 -0.91809051651133211
		4.0954963389092169 4.7981724218751847 -1.6964101279716248
		3.3171766130515792 4.7981724218751847 -2.2164666363018597
		2.3990862109375923 4.7981724218751847 -2.3990862109375923
		1.4809956944262601 4.7981724218751847 -2.2164666363018597
		0.70267608296596717 4.7981724218751847 -1.6964101279716248
		0.18261957463573247 4.7981724218751847 -0.91809051651133211
		0 4.7981724218751847 -5.1897849944466507e-16
		-0.18261957463573247 4.7981724218751847 0.91809051651133211
		-0.70267608296596717 4.7981724218751847 1.6964101279716248
		-1.4809956944262601 4.7981724218751847 2.2164666363018597
		-2.3990862109375923 4.7981724218751847 2.3990862109375923
		-3.3171766130515792 4.7981724218751847 2.2164666363018597
		-4.0954963389092169 4.7981724218751847 1.6964101279716248
		-4.6155530760341419 4.7981724218751847 0.91809051651133211
		-4.7981724218751847 4.7981724218751847 1.194504124294324e-16
		-4.7059768559141251 4.7981724218751847 0.93607698228840952
		-4.4329332726037194 4.7981724218751847 1.8361811474200094
		-3.9895346540269072 4.7981724218751847 2.6657217125642729
		-3.3928202559432497 4.7981724218751847 3.3928202559432497
		-2.6657217125642729 4.7981724218751847 3.9895346540269072
		-1.8361811474200094 4.7981724218751847 4.4329332726037194
		-0.93607698228840952 4.7981724218751847 4.7059768559141251
		-5.6015539997422718e-16 4.7981724218751847 4.7981724218751847
		0.93607698228840952 4.7981724218751847 4.7059768559141251
		1.8361811474200094 4.7981724218751847 4.4329332726037194
		2.6657217125642729 4.7981724218751847 3.9895346540269072
		3.3928202559432497 4.7981724218751847 3.3928202559432497
		3.9895346540269072 4.7981724218751847 2.6657217125642729
		4.4329332726037194 4.7981724218751847 1.8361811474200094
		4.7059768559141251 4.7981724218751847 0.93607698228840952
		4.7981724218751847 4.7981724218751847 -5.1897849944466507e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe01_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "4DE4CDB6-455A-A736-C70E-E2BDBB1252B9";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe01_4_ctl" -p "rtLegQd0_toe01_4_ctl_ofs";
	rename -uid "287CF59E-4ACC-3BA5-87B4-D5937783385D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_4_ctlShape1" -p "rtLegQd0_toe01_4_ctl";
	rename -uid "022122AE-4644-6866-25E9-FBB6B2BEB5A7";
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
		-7.0814446783540202e-18 0.34501519935768199 0.34501519935768238
		-1.0014675105323047e-17 1.9102301707039107e-17 0.31196426137460787
		-7.0814446783540156e-18 -0.34501519935768199 0.34501519935768216
		4.0873157800134768e-33 -0.31196426137460875 1.2113487665120829e-16
		7.0814446783540187e-18 -0.34501519935768199 -0.34501519935768199
		1.0014675105323058e-17 -3.1249673424022403e-17 -0.3119642613746082
		7.0814446783540156e-18 0.34501519935768199 -0.34501519935768216
		5.9721760140857116e-33 0.31196426137460875 6.2420138076796123e-17
		-7.0814446783540202e-18 0.34501519935768199 0.34501519935768238
		-1.0014675105323047e-17 1.9102301707039107e-17 0.31196426137460787
		-7.0814446783540156e-18 -0.34501519935768199 0.34501519935768216
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe02_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "BED788BB-4CE5-44F3-6063-BEB65E357B72";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_4_ctl" -p "rtLegQd0_toe02_4_ctl_ofs";
	rename -uid "91C6DA87-4143-4326-F045-CABB4D37DF66";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_4_ctlShape1" -p "rtLegQd0_toe02_4_ctl";
	rename -uid "5F0A631B-4077-05F3-A5D6-F183BBA5B46A";
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
		-7.0814446783540202e-18 0.34501519935768199 0.34501519935768216
		-1.0014675105323047e-17 1.9102301707039107e-17 0.31196426137460764
		-7.0814446783540156e-18 -0.34501519935768199 0.34501519935768193
		4.0873157800134768e-33 -0.31196426137460875 -1.0830995938021783e-16
		7.0814446783540187e-18 -0.34501519935768199 -0.34501519935768221
		1.0014675105323058e-17 -3.1249673424022403e-17 -0.31196426137460842
		7.0814446783540156e-18 0.34501519935768199 -0.34501519935768238
		5.9721760140857116e-33 0.31196426137460875 -1.6702469795463e-16
		-7.0814446783540202e-18 0.34501519935768199 0.34501519935768216
		-1.0014675105323047e-17 1.9102301707039107e-17 0.31196426137460764
		-7.0814446783540156e-18 -0.34501519935768199 0.34501519935768193
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe03_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "A72C8F84-48BF-837D-792E-5584C75C8DF8";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe03_4_ctl" -p "rtLegQd0_toe03_4_ctl_ofs";
	rename -uid "8B357F3A-46B8-8BF2-FD6A-1EB2A7CF8E8B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_4_ctlShape1" -p "rtLegQd0_toe03_4_ctl";
	rename -uid "C83C5D89-483D-D072-3109-4A9871468CF9";
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
		7.2167496106249652e-15 0.34501519935768526 0.34501519935768282
		7.2138163801979954e-15 3.3350085851029049e-15 0.31196426137460831
		7.2167496106249652e-15 -0.34501519935767866 0.3450151993576826
		7.2238310553033189e-15 -0.31196426137460548 5.8002454871406056e-16
		7.2309124999816725e-15 -0.34501519935767866 -0.34501519935768155
		7.2338457304086423e-15 3.2846566099718434e-15 -0.31196426137460775
		7.2309124999816725e-15 0.34501519935768526 -0.34501519935768171
		7.2238310553033189e-15 0.31196426137461208 5.2130981013964832e-16
		7.2167496106249652e-15 0.34501519935768526 0.34501519935768282
		7.2138163801979954e-15 3.3350085851029049e-15 0.31196426137460831
		7.2167496106249652e-15 -0.34501519935767866 0.3450151993576826
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe04_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "7702A815-4A11-533B-CD2A-0C9BF79EFC36";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe04_4_ctl" -p "rtLegQd0_toe04_4_ctl_ofs";
	rename -uid "8418C752-4EFD-FB62-C4E4-87B2E82D0F04";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_4_ctlShape1" -p "rtLegQd0_toe04_4_ctl";
	rename -uid "57230753-452B-DDEA-53F9-97AF84F1573A";
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
		-1.2548514238067136e-16 0.34501519935767844 0.34501519935768216
		-1.2841837280764039e-16 -3.5336113770934617e-15 0.31196426137460764
		-1.2548514238067136e-16 -0.34501519935768554 0.34501519935768193
		-1.1840369770231734e-16 -0.31196426137461231 -1.0830995938021783e-16
		-1.1132225302396333e-16 -0.34501519935768554 -0.34501519935768221
		-1.0838902259699428e-16 -3.5839633522245232e-15 -0.31196426137460842
		-1.1132225302396333e-16 0.34501519935767844 -0.34501519935768238
		-1.1840369770231734e-16 0.31196426137460526 -1.6702469795463e-16
		-1.2548514238067136e-16 0.34501519935767844 0.34501519935768216
		-1.2841837280764039e-16 -3.5336113770934617e-15 0.31196426137460764
		-1.2548514238067136e-16 -0.34501519935768554 0.34501519935768193
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "CA44D84A-43CA-6399-3EB7-9DA4EB894E38";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "89235E70-4EF4-3031-613C-8590F6E79821";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.9993213663858391 3.9993213663858391 3.9993213663858391 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "581E6DE4-4929-6DF2-D98B-9D93F30CEA1B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "48A2A578-4936-B8CE-EDFB-DCAB39FF9231";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "D3C0F2C8-488B-8F7C-34DD-86B67E83399E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.6405100203173062 16.744161296497722 78.887112396642095 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "B43E47BC-4B1D-79FA-E4A1-01861979627C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068351 10.610383260348035 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "B22249D3-4B30-7D40-6F07-30A0F427184E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871598 0 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "0719393A-49AA-7E74-458E-FE92ABB1DFC3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292601 6.1429192907087611 4.6257962827270047 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "331FABF4-440C-0A46-3123-C4BE8B316D3D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 2.0406822939529028;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "FF68B8AF-4E7B-7F48-491D-E28C4F131488";
	setAttr ".t" -type "double3" -6.9774500664444901 7.7715611723760958e-15 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 4.1631179523010609 -87.519412399538922 -4.8064433295205609 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "F5E7C548-4206-17A1-9362-4FA20E8BF5D7";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "2274AE2B-4D36-57A2-ACEB-6CB6200288FC";
	setAttr ".t" -type "double3" -6.9774500664444048 1.3100631690576847e-14 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 4.1631179523005546 -87.519412399538908 -4.8064433295202411 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "59BBAD39-4A6C-E24C-3845-DAAF3882C4AC";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985006262e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "DE138656-4257-1B2C-81B8-A08D0EAECF34";
	setAttr ".t" -type "double3" -6.9774500664444048 1.3100631690576847e-14 5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "09711938-4A45-C0C0-DDC0-E68E9C3542E9";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" 4.199326102869797e-14 -1.2527704822605369e-14 -2.1245111348838329e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.431249606658583e-14 -2.544443745170814e-14 2.385416011097638e-14 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "4DE17E85-447F-99F6-A9C0-5BB2D086282D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039356172 -1.1546319456101628e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000626 67.847764185927019 36.972456027856765 ;
	setAttr ".radi" 2.0406822939529028;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "CB66AE20-450C-0BF4-3A81-AF9612B893B0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "40123E9E-4659-61F5-28D0-B3858519247F";
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
createNode nurbsCurve -n "rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "A1F0D350-49EC-F2A6-B030-3894EFE21F17";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		-1.2513492432250467e-31 9.5509195617640827 -3.708596163938894e-15
		-2.1680146375108599e-16 10.562788192889526 10.562788192889526
		-3.0660357037912551e-16 9.5672214467489376e-16 9.550919561764065
		-2.1680146375108592e-16 -10.562788192889526 10.562788192889533
		-1.8284072819077098e-31 -9.5509195617640827 -1.9110192788711864e-15
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "2B8143E5-498A-E35C-516D-9C80F39BEE6D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "20D6B6BC-42C9-4D51-E7F7-30ABCB48680C";
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
createNode nurbsCurve -n "rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "EC20AC40-4F3D-259A-27D9-8AA382A3EB14";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		-1.2513492432250467e-31 9.5509195617640827 -3.708596163938894e-15
		-2.1680146375108599e-16 10.562788192889526 10.562788192889526
		-3.0660357037912551e-16 9.5672214467489376e-16 9.550919561764065
		-2.1680146375108592e-16 -10.562788192889526 10.562788192889533
		-1.8284072819077098e-31 -9.5509195617640827 -1.9110192788711864e-15
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "5A47AF54-46FA-6DE0-9416-9D8C9FC54D82";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "7A6CB7DC-44DF-B767-58CE-2BB7A71EBBBB";
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
	rename -uid "AD704A5C-43E7-0452-A9C6-FF96813968C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		-1.2513492432250467e-31 9.5509195617640827 -3.708596163938894e-15
		-2.1680146375108599e-16 10.562788192889526 10.562788192889526
		-3.0660357037912551e-16 9.5672214467489376e-16 9.550919561764065
		-2.1680146375108592e-16 -10.562788192889526 10.562788192889533
		-1.8284072819077098e-31 -9.5509195617640827 -1.9110192788711864e-15
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "73A7BCDA-4FA4-61DF-B882-F0AB52362A95";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "0D442396-4061-02DA-428A-A795EB434C3D";
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
	rename -uid "D22E5142-4CF2-234F-BD3B-A690C47A3111";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		-1.2513492432250467e-31 9.5509195617640827 -3.708596163938894e-15
		-2.1680146375108599e-16 10.562788192889526 10.562788192889526
		-3.0660357037912551e-16 9.5672214467489376e-16 9.550919561764065
		-2.1680146375108592e-16 -10.562788192889526 10.562788192889533
		-1.8284072819077098e-31 -9.5509195617640827 -1.9110192788711864e-15
		2.1680146375108604e-16 -10.562788192889526 -10.56278819288954
		3.0660357037912521e-16 -5.8482515351141017e-16 -9.5509195617640561
		2.1680146375108592e-16 10.562788192889526 -10.562788192889533
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "4FDADF96-413B-E52E-B68D-1D8EFAEBA163";
	setAttr ".t" -type "double3" 7.815970093361102e-14 1.5543122344752192e-15 -4.4408920985006262e-14 ;
	setAttr ".r" -type "double3" 105.19686542444724 -3.3083777434561337 -78.005620489165324 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "FCEABD3A-4EEA-7F38-7EDD-60A91C987957";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "39E0A1BF-4AFD-9CCC-128C-B9A4E3E9D62D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "AA635237-4E52-ED53-B7C3-1AAD752B1128";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "97AD6254-4D4F-0D84-24F5-208CD1D55E47";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "2A22B608-49A5-88A3-BA01-548D76FC36E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.281394096444763 20.406822939529029 5.2813940964447701
		-2.9241257675570508e-16 20.406822939529029 4.775459780882028
		5.281394096444763 20.406822939529029 5.2813940964447665
		4.7754597808820414 20.406822939529029 1.854298081969447e-15
		5.281394096444763 20.406822939529029 -5.281394096444763
		4.7836107233744688e-16 20.406822939529029 -4.7754597808820325
		-5.281394096444763 20.406822939529029 -5.2813940964447665
		-4.7754597808820414 20.406822939529029 9.5550963943559318e-16
		-5.281394096444763 20.406822939529029 5.2813940964447701
		-2.9241257675570508e-16 20.406822939529029 4.775459780882028
		5.281394096444763 20.406822939529029 5.2813940964447665
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "ABAD6BEA-4F42-FA2A-141E-2980DABA68D7";
	setAttr ".t" -type "double3" -28.63209927406912 -5.6843418860808015e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "727D5299-4CA8-F8CC-656D-60BE7B634C4B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "9B5F1345-4E5C-346C-9A3A-1AA0050C11E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		38.262793011616928 0 -2.550852867441129
		38.262793011616928 0 2.5508528674411282
		35.711940144175799 0 3.8262793011616929
		33.161087276734669 0 2.550852867441129
		33.161087276734669 0 -2.5508528674411282
		38.262793011616928 0 -2.550852867441129
		33.161087276734669 0 -2.5508528674411282
		33.161087276734669 0 2.550852867441129
		35.711940144175799 0 3.8262793011616929
		38.262793011616928 0 2.5508528674411282
		;
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "3397950B-4E84-2D0C-C62A-688F6F0AEDCC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-14 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -133.8985395092084 -14.882759485808112 9.2347906832210676 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "590136D3-45B4-2039-C337-93AA8AB535FA";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -96.110222499893453 -2.1316282072803006e-14 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635164e-15 -2.186631343506168e-15 -7.0568556994971777e-15 ;
	setAttr ".radi" 3.061023440929354;
createNode ikEffector -n "effector51" -p "rtLegQd1_autoAim";
	rename -uid "4D42FD10-4E0F-F774-26F9-EB8E296CFC51";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "E5131AF8-49EF-9E72-D44C-C0995FA7DD46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.0658141036401503e-14 0 ;
	setAttr ".r" -type "double3" -46.101460490791723 14.882759485808091 -170.76520931677896 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "ACEE24CD-4B31-F4DD-03E5-36AADF3779FC";
	setAttr ".t" -type "double3" -11.526513534232073 4.7404004427874753 59.044988410997362 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "A95BB2B1-4CD2-7A28-9D10-6788E4234460";
	setAttr ".t" -type "double3" -1.4476073500550495 1.8698655338426367 6.5645141747745157 ;
	setAttr ".r" -type "double3" -13.758450835589514 17.532672327095828 85.78136561898404 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "CE40132E-40EA-F12E-B15D-819EDC609A11";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "15CA5BAD-4B52-C803-E280-4FA00F8F08A8";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "505CFE94-4C29-6A89-1AB2-198E496E3F4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0840073187554302e-16 -5.281394096444763 -5.2813940964447701
		1.5330178518956261e-16 -2.9241257675570508e-16 -4.775459780882028
		1.0840073187554296e-16 5.281394096444763 -5.2813940964447665
		-6.2567462161252334e-32 4.7754597808820414 -1.854298081969447e-15
		-1.08400731875543e-16 5.281394096444763 5.281394096444763
		-1.5330178518956275e-16 4.7836107233744688e-16 4.7754597808820325
		-1.0840073187554296e-16 -5.281394096444763 5.2813940964447665
		-9.1420364095385491e-32 -4.7754597808820414 -9.5550963943559318e-16
		1.0840073187554302e-16 -5.281394096444763 -5.2813940964447701
		1.5330178518956261e-16 -2.9241257675570508e-16 -4.775459780882028
		1.0840073187554296e-16 5.281394096444763 -5.2813940964447665
		;
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "6DA14CB7-4E62-C3A6-82BA-C99C72482A5D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039356457 7.9936057773011271e-15 -7.1054273576010019e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487054 -0.22678088064238747 0.92618524711819505 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "0346EB9E-47D7-F2B2-895D-ABA29690BB0E";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999956 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "75897E39-4762-5ABA-A053-F68C3DC0A696";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_toe01_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "1764CEE9-4A9A-73B9-FD85-A4AE61BD24CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.67815955108770254 -4.5017535738891681 -1.3164646055064964 ;
	setAttr ".r" -type "double3" 29.724325556490559 73.915909623053622 31.334682477066174 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999922 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe02_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "264D3194-43C0-7477-1102-E6BA948772B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45532223811231098 -0.74375689773013676 0.36853481284909151 ;
	setAttr ".r" -type "double3" -17.918402793727406 82.755758584639182 -18.507979147205116 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe03_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "FD545DDE-44D1-2931-A041-7F8D43FAF934";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.1223045526015003 3.0584011304631815 -0.49654535984693382 ;
	setAttr ".r" -type "double3" -65.261647362024945 81.569987032270845 -67.528668047760306 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999922 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe04_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "C6E950B0-4F6E-63DF-8968-96AD9C717A94";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.33886448811109737 6.3162181312489132 -3.785254743454594 ;
	setAttr ".r" -type "double3" -62.232764017811256 59.056451346920227 -68.021071205977165 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "C523B664-42EB-1CBC-C48A-9592E3C0E9C3";
	setAttr ".t" -type "double3" -0.67815955108769543 -4.5017535738891725 -1.3164646055064964 ;
	setAttr ".r" -type "double3" 8.3411969830898958 -5.1162832955262898 1.973177434543169 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs1" -p "rtLegQd1_toe01_3_ikc_ofs";
	rename -uid "B2678949-44E4-6986-B66E-C68F8F3DCD12";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe01_3_ikc" -p "rtLegQd1_toe01_3_ikc_ofs1";
	rename -uid "EC736A27-4C03-CDE5-D6BA-B7B3126F71FC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_3_ikcShape1" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "EE9E00F0-4B42-3AD3-FCC7-0385463D1E38";
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
		0 0 1.132345135750829
		-0.13076070032248358 0 1.132345135750829
		-0.13076070032248358 0 1.3938665363957967
		0.13076070032248358 0 1.3938665363957967
		0.13076070032248358 0 1.132345135750829
		0 0 1.132345135750829
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe01_3_1_ikj_ikh" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "C5005725-4D10-96EB-D0EB-8A92F408192A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.7333317786119959 0.79112400107739589 3.2149593759115902 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.22505400097826758 -0.076165995651818627 0.97136472951720898 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "F2CF4E46-4D10-C825-3041-B69AA8FF48CF";
	setAttr ".t" -type "double3" -0.4553222381123021 -0.74375689773013942 0.36853481284909151 ;
	setAttr ".r" -type "double3" 9.7001640958470698 -0.050193914105369594 3.1786163617423226 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs1" -p "rtLegQd1_toe02_3_ikc_ofs";
	rename -uid "0ABB5727-42CD-7F18-B111-3EA4968B59C8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_toe02_3_ikc" -p "rtLegQd1_toe02_3_ikc_ofs1";
	rename -uid "4D024B7B-42C8-390E-D622-04B4D47FA5E4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_3_ikcShape1" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "3902C169-4546-4E9F-DB48-C39B9332CE69";
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
		0 1.7763568394002503e-15 -7.4796934554793159e-17
		0 1.7763568394002503e-15 1.1323451357508287
		-0.13076070032248358 1.7763568394002503e-15 1.1323451357508287
		-0.13076070032248358 1.7763568394002503e-15 1.3938665363957967
		0.13076070032248358 1.7763568394002503e-15 1.3938665363957967
		0.13076070032248358 1.7763568394002503e-15 1.1323451357508287
		0 1.7763568394002503e-15 1.1323451357508287
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe02_3_1_ikj_ikh" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "47D7FB90-4CC7-D15E-FEDA-6A97B70F27A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.39708556289958 0.38899597430693689 3.2019136936043395 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.31254937306940889 -0.050628364004925146 0.94855134713525391 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "384135EB-4A97-2BA3-9C3F-F5A0B903360D";
	setAttr ".t" -type "double3" -0.12230455260149675 3.0584011304631789 -0.49654535984693382 ;
	setAttr ".r" -type "double3" 9.9925668861181194 1.4068899415597267 3.5321615861957749 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs1" -p "rtLegQd1_toe03_3_ikc_ofs";
	rename -uid "29620C68-4D0C-4B63-A734-50A7B8A42D88";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe03_3_ikc" -p "rtLegQd1_toe03_3_ikc_ofs1";
	rename -uid "B2F13C5E-4B3E-9CF2-7F17-60A7BFB4D0C2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_3_ikcShape1" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "522E9FE1-4981-EAC7-A34F-CFB15604AC38";
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
		3.702307547910087e-15 -2.9918773821917264e-16 7.1054273576010011e-15
		3.702307547910087e-15 -2.9918773821917264e-16 1.1323451357508358
		-0.13076070032247988 -2.9918773821917264e-16 1.1323451357508358
		-0.13076070032247988 -2.9918773821917264e-16 1.3938665363958038
		0.13076070032248727 -2.9918773821917264e-16 1.3938665363958038
		0.13076070032248727 -2.9918773821917264e-16 1.1323451357508358
		3.702307547910087e-15 -2.9918773821917264e-16 1.1323451357508358
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe03_3_1_ikj_ikh" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "99FD263F-4A17-FCA9-46A1-88A9E2DA9A39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.482445876351246 0.40692294418916752 3.1712842431153376 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.33729424848475809 -0.045315239885693553 0.94030799155021771 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "381EE491-474C-83B6-244A-418AFEC52231";
	setAttr ".t" -type "double3" -0.33886448811109382 6.3162181312489105 -3.7852547434546082 ;
	setAttr ".r" -type "double3" -2.7621105644962087 2.0274650078502217 -0.99636430279990795 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs1" -p "rtLegQd1_toe04_3_ikc_ofs";
	rename -uid "B33A16F7-4EA5-60A8-E1B3-508DE4B9815B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_toe04_3_ikc" -p "rtLegQd1_toe04_3_ikc_ofs1";
	rename -uid "B347D661-4A06-12E9-CF22-12AEB14D8BA9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_3_ikcShape1" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "0513047A-4098-2AB8-8FBC-1EBC5E951FFE";
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
		3.702307547910087e-15 1.2983884603818135e-15 -7.1475006332880718e-15
		3.702307547910087e-15 1.2983884603818135e-15 1.1323451357508219
		-0.13076070032247988 1.2983884603818135e-15 1.1323451357508219
		-0.13076070032247988 1.2983884603818135e-15 1.3938665363957896
		0.13076070032248727 1.2983884603818135e-15 1.3938665363957896
		0.13076070032248727 1.2983884603818135e-15 1.1323451357508219
		3.702307547910087e-15 1.2983884603818135e-15 1.1323451357508219
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe04_3_1_ikj_ikh" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "733BB6BC-439D-EF1F-C118-5FB096695CB0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8207197219268565 0.14318177052698244 3.1847226037283249 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.3298415711123513 -0.27581293968952619 0.90284647657614359 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "8DACF827-4D32-45AE-B823-0D8466BF69FF";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "8F05AF4D-4AD7-AA5D-0338-99B7485D9FC5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.6405100203173062 16.744161296497722 78.887112396642095 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "6B159CDF-4226-469D-A7BC-B8846EB990F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.63209927406912 -4.2632564145606011e-14 0 ;
	setAttr ".r" -type "double3" 4.3431449133121791e-21 4.2688682312579702e-06 3.4241639783480729e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068351 10.610383260348035 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "9B0980CE-4104-E0F7-EC3A-2982DE954CC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.654603735688667 2.4868995751603507e-14 0 ;
	setAttr ".r" -type "double3" -1.0639466166516323e-20 -7.7068900232406884e-06 -4.4954471550560731e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871598 0 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "EA488950-48D7-921E-7356-2EB265A52C18";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.4551425151122 4.6185277824406512e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 3.2750259512696937e-07 -5.6874492882652831e-06 -2.2160181336306515e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292601 6.1429192907087611 4.6257962827270047 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "4EAF7195-4792-6331-D541-F4ADB8FEABD0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.782206896173964 0.55224344285674754 3.4724006270753023 ;
	setAttr ".r" -type "double3" 1.5038064556071245e-07 -1.8663798619715572e-22 -1.1485414568977835e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "43D7060A-4529-173A-579B-42B162E12657";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9774500664444616 8.659739592076221e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 3.2525771972255725e-07 5.402755510747134e-22 1.5335230208735113e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179522999719 -87.519412399538936 -4.806443329519638 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "6E8D85D4-422F-0379-84DA-778CABB677CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039356172 -1.1546319456101628e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000626 67.847764185927019 36.972456027856765 ;
	setAttr ".radi" 3.061023440929354;
createNode ikEffector -n "effector49" -p "rtLegQd1_ball_ik";
	rename -uid "7DFB7790-479F-5A5D-0717-FE979CF7D611";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector48" -p "rtLegQd1_digit_ik";
	rename -uid "AA3DA386-43B5-2472-E690-66A6991E972B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector47" -p "rtLegQd1_palm_ik";
	rename -uid "3587419F-41E1-0579-D26F-BF85488823D6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector46" -p "rtLegQd1_lwr_ik";
	rename -uid "B6956D01-4881-A89E-8FAF-839AB949344B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "9B3AD9C3-491F-5A7D-F2EB-7F9940151988";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -28.632099274069162 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 3.4011257002536295e-46 -1.5317308436302463e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 68.486370334776169 -24.942365871053223 14.461723033381004 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "EF513CD3-46A9-50D4-89AE-5983E094AA8C";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -59.01611328125 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 -5.9635400277440979e-16 -7.1562480332929135e-15 ;
createNode ikEffector -n "effector50" -p "rtLegQd1_softJ";
	rename -uid "B78D5B77-43A2-EBC1-C006-BB906DD5E642";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "45644D00-4ED2-C3EF-41A8-47BECB5BFC66";
	setAttr ".t" -type "double3" -30.454615597759783 -38.062763101794658 -23.52083896797869 ;
	setAttr ".r" -type "double3" 178.6418344906279 58.477578091599291 81.22611293035979 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "6C40F176-45FF-96DC-B0C4-B989DF0A234A";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 0 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "0C1A0051-4F63-9278-AE78-97981C2D0DBD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "6E78040F-403B-1243-1A79-548EECC3F244";
	setAttr ".t" -type "double3" 0.97427013650034588 -15.522606405532862 0.97922947245187686 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "D88360A0-4889-1572-4407-62998D0E494B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "6E871411-4809-CDE0-4310-AFA1AAFEA132";
	setAttr ".t" -type "double3" -3.3129778471460689 0 14.594530682064686 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "3FB40D7F-4FCD-38CA-0DA8-B8800228AFC3";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "7ECA3A57-49DC-40B2-F171-B2B6D75C6576";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "F03368E3-449E-2D7C-9B7A-4AA0AF75A5E9";
	setAttr ".t" -type "double3" -6.9126955251844109 0 -7.442818373223318 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "4A20937D-4533-4B9C-6F66-08A31F0E7FBD";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "FF7CCAD4-4ABF-FAEE-E04F-1DB1CABE9B3A";
	setAttr ".t" -type "double3" 12.466795531247644 0 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "FB20AE49-4FB1-F5C8-F7B2-E6889E31CC75";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "712EA6BB-4FFC-8C4F-A29B-FBB309561AE1";
	setAttr ".t" -type "double3" -5.2152430432042909 6.6102659766300604 1.9059726826944328 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "FEC6E087-4855-24CC-6452-C39CB5E325BF";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "C66A51C8-485D-DD64-266C-03A401CE2F04";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-6.319565777662262e-17 9.1713480349577967 5.5787378190197603e-16
		-6.104231607656494e-17 9.2065148984485958 0.26711766055018843
		-5.4729044561142951e-17 9.3096184854050676 0.51603167685864459
		-4.4686074937716174e-17 9.4736325589987853 0.7297789918551586
		-3.159782888831131e-17 9.6873797523611547 0.89379314653830522
		-1.6356238888164989e-17 9.9362938092143267 0.99689665240534708
		1.9352131911041303e-32 10.203411469764514 1.0320633537172892
		1.6356238888164989e-17 10.470529130314702 0.99689665240534708
		3.159782888831131e-17 10.719443187167874 0.89379314653830522
		4.4686074937716174e-17 10.933190380530244 0.7297789918551586
		5.4729044561142951e-17 11.097205102839393 0.51603167685864459
		6.104231607656494e-17 11.200308041080433 0.26711766055018843
		6.319565777662262e-17 11.235474904571232 3.0496635488162636e-16
		6.104231607656494e-17 11.200308041080433 -0.26711766055018843
		5.4729044561142951e-17 11.097205102839393 -0.51603167685864459
		4.4686074937716174e-17 10.933190380530244 -0.7297789918551586
		3.159782888831131e-17 10.719443187167874 -0.89379314653830522
		1.6356238888164989e-17 10.470529130314702 -0.99689665240534708
		-4.7280942927567169e-32 10.203411469764514 -1.0320633537172892
		-1.6356238888164989e-17 9.9362938092143267 -0.99689665240534708
		-3.159782888831131e-17 9.6873797523611547 -0.89379314653830522
		-4.4686074937716174e-17 9.4736325589987853 -0.7297789918551586
		-5.4729044561142951e-17 9.3096184854050676 -0.51603167685864459
		-6.104231607656494e-17 9.2065148984485958 -0.26711766055018843
		-6.319565777662262e-17 9.1713480349577967 5.5787378190197603e-16
		0 0 0
		;
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "8DAA2816-45A3-B482-7902-9590EF1015CF";
	setAttr ".t" -type "double3" 1.4476073049300222 -1.869866467271164 -6.5645138369123686 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "BF32C069-42F0-E686-656E-D0B5C9390BA0";
	setAttr ".r" -type "double3" 175.81601812898887 -3.975693351829396e-16 91.926448336073292 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "5A430B9C-4918-F3EB-0BBE-B9A6F3CA7591";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "6F810F32-4097-824E-BC13-1CBA3460D39E";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "113E1B5C-4881-1C10-E69D-689E967BDBE4";
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
		6.0917426888760788 10.203411469764514 0
		5.6560325352867089 12.546216753909091 0
		4.3289401205187694 14.532351590283284 0
		2.3428052841445766 15.859444005051223 0
		0 16.295011310881446 0
		-2.3428052841445766 15.859444005051223 0
		-4.3289401205187694 14.532351590283284 0
		-5.6560325352867089 12.546216753909091 0
		-6.0917426888760788 10.203411181142249 0
		-5.6560325352867089 7.8606061856199378 0
		-4.3289401205187694 5.874471349245745 0
		-2.3428052841445766 4.5473789344778055 0
		2.4326810128360937e-07 4.1118116286475832 -0.041421768788438326
		2.3428052841445766 4.5473789344778055 0
		4.3289401205187694 5.874471349245745 0
		5.6560325352867089 7.8606061856199378 0
		6.0917426888760788 10.203411469764514 0
		5.628034374493657 10.219263326410838 -2.3311570697271757
		4.3075129566465362 10.23270211708234 -4.3074190852619534
		2.3312101274662878 10.241681608849689 -5.6279119335572441
		2.4326810128360937e-07 10.244834871098771 -6.0916080038460265
		-2.3312101274662878 10.241681608849689 -5.6279119335572441
		-4.3075129566465362 10.23270211708234 -4.3074190852619534
		-5.628034374493657 10.219263326410838 -2.3311570697271757
		-6.0917426888760788 10.203411181142249 0
		-5.628034374493657 10.187559041727154 2.3311489069980817
		-4.3075129566465362 10.174120251055653 4.3074150038974057
		-2.3312101274662878 10.165140759288304 5.6279037708281505
		2.4326810128360937e-07 10.161987660293802 6.0915998411169312
		2.3312101274662878 10.165140759288304 5.6279037708281505
		4.3075129566465362 10.174120251055653 4.3074150038974057
		5.628034374493657 10.187559041727154 2.3311489069980817
		6.0917426888760788 10.203411469764514 0
		5.628034374493657 10.219263326410838 -2.3311570697271757
		4.3075129566465362 10.23270211708234 -4.3074190852619534
		2.3312101274662878 10.241681608849689 -5.6279119335572441
		2.4326810128360937e-07 10.244834871098771 -6.0916080038460265
		2.4326810128360937e-07 12.572835413485226 -5.6120558322917908
		2.4326810128360937e-07 14.540114345651855 -4.2781271319074721
		2.4326810128360937e-07 15.84716726049357 -2.2928861143690926
		0 16.295011310881446 0
		2.4326810128360937e-07 15.815463220691758 2.3694239437207116
		2.4326810128360937e-07 14.481534520307438 4.3366987945227926
		2.4326810128360937e-07 12.496297584133607 5.6437557907290561
		2.4326810128360937e-07 10.161987660293802 6.0915998411169312
		2.4326810128360937e-07 7.8339875260438028 5.6120476695626973
		2.4326810128360937e-07 5.866708593877175 4.2781189691783785
		2.4326810128360937e-07 4.5596556790354583 2.2928779516399982
		2.4326810128360937e-07 4.1118116286475832 -0.041421768788438326
		2.4326810128360937e-07 4.5913597188372703 -2.3694321064498061
		2.4326810128360937e-07 5.92528841922159 -4.3367069572518862
		2.4326810128360937e-07 7.9105253553954213 -5.6437639534581505
		2.4326810128360937e-07 10.244834871098771 -6.0916080038460265
		;
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "3DF5A534-49FC-12A0-B2C2-8CBA22BA2C85";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "5F409F12-4BD9-6D33-B6FC-8197EE35CC39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000004 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "17524C33-433E-D296-6451-51AF5639E2D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.55224344285675286 10.782206896173967 -3.4724006270752668 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "6F8F906B-404F-6F8E-DE74-12A0583289F0";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "4F0D82B2-4489-B16A-20B0-8A8861D275C9";
	setAttr ".t" -type "double3" 0.55224344285675286 10.78220689617396 -3.4724006270752668 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "1026A040-4CA1-2668-06A1-CC91DEB7CB79";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "6A59A88B-43B3-D6D9-40CA-24A2A4C78EBA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "18FCE0D2-4B55-A252-8D93-0D91E37E50D1";
	setAttr ".t" -type "double3" -5.2152430432042909 6.6102659766300604 1.9059726826944328 ;
	setAttr ".r" -type "double3" -13.758450835589775 17.532672327095806 85.781365618984069 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "61610FAC-4123-A2C4-5FA4-6C95B095FEF2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -4.8849813083506888e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 14.48249964486503 87.444713791524421 14.676500591330631 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487032 -0.22678088064239166 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "4355CDD7-477A-AC54-596F-50ABAFEDD45A";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -2.1760371282653068e-14 7.1054273576010019e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "80A61C3D-4A5F-3237-91D1-B1B02AD7E994";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "9AE152AB-4D03-C3DA-06A2-9D9E1849A9B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469167934
		-0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0 0.63133608469167934 0
		-0.63133608469167934 0 0
		0 -0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 -0.63133608469167934 0
		0 0 -0.63133608469167934
		;
createNode nurbsCurve -n "rtLegQd1_outRollG_ctlShape1" -p "rtLegQd1_outRollG_ctl";
	rename -uid "4DAF645D-4E41-9769-1C1F-1CA205C5F39E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469167934
		-0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0 0.63133608469167934 0
		-0.63133608469167934 0 0
		0 -0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 -0.63133608469167934 0
		0 0 -0.63133608469167934
		;
createNode nurbsCurve -n "rtLegQd1_toeRollG_ctlShape1" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "D0F93A29-49F2-68DB-9932-9BB3E6BB7BA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469167934
		-0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0 0.63133608469167934 0
		-0.63133608469167934 0 0
		0 -0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 -0.63133608469167934 0
		0 0 -0.63133608469167934
		;
createNode nurbsCurve -n "rtLegQd1_heelRollG_ctlShape1" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "91308524-4E3C-8320-E353-8B800D6CED64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.63133608469167934
		-0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 -0.63133608469167934
		0 0.63133608469167934 0
		-0.63133608469167934 0 0
		0 -0.63133608469167934 0
		0.63133608469167934 0 0
		0 0 0.63133608469167934
		0 -0.63133608469167934 0
		0 0 -0.63133608469167934
		;
createNode transform -n "rtLegQd1_line_53" -p "rtLegQd1_IK";
	rename -uid "5E801ADD-4371-6BAB-8134-28A054DBB40B";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "B27E7F22-44DD-8F29-CC9E-2084632F67E4";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14.367473498162466 48.677303756583456 52.657310329359689
		-22.604483774475312 49.55579890896734 16.53103365375765
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "CB054CC5-40D3-5F8C-B56A-8A8B0D2654C9";
	setAttr ".t" -type "double3" -11.526513579357104 4.7403995093588964 59.044988748859424 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "29E11A9B-4F35-BA95-6509-EAAF0E605D5B";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "6747C6CA-4336-D690-EB30-EFA2B2C7548F";
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
	rename -uid "A429A49F-4E5E-5E96-D4DA-FF8A377B4E85";
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
		7.6525586023233778 -4.7403995093588946 7.6525586023233867
		7.5055168345818872 -4.7403995093588946 9.1454987242979477
		7.0700422640297482 -4.7403995093588946 10.581065994635491
		6.3628699341963273 -4.7403995093588946 11.904092368212348
		5.4111760811303098 -4.7403995093588946 13.063734683453694
		4.2515337658889605 -4.7403995093588946 14.015428536519714
		2.9285073923121039 -4.7403995093588946 14.722600866353135
		1.4929401219745597 -4.7403995093588955 15.158075436905277
		-8.9338640776077983e-16 -4.7403995093588955 15.305117204646765
		-1.4929401219745615 -4.7403995093588955 15.158075436905277
		-2.9285073923121061 -4.7403995093588946 14.722600866353135
		-4.2515337658889631 -4.7403995093588946 14.015428536519714
		-5.4111760811303133 -4.7403995093588946 13.063734683453696
		-6.3628699341963308 -4.7403995093588946 11.90409236821235
		-7.0700422640297527 -4.7403995093588946 10.581065994635491
		-7.5055168345818926 -4.7403995093588946 9.145498724297946
		-7.6525586023233831 -4.7403995093588946 7.6525586023233831
		-7.5055167894500485 -2.4487581021385423 7.6525586023233849
		-7.0700422298562406 -0.21733125922350016 7.6525586023233849
		-6.362870078772473 1.7149479513593491 7.6525586023233849
		-5.4111760797475874 3.2524971205081892 7.6525586023233849
		-4.2515336735047011 4.4103220811181387 7.6525586023233849
		-2.9285072990747461 5.1174942322019064 7.6525586023233849
		-1.4929400891451388 5.5529687917957151 7.6525586023233849
		4.6858407007179026e-16 5.7000106046690497 7.6525586023233849
		1.4929400891451388 5.5529687917957151 7.6525586023233849
		2.9285072990747461 5.1174942322019064 7.6525586023233849
		4.2515336735047011 4.4103220811181387 7.6525586023233849
		5.4111760797475874 3.2524971205081892 7.6525586023233849
		6.362870078772473 1.7149479513593491 7.6525586023233849
		7.0700422298562406 -0.21733125922350016 7.6525586023233849
		7.5055167894500485 -2.4487581021385423 7.6525586023233849
		7.6525586023233849 -4.7403995093588946 7.6525586023233849
		7.6525586023233849 -4.7403995093588964 -7.1934050861839811
		7.6525586023233849 -4.2812459932194917 -7.6525586023233849
		7.5055167894500485 -2.4487581021385423 -7.6525586023233849
		7.0700422298562406 -0.21733125922350016 -7.6525586023233849
		6.362870078772473 1.7149479513593491 -7.6525586023233849
		5.4111760797475874 3.2524971205081892 -7.6525586023233849
		4.2515336735047011 4.4103220811181387 -7.6525586023233849
		2.9285072990747461 5.1174942322019064 -7.6525586023233849
		1.4929400891451388 5.5529687917957151 -7.6525586023233849
		4.6858407007179026e-16 5.7000106046690497 -7.6525586023233849
		-1.4929400891451388 5.5529687917957151 -7.6525586023233849
		-2.9285072990747461 5.1174942322019064 -7.6525586023233849
		-4.2515336735047011 4.4103220811181387 -7.6525586023233849
		-5.4111760797475874 3.2524971205081892 -7.6525586023233849
		-6.362870078772473 1.7149479513593491 -7.6525586023233849
		-7.0700422298562406 -0.21733125922350016 -7.6525586023233849
		-7.5055167894500485 -2.4487581021385423 -7.6525586023233849
		-7.6525586023233849 -4.2812459932194917 -7.6525586023233849
		-7.6525586023233849 -4.7403995093588938 -7.1934050861839811
		-7.6525586023233849 -4.7403995093588946 7.6525586023233849
		;
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "609375EA-4CDA-FCC7-06DF-68B79C0B3B4E";
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
	rename -uid "F3F4A190-457C-8665-4743-E7B78E374CF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.5305117204646752 1.0440410434580825 
		-0.76525584010884273 -1.5011033669163769 1.0440410434580825 -1.0638438645037542 -1.4140084528059491 
		1.0440410434580825 -1.3509573185712629 -1.2725739868392649 1.0440410434580825 -1.6155625932866347 
		-1.0822352162260618 1.0440410434580825 -1.8474910563349045 -0.85030675317779192 1.0440410434580825 
		-2.0378298269481085 -0.5857014784624206 1.0440410434580825 -2.1792642929147927 -0.29858802439491194 
		1.0440410434580825 -2.2663592070252196 1.7867728155215589e-16 1.0440410434580825 
		-2.2957675605735179 0.29858802439491217 1.0440410434580825 -2.2663592070252196 0.58570147846242104 
		1.0440410434580825 -2.1792642929147927 0.85030675317779236 1.0440410434580825 -2.0378298269481085 
		1.0822352162260627 1.0440410434580825 -1.8474910563349045 1.2725739868392658 1.0440410434580825 
		-1.6155625932866347 1.41400845280595 1.0440410434580825 -1.3509573185712629 1.5011033669163778 
		1.0440410434580825 -1.0638438645037542 1.5305117204646761 1.0440410434580825 -0.76525584010884096 
		1.5011033578900097 0.58571276201401212 -0.76525584010884273 1.4140084459712474 0.13942739343100372 
		-0.76525584010884273 1.2725740157544942 -0.24702844868556606 -0.76525584010884273 
		1.0822352159495177 -0.55453828251533421 -0.76525584010884273 0.85030673470093987 
		-0.78610327463732421 -0.76525584010884273 0.58570145981494903 -0.92753770485407738 
		-0.76525584010884273 0.29858801782902766 -1.0146326167728397 -0.76525584010884273 
		-9.3716814014358042e-17 -1.0440409793475061 -0.76525584010884273 -0.29858801782902766 
		-1.0146326167728397 -0.76525584010884273 -0.58570145981494903 -0.92753770485407738 
		-0.76525584010884273 -0.85030673470093987 -0.78610327463732421 -0.76525584010884273 
		-1.0822352159495177 -0.55453828251533421 -0.76525584010884273 -1.2725740157544942 
		-0.24702844868556606 -0.76525584010884273 -1.4140084459712474 0.13942739343100372 
		-0.76525584010884273 -1.5011033578900097 0.58571276201401212 -0.76525584010884273 
		-1.530511720464677 1.0440410434580825 -0.76525584010884273 -1.530511720464677 1.0440410434580825 
		2.2039368975926301 -1.530511720464677 0.95221034023020179 2.2957676008205112 -1.5011033578900097 
		0.58571276201401212 2.2957676008205112 -1.4140084459712474 0.13942739343100372 2.2957676008205112 
		-1.2725740157544942 -0.24702844868556606 2.2957676008205112 -1.0822352159495177 -0.55453828251533421 
		2.2957676008205112 -0.85030673470093987 -0.78610327463732421 2.2957676008205112 -0.58570145981494903 
		-0.92753770485407738 2.2957676008205112 -0.29858801782902766 -1.0146326167728397 
		2.2957676008205112 -9.3716814014358042e-17 -1.0440409793475061 2.2957676008205112 
		0.29858801782902766 -1.0146326167728397 2.2957676008205112 0.58570145981494903 -0.92753770485407738 
		2.2957676008205112 0.85030673470093987 -0.78610327463732421 2.2957676008205112 1.0822352159495177 
		-0.55453828251533421 2.2957676008205112 1.2725740157544942 -0.24702844868556606 2.2957676008205112 
		1.4140084459712474 0.13942739343100372 2.2957676008205112 1.5011033578900097 0.58571276201401212 
		2.2957676008205112 1.530511720464677 0.95221034023020179 2.2957676008205112 1.530511720464677 
		1.044041043458082 2.2039368975926301 1.530511720464677 1.0440410434580825 -0.76525584010884273;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "7AE44213-451B-8291-25D2-90B8F3FE6840";
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
		7.6525586023233778 -4.7403995093588946 7.6525586023233867
		7.5055168345818872 -4.7403995093588946 9.1454987242979477
		7.0700422640297482 -4.7403995093588946 10.581065994635491
		6.3628699341963273 -4.7403995093588946 11.904092368212348
		5.4111760811303098 -4.7403995093588946 13.063734683453694
		4.2515337658889605 -4.7403995093588946 14.015428536519714
		2.9285073923121039 -4.7403995093588946 14.722600866353135
		1.4929401219745597 -4.7403995093588955 15.158075436905277
		-8.9338640776077983e-16 -4.7403995093588955 15.305117204646765
		-1.4929401219745615 -4.7403995093588955 15.158075436905277
		-2.9285073923121061 -4.7403995093588946 14.722600866353135
		-4.2515337658889631 -4.7403995093588946 14.015428536519714
		-5.4111760811303133 -4.7403995093588946 13.063734683453696
		-6.3628699341963308 -4.7403995093588946 11.90409236821235
		-7.0700422640297527 -4.7403995093588946 10.581065994635491
		-7.5055168345818926 -4.7403995093588946 9.145498724297946
		-7.6525586023233831 -4.7403995093588946 7.6525586023233831
		-7.5055167894500485 -2.4487581021385423 7.6525586023233849
		-7.0700422298562406 -0.21733125922350016 7.6525586023233849
		-6.362870078772473 1.7149479513593491 7.6525586023233849
		-5.4111760797475874 3.2524971205081892 7.6525586023233849
		-4.2515336735047011 4.4103220811181387 7.6525586023233849
		-2.9285072990747461 5.1174942322019064 7.6525586023233849
		-1.4929400891451388 5.5529687917957151 7.6525586023233849
		4.6858407007179026e-16 5.7000106046690497 7.6525586023233849
		1.4929400891451388 5.5529687917957151 7.6525586023233849
		2.9285072990747461 5.1174942322019064 7.6525586023233849
		4.2515336735047011 4.4103220811181387 7.6525586023233849
		5.4111760797475874 3.2524971205081892 7.6525586023233849
		6.362870078772473 1.7149479513593491 7.6525586023233849
		7.0700422298562406 -0.21733125922350016 7.6525586023233849
		7.5055167894500485 -2.4487581021385423 7.6525586023233849
		7.6525586023233849 -4.7403995093588946 7.6525586023233849
		7.6525586023233849 -4.7403995093588964 -7.1934050861839811
		7.6525586023233849 -4.2812459932194917 -7.6525586023233849
		7.5055167894500485 -2.4487581021385423 -7.6525586023233849
		7.0700422298562406 -0.21733125922350016 -7.6525586023233849
		6.362870078772473 1.7149479513593491 -7.6525586023233849
		5.4111760797475874 3.2524971205081892 -7.6525586023233849
		4.2515336735047011 4.4103220811181387 -7.6525586023233849
		2.9285072990747461 5.1174942322019064 -7.6525586023233849
		1.4929400891451388 5.5529687917957151 -7.6525586023233849
		4.6858407007179026e-16 5.7000106046690497 -7.6525586023233849
		-1.4929400891451388 5.5529687917957151 -7.6525586023233849
		-2.9285072990747461 5.1174942322019064 -7.6525586023233849
		-4.2515336735047011 4.4103220811181387 -7.6525586023233849
		-5.4111760797475874 3.2524971205081892 -7.6525586023233849
		-6.362870078772473 1.7149479513593491 -7.6525586023233849
		-7.0700422298562406 -0.21733125922350016 -7.6525586023233849
		-7.5055167894500485 -2.4487581021385423 -7.6525586023233849
		-7.6525586023233849 -4.2812459932194917 -7.6525586023233849
		-7.6525586023233849 -4.7403995093588938 -7.1934050861839811
		-7.6525586023233849 -4.7403995093588946 7.6525586023233849
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "2AA1D782-4DA1-EABC-B9B8-B7BE7DFD1748";
	setAttr ".t" -type "double3" -1.7864642677889648 -4.7403995093588964 12.101359527441275 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "8500E64A-46CB-BFC8-9ACC-FD9071268EFE";
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
	rename -uid "9F765258-42EA-8105-B029-E69646C2B651";
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
		3.5209293976298426 7.2267154583695355e-17 -3.5209293976298466
		1.9494171783713672e-16 1.0220119012637507e-16 -3.1836398539213522
		-3.5209293976298426 7.2267154583695318e-17 -3.5209293976298444
		-3.1836398539213615 -4.1711641440834891e-32 -1.2361987213129648e-15
		-3.5209293976298426 -7.2267154583695343e-17 3.5209293976298426
		-3.189073815582979e-16 -1.0220119012637517e-16 3.1836398539213553
		3.5209293976298426 -7.2267154583695318e-17 3.5209293976298444
		3.1836398539213615 -6.0946909396923664e-32 -6.3700642629039552e-16
		3.5209293976298426 7.2267154583695355e-17 -3.5209293976298466
		1.9494171783713672e-16 1.0220119012637507e-16 -3.1836398539213522
		-3.5209293976298426 7.2267154583695318e-17 -3.5209293976298444
		;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "35C40B6D-48EA-7C5E-DD53-328ADBE7D673";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "C8B2B1E7-4E91-5FA7-FC2B-62A36B2E7199";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 5.0888874903416268e-14 1.1286641353993406e-29 2.8216603384983552e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.200780985113795 -1.9040497044281761 -91.762240751753822 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "350DE266-4741-7D03-6E59-D1BFF3A85F0F";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -96.110222499893524 -2.1316282072803006e-14 -5.3290705182007514e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.0406822939529028;
createNode ikEffector -n "effector52" -p "rtLegQd1_legLock";
	rename -uid "97493863-4641-6423-CE10-03A7A435F272";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "4CB7932D-4B27-A134-9484-B68E210A7951";
	setAttr ".t" -type "double3" -22.604483774475312 49.55579890896734 16.531033653757653 ;
	setAttr ".r" -type "double3" -1.3581655093720539 -167.15578659449045 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "EA16C6D7-4F57-DF2D-DF26-F4BA5C5D00F2";
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "B88EAAB5-4D0A-5DCF-E8C9-2CB0CC7FB912";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "F92C983D-433F-DC8F-97E4-62B608C26599";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 2.5253443387667174
		-2.5253443387667174 0 0
		0 0 -2.5253443387667174
		2.5253443387667174 0 0
		0 0 2.5253443387667174
		0 2.5253443387667174 0
		2.5253443387667174 0 0
		0 0 -2.5253443387667174
		0 2.5253443387667174 0
		-2.5253443387667174 0 0
		0 -2.5253443387667174 0
		2.5253443387667174 0 0
		0 0 2.5253443387667174
		0 -2.5253443387667174 0
		0 0 -2.5253443387667174
		;
createNode transform -n "rtLegQd1_extraRollG_ofs_loc" -p "rtLegQd1_IK";
	rename -uid "A2F78CA5-454E-680D-2B86-DBBED1166712";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 13.967066537180747 -155.55683908077233 -91.161364358071907 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "8E6C8315-4498-C637-F83B-D2919A156E25";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "434FCF29-4482-7E49-18F2-4D8A2098F406";
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
	rename -uid "88E2E906-487E-0BD9-02A4-E38488551EB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-5.1017057348822572 5.1017057348822572 1.2700686856249421e-16
		-5.003677859633366 5.1017057348822572 -0.99529339276342588
		-4.7133614865708271 5.1017057348822572 -1.9523383210173073
		-4.2419133858483153 5.1017057348822572 -2.8343557823364676
		-3.6074507198317249 5.1017057348822572 -3.6074507198317249
		-2.8343557823364676 5.1017057348822572 -4.2419133858483153
		-1.9523383210173073 5.1017057348822572 -4.7133614865708271
		-0.99529339276342588 5.1017057348822572 -5.003677859633366
		3.1238938004786019e-16 5.1017057348822572 -5.1017057348822572
		0.99529339276342588 5.1017057348822572 -5.003677859633366
		1.9523383210173073 5.1017057348822572 -4.7133614865708271
		2.8343557823364676 5.1017057348822572 -4.2419133858483153
		3.6074507198317249 5.1017057348822572 -3.6074507198317249
		4.2419133858483153 5.1017057348822572 -2.8343557823364676
		4.7133614865708271 5.1017057348822572 -1.9523383210173073
		5.003677859633366 5.1017057348822572 -0.99529339276342588
		5.1017057348822572 5.1017057348822572 -5.5180917943392538e-16
		4.9075338539948286 5.1017057348822572 -0.97616909969158205
		4.3545782273569911 5.1017057348822572 -1.8037253599158625
		3.5270218454985671 5.1017057348822572 -2.3566807432854135
		2.5508528674411286 5.1017057348822572 -2.5508528674411286
		1.5746837677495464 5.1017057348822572 -2.3566807432854135
		0.74712750752526602 5.1017057348822572 -1.8037253599158625
		0.19417212415571475 5.1017057348822572 -0.97616909969158205
		0 5.1017057348822572 -5.5180917943392538e-16
		-0.19417212415571475 5.1017057348822572 0.97616909969158205
		-0.74712750752526602 5.1017057348822572 1.8037253599158625
		-1.5746837677495464 5.1017057348822572 2.3566807432854135
		-2.5508528674411286 5.1017057348822572 2.5508528674411286
		-3.5270218454985671 5.1017057348822572 2.3566807432854135
		-4.3545782273569911 5.1017057348822572 1.8037253599158625
		-4.9075338539948286 5.1017057348822572 0.97616909969158205
		-5.1017057348822572 5.1017057348822572 1.2700686856249421e-16
		-5.003677859633366 5.1017057348822572 0.99529339276342588
		-4.7133614865708271 5.1017057348822572 1.9523383210173073
		-4.2419133858483153 5.1017057348822572 2.8343557823364676
		-3.6074507198317249 5.1017057348822572 3.6074507198317249
		-2.8343557823364676 5.1017057348822572 4.2419133858483153
		-1.9523383210173073 5.1017057348822572 4.7133614865708271
		-0.99529339276342588 5.1017057348822572 5.003677859633366
		-5.9559093863428457e-16 5.1017057348822572 5.1017057348822572
		0.99529339276342588 5.1017057348822572 5.003677859633366
		1.9523383210173073 5.1017057348822572 4.7133614865708271
		2.8343557823364676 5.1017057348822572 4.2419133858483153
		3.6074507198317249 5.1017057348822572 3.6074507198317249
		4.2419133858483153 5.1017057348822572 2.8343557823364676
		4.7133614865708271 5.1017057348822572 1.9523383210173073
		5.003677859633366 5.1017057348822572 0.99529339276342588
		5.1017057348822572 5.1017057348822572 -5.5180917943392538e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe01_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "59E79B49-4DA5-D48D-B34E-6C982B22F2CC";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe01_4_ctl" -p "rtLegQd1_toe01_4_ctl_ofs";
	rename -uid "2BDC44D2-47EC-BCD4-E4D5-248EC97B7AEF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_4_ctlShape1" -p "rtLegQd1_toe01_4_ctl";
	rename -uid "75E62EEE-4681-5F01-4B8A-96975AB82F09";
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
		-1.5854072405480762e-16 0.43589988805324581 0.43589988805325031
		-1.6224663271370312e-16 -3.5285794053216521e-15 0.39414259679855046
		-1.5854072405480762e-16 -0.43589988805325292 0.43589988805325003
		-1.4959386910958632e-16 -0.39414259679855473 6.1583294491915907e-16
		-1.4064701416436502e-16 -0.43589988805325292 -0.43589988805324892
		-1.3694110550546951e-16 -3.5921952122882768e-15 -0.39414259679854996
		-1.4064701416436502e-16 0.43589988805324581 -0.43589988805324914
		-1.4959386910958632e-16 0.39414259679854757 5.4165143633834816e-16
		-1.5854072405480762e-16 0.43589988805324581 0.43589988805325031
		-1.6224663271370312e-16 -3.5285794053216521e-15 0.39414259679855046
		-1.5854072405480762e-16 -0.43589988805325292 0.43589988805325003
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe02_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "9117A13F-41D2-6B44-3A45-5E87DD622A5F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_4_ctl" -p "rtLegQd1_toe02_4_ctl_ofs";
	rename -uid "3EDF146E-4AB1-B82E-CD20-A68D21408124";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_4_ctlShape1" -p "rtLegQd1_toe02_4_ctl";
	rename -uid "6F85BD84-470E-4971-0BAB-4DB22B7437B0";
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
		-7.4394172680665331e-17 0.43589988805324781 0.43589988805325081
		-7.8100081339560808e-17 -1.5301779609963707e-15 0.39414259679855096
		-7.4394172680665331e-17 -0.43589988805325092 0.43589988805325053
		-6.5447317735444003e-17 -0.39414259679855268 1.0786213884079198e-15
		-5.65004627902227e-17 -0.43589988805325092 -0.43589988805324842
		-5.2794554131327199e-17 -1.593793767962995e-15 -0.39414259679854946
		-5.65004627902227e-17 0.43589988805324781 -0.43589988805324864
		-6.5447317735444003e-17 0.39414259679854963 1.0044398798271089e-15
		-7.4394172680665331e-17 0.43589988805324781 0.43589988805325081
		-7.8100081339560808e-17 -1.5301779609963707e-15 0.39414259679855096
		-7.4394172680665331e-17 -0.43589988805325092 0.43589988805325053
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe03_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "93A0E935-47D5-1513-B309-AA872BE083E4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_4_ctl" -p "rtLegQd1_toe03_4_ctl_ofs";
	rename -uid "4FDD6989-4200-AA6C-1F83-DA8F0AD1CF84";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_4_ctlShape1" -p "rtLegQd1_toe03_4_ctl";
	rename -uid "87F41861-495C-720D-917C-FDAF459D79A7";
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
		-8.3743789500014475e-17 0.43589988805324759 0.43589988805324986
		-8.7449698158909951e-17 -1.7522225659214018e-15 0.39414259679855002
		-8.3743789500014475e-17 -0.43589988805325114 0.43589988805324958
		-7.4796934554793147e-17 -0.3941425967985529 1.5304450143039816e-16
		-6.5850079609571844e-17 -0.43589988805325114 -0.43589988805324936
		-6.2144170950676342e-17 -1.8158383728880263e-15 -0.3941425967985504
		-6.5850079609571844e-17 0.43589988805324759 -0.43589988805324958
		-7.4796934554793147e-17 0.3941425967985494 7.8862992849587265e-17
		-8.3743789500014475e-17 0.43589988805324759 0.43589988805324986
		-8.7449698158909951e-17 -1.7522225659214018e-15 0.39414259679855002
		-8.3743789500014475e-17 -0.43589988805325114 0.43589988805324958
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe04_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "E7D261E5-4025-153D-F40D-2FA97205158F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe04_4_ctl" -p "rtLegQd1_toe04_4_ctl_ofs";
	rename -uid "BE3B7E08-4544-22F1-4D2A-B8B2107A2142";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_4_ctlShape1" -p "rtLegQd1_toe04_4_ctl";
	rename -uid "B5CCB96F-4AB4-C3F1-FDDF-49959C5BCFF2";
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
		-1.7723995769350593e-16 0.43589988805324537 0.43589988805324986
		-1.8094586635240141e-16 -3.9726686151717147e-15 0.39414259679855002
		-1.7723995769350593e-16 -0.43589988805325336 0.43589988805324958
		-1.682931027482846e-16 -0.39414259679855518 1.5304450143039816e-16
		-1.593462478030633e-16 -0.43589988805325336 -0.43589988805324936
		-1.556403391441678e-16 -4.0362844221383394e-15 -0.3941425967985504
		-1.593462478030633e-16 0.43589988805324537 -0.43589988805324958
		-1.682931027482846e-16 0.39414259679854713 7.8862992849587265e-17
		-1.7723995769350593e-16 0.43589988805324537 0.43589988805324986
		-1.8094586635240141e-16 -3.9726686151717147e-15 0.39414259679855002
		-1.7723995769350593e-16 -0.43589988805325336 0.43589988805324958
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "E3281007-4642-84DB-4997-3594809563EA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "1FDF06B3-4752-CC28-B021-F79928EE83D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5.0528316988413273 5.0528316988413273 5.0528316988413273 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "23D5703E-4DB5-77A1-3A1E-0FBD1A60D506";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "6252CBB5-4C38-F870-E0F9-51BE9FF35E4B";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 94.623592201811164 -30.817548829712091 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "9DA1A4C0-4A1A-0A9A-3D92-8393945A6C5D";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "8F9D06B9-4792-A966-942E-BF815633AC0E";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "FB0DF557-4483-00C0-648E-7F81AFAC5E13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		2.2972209986521723 50.538861970347789 9.1888839946086893
		2.2972209986521723 56.700198058911724 9.1888839946086893
		2.2972209986521723 59.727745964956476 -9.1888839946086893
		2.2972209986521723 50.538861970347789 -9.1888839946086893
		2.2972209986521723 50.538861970347789 9.1888839946086893
		-2.2972209986521723 50.538861970347789 9.1888839946086893
		-2.2972209986521723 50.538861970347789 -9.1888839946086893
		2.2972209986521723 50.538861970347789 -9.1888839946086893
		2.2972209986521723 59.727745964956476 -9.1888839946086893
		-2.2972209986521723 59.727745964956476 -9.1888839946086893
		-2.2972209986521723 50.538861970347789 -9.1888839946086893
		-2.2972209986521723 59.727745964956476 -9.1888839946086893
		-2.2972209986521723 56.700198058911724 9.1888839946086893
		-2.2972209986521723 50.538861970347789 9.1888839946086893
		2.2972209986521723 50.538861970347789 9.1888839946086893
		2.2972209986521723 56.700198058911724 9.1888839946086893
		-2.2972209986521723 56.700198058911724 9.1888839946086893
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "59AF9EE4-4666-A373-6C15-B79140F12251";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 -1.0859365472058471 16.828146094069876 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "562CACCF-45E9-D900-872F-AFBEBC09290F";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "B753DD73-4DEF-A952-7656-D399F906659C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.601548953856842 41.677876366957605 -27.287669111605041
		1.870599214065981e-15 50.625530911911433 -27.287669111605041
		-21.601548953856842 41.677876366957591 -27.287669111605041
		-30.549203498810691 1.5836761039634275e-15 9.6972193580248112e-32
		-21.601548953856842 -21.601548953856842 -1.3227133891482818e-15
		-3.0601346080328217e-15 -30.549203498810694 -1.8705992140659822e-15
		21.601548953856842 -21.601548953856838 -1.3227133891482818e-15
		30.549203498810691 -4.1659840948864158e-15 -2.550929543550716e-31
		21.601548953856842 41.677876366957605 -27.287669111605041
		1.870599214065981e-15 50.625530911911433 -27.287669111605041
		-21.601548953856842 41.677876366957591 -27.287669111605041
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "30A9A8D9-4839-C5D8-E29B-A5AC37D67E7E";
	setAttr ".t" -type "double3" 5.4561850914083838e-14 1.0859365472058471 -16.82814609406989 ;
	setAttr ".r" -type "double3" 4.5740346502335214 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "4576944A-4215-43E8-C61E-049224502492";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "9064D9C8-4E0F-244B-97CA-22B87F8E3ECF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-6.5355754184028295e-07 4.3915130451510018 -0.93968185973805773
		-7.9702553405904575e-07 4.6925265203234021 -1.7261293437285048
		-8.4040626984687552e-07 4.3194572938400908 -2.3008900112092063
		-7.7559291633009654e-07 3.8829425771891661 -2.4673453310465674
		-6.8427881339736917e-07 3.2679466290506824 -2.4733703231208271
		2.8333646856667202e-07 -3.2488948162353877 -2.5372153575936367
		3.7465057150101151e-07 -3.8638907643738265 -2.5432403496678493
		4.3946392491477355e-07 -4.3004054810247716 -2.385337924255476
		5.9645949491735727e-07 -4.6925265203234021 -1.8007064106909807
		6.5336780836010184e-07 -4.4105648579663077 -1.009626435410085
		8.404062700442001e-07 -0.80749282991962001 3.9121720672257583
		8.0031074194444056e-07 -0.40477425346948392 4.3193254060093622
		7.5218751581744291e-07 -0.0014280954456520004 4.4863812541650319
		6.5392818938770263e-07 0.40583755386057463 4.3289838671959338
		5.4764116493652175e-07 0.81373078474056193 3.931488989598928
		-6.5355754184028295e-07 4.3915130451510018 -0.93968185973805773
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "E6FFA6C1-4FC1-E2B6-3D01-DDBC9C26B0C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 4.5740346502335214 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -4.5740346502335214 0 0 ;
	setAttr ".radi" 3.6755535978434755;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "1FADDDF9-459D-B669-F0C6-1EB7103C60F0";
	setAttr ".t" -type "double3" 0 -0.20333428467833414 -21.224347920680884 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "6DFA1776-44C3-83DA-28F7-F8B43F07ECD4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "CB84D095-4CB0-7170-EE6E-85AC9EC9DE49";
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
		0 19.282206649731474 -3.7141854747459657
		3.4104974484108386 18.856510378521431 -6.2762912472200139
		2.1126950859320441 18.856510378521431 -6.2762912472200139
		2.1126950859320441 18.577919504901384 -7.8847332432951784
		2.1126950859320441 17.920965473734963 -9.5865702992477697
		2.1126950859320441 17.011769337537615 -11.350670728451979
		2.1126950859320441 15.912594469560975 -12.924792425876891
		2.1126950859320441 14.466188130663749 -14.466188130663753
		2.1126950859320441 12.924792425876888 -15.912594469560981
		2.1126950859320441 11.350670728451973 -17.011769337537618
		2.1126950859320441 9.5865702992477644 -17.920965473734963
		2.1126950859320441 7.8847332432951722 -18.577919504901388
		2.1126950859320441 6.2762912472200068 -18.856510378521435
		3.4104974484108386 6.2762912472200068 -18.856510378521435
		0 3.7141854747459608 -19.282206649731474
		-3.4104974484108386 6.2762912472200068 -18.856510378521435
		-2.1126950859320441 6.2762912472200068 -18.856510378521435
		-2.1126950859320441 7.8847332432951722 -18.577919504901388
		-2.1126950859320441 9.5865702992477644 -17.920965473734963
		-2.1126950859320441 11.350670728451973 -17.011769337537618
		-2.1126950859320441 12.924792425876888 -15.912594469560981
		-2.1126950859320441 14.466188130663749 -14.466188130663753
		-2.1126950859320441 15.912594469560975 -12.924792425876891
		-2.1126950859320441 17.011769337537615 -11.350670728451979
		-2.1126950859320441 17.920965473734963 -9.5865702992477697
		-2.1126950859320441 18.577919504901384 -7.8847332432951784
		-2.1126950859320441 18.856510378521431 -6.2762912472200139
		-3.4104974484108386 18.856510378521431 -6.2762912472200139
		0 19.282206649731474 -3.7141854747459657
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "2EB54D8B-4B46-DFDC-41C4-61B753904772";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 5.4537835835963278e-14 1.0859365472058471 -16.828146094069876 ;
	setAttr ".r" -type "double3" 4.5740346502335214 -1.440253205263757e-16 2.5411493985078025e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 18.377767989217379;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "E1A90B42-426C-12FF-FB08-089A7214C058";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.0985122157162783e-14 2.128052552651738 91.649475757216749 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 18.377767989217379;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "F412F453-4A42-6558-0850-278405C33B50";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.5365460042555398e-14 1.1815521929421919 -45.872435056453796 ;
	setAttr ".r" -type "double3" -0.4485644055515286 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "B6066FB1-4DAC-62AF-B414-25B971182CC8";
	setAttr -k off ".v";
createNode ikEffector -n "effector62" -p "spineQd0_two_ikj";
	rename -uid "F3DA795C-4B21-8A50-15BC-78974AA16EFA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "0A00B7C4-47E9-E871-4E13-16B2CB243633";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8918173721355893e-14 0.73441000924623268 29.067031953133263 ;
	setAttr ".r" -type "double3" 4.1254702446819911 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "D4FD2DAB-4ED2-57C9-F380-C8BAF10E7883";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "FF327069-4A8C-8DE0-FAFE-45BAC5FE470F";
	setAttr ".t" -type "double3" -2.5619662114607385e-14 -0.35152653795961442 45.895178047203139 ;
	setAttr ".r" -type "double3" 4.1254702446819911 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "40BE21A4-4680-AFB7-B8D5-0DA8E88DA301";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "05C35E9E-4E2A-905C-3D1F-42B6BC5809CD";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 2.6645352591003757e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "6A33F5FD-4891-31E6-1B79-40A1B54C3A8A";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "6543364E-4CD1-3885-4514-16BE8B7C4448";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.601548953856842 21.601548953856845 1.322713389148282e-15
		1.870599214065981e-15 30.549203498810677 1.870599214065981e-15
		-21.601548953856842 21.601548953856838 1.3227133891482818e-15
		-30.549203498810691 1.5836761039634275e-15 9.6972193580248112e-32
		-21.601548953856842 -21.601548953856842 -1.3227133891482818e-15
		-3.0601346080328217e-15 -30.549203498810694 -1.8705992140659822e-15
		21.601548953856842 -21.601548953856838 -1.3227133891482818e-15
		30.549203498810691 -4.1659840948864158e-15 -2.550929543550716e-31
		21.601548953856842 21.601548953856845 1.322713389148282e-15
		1.870599214065981e-15 30.549203498810677 1.870599214065981e-15
		-21.601548953856842 21.601548953856838 1.3227133891482818e-15
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "0D50AD90-4E79-841A-5929-8C9D453673E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 4.1254702446819911 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -4.1254702446819911 0 0 ;
	setAttr ".radi" 3.6755535978434755;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A915EE70-4C3F-0323-1350-27AB9575A047";
	setAttr ".t" -type "double3" -5.098512215716277e-14 -5.1875136540454463 91.527289462370732 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "74E5BAEF-45F7-B341-5883-639D62B46C70";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "60546D2B-4BFF-E9A7-BF69-7096CE60E763";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.601548953856842 48.798619963127962 -17.74790649863651
		1.870599214065981e-15 57.74627450808179 -17.74790649863651
		-21.601548953856842 48.798619963127948 -17.74790649863651
		-30.549203498810691 1.5836761039634275e-15 9.6972193580248112e-32
		-21.601548953856842 -21.601548953856842 -1.3227133891482818e-15
		-3.0601346080328217e-15 -30.549203498810694 -1.8705992140659822e-15
		21.601548953856842 -21.601548953856838 -1.3227133891482818e-15
		30.549203498810691 -4.1659840948864158e-15 -2.550929543550716e-31
		21.601548953856842 48.798619963127962 -17.74790649863651
		1.870599214065981e-15 57.74627450808179 -17.74790649863651
		-21.601548953856842 48.798619963127948 -17.74790649863651
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "74D4112D-4F0D-B340-978C-898539759218";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "9155242E-4ABA-38D0-37DF-CC9062D3968C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "83473B54-4351-A68D-4F5D-80961E77DA97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-6.5355754184028295e-07 -4.3915130451510018 0.9396818597380584
		-7.9702553405904575e-07 -4.6925265203234021 1.7261293437285055
		-8.4040626984687552e-07 -4.3194572938400908 2.3008900112092063
		-7.7559291633009654e-07 -3.8829425771891661 2.4673453310465678
		-6.8427881339736917e-07 -3.267946629050682 2.4733703231208275
		2.8333646856667202e-07 3.2488948162353881 2.5372153575936363
		3.7465057150101151e-07 3.8638907643738265 2.5432403496678488
		4.3946392491477355e-07 4.3004054810247716 2.3853379242554755
		5.9645949491735727e-07 4.6925265203234021 1.8007064106909803
		6.5336780836010184e-07 4.4105648579663077 1.0096264354100843
		8.404062700442001e-07 0.80749282991961957 -3.9121720672257583
		8.0031074194444056e-07 0.40477425346948342 -4.3193254060093622
		7.5218751581744291e-07 0.001428095445651451 -4.4863812541650319
		6.5392818938770263e-07 -0.40583755386057518 -4.3289838671959338
		5.4764116493652175e-07 -0.81373078474056248 -3.931488989598928
		-6.5355754184028295e-07 -4.3915130451510018 0.9396818597380584
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "598F47EA-4518-DD41-B8E8-E88BE06FE610";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.6755535978434755;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "8AFC4B87-4359-A550-6CE9-12ABB3F4A330";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2621774483536189e-29 0 0 ;
	setAttr ".r" -type "double3" 4.5740346502334921 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "963AC84C-448B-93B3-288A-FE8F3C5CC699";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "98418931-4FD5-2E15-516E-80A735C7FCF7";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "D6A6B0CB-4889-776E-2EEF-39BD11EF3651";
	setAttr ".t" -type "double3" 1.1032280232588224e-14 -0.24103887334587171 4.1209278674570413 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "3501132D-49EC-3018-5E12-FAB788C9DAD6";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9E5A8F14-48D4-DD96-8B07-D6986D3A42F7";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 9.7891160173532796 129.42919180078283 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "21BFF9A5-4FBA-62D1-347C-1FAD53E0A6D0";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "2A088A7E-4438-2EB5-D940-0AAB68F7BC15";
	setAttr ".t" -type "double3" 11.526513579355923 -89.883192692453406 -13.840992324505844 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "90900B1C-40EE-F016-CFAB-48ADBBE4EA5E";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "45239277-4594-14C7-EB83-F6BC1BDBFF10";
	setAttr ".t" -type "double3" 17.032164269784499 -42.773567218151605 28.215500178221774 ;
	setAttr ".r" -type "double3" 0.076510975842926252 8.3542899897748786 6.9599418124260285e-06 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "4F471EB7-4707-2FA3-16A9-7EAAB26A7AC0";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "7112477F-463B-591E-71D7-7F87E994AFDE";
	setAttr ".t" -type "double3" 11.526513579355946 -89.883192692453378 89.862537578571519 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "2B2135BC-40BB-3A31-199D-22A2D36B4A47";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "61C989C0-4358-D01B-9C69-E4B211F99795";
	setAttr ".t" -type "double3" 22.604483774476218 -45.067793292843852 47.348582483469976 ;
	setAttr ".r" -type "double3" 178.64183292099816 12.844213242294011 179.99999293916679 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "9FA8611A-45A4-314B-777B-5A9F6E444D53";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A8BB4B4F-4057-D0E1-183F-519F5243AA47";
	setAttr ".t" -type "double3" -5.6314192675363522e-14 8.259592689836353 121.47893259861311 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "24CDDE7B-4627-8D7E-2B2A-14A2A610FAC1";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D72FA959-409D-B581-F9B5-A5A95E1D828B";
	setAttr ".t" -type "double3" -3.995284192457455e-14 -5.428552527391318 95.648217329827773 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "A8A64F9A-4347-803A-3AF1-5698C23CC1FA";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "0CCBE75A-4537-2453-97DE-74B38DF90151";
	setAttr ".t" -type "double3" -11.526513579357127 -89.883192692452241 -13.840992324505894 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "B74CD495-443D-3185-EB9C-A5836B5BCEA6";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A1B00EE1-437D-7D4E-9E70-D09D68B13B73";
	setAttr ".t" -type "double3" -17.032164269785614 -42.773567218151598 28.215500178221621 ;
	setAttr ".r" -type "double3" 0.076509964608046419 -8.3542899989706747 7.8483079128725893e-19 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "0571B5F6-4B16-EF8F-8477-73B2B479FD42";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "79D90D60-457D-2794-2512-C4BC386EECC9";
	setAttr ".t" -type "double3" -11.526513579357159 -89.883192692452269 89.862537578571519 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "978B537B-43AB-B494-9398-9BA97498EE8F";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8984A910-400C-1AF9-3C79-7BB74476254F";
	setAttr ".t" -type "double3" -22.604483774475366 -45.067793292843824 47.348582483469741 ;
	setAttr ".r" -type "double3" 178.64183449062796 -12.844213405509567 180 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "DA1A2281-4838-E6E3-F6E8-4C95E98B675E";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
createNode joint -n "spineQd0_end" -p "spineQd0_IK";
	rename -uid "FDEB4AD1-4267-C180-BB3E-169D0F5ACF99";
	addAttr -ci true -sn "proxyRatio" -ln "proxyRatio" -dv 4 -at "double";
	setAttr -cb on ".ro";
	setAttr ".radi" 1.8377767989217377;
	setAttr -cb on ".proxyRatio";
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "5413EA8E-4942-D50F-64D5-358B936A49B7";
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
	rename -uid "46AD56E8-441C-DABF-54E7-F7827D89A664";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-6.8916629959565165 9.1888839946086893 1.7156782099755021e-16
		-6.7592415832894028 9.1888839946086893 -1.344496723542606
		-6.3670663561540071 9.1888839946086893 -2.6373253303394182
		-5.7302084895686649 9.1888839946086893 -3.8288027333576564
		-4.8731416368480094 9.1888839946086893 -4.8731416368480094
		-3.8288027333576564 9.1888839946086893 -5.7302084895686649
		-2.6373253303394182 9.1888839946086893 -6.3670663561540071
		-1.344496723542606 9.1888839946086893 -6.7592415832894028
		4.2199265161171077e-16 9.1888839946086893 -6.8916629959565165
		1.344496723542606 9.1888839946086893 -6.7592415832894028
		2.6373253303394182 9.1888839946086893 -6.3670663561540071
		3.8288027333576564 9.1888839946086893 -5.7302084895686649
		4.8731416368480094 9.1888839946086893 -4.8731416368480094
		5.7302084895686649 9.1888839946086893 -3.8288027333576564
		6.3670663561540071 9.1888839946086893 -2.6373253303394182
		6.7592415832894028 9.1888839946086893 -1.344496723542606
		6.8916629959565165 9.1888839946086893 -7.4541400471849852e-16
		6.6293650046753614 9.1888839946086893 -1.3186625830146841
		5.8824023164022634 9.1888839946086893 -2.4365708184240047
		4.7644939166828921 9.1888839946086893 -3.1835331780770035
		3.4458314979782583 9.1888839946086893 -3.4458314979782583
		2.1271689149635744 9.1888839946086893 -3.1835331780770035
		1.0092606795542536 9.1888839946086893 -2.4365708184240047
		0.26229831990125507 9.1888839946086893 -1.3186625830146841
		0 9.1888839946086893 -7.4541400471849852e-16
		-0.26229831990125507 9.1888839946086893 1.3186625830146841
		-1.0092606795542536 9.1888839946086893 2.4365708184240047
		-2.1271689149635744 9.1888839946086893 3.1835331780770035
		-3.4458314979782583 9.1888839946086893 3.4458314979782583
		-4.7644939166828921 9.1888839946086893 3.1835331780770035
		-5.8824023164022634 9.1888839946086893 2.4365708184240047
		-6.6293650046753614 9.1888839946086893 1.3186625830146841
		-6.8916629959565165 9.1888839946086893 1.7156782099755021e-16
		-6.7592415832894028 9.1888839946086893 1.344496723542606
		-6.3670663561540071 9.1888839946086893 2.6373253303394182
		-5.7302084895686649 9.1888839946086893 3.8288027333576564
		-4.8731416368480094 9.1888839946086893 4.8731416368480094
		-3.8288027333576564 9.1888839946086893 5.7302084895686649
		-2.6373253303394182 9.1888839946086893 6.3670663561540071
		-1.344496723542606 9.1888839946086893 6.7592415832894028
		-8.045567984151164e-16 9.1888839946086893 6.8916629959565165
		1.344496723542606 9.1888839946086893 6.7592415832894028
		2.6373253303394182 9.1888839946086893 6.3670663561540071
		3.8288027333576564 9.1888839946086893 5.7302084895686649
		4.8731416368480094 9.1888839946086893 4.8731416368480094
		5.7302084895686649 9.1888839946086893 3.8288027333576564
		6.3670663561540071 9.1888839946086893 2.6373253303394182
		6.7592415832894028 9.1888839946086893 1.344496723542606
		6.8916629959565165 9.1888839946086893 -7.4541400471849852e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "077D4527-470A-2821-F345-4E82BF605852";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "6CE4869F-4369-77CA-DAD0-A6A2F2364193";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 13.783325991913033 13.783325991913033 13.783325991913033 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "DC82C3A8-42FD-9C27-81ED-02B18BAE9377";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "27234D57-464B-97A5-6B3F-128A7A1C4FE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 13.783325991913033 13.783325991913033 13.783325991913033 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "69265451-4EB0-6C73-DCAB-4EB0EBE85DD8";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "8E781E51-470B-DEA3-1C37-DC9A890AA16E";
	setAttr ".t" -type "double3" 0 87.335498187088547 -50.600474581131053 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "6A673979-4FD5-4785-D651-3F87C289FD20";
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
	rename -uid "0417B0B7-4D00-C759-42CC-ADAD447578DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.2587644428114677 4.2587644428114677 1.0602186090987142e-16
		-4.1769334530975994 4.2587644428114677 -0.83084370826885667
		-3.934585283482273 4.2587644428114677 -1.6297586442583487
		-3.5410333006111219 4.2587644428114677 -2.3660427024551258
		-3.0114012162186294 4.2587644428114677 -3.0114012162186294
		-2.3660427024551258 4.2587644428114677 -3.5410333006111219
		-1.6297586442583487 4.2587644428114677 -3.934585283482273
		-0.83084370826885667 4.2587644428114677 -4.1769334530975994
		2.607741122666789e-16 4.2587644428114677 -4.2587644428114677
		0.83084370826885667 4.2587644428114677 -4.1769334530975994
		1.6297586442583487 4.2587644428114677 -3.934585283482273
		2.3660427024551258 4.2587644428114677 -3.5410333006111219
		3.0114012162186294 4.2587644428114677 -3.0114012162186294
		3.5410333006111219 4.2587644428114677 -2.3660427024551258
		3.934585283482273 4.2587644428114677 -1.6297586442583487
		4.1769334530975994 4.2587644428114677 -0.83084370826885667
		4.2587644428114677 4.2587644428114677 -4.6063521392897647e-16
		4.096675066220584 4.2587644428114677 -0.814879271360746
		3.6350828295150488 4.2587644428114677 -1.5057006081093147
		2.9442613912296234 4.2587644428114677 -1.9672926417411365
		2.1293822214057339 4.2587644428114677 -2.1293822214057339
		1.3145029500449881 4.2587644428114677 -1.9672926417411365
		0.62368161329641925 4.2587644428114677 -1.5057006081093147
		0.16208957966459753 4.2587644428114677 -0.814879271360746
		0 4.2587644428114677 -4.6063521392897647e-16
		-0.16208957966459753 4.2587644428114677 0.814879271360746
		-0.62368161329641925 4.2587644428114677 1.5057006081093147
		-1.3145029500449881 4.2587644428114677 1.9672926417411365
		-2.1293822214057339 4.2587644428114677 2.1293822214057339
		-2.9442613912296234 4.2587644428114677 1.9672926417411365
		-3.6350828295150488 4.2587644428114677 1.5057006081093147
		-4.096675066220584 4.2587644428114677 0.814879271360746
		-4.2587644428114677 4.2587644428114677 1.0602186090987142e-16
		-4.1769334530975994 4.2587644428114677 0.83084370826885667
		-3.934585283482273 4.2587644428114677 1.6297586442583487
		-3.5410333006111219 4.2587644428114677 2.3660427024551258
		-3.0114012162186294 4.2587644428114677 3.0114012162186294
		-2.3660427024551258 4.2587644428114677 3.5410333006111219
		-1.6297586442583487 4.2587644428114677 3.934585283482273
		-0.83084370826885667 4.2587644428114677 4.1769334530975994
		-4.9718302930988976e-16 4.2587644428114677 4.2587644428114677
		0.83084370826885667 4.2587644428114677 4.1769334530975994
		1.6297586442583487 4.2587644428114677 3.934585283482273
		2.3660427024551258 4.2587644428114677 3.5410333006111219
		3.0114012162186294 4.2587644428114677 3.0114012162186294
		3.5410333006111219 4.2587644428114677 2.3660427024551258
		3.934585283482273 4.2587644428114677 1.6297586442583487
		4.1769334530975994 4.2587644428114677 0.83084370826885667
		4.2587644428114677 4.2587644428114677 -4.6063521392897647e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "EC7D7D9A-4E98-27CC-50FB-F8B3B4CB4B8F";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "945BEA2E-4EFE-D2F3-378B-A280E66BA27A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "F3E7D6CA-4F47-4EB4-E664-5CB34FDB31A9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "C9D4777F-4EE7-76A8-BCD8-FA89D58E3695";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "1E794A7C-44F2-3D94-A975-77995AA313D3";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "AA20AC3D-4A3C-7E26-446E-CC8E2E1C6CA1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "D094072F-483A-C636-E3E5-B2934030F455";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "DB2FDC22-4602-F100-CD39-A6BDC36FC4F6";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "D05045FC-4CDA-6E33-F078-00BFD34DFD76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63505349407022 17.63505349407027 -1.674088588049166e-14
		9.7639209255319141e-16 15.945692966053466 -1.6590957194490766e-14
		-17.63505349407022 17.635053494070256 -1.674088588049166e-14
		-15.945692966053485 3.2506660602147141e-14 -1.7102845747623791e-14
		-17.63505349407022 -17.635053494070196 -1.7464805614755922e-14
		-1.5972909701683534e-15 -15.945692966053429 -1.7614734300756817e-14
		17.63505349407022 -17.635053494070206 -1.7464805614755922e-14
		15.945692966053485 2.9505524543278455e-14 -1.7102845747623791e-14
		17.63505349407022 17.63505349407027 -1.674088588049166e-14
		9.7639209255319141e-16 15.945692966053466 -1.6590957194490766e-14
		-17.63505349407022 17.635053494070256 -1.674088588049166e-14
		;
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "5DCB1928-4721-CF83-4D77-0F919732D61C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "DA4962C4-4DF3-FB38-E5C8-6CA2DCDD09C1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "67FEA630-4BB5-5168-C48F-8C8036963D10";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63505349407022 17.635053494070231 2.4570232972356924e-14
		9.7639209255319141e-16 15.945692966053427 2.4720161658357816e-14
		-17.63505349407022 17.635053494070217 2.4570232972356924e-14
		-15.945692966053485 -8.0191853808692633e-15 2.4208273105224793e-14
		-17.63505349407022 -17.635053494070235 2.3846313238092662e-14
		-1.5972909701683534e-15 -15.945692966053468 2.3696384552091771e-14
		17.63505349407022 -17.635053494070245 2.3846313238092665e-14
		15.945692966053485 -1.1020321439737949e-14 2.4208273105224793e-14
		17.63505349407022 17.635053494070231 2.4570232972356924e-14
		9.7639209255319141e-16 15.945692966053427 2.4720161658357816e-14
		-17.63505349407022 17.635053494070217 2.4570232972356924e-14
		;
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "F4478235-4536-F73F-7B79-CF8F6F50FFC6";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "3E8D53BC-4C39-22E6-2A9E-B0A8130FBA2A";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "A20B71A7-452E-9BF8-0D39-B295A4094076";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63505349407022 17.635053494070256 -2.3846313238092662e-14
		8.9828726138113841e-16 15.945692966053453 -2.3696384552091771e-14
		-17.63505349407022 17.635053494070245 -2.3846313238092665e-14
		-15.945692966053485 2.0402524049534747e-14 -2.4208273105224793e-14
		-17.63505349407022 -17.63505349407021 -2.4570232972356924e-14
		-1.6753958013404064e-15 -15.945692966053441 -2.4720161658357816e-14
		17.63505349407022 -17.635053494070217 -2.4570232972356924e-14
		15.945692966053485 1.7401387990666059e-14 -2.4208273105224793e-14
		17.63505349407022 17.635053494070256 -2.3846313238092662e-14
		8.9828726138113841e-16 15.945692966053453 -2.3696384552091771e-14
		-17.63505349407022 17.635053494070245 -2.3846313238092665e-14
		;
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "51D766BA-44F8-DBA9-3601-04A7C9B6F97E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "1D42F5E5-4560-6FB0-3FF5-D09360AADE16";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "3EBC970D-4D9A-C2FB-E0C8-7C80AAE2DC1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63505349407022 17.63505349407022 -1.3848894848069873e-14
		9.3733967696716491e-16 15.945692966053416 -1.3698966162068981e-14
		-17.63505349407022 17.635053494070206 -1.3848894848069876e-14
		-15.945692966053485 -1.8016603770892053e-14 -1.4210854715202004e-14
		-17.63505349407022 -17.635053494070245 -1.4572814582334135e-14
		-1.6363433857543799e-15 -15.945692966053478 -1.4722743268335026e-14
		17.63505349407022 -17.635053494070256 -1.4572814582334135e-14
		15.945692966053485 -2.1017739829760738e-14 -1.4210854715202004e-14
		17.63505349407022 17.63505349407022 -1.3848894848069873e-14
		9.3733967696716491e-16 15.945692966053416 -1.3698966162068981e-14
		-17.63505349407022 17.635053494070206 -1.3848894848069876e-14
		;
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "0399D9BF-4C3C-5F6F-0B5A-FFBC54435E07";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "2382343A-4F39-F343-7F8D-9EB10036E74F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "2709EA75-4424-D560-B9DB-E582EDECBFA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63505349407022 17.635053494070242 3.6195986713213039e-16
		9.7639209255319141e-16 15.945692966053439 5.118885531330229e-16
		-17.63505349407022 17.635053494070231 3.6195986713213019e-16
		-15.945692966053485 6.1916693343327396e-15 -2.089184260922043e-31
		-17.63505349407022 -17.63505349407022 -3.6195986713213029e-16
		-1.5972909701683534e-15 -15.945692966053455 -5.1188855313302339e-16
		17.63505349407022 -17.635053494070231 -3.6195986713213019e-16
		15.945692966053485 3.1905332754640557e-15 -3.0526088033361767e-31
		17.63505349407022 17.635053494070242 3.6195986713213039e-16
		9.7639209255319141e-16 15.945692966053439 5.118885531330229e-16
		-17.63505349407022 17.635053494070231 3.6195986713213019e-16
		;
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "F8D97AA4-42E7-AF42-F569-6386EF4D501B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "26D5301E-454B-1925-C1B5-7E90AF316272";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "DD8C8D05-4D06-ABEA-468E-67BB0C9F6928";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.63505349407022 17.635053494070242 3.6195986713213039e-16
		9.7639209255319141e-16 15.945692966053439 5.118885531330229e-16
		-17.63505349407022 17.635053494070231 3.6195986713213019e-16
		-15.945692966053485 6.1916693343327396e-15 -2.089184260922043e-31
		-17.63505349407022 -17.63505349407022 -3.6195986713213029e-16
		-1.5972909701683534e-15 -15.945692966053455 -5.1188855313302339e-16
		17.63505349407022 -17.635053494070231 -3.6195986713213019e-16
		15.945692966053485 3.1905332754640557e-15 -3.0526088033361767e-31
		17.63505349407022 17.635053494070242 3.6195986713213039e-16
		9.7639209255319141e-16 15.945692966053439 5.118885531330229e-16
		-17.63505349407022 17.635053494070231 3.6195986713213019e-16
		;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "E0E419DC-49D8-D875-1C31-D58EF694E59E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "945B132A-46A3-57E2-4A40-66A08ED9A83A";
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
		0.84753670328857511 21.283688116975387 0.65687489159082757
		0.78691688298053586 21.609639748287183 0.65687489159082757
		0.60228013983221873 21.885968256807573 0.65687489159082757
		0.32595163131182942 22.07060499995589 0.65687489159082757
		3.2091454782140885e-14 22.131204946030063 0.65687489159082757
		-0.32595163131176524 22.07060499995589 0.65687489159082757
		-0.60228013983215456 21.885968256807573 0.65687489159082757
		-0.78691688298047169 21.609639748287183 0.65687489159082757
		-0.84753670328851094 21.283688076819725 0.65687489159082757
		-0.78691688298047169 20.957736485663592 0.65687489159082757
		-0.60228013983215456 20.681407977143202 0.65687489159082757
		-0.32595163131176524 20.496771233994885 0.65687489159082757
		3.3845625234065571e-08 20.436171287920711 0.65111193160444469
		0.32595163131182942 20.496771233994885 0.65687489159082757
		0.60228013983221873 20.681407977143202 0.65687489159082757
		0.78691688298053586 20.957736485663592 0.65687489159082757
		0.84753670328857511 21.283688116975387 0.65687489159082757
		0.78302153314246448 21.28589356638604 0.33254386209212872
		0.59929900475206221 21.287763288881493 0.057588947049624806
		0.32433841135702468 21.289012594579123 -0.12612960649400395
		3.3845625234065571e-08 21.28945130409587 -0.19064307313435469
		-0.32433841135696051 21.289012594579123 -0.12612960649400395
		-0.59929900475199804 21.287763288881493 0.057588947049624806
		-0.78302153314240031 21.28589356638604 0.33254386209212872
		-0.84753670328851094 21.283688076819725 0.65687489159082757
		-0.78302153314240031 21.281482588067799 0.98120478541901979
		-0.59929900475199804 21.279612865572346 1.2561602682967767
		-0.32433841135696051 21.278363559874716 1.4398782540051525
		3.3845625234065571e-08 21.277924873071377 1.5043917206455029
		0.32433841135702468 21.278363559874716 1.4398782540051525
		0.59929900475206221 21.279612865572346 1.2561602682967767
		0.78302153314246448 21.281482588067799 0.98120478541901979
		0.84753670328857511 21.283688116975387 0.65687489159082757
		0.78302153314246448 21.28589356638604 0.33254386209212872
		0.59929900475206221 21.287763288881493 0.057588947049624806
		0.32433841135702468 21.289012594579123 -0.12612960649400395
		3.3845625234065571e-08 21.28945130409587 -0.19064307313435469
		3.3845625234065571e-08 21.613343169809621 -0.12392356653468795
		3.3845625234065571e-08 21.887048279459471 0.061664300663012317
		3.3845625234065571e-08 22.068896951513775 0.33786845326291526
		3.2091454782140885e-14 22.131204946030063 0.65687489159082757
		3.3845625234065571e-08 22.06448600726565 0.98652994442505959
		3.3845625234065571e-08 21.87889814006795 1.2602344862396579
		3.3845625234065571e-08 21.602694555303298 1.442083726129215
		3.3845625234065571e-08 21.277924873071377 1.5043917206455029
		3.3845625234065571e-08 20.954033064141154 1.4376722140458364
		3.3845625234065571e-08 20.680327954491304 1.252084346848136
		3.3845625234065571e-08 20.498479282437 0.97588019424823313
		3.3845625234065571e-08 20.436171287920711 0.65111193160444469
		3.3845625234065571e-08 20.502890226685125 0.3272187030860888
		3.3845625234065571e-08 20.688478093882825 0.053514161271490668
		3.3845625234065571e-08 20.964681678647477 -0.12833507861806659
		3.3845625234065571e-08 21.28945130409587 -0.19064307313435469
		;
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "E7DAA188-48C0-D6D4-1079-8DA8622CDC2A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.8932661725304283e-29 0 0 ;
	setAttr ".r" -type "double3" -1.7677488935673826 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.7677488935673826 8.4774280001830347e-14 -8.3835532786678104e-14 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "D98A3997-4949-05E3-D928-D8BD69707BF5";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "0AB37A62-4868-D316-8F94-7283744B74C9";
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
		0.84753670328857511 21.283688116975387 0.65687489159082757
		0.78691688298053586 21.609639748287183 0.65687489159082757
		0.60228013983221873 21.885968256807573 0.65687489159082757
		0.32595163131182942 22.07060499995589 0.65687489159082757
		3.2091454782140854e-14 22.131204946030063 0.65687489159082757
		-0.32595163131176524 22.07060499995589 0.65687489159082757
		-0.60228013983215456 21.885968256807573 0.65687489159082757
		-0.78691688298047169 21.609639748287183 0.65687489159082757
		-0.84753670328851094 21.283688076819725 0.65687489159082757
		-0.78691688298047169 20.957736485663592 0.65687489159082757
		-0.60228013983215456 20.681407977143202 0.65687489159082757
		-0.32595163131176524 20.496771233994885 0.65687489159082757
		3.3845625234065571e-08 20.436171287920711 0.65111193160444469
		0.32595163131182942 20.496771233994885 0.65687489159082757
		0.60228013983221873 20.681407977143202 0.65687489159082757
		0.78691688298053586 20.957736485663592 0.65687489159082757
		0.84753670328857511 21.283688116975387 0.65687489159082757
		0.78302153314246448 21.28589356638604 0.33254386209212872
		0.59929900475206221 21.287763288881493 0.057588947049624806
		0.32433841135702468 21.289012594579123 -0.12612960649400395
		3.3845625234065571e-08 21.28945130409587 -0.19064307313435469
		-0.32433841135696051 21.289012594579123 -0.12612960649400395
		-0.59929900475199804 21.287763288881493 0.057588947049624806
		-0.78302153314240031 21.28589356638604 0.33254386209212872
		-0.84753670328851094 21.283688076819725 0.65687489159082757
		-0.78302153314240031 21.281482588067799 0.98120478541901979
		-0.59929900475199804 21.279612865572346 1.2561602682967767
		-0.32433841135696051 21.278363559874716 1.4398782540051525
		3.3845625234065571e-08 21.277924873071377 1.5043917206455029
		0.32433841135702468 21.278363559874716 1.4398782540051525
		0.59929900475206221 21.279612865572346 1.2561602682967767
		0.78302153314246448 21.281482588067799 0.98120478541901979
		0.84753670328857511 21.283688116975387 0.65687489159082757
		0.78302153314246448 21.28589356638604 0.33254386209212872
		0.59929900475206221 21.287763288881493 0.057588947049624806
		0.32433841135702468 21.289012594579123 -0.12612960649400395
		3.3845625234065571e-08 21.28945130409587 -0.19064307313435469
		3.3845625234065571e-08 21.613343169809621 -0.12392356653468795
		3.3845625234065571e-08 21.887048279459471 0.061664300663012317
		3.3845625234065571e-08 22.068896951513775 0.33786845326291526
		3.2091454782140854e-14 22.131204946030063 0.65687489159082757
		3.3845625234065571e-08 22.06448600726565 0.98652994442505959
		3.3845625234065571e-08 21.87889814006795 1.2602344862396579
		3.3845625234065571e-08 21.602694555303298 1.442083726129215
		3.3845625234065571e-08 21.277924873071377 1.5043917206455029
		3.3845625234065571e-08 20.954033064141154 1.4376722140458364
		3.3845625234065571e-08 20.680327954491304 1.252084346848136
		3.3845625234065571e-08 20.498479282437 0.97588019424823313
		3.3845625234065571e-08 20.436171287920711 0.65111193160444469
		3.3845625234065571e-08 20.502890226685125 0.3272187030860888
		3.3845625234065571e-08 20.688478093882825 0.053514161271490668
		3.3845625234065571e-08 20.964681678647477 -0.12833507861806659
		3.3845625234065571e-08 21.28945130409587 -0.19064307313435469
		;
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "1C63F78F-47E6-3C71-4F77-A29A9FA699A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -3.1554436208840472e-29 0 0 ;
	setAttr ".r" -type "double3" -1.7677488935673826 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.7677488935673826 8.4774280001830347e-14 -8.3835532786678104e-14 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "88E85262-48CB-D99D-B3FA-35A7E8AE9C34";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "184479EF-4B3C-1855-5BE1-7AA12AA287B9";
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
		0.84753670328854125 21.267821409967912 1.051968135255273
		0.786916882980502 21.593773041279711 1.051968135255273
		0.60228013983218487 21.870101549800101 1.051968135255273
		0.32595163131179555 22.054738292948418 1.051968135255273
		-1.7913106884180493e-15 22.115338239022588 1.051968135255273
		-0.32595163131179911 22.054738292948418 1.051968135255273
		-0.60228013983218842 21.870101549800101 1.051968135255273
		-0.78691688298050555 21.593773041279711 1.051968135255273
		-0.8475367032885448 21.26782136981225 1.051968135255273
		-0.78691688298050555 20.941869778656116 1.051968135255273
		-0.60228013983218842 20.665541270135726 1.051968135255273
		-0.32595163131179911 20.480904526987409 1.051968135255273
		3.3845591351300102e-08 20.420304580913239 1.0462051752688901
		0.32595163131179555 20.480904526987409 1.051968135255273
		0.60228013983218487 20.665541270135726 1.051968135255273
		0.786916882980502 20.941869778656116 1.051968135255273
		0.84753670328854125 21.267821409967912 1.051968135255273
		0.78302153314243061 21.270026859378564 0.72763710575657403
		0.59929900475202835 21.271896581874021 0.45268219071407012
		0.32433841135699082 21.273145887571648 0.26896363717044136
		3.3845591351300102e-08 21.273584597088398 0.20445017053009062
		-0.32433841135699437 21.273145887571648 0.26896363717044136
		-0.59929900475203191 21.271896581874021 0.45268219071407012
		-0.78302153314243417 21.270026859378564 0.72763710575657403
		-0.8475367032885448 21.26782136981225 1.051968135255273
		-0.78302153314243417 21.265615881060324 1.376298029083465
		-0.59929900475203191 21.263746158564871 1.6512535119612222
		-0.32433841135699437 21.26249685286724 1.8349714976695979
		3.3845591351300102e-08 21.262058166063902 1.8994849643099481
		0.32433841135699082 21.26249685286724 1.8349714976695979
		0.59929900475202835 21.263746158564871 1.6512535119612222
		0.78302153314243061 21.265615881060324 1.376298029083465
		0.84753670328854125 21.267821409967912 1.051968135255273
		0.78302153314243061 21.270026859378564 0.72763710575657403
		0.59929900475202835 21.271896581874021 0.45268219071407012
		0.32433841135699082 21.273145887571648 0.26896363717044136
		3.3845591351300102e-08 21.273584597088398 0.20445017053009062
		3.3845591351300102e-08 21.597476462802145 0.27116967712975737
		3.3845591351300102e-08 21.871181572451995 0.45675754432745763
		3.3845591351300102e-08 22.053030244506299 0.73296169692736057
		-1.7913106884180493e-15 22.115338239022588 1.051968135255273
		3.3845591351300102e-08 22.048619300258174 1.3816231880895049
		3.3845591351300102e-08 21.863031433060474 1.6553277299041032
		3.3845591351300102e-08 21.586827848295826 1.8371769697936604
		3.3845591351300102e-08 21.262058166063902 1.8994849643099481
		3.3845591351300102e-08 20.938166357133682 1.8327654577102819
		3.3845591351300102e-08 20.664461247483828 1.6471775905125814
		3.3845591351300102e-08 20.482612575429524 1.3709734379126783
		3.3845591351300102e-08 20.420304580913239 1.0462051752688901
		3.3845591351300102e-08 20.487023519677649 0.72231194675053412
		3.3845591351300102e-08 20.672611386875349 0.44860740493593598
		3.3845591351300102e-08 20.948814971640001 0.26675816504637873
		3.3845591351300102e-08 21.273584597088398 0.20445017053009062
		;
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "240685FA-4666-C53F-A6D3-7E8CFE391084";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.7755575615628914e-17 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.831707616867519 0.090485362237626293 -4.7164827213058559e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.8317111423845973 -0.090374875068850044 -0.0044702071693104185 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "7E096B9F-4FE8-FFC3-DA5F-40A269D9177B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "671CA570-4AAE-AE33-A4C7-EAB9899A7F3D";
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
		0.84753670328854391 21.29324730726805 -0.15647234708978339
		0.78691688298050466 21.619198938579846 -0.15647234708978339
		0.60228013983218753 21.895527447100235 -0.15647234708978339
		0.32595163131179827 22.080164190248553 -0.15647234708978339
		9.2909974172438673e-16 22.140764136322726 -0.15647234708978339
		-0.32595163131179639 22.080164190248553 -0.15647234708978339
		-0.60228013983218576 21.895527447100235 -0.15647234708978339
		-0.78691688298050289 21.619198938579846 -0.15647234708978339
		-0.84753670328854214 21.293247267112388 -0.15647234708978339
		-0.78691688298050289 20.967295675956255 -0.15647234708978339
		-0.60228013983218576 20.690967167435865 -0.15647234708978339
		-0.32595163131179639 20.506330424287547 -0.15647234708978339
		3.3845594071710531e-08 20.445730478213374 -0.16223530707616626
		0.32595163131179827 20.506330424287547 -0.15647234708978339
		0.60228013983218753 20.690967167435865 -0.15647234708978339
		0.78691688298050466 20.967295675956255 -0.15647234708978339
		0.84753670328854391 21.29324730726805 -0.15647234708978339
		0.78302153314243328 21.295452756678703 -0.48080337658848227
		0.59929900475203102 21.297322479174156 -0.75575829163098618
		0.32433841135699354 21.298571784871786 -0.93947684517461494
		3.3845594071710531e-08 21.299010494388533 -1.0039903118149658
		-0.32433841135699165 21.298571784871786 -0.93947684517461494
		-0.59929900475202924 21.297322479174156 -0.75575829163098618
		-0.7830215331424315 21.295452756678703 -0.48080337658848227
		-0.84753670328854214 21.293247267112388 -0.15647234708978339
		-0.7830215331424315 21.291041778360462 0.16785754673840877
		-0.59929900475202924 21.289172055865009 0.44281302961616587
		-0.32433841135699165 21.287922750167379 0.62653101532454147
		3.3845594071710531e-08 21.28748406336404 0.69104448196489188
		0.32433841135699354 21.287922750167379 0.62653101532454147
		0.59929900475203102 21.289172055865009 0.44281302961616587
		0.78302153314243328 21.291041778360462 0.16785754673840877
		0.84753670328854391 21.29324730726805 -0.15647234708978339
		0.78302153314243328 21.295452756678703 -0.48080337658848227
		0.59929900475203102 21.297322479174156 -0.75575829163098618
		0.32433841135699354 21.298571784871786 -0.93947684517461494
		3.3845594071710531e-08 21.299010494388533 -1.0039903118149658
		3.3845594071710531e-08 21.622902360102284 -0.93727080521529893
		3.3845594071710531e-08 21.896607469752134 -0.75168293801759867
		3.3845594071710531e-08 22.078456141806438 -0.47547878541769573
		9.2909974172438673e-16 22.140764136322726 -0.15647234708978339
		3.3845594071710531e-08 22.074045197558313 0.17318270574444863
		3.3845594071710531e-08 21.888457330360612 0.44688724755904685
		3.3845594071710531e-08 21.612253745595961 0.628736487448604
		3.3845594071710531e-08 21.28748406336404 0.69104448196489188
		3.3845594071710531e-08 20.963592254433816 0.62432497536522547
		3.3845594071710531e-08 20.689887144783967 0.43873710816752509
		3.3845594071710531e-08 20.508038472729663 0.16253295556762218
		3.3845594071710531e-08 20.445730478213374 -0.16223530707616626
		3.3845594071710531e-08 20.512449416977788 -0.48612853559452218
		3.3845594071710531e-08 20.698037284175488 -0.75983307740912032
		3.3845594071710531e-08 20.974240868940139 -0.94168231729867757
		3.3845594071710531e-08 21.299010494388533 -1.0039903118149658
		;
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "BF97C8B8-4C48-CEFF-CA10-149729173267";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0.42102754933510306 0.33468078654503225 2.5611434198220651e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.42103473202894948 -0.33467175047612829 0.0024593463427093737 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "4B468887-418A-7207-F57E-00AFF8C2B60F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "E2B77D36-4D9B-DAC3-230E-D28E6977E7C6";
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
		0.84753670328854114 21.202573753264115 1.9691954502479225
		0.78691688298050189 21.528525384575911 1.9691954502479225
		0.60228013983218476 21.804853893096301 1.9691954502479225
		0.32595163131179539 21.989490636244618 1.9691954502479225
		-1.949976086502424e-15 22.050090582318788 1.9691954502479225
		-0.32595163131179927 21.989490636244618 1.9691954502479225
		-0.60228013983218853 21.804853893096301 1.9691954502479225
		-0.78691688298050566 21.528525384575911 1.9691954502479225
		-0.84753670328854491 21.202573713108453 1.9691954502479225
		-0.78691688298050566 20.876622121952316 1.9691954502479225
		-0.60228013983218853 20.600293613431926 1.9691954502479225
		-0.32595163131179927 20.415656870283609 1.9691954502479225
		3.3845591192634704e-08 20.355056924209439 1.9634324902615397
		0.32595163131179539 20.415656870283609 1.9691954502479225
		0.60228013983218476 20.600293613431926 1.9691954502479225
		0.78691688298050189 20.876622121952316 1.9691954502479225
		0.84753670328854114 21.202573753264115 1.9691954502479225
		0.7830215331424305 21.204779202674768 1.6448644207492236
		0.59929900475202824 21.206648925170221 1.3699095057067197
		0.32433841135699065 21.207898230867851 1.1861909521630909
		3.3845591192634704e-08 21.208336940384598 1.1216774855227403
		-0.32433841135699454 21.207898230867851 1.1861909521630909
		-0.59929900475203202 21.206648925170221 1.3699095057067197
		-0.78302153314243428 21.204779202674768 1.6448644207492236
		-0.84753670328854491 21.202573713108453 1.9691954502479225
		-0.78302153314243428 21.200368224356527 2.2935253440761145
		-0.59929900475203202 21.198498501861071 2.5684808269538717
		-0.32433841135699454 21.197249196163444 2.7521988126622472
		3.3845591192634704e-08 21.196810509360105 2.8167122793025978
		0.32433841135699065 21.197249196163444 2.7521988126622472
		0.59929900475202824 21.198498501861071 2.5684808269538717
		0.7830215331424305 21.200368224356527 2.2935253440761145
		0.84753670328854114 21.202573753264115 1.9691954502479225
		0.7830215331424305 21.204779202674768 1.6448644207492236
		0.59929900475202824 21.206648925170221 1.3699095057067197
		0.32433841135699065 21.207898230867851 1.1861909521630909
		3.3845591192634704e-08 21.208336940384598 1.1216774855227403
		3.3845591192634704e-08 21.532228806098345 1.1883969921224069
		3.3845591192634704e-08 21.805933915748199 1.3739848593201072
		3.3845591192634704e-08 21.987782587802503 1.6501890119200102
		-1.949976086502424e-15 22.050090582318788 1.9691954502479225
		3.3845591192634704e-08 21.983371643554378 2.2988505030821544
		3.3845591192634704e-08 21.797783776356678 2.5725550448967525
		3.3845591192634704e-08 21.521580191592026 2.7544042847863097
		3.3845591192634704e-08 21.196810509360105 2.8167122793025978
		3.3845591192634704e-08 20.872918700429882 2.7499927727029312
		3.3845591192634704e-08 20.599213590780032 2.5644049055052309
		3.3845591192634704e-08 20.417364918725728 2.2882007529053281
		3.3845591192634704e-08 20.355056924209439 1.9634324902615397
		3.3845591192634704e-08 20.421775862973853 1.6395392617431837
		3.3845591192634704e-08 20.607363730171553 1.3658347199285856
		3.3845591192634704e-08 20.883567314936201 1.1839854800390284
		3.3845591192634704e-08 21.208336940384598 1.1216774855227403
		;
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "0D04124A-438E-838E-B782-D7A45226CBA5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -3.4694469519536142e-17 -1.4210854715202004e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -5.306141178348236 -0.14695044774163077 -5.1303696034780568e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.306158530787628 0.146320733111372 0.013589612014046876 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "1C0F4382-428D-EF22-FAE4-58836E078CCD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "29A2E920-46F1-CB28-6552-7F9D2DEBB896";
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
		0.84753670328854314 20.898926916870341 4.0818767996099723
		0.78691688298050388 21.224878548182136 4.0818767996099723
		0.60228013983218676 21.501207056702526 4.0818767996099723
		0.32595163131179739 21.685843799850844 4.0818767996099723
		6.374051905387348e-17 21.746443745925017 4.0818767996099723
		-0.32595163131179727 21.685843799850844 4.0818767996099723
		-0.60228013983218653 21.501207056702526 4.0818767996099723
		-0.78691688298050366 21.224878548182136 4.0818767996099723
		-0.84753670328854291 20.898926876714679 4.0818767996099723
		-0.78691688298050366 20.572975285558545 4.0818767996099723
		-0.60228013983218653 20.296646777038156 4.0818767996099723
		-0.32595163131179727 20.112010033889838 4.0818767996099723
		3.3845593206351311e-08 20.051410087815665 4.0761138396235896
		0.32595163131179739 20.112010033889838 4.0818767996099723
		0.60228013983218676 20.296646777038156 4.0818767996099723
		0.78691688298050388 20.572975285558545 4.0818767996099723
		0.84753670328854314 20.898926916870341 4.0818767996099723
		0.7830215331424325 20.901132366280994 3.7575457701112733
		0.59929900475203024 20.903002088776446 3.4825908550687696
		0.32433841135699265 20.904251394474077 3.2988723015251407
		3.3845593206351311e-08 20.904690103990824 3.23435883488479
		-0.32433841135699254 20.904251394474077 3.2988723015251407
		-0.59929900475203002 20.903002088776446 3.4825908550687696
		-0.78302153314243228 20.901132366280994 3.7575457701112733
		-0.84753670328854291 20.898926876714679 4.0818767996099723
		-0.78302153314243228 20.896721387962753 4.4062066934381647
		-0.59929900475203002 20.8948516654673 4.6811621763159215
		-0.32433841135699254 20.89360235976967 4.8648801620242974
		3.3845593206351311e-08 20.893163672966331 4.9293936286646476
		0.32433841135699265 20.89360235976967 4.8648801620242974
		0.59929900475203024 20.8948516654673 4.6811621763159215
		0.7830215331424325 20.896721387962753 4.4062066934381647
		0.84753670328854314 20.898926916870341 4.0818767996099723
		0.7830215331424325 20.901132366280994 3.7575457701112733
		0.59929900475203024 20.903002088776446 3.4825908550687696
		0.32433841135699265 20.904251394474077 3.2988723015251407
		3.3845593206351311e-08 20.904690103990824 3.23435883488479
		3.3845593206351311e-08 21.228581969704575 3.3010783414844567
		3.3845593206351311e-08 21.502287079354424 3.4866662086821569
		3.3845593206351311e-08 21.684135751408729 3.7628703612820598
		6.374051905387348e-17 21.746443745925017 4.0818767996099723
		3.3845593206351311e-08 21.679724807160603 4.4115318524442042
		3.3845593206351311e-08 21.494136939962903 4.6852363942588022
		3.3845593206351311e-08 21.217933355198252 4.8670856341483599
		3.3845593206351311e-08 20.893163672966331 4.9293936286646476
		3.3845593206351311e-08 20.569271864036107 4.8626741220649814
		3.3845593206351311e-08 20.295566754386257 4.6770862548672802
		3.3845593206351311e-08 20.113718082331953 4.4008821022673779
		3.3845593206351311e-08 20.051410087815665 4.0761138396235896
		3.3845593206351311e-08 20.118129026580078 3.7522206111052334
		3.3845593206351311e-08 20.303716893777779 3.4785160692906354
		3.3845593206351311e-08 20.57992047854243 3.2966668294010781
		3.3845593206351311e-08 20.904690103990824 3.23435883488479
		;
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "8B49D0CF-421C-443E-8059-3498D7D92708";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -11.051602631600137 -0.64285975471885426 -3.7274471368659744e-17 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 11.052281175978999 0.63093739291161399 0.1232367005075375 ;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "D3C4E658-45CC-B544-DF43-A6A3A1958312";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "4D02DDF0-4E4A-7884-BB5E-ECB4A92EF1EA";
	setAttr ".t" -type "double3" -2.430398245324417e-14 -4.2632564145606011e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -11.051602631601 -0.64285975471887302 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "59A5DED6-4FC6-BA21-262D-35B126D08606";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "6086D788-43E7-0368-7055-FD968596C240";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		3.1292894824744145e-16 5.1105173313737842 1.1363706419565036e-14
		2.2127417272946419e-16 3.6136813985402636 3.6136813985402525
		1.9161370580439547e-32 2.2414483890882629e-14 5.1105173313737726
		-2.2127417272946419e-16 -3.6136813985402192 3.6136813985402525
		-3.1292894824744145e-16 -5.1105173313737398 1.1363706419565036e-14
		-2.2127417272946419e-16 -3.6136813985402192 -3.6136813985402303
		-1.9161370580439547e-32 2.1788625994387749e-14 -5.1105173313737513
		2.2127417272946419e-16 3.6136813985402636 -3.6136813985402303
		3.1292894824744145e-16 5.1105173313737842 1.0737848523070153e-14
		-3.6136813985402414 3.6136813985402636 1.1272051644047059e-14
		-5.110517331373762 2.2101554942635189e-14 1.1363706419565036e-14
		-3.6136813985402414 -3.6136813985402192 1.0829503298588131e-14
		-3.1292894824744145e-16 -5.1105173313737398 1.1363706419565036e-14
		3.6136813985402414 -3.6136813985402192 1.0829503298588131e-14
		5.110517331373762 2.2101554942635189e-14 1.0737848523070153e-14
		3.6136813985402414 3.6136813985402636 1.1272051644047059e-14
		3.1292894824744145e-16 5.1105173313737842 1.1363706419565036e-14
		2.2127417272946419e-16 3.6136813985402636 3.6136813985402525
		1.9161370580439547e-32 2.2414483890882629e-14 5.1105173313737726
		-3.6136813985402414 2.2322829115364655e-14 3.6136813985402525
		-5.110517331373762 2.2414483890882629e-14 1.1050777471317595e-14
		-3.6136813985402414 2.1880280769905724e-14 -3.6136813985402303
		-1.9161370580439547e-32 2.1788625994387749e-14 -5.1105173313737513
		3.6136813985402414 2.1880280769905724e-14 -3.6136813985402303
		5.110517331373762 2.1788625994387749e-14 1.1050777471317595e-14
		3.6136813985402414 2.2322829115364655e-14 3.6136813985402525
		1.9161370580439547e-32 2.2414483890882629e-14 5.1105173313737726
		;
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "7C43309E-4896-4899-0B20-F582CC2AAE29";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 -1.4210854715202004e-14 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635176e-15 2.981770013872046e-16 7.454425034680115e-17 ;
	setAttr ".bps" -type "matrix" 0.99993705624324114 0 0.011219783937363396 0 0.0021507541149812948 0.981454935933185 -0.19168094059954063 0
		 -0.01101171232542917 0.19169300647751272 0.98139315947242789 0 -2.430398245324417e-14 87.335498187088504 -50.600474581131039 1;
	setAttr ".radi" 3.4070115542491743;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "F6456812-4BF3-5829-C858-EA8958E7C8BB";
	setAttr ".t" -type "double3" -0.10736000056258288 1.2387122530840742 -21.194566143115487 ;
	setAttr ".r" -type "double3" 7.9148374621423399 0.66185910087853284 0.12927696174905429 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "B21F3403-43ED-5C5A-0B64-BE8B1FC2A046";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "AC493042-4A4A-66E5-44EA-CCB6B0730834";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		2.6976184875010712e-16 5.110517331373762 2.2414483890882629e-14
		1.7810707323212983e-16 3.6136813985402414 3.6136813985402636
		-4.3167099497334336e-17 3.1292894824744145e-16 5.1105173313737842
		-2.6444127222679852e-16 -3.6136813985402414 3.6136813985402636
		-3.5609604774477578e-16 -5.110517331373762 2.2414483890882629e-14
		-2.6444127222679852e-16 -3.6136813985402414 -3.6136813985402192
		-4.3167099497334373e-17 -3.1292894824744145e-16 -5.1105173313737398
		1.7810707323212983e-16 3.6136813985402414 -3.6136813985402192
		2.6976184875010712e-16 5.110517331373762 2.1788625994387749e-14
		-3.6136813985402414 3.6136813985402414 2.2322829115364655e-14
		-5.110517331373762 1.9161370580439547e-32 2.2414483890882629e-14
		-3.6136813985402414 -3.6136813985402414 2.1880280769905724e-14
		-3.5609604774477578e-16 -5.110517331373762 2.2414483890882629e-14
		3.6136813985402414 -3.6136813985402414 2.1880280769905724e-14
		5.110517331373762 -1.9161370580439547e-32 2.1788625994387749e-14
		3.6136813985402414 3.6136813985402414 2.2322829115364655e-14
		2.6976184875010712e-16 5.110517331373762 2.2414483890882629e-14
		1.7810707323212983e-16 3.6136813985402414 3.6136813985402636
		-4.3167099497334336e-17 3.1292894824744145e-16 5.1105173313737842
		-3.6136813985402414 2.2127417272946419e-16 3.6136813985402636
		-5.110517331373762 3.1292894824744145e-16 2.2101554942635189e-14
		-3.6136813985402414 -2.2127417272946419e-16 -3.6136813985402192
		-4.3167099497334373e-17 -3.1292894824744145e-16 -5.1105173313737398
		3.6136813985402414 -2.2127417272946419e-16 -3.6136813985402192
		5.110517331373762 -3.1292894824744145e-16 2.2101554942635189e-14
		3.6136813985402414 2.2127417272946419e-16 3.6136813985402636
		-4.3167099497334336e-17 3.1292894824744145e-16 5.1105173313737842
		;
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "75EE796C-4F1B-308A-DED3-8DB7E40A0E7E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.7755575615628914e-17 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.7829853462805756e-15 2.5469285535157073e-16 -1.0676910856963713e-17 ;
	setAttr ".bps" -type "matrix" 0.99999984881348403 0 -0.00054988454178797087 0 -3.0096582471648243e-05 0.99850105063091354 -0.054732540441290778 0
		 0.00054906029270098723 0.054732548716114132 0.99850089967101852 0 0.12869938778502052 84.488388337118494 -71.639318897783625 1;
	setAttr ".radi" 3.4070115542491743;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "BD8AA366-4D3F-5B75-C43D-7991CAD54A1C";
	setAttr ".t" -type "double3" -0.44523467995859523 5.1709699529560993 -42.253648489666027 ;
	setAttr ".r" -type "double3" 10.156445989227256 0.8765685519466565 0.17122072154147394 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "405820C7-4B76-9701-58A7-80B291BAE7FD";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "E659B12B-4EA1-62FD-AB67-E8857760058D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		3.1292894824744145e-16 5.1105173313737398 2.2414483890882629e-14
		2.2127417272946419e-16 3.6136813985402192 3.6136813985402636
		1.9161370580439547e-32 -2.1788625994387749e-14 5.1105173313737842
		-2.2127417272946419e-16 -3.6136813985402636 3.6136813985402636
		-3.1292894824744145e-16 -5.1105173313737842 2.2414483890882629e-14
		-2.2127417272946419e-16 -3.6136813985402636 -3.6136813985402192
		-1.9161370580439547e-32 -2.2414483890882629e-14 -5.1105173313737398
		2.2127417272946419e-16 3.6136813985402192 -3.6136813985402192
		3.1292894824744145e-16 5.1105173313737398 2.1788625994387749e-14
		-3.6136813985402414 3.6136813985402192 2.2322829115364655e-14
		-5.110517331373762 -2.2101554942635189e-14 2.2414483890882629e-14
		-3.6136813985402414 -3.6136813985402636 2.1880280769905724e-14
		-3.1292894824744145e-16 -5.1105173313737842 2.2414483890882629e-14
		3.6136813985402414 -3.6136813985402636 2.1880280769905724e-14
		5.110517331373762 -2.2101554942635189e-14 2.1788625994387749e-14
		3.6136813985402414 3.6136813985402192 2.2322829115364655e-14
		3.1292894824744145e-16 5.1105173313737398 2.2414483890882629e-14
		2.2127417272946419e-16 3.6136813985402192 3.6136813985402636
		1.9161370580439547e-32 -2.1788625994387749e-14 5.1105173313737842
		-3.6136813985402414 -2.1880280769905724e-14 3.6136813985402636
		-5.110517331373762 -2.1788625994387749e-14 2.2101554942635189e-14
		-3.6136813985402414 -2.2322829115364655e-14 -3.6136813985402192
		-1.9161370580439547e-32 -2.2414483890882629e-14 -5.1105173313737398
		3.6136813985402414 -2.2322829115364655e-14 -3.6136813985402192
		5.110517331373762 -2.2414483890882629e-14 2.2101554942635189e-14
		3.6136813985402414 -2.1880280769905724e-14 3.6136813985402636
		1.9161370580439547e-32 -2.1788625994387749e-14 5.1105173313737842
		;
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "8D01AC34-44F9-622A-425A-6297A1534072";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.9878466759146975e-16 4.9696166897867437e-17 2.6401088664492078e-17 ;
	setAttr ".bps" -type "matrix" 0.99999045989554258 1.0028870095490916e-18 -0.0043680794293805654 0
		 -6.8341452090933295e-05 0.99987759929065689 -0.015645503066328593 0 0.0043675447733599413 0.015645652327486111 0.99986806035391507 0
		 0.031199851557548244 84.310843257351394 -93.064087992946867 1;
	setAttr ".radi" 3.4070115542491743;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "675DE32D-412F-C589-F609-9189D0B194C1";
	setAttr ".t" -type "double3" -0.71576759677003066 8.3117397894897636 -63.373071734006821 ;
	setAttr ".r" -type "double3" 8.5689521677783276 0.63093739291163076 0.12323670050755067 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "E79A07C9-4BEF-19B1-FB3E-6489D347BFCF";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "2F9EB963-4FD0-B5F7-EA5B-D0BDB93BCD76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		3.1292894824744145e-16 5.110517331373762 3.1292894824744145e-16
		2.2127417272946419e-16 3.6136813985402414 3.6136813985402414
		1.9161370580439547e-32 3.1292894824744145e-16 5.110517331373762
		-2.2127417272946419e-16 -3.6136813985402414 3.6136813985402414
		-3.1292894824744145e-16 -5.110517331373762 3.1292894824744145e-16
		-2.2127417272946419e-16 -3.6136813985402414 -3.6136813985402414
		-1.9161370580439547e-32 -3.1292894824744145e-16 -5.110517331373762
		2.2127417272946419e-16 3.6136813985402414 -3.6136813985402414
		3.1292894824744145e-16 5.110517331373762 -3.1292894824744145e-16
		-3.6136813985402414 3.6136813985402414 2.2127417272946419e-16
		-5.110517331373762 1.9161370580439547e-32 3.1292894824744145e-16
		-3.6136813985402414 -3.6136813985402414 -2.2127417272946419e-16
		-3.1292894824744145e-16 -5.110517331373762 3.1292894824744145e-16
		3.6136813985402414 -3.6136813985402414 -2.2127417272946419e-16
		5.110517331373762 -1.9161370580439547e-32 -3.1292894824744145e-16
		3.6136813985402414 3.6136813985402414 2.2127417272946419e-16
		3.1292894824744145e-16 5.110517331373762 3.1292894824744145e-16
		2.2127417272946419e-16 3.6136813985402414 3.6136813985402414
		1.9161370580439547e-32 3.1292894824744145e-16 5.110517331373762
		-3.6136813985402414 2.2127417272946419e-16 3.6136813985402414
		-5.110517331373762 3.1292894824744145e-16 1.9161370580439547e-32
		-3.6136813985402414 -2.2127417272946419e-16 -3.6136813985402414
		-1.9161370580439547e-32 -3.1292894824744145e-16 -5.110517331373762
		3.6136813985402414 -2.2127417272946419e-16 -3.6136813985402414
		5.110517331373762 -3.1292894824744145e-16 -1.9161370580439547e-32
		3.6136813985402414 2.2127417272946419e-16 3.6136813985402414
		1.9161370580439547e-32 3.1292894824744145e-16 5.110517331373762
		;
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "C387A776-473E-5669-3C9A-3295983613C6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.9513867036587919e-16 -5.6827761370823679e-16 -8.6824477547587325e-17 ;
	setAttr ".bps" -type "matrix" 1 2.8460307027744491e-19 0 0 -3.5236570605778894e-19 0.99906087095021634 -0.04332869875954231 0
		 0 0.043328698759542317 0.99906087095021656 0 2.0677903833643541e-14 83.344921579268672 -114.3956065342939 1;
	setAttr ".radi" 3.4070115542491743;
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "CECF221C-4686-F562-6C19-A1BC6C4D1CC5";
	setAttr ".t" -type "double3" -0.95439147659702528 12.019021156879063 -84.317626265698493 ;
	setAttr ".r" -type "double3" 8.5689521677783222 0.63093739291163076 0.12323670050755067 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "6BD959A4-414A-73CC-4594-B997FE1F3C73";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "F8949BAF-4DD0-5EAE-3BFD-FCBBB80B085D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		3.1292894824743164e-16 5.110517331373762 3.1292894824744145e-16
		2.2127417272945438e-16 3.6136813985402414 3.6136813985402414
		-9.7959007003521678e-30 3.1292894824744145e-16 5.110517331373762
		-2.21274172729474e-16 -3.6136813985402414 3.6136813985402414
		-3.1292894824745126e-16 -5.110517331373762 3.1292894824744145e-16
		-2.21274172729474e-16 -3.6136813985402414 -3.6136813985402414
		-9.8342234415130466e-30 -3.1292894824744145e-16 -5.110517331373762
		2.2127417272945438e-16 3.6136813985402414 -3.6136813985402414
		3.1292894824743164e-16 5.110517331373762 -3.1292894824744145e-16
		-3.6136813985402414 3.6136813985402414 2.2127417272946419e-16
		-5.110517331373762 1.9161370580439547e-32 3.1292894824744145e-16
		-3.6136813985402414 -3.6136813985402414 -2.2127417272946419e-16
		-3.1292894824745126e-16 -5.110517331373762 3.1292894824744145e-16
		3.6136813985402414 -3.6136813985402414 -2.2127417272946419e-16
		5.110517331373762 -1.9161370580439547e-32 -3.1292894824744145e-16
		3.6136813985402414 3.6136813985402414 2.2127417272946419e-16
		3.1292894824743164e-16 5.110517331373762 3.1292894824744145e-16
		2.2127417272945438e-16 3.6136813985402414 3.6136813985402414
		-9.7959007003521678e-30 3.1292894824744145e-16 5.110517331373762
		-3.6136813985402414 2.2127417272946419e-16 3.6136813985402414
		-5.110517331373762 3.1292894824744145e-16 1.9161370580439547e-32
		-3.6136813985402414 -2.2127417272946419e-16 -3.6136813985402414
		-9.8342234415130466e-30 -3.1292894824744145e-16 -5.110517331373762
		3.6136813985402414 -2.2127417272946419e-16 -3.6136813985402414
		5.110517331373762 -3.1292894824744145e-16 -1.9161370580439547e-32
		3.6136813985402414 2.2127417272946419e-16 3.6136813985402414
		-9.7959007003521678e-30 3.1292894824744145e-16 5.110517331373762
		;
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "27E50811-4101-6AC7-5EB5-82A9731573B2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 1.0037562669025234e-16 -2.0518207401892097e-17 ;
	setAttr ".bps" -type "matrix" 1 2.8460307027744491e-19 0 0 -3.5236570605778894e-19 0.99906087095021634 -0.04332869875954231 0
		 0 0.043328698759542317 0.99906087095021656 0 3.3589614441177307e-14 82.96852654867385 -135.66374156783564 1;
	setAttr ".radi" 3.4070115542491743;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "E8EDC6C6-4174-8095-C545-CEBD20366743";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "BF889DBD-468B-98A3-530E-58A08549BAE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 12.776293328434404 12.776293328434404 12.776293328434404 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "8D549FB1-43D7-FB69-9178-74BE1D824CB8";
	setAttr ".t" -type "double3" 0 104.41270821916444 98.611642971070737 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "FA35A876-41AE-E025-388C-4DB4AEAD2186";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "A6CA28CD-41B4-2B18-398D-80BD12EFEA4D";
	setAttr ".t" -type "double3" 11.526513579355978 4.7403995093577507 -44.658541154217936 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "A64D98F7-41D5-5E78-C70D-ADB37177AB9C";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "03972B91-45E8-89A0-3E98-12B2289845E5";
	setAttr ".t" -type "double3" 17.032164269784552 51.850024983659559 -2.6020486514903185 ;
	setAttr ".r" -type "double3" 0.07651097584292621 8.3542899897748786 6.9599418124260285e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "8F272F35-4F6F-C51D-C9A2-A48AA07D4735";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "C66D3CB4-48C2-33D4-42B2-8AB3F629C5F9";
	setAttr ".t" -type "double3" 11.526513579356001 4.7403995093577844 59.044988748859424 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "89A37963-4B1A-6590-4E6F-7999E5620997";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "956E77ED-446E-44EC-6981-5E84EE341669";
	setAttr ".t" -type "double3" 22.604483774476272 49.555798908967311 16.531033653757884 ;
	setAttr ".r" -type "double3" 178.64183292099816 12.844213242294011 179.99999293916679 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "CE8D1BB0-4DB3-9AAE-C84F-09AEBCEABA58";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "4BCA578D-4D7B-8985-7847-D685F0DE5389";
	setAttr ".t" -type "double3" -1.7763568394002442e-15 102.88318489164752 90.661383768901018 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "DE26951F-43E0-CD83-CCAA-55AB9FF4B393";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "A31E6F6A-4392-6A3B-95B5-0782B6C9A31D";
	setAttr ".t" -type "double3" 1.4584993911388731e-14 89.195039674419846 64.830668500115678 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "73A33601-4A03-CE7F-C166-B09CE10B1FF6";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "9160F5C2-42FE-2EDC-573B-BBBCC623B49D";
	setAttr ".t" -type "double3" -11.526513579357072 4.7403995093589248 -44.658541154217986 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "D1A658E4-4349-603F-E807-76BFEA1CFB5E";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "7DC231F4-4BD7-0AED-75C3-DD8D09E3C8B1";
	setAttr ".t" -type "double3" -17.032164269785561 51.850024983659566 -2.6020486514904699 ;
	setAttr ".r" -type "double3" 0.076509964608046419 -8.3542899989706747 7.8483079128725893e-19 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "B6CCC80B-49F2-E07B-28BB-75B26C31106A";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "79A865DF-4CBD-2785-0A71-D9AF30C70AAC";
	setAttr ".t" -type "double3" -11.526513579357104 4.7403995093588964 59.044988748859424 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "C75868EC-4023-A50E-100C-34801615D88F";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "E6A70B07-4FAD-BF75-EA57-CB8D8BEF2E82";
	setAttr ".t" -type "double3" -22.604483774475312 49.55579890896734 16.531033653757653 ;
	setAttr ".r" -type "double3" 178.64183449062796 -12.844213405509567 180 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "7AECF076-4826-F7EA-AC93-F99BD51558BA";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "6F54BF55-4F50-4618-E79D-998DF1E01116";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -40.969822646539178 -1.1305634814146857e-15 
		16.612191964198203 -4.6823701005489928e-14 -1.5988582085403861e-15 23.493187176514354 
		40.969822646539178 -1.1305634814146849e-15 16.612191964198175 57.940078834755994 
		-4.7165025002476294e-31 -7.4362887428289312e-15 40.969822646539178 1.1305634814146849e-15 
		-16.612191964198175 -3.7471997077211601e-14 1.5988582085403877e-15 -23.493187176514354 
		-40.969822646539178 1.1305634814146849e-15 -16.612191964198175 -57.940078834755994 
		-1.7072942877955684e-31 -1.1857937354983203e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "D6B45792-4732-0CB2-55A6-52849C740726";
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
	rename -uid "51EE9D4D-438C-159A-0390-2B9EC40E5368";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -7.1279708668488382e-14 -1.6594741845218321e-15 
		25.353991778197013 8.8988456023905762 -1.6425831300875811e-15 25.095924699332329 
		16.031126178320935 -1.3555405307806661e-15 22.137656861136591 23.637915917365362 
		-1.2850985590368156e-15 20.987252160076736 30.763505854452788 -1.1884956865491969e-15 
		19.409607527275199 37.262839526968619 -1.0676984692219732e-15 17.436839257904253 
		43.003609243870855 -9.2516599004951279e-16 15.109107224934561 47.868949488736348 
		-7.6379979927805062e-16 12.473797339932474 51.759815964662224 -5.8688484721002272e-16 
		9.5845569125503829 54.5970018505311 -3.9802261208893999e-16 6.5002025460084916 61.892830657051178 
		-2.3616780018891587e-16 3.6082492394962955 62.529288655777862 4.9793469077436601e-31 
		-2.3334525075543614e-14 61.89283065705115 2.3616780018891607e-16 -3.6082492394963062 
		54.5970018505311 3.9802261208893999e-16 -6.5002025460084916 51.759815964662224 5.8688484721002311e-16 
		-9.5845569125503829 47.868949488736348 7.6379979927805062e-16 -12.473797339932482 
		43.003609243870848 9.2516599004951279e-16 -15.109107224934561 37.262839526968598 
		1.0676984692219732e-15 -17.436839257904225 30.763505854452774 1.1884956865491961e-15 
		-19.409607527275185 23.637915917365341 1.2850985590368156e-15 -20.987252160076736 
		16.031126178320932 1.3555405307806661e-15 -22.137656861136591 8.8988456023905727 
		1.6425831300875811e-15 -25.095924699332329 -6.8828688546393265e-14 1.6594741845218305e-15 
		-25.353991778197013 -8.8988456023906277 1.6425831300875811e-15 -25.095924699332329 
		-16.031126178320942 1.3555405307806661e-15 -22.137656861136591 -23.637915917365341 
		1.2850985590368156e-15 -20.987252160076736 -30.763505854452788 1.1884956865491961e-15 
		-19.409607527275185 -37.262839526968619 1.0676984692219724e-15 -17.436839257904225 
		-43.003609243870805 9.25165990049512e-16 -15.109107224934561 -47.868949488736348 
		7.6379979927804983e-16 -12.473797339932474 -51.759815964662224 5.8688484721002232e-16 
		-9.5845569125503758 -54.597001850531015 3.9802261208893999e-16 -6.5002025460084916 
		-61.89283065705115 2.3616780018891547e-16 -3.6082492394962955 -62.529288655777819 
		1.945053922911185e-31 -1.869863256768576e-14 -61.89283065705115 -2.3616780018891587e-16 
		3.6082492394962955 -54.597001850531001 -3.9802261208893999e-16 6.5002025460084916 
		-51.759815964662224 -5.8688484721002232e-16 9.5845569125503758 -47.868949488736305 
		-7.6379979927804983e-16 12.473797339932474 -43.00360924387077 -9.25165990049512e-16 
		15.109107224934547 -37.262839526968548 -1.0676984692219716e-15 17.436839257904211 
		-30.763505854452738 -1.1884956865491953e-15 19.409607527275185 -23.637915917365333 
		-1.2850985590368156e-15 20.987252160076721 -16.031126178320942 -1.3555405307806661e-15 
		22.137656861136577 -8.8988456023906028 -1.6425831300875779e-15 25.095924699332315 
		-5.9130953872149845e-14 -1.6594741845218305e-15 25.353991778196942;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "6C5C7971-4595-9317-0874-809D4C5CDB78";
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
	rename -uid "2F8ACCBB-402C-B2D0-7818-478D5BA846BF";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "F76717FC-44F2-211D-8DA4-B095AE5C70AF";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "F625C506-406D-D75E-C4B4-73ACFBAFABF3";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "13A6153A-4C66-A47F-8B55-2BBEEE9E9AAA";
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
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
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
connectAttr "neckQd0_two_ikj_end.tx" "effector31.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector31.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector31.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector31.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector31.hp" "neckQd0_two_ikj_ikh.hee";
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
connectAttr "rtLegQd0_autoAim_end.tx" "effector37.tx";
connectAttr "rtLegQd0_autoAim_end.ty" "effector37.ty";
connectAttr "rtLegQd0_autoAim_end.tz" "effector37.tz";
connectAttr "rtLegQd0_autoAim_end.opm" "effector37.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_ik.msg" "rtLegQd0_3_ikh.hsj";
connectAttr "effector35.hp" "rtLegQd0_3_ikh.hee";
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
connectAttr "rtLegQd0_tip_ik.tx" "effector35.tx";
connectAttr "rtLegQd0_tip_ik.ty" "effector35.ty";
connectAttr "rtLegQd0_tip_ik.tz" "effector35.tz";
connectAttr "rtLegQd0_tip_ik.opm" "effector35.opm";
connectAttr "rtLegQd0_ball_ik.tx" "effector34.tx";
connectAttr "rtLegQd0_ball_ik.ty" "effector34.ty";
connectAttr "rtLegQd0_ball_ik.tz" "effector34.tz";
connectAttr "rtLegQd0_ball_ik.opm" "effector34.opm";
connectAttr "rtLegQd0_digit_ik.tx" "effector33.tx";
connectAttr "rtLegQd0_digit_ik.ty" "effector33.ty";
connectAttr "rtLegQd0_digit_ik.tz" "effector33.tz";
connectAttr "rtLegQd0_digit_ik.opm" "effector33.opm";
connectAttr "rtLegQd0_palm_ik.tx" "effector32.tx";
connectAttr "rtLegQd0_palm_ik.ty" "effector32.ty";
connectAttr "rtLegQd0_palm_ik.tz" "effector32.tz";
connectAttr "rtLegQd0_palm_ik.opm" "effector32.opm";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_softJ.is";
connectAttr "rtLegQd0_softJ.s" "rtLegQd0_softJ_end.is";
connectAttr "rtLegQd0_softJ_end.tx" "effector36.tx";
connectAttr "rtLegQd0_softJ_end.ty" "effector36.ty";
connectAttr "rtLegQd0_softJ_end.tz" "effector36.tz";
connectAttr "rtLegQd0_softJ_end.opm" "effector36.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_palm_ik.msg" "rtLegQd0_X_ikh.hsj";
connectAttr "effector33.hp" "rtLegQd0_X_ikh.hee";
connectAttr "rtLegQd0_upr_ik.msg" "rtLegQd0_1_ikh.hsj";
connectAttr "effector32.hp" "rtLegQd0_1_ikh.hee";
connectAttr "rtLegQd0_digit_ik.msg" "rtLegQd0_2_ikh.hsj";
connectAttr "effector34.hp" "rtLegQd0_2_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_line_53.v";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion82.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_autoAim.msg" "rtLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector37.hp" "rtLegQd0_autoAimJ_ikh.hee";
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
connectAttr "rtLegQd1_autoAim_end.tx" "effector51.tx";
connectAttr "rtLegQd1_autoAim_end.ty" "effector51.ty";
connectAttr "rtLegQd1_autoAim_end.tz" "effector51.tz";
connectAttr "rtLegQd1_autoAim_end.opm" "effector51.opm";
connectAttr "rtLegQd1_legLock.msg" "rtLegQd1_legLock_ikh.hsj";
connectAttr "effector52.hp" "rtLegQd1_legLock_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_ik.msg" "rtLegQd1_3_ikh.hsj";
connectAttr "effector49.hp" "rtLegQd1_3_ikh.hee";
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
connectAttr "rtLegQd1_tip_ik.tx" "effector49.tx";
connectAttr "rtLegQd1_tip_ik.ty" "effector49.ty";
connectAttr "rtLegQd1_tip_ik.tz" "effector49.tz";
connectAttr "rtLegQd1_tip_ik.opm" "effector49.opm";
connectAttr "rtLegQd1_ball_ik.tx" "effector48.tx";
connectAttr "rtLegQd1_ball_ik.ty" "effector48.ty";
connectAttr "rtLegQd1_ball_ik.tz" "effector48.tz";
connectAttr "rtLegQd1_ball_ik.opm" "effector48.opm";
connectAttr "rtLegQd1_digit_ik.tx" "effector47.tx";
connectAttr "rtLegQd1_digit_ik.ty" "effector47.ty";
connectAttr "rtLegQd1_digit_ik.tz" "effector47.tz";
connectAttr "rtLegQd1_digit_ik.opm" "effector47.opm";
connectAttr "rtLegQd1_palm_ik.tx" "effector46.tx";
connectAttr "rtLegQd1_palm_ik.ty" "effector46.ty";
connectAttr "rtLegQd1_palm_ik.tz" "effector46.tz";
connectAttr "rtLegQd1_palm_ik.opm" "effector46.opm";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_softJ.is";
connectAttr "rtLegQd1_softJ.s" "rtLegQd1_softJ_end.is";
connectAttr "rtLegQd1_softJ_end.tx" "effector50.tx";
connectAttr "rtLegQd1_softJ_end.ty" "effector50.ty";
connectAttr "rtLegQd1_softJ_end.tz" "effector50.tz";
connectAttr "rtLegQd1_softJ_end.opm" "effector50.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_palm_ik.msg" "rtLegQd1_X_ikh.hsj";
connectAttr "effector47.hp" "rtLegQd1_X_ikh.hee";
connectAttr "rtLegQd1_upr_ik.msg" "rtLegQd1_1_ikh.hsj";
connectAttr "effector46.hp" "rtLegQd1_1_ikh.hee";
connectAttr "rtLegQd1_digit_ik.msg" "rtLegQd1_2_ikh.hsj";
connectAttr "effector48.hp" "rtLegQd1_2_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_line_53.v";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion111.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_autoAim.msg" "rtLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector51.hp" "rtLegQd1_autoAimJ_ikh.hee";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector52.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector52.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector52.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector52.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector62.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector62.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector62.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector62.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector62.hp" "spineQd0_two_ikj_ikh.hee";
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
// End of lion_ctl.ma
