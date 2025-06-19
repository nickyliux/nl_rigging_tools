//Maya ASCII 2023 scene
//Name: lion_ctl.ma
//Last modified: Fri, Jun 20, 2025 12:56:23 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "0D89410D-4416-E171-547C-E6AD444FA619";
createNode transform -n "CHR";
	rename -uid "C49B6ADE-435D-F534-BFD4-35ABAAC9979A";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "E7E8B46E-413B-ABD8-9CF8-4BB107F9EDC5";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "701EECAF-4087-BE82-833A-4299B96446A1";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "proxyDsp" -ln "proxyDsp" -min 0 -max 2 -en "Normal:Template:Reference" 
		-at "enum";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".proxyDsp";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "76DFAAC2-49F7-0B5B-58C5-6C91B860808E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "924F68FA-48AC-B975-395B-47A7D1488BAE";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "969F91A1-43A0-B786-15EE-DA8061BB45BF";
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
	rename -uid "CE7E63EC-48FB-E5FB-66A1-AC827D371B8D";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "6C708448-43FB-4D30-AC3E-AD90C86A558C";
	setAttr ".t" -type "double3" 0 104.41270821916447 98.611642971070737 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "D027D0B2-4256-5E03-E21F-F19E0C07CF51";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "BBD81270-47B7-6642-2486-BF866F38D69A";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "D850643D-47FA-EBEE-CDDF-9F96DEF89229";
	setAttr ".t" -type "double3" -6.5152535693759807e-14 -4.3474507881247604 1.043313637084097 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "ABDEDFDF-4CE1-EFDF-1491-C5B9E43CFEAA";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "CFE233F6-4F0F-E07D-7B6C-E78E083816D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.6355560317998923 -21.45665654570702 -3.7223724076867768
		6.5467323697877166e-14 -21.45665654570702 -5.2282690228255859
		-3.6355560317997617 -21.45665654570702 -3.7223724076867768
		-5.1414526469385615 -34.45665465466459 8.7031141806494219
		-3.6355560317997617 -29.684252647829823 16.006543654984014
		6.4637477693480802e-14 -29.684252647829823 17.512440270122823
		3.6355560317998923 -29.684252647829823 16.006543654984014
		5.1414526469386912 -34.45665465466459 8.7031141806494219
		3.6355560317998923 -21.45665654570702 -3.7223724076867768
		6.5467323697877166e-14 -21.45665654570702 -5.2282690228255859
		-3.6355560317997617 -21.45665654570702 -3.7223724076867768
		;
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "F8F4971C-4405-401D-21E8-578F023A69EF";
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
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "A73697E2-4EBB-F52C-FBB5-2AAF616246FF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "29A83A23-41AB-1B89-5429-BEB3B746C923";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 6.9592306628385385 6.9592306628385385 6.9592306628385385 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "7509DDF3-492D-F6CD-F1A9-3BA9287E9019";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "6CB88564-4AA8-D414-41E9-57B875E7AA4C";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "4614DD05-4A67-204B-F403-6C9EE0EC7646";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.453373909237639 132.27714362201669 95.542950963022122 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "C7108228-42DA-DC24-2AFA-DABF039CE326";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.2374840724496785 63.796237744181688 1.5239924979247645 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "E1302AC0-4265-1FD3-7859-0C8F75C32E4F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "662AF2CF-4B39-B256-E459-1E86C6D30390";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533399688 28.202196682808211 0.15151114604104376 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "574ECD20-4AFA-0ACD-49CE-75ABEF6B595C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431889 109.81053629005903 37.746206672014772 ;
	setAttr ".radi" 0.95963448437504661;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "C7ED27E2-4A4C-198D-8065-5898162947FD";
	setAttr ".t" -type "double3" 6.9774500664449377 1.4210854715202004e-14 -8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 4.1631179532213949 -87.519412399546184 -4.8064433304300529 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "96DF84C2-492C-FE5A-89DD-8D929955BBE3";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "4BC14717-44F2-0C46-2B4B-54A828E7C9BA";
	setAttr ".t" -type "double3" 6.9774500664449448 7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 4.1631179532225691 -87.519412399546169 -4.8064433304312395 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "612A15B3-4B81-3EB8-D595-FBABA6CB4999";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "D8022893-4F7A-E55F-A061-5183BFF6943F";
	setAttr ".t" -type "double3" 6.9774500664449448 7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "72343FAA-480B-7A7E-9551-66B6496EA8B5";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -3.3564791122819673e-13 -1.9772474153185078e-14 1.4337344150034816e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317576e-15 2.5444437451708122e-14 -2.8624992133171641e-14 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "4416DA9E-489A-1587-CF26-A2925DD8A941";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982322 67.847764185930785 36.972456027853944 ;
	setAttr ".radi" 0.95963448437504661;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "74703A14-43BB-F830-30E2-A097E0204F31";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "820DC780-4F2D-C623-9C92-F18CD556ADC6";
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
	rename -uid "9ED0D43B-4575-609C-EDDD-3F88B30B47E6";
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
	rename -uid "66F448EE-4FE2-D566-D885-6D90935736FF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "83317DF8-4292-EED0-2CED-4FB317E1B84B";
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
	rename -uid "8FE37E54-448C-7BBB-4B0F-6390CC8412DD";
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
	rename -uid "1AEA7798-4D3F-2B0A-CD2E-FD887C0083CF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "98061CC5-4440-6EC2-1976-DF8DF8DB1F36";
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
	rename -uid "02D50399-49F9-1F9E-D92B-1A89E52B1B58";
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
	rename -uid "B96A22DA-4D28-2557-B7EB-73A5017056DB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "F3CFA79A-4F5E-8798-C298-C6B554CCF5D4";
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
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "B7C4DB33-44E2-EC0B-9540-C4AB7EC2BAB1";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -74.803134575536674 -3.3083777434185406 -78.005620489158488 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "C1B2CDB1-4A9E-DE0A-701B-ADB5EB8F833E";
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
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "34E7FB91-4783-6582-8600-00B8874A37C5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "D50075F4-4D99-F9FB-E34D-699FF746247C";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "87695A70-42B9-C742-9DEF-389AD2F20967";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "F05F811C-4AE6-7772-9C13-CB82CE6084A2";
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
	rename -uid "00566501-46EA-8908-D316-58BC734ABF78";
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
	rename -uid "574BD674-4497-5CDD-1D92-01ABF46AD57F";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 98.147122544539585 39.687083909305926 3.8358903435120815 ;
	setAttr ".radi" 2.8789034531251407;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "E5D349F6-4FDF-A932-D1EF-C3ADB5862C0C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 90.165654146188359 0 -1.3322676295501878e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317581e-14 9.939233379573482e-16 1.5902773407317584e-15 ;
	setAttr ".radi" 2.8789034531251407;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "6796D66D-403D-E8BB-FE66-D48D3EF57EDF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "B43122F3-4DAA-1CFF-43B9-78B205874BF5";
	setAttr ".t" -type "double3" 11.526513843273905 4.7403963678317442 -44.65853940740012 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "27551650-4711-586A-96CB-4D93DD0589C8";
	setAttr ".t" -type "double3" 1.4476070410130522 1.8698696087982345 6.5645120900945173 ;
	setAttr ".r" -type "double3" 166.24154916441344 -17.532672327093529 -85.781365618985731 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "FF632258-433B-5984-2CC9-51B6A916269A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "467108E0-4DAA-9436-9F8A-00BD5F00D98F";
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
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "3486C246-4168-B4B8-4287-AAB6F72520DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039364894 7.1054273576010019e-15 -6.0396132539608516e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.22678088064234284 -0.92618524711821837 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "5B41A9A1-4469-1280-FAED-E5BAADEA4371";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "72E24702-4C51-29D2-AD92-ED82B3F343F3";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd0_toe01_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "DA358DC5-4AB8-DF35-C9B1-E381E69B08B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.95005788317386575 4.7695677060483561 1.0401287459695467 ;
	setAttr ".r" -type "double3" 34.397312503312811 70.986343301706512 36.406368017225645 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe02_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "2CF04F36-48D7-45AD-1C2B-8D93147E865F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.53635655089943057 1.351140702226477 -0.20480056262740476 ;
	setAttr ".r" -type "double3" 10.505007780709871 83.751864507277332 10.813849714442814 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe03_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "F8F74DCC-4ABC-06C4-BDAB-CF8BE721E536";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.62757604096223574 -1.9977720025686772 -0.27204527236868969 ;
	setAttr ".r" -type "double3" -24.348088858574258 79.799102698971268 -25.371460481394102 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe04_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "B25D096E-4B91-901C-3FA2-1AA1F6355ABD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.83855776201675525 -4.6680201906544063 2.0699847239756899 ;
	setAttr ".r" -type "double3" -37.288936376721679 68.219959849212813 -39.568623976758758 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483274 0.22678088064234278 -0.92618524711821903 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "70BEF669-4481-0CF3-DC8A-BCA52DAF12BA";
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
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "1575F055-48FD-AFFA-EBB8-EE9B2B69DF68";
	setAttr ".t" -type "double3" 0.95005788317385864 4.769567706048349 1.0401287459695467 ;
	setAttr ".r" -type "double3" 23.462131422776924 -7.1040108787492233 4.9687479993287713 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs1" -p "lfLegQd0_toe01_3_ikc_ofs";
	rename -uid "2E00112F-4141-3ED3-42B7-F3BD4A238561";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_toe01_3_ikc" -p "lfLegQd0_toe01_3_ikc_ofs1";
	rename -uid "0E567DE9-483E-C07B-3382-C38688C3FF30";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_toe01_3_1_ikj_ikh" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "74A261FF-454D-3114-322D-7CBA81D4DA57";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6291491541308769 -1.212001595656508 -3.1012442427601883 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.20276264859431561 -0.19835287177007016 -0.95892828021473253 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_toe01_3_ikcShape1" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "CBB479F1-4C63-9BE0-11C0-52A6BBC74D85";
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
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "2CD47598-49E7-BFA5-DCC7-96AC53CF3DC3";
	setAttr ".t" -type "double3" 0.53635655089941991 1.3511407022264734 -0.20480056262740476 ;
	setAttr ".r" -type "double3" 2.3234926622744698 -3.8237351579363406 0.59945408601452776 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs1" -p "lfLegQd0_toe02_3_ikc_ofs";
	rename -uid "8C18A878-477A-EE70-2A73-2889BFAD8962";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_toe02_3_ikc" -p "lfLegQd0_toe02_3_ikc_ofs1";
	rename -uid "02A0DE73-4B45-9CB5-7034-DF86AA1FB84C";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_toe02_3_1_ikj_ikh" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "4BE284E4-4565-B268-3939-30A57D15EDDD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.7235537165460411 0.070219300521490169 -3.2891403472724221 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.24116516335593016 0.18514670761907737 -0.95265946730262674 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_toe02_3_ikcShape1" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "6B680C1C-4A40-281B-D039-B2ADFE52F66F";
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
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "51F47205-45C8-A097-3179-EC86DB842773";
	setAttr ".t" -type "double3" 0.62757604096223218 -1.9977720025686807 -0.27204527236868969 ;
	setAttr ".r" -type "double3" 16.136251602860799 -2.6800632013313352 4.6182660438050389 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs1" -p "lfLegQd0_toe03_3_ikc_ofs";
	rename -uid "32CBE952-4200-6536-6D0D-8AAD09F98501";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe03_3_ikc" -p "lfLegQd0_toe03_3_ikc_ofs1";
	rename -uid "6B3779B9-405A-2E87-F5CB-FDB22B7ACF87";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_toe03_3_1_ikj_ikh" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "9F4613D2-4981-91AD-CAE2-89BDA8A2A598";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.7733038800069831 -0.78359770912789628 -3.1741325994171632 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.27487538160239156 -0.06742640095180541 -0.95911271759039096 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_toe03_3_ikcShape1" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "B8405DA5-49C6-7785-F614-019C9BCF3DCA";
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
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "42FBC84E-4195-13D3-8D03-8597DD43F067";
	setAttr ".t" -type "double3" 0.83855776201674814 -4.6680201906544134 2.0699847239756828 ;
	setAttr ".r" -type "double3" 13.674781386795946 -6.7225221584969317 2.8744576905620849 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs1" -p "lfLegQd0_toe04_3_ikc_ofs";
	rename -uid "F8BE5A6C-4165-DA92-AE1B-419CBA27F5BE";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_toe04_3_ikc" -p "lfLegQd0_toe04_3_ikc_ofs1";
	rename -uid "E37E5BF6-4E21-88B6-EA3B-FB86B97B4C96";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_toe04_3_1_ikj_ikh" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "4D0CB05C-4B22-BA47-FC5E-AC98832ACBE3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4739011017029586 -1.1392126960739581 -3.1309827192303956 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.20167605816009065 -0.020699272600920367 -0.97923353071614194 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_toe04_3_ikcShape1" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "0DE24E1D-45B4-B2CF-3C95-E2A91E97B584";
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
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "4C0D6C57-4E31-96CB-2021-9C82BF7BA89C";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "26035906-49BA-FDFE-7FEE-2BB593755499";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.453373909237639 132.27714362201669 95.542950963022122 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "149CEAF5-4250-6D45-F42F-E98DBC85DA3F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.203400271288366 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 7.8472049351915061e-07 -9.5454795543855623e-06 3.3636750457665695e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.2374840724496785 63.796237744181688 1.5239924979247645 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "3AF6157E-403D-1EB4-13CA-748FD4935FB7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.251914290918272 -5.3290705182007514e-14 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 1.2476418555920269e-20 1.8155371898187513e-05 -1.3744679597384928e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "E065A73D-46A5-CBEA-1AA8-87861695687D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 36.188739948176888 -2.4868995751603507e-14 0 ;
	setAttr ".r" -type "double3" 2.6400687991883609e-07 -2.6410264383454569e-08 -1.0971380055483406e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533399688 28.202196682808211 0.15151114604104376 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "1BF1C26B-4994-E493-EBD0-36A5259FC119";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.259600490642221 -1.526513579355985 -6.3414588457820642 ;
	setAttr ".r" -type "double3" 5.9580560614015715e-07 2.0132793159027003e-05 -8.2724673322664792e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431889 109.81053629005903 37.746206672014772 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "A379550C-4B23-F6B0-0463-9DADA70B110B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9774500664449377 1.4210854715202004e-14 -1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 2.7462113466700392e-07 -3.5761346663361224e-05 -1.8201560601490376e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179532236544 -87.519412399546155 -4.8064433304319385 ;
	setAttr ".radi" 0.95963448437504661;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "6EB94F25-411D-94CF-AEF5-2690B07223D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982322 67.847764185930785 36.972456027853944 ;
	setAttr ".radi" 0.95963448437504661;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "B8B68FB4-429C-7067-7DED-65A59DA4BCB9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "9552DD67-49E1-8E74-5DC8-E9A50CF6413E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "D9FB8B3A-48E3-9F5A-35C7-93A7021C6988";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "B7557EB1-4600-C277-D357-3C8B48451E40";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "1A05EDF0-4DA8-227F-6761-ABB39EE1D48C";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 15.203400271288363 -8.8817841970012523e-15 0 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -8.4355822612689286e-30 -7.0296518843907717e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 85.728783746642037 40.76446762926961 6.3138508374305191 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "C05EF90E-4339-8893-6E90-C08B68A8CE7A";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 64.296783447265625 2.1316282072803006e-14 1.7763568394002505e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317581e-14 9.939233379573482e-16 1.5902773407317584e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "1B79481D-4586-515C-98A3-1B9DADA52E6F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "61BE01AA-4DE4-161E-6706-C98157463C57";
	setAttr ".t" -type "double3" 26.740373408540854 -44.665640417510843 0.85668887026009344 ;
	setAttr ".r" -type "double3" 0.076148319340443221 -88.909162991060924 83.020195805951161 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "F0BBF70C-4658-90AE-E6A8-67A794C41C2B";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "D1872AA2-46F1-6280-91DD-7196CCCD7CA4";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "18346698-42A6-2D00-5627-2E93EEEDA8C8";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 19.999999999999975 -3.8482876911586246 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "07331A4D-4108-3532-69FF-CD8F782C1412";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "AA416775-4E4D-1C88-47AF-32BBFC729988";
	setAttr ".t" -type "double3" 3.3129778471460689 1.92663599703401e-15 -15.73217680702232 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "87793B86-44DB-2544-17B5-5F9DD6C8A38F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "9ADB09C5-4CC5-6409-CEE8-3CA0B0A57430";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "921FF4CB-4802-501A-97F3-3594A5645628";
	setAttr ".t" -type "double3" 5.4785272737373383 -1.0508038382894787e-15 8.5804644981809375 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "F96B87E7-4074-6257-7F07-77A13A409477";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "C3BE4290-4EE2-B2DE-2C79-C6A4B1189A6C";
	setAttr ".t" -type "double3" -12.024823832191306 -1.5777218104420236e-30 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "FAF2A81B-4D7D-44DA-FD2E-6F98AE2C77DF";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "CC8F031D-4012-25E8-3042-C0A87EE1E3AA";
	setAttr ".t" -type "double3" 6.2074395955948471 -6.6102659766299841 -1.9059726826944399 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "E72ECE89-448F-AB9D-4F89-2A8EF2DE24F1";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "F5AB0320-443E-207F-D44F-4CB3276FBB04";
	setAttr ".t" -type "double3" -1.4476073049309708 1.8698664672722343 6.5645138369123615 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "BDFDC202-4578-9789-F572-20B5DD526F4A";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -1.0211563012251688 0 90.390172239136632 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "F59327D3-4F34-3FC7-C73F-64B61ABAE44D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "871D7142-4278-C73B-C13C-F3AA6B6B400E";
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
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "FF465597-4292-CCD0-525C-C8856DA9A060";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "102F771C-4FC2-7B88-FA68-29BCB28A4D66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "0AE1972D-40A9-139C-833E-DC944214CEBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.5265135793559974 -15.259600490642255 6.3414588457820429 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "2A48328E-4B8F-E9A4-5DA5-40ABEB576B5E";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "C522974F-445F-CE19-F4E3-28BBB5850538";
	setAttr ".t" -type "double3" -1.5265135793559974 -15.259600490642255 6.3414588457820429 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "219D6576-4753-9262-E794-2DAAC4CC5E95";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "0C63A34E-4BD8-4810-2AF9-0B831F135F0C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "00E1A15F-42C5-7B81-A6FE-5AA9325FAC2C";
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
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "7765F9FC-44C2-B744-A3DB-DD887E66BCF6";
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
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "8271BC35-4F7A-F0C6-19AE-9EBE91949399";
	setAttr ".t" -type "double3" 6.2074395955948471 -6.6102659766299841 -1.9059726826944399 ;
	setAttr ".r" -type "double3" 166.24154916441344 17.532672327093522 85.781365618985703 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "5696AF30-4A89-E99B-91F6-B69616B1850F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-14 0 2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" -165.51750035534454 -87.444713791537211 -14.676500591160124 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483246 -0.22678088064234286 0.92618524711821826 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "58D3317D-4F17-9AA4-F740-4687829E8E90";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "E16B8EE2-485F-D72D-E9E3-4FA32EC4D44A";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "98327C88-4CF8-C526-44B6-578D32F9BD0F";
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
	rename -uid "1C6D8007-40D1-BEAA-BD5B-38A79AA9B1F7";
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
	rename -uid "E800A473-437B-0CD2-075D-61B2C26AE602";
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
	rename -uid "3F90A1B8-4AB4-2699-4B41-BA87C6AFACDD";
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
	rename -uid "7BA3EB45-4E94-6A43-0A68-80B41DD5EBE7";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "33BF9DC9-4266-A151-A82A-D69700A77E30";
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
	rename -uid "F68ECCED-4AA2-4706-E56D-CFBD6E4B0BE1";
	setAttr ".t" -type "double3" 11.526513579355978 4.7403995093577507 -44.658541154217936 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "79AE90C7-4B16-4BE2-C864-BD928A0EB02A";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "87391C2D-4A89-9E29-D20D-E586C0FB49D1";
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
	rename -uid "52446929-4382-22D1-7E05-4FBBE0EEA784";
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
	rename -uid "157E61A0-40C7-1B10-2ED4-7B92A70585E6";
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
	rename -uid "E4AD8B2F-4B49-3368-3AA0-488B321A9351";
	setAttr ".t" -type "double3" 1.786464267790091 -4.7403995093577507 13.23900565239888 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "52954A2D-40F9-45A3-B4B4-1B90BC417F45";
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
	rename -uid "1BE382E2-4489-312F-EC74-A2ACEC60BF0A";
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
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShape1" -p "lfLegQd0_ikc_gmb";
	rename -uid "26E6DF4E-4F90-D78A-76C2-0AACB050BDAC";
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
		5.757806906250277 -3.7584751841921316 6.4775327534945459
		5.647172261054334 -3.7584751841921316 7.6008251569415997
		5.3195199528367638 -3.7584751841921316 8.6809500632738192
		4.7874414760528357 -3.7584751841921316 9.676398878081887
		4.0713843081723073 -3.7584751841921316 10.548917061666851
		3.1988661245873411 -3.7584751841921316 11.264974229547382
		2.2034173097792742 -3.7584751841921316 11.797052706331309
		1.1232924034470533 -3.7584751841921316 12.124705014548882
		-6.7218647982563642e-16 -3.7584751841921316 12.235339659744822
		-1.1232924034470544 -3.7584751841921316 12.124705014548882
		-2.2034173097792755 -3.7584751841921316 11.797052706331309
		-3.1988661245873433 -3.7584751841921316 11.264974229547382
		-4.07138430817231 -3.7584751841921316 10.548917061666852
		-4.7874414760528383 -3.7584751841921316 9.6763988780818888
		-5.3195199528367674 -3.7584751841921316 8.6809500632738192
		-5.6471722610543384 -3.7584751841921316 7.6008251569415979
		-5.7578069062502806 -3.7584751841921316 6.4775327534945433
		-5.6471722270970099 -2.0342376570026777 6.4775327534945442
		-5.319519927124519 -0.35530573964007317 6.4775327534945442
		-4.7874415848323393 1.0985466464259297 6.4775327534945442
		-4.0713843071319431 2.2554030241264225 6.4775327534945442
		-3.1988660550771613 3.1265538249062961 6.4775327534945442
		-2.2034172396272202 3.6586321671984767 6.4775327534945442
		-1.1232923787461035 3.9862844671709672 6.4775327534945442
		3.5256399003583955e-16 4.0969191463242369 6.4775327534945442
		1.1232923787461035 3.9862844671709672 6.4775327534945442
		2.2034172396272202 3.6586321671984767 6.4775327534945442
		3.1988660550771613 3.1265538249062961 6.4775327534945442
		4.0713843071319431 2.2554030241264225 6.4775327534945442
		4.7874415848323393 1.0985466464259297 6.4775327534945442
		5.319519927124519 -0.35530573964007317 6.4775327534945442
		5.6471722270970099 -2.0342376570026777 6.4775327534945442
		5.7578069062502815 -3.7584751841921316 6.4775327534945442
		5.7578069062502815 -3.7584751841921333 -4.6926126446310015
		5.7578069062502815 -3.4130067698171147 -5.0380810590060188
		5.6471722270970099 -2.0342376570026777 -5.0380810590060188
		5.319519927124519 -0.35530573964007317 -5.0380810590060188
		4.7874415848323393 1.0985466464259297 -5.0380810590060188
		4.0713843071319431 2.2554030241264225 -5.0380810590060188
		3.1988660550771613 3.1265538249062961 -5.0380810590060188
		2.2034172396272202 3.6586321671984767 -5.0380810590060188
		1.1232923787461035 3.9862844671709672 -5.0380810590060188
		3.5256399003583955e-16 4.0969191463242369 -5.0380810590060188
		-1.1232923787461035 3.9862844671709672 -5.0380810590060188
		-2.2034172396272202 3.6586321671984767 -5.0380810590060188
		-3.1988660550771613 3.1265538249062961 -5.0380810590060188
		-4.0713843071319431 2.2554030241264225 -5.0380810590060188
		-4.7874415848323393 1.0985466464259297 -5.0380810590060188
		-5.319519927124519 -0.35530573964007317 -5.0380810590060188
		-5.6471722270970099 -2.0342376570026777 -5.0380810590060188
		-5.7578069062502815 -3.4130067698171147 -5.0380810590060188
		-5.7578069062502815 -3.7584751841921311 -4.6926126446310015
		-5.7578069062502815 -3.7584751841921316 6.4775327534945442
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "133C5999-4D8F-001F-3026-6B80A2F30180";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.1316282072803006e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_ikcShape1" -p "lfLegQd0_ikc";
	rename -uid "D817C762-4A7E-9BE6-259F-F380E5EC968F";
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
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "9C4FCFAA-4AB5-BDD6-0AF9-0B82DCE94382";
	setAttr ".t" -type "double3" 17.032164269784552 51.850024983659559 -2.6020486514903185 ;
	setAttr ".r" -type "double3" 0.076510975842926154 8.3542899897748786 6.9599418124252433e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "A4D5A518-4F31-C0D7-AEB5-2B82D0BA520A";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "A0013F9D-4CF8-CE0A-FD2B-C2BFA9512B8E";
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
	rename -uid "55A9DA65-4CA8-EB7B-C820-E2A161954C00";
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
	rename -uid "78DE524A-4644-4A60-7ED1-CA9C3213D5B7";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -8.694499584157489 -163.97288476982274 92.552601435283989 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "41A28A89-424D-4F2B-1BF9-A3A74B64EDD3";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "211029F1-44C3-3D2F-184D-02BB57B24CD0";
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
	rename -uid "ED6F6312-4E03-5A34-A039-C495E3EBC683";
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
	rename -uid "C5D9C669-4215-121C-9170-5D9CF43D2762";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe01_4_ctl" -p "lfLegQd0_toe01_4_ctl_ofs";
	rename -uid "D48B6723-4B10-F0CA-0ABF-4BB1C6DF9357";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_4_ctlShape1" -p "lfLegQd0_toe01_4_ctl";
	rename -uid "DC0E2C03-491D-9AAF-E904-24BD6E2761A2";
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
	rename -uid "F7F83322-4FDB-BEDE-52C3-2AA4F71F491F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe02_4_ctl" -p "lfLegQd0_toe02_4_ctl_ofs";
	rename -uid "C1B4C424-4FC1-9EE8-162F-5A943EDF3892";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_4_ctlShape1" -p "lfLegQd0_toe02_4_ctl";
	rename -uid "716D4C7B-453B-50F3-7B1C-70A12A6F3A01";
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
	rename -uid "2A3E8109-46DE-5995-7EA5-79AC68EA5BD1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe03_4_ctl" -p "lfLegQd0_toe03_4_ctl_ofs";
	rename -uid "082B9D6A-457A-0415-B0E8-63A53E948488";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_4_ctlShape1" -p "lfLegQd0_toe03_4_ctl";
	rename -uid "54748918-4906-D823-0407-8E9D686DD7EA";
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
	rename -uid "C6A1ADDC-431E-B2C0-45D5-038615D25753";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe04_4_ctl" -p "lfLegQd0_toe04_4_ctl_ofs";
	rename -uid "414C26F3-4084-740D-CDF5-34BC64529474";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_4_ctlShape1" -p "lfLegQd0_toe04_4_ctl";
	rename -uid "B02BFB9C-49A2-E833-E027-F5B340B2FB93";
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
	rename -uid "270B5E1B-42C5-93C2-4DE2-5FB445DE4038";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "9E61A2D5-4F6A-3C22-6AD3-498F51AA7570";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.9993214663422334 3.9993214663422334 3.9993214663422334 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "7DECF060-42B0-5DF0-32A5-808775E7717A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "84D7BC3F-435D-4ED1-6556-A1B030338E7E";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "1FF8FEBE-4DE4-BCAD-5CBF-A6B75E201BC2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.35948997968271 -16.744161296497751 -78.887112396642181 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "4DB58707-4489-4EAE-FC68-8AA8454A9C6C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068366 10.610383260348033 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "92D21BF2-48BA-BB0A-0D59-CFAED4EA2F5F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871609 0 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "65C638EE-423E-6D12-56C7-B18EFC9EA59D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292598 6.1429192907087344 4.6257962827270109 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "16B80B4D-455F-1F0A-FC10-DDB0DEDF9BF8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431939 109.81053629005909 37.746206672014772 ;
	setAttr ".radi" 1.0203411469764609;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "4DD6C390-4082-BF28-B495-BB97BE8E0998";
	setAttr ".t" -type "double3" 6.9774500664449022 4.8849813083506888e-15 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 4.1631179532237246 -87.519412399546255 -4.8064433304326748 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "C3719877-4964-0E2F-BD51-899D238F1451";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -2.6645352591003757e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "496EEFF7-4ACE-1807-B3FF-E6944817E1D6";
	setAttr ".t" -type "double3" 6.9774500664449306 4.8849813083506888e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.163117953223276 -87.519412399546212 -4.8064433304324883 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999933 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "C4F44281-4135-7038-F975-DD97C0CDCC1E";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "82A9FA76-4133-0DFC-53E0-65B670D70891";
	setAttr ".t" -type "double3" 6.9774500664449448 4.8849813083506888e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "3F2EB00D-4F9B-2B36-E80A-B992C8CCEA5A";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.3322676295501878e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -4.0586859505488344e-13 -4.5160032788873496e-14 -1.8909391504638405e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -7.9513867036587903e-15 2.8624992133171648e-14 1.6697912077683461e-14 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "942F9ACF-454F-0BEC-3E7B-79B6AB642301";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 -5.773159728050814e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982564 67.847764185930785 36.97245602785415 ;
	setAttr ".radi" 1.0203411469764609;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "F9B03759-45CF-B546-3975-34B3ED043BDF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "B9B23523-41B8-D0F6-1EDC-C7B26CC5D6FC";
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
	rename -uid "7ECCB7DF-431B-4382-090C-AA9F13B56DAF";
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
	rename -uid "75CAFD16-4C58-25D8-EAC3-1CB1E65F6C1F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "5D692E7D-47C9-BC90-9A0A-FC8694158452";
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
	rename -uid "515A3857-4AAD-AE16-13B5-EFAC92D5B667";
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
	rename -uid "D55894B0-4DC6-6994-9EFC-0498A33943B3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "0D561508-4C85-2785-9634-E8AD50F028E7";
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
	rename -uid "2A249D48-4E75-06C4-F526-078C75F7B2D9";
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
	rename -uid "7E351E2F-4B37-0D43-1010-BEBE9C0374FE";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "26CC3FF7-49AA-DCAB-1A2C-4ABDDCC45622";
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
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "2BAB4CF7-4073-3B13-050A-05B39574B703";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -1.5543122344752192e-15 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" -74.803134575536575 -3.3083777434184327 -78.00562048915863 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "EFB70FFA-4E2A-5DA8-E8F9-37AF2F05B64F";
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
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "7DB8AD21-485D-D2FD-012B-7DB603F349AC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "F5FF5381-4725-F5C8-D6C6-87A496EF2CE4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000004 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "733F5422-4A70-BAF3-2642-BFAB8DBB6D99";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999933 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "448EF459-46BD-15DC-8A51-73B881B83EC0";
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
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "E37DF071-4619-F0E7-7738-11A8212C5AB4";
	setAttr ".t" -type "double3" 28.632099274069212 1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "CC8A4D5A-4207-6CC0-8A10-5B9F60D8F14F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "C1B22569-4707-06A3-71B2-0083E9B41FF8";
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
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "E8161E61-4D6C-8A6C-F2EA-30ACCD780D65";
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
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "3AB5CAE8-49E2-D64B-C3D8-EA84E720A8E0";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -133.89853950919786 -14.882759485808144 9.2347906832216893 ;
	setAttr ".radi" 3.0610234409293833;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "3FEAC2A8-4B3E-69E1-FE4F-D88434017E01";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 96.110222499894661 -1.4210854715202004e-14 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 1.7890620083232284e-15 6.9574633657014419e-16 ;
	setAttr ".radi" 3.0610234409293833;
createNode ikEffector -n "effector20" -p "lfLegQd1_autoAim";
	rename -uid "8E393036-494E-0CBD-F9BC-FF82A25C70EF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "D35E6F84-4F8B-4417-ED69-6883699FC942";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.0658141036401503e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -46.10146049080226 14.882759485808144 -170.76520931677831 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "E50C002E-47C1-1E62-699B-92AE178C9328";
	setAttr ".t" -type "double3" 11.526513511227174 4.7404004120754113 59.044988435225513 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "D8280ECB-49BE-54F2-809D-57A5CECC188E";
	setAttr ".t" -type "double3" 1.4476073730597783 1.8698655645546367 6.5645141505462234 ;
	setAttr ".r" -type "double3" 166.24154916441358 -17.532672327093529 -85.781365618985745 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "C0B5DD82-4A78-79B9-B9C7-8EA037DAA8CA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "2703A2F5-4DCE-8B0A-94D2-CA82F39A857E";
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
	rename -uid "EC7D5EFD-410B-CC96-6D75-04B2C2A493C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365516 9.3258734068513149e-15 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483257 0.22678088064234006 -0.92618524711821826 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "D0FBB048-47DE-651E-CC82-18954E6BD98E";
	setAttr ".t" -type "double3" 8.8817841970012523e-15 6.6613381477509392e-15 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "D1443A29-4A80-B2AC-57C3-26AB0E3C84C8";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_toe01_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "163DAFC2-4727-6E2B-8AC2-5187033F6E84";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.67815955126463123 4.5017535728021958 1.3164646049625901 ;
	setAttr ".r" -type "double3" 29.724325536613463 73.915909626409331 31.334682455869142 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe02_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "43E0E607-4FAC-1087-59A2-3CBE83BB318E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45532223815155604 0.74375689646166299 -0.36853481296998325 ;
	setAttr ".r" -type "double3" -17.918402842230915 82.75575858259451 -18.507979197419349 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe03_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "E096333C-4994-5568-5FCA-F4BC876AFDF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.1223045525015678 -3.0584011316220825 0.49654536015401618 ;
	setAttr ".r" -type "double3" -65.261647378854903 81.569987026312674 -67.528668066506327 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe04_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "1227D8BB-42CE-1A8E-D5E0-30AB01E2C1A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.33886448789202994 -6.316218132045627 3.7852547441283662 ;
	setAttr ".r" -type "double3" -62.23276402251124 59.056451340940797 -68.021071212105056 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 0.2267808806423402 -0.92618524711821892 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "A2E9D853-4A4C-EBFB-FCEA-269450A1EE9C";
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
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "4AD5952E-4B45-87E0-0688-9392C254877E";
	setAttr ".t" -type "double3" 0.67815955126463123 4.5017535728021958 1.3164646049625901 ;
	setAttr ".r" -type "double3" 8.3411969766498313 -5.1162832953030035 1.9731774330296783 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs1" -p "lfLegQd1_toe01_3_ikc_ofs";
	rename -uid "3A604F90-476A-DFF6-40BF-90B358A687AC";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999956 ;
createNode transform -n "lfLegQd1_toe01_3_ikc" -p "lfLegQd1_toe01_3_ikc_ofs1";
	rename -uid "65F6F7B0-4966-07C2-2A46-C789DE41B4FC";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_toe01_3_1_ikj_ikh" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "48360D1E-436C-5500-6577-CAAC6C74409C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7333317786118503 -0.79112400107924241 -3.2149593759111497 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.22505400097623776 0.076165995769225919 -0.97136472950847352 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_toe01_3_ikcShape1" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "31FD14A0-4BC8-2524-C2CC-2CB8B04F4F47";
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
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "19A91EC7-4826-CE49-8DEF-4A863FD4E785";
	setAttr ".t" -type "double3" 0.45532223815155604 0.74375689646166476 -0.36853481296998325 ;
	setAttr ".r" -type "double3" 9.7001640894294123 -0.050193913746908216 3.1786163596571266 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs1" -p "lfLegQd1_toe02_3_ikc_ofs";
	rename -uid "B6CF7085-47F3-73E1-33F0-EBA8638B425C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999944 ;
createNode transform -n "lfLegQd1_toe02_3_ikc" -p "lfLegQd1_toe02_3_ikc_ofs1";
	rename -uid "25C2D648-4840-EB80-D761-1BBCEA8B6731";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_toe02_3_1_ikj_ikh" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "E4730256-4D13-0539-1F6C-5CB264080A77";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3970855628994823 -0.38899597430827448 -3.2019136936042116 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.31254937306753133 0.050628364122695141 -0.94855134712958633 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_toe02_3_ikcShape1" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "3ED4D3F1-4452-61D8-A3FE-EEB86FF845B4";
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
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "CFCDD335-45C0-C81C-D099-B2936CA23F4A";
	setAttr ".t" -type "double3" 0.1223045525015678 -3.0584011316220825 0.49654536015401618 ;
	setAttr ".r" -type "double3" 9.9925668796984652 1.4068899419581349 3.5321615839465443 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs1" -p "lfLegQd1_toe03_3_ikc_ofs";
	rename -uid "4190FB8C-4B69-D2B7-4C36-229D06B66F8E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode transform -n "lfLegQd1_toe03_3_ikc" -p "lfLegQd1_toe03_3_ikc_ofs1";
	rename -uid "47240AAC-4750-6209-86C6-70A5E9433629";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_toe03_3_1_ikj_ikh" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "E7DA09AF-49EB-D5FA-3E31-D29B64574BC3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4824458763511537 -0.40692294419032393 -3.1712842431151813 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.33729424848294748 0.045315240003537864 -0.94030799154518785 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_toe03_3_ikcShape1" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "0BAE1CB1-4CB6-1598-30DC-C4AB03CB4D22";
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
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "C38725E0-4B40-9547-A99F-3FB2B99F4EFD";
	setAttr ".t" -type "double3" 0.33886448789203172 -6.316218132045627 3.7852547441283662 ;
	setAttr ".r" -type "double3" -2.7621105709198326 2.0274650077385199 -0.99636430511547358 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs1" -p "lfLegQd1_toe04_3_ikc_ofs";
	rename -uid "EE278878-4A7F-06B9-6041-A99F9C959975";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe04_3_ikc" -p "lfLegQd1_toe04_3_ikc_ofs1";
	rename -uid "06C40B0D-424A-2592-1B95-ADB1719016AB";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_toe04_3_1_ikj_ikh" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "397A1754-47D5-864A-1C27-88B74464624E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8207197219266185 -0.14318177052873493 -3.1847226037282965 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.32984157110116102 0.27581293980274757 -0.90284647654564409 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_toe04_3_ikcShape1" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "B7753BDA-4B69-2F2A-91A0-FF9EE59EB876";
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
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "A09A3388-4E3B-3F45-213C-DDADF7BFAAEA";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "82980900-490E-B67D-32AB-6E81922B9E63";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.35948997968271 -16.744161296497751 -78.887112396642181 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "E7472F4A-4F06-78E4-5063-859587CC8F24";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.632099274069176 7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -5.9374137844645619e-15 4.2688682312579702e-06 1.9943120442950742e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068366 10.610383260348033 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "2079A1E4-48BC-A116-18E8-34B176C6772C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.654603735688628 -2.1316282072803006e-14 -5.3290705182007514e-14 ;
	setAttr ".r" -type "double3" -1.6368408568712011e-21 -7.7068895908990666e-06 8.9920138311613619e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871609 0 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "F5CF2970-4D1A-1934-CC23-E3A4B62B4CD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.455142515112193 -7.1054273576010019e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 3.3431595078639922e-07 -5.5574204785294078e-06 -2.2112548202671107e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292598 6.1429192907087344 4.6257962827270109 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "3B9B5756-45C4-A3CE-B90B-16AF5AAF7AB7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.782206896175094 -0.55224344285567994 -3.4724006270753023 ;
	setAttr ".r" -type "double3" 1.7735734703576245e-07 5.6440735785241985e-24 4.5152589196002992e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927431939 109.81053629005909 37.746206672014772 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "7DA6E14A-44CE-8324-5DD0-D6A32565C317";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9774500664449377 2.2204460492503131e-16 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 3.3437827832712207e-07 -2.777127186095735e-22 1.3672010557807945e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179532238463 -87.519412399546198 -4.8064433304321641 ;
	setAttr ".radi" 1.0203411469764609;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "D6BB534D-4179-3026-E7DA-018E21271060";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9511373039365054 -5.773159728050814e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473850982564 67.847764185930785 36.97245602785415 ;
	setAttr ".radi" 1.0203411469764609;
createNode ikEffector -n "effector18" -p "lfLegQd1_ball_ik";
	rename -uid "23283BC4-423E-097D-241B-289AF2C65F8B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "lfLegQd1_digit_ik";
	rename -uid "107DA458-4961-BE4A-0B09-EAB5F2C8DAEF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "lfLegQd1_palm_ik";
	rename -uid "2B0DE5C8-49B4-5078-1A08-FDB68E2A5F2C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector15" -p "lfLegQd1_lwr_ik";
	rename -uid "8EEA5FE8-4488-A130-43D9-E9BA7AB1C3B2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "164831E0-482D-3A94-1B3D-958B688E89D4";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 28.632099274069247 7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 9.1903850617814787e-30 -2.6805289763529287e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 68.486370334776197 -24.942365871053283 14.461723033380917 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "19B8E12B-4606-7E0F-8E29-7F8FD10F8D87";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 59.01611328125 2.1316282072803006e-14 -6.2172489379008766e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905456e-15 -2.7829853462805787e-15 -1.8387581752210956e-14 ;
createNode ikEffector -n "effector19" -p "lfLegQd1_softJ";
	rename -uid "1E81F2EE-4FFE-D50A-3298-27BCE2D19C21";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "3709D3AE-44BF-057E-4407-D0AF15BD4785";
	setAttr ".t" -type "double3" 30.454615597759691 38.062763101794161 23.520838967979486 ;
	setAttr ".r" -type "double3" -1.3581542853093567 58.477578254814098 81.226126097410159 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "6485AC94-4938-7EB9-C26E-6A9D1A38ADC3";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "A3C6EBE7-4894-1332-4214-6BA587BBB56A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "75BD06CC-4011-FBE7-CE02-30BEC9E05EC7";
	setAttr ".t" -type "double3" -0.97427013650032634 15.522606405532876 -0.97922947245189107 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "E04AD100-417E-F224-D9CE-FB8A66D1C8E6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "554714E5-4344-4206-51B8-648A5AFC2C60";
	setAttr ".t" -type "double3" 3.3129778471460689 1.7873145284848359e-15 -14.594530682064693 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "07EE16D6-42AD-0FB4-C293-78BCBD8AD884";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "5A95F1BD-45CA-A290-5F3C-F283A1911ACC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "7DB7AD5F-4E7F-B0D0-3845-3988F939A3FD";
	setAttr ".t" -type "double3" 6.9126955251844109 -9.1148236974030456e-16 7.442818373223318 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "B2A04F57-43F1-5B42-AF31-238174BD1878";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "654E03B5-4E5E-5DC2-4B28-FEA93656DA36";
	setAttr ".t" -type "double3" -12.466795531247644 -7.8886090522101181e-31 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "E2ECABEB-4E7E-4C5E-DFCF-0C9D2F2B14A3";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "A24C4A95-4A8E-767C-AFBC-E486633D1120";
	setAttr ".t" -type "double3" 5.2152430432041328 -6.6102659766300125 -1.9059726826944328 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "E1B06352-419D-E2F4-910E-E4B8986E6B2D";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "5417B2CB-4F84-8394-69BD-2E95991CCBCD";
	setAttr ".t" -type "double3" -1.4476073049309672 1.8698664672722272 6.5645138369123686 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "4F9AE5F4-47E7-C222-CD42-BE9DF58985BE";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -4.1839818710111034 0 88.073551663925841 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "1EAC1085-40D2-72CE-04E3-C2A408B1477B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "4B450017-44CA-EAFB-BDD0-47B7F6FF47D4";
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
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "1583BD63-45E2-0E86-125C-96A054A4234A";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "C8C52484-4A14-FA91-109C-57B9103C78E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-15 -1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "1AA455AE-4609-0EA6-34AE-308B9751F076";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.55224344285568172 -10.782206896175094 3.472400627075281 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "0C367875-428C-5161-10FE-0FBD84A6D18A";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "9FF76132-43A3-88CC-A150-32AFEEEB55E3";
	setAttr ".t" -type "double3" -0.55224344285567817 -10.782206896175083 3.472400627075281 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "6F8D5FE8-4E53-FD89-1BE4-5EB85178C289";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "EBE23C43-40C7-5B70-F3CB-698077E7EE7D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "01248859-4E31-AF53-97F4-E79E12CEFE3F";
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
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "65A22F19-4CD1-4978-0E6D-CEACC6CBECE4";
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
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "D21EDFFA-40A1-8890-16E3-40BDD542FA17";
	setAttr ".t" -type "double3" 5.2152430432041328 -6.6102659766300125 -1.9059726826944328 ;
	setAttr ".r" -type "double3" 166.24154916441353 17.532672327093511 85.781365618985703 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999956 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "B7F86E5C-4A64-43C3-EEC0-0681D2BA59CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.5987211554602254e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -165.51750035534275 -87.444713791537268 -14.676500591162092 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.30124959783483252 -0.22678088064234117 0.92618524711821892 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "B8A9D1FB-49C4-8BA1-8281-85A6029B6DA7";
	setAttr ".t" -type "double3" -6.0396132539608516e-14 6.2172489379008766e-15 -8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" -179.99999999999994 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "3DBAAD60-46F1-89AB-CD43-DD9ED4DE1236";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "71802DA9-4870-352A-4208-9490F86B8DE5";
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
	rename -uid "75D1B2EC-4EE2-6436-DB2E-A3A2BD12A427";
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
	rename -uid "C6BAB0C7-4FEA-30D5-A185-3ABBF52852A7";
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
	rename -uid "07AC9976-486E-A689-BE27-D2B3901F38B1";
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
	rename -uid "89C6A653-406B-5223-2369-8F88A36715C4";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "8D4CF339-43E1-92BC-2688-2C9B001F9A83";
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
	rename -uid "F2C4DAB9-4460-E99C-46FF-8394A038E690";
	setAttr ".t" -type "double3" 11.526513579356001 4.7403995093577844 59.044988748859424 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "B20E69E6-423E-EB04-0B3C-A3BB9597E8DD";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "83B3ABD7-42CE-1234-7EB2-979BB0A93A8E";
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
	rename -uid "7028FC34-4760-B52D-0EEE-9489EC2BED65";
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
	rename -uid "991426BC-4CFC-5196-5F9C-7EB6A1EC8F36";
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
	rename -uid "5D4B761E-497F-423E-66E2-E9BC1D1E0D6A";
	setAttr ".t" -type "double3" 1.7864642677900662 -4.7403995093577826 12.101359527441275 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "AFC8A6DB-4ABE-14A3-0E57-7196146AB443";
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
	rename -uid "AB916911-4B6E-C3E6-5F10-08A68BCF6DB7";
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
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShape1" -p "lfLegQd1_ikc_gmb";
	rename -uid "6A0DC898-4717-C0E7-EAFE-30B9FE601D31";
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
		6.1220468818587612 -3.6963584658999227 6.8873027622146026
		6.004413467665568 -3.6963584658999227 8.0816548597942628
		5.6560338112238533 -3.6963584658999227 9.2301086760643081
		5.0902959473571103 -3.6963584658999227 10.288529774925804
		4.3289408649042889 -3.6963584658999227 11.216243627118889
		3.401227012711201 -3.6963584658999227 11.977598709571714
		2.3428059138497055 -3.6963584658999227 12.543336573438456
		1.1943520975796587 -3.6963584658999236 12.891716229880172
		-1.0699804940886809e-15 -3.6963584658999236 13.009349644073364
		-1.1943520975796611 -3.6963584658999236 12.891716229880172
		-2.3428059138497077 -3.6963584658999227 12.543336573438456
		-3.4012270127112036 -3.6963584658999227 11.977598709571714
		-4.3289408649042924 -3.6963584658999227 11.216243627118892
		-5.0902959473571139 -3.6963584658999227 10.288529774925806
		-5.6560338112238568 -3.6963584658999227 9.2301086760643081
		-6.0044134676655716 -3.6963584658999227 8.081654859794261
		-6.1220468818587657 -3.6963584658999227 6.8873027622146008
		-6.0044134315600965 -1.8630453401236231 6.8873027622146008
		-5.6560337838850465 -0.077903865791572019 6.8873027622146008
		-5.0902960630180267 1.4679195026747225 6.8873027622146008
		-4.3289408637981124 2.6979588379938058 6.8873027622146008
		-3.4012269388037941 3.6242188064817737 6.8873027622146008
		-2.3428058392598197 4.1899565273487935 6.8873027622146008
		-1.1943520713161231 4.5383361750238436 6.8873027622146008
		1.9595888177385801e-17 4.6559696253225127 6.8873027622146008
		1.1943520713161222 4.5383361750238436 6.8873027622146008
		2.3428058392598188 4.1899565273487935 6.8873027622146008
		3.4012269388037932 3.6242188064817737 6.8873027622146008
		4.3289408637981124 2.6979588379938058 6.8873027622146008
		5.0902960630180267 1.4679195026747225 6.8873027622146008
		5.6560337838850465 -0.077903865791572019 6.8873027622146008
		6.0044134315600965 -1.8630453401236231 6.8873027622146008
		6.1220468818587666 -3.6963584658999227 6.8873027622146008
		6.1220468818587666 -3.696358465899924 -4.9894681885914061
		6.1220468818587666 -3.3290356529883969 -5.3567910015029323
		6.0044134315600965 -1.8630453401236231 -5.3567910015029323
		5.6560337838850465 -0.077903865791572019 -5.3567910015029323
		5.0902960630180267 1.4679195026747225 -5.3567910015029323
		4.3289408637981124 2.6979588379938058 -5.3567910015029323
		3.4012269388037932 3.6242188064817737 -5.3567910015029323
		2.3428058392598188 4.1899565273487935 -5.3567910015029323
		1.1943520713161222 4.5383361750238436 -5.3567910015029323
		1.9595888177385801e-17 4.6559696253225127 -5.3567910015029323
		-1.1943520713161231 4.5383361750238436 -5.3567910015029323
		-2.3428058392598197 4.1899565273487935 -5.3567910015029323
		-3.4012269388037941 3.6242188064817737 -5.3567910015029323
		-4.3289408637981124 2.6979588379938058 -5.3567910015029323
		-5.0902960630180267 1.4679195026747225 -5.3567910015029323
		-5.6560337838850465 -0.077903865791572019 -5.3567910015029323
		-6.0044134315600965 -1.8630453401236231 -5.3567910015029323
		-6.1220468818587666 -3.3290356529883969 -5.3567910015029323
		-6.1220468818587666 -3.6963584658999222 -4.9894681885914061
		-6.1220468818587666 -3.6963584658999227 6.8873027622146008
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "B78E2810-4152-FD5A-01C1-4AAA02CF8B90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -4.0856207306205761e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "28512AB3-44DB-7F9E-059E-099E3A39DC80";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -2.5444437451708131e-14 7.5244275693288632e-30 -1.8811068923322172e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 132.79921901487549 1.9040497044281479 91.762240751753112 ;
	setAttr ".radi" 2.0406822939529223;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "28F8C8DB-4B9D-CBD5-0944-1DA0158C15F7";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 96.110222499894576 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.0406822939529223;
createNode ikEffector -n "effector21" -p "lfLegQd1_legLock";
	rename -uid "B84A54C8-4445-1046-47FF-9F8630D6E490";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "lfLegQd1_ikcShape1" -p "lfLegQd1_ikc";
	rename -uid "07017655-4B67-8209-14BB-DCB778201BDE";
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
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "6D355E34-4DBC-01AC-4D4B-EBB6B9BCA7B1";
	setAttr ".t" -type "double3" 22.604483774476272 49.555798908967311 16.531033653757884 ;
	setAttr ".r" -type "double3" -1.3581670790018443 167.15578675770601 -7.0608332248485039e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "7572F1C6-41FE-8AE3-FD5E-6FB86734BE07";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "53A6B3CB-4B21-3518-B383-8CBFBD6140F4";
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
	rename -uid "61B4927E-40F9-8E49-1B3C-F189A68C48E4";
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
	rename -uid "21BB9E64-4B6C-4E2C-23A2-1694F89B9B3C";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 13.967066527718689 24.443160835528957 -88.838635664795007 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "F57FAECF-4A98-CD40-B11E-03BAEE0D9E28";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "41C8B745-4DC0-6A56-AD25-C2ACD8F7ADBB";
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
	rename -uid "7113066A-4591-0BEB-99BA-CBBE352CA032";
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
	rename -uid "3155A133-4C28-8334-AA92-F49544676562";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe01_4_ctl" -p "lfLegQd1_toe01_4_ctl_ofs";
	rename -uid "1EADF68E-47E3-71E0-6CED-31886BD659D0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_4_ctlShape1" -p "lfLegQd1_toe01_4_ctl";
	rename -uid "F532068E-497D-C479-CA6D-BAACEF60E852";
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
	rename -uid "A6C2929B-4431-6238-5971-4AA35B22B9DC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe02_4_ctl" -p "lfLegQd1_toe02_4_ctl_ofs";
	rename -uid "A51C619A-4C2B-26C1-A60C-EABBAC13E629";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_4_ctlShape1" -p "lfLegQd1_toe02_4_ctl";
	rename -uid "4415289A-4BDE-68A3-C604-318D9931B877";
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
	rename -uid "3F3B47AC-47FD-5AB2-07F8-57AA9B2FE0FB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe03_4_ctl" -p "lfLegQd1_toe03_4_ctl_ofs";
	rename -uid "25F5AC60-424F-927D-9017-C49977B8B61E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_4_ctlShape1" -p "lfLegQd1_toe03_4_ctl";
	rename -uid "CE16C018-4322-FF4C-7BC2-FD91606B466A";
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
	rename -uid "AC3D8862-4841-90A3-95B1-D580BEF58EC8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe04_4_ctl" -p "lfLegQd1_toe04_4_ctl_ofs";
	rename -uid "AA875731-48C3-A3D1-6EE2-45B2BD519FC4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_4_ctlShape1" -p "lfLegQd1_toe04_4_ctl";
	rename -uid "08CB64C4-40EB-FC59-46A2-0D8132DA0491";
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
	rename -uid "39143511-496A-2FDD-0D5C-6C8B70BACF6D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "7632E28E-4672-8BD1-D342-A185F935BC8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5.0528317972300139 5.0528317972300139 5.0528317972300139 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "DC8FEDCA-4E8E-EA5A-943B-53B86A8176E1";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "1E30221E-46E4-827B-0F42-E197698D0996";
	setAttr ".t" -type "double3" 1.4584993911388731e-14 89.195039674419846 64.830668500115692 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "8919F6DA-4312-2797-E3AF-47BAB9B0A1A0";
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "7E915FEA-4CB4-448B-6C49-389C87F436E3";
	setAttr ".t" -type "double3" 0 0 -1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "9023F4A2-483B-98B3-CB4C-5E818E631195";
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
	rename -uid "60FBA09F-4456-C44D-39BE-3D8E05875278";
	setAttr ".t" -type "double3" 7.2045234361705946e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "37D003A2-4010-15E9-5265-69BED08AFC55";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "3499D4A0-4C7D-023D-6320-BB9E5A010EED";
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
	rename -uid "2EB24E49-4491-ED9D-BD51-BC82BD8C6ADA";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "299A8961-48CC-4784-9F13-FE8846376EA7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "20373BB0-4E42-BFF6-32FD-2DAB2AD493D4";
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
	rename -uid "8C01EB4B-470C-854F-C1C4-DDB99643C630";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -10.36864157989338 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.36864157989338 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.98367012301057399 -0.17998080202166622 0
		 0 0.17998080202166622 0.98367012301057399 0 1.4592198434824902e-14 89.195039674419846 64.830668500115692 1;
	setAttr ".radi" 0.29734230278068408;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "35F3C125-4887-D689-8164-E0B0563186F3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -7.2045234361705946e-18 0 0 ;
	setAttr ".r" -type "double3" -10.368641579893524 -2.7246750569648928e-15 -5.1416977595943357e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 10.368641579893449 0 0 ;
	setAttr ".radi" 5.9468460556136815;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "9089FBBF-44A6-3F7C-9AA5-0C99FFBFAD14";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -1.6361350750788981e-14 8.8155866387476465 27.872506220282858 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.9468460556136815;
createNode ikEffector -n "effector31" -p "neckQd0_two_ikj";
	rename -uid "87E5EE97-457A-4644-7202-A6A6A045F388";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "BB7D3E40-4AE7-0AEB-FEA7-2580FB6F3D92";
	setAttr ".t" -type "double3" -1.6368555274225146e-14 8.8155866387476891 27.872506220282858 ;
	setAttr ".r" -type "double3" 10.368641579893449 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "C067361D-4678-9239-14BD-B79950F7B056";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "DD208057-48A3-4901-ED23-EE9FA5EA2244";
	setAttr ".t" -type "double3" -8.2188056862022839e-15 2.1947767935445768 14.571996177830016 ;
	setAttr ".r" -type "double3" -19.186731427957685 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "6AD0B1C1-41EB-0E12-10F9-40AD7E0F1384";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "98C427D0-481E-666F-5DBE-0BADBC132D78";
	setAttr ".t" -type "double3" 7.8886090522101181e-31 -1.0658141036401503e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "D2C03096-4C95-7D21-92D9-9F9B9C428640";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "F8041563-42A4-9596-11BA-DC96761A80B4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -29.555373007851134 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 29.555373007851134 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.86987939108666057 -0.49326447770207488 0
		 0 0.49326447770207488 0.86987939108666057 0 6.366188225186447e-15 93.976655592049099 78.769688085310648 1;
	setAttr ".radi" 0.29734230278068408;
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "AA397441-4FBE-C292-3854-6A93171B3B97";
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
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "9F2ECEC5-4E38-54F2-EA51-BEAA61EFE6CE";
	setAttr ".t" -type "double3" -1.6361350750788975e-14 8.8155866387476607 27.872506220282858 ;
	setAttr ".r" -type "double3" 10.368641579893449 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "C787167F-4ABC-879A-B7D6-2A9F3083D7B2";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "C4CAC4B9-4546-9710-E74F-E1BAAF774D1E";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 2 -at "double";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -uap -ci true -k true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 
		1 -at "double";
	addAttr -uap -ci true -k true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
	addAttr -uap -ci true -k true -sn "volumeScale" -ln "volumeScale" -dv 1 -at "double";
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
	setAttr -av -k on ".stretchMin";
	setAttr -av -k on ".stretchMax";
	setAttr -av -k on ".volumeScale";
	setAttr -k on ".space";
	setAttr -k on ".posSpace";
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "F1819443-4FF9-AD00-F9EA-00BA5714ABB2";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "6D8FDC10-410D-E2A0-59F5-F99EA743CAE1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "058680CC-463B-616B-7298-1E834043510D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.7763568394002442e-15 102.88318489164752 90.661383768901032 1;
	setAttr ".radi" 0.29734230278068408;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "D5D05880-4532-0003-1BA7-B780B77647FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "32D6DB1A-42CE-B158-3876-D185E380671B";
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
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "E34E2856-4FD4-E2BB-70AF-82B116A7AEEF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "0A831000-4028-BD06-C387-FF9EC10D9256";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "D3B94134-4F73-027B-11A9-09AC59A146F2";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.5295233275169409 7.9502592021697183 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "516B5202-46E6-FF74-6A2B-889125E009D1";
createNode nurbsCurve -n "neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "14E8DD91-491B-503E-318B-C59A327FDE92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.195608135522662 18.848449170492188 -10.01272372410223
		1.1895295083084689e-15 25.66107368080754 -10.01272372410223
		-13.195608135522662 18.848449170492181 -10.01272372410223
		-18.661407989016912 -0.23165293347576918 0.96591795159679528
		-13.195608135522662 -16.678783421634428 0.96591795159679394
		-1.8224781711392993e-15 -23.491407931949791 0.9659179515967935
		13.195608135522662 -16.678783421634428 0.96591795159679394
		18.661407989016912 -0.23165293347577356 0.96591795159679528
		13.195608135522662 18.848449170492188 -10.01272372410223
		1.1895295083084689e-15 25.66107368080754 -10.01272372410223
		-13.195608135522662 18.848449170492181 -10.01272372410223
		;
createNode nurbsCurve -n "neckQd0_cog_ctlShape1" -p "neckQd0_cog_ctl";
	rename -uid "73FE3CC7-408C-4FE0-AC0B-A0B03D8998FE";
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
		13.916386811329666 2.7844945522468238e-15 -2.6641228437882315e-31
		15.390753251328395 15.390753251328412 3.1589555448683043e-16
		8.5213292820956418e-16 13.916386811329627 4.467437774486451e-16
		-15.390753251328395 15.390753251328402 3.1589555448683023e-16
		;
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "12A4C09C-4CDE-4941-AFF6-7AA5E9009E57";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
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
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "neckQd0_settingShape1" -p "neckQd0_setting";
	rename -uid "97EE7781-45D5-28DD-014D-1E8ED0422BEE";
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
	rename -uid "0E619F62-4FFD-2F12-1A42-8E94A0216A3D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "45EAA545-41B8-3BA1-C0B6-B5A7F524C303";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.4601345417102607 4.4601345417102607 4.4601345417102607 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "4E7BE001-46CC-95EF-1895-5A9DFE427017";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "AC9318CA-4960-BE41-1979-759CB62682FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 4.4601345417102607 4.4601345417102607 4.4601345417102607 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "6871EADC-4F3B-286A-685D-CFAAD19DABAA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "68593475-42F8-A8B6-59D6-3B8E8508FECA";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "D236C531-4AA8-1B1E-ACF6-D4859606AFA4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.4533739092377043 -47.722856377983369 84.45704903697775 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "BB12FD8A-4817-D978-FE4B-9A9111A9B457";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.237484072449698 63.796237744181688 1.5239924979247303 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "0B767DD1-4E23-9049-BE96-339FB488E83C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "970F9204-4ED8-E190-8DB1-8B9A7A6A3249";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533401553 28.202196682808168 0.1515111460411159 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "4B276315-4053-3B04-5503-5B9ED333763D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 0.95963448437503718;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "2B1AE211-4BE6-2D4F-DB37-08A5AE861CD7";
	setAttr ".t" -type "double3" -6.977450066444451 1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.1631179523009534 -87.519412399538908 -4.8064433295208451 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "1DFA7B2E-48F5-FD50-CD1D-CD82E765FAC4";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "25679E8D-4AAD-4A5C-29AD-BFBBA87521A4";
	setAttr ".t" -type "double3" -6.9774500664444403 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 4.1631179523003352 -87.519412399538908 -4.8064433295201363 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "EA0FAE8C-4476-7436-DDA9-BBA4170E78B9";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "76421A3B-48B9-A1FE-DB6C-44AB7B3A379E";
	setAttr ".t" -type "double3" -6.9774500664444474 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "379D81C8-47A1-F55D-F653-2DBB1E5728DE";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -5.8939653940870797e-14 2.5575084015466954e-14 -4.2415678447329874e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635152e-15 -2.2263882770244611e-14 2.3059021440610491e-14 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "F9B08BA5-41A9-5B22-98A6-558F601C343F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.951137303935619 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000647 67.847764185926991 36.972456027856822 ;
	setAttr ".radi" 0.95963448437503718;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "BDD10457-4765-85C9-6584-00B59D7CE7C3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "5A0A1525-4497-6F37-240E-D49A994D2159";
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
	rename -uid "19C705EE-4EDE-0B01-DCF8-9FAA040F8AEB";
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
	rename -uid "92E1745C-4C6C-5153-1D8E-36A54C5D0F2D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "AD766188-411C-93A1-DF1A-528B57D41B9A";
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
	rename -uid "6AD50157-40DF-341C-291F-758ABA57D040";
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
	rename -uid "25755E03-4A8B-E0FC-0977-95A294F46EC3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "E6A201DF-430F-5DB8-466D-9EB3A16E0AF1";
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
	rename -uid "6552F421-4879-B38A-5D11-DCB5D56D54DA";
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
	rename -uid "BD81E286-480D-9AE1-EB19-D0BA977A19B2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "02C548FF-49ED-761F-3CD3-7AB4EF3AFDFD";
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
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "ED4FFA15-4235-3762-AF7F-F9A031B5D695";
	setAttr ".t" -type "double3" -7.815970093361102e-14 3.5527136788005009e-15 8.1712414612411521e-14 ;
	setAttr ".r" -type "double3" 105.19686542444728 -3.3083777434560968 -78.005620489165295 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999967 ;
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "A58406D2-4831-01AE-A3AB-73905A361816";
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
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "826A18E7-411F-C3A1-F544-C98937807694";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "0D3C49FE-4E9C-E593-ECCD-82B73A9FEAB8";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "8BA03F45-4C6C-AC67-2E4D-79B3DBD49879";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "E6D84BB6-4056-9901-618A-3B96431FCCFD";
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
	rename -uid "A2F5AA2E-45E6-2EA2-4874-9595D7FD59FB";
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
	rename -uid "9BB59762-43F3-77A6-855D-9780C210A997";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -3.5527136788005009e-14 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 98.147122544543905 39.687083909305876 3.8358903435112435 ;
	setAttr ".radi" 2.8789034531251105;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "69DDB238-41A8-309B-93E2-1A8DCA5F6E0A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -90.165654146187137 0 2.7533531010703882e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270351e-15 3.3793393490549868e-15 -5.5659706925611559e-15 ;
	setAttr ".radi" 2.8789034531251105;
createNode ikEffector -n "effector37" -p "rtLegQd0_autoAim";
	rename -uid "91AFAD81-4203-0E99-6F93-78B9DC054680";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "59F32C46-4D39-C0F8-13F2-BA88B4F731FF";
	setAttr ".t" -type "double3" -11.526513858654408 4.740396366071316 -44.658539302698848 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "237FBFFB-4A15-39EF-CA75-2F880966E14B";
	setAttr ".t" -type "double3" -1.447607025632669 1.869869610558637 6.564511985393203 ;
	setAttr ".r" -type "double3" -13.758450835589835 17.532672327095767 85.781365618984069 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "AFB8A5CE-4BD2-58EC-5C44-EE8CDB736D8B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "A801F782-43EE-AC1C-E0F6-9A8CB3948381";
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
	rename -uid "DF777395-484D-46B4-5E8D-649BFB9CA181";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039355107 7.1054273576010019e-15 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486954 -0.22678088064239274 0.92618524711819461 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "3C892D0E-4F2B-1FA3-2A46-74AD05CE568C";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "3D947A73-427A-7605-C93F-2098254512FB";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_toe01_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "7E9034DB-45F4-4636-FCD6-99943DDCEBB4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.95005788316907847 -4.7695677060876172 -1.0401287459840098 ;
	setAttr ".r" -type "double3" 34.397312503735591 70.986343301602034 36.406368017681665 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe02_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "E0CE8644-4113-4B73-0BE3-54AB2872A735";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.53635655089807344 -1.3511407022690989 0.20480056262326229 ;
	setAttr ".r" -type "double3" 10.505007782266091 83.751864507242459 10.813849716046114 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe03_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "E17CCBC9-4970-09B4-7F3B-559D92D2D36E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.62757604096418618 1.9977720025257568 0.2720452723746547 ;
	setAttr ".r" -type "double3" -24.348088857686019 79.799102699042962 -25.371460480463529 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe04_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "1818FFCC-48E4-F83B-32D4-FE959F2458DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.83855776202123167 4.6680201906183569 -2.0699847239616886 ;
	setAttr ".r" -type "double3" -37.288936376357938 68.219959849320787 -39.568623976364947 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486982 -0.22678088064239277 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "5B4D16F0-4437-C4A5-66B7-85BFD3F989E5";
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
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "DBA74685-4B86-5667-AEB9-97A62CA88112";
	setAttr ".t" -type "double3" -0.95005788316907847 -4.7695677060876172 -1.0401287459840169 ;
	setAttr ".r" -type "double3" 23.462131422915974 -7.1040108787648961 4.9687479993563306 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs1" -p "rtLegQd0_toe01_3_ikc_ofs";
	rename -uid "5FDC299A-4450-E917-D184-1F8F1679ADF6";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "rtLegQd0_toe01_3_ikc" -p "rtLegQd0_toe01_3_ikc_ofs1";
	rename -uid "3A367065-4ADC-E331-48E6-3584634ECF1A";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_toe01_3_1_ikj_ikh" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "C963A93D-406A-4633-CFB6-E594BBCB75B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6291491541309622 1.2120015956545094 3.1012442427608988 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20276264859419291 0.19835287177251482 0.95892828021425247 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_toe01_3_ikcShape1" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "A6C5BBFC-46DB-32CC-1437-8EAB6318461A";
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
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "18739400-4F13-7718-6ACB-488F35626267";
	setAttr ".t" -type "double3" -0.53635655089807344 -1.3511407022690989 0.20480056262325519 ;
	setAttr ".r" -type "double3" 2.3234926624242491 -3.8237351579393151 0.59945408605349049 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs1" -p "rtLegQd0_toe02_3_ikc_ofs";
	rename -uid "3372272C-4305-7506-B147-F4B368466887";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe02_3_ikc" -p "rtLegQd0_toe02_3_ikc_ofs1";
	rename -uid "FB7A0621-4235-3898-76C5-5CA84E0D8EB1";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_toe02_3_1_ikj_ikh" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "8982935A-47A3-CE7C-6719-0FABC2B845F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.723553716546121 -0.070219300522929018 3.2891403472723582 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.24116516335607197 -0.1851467076164301 0.95265946730310425 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_toe02_3_ikcShape1" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "7D0AA072-4FE2-C8AF-6358-92AF040CD57C";
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
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "33668232-472A-6F9D-4820-F686898F2FCD";
	setAttr ".t" -type "double3" -0.62757604096418618 1.9977720025257568 0.2720452723746476 ;
	setAttr ".r" -type "double3" 16.136251603012656 -2.6800632013464472 4.6182660438474903 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs1" -p "rtLegQd0_toe03_3_ikc_ofs";
	rename -uid "53ADD307-4D87-0117-5F70-F08852EE402D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe03_3_ikc" -p "rtLegQd0_toe03_3_ikc_ofs1";
	rename -uid "0356BFCE-48E9-0022-7D7C-B7991BF8E2A7";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_toe03_3_1_ikj_ikh" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "4DE4A155-4F50-556C-8950-16ACFED18605";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.7733038800070293 0.78359770912667415 3.1741325994174403 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999944 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.27487538160233527 0.067426400954544941 0.95911271759021444 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_toe03_3_ikcShape1" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "81B09F27-4332-B4E1-8487-2B87F426C767";
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
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "22D965FD-4FB8-5DD9-17DB-3D88504508D2";
	setAttr ".t" -type "double3" -0.83855776202123167 4.6680201906183569 -2.0699847239616957 ;
	setAttr ".r" -type "double3" 13.674781386933427 -6.7225221585064485 2.8744576905906736 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs1" -p "rtLegQd0_toe04_3_ikc_ofs";
	rename -uid "280D6E97-479F-604B-C521-B6928CAA0A0D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe04_3_ikc" -p "rtLegQd0_toe04_3_ikc_ofs1";
	rename -uid "C2B60F8F-41C7-3ABE-5312-82B7A6254E4C";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_toe04_3_1_ikj_ikh" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "D340A467-43D9-1CC4-D411-31B7303C434D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.4739011017031149 1.1392126960718798 3.1309827192311275 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20167605816007877 0.020699272603380989 0.97923353071609232 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_toe04_3_ikcShape1" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "62AFD90C-474D-9703-72BA-C2A881C0F678";
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
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "F83AA088-48DC-7582-D073-7F898C190A59";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "0536314A-4C3D-D8F4-3241-35B3CDEBA3E7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.4533739092377043 -47.722856377983369 84.45704903697775 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "94566AB6-45EC-1825-6926-F78097CC147F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.20340027128837 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -7.8472049396926138e-07 -9.4688077942670305e-06 -3.3636750457669242e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.237484072449698 63.796237744181688 1.5239924979247303 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "25193CA4-4F04-704D-ACF6-4889930B4D43";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.251914290918286 -7.1054273576010019e-15 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -1.2476418838448234e-20 1.8155372309314924e-05 1.1102380739683818e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -44.425605779370386 0 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "EF9C8DA5-4FA7-90CB-0020-F7972E791B8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -36.188739948176845 -2.4868995751603507e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 2.6635766139743913e-07 -2.6645427799562407e-08 -1.1069071892337133e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.4257136533401553 28.202196682808168 0.1515111460411159 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "B9DB58D2-4477-4920-4205-4B97F00852B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.259600490641112 1.5265135793570774 6.3414588457820571 ;
	setAttr ".r" -type "double3" 6.0111106461521396e-07 2.0310447644554647e-05 -8.8809256833979759e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "138873C9-4F30-10A3-3197-45835E3D0196";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.977450066444451 1.0658141036401503e-14 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 2.7706073798628643e-07 -3.6821932536734721e-05 -1.8970208375589368e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179522998609 -87.519412399538922 -4.8064433295195466 ;
	setAttr ".radi" 0.95963448437503718;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "499C9C79-4ECB-761C-0EFE-E1A18E2CA8F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.951137303935619 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000647 67.847764185926991 36.972456027856822 ;
	setAttr ".radi" 0.95963448437503718;
createNode ikEffector -n "effector35" -p "rtLegQd0_ball_ik";
	rename -uid "98132AB5-414D-3954-24B8-2A9FA4A46EDE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector34" -p "rtLegQd0_digit_ik";
	rename -uid "E096EEC5-4DB2-3B29-7F37-0194E76CCB1F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector33" -p "rtLegQd0_palm_ik";
	rename -uid "9D670518-4C6C-5E6D-CF48-06946879DD18";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector32" -p "rtLegQd0_lwr_ik";
	rename -uid "14B18D90-41A8-F736-BEDE-F8A483D60F0E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "DE54F000-4F35-94EB-2C14-5AB5FCCAED55";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -15.20340027128838 -1.7763568394002505e-15 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 1.4059303768781546e-29 4.2177911306344664e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 85.728783746642094 40.764467629269589 6.3138508374306195 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "C8E4BFE1-4E21-1B91-A336-7E95DA8083A0";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -64.296783447265625 -3.5527136788005009e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270351e-15 3.3793393490549868e-15 -5.5659706925611559e-15 ;
createNode ikEffector -n "effector36" -p "rtLegQd0_softJ";
	rename -uid "C70A2A7C-47E1-DE4E-A4EE-BD8A0CD3CED3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "64BA4152-4907-67CF-B8C9-DC90253B4171";
	setAttr ".t" -type "double3" -26.740373408540727 44.665640417510829 -0.85668887026110241 ;
	setAttr ".r" -type "double3" -179.92349003539292 -88.909162981886894 83.01983409513231 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "38E95A70-4009-3898-9B6E-93B1CF8A4E2C";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "9D0B0D5E-470F-CA21-98FF-1C82573D4D23";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "C4751273-437D-C967-6E30-938A0DA9FE2B";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -20.000000000000039 3.848287691158653 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "40D23144-4FF7-94DE-7BBE-9184E7696F88";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "34B76D94-4EDD-D6D2-75DA-A0A3160B8198";
	setAttr ".t" -type "double3" -3.3129778471460689 0 15.73217680702232 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "7955D820-4124-6CEB-942B-A99DA0E304D6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "5E3D3F2D-4AC1-35AB-78BE-6CBF71D0D80D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "E0EC17F6-4131-71D9-304C-C9A1B04A4FD0";
	setAttr ".t" -type "double3" -5.4785272737373383 0 -8.5804644981809375 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "BB88BA96-4B19-F297-073A-09B1A8215056";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "B6D3628D-4891-DEB8-AF47-C6B54044D177";
	setAttr ".t" -type "double3" 12.024823832191306 0 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "51D3EBEA-4CD4-F8FF-506B-86A3094D66DC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "2375A87B-416E-6CAA-CA05-6EAB0752BFC4";
	setAttr ".t" -type "double3" -6.2074395955949946 6.6102659766300782 1.905972682694383 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "28545BCE-474E-FEF5-93D9-DB92651B5BF7";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "344882E7-4D58-C668-1033-23B41CD0FF2A";
	setAttr ".t" -type "double3" 1.447607304930024 -1.8698664672711534 -6.5645138369123543 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "E7B09B70-4E98-5B04-E831-B7B25D51E327";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 178.97884369877477 0 89.609827760862572 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "89E79AEE-4152-3C77-1783-9389BF13754C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "D61D8557-4AFB-9E25-8CA8-2091A45D20CD";
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
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "86A08435-427A-E2A1-16F4-5AB6A7F57F30";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "DEC71DD3-4457-055D-6BD2-9087DE469552";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -1.1546319456101628e-14 -6.3948846218409017e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -1.9721522630525295e-31 6.1629758220391547e-33 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "9E14CD62-4ED6-4BFA-0C27-84AC75F5D225";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5265135793570916 15.259600490641104 -6.3414588457820926 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "AFFD3B19-4480-261D-42FD-478D6093E586";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "515E1FD8-4125-B58D-9D54-E8AD14C9292E";
	setAttr ".t" -type "double3" 1.5265135793570916 15.259600490641104 -6.3414588457820926 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "61A1A0B7-4ACB-49F7-6A44-91BDEC18BBA8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "9395B2F2-434F-3C46-FE1F-A88311B0F279";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "351E3997-4DAE-16D3-8A3E-108D3F3E8FA5";
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
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "9A994C7F-40F7-D1C8-F44B-4799FB40C24C";
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
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "08880633-44DD-3C05-00A1-A9B688E8AFFB";
	setAttr ".t" -type "double3" -6.2074395955949946 6.6102659766300782 1.905972682694383 ;
	setAttr ".r" -type "double3" -13.758450835589796 17.532672327095764 85.781365618984069 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "BB7EDDA8-45AA-0D73-A2E7-DC9A6D1CAAD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -6.3948846218409017e-14 ;
	setAttr ".r" -type "double3" 14.482499644864644 87.44471379152435 14.676500591330571 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783486965 -0.22678088064239207 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "15FC3E45-4029-15C5-536F-AC96DC158DDA";
	setAttr ".t" -type "double3" -1.0658141036401503e-13 -1.4210854715202004e-14 -5.3290705182007514e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "2B6450F1-46FE-E784-F7A6-42BD463DE47A";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "7FE212DD-4288-379A-F055-A99E4F1EE2F3";
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
	rename -uid "11A860FC-4906-7ACE-9707-EFAB5E4B1281";
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
	rename -uid "71156F96-4B8C-A2BF-8140-28A3EC9E36C1";
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
	rename -uid "FE8BF291-4456-F2D5-2775-668C6623C64C";
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
	rename -uid "7F224C98-4B68-0C4C-E3D3-9F942B75C8EF";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "3384D957-4BC0-763E-E73B-9586A4DEC3EA";
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
	rename -uid "C31400FB-4E57-3A3E-0003-ABA04511129A";
	setAttr ".t" -type "double3" -11.526513579357072 4.7403995093589248 -44.658541154217986 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "C38EAE5E-43C5-2D58-FCA0-6B857EC7518B";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "0951333B-4248-4F59-1FF3-1AA5FBD43CF0";
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
	rename -uid "E468586B-4C80-B4DF-F9DA-469564C2A9EE";
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
	rename -uid "172317A5-4A0B-1BB2-7E5B-B78F638D53F9";
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
	rename -uid "36069F78-49C0-D3AF-B4D6-AA946F87B38C";
	setAttr ".t" -type "double3" -1.7864642677889968 -4.7403995093589248 13.23900565239893 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "49D09A29-49C2-3709-D8B2-98BC48201076";
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
	rename -uid "D73302E4-4778-D8DB-B989-BEAD3C0A242A";
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
		2.994224626446583 -5.7320785451690439e-32 -5.9910681368500838e-16
		3.3114466441226473 6.796751638574869e-17 -3.3114466441226513
		1.8334338023529899e-16 9.612058347354148e-17 -2.9942246264465746
		-3.3114466441226473 6.7967516385748653e-17 -3.3114466441226491
		;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShape1" -p "rtLegQd0_ikc_gmb";
	rename -uid "BDB92B52-48EC-B615-6CE5-BCBE98857D06";
	setAttr -k off ".v" no;
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
		5.7578069062502166 -3.7584751841930713 6.4775327534944855
		5.6471722610542754 -3.7584751841930713 7.6008251569415268
		5.3195199528367079 -3.7584751841930713 8.6809500632737375
		4.787441476052785 -3.7584751841930713 9.6763988780817929
		4.0713843081722647 -3.7584751841930713 10.548917061666748
		3.1988661245873078 -3.7584751841930713 11.264974229547271
		2.2034173097792511 -3.7584751841930713 11.797052706331193
		1.1232924034470415 -3.7584751841930713 12.124705014548763
		-6.7218647982562942e-16 -3.7584751841930713 12.235339659744701
		-1.1232924034470428 -3.7584751841930713 12.124705014548763
		-2.2034173097792524 -3.7584751841930713 11.797052706331193
		-3.19886612458731 -3.7584751841930713 11.264974229547271
		-4.0713843081722674 -3.7584751841930713 10.548917061666749
		-4.7874414760527877 -3.7584751841930713 9.6763988780817947
		-5.3195199528367105 -3.7584751841930713 8.6809500632737375
		-5.6471722610542789 -3.7584751841930713 7.6008251569415268
		-5.7578069062502202 -3.7584751841930713 6.4775327534944829
		-5.6471722270969504 -2.0342376570036351 6.4775327534944838
		-5.319519927124464 -0.35530573964104883 6.4775327534944838
		-4.7874415848322895 1.0985466464249398 6.4775327534944838
		-4.0713843071319005 2.2554030241254197 6.4775327534944838
		-3.1988660550771275 3.126553824905284 6.4775327534944838
		-2.2034172396271972 3.6586321671974593 6.4775327534944838
		-1.1232923787460916 3.9862844671699467 6.4775327534944838
		3.5256399003583581e-16 4.0969191463232155 6.4775327534944838
		1.1232923787460916 3.9862844671699467 6.4775327534944838
		2.2034172396271972 3.6586321671974593 6.4775327534944838
		3.1988660550771275 3.126553824905284 6.4775327534944838
		4.0713843071319005 2.2554030241254197 6.4775327534944838
		4.7874415848322895 1.0985466464249398 6.4775327534944838
		5.319519927124464 -0.35530573964104883 6.4775327534944838
		5.6471722270969504 -2.0342376570036351 6.4775327534944838
		5.7578069062502211 -3.7584751841930713 6.4775327534944838
		5.7578069062502211 -3.7584751841930726 -4.6926126446309446
		5.7578069062502211 -3.4130067698180575 -5.0380810590059584
		5.6471722270969504 -2.0342376570036351 -5.0380810590059584
		5.319519927124464 -0.35530573964104883 -5.0380810590059584
		4.7874415848322895 1.0985466464249398 -5.0380810590059584
		4.0713843071319005 2.2554030241254197 -5.0380810590059584
		3.1988660550771275 3.126553824905284 -5.0380810590059584
		2.2034172396271972 3.6586321671974593 -5.0380810590059584
		1.1232923787460916 3.9862844671699467 -5.0380810590059584
		3.5256399003583581e-16 4.0969191463232155 -5.0380810590059584
		-1.1232923787460916 3.9862844671699467 -5.0380810590059584
		-2.2034172396271972 3.6586321671974593 -5.0380810590059584
		-3.1988660550771275 3.126553824905284 -5.0380810590059584
		-4.0713843071319005 2.2554030241254197 -5.0380810590059584
		-4.7874415848322895 1.0985466464249398 -5.0380810590059584
		-5.319519927124464 -0.35530573964104883 -5.0380810590059584
		-5.6471722270969504 -2.0342376570036351 -5.0380810590059584
		-5.7578069062502211 -3.4130067698180575 -5.0380810590059584
		-5.7578069062502211 -3.7584751841930704 -4.6926126446309446
		-5.7578069062502211 -3.7584751841930713 6.4775327534944838
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "A3E99A7D-4D0D-FF1D-6CDC-F8BDF49433AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_ikcShape1" -p "rtLegQd0_ikc";
	rename -uid "E72191F4-4522-5B9D-940E-D18FBC6E10BB";
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
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "D3B75B3B-4D09-CD84-1BCA-29BD150C74AB";
	setAttr ".t" -type "double3" -17.032164269785561 51.850024983659566 -2.6020486514904699 ;
	setAttr ".r" -type "double3" 0.076509964608046405 -8.3542899989706747 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "3BE5F954-4044-A560-F409-0D946A03E09C";
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "1DD81BE0-4E4E-BA45-85DD-1AA194719B87";
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
	rename -uid "5F38661B-4785-C5AA-36A0-C185ADFAA512";
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
	rename -uid "1110D267-4D7A-D94E-4CAA-CDB6D91EE0EB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -8.6944995874868205 16.027115305967875 87.447398552657077 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "8EE202EB-4EF9-27C1-DE25-8D8DDE3CA832";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "4E6E581A-4787-1C91-A394-1C9370C5A9EB";
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
	rename -uid "9DE4AAC6-422E-68A3-5514-238465826902";
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
	rename -uid "EEEFAF8C-4933-F0C7-BBFD-3F8CCCEB7AA5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe01_4_ctl" -p "rtLegQd0_toe01_4_ctl_ofs";
	rename -uid "45552AC3-474C-E6A5-5504-4699B2753BA6";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_4_ctlShape1" -p "rtLegQd0_toe01_4_ctl";
	rename -uid "08226101-43CC-1C87-6EF4-FE86C0F889E3";
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
	rename -uid "1010BF79-431E-68B8-D010-33B8D1FBE58B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_4_ctl" -p "rtLegQd0_toe02_4_ctl_ofs";
	rename -uid "6881AA3D-47C3-6DCB-6582-0CB620EA2C3E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_4_ctlShape1" -p "rtLegQd0_toe02_4_ctl";
	rename -uid "C24BBF9F-415E-F280-1C2A-8A980D5A618F";
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
	rename -uid "FBF7BF37-4837-A1C4-4421-F893F9E1EC27";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe03_4_ctl" -p "rtLegQd0_toe03_4_ctl_ofs";
	rename -uid "5B69B286-488B-83FD-E65D-5EBCBFED6087";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_4_ctlShape1" -p "rtLegQd0_toe03_4_ctl";
	rename -uid "25D0BD74-4684-A524-78CE-91A336036B3E";
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
	rename -uid "62FB0297-4645-C099-4010-588559360450";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe04_4_ctl" -p "rtLegQd0_toe04_4_ctl_ofs";
	rename -uid "E78E2769-4EF9-CFBA-B34E-94A4924055D1";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_4_ctlShape1" -p "rtLegQd0_toe04_4_ctl";
	rename -uid "350F7D37-4A8D-13C7-8163-9C8061988F36";
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
	rename -uid "AE223039-4DB0-5887-FD78-2E8301E94536";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "798EAE06-430C-2393-4A9F-57B13367388A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.9993213663858391 3.9993213663858391 3.9993213663858391 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "556FDE99-4546-311F-28EB-E0A55BAD9D3B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "786E0016-4A42-8510-BC6B-F3A128DC35FA";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "5521F487-429D-7CCD-DB5E-4EB0D4267962";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.6405100203173062 16.744161296497722 78.887112396642095 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "7D937B34-4433-48DC-1645-DA974D38800B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068351 10.610383260348035 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "372C882F-4F82-D6F6-720F-F396392EF1D0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871598 0 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "5A0B72A8-40CE-AEF5-73A7-97B2FD3D8D85";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292601 6.1429192907087611 4.6257962827270047 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "9C0F4B7E-4163-3EBD-F06A-FB9F2DDA6F62";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 1.0203411469764514;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "F10DD5A9-48BB-E6BB-F7C0-E29123707579";
	setAttr ".t" -type "double3" -6.9774500664444901 7.7715611723760958e-15 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 4.1631179523010609 -87.519412399538922 -4.8064433295205609 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "DD49A7F3-471A-88CD-9699-D6BA6CE06A9A";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "8A9F5B2A-4E5F-5D7F-D88E-79B18BA23927";
	setAttr ".t" -type "double3" -6.9774500664444048 1.3100631690576847e-14 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 4.1631179523005546 -87.519412399538908 -4.8064433295202411 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "C6BACBC9-4C7B-9A89-6A72-A4A95E838440";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985006262e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "2E9BB220-4AFD-6FFE-A871-4896CDA7F4F8";
	setAttr ".t" -type "double3" -6.9774500664444048 1.3100631690576847e-14 5.3290705182007514e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "DB0B0E00-4639-71D4-F551-6E80B5FECF82";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" 4.199326102869797e-14 -1.2527704822605369e-14 -2.1245111348838329e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.431249606658583e-14 -2.544443745170814e-14 2.385416011097638e-14 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "C170E5F3-40E1-4B41-C1F1-3995D5D529CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039356172 -1.1546319456101628e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000626 67.847764185927019 36.972456027856765 ;
	setAttr ".radi" 1.0203411469764514;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "69EF6529-4CE4-7A4C-570E-F8BFE97FF24D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "CD473647-48E8-897B-E691-FBB19B3128C1";
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
	rename -uid "92C9DC47-425F-3BDC-9E9F-66915F671FE5";
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
	rename -uid "D24BD50A-4B3B-ACB4-551D-D380BD719140";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "3DAD6A95-48D9-98DF-B859-A0B1429AC19A";
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
	rename -uid "E2D6A7A1-483D-202A-C034-0B8B255761D6";
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
	rename -uid "1F4EE778-40C4-8111-8D5D-36937A7646B4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "E86A48C6-4F6A-9D03-FC53-BE9C68B42CE9";
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
	rename -uid "CDCEBCFD-4437-A56F-379F-619C6C311898";
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
	rename -uid "FCAA67E0-425D-3F8A-F134-C39BC6923E8A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "4169FC2B-4D18-B56D-3EAC-0F9A2175C0A6";
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
	rename -uid "7840B039-4B89-E39C-739E-53A2AE7DE942";
	setAttr ".t" -type "double3" 7.815970093361102e-14 1.5543122344752192e-15 -4.4408920985006262e-14 ;
	setAttr ".r" -type "double3" 105.19686542444724 -3.3083777434561337 -78.005620489165324 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "67FE759C-42D5-3422-CC3A-01B486DBCDF1";
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
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "8826F4EB-40E4-D306-B2FA-A58DA5289E0C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "B8733159-4B2D-8C58-ED95-FBA9AAB84261";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "E7B3E7DD-4B71-B22C-69F8-FB9CB3115C52";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "35C39A98-453E-8F49-D6B4-26B62FE07007";
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
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "057538C1-43D9-63C8-5DE6-EF8B2B36D916";
	setAttr ".t" -type "double3" -28.63209927406912 -5.6843418860808015e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "41C22528-454C-9685-BA19-AE8A30B4F3F6";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "6CD97839-4A0C-0ED7-258E-1F88011959AA";
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
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "CB1BDB4B-4684-E2A6-4F0B-D29F8CA33F63";
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
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "7B0F5084-4934-B28F-3E3A-B8B9AAEFF8F1";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-14 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -133.8985395092084 -14.882759485808112 9.2347906832210676 ;
	setAttr ".radi" 3.061023440929354;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "CFAAC381-489F-2327-E8B9-9EB6A6F73216";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -96.110222499893453 -2.1316282072803006e-14 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635164e-15 -2.186631343506168e-15 -7.0568556994971777e-15 ;
	setAttr ".radi" 3.061023440929354;
createNode ikEffector -n "effector51" -p "rtLegQd1_autoAim";
	rename -uid "DACAAEB3-4844-427F-2703-A59FDFFD509E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "56C9E480-447B-F3F0-5FEA-8997CD4C9B4E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.0658141036401503e-14 0 ;
	setAttr ".r" -type "double3" -46.101460490791723 14.882759485808091 -170.76520931677896 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "76B83287-4488-1C50-D01C-499F7FA9BC81";
	setAttr ".t" -type "double3" -11.526513534232073 4.7404004427874753 59.044988410997362 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "5CAD633C-4B70-5315-BB8F-53BAF972CE3F";
	setAttr ".t" -type "double3" -1.4476073500550495 1.8698655338426367 6.5645141747745157 ;
	setAttr ".r" -type "double3" -13.758450835589514 17.532672327095828 85.78136561898404 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "BC98BAFB-4C4A-4518-0FE2-068FBC1DA27B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "EA6E448B-47B7-691E-CAA5-F0A5D730F528";
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
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "9D3BABEC-4662-7EE6-3353-CC835ECAB9F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039356457 7.9936057773011271e-15 -7.1054273576010019e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487054 -0.22678088064238747 0.92618524711819505 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "1FDDEA34-4453-64C4-2CA7-44BC88C4A9AA";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999956 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "705975DE-4BEB-AF57-476B-37AF838EC60F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_toe01_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "32583B9F-4EDB-3FC2-6F16-4894AC695E81";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.67815955108770254 -4.5017535738891681 -1.3164646055064964 ;
	setAttr ".r" -type "double3" 29.724325556490559 73.915909623053622 31.334682477066174 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999922 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe02_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "90EF3789-4DE9-4C05-0FCA-488110E3471A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45532223811231098 -0.74375689773013676 0.36853481284909151 ;
	setAttr ".r" -type "double3" -17.918402793727406 82.755758584639182 -18.507979147205116 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe03_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "2DFE5FA0-4FCE-BE12-F170-4CBA8074522A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.1223045526015003 3.0584011304631815 -0.49654535984693382 ;
	setAttr ".r" -type "double3" -65.261647362024945 81.569987032270845 -67.528668047760306 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999922 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe04_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "6A7E31F8-4902-48AE-83D6-9F8D2A2C13F9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.33886448811109737 6.3162181312489132 -3.785254743454594 ;
	setAttr ".r" -type "double3" -62.232764017811256 59.056451346920227 -68.021071205977165 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487065 -0.22678088064238736 0.9261852471181945 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "34277830-4CE5-C1ED-DA22-CF962AA32C30";
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
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "0D0C0780-449F-50DE-DBE6-EA820B78E86C";
	setAttr ".t" -type "double3" -0.67815955108769543 -4.5017535738891725 -1.3164646055064964 ;
	setAttr ".r" -type "double3" 8.3411969830898958 -5.1162832955262898 1.973177434543169 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs1" -p "rtLegQd1_toe01_3_ikc_ofs";
	rename -uid "5DAA3C2D-4BFC-33BC-5BAA-DD99C5108BA5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe01_3_ikc" -p "rtLegQd1_toe01_3_ikc_ofs1";
	rename -uid "37BEB1E4-40AD-4B4E-D4F8-83A51F4BB036";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_toe01_3_1_ikj_ikh" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "2EAAD458-40D1-B548-9E4B-499886AE8A00";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.7333317786119959 0.79112400107739589 3.2149593759115902 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.22505400097826758 -0.076165995651818627 0.97136472951720898 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_toe01_3_ikcShape1" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "25B499FC-4D64-04C2-AB3D-70B4A991AAC2";
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
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "FD171520-4DA2-BA38-3D6F-5BABE831DCF2";
	setAttr ".t" -type "double3" -0.4553222381123021 -0.74375689773013942 0.36853481284909151 ;
	setAttr ".r" -type "double3" 9.7001640958470698 -0.050193914105369594 3.1786163617423226 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs1" -p "rtLegQd1_toe02_3_ikc_ofs";
	rename -uid "772F08AB-40CA-8E5A-6C70-AAABE9E10094";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_toe02_3_ikc" -p "rtLegQd1_toe02_3_ikc_ofs1";
	rename -uid "C5384B48-429C-E88E-DD2A-609E48073565";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_toe02_3_1_ikj_ikh" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "964628AF-4622-B3B5-A7CF-C6BCCFE8963B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.39708556289958 0.38899597430693689 3.2019136936043395 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.31254937306940889 -0.050628364004925146 0.94855134713525391 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_toe02_3_ikcShape1" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "DB85C7D8-481F-C300-34E9-529901EFDBA8";
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
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "AF1DDBD5-4F41-2E5C-9ACE-A8B69F3A5608";
	setAttr ".t" -type "double3" -0.12230455260149675 3.0584011304631789 -0.49654535984693382 ;
	setAttr ".r" -type "double3" 9.9925668861181194 1.4068899415597267 3.5321615861957749 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs1" -p "rtLegQd1_toe03_3_ikc_ofs";
	rename -uid "37F623D9-416B-F586-A2FA-FC8DD7C56D76";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe03_3_ikc" -p "rtLegQd1_toe03_3_ikc_ofs1";
	rename -uid "46E3507F-42FC-150A-786A-C68ACB22F4DE";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_toe03_3_1_ikj_ikh" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "28555A80-4420-E4D0-6436-7C9D0CA93D18";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.482445876351246 0.40692294418916752 3.1712842431153376 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.33729424848475809 -0.045315239885693553 0.94030799155021771 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_toe03_3_ikcShape1" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "EC47F7FD-4A2C-E468-9310-7BB14D705E6D";
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
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "B85AF403-4609-5613-43E0-3EB72546F579";
	setAttr ".t" -type "double3" -0.33886448811109382 6.3162181312489105 -3.7852547434546082 ;
	setAttr ".r" -type "double3" -2.7621105644962087 2.0274650078502217 -0.99636430279990795 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs1" -p "rtLegQd1_toe04_3_ikc_ofs";
	rename -uid "9CBB0537-4581-B4E8-8BF6-A7ACF64E6CED";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_toe04_3_ikc" -p "rtLegQd1_toe04_3_ikc_ofs1";
	rename -uid "D6274799-467F-FC89-C893-5C9616742408";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_toe04_3_1_ikj_ikh" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "522B8F12-4590-F17D-E7CA-81AE67B88B1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8207197219268565 0.14318177052698244 3.1847226037283249 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.3298415711123513 -0.27581293968952619 0.90284647657614359 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_toe04_3_ikcShape1" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "E0887579-4AE5-2225-5E81-838E047D3B1E";
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
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "6B919108-4699-961C-0A21-E9B76BFBB11A";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "9C122E0B-4BE6-4E84-EA34-B3961F87BD17";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.6405100203173062 16.744161296497722 78.887112396642095 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "F5EBE27F-403B-2A51-672C-D6AB7E3B0EF3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.63209927406912 -4.2632564145606011e-14 0 ;
	setAttr ".r" -type "double3" 4.3431449133121791e-21 4.2688682312579702e-06 3.4241639783480729e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -167.67590814895027 -41.209366833068351 10.610383260348035 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "47B73FD3-4C12-FAAB-0CE3-249E9624979C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.654603735688667 2.4868995751603507e-14 0 ;
	setAttr ".r" -type "double3" -1.0639466166516323e-20 -7.7068900232406884e-06 -4.4954471550560731e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -30.221934205871598 0 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "881FDAB3-46A2-7866-F7A5-27B8F1559CBD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.4551425151122 4.6185277824406512e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 3.2750259512696937e-07 -5.6874492882652831e-06 -2.2160181336306515e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.76113013292601 6.1429192907087611 4.6257962827270047 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "6519097A-454A-8EAC-BEBB-F39700BB1728";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.782206896173964 0.55224344285674754 3.4724006270753023 ;
	setAttr ".r" -type "double3" 1.5038064556071245e-07 -1.8663798619715572e-22 -1.1485414568977835e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.450140927469754 109.81053629004809 37.746206672012356 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "5DF30E5C-46D6-7B83-2EBD-20AA0C67036F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9774500664444616 8.659739592076221e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 3.2525771972255725e-07 5.402755510747134e-22 1.5335230208735113e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.1631179522999719 -87.519412399538936 -4.806443329519638 ;
	setAttr ".radi" 1.0203411469764514;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "D9B9556E-47F1-BD9E-26D2-9EA03E98EBBD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9511373039356172 -1.1546319456101628e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 34.885473851000626 67.847764185927019 36.972456027856765 ;
	setAttr ".radi" 1.0203411469764514;
createNode ikEffector -n "effector49" -p "rtLegQd1_ball_ik";
	rename -uid "287BE5DF-4EE8-D28A-607C-B998E937CA3B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector48" -p "rtLegQd1_digit_ik";
	rename -uid "290738B6-4807-F1FD-CEF4-2AA39DA4B927";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector47" -p "rtLegQd1_palm_ik";
	rename -uid "B69836E6-426B-B8EA-7870-6496F2B0F18E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector46" -p "rtLegQd1_lwr_ik";
	rename -uid "DE34CDAF-44BB-D719-5BCE-B083BC04AFCF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "1994614C-4AA2-8E84-A715-9D92170A71BE";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -28.632099274069162 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 3.4011257002536295e-46 -1.5317308436302463e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 68.486370334776169 -24.942365871053223 14.461723033381004 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "0DE4CF2B-4E3C-C70A-2DBC-9CA47EA872CB";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -59.01611328125 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 -5.9635400277440979e-16 -7.1562480332929135e-15 ;
createNode ikEffector -n "effector50" -p "rtLegQd1_softJ";
	rename -uid "1C5E0467-4DF6-262F-BD2E-EA867CEB12BA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "D57DFA0D-4D07-5B7E-39CB-49B3C91E9B3D";
	setAttr ".t" -type "double3" -30.454615597759783 -38.062763101794658 -23.52083896797869 ;
	setAttr ".r" -type "double3" 178.6418344906279 58.477578091599291 81.22611293035979 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "279E53CE-45AB-5E82-DD70-A4A95E13B04A";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 0 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "BA69A644-468D-016D-AC90-189B401FE5F3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "5CBD56F7-4C97-E931-8456-B1A9B7833E71";
	setAttr ".t" -type "double3" 0.97427013650034588 -15.522606405532862 0.97922947245187686 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "767E4F82-4808-46A6-9CB7-61929475BB2F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "A976A7BB-4A47-03B7-DFCD-4FB7C5B4C897";
	setAttr ".t" -type "double3" -3.3129778471460689 0 14.594530682064686 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "2E2FBCDE-4BE6-A3A0-3249-A292F6BD52F6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "521B4379-48E4-D586-4740-32A00B53319C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "7C691CDF-44EE-4691-ADE3-ABB529EAA7DB";
	setAttr ".t" -type "double3" -6.9126955251844109 0 -7.442818373223318 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "72F4936D-403F-26E0-6E49-308B9C6E91F7";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "8A90BFCF-4D2C-6739-9930-50A3CEFC51E7";
	setAttr ".t" -type "double3" 12.466795531247644 0 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "3AEAA76E-4EC2-428D-F140-FDAC3EED6846";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "C60D8498-488F-EB49-007B-C397E6BD279B";
	setAttr ".t" -type "double3" -5.2152430432042909 6.6102659766300604 1.9059726826944328 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "A7E2DC5A-47D0-3002-C198-9499E9540272";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "B694D8CA-4F7E-3DB0-5969-01860FED7323";
	setAttr ".t" -type "double3" 1.4476073049300222 -1.869866467271164 -6.5645138369123686 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "3FD967A3-4B90-3C66-80B9-25AC5C51328C";
	setAttr ".r" -type "double3" 175.81601812898887 -3.975693351829396e-16 91.926448336073292 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "1A2439C9-403B-FD7C-02BD-1AB2DB062895";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "A93E0A4F-44A6-D037-B000-0A95177277ED";
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
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "800B0FFA-4C63-27A4-30D2-91961E56D146";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "B5ECEFE6-44FE-776A-4744-F0B02B974F34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 8.8817841970012523e-16 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000004 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "E2291C0C-4A5D-FB8E-938F-5AA558182D8A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.55224344285675286 10.782206896173967 -3.4724006270752668 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "4A56C528-4E55-0E7A-C371-3C8DB2D1902C";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "5F1B0B79-4D50-016B-2471-49A2425359E2";
	setAttr ".t" -type "double3" 0.55224344285675286 10.78220689617396 -3.4724006270752668 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "4BD9214D-44B6-FFAC-3F49-DDAD023A0737";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "182CB47A-4D1C-2A11-3339-DF9A3D881B50";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "DD5C0EE1-44AB-6B06-D24B-6C8037C70BEE";
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
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "B4463A88-4F4F-3111-A2ED-D9AF9AE738A7";
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
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "76DFDD44-4F16-725C-EBCA-DF91D2E156D7";
	setAttr ".t" -type "double3" -5.2152430432042909 6.6102659766300604 1.9059726826944328 ;
	setAttr ".r" -type "double3" -13.758450835589775 17.532672327095806 85.781365618984069 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "9EBDE21E-46FE-DB4F-D7C6-ACA7A18A6F2B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -4.8849813083506888e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 14.48249964486503 87.444713791524421 14.676500591330631 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.30124959783487032 -0.22678088064239166 0.92618524711819428 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "9376CAFF-4BEE-729E-9A9E-8F9273E91AF2";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -2.1760371282653068e-14 7.1054273576010019e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "23A4FE78-43EF-8C61-DB1B-14810157082E";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "3EC9BB6B-4019-A3CE-61D1-878EE2F06AA2";
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
	rename -uid "4B880484-4EB5-4B43-B58F-C6B482BBC0D3";
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
	rename -uid "D9DA2C1F-498E-473F-7F97-2CA63C9787B9";
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
	rename -uid "9304C532-47E7-94C4-6CBA-839503A38D11";
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
	rename -uid "19DDCDFA-45BF-5E06-A3D1-5CBA0625DD29";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "49018784-41F1-737B-F603-C280C713728F";
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
	rename -uid "8F111BF0-42B1-23D9-3FA9-94A59379AB25";
	setAttr ".t" -type "double3" -11.526513579357104 4.7403995093588964 59.044988748859424 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "C5346711-48E1-229F-E45E-14BB29C7AD00";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "88D967CA-4836-81AF-EE3D-EDB360B41ACF";
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
	rename -uid "47BE1D4A-440F-07AE-E923-9498F593C665";
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
	rename -uid "F880CB96-4166-1E55-42CE-B09BA504EF77";
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
	rename -uid "05B48003-4FD6-0370-6EB1-6CBFFF6CDB88";
	setAttr ".t" -type "double3" -1.7864642677889648 -4.7403995093588964 12.101359527441275 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "DF1133B5-46C6-1B91-E129-7D8028267719";
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
	rename -uid "481F2ECA-4189-F10F-124C-77AC7BE26ED8";
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
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShape1" -p "rtLegQd1_ikc_gmb";
	rename -uid "69154A86-4A83-B7A9-9695-0DA56BE2295B";
	setAttr -k off ".v" no;
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
		6.1220468818587026 -3.6963584659008122 6.887302762214544
		6.0044134676655103 -3.6963584659008122 8.0816548597941935
		5.6560338112237991 -3.6963584659008122 9.2301086760642281
		5.0902959473570624 -3.6963584659008122 10.288529774925713
		4.328940864904248 -3.6963584659008122 11.216243627118789
		3.4012270127111686 -3.6963584659008122 11.977598709571605
		2.3428059138496833 -3.6963584659008122 12.543336573438342
		1.1943520975796478 -3.6963584659008131 12.891716229880057
		-7.1470912620862394e-16 -3.6963584659008131 13.009349644073247
		-1.1943520975796493 -3.6963584659008131 12.891716229880057
		-2.3428059138496851 -3.6963584659008122 12.543336573438342
		-3.4012270127111708 -3.6963584659008122 11.977598709571605
		-4.3289408649042507 -3.6963584659008122 11.216243627118791
		-5.090295947357065 -3.6963584659008122 10.288529774925715
		-5.6560338112238027 -3.6963584659008122 9.2301086760642281
		-6.0044134676655148 -3.6963584659008122 8.0816548597941917
		-6.122046881858707 -3.6963584659008122 6.8873027622145422
		-6.0044134315600388 -1.8630453401245302 6.8873027622145422
		-5.6560337838849932 -0.077903865792496446 6.8873027622145422
		-5.0902960630179788 1.467919502673783 6.8873027622145422
		-4.3289408637980697 2.697958837992855 6.8873027622145422
		-3.4012269388037613 3.6242188064808145 6.8873027622145422
		-2.342805839259797 4.189956527347829 6.8873027622145422
		-1.1943520713161111 4.5383361750228755 6.8873027622145422
		3.7486725605743222e-16 4.6559696253215437 6.8873027622145422
		1.1943520713161111 4.5383361750228755 6.8873027622145422
		2.342805839259797 4.189956527347829 6.8873027622145422
		3.4012269388037613 3.6242188064808145 6.8873027622145422
		4.3289408637980697 2.697958837992855 6.8873027622145422
		5.0902960630179788 1.467919502673783 6.8873027622145422
		5.6560337838849932 -0.077903865792496446 6.8873027622145422
		6.0044134315600388 -1.8630453401245302 6.8873027622145422
		6.1220468818587079 -3.6963584659008122 6.8873027622145422
		6.1220468818587079 -3.696358465900814 -4.989468188591351
		6.1220468818587079 -3.3290356529892899 -5.3567910015028737
		6.0044134315600388 -1.8630453401245302 -5.3567910015028737
		5.6560337838849932 -0.077903865792496446 -5.3567910015028737
		5.0902960630179788 1.467919502673783 -5.3567910015028737
		4.3289408637980697 2.697958837992855 -5.3567910015028737
		3.4012269388037613 3.6242188064808145 -5.3567910015028737
		2.342805839259797 4.189956527347829 -5.3567910015028737
		1.1943520713161111 4.5383361750228755 -5.3567910015028737
		3.7486725605743222e-16 4.6559696253215437 -5.3567910015028737
		-1.1943520713161111 4.5383361750228755 -5.3567910015028737
		-2.342805839259797 4.189956527347829 -5.3567910015028737
		-3.4012269388037613 3.6242188064808145 -5.3567910015028737
		-4.3289408637980697 2.697958837992855 -5.3567910015028737
		-5.0902960630179788 1.467919502673783 -5.3567910015028737
		-5.6560337838849932 -0.077903865792496446 -5.3567910015028737
		-6.0044134315600388 -1.8630453401245302 -5.3567910015028737
		-6.1220468818587079 -3.3290356529892899 -5.3567910015028737
		-6.1220468818587079 -3.6963584659008117 -4.989468188591351
		-6.1220468818587079 -3.6963584659008122 6.8873027622145422
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "FE65FCE4-4396-37DE-3E7F-AB9B903786E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "A7A6F6FE-4592-8E80-9E35-1BB826EAD166";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 5.0888874903416268e-14 1.1286641353993406e-29 2.8216603384983552e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.200780985113795 -1.9040497044281761 -91.762240751753822 ;
	setAttr ".radi" 2.0406822939529028;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "910FFD1C-4653-32AE-B6CB-7B88E6634465";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -96.110222499893524 -2.1316282072803006e-14 -5.3290705182007514e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.0406822939529028;
createNode ikEffector -n "effector52" -p "rtLegQd1_legLock";
	rename -uid "68A29561-4C3A-0F71-4A52-89B7B49981BD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "rtLegQd1_ikcShape1" -p "rtLegQd1_ikc";
	rename -uid "6125E22A-41D9-8118-0CBC-47BAD66C3095";
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
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "16E1DB9E-4701-7C69-92E3-B597F3FB0971";
	setAttr ".t" -type "double3" -22.604483774475312 49.55579890896734 16.531033653757653 ;
	setAttr ".r" -type "double3" -1.3581655093720539 -167.15578659449045 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "F5B0437F-46C7-984C-FB40-1C844DA225B8";
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "35A33E6C-4902-6ACF-6B59-759F47CC25A8";
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
	rename -uid "0CA2DED2-487B-D006-2F0D-8EA92ED6B31C";
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
	rename -uid "F263F81C-4749-0C67-0D0E-2FAD1293C3A8";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 13.967066537180747 -155.55683908077233 -91.161364358071907 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "91D6EF1F-416E-C166-CD68-CEADEE71E6FB";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "BADB03E6-4F5A-BA15-ACAB-DBB65B6D7A8C";
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
	rename -uid "A25B0D87-4FAF-84C0-ABE2-D584E05A2984";
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
	rename -uid "48086C43-4FC4-BCAF-CF9B-FABA9B1763AC";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe01_4_ctl" -p "rtLegQd1_toe01_4_ctl_ofs";
	rename -uid "BBEC7927-4AD2-0056-9378-5DB4A00B51B0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_4_ctlShape1" -p "rtLegQd1_toe01_4_ctl";
	rename -uid "1FE504F1-4CDD-E1B9-AE04-A484F4B0EEE0";
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
	rename -uid "86F4EA3D-4AFF-8002-589A-E1BDC091E0DF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_4_ctl" -p "rtLegQd1_toe02_4_ctl_ofs";
	rename -uid "5F77D1B9-4E67-57E6-2824-93A67F562133";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_4_ctlShape1" -p "rtLegQd1_toe02_4_ctl";
	rename -uid "E55F86F9-4BB7-9BBC-E583-C78896185EAF";
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
	rename -uid "1E5A7EB9-4752-32DC-2C7A-63BD5C893CA6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_4_ctl" -p "rtLegQd1_toe03_4_ctl_ofs";
	rename -uid "85EECFDF-4D1A-AF8C-987E-EDAC32156273";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_4_ctlShape1" -p "rtLegQd1_toe03_4_ctl";
	rename -uid "F333A9CE-4548-A643-FE85-ACA41828F70E";
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
	rename -uid "DDE455D7-4E33-365D-A154-839B1BCFC0A1";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe04_4_ctl" -p "rtLegQd1_toe04_4_ctl_ofs";
	rename -uid "D217F99C-47BF-6BA0-142E-80851489CBE0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_4_ctlShape1" -p "rtLegQd1_toe04_4_ctl";
	rename -uid "2B13718B-4FAA-E45F-F7CB-619F6263C94F";
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
	rename -uid "09E9CD39-465F-66B3-2A03-55A37F7A3610";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "188226E0-47B7-EE45-E314-3E86735FD68A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5.0528316988413273 5.0528316988413273 5.0528316988413273 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "5177408F-43BE-7BAB-89AB-2E953571501A";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "9BF16F6B-48C8-816F-2667-DC8B869DEAE0";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 94.623592201811164 -30.817548829712091 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "4BD3D83C-44FF-81A1-7D50-1AA38619648D";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "B1C5E527-4CA2-083B-161F-0085F6E334CF";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "57378613-4695-1953-434F-7A947A2D3494";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 -1.0859365472058471 16.828146094069876 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "9F4EB195-4024-5BA6-F1D9-2BA6AF0BC27A";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "BF8F4D0C-4670-AF66-467F-F28776DEDFF0";
	setAttr ".t" -type "double3" 5.4561850914083838e-14 1.0859365472058471 -16.82814609406989 ;
	setAttr ".r" -type "double3" 4.5740346502335214 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "B0BC85BA-42E0-EABE-DC8A-9295B284CB8C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "395DB77B-4497-7CE3-91B8-469F65B21CCD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 4.5740346502335214 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -4.5740346502335214 0 0 ;
	setAttr ".radi" 0.91888839946086887;
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "7573F6ED-4AA7-DCE7-B398-36AEDEB150FD";
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
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "6B935C9D-4ED5-D043-1426-3CA1091A86CF";
	setAttr ".t" -type "double3" 0 -0.20333428467833414 -21.224347920680884 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "4271E58D-43CB-8A1C-12EE-D2857FC7B652";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "E9667607-4992-71AA-9E36-FEB3162B225E";
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
	rename -uid "24C4BF12-4CD5-1BB7-4D9C-41847E23C9FE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 5.4537835835963278e-14 1.0859365472058471 -16.828146094069876 ;
	setAttr ".r" -type "double3" 4.5740346502335214 -1.440253205263757e-16 2.5411493985078025e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 18.377767989217379;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "12C3E51E-4726-F6A7-2034-41AED0A5BD36";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.0985122157162783e-14 2.128052552651738 91.649475757216749 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 18.377767989217379;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "33330D25-40C9-F34A-55A4-2F8736B839FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.5365460042555398e-14 1.1815521929421919 -45.872435056453796 ;
	setAttr ".r" -type "double3" -0.4485644055515286 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "C4192DFE-44D7-1EC4-DCFD-C79B4EFF5DC2";
	setAttr -k off ".v";
createNode ikEffector -n "effector62" -p "spineQd0_two_ikj";
	rename -uid "D935C045-4F8E-7A2F-9AAF-2BB968BEC14A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "F52AC1A8-4B0B-F892-F63F-80898586B93D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8918173721355893e-14 0.73441000924623268 29.067031953133263 ;
	setAttr ".r" -type "double3" 4.1254702446819911 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "26B2190A-48F6-DF95-9213-EE80964959CB";
	setAttr -k off ".v";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "757AED20-4F19-FB2C-7A21-F9812F4CDA24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.954869801394182 17.258369071339104 -12.961462738513648
		1.8145996412143532e-15 29.406577049319083 -12.961462738513648
		-20.954869801394182 17.258369071339082 -12.961462738513648
		-29.634661070894055 -14.092302732357268 1.0856646064123123
		-20.954869801394182 -43.420671191325738 1.0856646064123108
		-2.968524267544207e-15 -55.568879169305823 1.0856646064123099
		20.954869801394182 -43.420671191325738 1.0856646064123108
		29.634661070894055 -14.092302732357277 1.0856646064123123
		20.954869801394182 17.258369071339104 -12.961462738513648
		1.8145996412143532e-15 29.406577049319083 -12.961462738513648
		-20.954869801394182 17.258369071339082 -12.961462738513648
		;
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "E2EEF86B-4D11-4259-1ABE-1E8564B612E0";
	setAttr ".t" -type "double3" -2.5619662114607385e-14 -0.35152653795961442 45.895178047203139 ;
	setAttr ".r" -type "double3" 4.1254702446819911 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "898AEB37-4463-0407-6A7B-1AB012BD2C01";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "6E4BB91F-46D9-8923-DEF2-BBA44D43CDA9";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 2.6645352591003757e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "67153652-4AE6-53A3-F730-C285D9B5FEB5";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "27949E04-4ECB-913E-0DAC-85B8316379DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 4.1254702446819911 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -4.1254702446819911 0 0 ;
	setAttr ".radi" 0.91888839946086887;
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "ABE24EF5-4E33-9E0F-38D3-51BE332AFDE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		22.504601422051284 9.6024277078956217 8.7618600988281045e-16
		1.9695542725733832e-15 20.833455575421098 1.5638881263378e-15
		-22.504601422051284 9.6024277078956146 8.7618600988281045e-16
		-31.826312546865765 -17.511672089274587 -7.8407376653550952e-16
		-22.504601422051284 -44.625771886444809 -2.4443335429538322e-15
		-3.1673088117171139e-15 -55.856799753970321 -3.1320356594088216e-15
		22.504601422051284 -44.625771886444809 -2.4443335429538322e-15
		31.826312546865765 -17.511672089274594 -7.8407376653550952e-16
		22.504601422051284 9.6024277078956217 8.7618600988281045e-16
		1.9695542725733832e-15 20.833455575421098 1.5638881263378e-15
		-22.504601422051284 9.6024277078956146 8.7618600988281045e-16
		;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B02A3624-4EB6-5E06-FD86-18A3EC3AA8ED";
	setAttr ".t" -type "double3" -5.098512215716277e-14 -5.1875136540454463 91.527289462370732 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "27D88F88-4112-E040-1566-85B223074726";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -uap -ci true -k true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 
		1 -at "double";
	addAttr -uap -ci true -k true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
	addAttr -uap -ci true -k true -sn "volumeScale" -ln "volumeScale" -dv 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
	setAttr -av -k on ".stretchMin";
	setAttr -av -k on ".stretchMax";
	setAttr -av -k on ".volumeScale";
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "3C5C99EA-4C90-83B3-27DD-8BB58AD459A4";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "646B9B68-4520-0F0D-215B-1F8CFEE9E8FF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "B0E3569C-4CF7-8C62-3117-0C807C8886B4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 0.91888839946086887;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "6102E6A8-4EAB-7354-228E-338C5F2AB5ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2621774483536189e-29 0 0 ;
	setAttr ".r" -type "double3" 4.5740346502334921 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "F42FECE9-4F7F-921F-EE2A-8286AEA3E5E7";
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
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "28642F59-481D-7BC8-37BD-F6B7BBB73FCE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "D4E9D484-42E3-D199-E59A-4EB0B61E61A8";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "D9C0861B-47FB-21A9-34F1-49AFD1C6FB82";
	setAttr ".t" -type "double3" 1.1032280232588224e-14 -0.24103887334587171 4.1209278674570413 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "DE64FA0E-4C31-5237-FE90-76A414D3CE93";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "77C483CB-4E94-FCB8-FAC5-CCA80876364C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.477764060211396 24.935601698244252 -7.7428135445549149
		2.3991108453407409e-15 35.423896120808649 -7.7428135445549149
		-21.477764060211396 24.935601698244238 -7.7428135445549149
		-30.374145223400404 -7.4344565797347197 8.0662575830207111
		-21.477764060211396 -32.755439220851805 8.0662575830207093
		-2.5033680417501024e-15 -43.243733643416185 8.0662575830207075
		21.477764060211396 -32.755439220851805 8.0662575830207093
		30.374145223400404 -7.4344565797347268 8.0662575830207111
		21.477764060211396 24.935601698244252 -7.7428135445549149
		2.3991108453407409e-15 35.423896120808649 -7.7428135445549149
		-21.477764060211396 24.935601698244238 -7.7428135445549149
		;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "DDFD9631-4F5C-C47C-5CD1-BA9E8425F00F";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 9.7891160173532796 129.42919180078283 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "8828E37B-4D0A-75D7-6291-33942A8BCC75";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "548A8C23-42E9-D98A-89C7-0BBCC3340F4D";
	setAttr ".t" -type "double3" 11.526513579355923 -89.883192692453406 -13.840992324505844 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "D30F6827-47D9-AC2F-5010-3EA5AD0C9685";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5526C11B-4DA4-E62D-EF16-6EBA3B5BECF1";
	setAttr ".t" -type "double3" 17.032164269784499 -42.773567218151605 28.215500178221774 ;
	setAttr ".r" -type "double3" 0.076510975842926252 8.3542899897748786 6.9599418124260285e-06 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "0BC02806-40B4-29D4-41CA-8CB68F019EBB";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "FDB43EE0-4341-BF0D-60AD-C5A849961EF9";
	setAttr ".t" -type "double3" 11.526513579355946 -89.883192692453378 89.862537578571519 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "2488F14D-484D-4D97-0568-138073A3B67E";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C42943FF-4480-1E03-9F51-9486AD6460DA";
	setAttr ".t" -type "double3" 22.604483774476218 -45.067793292843852 47.348582483469976 ;
	setAttr ".r" -type "double3" 178.64183292099816 12.844213242294011 179.99999293916679 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "1CB38FB4-4372-0449-705E-68A411F1CCD2";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C2B040A0-44AA-4383-5C1C-CE9D1D5CE613";
	setAttr ".t" -type "double3" -5.6314192675363522e-14 8.259592689836353 121.47893259861311 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "CB795264-485F-BE9E-E5DB-62B2A193899E";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1919BF24-4DC3-2F4E-7DED-B0944124BA63";
	setAttr ".t" -type "double3" -3.995284192457455e-14 -5.428552527391318 95.648217329827773 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "B503E727-4893-8433-63D1-EDB3E6319726";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A2322B4A-4A16-BB57-8CED-9591DBF79EDD";
	setAttr ".t" -type "double3" -11.526513579357127 -89.883192692452241 -13.840992324505894 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "022D24C9-4EF6-4CAE-DB5A-798EB7900B7D";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "085453DE-4A61-5607-C568-E08B2BD2D38D";
	setAttr ".t" -type "double3" -17.032164269785614 -42.773567218151598 28.215500178221621 ;
	setAttr ".r" -type "double3" 0.076509964608046419 -8.3542899989706747 7.8483079128725893e-19 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "D258BE39-4E25-066E-C5A0-7E98C241828F";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C010AB7A-49E5-AA34-82A1-7994D73C852D";
	setAttr ".t" -type "double3" -11.526513579357159 -89.883192692452269 89.862537578571519 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "7FD433E4-4A12-2AEE-1E84-CF92299436DB";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "2180CB31-4635-DD96-8DC6-B18FE1440722";
	setAttr ".t" -type "double3" -22.604483774475366 -45.067793292843824 47.348582483469741 ;
	setAttr ".r" -type "double3" 178.64183449062796 -12.844213405509567 180 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "3D3E3B94-4DAA-0248-3B98-6BBF30FE70D6";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "D1336CB7-4E64-6933-5743-96891C3C0FDA";
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
createNode joint -n "spineQd0_end" -p "spineQd0_IK";
	rename -uid "BAD71C4A-4530-77C2-2515-CF909F02FCDE";
	addAttr -ci true -sn "proxyRatio" -ln "proxyRatio" -dv 5 -at "double";
	setAttr -cb on ".ro";
	setAttr ".radi" 0.91888839946086887;
	setAttr -cb on ".proxyRatio";
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "BC5D2EC3-4C73-39A6-BF00-969509D6A5BD";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
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
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "spineQd0_settingShape1" -p "spineQd0_setting";
	rename -uid "F4A7FAEF-442F-2249-B7A2-6CABCE9C4753";
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
	rename -uid "6890E6BC-4E49-BF35-56BE-DFADDDFF433C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "E7BBC17B-43C7-C433-31B5-E3B002CBA918";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 13.783325991913033 13.783325991913033 13.783325991913033 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "5B53141C-4384-0E48-4693-129829B67FB1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "C88CECFC-46B5-04E8-355B-8C80B2103152";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 13.783325991913033 13.783325991913033 13.783325991913033 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "34003E7E-4530-4BD3-74F2-C5A831DBA471";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "0CC8DED9-460B-3C7F-93AC-8787809FAFBE";
	setAttr ".t" -type "double3" 0 87.335498187088547 -50.600474581131053 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "B07E3DBA-409C-68C9-7CEB-9D870CEBB5A9";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "localScale" -ln "localScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "IKCtl" -ln "IKCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FKCtl" -ln "FKCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "subIkCtl" -ln "subIkCtl" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr -cb on ".IKCtl";
	setAttr -cb on ".FKCtl";
	setAttr -cb on ".subIkCtl";
createNode nurbsCurve -n "tail0_settingShape1" -p "tail0_setting";
	rename -uid "D430E8B3-430A-2673-C849-7186BA41D8CC";
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
createNode joint -n "tail0_0_fkj" -p "tail0_FK";
	rename -uid "8D449A2A-471D-8818-068D-50993F5F9B98";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -11.051602631601 -0.64285975471887269 0 ;
	setAttr ".radi" 0.85175288856229359;
createNode joint -n "tail0_1_fkj" -p "tail0_0_fkj";
	rename -uid "B600DCAB-4C24-09CA-563A-E982FDF1AE0B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7458652301617459 0.4867124137993144 0.095064632643879085 ;
	setAttr ".radi" 0.85175288856229359;
createNode joint -n "tail0_2_fkj" -p "tail0_1_fkj";
	rename -uid "1D69AEAF-48C5-348C-2B10-34859D9445AB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7273551335075723 0.47956729588752972 0.044541002287991981 ;
	setAttr ".radi" 0.85175288856229359;
createNode joint -n "tail0_3_fkj" -p "tail0_2_fkj";
	rename -uid "43FB2ECF-4716-F897-4DC7-A487442E4E83";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.252738990023444 -0.24418883129394708 0.0017944200976514396 ;
	setAttr ".radi" 0.85175288856229359;
createNode joint -n "tail0_4_fkj" -p "tail0_3_fkj";
	rename -uid "29E7CEBB-493B-73A1-0F27-80BA21C51CBC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.0639622488132596 -0.090374875068822552 -0.0044702071693075215 ;
	setAttr ".radi" 0.85175288856229359;
createNode joint -n "tail0_5_fkj" -p "tail0_4_fkj";
	rename -uid "44A66425-4F7F-6229-D7D3-FBB53091E2E3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 0.85175288856229359;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "93ED5B51-438E-DBC8-3FC8-7E838163968C";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "9BDEF16C-4FC8-75F8-24B4-CEA8CB7595B1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "63E84624-4E7A-F1C6-E0F3-7791BC471355";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "60F5E7E4-46F4-F19E-E53D-82BCE071D137";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "C47ACC58-45CA-B22B-0997-AA8C11D51643";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "3A78ED5B-447B-306A-5F52-FAAE3846521B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "3CB3BB0A-4E43-8DAF-5001-658F577E0F8E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "9DC7072D-4A91-AD1F-DB19-D59AD8DD4262";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "5A5C3D61-48FA-0D47-1235-AE9EF3FFAB70";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "62B6E9BF-4335-60A4-1777-89B10CB9F0BD";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "87D4A583-4543-24DA-AA28-E7821BE1EB1E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "2F14EE1F-4AE8-AC73-A41F-58AD2FF73FED";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "BFEEE5D1-4D43-75A2-2875-D1A1B1C21266";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "492C6114-45D7-7F3A-7CA2-E6B734D81C42";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "528391D6-431C-51C1-74FE-DFA081F222DF";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "7A2A1A98-44F4-EB35-C1F5-B28C7E562EE8";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "27C2C625-4B04-4339-362A-639090768E2B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "D311C1B8-47E1-DA09-7546-82B730ED2D18";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "FE4E0091-461B-C326-2A6D-6F85266195E7";
	setAttr -cb on ".ro";
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "7AEB84AD-4D49-D99E-BC54-4F8D55F22C3C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8932661725304283e-29 0 0 ;
	setAttr ".r" -type "double3" -1.7677488935673826 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.7677488935673826 8.4774280001830347e-14 -8.3835532786678104e-14 ;
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "74519744-4265-109F-B0DF-CDBE444063AE";
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
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "0D175EE5-40FF-7D22-DE75-F081DE891D67";
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
		-15.945692966053485 6.1916693343327396e-15 -2.0891842609220434e-31
		-17.63505349407022 -17.63505349407022 -3.6195986713213029e-16
		-1.5972909701683534e-15 -15.945692966053455 -5.1188855313302339e-16
		17.63505349407022 -17.635053494070231 -3.6195986713213019e-16
		15.945692966053485 3.1905332754640557e-15 -3.0526088033361767e-31
		17.63505349407022 17.635053494070242 3.6195986713213039e-16
		9.7639209255319141e-16 15.945692966053439 5.118885531330229e-16
		-17.63505349407022 17.635053494070231 3.6195986713213019e-16
		;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "DBDFCF30-4803-320C-0FEA-CF9BFE5C625D";
	setAttr -cb on ".ro";
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "F214853B-4DD5-ED0E-D013-908417D90A64";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1554436208840472e-29 0 0 ;
	setAttr ".r" -type "double3" -1.7677488935673826 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.7677488935673826 8.4774280001830347e-14 -8.3835532786678104e-14 ;
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "24281D2C-4374-1742-0875-069C47A83EB8";
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
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "79A87FA5-4D33-7904-6A3A-DAA47F75059F";
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
		-15.945692966053485 6.1916693343327396e-15 -2.0891842609220434e-31
		-17.63505349407022 -17.63505349407022 -3.6195986713213029e-16
		-1.5972909701683534e-15 -15.945692966053455 -5.1188855313302339e-16
		17.63505349407022 -17.635053494070231 -3.6195986713213019e-16
		15.945692966053485 3.1905332754640557e-15 -3.0526088033361767e-31
		17.63505349407022 17.635053494070242 3.6195986713213039e-16
		9.7639209255319141e-16 15.945692966053439 5.118885531330229e-16
		-17.63505349407022 17.635053494070231 3.6195986713213019e-16
		;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "F399D719-4719-3DE3-D6F8-AEA4022A37D3";
	setAttr -cb on ".ro";
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "3DDA87D2-4F16-2EC8-FFE3-29829389ECE1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7755575615628914e-17 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.831707616867519 0.090485362237626293 -4.7164827213058559e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.8317111423845973 -0.090374875068850044 -0.0044702071693104185 ;
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "25620016-44E7-B99A-57D9-0D8384AAC718";
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
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "62C8C718-49D5-CED6-50B5-5E9F3A47031A";
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
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "CE20F96E-4EAE-0AB3-99FD-01A3F1980668";
	setAttr -cb on ".ro";
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "911EB1DD-40FF-4AA7-629F-7B91A0AF899D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0.42102754933510306 0.33468078654503225 2.5611434198220651e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.42103473202894948 -0.33467175047612829 0.0024593463427093737 ;
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "071311D7-448C-DB27-A7E4-D39A3D0DCB71";
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
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "CB70ACB2-41BC-139E-5716-DBAD0A59BEB4";
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
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "F30E4B55-4EF6-FFF5-6479-88BF175ED1D2";
	setAttr -cb on ".ro";
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "F3356D21-411E-8DF4-72A2-97B07EBECD95";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.4694469519536142e-17 -1.4210854715202004e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -5.306141178348236 -0.14695044774163077 -5.1303696034780568e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.306158530787628 0.146320733111372 0.013589612014046876 ;
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "6EABFB43-472E-D4DE-34ED-4EB2D87B56C1";
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
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "F5532152-4602-52FD-C1B6-0B815EB7039C";
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
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "1EB9BF89-442D-A81B-3DA8-E8A518AC50BA";
	setAttr -cb on ".ro";
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "DCC6C9C1-42E8-1843-207F-0E9D0E6C9870";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -11.051602631600137 -0.64285975471885426 -3.7274471368659744e-17 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 11.052281175978999 0.63093739291161399 0.1232367005075375 ;
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "55DE2AD9-4A05-9203-261E-09917A144B20";
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
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "3366BF9F-471B-B3C8-4741-218065B46C51";
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
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "E1D4B7C7-497E-33DD-7F84-E3B6FAFA767E";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "E60D2B4E-4DCF-8F6E-FF56-549C6F143863";
	setAttr ".t" -type "double3" -2.430398245324417e-14 -4.2632564145606011e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -11.051602631601 -0.64285975471887302 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "84DA6743-4E29-149A-9E9C-3291C9A481BC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "B9294F7A-4C6B-4AA5-5447-30A5CD76F3CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 -1.4210854715202004e-14 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635176e-15 2.981770013872046e-16 7.454425034680115e-17 ;
	setAttr ".bps" -type "matrix" 0.99993705624324114 0 0.011219783937363396 0 0.0021507541149812948 0.981454935933185 -0.19168094059954063 0
		 -0.01101171232542917 0.19169300647751272 0.98139315947242789 0 -2.430398245324417e-14 87.335498187088504 -50.600474581131039 1;
	setAttr ".radi" 0.85175288856229359;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "9791A5C3-4712-8800-19FB-49B89B29BD5D";
	setAttr ".t" -type "double3" -0.10736000056258288 1.2387122530840742 -21.194566143115487 ;
	setAttr ".r" -type "double3" 7.9148374621423399 0.66185910087853284 0.12927696174905429 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "0E395CDB-4EB4-6295-D264-18A49BB95BCF";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "9178C243-4E8D-CB82-316A-9C8789F0E0F3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.7755575615628914e-17 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.7829853462805756e-15 2.5469285535157073e-16 -1.0676910856963713e-17 ;
	setAttr ".bps" -type "matrix" 0.99999984881348403 0 -0.00054988454178797087 0 -3.0096582471648243e-05 0.99850105063091354 -0.054732540441290778 0
		 0.00054906029270098723 0.054732548716114132 0.99850089967101852 0 0.12869938778502052 84.488388337118494 -71.639318897783625 1;
	setAttr ".radi" 0.85175288856229359;
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "6BDFE6B7-427E-33D4-32C5-ECBFCA06E7DD";
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
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "F6FF158C-4C59-C40E-2ED0-78B105D8839A";
	setAttr ".t" -type "double3" -0.44523467995859523 5.1709699529560993 -42.253648489666027 ;
	setAttr ".r" -type "double3" 10.156445989227256 0.8765685519466565 0.17122072154147394 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "374EBDEF-4842-D408-1DAD-71A761549109";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "059DE105-46CB-829C-8749-DE93298F16FC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.9878466759146975e-16 4.9696166897867437e-17 2.6401088664492078e-17 ;
	setAttr ".bps" -type "matrix" 0.99999045989554258 1.0028870095490916e-18 -0.0043680794293805654 0
		 -6.8341452090933295e-05 0.99987759929065689 -0.015645503066328593 0 0.0043675447733599413 0.015645652327486111 0.99986806035391507 0
		 0.031199851557548244 84.310843257351394 -93.064087992946867 1;
	setAttr ".radi" 0.85175288856229359;
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "D66E97E1-4933-BDFA-B016-92B3AFD2BCEB";
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
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "CBA64C4E-410B-8791-CA96-60B2FEDB668F";
	setAttr ".t" -type "double3" -0.71576759677003066 8.3117397894897636 -63.373071734006821 ;
	setAttr ".r" -type "double3" 8.5689521677783276 0.63093739291163076 0.12323670050755067 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "4074F9C7-4B7B-0591-4401-46B3B71BCFB7";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "8A2E9969-49E7-23EC-1907-C9BEA61C576C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.9513867036587919e-16 -5.6827761370823679e-16 -8.6824477547587325e-17 ;
	setAttr ".bps" -type "matrix" 1 2.8460307027744491e-19 0 0 -3.5236570605778894e-19 0.99906087095021634 -0.04332869875954231 0
		 0 0.043328698759542317 0.99906087095021656 0 2.0677903833643541e-14 83.344921579268672 -114.3956065342939 1;
	setAttr ".radi" 0.85175288856229359;
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "131153F4-4103-5E68-A528-BC84E37F54E7";
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
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "136DB1F3-4A09-42D6-9E9D-899B695636A8";
	setAttr ".t" -type "double3" -0.95439147659702528 12.019021156879063 -84.317626265698493 ;
	setAttr ".r" -type "double3" 8.5689521677783222 0.63093739291163076 0.12323670050755067 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "608F27EB-4E7A-09AB-B44D-E0A724C0DE4F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "E50F8579-4F72-9A95-12D3-5199C0F43297";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 1.0037562669025234e-16 -2.0518207401892097e-17 ;
	setAttr ".bps" -type "matrix" 1 2.8460307027744491e-19 0 0 -3.5236570605778894e-19 0.99906087095021634 -0.04332869875954231 0
		 0 0.043328698759542317 0.99906087095021656 0 3.3589614441177307e-14 82.96852654867385 -135.66374156783564 1;
	setAttr ".radi" 0.85175288856229359;
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "0EB99D4E-4AFA-F3E7-8143-F392A49CAF99";
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
		-2.2127417272947397e-16 -3.6136813985402414 3.6136813985402414
		-3.1292894824745126e-16 -5.110517331373762 3.1292894824744145e-16
		-2.2127417272947397e-16 -3.6136813985402414 -3.6136813985402414
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
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "776B1D10-446E-67B1-FD45-46A62A94422A";
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
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "E6DAC885-4438-AE3E-8E08-5E87B720F411";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "D4A0D21D-41B6-D5FD-64B6-A9AD59FB2B99";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 12.776293328434404 12.776293328434404 12.776293328434404 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "633FBB80-4638-F791-3065-22B86A642762";
	setAttr ".t" -type "double3" 0 104.41270821916444 98.611642971070737 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "4D6A661F-4B73-0559-9FAD-608B90AD45E5";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "BF05E322-431E-4618-1219-D9B7AD550B16";
	setAttr ".t" -type "double3" 11.526513579355978 4.7403995093577507 -44.658541154217936 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "FF856843-44C8-6CA6-FE46-FFACC569BCDE";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "D5459672-400B-006D-3EDD-46879E11D5A5";
	setAttr ".t" -type "double3" 17.032164269784552 51.850024983659559 -2.6020486514903185 ;
	setAttr ".r" -type "double3" 0.07651097584292621 8.3542899897748786 6.9599418124260285e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "CD0C065C-43A7-5212-7CF9-C08979B16296";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "E25DC441-4824-CD22-89E3-20B2C832AA2E";
	setAttr ".t" -type "double3" 11.526513579356001 4.7403995093577844 59.044988748859424 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "7EE2B294-437A-DF25-B92D-4BA0DA9D82B6";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "2A16C564-4CBA-6548-245B-388793D4A415";
	setAttr ".t" -type "double3" 22.604483774476272 49.555798908967311 16.531033653757884 ;
	setAttr ".r" -type "double3" 178.64183292099816 12.844213242294011 179.99999293916679 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "EF69EDBD-468B-BC00-01E9-54869D2EC72C";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "57859A95-48B7-E020-8AF4-7E9DD4D5BF96";
	setAttr ".t" -type "double3" -1.7763568394002442e-15 102.88318489164752 90.661383768901018 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "189AE105-4CA6-D8A5-7DA8-A3A1416FA2A3";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "9441F733-4F7D-6B3C-9774-8D89CF34E2A4";
	setAttr ".t" -type "double3" 1.4584993911388731e-14 89.195039674419846 64.830668500115678 ;
	setAttr ".r" -type "double3" -10.368641579893449 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "D0F87A21-48FE-D5BC-9BB3-118407731A73";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "BADE6F56-44FC-4DBA-C3A5-99B6E853EB61";
	setAttr ".t" -type "double3" -11.526513579357072 4.7403995093589248 -44.658541154217986 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "B39BA191-406D-618B-E550-F881F454A9AE";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "CA447BFF-478A-CB83-176A-948BCC98D744";
	setAttr ".t" -type "double3" -17.032164269785561 51.850024983659566 -2.6020486514904699 ;
	setAttr ".r" -type "double3" 0.076509964608046419 -8.3542899989706747 7.8483079128725893e-19 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "1BA03C49-44F4-2B9C-EAA8-2F91B64610F7";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "945247B7-4F48-E710-A543-EEA9C80AF118";
	setAttr ".t" -type "double3" -11.526513579357104 4.7403995093588964 59.044988748859424 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "A90F29A9-4D5A-347B-2C5C-27B61B14BBED";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "AE443937-4652-62E2-3EFB-D1AE086CF25A";
	setAttr ".t" -type "double3" -22.604483774475312 49.55579890896734 16.531033653757653 ;
	setAttr ".r" -type "double3" 178.64183449062796 -12.844213405509567 180 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "679DD1F3-4FE5-F1B1-7BB7-F2B1330C3B38";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
createNode nurbsCurve -n "master_ctlShape1" -p "master_ctl";
	rename -uid "99E094E2-4042-336C-B0FA-5587BC5B7CEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		48.545194808418252 4.8163000127877822e-15 -70.769400997708019
		-3.9072093856575311e-14 6.8112767985421924e-15 -100.08304669197874
		-48.545194808418252 4.8163000127877822e-15 -70.769400997708004
		-68.653272886109065 2.7195796995814254e-30 -4.6966724864431707e-14
		-48.545194808418252 -4.8163000127877814e-15 70.769400997707919
		-5.0152939700248293e-14 -6.8112767985421972e-15 100.08304669197884
		48.545194808418252 -4.8163000127877814e-15 70.769400997707919
		68.653272886109065 1.4376304954572672e-30 -2.8130112310297353e-14
		48.545194808418252 4.8163000127877822e-15 -70.769400997708019
		-3.9072093856575311e-14 6.8112767985421924e-15 -100.08304669197874
		-48.545194808418252 4.8163000127877822e-15 -70.769400997708004
		;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "873AD667-4A27-6E40-87E3-75BBCBA13217";
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
	rename -uid "68B9119A-4362-7926-4CC3-29B0082AEE88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		53.205316602740389 5.2786432940571798e-15 -77.562947285081407
		-3.8668547787516475e-14 7.4651289373854658e-15 -109.69057198819148
		-53.205316602740389 5.2786432940571782e-15 -77.562947285081293
		-75.243680329949925 2.9910136108065995e-30 -5.0544817269058078e-14
		-53.205316602740389 -5.2786432940571782e-15 77.562947285081293
		-5.081310532128389e-14 -7.4651289373854689e-15 109.69057198819154
		53.205316602740389 -5.2786432940571782e-15 77.56294728508125
		75.243680329949925 1.5860030110298041e-30 -2.9899974074565937e-14
		53.205316602740389 5.2786432940571798e-15 -77.562947285081407
		-3.8668547787516475e-14 7.4651289373854658e-15 -109.69057198819148
		-53.205316602740389 5.2786432940571782e-15 -77.562947285081293
		;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "9F89B0F5-4E31-B41A-CB4C-3593E00C01ED";
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
	rename -uid "63A90DEE-463F-F2BE-7E4D-D79E87D35F81";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
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
		-6.9088391411136789e-15 7.7481472025135467e-15 -118.37873845888936
		-11.556454655878078 7.6692822358976774e-15 -117.17381358942382
		-20.818765831003613 6.3290695748233908e-15 -103.3615501094671
		-30.697296667907914 6.0001733669779307e-15 -97.990267416784832
		-39.950919068347162 5.5491309324519565e-15 -90.624185460093074
		-48.391255965491709 4.9851241945134251e-15 -81.413256426004054
		-55.846486440037452 4.3196347038856475e-15 -70.544988267525767
		-62.16484349863191 3.5662099074845861e-15 -58.240627582867475
		-67.217703612199315 2.7401873614672727e-15 -44.750655672722893
		-70.90220512007258 1.8583825028183109e-15 -30.349689463316057
		-80.376907631704938 1.1026763160433227e-15 -16.847051018772373
		-81.203441581308454 -1.5360148399654267e-30 2.3684644397268951e-14
		-80.376907631704938 -1.1026763160433234e-15 16.847051018772397
		-70.90220512007258 -1.8583825028183109e-15 30.349689463316064
		-67.217703612199315 -2.7401873614672735e-15 44.750655672722921
		-62.16484349863191 -3.5662099074845885e-15 58.240627582867482
		-55.846486440037417 -4.3196347038856467e-15 70.544988267525767
		-48.391255965491688 -4.9851241945134244e-15 81.41325642600404
		-39.950919068347147 -5.549130932451955e-15 90.624185460093074
		-30.697296667907899 -6.0001733669779275e-15 97.990267416784761
		-20.81876583100361 -6.3290695748233876e-15 103.36155010946703
		-11.556454655878071 -7.6692822358976727e-15 117.17381358942376
		-1.0091847833165643e-14 -7.7481472025135467e-15 118.37873845888919
		11.556454655878079 -7.6692822358976727e-15 117.17381358942376
		20.818765831003606 -6.3290695748233876e-15 103.36155010946703
		30.697296667907899 -6.0001733669779275e-15 97.990267416784732
		39.950919068347147 -5.5491309324519518e-15 90.624185460093059
		48.391255965491695 -4.9851241945134196e-15 81.413256426003954
		55.846486440037374 -4.3196347038856427e-15 70.544988267525724
		62.164843498631896 -3.5662099074845853e-15 58.240627582867447
		67.21770361219923 -2.740187361467272e-15 44.750655672722857
		70.902205120072537 -1.8583825028183085e-15 30.349689463316043
		80.376907631704825 -1.1026763160433209e-15 16.847051018772355
		81.203441581308297 -1.1929206588922112e-31 2.0394884189839067e-15
		80.376907631704825 1.1026763160433233e-15 -16.847051018772373
		70.902205120072537 1.8583825028183101e-15 -30.34968946331605
		67.217703612199216 2.740187361467272e-15 -44.750655672722857
		62.164843498631825 3.5662099074845853e-15 -58.240627582867432
		55.846486440037268 4.319634703885638e-15 -70.544988267525667
		48.391255965491624 4.9851241945134188e-15 -81.413256426003827
		39.950919068347083 5.5491309324519502e-15 -90.624185460092946
		30.697296667907892 6.0001733669779228e-15 -97.99026741678469
		20.818765831003585 6.3290695748233798e-15 -103.36155010946695
		11.556454655878055 7.6692822358976664e-15 -117.17381358942349
		-2.2685776982528901e-14 7.7481472025135404e-15 -118.37873845888906
		;
createNode unitConversion -n "unitConversion22";
	rename -uid "BA63DAB2-4987-C890-DBDC-4EA987FC512F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "E75CF8D9-4F5F-EF21-2B3C-4D9E68766994";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion82";
	rename -uid "6E204A6A-4015-8ECF-E581-F4A3B2D9200A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion111";
	rename -uid "D5798D54-471C-1DE0-A0FC-38997ECB7515";
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
	setAttr -s 31 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 34 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
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
	setAttr -s 68 ".hyp";
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
connectAttr "neckQd0_setting.stretchMin" "neckQd0_fore_ctl.stretchMin";
connectAttr "neckQd0_setting.stretchMax" "neckQd0_fore_ctl.stretchMax";
connectAttr "neckQd0_setting.volumeScale" "neckQd0_fore_ctl.volumeScale";
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
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector62.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector62.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector62.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector62.opm";
connectAttr "spineQd0_setting.stretchMin" "spineQd0_fore_ctl.stretchMin";
connectAttr "spineQd0_setting.stretchMax" "spineQd0_fore_ctl.stretchMax";
connectAttr "spineQd0_setting.volumeScale" "spineQd0_fore_ctl.volumeScale";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector62.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "tail0_setting.localScale" "tail0_FK.sx";
connectAttr "tail0_setting.localScale" "tail0_FK.sy";
connectAttr "tail0_setting.localScale" "tail0_FK.sz";
connectAttr "tail0_0_fkj.s" "tail0_1_fkj.is";
connectAttr "tail0_1_fkj.s" "tail0_2_fkj.is";
connectAttr "tail0_2_fkj.s" "tail0_3_fkj.is";
connectAttr "tail0_3_fkj.s" "tail0_4_fkj.is";
connectAttr "tail0_4_fkj.s" "tail0_5_fkj.is";
connectAttr "tail0_0_chainGrp.tx" "tail0_0_fkc_ofs.tx";
connectAttr "tail0_0_chainGrp.ty" "tail0_0_fkc_ofs.ty";
connectAttr "tail0_0_chainGrp.tz" "tail0_0_fkc_ofs.tz";
connectAttr "tail0_0_chainGrp.rx" "tail0_0_fkc_ofs.rx";
connectAttr "tail0_0_chainGrp.ry" "tail0_0_fkc_ofs.ry";
connectAttr "tail0_0_chainGrp.rz" "tail0_0_fkc_ofs.rz";
connectAttr "tail0_setting.FKCtl" "tail0_0_fkc.v" -l on;
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
connectAttr "tail0_setting.subIkCtl" "tail0_5_ofs_ctl.v";
connectAttr "tail0_setting.subIkCtl" "tail0_4_ofs_ctl.v";
connectAttr "tail0_setting.subIkCtl" "tail0_3_ofs_ctl.v";
connectAttr "tail0_setting.subIkCtl" "tail0_2_ofs_ctl.v";
connectAttr "tail0_setting.subIkCtl" "tail0_1_ofs_ctl.v";
connectAttr "tail0_setting.subIkCtl" "tail0_0_ofs_ctl.v";
connectAttr "tail0_setting.localScale" "tail0_IK.sx";
connectAttr "tail0_setting.localScale" "tail0_IK.sy";
connectAttr "tail0_setting.localScale" "tail0_IK.sz";
connectAttr "tail0_setting.IKCtl" "tail0_0_ikc.v" -l on;
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion51.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion82.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion111.i";
// End of lion_ctl.ma
