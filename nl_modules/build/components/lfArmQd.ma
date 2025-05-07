//Maya ASCII 2023 scene
//Name: lfArmQd.ma
//Last modified: Sat, Apr 12, 2025 11:35:54 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKState2SK"
		 -nodeType "HIKProperty2State" -dataType "HIKCharacter" -dataType "HIKCharacterState"
		 -dataType "HIKEffectorState" -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2018.11";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "ik2Bsolver" "ik2Bsolver" "2.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "01E67F45-4A20-01B4-D4C7-86B1406558D9";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr -cb on ".ro";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "E66F8CE8-4304-FEB2-4988-D6851FD4AAC0";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "rbnBones" -ln "rbnBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twistBones" -ln "twistBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeFix" -ln "kneeFix" -min 0 -max 1 -at "bool";
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 10 0 55 ;
	setAttr -cb on ".ro";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".rbnBones";
	setAttr -cb on ".rbnJntNum";
	setAttr -cb on ".patellaBone" yes;
	setAttr -cb on ".toeBones" yes;
	setAttr -cb on ".twistBones" yes;
	setAttr -cb on ".kneeFix" yes;
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 90 5 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "hip_guide" -p "hip_guide_ofs";
	rename -uid "C6869A0E-45EF-177D-DFB3-C1AA8EA4FC3E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012543e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 1.9721522630525304e-31 ;
createNode aimConstraint -n "hip_guide_aimConstraint1" -p "hip_guide";
	rename -uid "D082A509-45BA-3D00-6A96-A984731FC159";
	addAttr -dcb 0 -ci true -sn "w0" -ln "upr_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode nurbsCurve -n "hip_guideShape" -p "hip_guide";
	rename -uid "8359EA93-46D8-D281-6ADB-289BF0AF1E74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.9950499900494999 0 -3.9968028886505635e-14
		0.92387932409453988 0.38268332950649997 -3.9968028886505635e-14
		0.70710665959559993 0.70710665959559993 -3.9968028886505635e-14
		0.38268332950649997 0.92387932409453988 -3.9968028886505635e-14
		0 0.99502665671639989 -3.9968028886505635e-14
		-0.38268332950649997 0.92387932409453988 -3.9968028886505635e-14
		-0.70710665959559993 0.70710665959559993 -3.9968028886505635e-14
		-0.92387932409453988 0.38268332950649997 -3.9968028886505635e-14
		-0.9950499900494999 -4.7144732861885998e-08 -3.9968028886505635e-14
		-0.92387932409453988 -0.38268332950649997 -3.9968028886505635e-14
		-0.70710665959559993 -0.70710665959559993 -3.9968028886505635e-14
		-0.38268332950649997 -0.92387932409453988 -3.9968028886505635e-14
		3.9736399602636007e-08 -0.99502665671639989 -0.0067659999323799683
		0.38268332950649997 -0.92387932409453988 -3.9968028886505635e-14
		0.70710665959559993 -0.70710665959559993 -3.9968028886505635e-14
		0.92387932409453988 -0.38268332950649997 -3.9968028886505635e-14
		0.9950499900494999 0 -3.9968028886505635e-14
		0.91930599080693998 0.0025893066407736004 -0.38078066285889994
		0.7036066596306001 0.0047844532854888003 -0.70359132629746002
		0.38078932952543998 0.0062511999374880002 -0.91928599080717999
		3.9736399602636007e-08 0.0067662665990039991 -0.99502799004976006
		-0.38078932952543998 0.0062511999374880002 -0.91928599080717999
		-0.7036066596306001 0.0047844532854888003 -0.70359132629746002
		-0.91930599080693998 0.0025893066407736004 -0.38078066285889994
		-0.9950499900494999 -4.7144732861885998e-08 -3.9968028886505635e-14
		-0.91930599080693998 -0.0025893999741059999 0.38077932952550003
		-0.7036066596306001 -0.0047845466188211998 0.70359065963071998
		-0.38078932952543998 -0.0062512932708204006 0.91928465747378008
		3.9736399602636007e-08 -0.006766333265670001 0.99502665671635993
		0.38078932952543998 -0.0062512932708204006 0.91928465747378008
		0.7036066596306001 -0.0047845466188211998 0.70359065963071998
		0.91930599080693998 -0.0025893999741059999 0.38077932952550003
		0.9950499900494999 0 -3.9968028886505635e-14
		0.91930599080693998 0.0025893066407736004 -0.38078066285889994
		0.7036066596306001 0.0047844532854888003 -0.70359132629746002
		0.38078932952543998 0.0062511999374880002 -0.91928599080717999
		3.9736399602636007e-08 0.0067662665990039991 -0.99502799004976006
		3.9736399602636007e-08 0.38703132946301999 -0.91669599083307984
		3.9736399602636007e-08 0.70837465958292001 -0.69880665967863997
		3.9736399602636007e-08 0.92187399078125998 -0.37452932958807994
		0 0.99502665671639989 -3.9968028886505635e-14
		3.9736399602636007e-08 0.91669532416638 0.38703132946298002
		3.9736399602636007e-08 0.69880599301193991 0.70837399291622016
		3.9736399602636007e-08 0.37452932958803997 0.92187399078122001
		3.9736399602636007e-08 -0.006766333265670001 0.99502665671635993
		3.9736399602636007e-08 -0.38703132946301999 0.91669465749968004
		3.9736399602636007e-08 -0.70837465958292001 0.69880532634524006
		3.9736399602636007e-08 -0.92187399078125998 0.37452799625467997
		3.9736399602636007e-08 -0.99502665671639989 -0.0067659999323799683
		3.9736399602636007e-08 -0.91669532416638 -0.38703266279637999
		3.9736399602636007e-08 -0.69880599301193991 -0.70837532624961996
		3.9736399602636007e-08 -0.37452932958803997 -0.92187532411462003
		3.9736399602636007e-08 0.0067662665990039991 -0.99502799004976006
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "FDBB4D88-4CFD-F00D-82C0-DC86D56796A9";
	setAttr ".t" -type "double3" 0 73 10 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "upr_guide" -p "upr_guide_ofs";
	rename -uid "B5C7B15F-4E8B-8C8D-4E16-A481C67BBCC3";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012582e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 5.9164567891575938e-31 ;
createNode aimConstraint -n "upr_guide_aimConstraint1" -p "upr_guide";
	rename -uid "32A3F3CD-47B0-B3C0-FD0D-C4B0166486D7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "lwr_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 179.99999212859592 0 ;
	setAttr -k on ".w0";
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "1306F83F-4E01-4A38-0ADD-DC910ADDB46F";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "lwr_guide_ofs_pointConstraint1" -p "lwr_guide_ofs";
	rename -uid "62AFD084-48AC-474B-874E-D7B957778637";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "upr_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -3.4404610715910167e-07 35.360860607031114 -2.8759620539837973 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lwr_guide" -p "lwr_guide_ofs";
	rename -uid "61B4C85D-4A6F-96DF-91ED-80B2FEF15965";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 3.0578341082512518e-15 9 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode aimConstraint -n "lwr_guide_aimConstraint1" -p "lwr_guide";
	rename -uid "DF7AE987-4ACB-CA48-1CDF-0D8AB225BFE8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "foot_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "patella_guide" -p "lwr_guide";
	rename -uid "8D0DFFF7-457B-292C-BC34-9EBD723BB229";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -3 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 4.2146217865798014e-17 0 -1.0005336250605246e-18 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode nurbsCurve -n "patella_guideShape" -p "patella_guide";
	rename -uid "D984121B-4B58-E728-7F5C-0AAB2DA58696";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.49752499502474995 0 -1.1102230246251565e-16
		0.46193966204726994 0.19134166475324998 -1.1102230246251565e-16
		0.35355332979779996 0.35355332979779996 -1.1102230246251565e-16
		0.19134166475324998 0.46193966204726994 -1.1102230246251565e-16
		0 0.49751332835819995 -1.1102230246251565e-16
		-0.19134166475324998 0.46193966204726994 -1.1102230246251565e-16
		-0.35355332979779996 0.35355332979779996 -1.1102230246251565e-16
		-0.46193966204726994 0.19134166475324998 -1.1102230246251565e-16
		-0.49752499502474995 -2.3572366430942999e-08 -1.1102230246251565e-16
		-0.46193966204726994 -0.19134166475324998 -1.1102230246251565e-16
		-0.35355332979779996 -0.35355332979779996 -1.1102230246251565e-16
		-0.19134166475324998 -0.46193966204726994 -1.1102230246251565e-16
		1.9868199801318004e-08 -0.49751332835819995 -0.0033829999661701112
		0.19134166475324998 -0.46193966204726994 -1.1102230246251565e-16
		0.35355332979779996 -0.35355332979779996 -1.1102230246251565e-16
		0.46193966204726994 -0.19134166475324998 -1.1102230246251565e-16
		0.49752499502474995 0 -1.1102230246251565e-16
		0.45965299540346999 0.0012946533203868002 -0.1903903314294301
		0.35180332981530005 0.0023922266427444001 -0.35179566314871014
		0.19039466476271999 0.0031255999687440001 -0.45964299540357012
		1.9868199801318004e-08 0.0033831332995019996 -0.49751399502486016
		-0.19039466476271999 0.0031255999687440001 -0.45964299540357012
		-0.35180332981530005 0.0023922266427444001 -0.35179566314871014
		-0.45965299540346999 0.0012946533203868002 -0.1903903314294301
		-0.49752499502474995 -2.3572366430942999e-08 -1.1102230246251565e-16
		-0.45965299540346999 -0.0012946999870529999 0.19038966476276989
		-0.35180332981530005 -0.0023922733094105999 0.35179532981537986
		-0.19039466476271999 -0.0031256466354102003 0.45964232873690991
		1.9868199801318004e-08 -0.0033831666328350005 0.49751332835819984
		0.19039466476271999 -0.0031256466354102003 0.45964232873690991
		0.35180332981530005 -0.0023922733094105999 0.35179532981537986
		0.45965299540346999 -0.0012946999870529999 0.19038966476276989
		0.49752499502474995 0 -1.1102230246251565e-16
		0.45965299540346999 0.0012946533203868002 -0.1903903314294301
		0.35180332981530005 0.0023922266427444001 -0.35179566314871014
		0.19039466476271999 0.0031255999687440001 -0.45964299540357012
		1.9868199801318004e-08 0.0033831332995019996 -0.49751399502486016
		1.9868199801318004e-08 0.19351566473151 -0.45834799541652005
		1.9868199801318004e-08 0.35418732979146 -0.34940332983930011
		1.9868199801318004e-08 0.46093699539062999 -0.1872646647940201
		0 0.49751332835819995 -1.1102230246251565e-16
		1.9868199801318004e-08 0.45834766208319 0.19351566473150988
		1.9868199801318004e-08 0.34940299650596995 0.35418699645812995
		1.9868199801318004e-08 0.18726466479401999 0.46093699539062988
		1.9868199801318004e-08 -0.0033831666328350005 0.49751332835819984
		1.9868199801318004e-08 -0.19351566473151 0.45834732874985989
		1.9868199801318004e-08 -0.35418732979146 0.3494026631726399
		1.9868199801318004e-08 -0.46093699539062999 0.18726399812735986
		1.9868199801318004e-08 -0.49751332835819995 -0.0033829999661701112
		1.9868199801318004e-08 -0.45834766208319 -0.19351633139817012
		1.9868199801318004e-08 -0.34940299650596995 -0.35418766312479011
		1.9868199801318004e-08 -0.18726466479401999 -0.46093766205729014
		1.9868199801318004e-08 0.0033831332995019996 -0.49751399502486016
		;
	setAttr ".adot" yes;
createNode transform -n "radius_guide_ZRO" -p "lwr_guide";
	rename -uid "1A36F18C-4946-9AF1-2ACE-02B3743CB871";
	setAttr ".t" -type "double3" 5 5 4.7184478546569183e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "radius_guide" -p "radius_guide_ZRO";
	rename -uid "D4321490-4F5E-C41A-DC1A-A19A5977A6EA";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode aimConstraint -n "radius_guide_aimConstraint1" -p "radius_guide";
	rename -uid "67EA238B-4712-7FEC-78B7-25A2951ABE36";
	addAttr -dcb 0 -ci true -sn "w0" -ln "radiusEnd_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 180 -0.42278555086942932 7.9135225584573523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "ulna_guide_ZRO" -p "lwr_guide";
	rename -uid "997BAA72-4354-7BEB-1A21-2187458D8F6D";
	setAttr ".t" -type "double3" 5 -5 4.7184478546569183e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "ulna_guide" -p "ulna_guide_ZRO";
	rename -uid "F40E1B63-49E8-420E-7CC5-A28ABC3F83A9";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode aimConstraint -n "ulna_guide_aimConstraint1" -p "ulna_guide";
	rename -uid "69E4D42A-42E4-BD04-6BBC-2CA6ABF7D4B2";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ulnaEnd_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -2.9197073535085651e-18 -0.42278555086891523 7.913522558447528e-16 ;
	setAttr -k on ".w0";
createNode transform -n "palm_guide_ofs" -p "master_guide";
	rename -uid "6692DE7F-4686-BE5A-3FE7-1E9F5E0D39F5";
	setAttr ".t" -type "double3" 0 15 2 ;
	setAttr ".r" -type "double3" 180 9.0309812684467041e-17 -90 ;
	setAttr -cb on ".ro";
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "2777BD87-4148-276D-9AEA-CDA4ABC15F94";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode transform -n "radiusEnd_guide_ZRO" -p "palm_guide";
	rename -uid "D5647F26-4120-C2C0-7D00-F08BC5EE3EE9";
	setAttr ".t" -type "double3" 0 5 1.2246467991473542e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000009 ;
createNode transform -n "radiusEnd_guide" -p "radiusEnd_guide_ZRO";
	rename -uid "7E89FCB3-46D1-0EB2-8CB5-43AF3E9440D2";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode aimConstraint -n "radiusEnd_guide_aimConstraint1" -p "radiusEnd_guide";
	rename -uid "06540AAD-4D6E-C477-8C46-A5940B06BA5D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "radius_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 2.1740083715106562e-17 -3.1426304823365627 -7.9252254098633058e-16 ;
	setAttr -k on ".w0";
createNode transform -n "ulnaEnd_guide_ZRO" -p "palm_guide";
	rename -uid "9A2D61C9-4AEF-9DE6-E739-27953FACD0D5";
	setAttr ".t" -type "double3" 0 -5 -1.2246467991473519e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000009 ;
createNode transform -n "ulnaEnd_guide" -p "ulnaEnd_guide_ZRO";
	rename -uid "2F61FBAA-4D40-DADB-B8A6-9B8FF157E674";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 4.4408920985006173e-16 -8.8817841970012523e-16 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode aimConstraint -n "ulnaEnd_guide_aimConstraint1" -p "ulnaEnd_guide";
	rename -uid "92393418-43AA-876E-8438-BFABE9943DE4";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ulna_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -3.1426304823365632 0 ;
	setAttr -k on ".w0";
createNode transform -n "digit_guide_ofs" -p "master_guide";
	rename -uid "AFC6ACE8-49C2-6343-D10B-D995FB21F46F";
	setAttr ".t" -type "double3" -9.0815373377806495e-13 5 5 ;
	setAttr ".r" -type "double3" 0 -90 89.999999999958362 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "digit_guide" -p "digit_guide_ofs";
	rename -uid "4881E75D-4BDC-BA9A-2224-299C5DB2B52F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.7148429343528187e-07 9.3312649504333883e-09 -5.3290705182007514e-15 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012474e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -4.9303806576313212e-31 ;
createNode aimConstraint -n "digit_guide_aimConstraint1" -p "digit_guide";
	rename -uid "656E069C-48D6-A3EB-5E12-6BBE118B33DD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ball_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" -89.999999986913991 8.1720738499793058e-08 -8.1720847379233983e-08 ;
	setAttr -k on ".w0";
createNode transform -n "ball_guide_ofs1" -p "master_guide";
	rename -uid "A9FFA5B6-4298-D33C-889C-76A6FEA01D31";
	setAttr ".t" -type "double3" -1.6289226076098935e-13 5 12 ;
	setAttr ".r" -type "double3" 180 0 -90.000000000000838 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "ball_guide" -p "ball_guide_ofs1";
	rename -uid "CB9D3A49-4C66-FC6C-D712-26949CC6ED7F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012474e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -4.9303806576313212e-31 ;
createNode nurbsCurve -n "hip_guideShape" -p "ball_guide";
	rename -uid "7EEDA631-449F-73E6-2743-7883DAB1E318";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.9950499900494999 0 -3.9968028886505635e-14
		0.92387932409453988 0.38268332950649997 -3.9968028886505635e-14
		0.70710665959559993 0.70710665959559993 -3.9968028886505635e-14
		0.38268332950649997 0.92387932409453988 -3.9968028886505635e-14
		0 0.99502665671639989 -3.9968028886505635e-14
		-0.38268332950649997 0.92387932409453988 -3.9968028886505635e-14
		-0.70710665959559993 0.70710665959559993 -3.9968028886505635e-14
		-0.92387932409453988 0.38268332950649997 -3.9968028886505635e-14
		-0.9950499900494999 -4.7144732861885998e-08 -3.9968028886505635e-14
		-0.92387932409453988 -0.38268332950649997 -3.9968028886505635e-14
		-0.70710665959559993 -0.70710665959559993 -3.9968028886505635e-14
		-0.38268332950649997 -0.92387932409453988 -3.9968028886505635e-14
		3.9736399602636007e-08 -0.99502665671639989 -0.0067659999323799683
		0.38268332950649997 -0.92387932409453988 -3.9968028886505635e-14
		0.70710665959559993 -0.70710665959559993 -3.9968028886505635e-14
		0.92387932409453988 -0.38268332950649997 -3.9968028886505635e-14
		0.9950499900494999 0 -3.9968028886505635e-14
		0.91930599080693998 0.0025893066407736004 -0.38078066285889994
		0.7036066596306001 0.0047844532854888003 -0.70359132629746002
		0.38078932952543998 0.0062511999374880002 -0.91928599080717999
		3.9736399602636007e-08 0.0067662665990039991 -0.99502799004976006
		-0.38078932952543998 0.0062511999374880002 -0.91928599080717999
		-0.7036066596306001 0.0047844532854888003 -0.70359132629746002
		-0.91930599080693998 0.0025893066407736004 -0.38078066285889994
		-0.9950499900494999 -4.7144732861885998e-08 -3.9968028886505635e-14
		-0.91930599080693998 -0.0025893999741059999 0.38077932952550003
		-0.7036066596306001 -0.0047845466188211998 0.70359065963071998
		-0.38078932952543998 -0.0062512932708204006 0.91928465747378008
		3.9736399602636007e-08 -0.006766333265670001 0.99502665671635993
		0.38078932952543998 -0.0062512932708204006 0.91928465747378008
		0.7036066596306001 -0.0047845466188211998 0.70359065963071998
		0.91930599080693998 -0.0025893999741059999 0.38077932952550003
		0.9950499900494999 0 -3.9968028886505635e-14
		0.91930599080693998 0.0025893066407736004 -0.38078066285889994
		0.7036066596306001 0.0047844532854888003 -0.70359132629746002
		0.38078932952543998 0.0062511999374880002 -0.91928599080717999
		3.9736399602636007e-08 0.0067662665990039991 -0.99502799004976006
		3.9736399602636007e-08 0.38703132946301999 -0.91669599083307984
		3.9736399602636007e-08 0.70837465958292001 -0.69880665967863997
		3.9736399602636007e-08 0.92187399078125998 -0.37452932958807994
		0 0.99502665671639989 -3.9968028886505635e-14
		3.9736399602636007e-08 0.91669532416638 0.38703132946298002
		3.9736399602636007e-08 0.69880599301193991 0.70837399291622016
		3.9736399602636007e-08 0.37452932958803997 0.92187399078122001
		3.9736399602636007e-08 -0.006766333265670001 0.99502665671635993
		3.9736399602636007e-08 -0.38703132946301999 0.91669465749968004
		3.9736399602636007e-08 -0.70837465958292001 0.69880532634524006
		3.9736399602636007e-08 -0.92187399078125998 0.37452799625467997
		3.9736399602636007e-08 -0.99502665671639989 -0.0067659999323799683
		3.9736399602636007e-08 -0.91669532416638 -0.38703266279637999
		3.9736399602636007e-08 -0.69880599301193991 -0.70837532624961996
		3.9736399602636007e-08 -0.37452932958803997 -0.92187532411462003
		3.9736399602636007e-08 0.0067662665990039991 -0.99502799004976006
		;
	setAttr ".adot" yes;
createNode aimConstraint -n "ball_guide_aimConstraint1" -p "ball_guide";
	rename -uid "FE802EF7-4628-7F22-8682-70965B0602E5";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "tip_guide_ofs" -p "master_guide";
	rename -uid "9DF21705-4F6C-197D-1814-B7B800AA61B4";
	setAttr ".t" -type "double3" -2.5751698834672243e-13 -3.6190529924333017e-29 14 ;
	setAttr ".r" -type "double3" 180 -90 -90.000000000016229 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tip_guide" -p "tip_guide_ofs";
	rename -uid "05FF854B-48FD-8CFD-1BE2-1298CB99257E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "palm_inPos_ofs" -p "master_guide";
	rename -uid "254E1ABA-4993-EFAA-A2B9-BCA39A6DB9B7";
	setAttr -cb on ".ro";
createNode transform -n "palm_inPos_guide" -p "palm_inPos_ofs";
	rename -uid "D4E600EC-46C0-7F63-B923-98859A463209";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -8 0 10 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_outPos_ofs" -p "master_guide";
	rename -uid "5FC88CCD-48EE-A138-ED19-7C9CCD2BC9BD";
	setAttr -cb on ".ro";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 8 0 10 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_heelPos_ofs" -p "master_guide";
	rename -uid "830B1EA8-46DF-8A2A-5035-F08531437448";
	setAttr -cb on ".ro";
createNode transform -n "palm_heelPos_guide" -p "palm_heelPos_ofs";
	rename -uid "787DB076-48C9-B786-C071-BE9CE7005953";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 4 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_toePos_guide_ofs" -p "master_guide";
	rename -uid "A1C0A36A-4FCA-48D9-3D84-CA976A59E454";
	setAttr -cb on ".ro";
createNode transform -n "palm_toePos_guide" -p "palm_toePos_guide_ofs";
	rename -uid "D0C1A22D-4BCC-3A74-889C-209DD6F8C00D";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 15 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "pv_loc_ofs" -p "master_guide";
	rename -uid "76E07AA8-4C47-7CFF-B94F-EB9C5F5A70AF";
createNode pointConstraint -n "pv_loc_ofs_pointConstraint1" -p "pv_loc_ofs";
	rename -uid "4454B5E4-4A8D-9B7F-4E13-FFAA9901C99E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upr_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "foot_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 49.800000000000004 -8.8817841970012543e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "pv_loc" -p "pv_loc_ofs";
	rename -uid "F8A93BBD-4B6E-CC7B-681C-51AB49E04C59";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "E33105AB-4091-266F-273B-BEA58B6C2A1D";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "pvc_guide_ofs" -p "pv_loc";
	rename -uid "E4A29159-4D4E-006E-EBF5-419FFB49E893";
	setAttr ".t" -type "double3" 35 7.1054273576010019e-15 1.0978271331186208e-15 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr -cb on ".ro";
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "590BE755-43EF-4EE4-2A1E-889DF055B47A";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "posRatio" -ln "posRatio" -dv 1 -min 0.5 -max 3 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 -2.4603683613290921e-16 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr ".r" -type "double3" 0 0 6.8860929590657437e-06 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 5.337285934729864e-23 3.2098693921383983e-30 0 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 0 ;
	setAttr -l on ".wsMirror";
	setAttr -cb on ".posRatio";
createNode aimConstraint -n "pv_loc_aimConstraint1" -p "pv_loc";
	rename -uid "DF3189CE-46C1-82E3-9953-978AF7C648FD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "lwr_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 89.999999999999744 -84.224097369711743 -89.999999999999872 ;
	setAttr -k on ".w0";
createNode transform -n "toesRoot_guide" -p "master_guide";
	rename -uid "1AC7258D-4FE3-C4A6-024B-EB8436CA7556";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode locator -n "toesRoot_guideShape" -p "toesRoot_guide";
	rename -uid "02D0727E-4919-F638-406D-47B5EFFAB856";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "toesRoot_guide_ofs" -p "toesRoot_guide";
	rename -uid "9831329A-4D58-E407-B96C-AFBB247B50E5";
createNode transform -n "toe00_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "B8E0C953-4048-D0B4-A8E5-098D312352CE";
	setAttr ".t" -type "double3" -4 2.6645352591003761e-16 13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ZRO";
	rename -uid "055F2166-4EBA-FA02-8AF9-2B8125618554";
	setAttr ".t" -type "double3" -7 0 -5 ;
createNode transform -n "toe00_3_guide" -p "toe00_2_guide";
	rename -uid "B338CF4A-4558-72AC-CD52-478B914BFA03";
	setAttr ".t" -type "double3" 3.6000000000000014 -3.5527136788005009e-15 8.8817841970012523e-16 ;
createNode transform -n "toe00_4_guide" -p "toe00_3_guide";
	rename -uid "E56B63CC-4459-E226-A753-8EA87FF804E9";
	setAttr ".t" -type "double3" 0.99999999999999467 0 0 ;
createNode nurbsCurve -n "toe00_4_guideShape" -p "toe00_4_guide";
	rename -uid "34653DFB-4629-5957-56B9-E48A5C0E903C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.12437849875621501 0.00084578332487727625 -4.9670499503295009e-09
		-0.11523441551432251 -0.04681616619850322 -4.9670499503295009e-09
		-0.088546915781197499 -0.087350749126490712 -4.9670499503295009e-09
		-0.048379082849542503 -0.11458691552079572 -4.9670499503295009e-09
		-0.00084574999154250004 -0.12437833208954821 -4.9670499503295009e-09
		0.046815999531839993 -0.11523424884765572 -4.9670499503295009e-09
		0.087350665793160004 -0.088546832447863225 -4.9670499503295009e-09
		0.114586832187465 -0.048378916182875722 -4.9670499503295009e-09
		0.12437833208954999 -0.00084579165820697377 -4.9670499503295009e-09
		0.1152342488476575 0.046816166198506773 -4.9670499503295009e-09
		0.088546749114532516 0.087350749126494265 -4.9670499503295009e-09
		0.048378916182877499 0.11458691552079928 -4.9670499503295009e-09
		0 0.12437833208955176 0
		-0.046816166198504996 0.11523424884765927 -4.9670499503295009e-09
		-0.087350832459825001 0.088546832447866777 -4.9670499503295009e-09
		-0.11458699885412998 0.048378916182879275 -4.9670499503295009e-09
		-0.12437849875621501 0.00084578332487727625 -4.9670499503295009e-09
		-0.1149107488508925 0.00078139999218777639 -0.047598666190679997
		-0.087948915787177506 0.00059805666068787639 -0.087950832453825012
		-0.047597582857357497 0.00032366333009847641 -0.1149132488508675
		0 1.7763568394002505e-15 -0.12438124875618749
		0.0475974161906925 -0.00032367499676147363 -0.1149132488508675
		0.087948832453844994 -0.00059806832735087362 -0.087950832453825012
		0.11491058218422751 -0.00078141165885077372 -0.047598666190679997
		0.12437833208954999 -0.00084579165820697377 -4.9670499503295009e-09
		0.11491058218422751 -0.00078141165885077372 0.047598666190679997
		0.087948832453844994 -0.00059806832735087362 0.087950832453825012
		0.0475974161906925 -0.00032367499676147363 0.1149132488508675
		0 -5.8930898313789103e-09 0.12438124875618749
		-0.047597582857357497 0.00032366333009847641 0.1149132488508675
		-0.087948915787177506 0.00059805666068787639 0.087950832453825012
		-0.1149107488508925 0.00078139999218777639 0.047598666190679997
		-0.12437849875621501 0.00084578332487727625 -4.9670499503295009e-09
		-0.1149107488508925 0.00078139999218777639 -0.047598666190679997
		-0.087948915787177506 0.00059805666068787639 -0.087950832453825012
		-0.047597582857357497 0.00032366333009847641 -0.1149132488508675
		0 1.7763568394002505e-15 -0.12438124875618749
		0 -0.04783541618831072 -0.11548491551181748
		0 -0.088388332449448215 -0.088388332449449991
		0 -0.11548491551181571 -0.047835416188312496
		-0.00084574999154250004 -0.12437833208954821 -4.9670499503295009e-09
		0 -0.11548491551181571 0.047835416188312496
		0 -0.088388332449448215 0.088388332449449991
		0 -0.04783541618831072 0.11548491551181748
		0 -5.8930898313789103e-09 0.12438124875618749
		0 0.047835416188314273 0.11548491551181748
		0 0.088388332449451767 0.088388332449449991
		0 0.11548491551181926 0.047835416188312496
		0 0.12437833208955176 0
		0 0.11548491551181926 -0.047835416188312496
		0 0.088388332449451767 -0.088388332449449991
		0 0.047835416188314273 -0.11548491551181748
		0 1.7763568394002505e-15 -0.12438125019467738
		0 1.7763568394002505e-15 -1.1740940491788601
		-0.15181190164227984 1.7763568394002505e-15 -1.3259059508211406
		0.15181190164227984 1.7763568394002505e-15 -1.3259059508211406
		0 1.7763568394002505e-15 -1.1740940491788601
		;
	setAttr ".adot" yes;
createNode transform -n "toe00_1_guide" -p "toe00_2_guide";
	rename -uid "13138FAF-4EAD-1F3E-30CD-3C9A4A1BDEC7";
	setAttr ".t" -type "double3" -2.5 0 -8 ;
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "382A5C4F-4D74-74F0-BCD9-39B808B23075";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 -9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 -9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 -9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 -9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 -9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 -9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 -9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 -9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 -9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 -9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 -9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 -9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0 -1.1786183215471499e-08 0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0 -0.095670832376624992 -0.23096983102363497
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.23096983102363497 -0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0 -0.23096983102363497 0.095670832376624992
		0 -0.17677666489889998 0.17677666489889998
		0 -0.095670832376624992 0.23096983102363497
		0 -1.1786183215471499e-08 0.24876249751237497
		0 0.095670832376624992 0.23096983102363497
		0 0.17677666489889998 0.17677666489889998
		0 0.23096983102363497 0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 -0.095670832376624992
		0 0.17677666489889998 -0.17677666489889998
		0 0.095670832376624992 -0.23096983102363497
		0 0 -0.24876250038935477
		0 0 -2.3481880983577201
		-0.30362380328455968 0 -2.6518119016422812
		0.30362380328455968 0 -2.6518119016422812
		0 0 -2.3481880983577201
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "toe00_2_guideShape" -p "toe00_2_guide";
	rename -uid "88E38C23-4EE1-07E2-5E6E-CCA924A012C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 -9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 -9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 -9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 -9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 -9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 -9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 -9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 -9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 -9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 -9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 -9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 -9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0 -1.1786183215471499e-08 0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0 -0.095670832376624992 -0.23096983102363497
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.23096983102363497 -0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0 -0.23096983102363497 0.095670832376624992
		0 -0.17677666489889998 0.17677666489889998
		0 -0.095670832376624992 0.23096983102363497
		0 -1.1786183215471499e-08 0.24876249751237497
		0 0.095670832376624992 0.23096983102363497
		0 0.17677666489889998 0.17677666489889998
		0 0.23096983102363497 0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 -0.095670832376624992
		0 0.17677666489889998 -0.17677666489889998
		0 0.095670832376624992 -0.23096983102363497
		0 0 -0.24876250038935477
		0 0 -2.3481880983577201
		-0.30362380328455968 0 -2.6518119016422812
		0.30362380328455968 0 -2.6518119016422812
		0 0 -2.3481880983577201
		;
	setAttr ".adot" yes;
createNode transform -n "toe01_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "737D2A84-4350-BD2B-175A-59B5755C361F";
	setAttr ".t" -type "double3" -2 2.6645352591003761e-16 13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ZRO";
	rename -uid "41CE028D-4AAD-F430-6FB7-B19E132F4760";
	setAttr ".t" -type "double3" -7 0 -5 ;
createNode transform -n "toe01_3_guide" -p "toe01_2_guide";
	rename -uid "07791CFE-49A2-9766-DA7E-20A9E6B8F152";
	setAttr ".t" -type "double3" 6 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe01_4_guide" -p "toe01_3_guide";
	rename -uid "36DAC40F-4285-CA07-ED62-B68C7D57E9EB";
	setAttr ".t" -type "double3" 4 -2.2937707964326551e-15 1.0616507672978059e-14 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe01_5_guide" -p "toe01_4_guide";
	rename -uid "C0F55889-44A8-FFB6-1199-9A8110291009";
	setAttr ".t" -type "double3" 2 1.4379889367229222e-15 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe01_1_guide" -p "toe01_2_guide";
	rename -uid "531B5FB9-467F-9842-391B-BCA7EA451D18";
	setAttr ".t" -type "double3" -2.5 0 -8 ;
createNode transform -n "toe02_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "7E88181A-4F45-24DB-F9E3-EF9278091AA4";
	setAttr ".t" -type "double3" 0 2.6645352591003761e-16 13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ZRO";
	rename -uid "70157F63-4504-7307-38BC-4E9085F15C0E";
	setAttr ".t" -type "double3" -7 0 -5 ;
createNode transform -n "toe02_3_guide" -p "toe02_2_guide";
	rename -uid "425ABFCC-4D33-C627-8300-E5BE4202491E";
	setAttr ".t" -type "double3" 6 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe02_4_guide" -p "toe02_3_guide";
	rename -uid "4D805001-4C7F-2014-06E9-90A29914D0E1";
	setAttr ".t" -type "double3" 4 -2.2937707964326551e-15 9.7283292532779342e-15 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe02_5_guide" -p "toe02_4_guide";
	rename -uid "CF66827F-4A09-CDE3-954B-4292445E9C60";
	setAttr ".t" -type "double3" 2 1.4379889367229222e-15 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe02_1_guide" -p "toe02_2_guide";
	rename -uid "B8A05C5F-4AA4-724F-511D-7D8388FFD1AE";
	setAttr ".t" -type "double3" -2.5 0 -8 ;
createNode transform -n "toe03_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "B2B152CB-4F00-243E-FEA4-81B924C04FF5";
	setAttr ".t" -type "double3" 2 2.6645352591003761e-16 13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ZRO";
	rename -uid "9086D6C8-493B-3E75-C60E-3C8F6757FAF6";
	setAttr ".t" -type "double3" -7 0 -5 ;
createNode transform -n "toe03_3_guide" -p "toe03_2_guide";
	rename -uid "2F955085-49A8-20D2-0151-F481153FFAA7";
	setAttr ".t" -type "double3" 6 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe03_4_guide" -p "toe03_3_guide";
	rename -uid "FFA798B3-4E9D-59EC-2EA9-38AB56A386E6";
	setAttr ".t" -type "double3" 4 -5.174139570324052e-16 1.0616507672978059e-14 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe03_5_guide" -p "toe03_4_guide";
	rename -uid "ACEF7A86-4979-3175-BADA-C4AA176C1D92";
	setAttr ".t" -type "double3" 2 1.4379889367229222e-15 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe03_1_guide" -p "toe03_2_guide";
	rename -uid "949EFD49-4D26-4102-110C-FF92D96A6524";
	setAttr ".t" -type "double3" -2.5 0 -8 ;
createNode transform -n "toe04_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "28BDAD83-4117-1CDD-83F1-DABBB4F1C338";
	setAttr ".t" -type "double3" 4 2.6645352591003761e-16 13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ZRO";
	rename -uid "BE192271-4CAD-4D2C-2744-F18FAF5F78B4";
	setAttr ".t" -type "double3" -7 0 -5 ;
createNode transform -n "toe04_3_guide" -p "toe04_2_guide";
	rename -uid "E827C2C8-4270-2C53-5E62-E398D014D8EC";
	setAttr ".t" -type "double3" 6 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe04_4_guide" -p "toe04_3_guide";
	rename -uid "90F76AD1-47B8-F698-B4EF-58A3CD9D9BF0";
	setAttr ".t" -type "double3" 4 -1.1175554993433914e-14 1.0616507672978059e-14 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe04_5_guide" -p "toe04_4_guide";
	rename -uid "3C890558-45A2-A042-BE5B-99B5DCE421BE";
	setAttr ".t" -type "double3" 2 1.4379889367229222e-15 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe04_1_guide" -p "toe04_2_guide";
	rename -uid "7B986E76-4074-7CE4-5DCD-19A5D2EEEAC6";
	setAttr ".t" -type "double3" -2.5 0 -8 ;
createNode pointConstraint -n "toesRoot_guide_pointConstraint1" -p "toesRoot_guide";
	rename -uid "09EB2B93-41F9-CC28-28C9-1DA8634879DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "palm_guideW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 7.7000000000000011 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "foot_guide_quadShape1" -p "master_guide";
	rename -uid "2997BDD0-44CB-894B-D283-FFA7A2329DB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.26773676203117 8.2535382583711187e-16 -6.8965994317252743
		-8.1660387114908776e-15 8.0595107077863571e-16 -7.4439961948696647
		-11.267736762031188 8.2535382583711157e-16 -6.8965994317252743
		-11.689010839838973 1.2470934284616338e-31 9.5064992343836643
		-11.267736762031188 -8.2535382583711157e-16 23.638075700998236
		-1.0052680407308491e-14 -8.059510707786362e-16 24.185472464142649
		11.26773676203117 -8.2535382583711157e-16 23.638075700998236
		11.689010839838955 -2.6978565941924595e-32 9.5064992343836678
		11.26773676203117 8.2535382583711187e-16 -6.8965994317252743
		-8.1660387114908776e-15 8.0595107077863571e-16 -7.4439961948696647
		-11.267736762031188 8.2535382583711157e-16 -6.8965994317252743
		;
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "364440FF-4F2C-4A41-21F1-41AE2CA57C86";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode transform -n "line_01" -p "line_grp";
	rename -uid "D1E8B092-497F-C8FE-8CDE-888F697DF151";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_01Shape" -p "line_01";
	rename -uid "D1D3B575-492C-899B-DA55-2AA7179BFE83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 90 60
		10 73 65
		;
	setAttr ".adot" yes;
createNode transform -n "line_02" -p "line_grp";
	rename -uid "C16F78DE-40DB-75D9-D219-F59FF5545AE3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_02Shape" -p "line_02";
	rename -uid "20C12C43-47CE-BD7E-C433-16BF890B4C43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 73 65
		9.9999999999999964 44 52
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp";
	rename -uid "15E73A22-4153-F23F-5D11-FEACE30456AC";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_03Shape" -p "line_03";
	rename -uid "D89D0ED0-45BE-B506-A042-7E85FDAC4796";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.9999999999999964 44 52
		10 15 57
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "3B6924D3-4E02-4BBE-8529-DF89426235C8";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_04Shape" -p "line_04";
	rename -uid "C7AE8754-40AE-18F1-6E2D-08BB2A26F283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 15 57
		9.9999999906678276 5.0000000000000053 60.000000271484296
		;
	setAttr ".adot" yes;
createNode transform -n "line_06" -p "line_grp";
	rename -uid "1D7D71A9-483D-B2DD-831D-87A98DB4941B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_06Shape" -p "line_06";
	rename -uid "449A1ECD-40A3-EEF2-8FF1-D78386BFE630";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.9999999999999964 44 52
		10.000000000000002 44.000000000000007 26
		;
	setAttr ".adot" yes;
createNode transform -n "line_32" -p "line_grp";
	rename -uid "4A14EBDC-4DE6-176F-A1ED-B9B334AAB82B";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "line_32";
	rename -uid "927F3E0C-4FF7-3E41-E42E-1BB834202002";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.9999999906678276 5.0000000000000053 60.000000271484296
		9.9999999999998366 5 67
		;
createNode transform -n "line_33" -p "line_grp";
	rename -uid "7678E840-4092-6517-28AE-B8B7CBDB2499";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "line_33";
	rename -uid "94E86608-4D88-36D4-25D9-17BA111A7AC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		9.9999999999998366 5 67
		9.9999999999997424 -3.5796099471722455e-29 69
		;
createNode transform -n "line_grp2" -p "module_grp";
	rename -uid "C6D2372E-4F2C-CB38-C731-FB8C453EE772";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "line_09" -p "line_grp2";
	rename -uid "12B5EECA-4700-6E36-6D0B-46A1FBA6A6E3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_09Shape" -p "line_09";
	rename -uid "7912F6DB-40DA-B298-DA97-C28BE625AA3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14 13 58.5
		14 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp2";
	rename -uid "35CC484A-4B7A-0137-13C8-2687E682DEA0";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_10Shape" -p "line_10";
	rename -uid "34B11C2D-4F93-1A00-502E-ABB243385057";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14 5 61
		14 4.9999999999999991 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "line_grp2";
	rename -uid "8C182682-4992-212B-A568-04910DD65116";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_11Shape" -p "line_11";
	rename -uid "F57BF79B-4E82-E64E-2934-73983499F59E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14 4.9999999999999991 67
		14.000000000000011 1.2412295168563614 68.368080573302663
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp2";
	rename -uid "F8293A4A-4F96-A160-175C-E89440AB8FC0";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_12Shape" -p "line_12";
	rename -uid "C683DF57-4ACA-81E2-DFE1-FD998148A4CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14.000000000000011 1.2412295168563614 68.368080573302663
		14.000000000000009 1.9252698035076992 70.247465814874474
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp2";
	rename -uid "AEC2033D-4EE7-FDF7-326D-B4B3F92D4918";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_13Shape" -p "line_13";
	rename -uid "17F682AB-4AA7-D9E7-371A-2199C412484C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12 13 58.5
		12 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp2";
	rename -uid "DF00E713-463B-BFC3-6F71-6BAA2BD215F2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_14Shape" -p "line_14";
	rename -uid "E319FBAD-4018-85CE-95B8-94A05A4AE31C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12 5 61
		12 4.9999999999999991 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp2";
	rename -uid "DBD2FD94-465D-046C-853D-75BB29068EE4";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_15Shape" -p "line_15";
	rename -uid "B01CC626-4E9D-E205-36CE-48970440154D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12 4.9999999999999991 67
		12 1.2412295168563614 68.368080573302663
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "line_grp2";
	rename -uid "25F2FB92-4A5D-7F1D-C981-42A9A51D6525";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_16Shape" -p "line_16";
	rename -uid "36712DE4-44D1-418D-10E8-C4851DD1429F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12 1.2412295168563614 68.368080573302663
		11.999999999999998 1.9252698035076992 70.247465814874474
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp2";
	rename -uid "ECBCE66B-4C4D-3063-6C29-E3A54E0DA1C7";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_17Shape" -p "line_17";
	rename -uid "9E36AE8D-48F5-8B19-D7D7-29AA9A1E7B54";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 13 58.5
		10 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp2";
	rename -uid "06FD931F-424A-341A-8421-9D99D19264CF";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_18Shape" -p "line_18";
	rename -uid "CDA57DCB-4724-6F66-D8AD-E695969D05B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 5 61
		10 4.9999999999999991 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp2";
	rename -uid "D5941986-45C6-EE1C-AADA-B2AF5DD7E04B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_19Shape" -p "line_19";
	rename -uid "01C7C751-45BD-3225-2D34-E1B748BF6376";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 4.9999999999999991 67
		10.000000000000002 1.2412295168563618 68.368080573302663
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp2";
	rename -uid "1635A9C6-4ED5-9951-06C7-69A5672509DA";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_20Shape" -p "line_20";
	rename -uid "9FDDC5FB-4AA4-C789-89C0-44AE5F7A9A82";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.000000000000002 1.2412295168563618 68.368080573302663
		10 1.9252698035076996 70.247465814874474
		;
	setAttr ".adot" yes;
createNode transform -n "line_21" -p "line_grp2";
	rename -uid "283CCF1F-4CF3-AACA-CC29-22BBE1404A29";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_21Shape" -p "line_21";
	rename -uid "2C4A1818-4BBC-C9B5-E5DA-39A2023082F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8 13 58.5
		8 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp2";
	rename -uid "1741C4FF-4877-C626-B3BF-EABE027B363D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_22Shape" -p "line_22";
	rename -uid "0ECB685E-460C-0ACB-8999-959276AE72C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8 5 61
		8 4.9999999999999991 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp2";
	rename -uid "B83A2369-48C3-5088-6D74-53A8E76CC8AB";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_23Shape" -p "line_23";
	rename -uid "E4528406-4CDB-6A80-68C2-F1923FA666F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8 4.9999999999999991 67
		8.0000000000000018 1.2412295168563614 68.368080573302663
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp2";
	rename -uid "C630D457-486B-F6C2-2D61-1AA1220F5040";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_24Shape" -p "line_24";
	rename -uid "4855D2EC-4BBB-CFA2-EC06-7396B284D472";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8.0000000000000018 1.2412295168563614 68.368080573302663
		8 1.9252698035076992 70.247465814874474
		;
	setAttr ".adot" yes;
createNode transform -n "line_25" -p "line_grp2";
	rename -uid "E7EE2217-4904-A7D9-41A0-E68E093D50DE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_25Shape" -p "line_25";
	rename -uid "92157964-40E0-CFE6-A8B7-4CACB1D17C5A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		6 13 58.5
		6 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "line_grp2";
	rename -uid "C3AD3037-40BF-25F3-A4DB-E990F76F0B07";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_26Shape" -p "line_26";
	rename -uid "8D082EED-4F9E-32A0-0880-1398A4C38C36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		6 5 61
		6.0000000000000036 4.9999999999999991 64.599999999999994
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "line_grp2";
	rename -uid "134F6CB7-4D1D-F727-8B5B-5591B54838EA";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_27Shape" -p "line_27";
	rename -uid "6064B1FB-4F33-57AB-ACC7-B98A2A66FDF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		6.0000000000000036 4.9999999999999991 64.599999999999994
		6.0000000000000036 4.9999999999999991 65.599999999999994
		;
	setAttr ".adot" yes;
createNode transform -n "line_28" -p "line_grp2";
	rename -uid "5FCEF035-4BD8-7A30-EFAE-FF9A49625B4F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_28Shape" -p "line_28";
	rename -uid "01E54B31-4810-AE5C-F6FE-2BBD6A761407";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		6 5 61
		8 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_29" -p "line_grp2";
	rename -uid "62FB5700-46D5-5D57-F713-4EAD5826BCE7";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_29Shape" -p "line_29";
	rename -uid "2D814EB6-4719-07B3-6323-BC81C82B66FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8 5 61
		10 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_30" -p "line_grp2";
	rename -uid "DDD08C9E-4A78-62DC-2695-1C915CA9D827";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_30Shape" -p "line_30";
	rename -uid "EC15C729-408C-0CD9-F867-D6924AEB241C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 5 61
		12 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_31" -p "line_grp2";
	rename -uid "20F32E23-48F6-AD06-6B7F-8081646D1CB5";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_31Shape" -p "line_31";
	rename -uid "E0B41A56-4D1B-1D23-37C0-96B2E1A796BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12 5 61
		14 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp3" -p "module_grp";
	rename -uid "44F7064C-43EF-54EF-6928-7493A8C4DC1E";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
createNode transform -n "line_07" -p "line_grp3";
	rename -uid "B38FFBF6-454B-A2FF-606E-27B543033110";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_07Shape" -p "line_07";
	rename -uid "B0A51DE0-4616-CA01-B1F8-62AB8B20C10B";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14.999999999999996 39.072699421278259 52.849534582538233
		15 15 57
		;
	setAttr ".adot" yes;
createNode transform -n "line_08" -p "line_grp3";
	rename -uid "1BF4928C-44E3-F27F-843F-939A0AB7C457";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_08Shape" -p "line_08";
	rename -uid "52C3E090-414B-83C1-61CC-D7A735AB5E28";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		5 15 57
		4.9999999999999964 39.072699421278259 52.849534582538233
		;
	setAttr ".adot" yes;
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 122.86470884909873 82.946328090211878 113.64300695564002 ;
	setAttr ".r" -type "double3" -16.538352728905533 -293.39999999997815 0 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 9.0523144535836764e-12 -9.5923269327613525e-13 -1.4551915228366852e-11 ;
	setAttr ".rpt" -type "double3" -9.0526132061662243e-12 -3.9591234438924834e-12 -1.892917819089332e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 148.99460456026611;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 9.9999999999999929 45.120176683148358 52.095222237046443 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C26C709E-427B-9FAF-006E-479957AA5F62";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.3279848667366 -0.50203763068761464 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "topShape" -p "top";
	rename -uid "A557BBCA-4E3F-918D-EA2B-D0824D7F4CBC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.3279848667366;
	setAttr ".ow" 1.6569213277634005;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 9.1593399531575415e-16 -0.50203763068761498 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3AC53A90-4787-A00A-10EE-5BB41D967471";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.52536408132029599 0 1000.1014067882137 ;
	setAttr -cb on ".ro";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EBE1F472-4B19-95B5-7032-02B7F660A422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 959.13597945836193;
	setAttr ".ow" 10.526315789473689;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.52536408132029599 0 40.965427329851778 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "998302DF-4A25-D2FE-09B0-24A5C61EAE93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1004.5203517867659 5.2628564541636784 13.71586294504843 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35324118-40AF-2D58-3D90-F6B12F0BE94B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 989.5203517867659;
	setAttr ".ow" 11.651386613884911;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 15 5.3991299818114555 13.443315889752878 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "upr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "palm_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "digit_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "tip_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "radius_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_inPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe04_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe02_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe04_2_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6DC47C86-43B6-04DB-09D0-2FAA28DEB3FF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "938672A5-4778-A399-AA0A-AAA2C837ED8D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "81A671BF-41BE-EDC9-ED25-F5AE986C42DC";
createNode displayLayerManager -n "layerManager";
	rename -uid "9458C409-4384-10D4-0B15-97A13289076D";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DEA4578D-4906-F3DB-C5ED-619B7239ACDB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "47ABDCF5-4400-C307-437A-E4AF35DAB19B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "93E347DE-4858-8D79-1C7B-559212A19E13";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 680\n            -height 696\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 680\n            -height 696\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 680\\n    -height 696\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 680\\n    -height 696\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 10 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0A4A8BAB-41AE-7B3C-EC57-DAA3EA3416C1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode script -n "RGN";
	rename -uid "F4DBEBF9-4EEC-13A8-838A-2F96B4BC09CC";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -k true -sn "master_guide" -ln "master_guide" -at "message";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "LegQd";
createNode ikSpringSolver -s -n "ikSpringSolver";
	rename -uid "FAE7F5DB-4B62-65C0-B03F-05843F25B4CD";
createNode nodeGraphEditorInfo -n "lf_leg_guide_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5E41C72C-4C69-293C-318F-639C1A7470B6";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 1095.2380517172453 44.047617297323995 ;
createNode groupId -n "groupId4037";
	rename -uid "5C1DE2B4-461D-5ADC-0B5A-218E194E9069";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4044";
	rename -uid "32F1B97B-43C8-1C03-2AF2-42AB63033C7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4051";
	rename -uid "85C0C984-4E92-FA5D-09C7-298FB5DEB330";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4058";
	rename -uid "CA0ACB2E-438E-A44C-AB0D-AB8B2B9517F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4065";
	rename -uid "7CC59408-49D7-3750-C9EF-22AC2C0E817F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4072";
	rename -uid "D1D4C297-4514-8EE2-9A41-A690D7BC5FF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4086";
	rename -uid "BA794686-4C22-5AAF-D09E-778248E62C68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4093";
	rename -uid "E6642010-4CA5-B686-2595-C68DA6D4E76F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4100";
	rename -uid "9512033D-448C-1210-E0E3-3ABBB57908D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4107";
	rename -uid "9606F48B-44EC-F25E-54D7-F5AE96DDFCAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4121";
	rename -uid "DAB504BA-4C45-187A-068D-2A9B249CA31B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4128";
	rename -uid "5D8147F8-4EBB-0F89-BD1A-86B5FA18542D";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "DCM_1";
	rename -uid "950BD334-4606-8DA6-90E8-75BC5C827661";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "20326255-419E-02F5-82FA-429D556532B4";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "10C86382-4B89-EAF5-1BA8-588A5322F8BB";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "FBFE1AC0-4A05-15A8-0AA8-2EA7EE24B403";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "993F568A-4DE6-D067-BF9A-608F75C224D5";
createNode decomposeMatrix -n "DCM_7";
	rename -uid "B81E8A19-431A-64B3-DEC5-C58C468AD23B";
createNode nodeGraphEditorInfo -n "lf_toes_lf_leg_guide_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F08B6309-46FD-5ED2-EDBE-54B34FE18CDE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 1095.2380517172453 44.047617297323995 ;
createNode groupId -n "lf_toes_groupId4037";
	rename -uid "14E50360-4433-931B-0C04-A5AB6D9383DE";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4044";
	rename -uid "9DF95F52-422F-4704-1564-B89EECF07F62";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4051";
	rename -uid "0D58EA8C-4DD9-4A19-0774-4EAE85934A52";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4058";
	rename -uid "DC17F00F-40A5-9429-367F-3A96DB33D9EB";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4065";
	rename -uid "925A1B75-49EF-31AE-C790-D9AFFD0BB701";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4072";
	rename -uid "AAE14BF1-4542-AE34-6F3A-4ABD32506430";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4086";
	rename -uid "1EBFE5F5-4439-C644-4702-62BBE2FE5BA3";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4093";
	rename -uid "05618D71-4846-BAF6-B149-0EA9B8AA77D9";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4100";
	rename -uid "7D08D613-49EB-E701-8499-8DB010B66A88";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4107";
	rename -uid "EDAE4779-4B44-7C02-F920-5D85DBBFF186";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4121";
	rename -uid "EC5436F5-4A1E-1A6C-CED6-B3B345F0E278";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4128";
	rename -uid "3D61C2B7-4265-6823-EDD7-42B96667DCDE";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B5690400-4026-D517-3379-648E268F884A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "FD376379-4555-5BB5-ADC3-DBB50DB8A6AE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "lf_toes_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A32A8B32-4DE6-4086-621A-9C87887035C3";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -4538952.8537142342 -1211.7321493162331 ;
	setAttr ".tgi[0].vh" -type "double2" -4532457.8801846411 2561.732095672055 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "3B3EB99C-4025-3D97-F88E-FC80725EC6DB";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "DCM_8";
	rename -uid "26F3A6AB-4464-0ACB-D3B7-ECBEB022ACDF";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "75B1242A-47F3-4971-84DE-5986B4C4DB01";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "B6D3AE75-4F48-E8FE-B631-2EB17DC85E83";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "E5D64B72-4E33-A90A-0271-9F871F6E0F16";
createNode decomposeMatrix -n "DCM_12";
	rename -uid "0B17AB3E-4493-7527-4D6C-64ABCADD8A59";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "23BC27A6-4946-B6F7-3DC8-3E82F8FCB0C9";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "14B06D4D-4301-B24F-825F-CBA972909806";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "6AE78897-4D48-AF64-7792-0A81AABAC927";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "52F0C7DC-4ABD-85F4-E56D-61B5A7014EC9";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "8EA0DCCA-4293-4D9E-7F9E-EFA80A2DC4CA";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "AC86E896-49C0-C768-7F4D-6CB0340D516A";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "30AA19AF-412B-3099-6575-BDA63A47743E";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "BC39B561-49CC-3596-FBD7-6A9517FC17FD";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "839EBE3A-4F21-AEBB-D8A9-1095E099B4C0";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "3BC72BD9-45C7-7EB1-5A28-82A74E855572";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "EEA91088-4997-0BD0-7AE2-108456DF6511";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "F2BEDCEE-462F-BF2A-AA9E-08AE3FFA3114";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "B96208EC-4638-308E-B774-D8BE4237AB29";
createNode decomposeMatrix -n "DCM_26";
	rename -uid "1779A60F-4447-FFBA-BD74-F88254E2289E";
createNode decomposeMatrix -n "DCM_27";
	rename -uid "A5CD3C68-4271-4889-7D85-C78058CAB8FD";
createNode decomposeMatrix -n "DCM_28";
	rename -uid "75AEE7E0-48A9-33E9-FC6E-E69268907514";
createNode decomposeMatrix -n "DCM_29";
	rename -uid "4513375E-4AD3-ADEC-5CC6-2CA672FDBF84";
createNode decomposeMatrix -n "DCM_30";
	rename -uid "FCBBE56D-42FD-22D1-D8A6-D3A12A19DE67";
createNode decomposeMatrix -n "DCM_31";
	rename -uid "B0F8E913-4ABE-AFC1-3B3E-498F64D6C251";
createNode decomposeMatrix -n "DCM_32";
	rename -uid "DDD4E2DD-4141-490C-EA9D-3AA0F5399A4D";
createNode decomposeMatrix -n "DCM_33";
	rename -uid "2099B391-4A97-AC77-53B0-848431B58FF6";
createNode decomposeMatrix -n "DCM_34";
	rename -uid "06102E3B-493A-83B3-02E1-3C8934F18D92";
createNode decomposeMatrix -n "DCM_35";
	rename -uid "1F5F2F31-44DD-1D7F-4B50-B69E7F9E05A1";
createNode HIKCharacterNode -n "Horse";
	rename -uid "6BAA0856-4535-1C6B-156A-A289930A5355";
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".HipsTy" 141.835342;
	setAttr ".HipsRx" 7.03154;
	setAttr ".HipsRy" 2.7980699999999999e-07;
	setAttr ".HipsRz" 3.0561999999999999e-08;
	setAttr ".LeftUpLegTx" 15.406674;
	setAttr ".LeftUpLegTy" 120.121769;
	setAttr ".LeftUpLegTz" 19.461216;
	setAttr ".LeftUpLegRx" -0.43154;
	setAttr ".LeftUpLegRy" -2.04536e-07;
	setAttr ".LeftUpLegRz" -180;
	setAttr ".LeftLegTx" 15.406674;
	setAttr ".LeftLegTy" 90.863575;
	setAttr ".LeftLegTz" 19.240843;
	setAttr ".LeftLegRx" -0.431538;
	setAttr ".LeftLegRy" -9.9113400000000004e-08;
	setAttr ".LeftLegRz" 180;
	setAttr ".LeftFootTx" 15.406674;
	setAttr ".LeftFootTy" 40.364729;
	setAttr ".LeftFootTz" 18.86049;
	setAttr ".LeftFootRx" 89.56846;
	setAttr ".LeftFootRy" -2.33654e-08;
	setAttr ".LeftFootRz" 180;
	setAttr ".RightUpLegTx" -15.4067;
	setAttr ".RightUpLegTy" 120.121765;
	setAttr ".RightUpLegTz" 19.461243;
	setAttr ".RightUpLegRx" 179.56846;
	setAttr ".RightUpLegRy" -2.1519400000000004e-07;
	setAttr ".RightUpLegRz" -180;
	setAttr ".RightLegTx" -15.406649;
	setAttr ".RightLegTy" 90.863571;
	setAttr ".RightLegTz" 19.240915;
	setAttr ".RightLegRx" 179.56846200000004;
	setAttr ".RightLegRy" 1.6312800000000001e-08;
	setAttr ".RightLegRz" -180;
	setAttr ".RightFootTx" -15.406636;
	setAttr ".RightFootTy" 40.364725;
	setAttr ".RightFootTz" 18.860601;
	setAttr ".RightFootRx" -90.43154;
	setAttr ".RightFootRy" -7.6270500000000005e-09;
	setAttr ".RightFootRz" -180;
	setAttr ".SpineTx" 1.2135400000000001e-09;
	setAttr ".SpineTy" 159.436317;
	setAttr ".SpineTz" 2.170964;
	setAttr ".SpineRx" 4.863875;
	setAttr ".SpineRy" 2.7980699999999999e-07;
	setAttr ".SpineRz" 3.0561999999999999e-08;
	setAttr ".LeftArmTx" -70.295763;
	setAttr ".LeftArmTy" 248.018485;
	setAttr ".LeftArmTz" -32.582663;
	setAttr ".LeftArmRx" -31.130686;
	setAttr ".LeftArmRy" -1.252917;
	setAttr ".LeftArmRz" -90.000418;
	setAttr ".LeftForeArmTx" -48.090721;
	setAttr ".LeftForeArmTy" 247.725078;
	setAttr ".LeftForeArmTz" -45.990621;
	setAttr ".LeftForeArmRx" -90.43154;
	setAttr ".LeftForeArmRy" -90;
	setAttr ".LeftHandTx" -8.949669;
	setAttr ".LeftHandTy" 247.43027;
	setAttr ".LeftHandTz" -45.990621;
	setAttr ".LeftHandRx" -90.43154;
	setAttr ".LeftHandRy" -90;
	setAttr ".RightArmTx" 70.296445;
	setAttr ".RightArmTy" 248.018669;
	setAttr ".RightArmTz" -32.582513;
	setAttr ".RightArmRx" 148.869457;
	setAttr ".RightArmRy" 1.253091;
	setAttr ".RightArmRz" 89.999972;
	setAttr ".RightForeArmTx" 48.091336;
	setAttr ".RightForeArmTy" 247.725463;
	setAttr ".RightForeArmTz" -45.990859;
	setAttr ".RightForeArmRx" 89.56846;
	setAttr ".RightForeArmRy" 90;
	setAttr ".RightHandTx" 8.950284;
	setAttr ".RightHandTy" 247.430666;
	setAttr ".RightHandTz" -45.990831;
	setAttr ".RightHandRx" 89.56846;
	setAttr ".RightHandRy" 90;
	setAttr ".HeadTx" -6.67179e-05;
	setAttr ".HeadTy" 286.546331;
	setAttr ".HeadTz" -45.442415;
	setAttr ".HeadRx" 53.736918;
	setAttr ".HeadRy" -6.2404999999999998e-06;
	setAttr ".HeadRz" 6.4964300000000018e-05;
	setAttr ".LeftShoulderTx" -61.378043;
	setAttr ".LeftShoulderTy" 224.778516;
	setAttr ".LeftShoulderTz" 42.101153;
	setAttr ".LeftShoulderRx" -89.288039;
	setAttr ".LeftShoulderRy" 31.765451;
	setAttr ".LeftShoulderRz" 0.374741;
	setAttr ".RightShoulderTx" 61.378122;
	setAttr ".RightShoulderTy" 224.778512;
	setAttr ".RightShoulderTz" 42.101268;
	setAttr ".RightShoulderRx" 90.71176;
	setAttr ".RightShoulderRy" -31.7659;
	setAttr ".RightShoulderRz" -0.374778;
	setAttr ".NeckTx" -5.5414000000000006e-07;
	setAttr ".NeckTy" 228.045337;
	setAttr ".NeckTz" 7.291635;
	setAttr ".NeckRx" 3.2631920000000005;
	setAttr ".NeckRy" 6.4964300000000018e-05;
	setAttr ".NeckRz" 6.2404999999999998e-06;
	setAttr ".Spine1Tx" -8.1976499999999991e-10;
	setAttr ".Spine1Ty" 176.691033;
	setAttr ".Spine1Tz" 3.639256;
	setAttr ".Spine1Rx" 2.696467;
	setAttr ".Spine1Ry" 4.3694499999999993e-05;
	setAttr ".Spine1Rz" 3.7249399999999999e-06;
	setAttr ".Spine2Tx" -5.0220799999999994e-07;
	setAttr ".Spine2Ty" 193.923404;
	setAttr ".Spine2Tz" 4.450849;
	setAttr ".Spine2Rx" 2.80741;
	setAttr ".Spine2Ry" 4.3694499999999993e-05;
	setAttr ".Spine2Rz" 3.7249399999999999e-06;
	setAttr ".Spine3Tx" -9.7879500000000013e-07;
	setAttr ".Spine3Ty" 211.181292;
	setAttr ".Spine3Tz" 5.297138;
	setAttr ".Spine3Rx" 6.744993;
	setAttr ".Spine3Ry" 4.3694499999999993e-05;
	setAttr ".Spine3Rz" 3.7249399999999999e-06;
	setAttr ".Neck1Tx" -1.34361e-06;
	setAttr ".Neck1Ty" 245.877864;
	setAttr ".Neck1Tz" 8.308358;
	setAttr ".Neck1Rx" -24.896421;
	setAttr ".Neck1Ry" 6.4964300000000018e-05;
	setAttr ".Neck1Rz" 6.2404999999999998e-06;
	setAttr ".Neck2Tx" -8.1349000000000007e-06;
	setAttr ".Neck2Ty" 256.570408;
	setAttr ".Neck2Tz" 3.345856;
	setAttr ".Neck2Rx" -65.077203;
	setAttr ".Neck2Ry" 6.4964300000000018e-05;
	setAttr ".Neck2Rz" 6.2404999999999998e-06;
	setAttr ".Neck3Tx" -1.6991999999999999e-05;
	setAttr ".Neck3Ty" 260.045121;
	setAttr ".Neck3Tz" -4.131979;
	setAttr ".Neck3Rx" -68.759242;
	setAttr ".Neck3Ry" 6.4964300000000018e-05;
	setAttr ".Neck3Rz" 6.2404999999999998e-06;
	setAttr ".Neck4Tx" -2.8994799999999999e-05;
	setAttr ".Neck4Ty" 264.011704;
	setAttr ".Neck4Tz" -14.336902;
	setAttr ".Neck4Rx" -69.817002;
	setAttr ".Neck4Ry" 6.4964300000000018e-05;
	setAttr ".Neck4Rz" 6.2404999999999998e-06;
	setAttr ".Neck5Tx" -4.0484200000000001e-05;
	setAttr ".Neck5Ty" 267.609518;
	setAttr ".Neck5Tz" -24.124436;
	setAttr ".Neck5Rx" -64.938015;
	setAttr ".Neck5Ry" 6.4964300000000018e-05;
	setAttr ".Neck5Rz" 6.2404999999999998e-06;
	setAttr ".Neck6Tx" -5.3876899999999999e-05;
	setAttr ".Neck6Ty" 272.895572;
	setAttr ".Neck6Tz" -35.428471;
	setAttr ".Neck6Rx" -36.263082;
	setAttr ".Neck6Ry" 6.4964300000000018e-05;
	setAttr ".Neck6Rz" 6.2404999999999998e-06;
	setAttr ".LeftHandIndex1Tx" 22.993734;
	setAttr ".LeftHandIndex1Ty" 247.189674;
	setAttr ".LeftHandIndex1Tz" -45.990621;
	setAttr ".LeftHandIndex1Rx" -90.43154;
	setAttr ".LeftHandIndex1Ry" -90;
	setAttr ".LeftHandIndex2Tx" 32.789779;
	setAttr ".LeftHandIndex2Ty" 247.115891;
	setAttr ".LeftHandIndex2Tz" -45.990621;
	setAttr ".LeftHandIndex2Rx" -90.43154;
	setAttr ".LeftHandIndex2Ry" -90;
	setAttr ".RightHandIndex1Tx" -22.99312;
	setAttr ".RightHandIndex1Ty" 247.190058;
	setAttr ".RightHandIndex1Tz" -45.990877;
	setAttr ".RightHandIndex1Rx" 89.56846;
	setAttr ".RightHandIndex1Ry" 90;
	setAttr ".RightHandIndex2Tx" -32.789063;
	setAttr ".RightHandIndex2Ty" 247.116362;
	setAttr ".RightHandIndex2Tz" -45.990836;
	setAttr ".RightHandIndex2Rx" 89.56846;
	setAttr ".RightHandIndex2Ry" 90;
	setAttr ".LeftFootIndex1Tx" 15.406674;
	setAttr ".LeftFootIndex1Ty" 40.1381;
	setAttr ".LeftFootIndex1Tz" 48.949494;
	setAttr ".LeftFootIndex1Rx" 89.56846;
	setAttr ".LeftFootIndex1Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex1Rz" 180;
	setAttr ".LeftFootIndex2Tx" 15.406674;
	setAttr ".LeftFootIndex2Ty" 40.053015;
	setAttr ".LeftFootIndex2Tz" 60.246103;
	setAttr ".LeftFootIndex2Rx" 89.56846;
	setAttr ".LeftFootIndex2Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex2Rz" 180;
	setAttr ".RightFootIndex1Tx" -15.406682;
	setAttr ".RightFootIndex1Ty" 40.138104;
	setAttr ".RightFootIndex1Tz" 48.949605;
	setAttr ".RightFootIndex1Rx" -90.43154;
	setAttr ".RightFootIndex1Ry" -2.71362e-08;
	setAttr ".RightFootIndex1Rz" 180;
	setAttr ".RightFootIndex2Tx" -15.40671;
	setAttr ".RightFootIndex2Ty" 40.053154;
	setAttr ".RightFootIndex2Tz" 60.245758;
	setAttr ".RightFootIndex2Rx" -90.43154;
	setAttr ".RightFootIndex2Ry" -2.71362e-08;
	setAttr ".RightFootIndex2Rz" 180;
createNode HIKProperty2State -n "HIKproperties1";
	rename -uid "192D9411-432C-93CF-077A-B9B0F357259F";
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".ScaleCompensation" 0;
	setAttr ".FootBottomToAnkle" 40.364727;
	setAttr ".FootBackToAnkle" 6.646608;
	setAttr ".FootMiddleToAnkle" 13.293217;
	setAttr ".FootFrontToMiddle" 6.646608;
	setAttr ".FootInToAnkle" 6.646608;
	setAttr ".FootOutToAnkle" 6.646608;
	setAttr ".HandBottomToWrist" 3.190372;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 8.773523;
	setAttr ".HandFrontToMiddle" 8.773523;
	setAttr ".HandInToWrist" 8.773523;
	setAttr ".HandOutToWrist" 8.773523;
	setAttr ".HandContactType" 3;
	setAttr ".HandFingerContactMode" 0;
	setAttr ".FootContactType" 3;
	setAttr ".FootFingerContactMode" 0;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".CtrlChestPullLeftHand" 0;
	setAttr ".CtrlChestPullRightHand" 0;
	setAttr ".CtrlEnforceGravity" 0.6;
	setAttr ".FloorPivot" 2;
	setAttr ".Posture" 1;
	setAttr ".HandFloorPivot" 2;
	setAttr ".LeftHandIndexTip" 3.69846;
	setAttr ".RightHandIndexTip" 3.69846;
	setAttr ".LeftFootIndexTip" 3.69846;
	setAttr ".RightFootIndexTip" 3.69846;
	setAttr ".ExtraCollarRatio" 0.5;
	setAttr ".LeftUpLegRollEx" 0.4;
	setAttr ".LeftLegRollEx" 0.8;
	setAttr ".RightUpLegRollEx" 0.4;
	setAttr ".RightLegRollEx" 0.8;
	setAttr ".LeftArmRollEx" 0.4;
	setAttr ".LeftForeArmRollEx" 0.4;
	setAttr ".RightArmRollEx" 0.4;
	setAttr ".RightForeArmRollEx" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKSolverNode -n "HIKSolverNode1";
	rename -uid "30FE4785-4041-FFB9-3540-CEA0BFB89555";
	setAttr ".ihi" 0;
	setAttr ".InputStance" yes;
createNode HIKState2SK -n "HIKState2SK1";
	rename -uid "4C9F59A8-44CD-A576-E636-EAA931AE4993";
	setAttr ".ihi" 0;
createNode HIKCharacterNode -n "camera_Horse";
	rename -uid "082A9F7E-4D69-2631-F57A-23BB56BB9D92";
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".HipsTy" 141.835342;
	setAttr ".HipsRx" 7.03154;
	setAttr ".HipsRy" 2.7980699999999999e-07;
	setAttr ".HipsRz" 3.0561999999999999e-08;
	setAttr ".LeftUpLegTx" 15.406674;
	setAttr ".LeftUpLegTy" 120.121769;
	setAttr ".LeftUpLegTz" 19.461216;
	setAttr ".LeftUpLegRx" -0.43154;
	setAttr ".LeftUpLegRy" -2.04536e-07;
	setAttr ".LeftUpLegRz" -180;
	setAttr ".LeftLegTx" 15.406674;
	setAttr ".LeftLegTy" 90.863575;
	setAttr ".LeftLegTz" 19.240843;
	setAttr ".LeftLegRx" -0.431538;
	setAttr ".LeftLegRy" -9.9113400000000004e-08;
	setAttr ".LeftLegRz" 180;
	setAttr ".LeftFootTx" 15.406674;
	setAttr ".LeftFootTy" 40.364729;
	setAttr ".LeftFootTz" 18.86049;
	setAttr ".LeftFootRx" 89.56846;
	setAttr ".LeftFootRy" -2.33654e-08;
	setAttr ".LeftFootRz" 180;
	setAttr ".RightUpLegTx" -15.4067;
	setAttr ".RightUpLegTy" 120.121765;
	setAttr ".RightUpLegTz" 19.461243;
	setAttr ".RightUpLegRx" 179.56846;
	setAttr ".RightUpLegRy" -2.1519400000000004e-07;
	setAttr ".RightUpLegRz" -180;
	setAttr ".RightLegTx" -15.406649;
	setAttr ".RightLegTy" 90.863571;
	setAttr ".RightLegTz" 19.240915;
	setAttr ".RightLegRx" 179.56846200000004;
	setAttr ".RightLegRy" 1.6312800000000001e-08;
	setAttr ".RightLegRz" -180;
	setAttr ".RightFootTx" -15.406636;
	setAttr ".RightFootTy" 40.364725;
	setAttr ".RightFootTz" 18.860601;
	setAttr ".RightFootRx" -90.43154;
	setAttr ".RightFootRy" -7.6270500000000005e-09;
	setAttr ".RightFootRz" -180;
	setAttr ".SpineTx" 1.2135400000000001e-09;
	setAttr ".SpineTy" 159.436317;
	setAttr ".SpineTz" 2.170964;
	setAttr ".SpineRx" 4.863875;
	setAttr ".SpineRy" 2.7980699999999999e-07;
	setAttr ".SpineRz" 3.0561999999999999e-08;
	setAttr ".LeftArmTx" -70.295763;
	setAttr ".LeftArmTy" 248.018485;
	setAttr ".LeftArmTz" -32.582663;
	setAttr ".LeftArmRx" -31.130686;
	setAttr ".LeftArmRy" -1.252917;
	setAttr ".LeftArmRz" -90.000418;
	setAttr ".LeftForeArmTx" -48.090721;
	setAttr ".LeftForeArmTy" 247.725078;
	setAttr ".LeftForeArmTz" -45.990621;
	setAttr ".LeftForeArmRx" -90.43154;
	setAttr ".LeftForeArmRy" -90;
	setAttr ".LeftHandTx" -8.949669;
	setAttr ".LeftHandTy" 247.43027;
	setAttr ".LeftHandTz" -45.990621;
	setAttr ".LeftHandRx" -90.43154;
	setAttr ".LeftHandRy" -90;
	setAttr ".RightArmTx" 70.296445;
	setAttr ".RightArmTy" 248.018669;
	setAttr ".RightArmTz" -32.582513;
	setAttr ".RightArmRx" 148.869457;
	setAttr ".RightArmRy" 1.253091;
	setAttr ".RightArmRz" 89.999972;
	setAttr ".RightForeArmTx" 48.091336;
	setAttr ".RightForeArmTy" 247.725463;
	setAttr ".RightForeArmTz" -45.990859;
	setAttr ".RightForeArmRx" 89.56846;
	setAttr ".RightForeArmRy" 90;
	setAttr ".RightHandTx" 8.950284;
	setAttr ".RightHandTy" 247.430666;
	setAttr ".RightHandTz" -45.990831;
	setAttr ".RightHandRx" 89.56846;
	setAttr ".RightHandRy" 90;
	setAttr ".HeadTx" -6.67179e-05;
	setAttr ".HeadTy" 286.546331;
	setAttr ".HeadTz" -45.442415;
	setAttr ".HeadRx" 53.736918;
	setAttr ".HeadRy" -6.2404999999999998e-06;
	setAttr ".HeadRz" 6.4964300000000018e-05;
	setAttr ".LeftShoulderTx" -61.378043;
	setAttr ".LeftShoulderTy" 224.778516;
	setAttr ".LeftShoulderTz" 42.101153;
	setAttr ".LeftShoulderRx" -89.288039;
	setAttr ".LeftShoulderRy" 31.765451;
	setAttr ".LeftShoulderRz" 0.374741;
	setAttr ".RightShoulderTx" 61.378122;
	setAttr ".RightShoulderTy" 224.778512;
	setAttr ".RightShoulderTz" 42.101268;
	setAttr ".RightShoulderRx" 90.71176;
	setAttr ".RightShoulderRy" -31.7659;
	setAttr ".RightShoulderRz" -0.374778;
	setAttr ".NeckTx" -5.5414000000000006e-07;
	setAttr ".NeckTy" 228.045337;
	setAttr ".NeckTz" 7.291635;
	setAttr ".NeckRx" 3.2631920000000005;
	setAttr ".NeckRy" 6.4964300000000018e-05;
	setAttr ".NeckRz" 6.2404999999999998e-06;
	setAttr ".Spine1Tx" -8.1976499999999991e-10;
	setAttr ".Spine1Ty" 176.691033;
	setAttr ".Spine1Tz" 3.639256;
	setAttr ".Spine1Rx" 2.696467;
	setAttr ".Spine1Ry" 4.3694499999999993e-05;
	setAttr ".Spine1Rz" 3.7249399999999999e-06;
	setAttr ".Spine2Tx" -5.0220799999999994e-07;
	setAttr ".Spine2Ty" 193.923404;
	setAttr ".Spine2Tz" 4.450849;
	setAttr ".Spine2Rx" 2.80741;
	setAttr ".Spine2Ry" 4.3694499999999993e-05;
	setAttr ".Spine2Rz" 3.7249399999999999e-06;
	setAttr ".Spine3Tx" -9.7879500000000013e-07;
	setAttr ".Spine3Ty" 211.181292;
	setAttr ".Spine3Tz" 5.297138;
	setAttr ".Spine3Rx" 6.744993;
	setAttr ".Spine3Ry" 4.3694499999999993e-05;
	setAttr ".Spine3Rz" 3.7249399999999999e-06;
	setAttr ".Neck1Tx" -1.34361e-06;
	setAttr ".Neck1Ty" 245.877864;
	setAttr ".Neck1Tz" 8.308358;
	setAttr ".Neck1Rx" -24.896421;
	setAttr ".Neck1Ry" 6.4964300000000018e-05;
	setAttr ".Neck1Rz" 6.2404999999999998e-06;
	setAttr ".Neck2Tx" -8.1349000000000007e-06;
	setAttr ".Neck2Ty" 256.570408;
	setAttr ".Neck2Tz" 3.345856;
	setAttr ".Neck2Rx" -65.077203;
	setAttr ".Neck2Ry" 6.4964300000000018e-05;
	setAttr ".Neck2Rz" 6.2404999999999998e-06;
	setAttr ".Neck3Tx" -1.6991999999999999e-05;
	setAttr ".Neck3Ty" 260.045121;
	setAttr ".Neck3Tz" -4.131979;
	setAttr ".Neck3Rx" -68.759242;
	setAttr ".Neck3Ry" 6.4964300000000018e-05;
	setAttr ".Neck3Rz" 6.2404999999999998e-06;
	setAttr ".Neck4Tx" -2.8994799999999999e-05;
	setAttr ".Neck4Ty" 264.011704;
	setAttr ".Neck4Tz" -14.336902;
	setAttr ".Neck4Rx" -69.817002;
	setAttr ".Neck4Ry" 6.4964300000000018e-05;
	setAttr ".Neck4Rz" 6.2404999999999998e-06;
	setAttr ".Neck5Tx" -4.0484200000000001e-05;
	setAttr ".Neck5Ty" 267.609518;
	setAttr ".Neck5Tz" -24.124436;
	setAttr ".Neck5Rx" -64.938015;
	setAttr ".Neck5Ry" 6.4964300000000018e-05;
	setAttr ".Neck5Rz" 6.2404999999999998e-06;
	setAttr ".Neck6Tx" -5.3876899999999999e-05;
	setAttr ".Neck6Ty" 272.895572;
	setAttr ".Neck6Tz" -35.428471;
	setAttr ".Neck6Rx" -36.263082;
	setAttr ".Neck6Ry" 6.4964300000000018e-05;
	setAttr ".Neck6Rz" 6.2404999999999998e-06;
	setAttr ".LeftHandIndex1Tx" 22.993734;
	setAttr ".LeftHandIndex1Ty" 247.189674;
	setAttr ".LeftHandIndex1Tz" -45.990621;
	setAttr ".LeftHandIndex1Rx" -90.43154;
	setAttr ".LeftHandIndex1Ry" -90;
	setAttr ".LeftHandIndex2Tx" 32.789779;
	setAttr ".LeftHandIndex2Ty" 247.115891;
	setAttr ".LeftHandIndex2Tz" -45.990621;
	setAttr ".LeftHandIndex2Rx" -90.43154;
	setAttr ".LeftHandIndex2Ry" -90;
	setAttr ".RightHandIndex1Tx" -22.99312;
	setAttr ".RightHandIndex1Ty" 247.190058;
	setAttr ".RightHandIndex1Tz" -45.990877;
	setAttr ".RightHandIndex1Rx" 89.56846;
	setAttr ".RightHandIndex1Ry" 90;
	setAttr ".RightHandIndex2Tx" -32.789063;
	setAttr ".RightHandIndex2Ty" 247.116362;
	setAttr ".RightHandIndex2Tz" -45.990836;
	setAttr ".RightHandIndex2Rx" 89.56846;
	setAttr ".RightHandIndex2Ry" 90;
	setAttr ".LeftFootIndex1Tx" 15.406674;
	setAttr ".LeftFootIndex1Ty" 40.1381;
	setAttr ".LeftFootIndex1Tz" 48.949494;
	setAttr ".LeftFootIndex1Rx" 89.56846;
	setAttr ".LeftFootIndex1Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex1Rz" 180;
	setAttr ".LeftFootIndex2Tx" 15.406674;
	setAttr ".LeftFootIndex2Ty" 40.053015;
	setAttr ".LeftFootIndex2Tz" 60.246103;
	setAttr ".LeftFootIndex2Rx" 89.56846;
	setAttr ".LeftFootIndex2Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex2Rz" 180;
	setAttr ".RightFootIndex1Tx" -15.406682;
	setAttr ".RightFootIndex1Ty" 40.138104;
	setAttr ".RightFootIndex1Tz" 48.949605;
	setAttr ".RightFootIndex1Rx" -90.43154;
	setAttr ".RightFootIndex1Ry" -2.71362e-08;
	setAttr ".RightFootIndex1Rz" 180;
	setAttr ".RightFootIndex2Tx" -15.40671;
	setAttr ".RightFootIndex2Ty" 40.053154;
	setAttr ".RightFootIndex2Tz" 60.245758;
	setAttr ".RightFootIndex2Rx" -90.43154;
	setAttr ".RightFootIndex2Ry" -2.71362e-08;
	setAttr ".RightFootIndex2Rz" 180;
createNode HIKProperty2State -n "camera_HIKproperties1";
	rename -uid "41127BB7-405F-B96E-CDF0-20B39BB1644E";
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".ScaleCompensation" 0;
	setAttr ".FootBottomToAnkle" 40.364727;
	setAttr ".FootBackToAnkle" 6.646608;
	setAttr ".FootMiddleToAnkle" 13.293217;
	setAttr ".FootFrontToMiddle" 6.646608;
	setAttr ".FootInToAnkle" 6.646608;
	setAttr ".FootOutToAnkle" 6.646608;
	setAttr ".HandBottomToWrist" 3.190372;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 8.773523;
	setAttr ".HandFrontToMiddle" 8.773523;
	setAttr ".HandInToWrist" 8.773523;
	setAttr ".HandOutToWrist" 8.773523;
	setAttr ".HandContactType" 3;
	setAttr ".HandFingerContactMode" 0;
	setAttr ".FootContactType" 3;
	setAttr ".FootFingerContactMode" 0;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".CtrlChestPullLeftHand" 0;
	setAttr ".CtrlChestPullRightHand" 0;
	setAttr ".CtrlEnforceGravity" 0.6;
	setAttr ".FloorPivot" 2;
	setAttr ".Posture" 1;
	setAttr ".HandFloorPivot" 2;
	setAttr ".LeftHandIndexTip" 3.69846;
	setAttr ".RightHandIndexTip" 3.69846;
	setAttr ".LeftFootIndexTip" 3.69846;
	setAttr ".RightFootIndexTip" 3.69846;
	setAttr ".ExtraCollarRatio" 0.5;
	setAttr ".LeftUpLegRollEx" 0.4;
	setAttr ".LeftLegRollEx" 0.8;
	setAttr ".RightUpLegRollEx" 0.4;
	setAttr ".RightLegRollEx" 0.8;
	setAttr ".LeftArmRollEx" 0.4;
	setAttr ".LeftForeArmRollEx" 0.4;
	setAttr ".RightArmRollEx" 0.4;
	setAttr ".RightForeArmRollEx" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKSolverNode -n "camera_HIKSolverNode1";
	rename -uid "04ACF037-4B98-DC6D-16C2-D2A60FB29837";
	setAttr ".ihi" 0;
	setAttr ".InputStance" yes;
createNode HIKState2SK -n "camera_HIKState2SK1";
	rename -uid "F37CDB8D-491F-7033-FD60-6AB907FD2555";
	setAttr ".ihi" 0;
createNode HIKCharacterNode -n "camera_Horse1";
	rename -uid "73A15AE1-431E-FEE8-FC7A-EA896B7B9772";
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".HipsTy" 141.835342;
	setAttr ".HipsRx" 7.03154;
	setAttr ".HipsRy" 2.7980699999999999e-07;
	setAttr ".HipsRz" 3.0561999999999999e-08;
	setAttr ".LeftUpLegTx" 15.406674;
	setAttr ".LeftUpLegTy" 120.121769;
	setAttr ".LeftUpLegTz" 19.461216;
	setAttr ".LeftUpLegRx" -0.43154;
	setAttr ".LeftUpLegRy" -2.04536e-07;
	setAttr ".LeftUpLegRz" -180;
	setAttr ".LeftLegTx" 15.406674;
	setAttr ".LeftLegTy" 90.863575;
	setAttr ".LeftLegTz" 19.240843;
	setAttr ".LeftLegRx" -0.431538;
	setAttr ".LeftLegRy" -9.9113400000000004e-08;
	setAttr ".LeftLegRz" 180;
	setAttr ".LeftFootTx" 15.406674;
	setAttr ".LeftFootTy" 40.364729;
	setAttr ".LeftFootTz" 18.86049;
	setAttr ".LeftFootRx" 89.56846;
	setAttr ".LeftFootRy" -2.33654e-08;
	setAttr ".LeftFootRz" 180;
	setAttr ".RightUpLegTx" -15.4067;
	setAttr ".RightUpLegTy" 120.121765;
	setAttr ".RightUpLegTz" 19.461243;
	setAttr ".RightUpLegRx" 179.56846;
	setAttr ".RightUpLegRy" -2.1519400000000004e-07;
	setAttr ".RightUpLegRz" -180;
	setAttr ".RightLegTx" -15.406649;
	setAttr ".RightLegTy" 90.863571;
	setAttr ".RightLegTz" 19.240915;
	setAttr ".RightLegRx" 179.56846200000004;
	setAttr ".RightLegRy" 1.6312800000000001e-08;
	setAttr ".RightLegRz" -180;
	setAttr ".RightFootTx" -15.406636;
	setAttr ".RightFootTy" 40.364725;
	setAttr ".RightFootTz" 18.860601;
	setAttr ".RightFootRx" -90.43154;
	setAttr ".RightFootRy" -7.6270500000000005e-09;
	setAttr ".RightFootRz" -180;
	setAttr ".SpineTx" 1.2135400000000001e-09;
	setAttr ".SpineTy" 159.436317;
	setAttr ".SpineTz" 2.170964;
	setAttr ".SpineRx" 4.863875;
	setAttr ".SpineRy" 2.7980699999999999e-07;
	setAttr ".SpineRz" 3.0561999999999999e-08;
	setAttr ".LeftArmTx" -70.295763;
	setAttr ".LeftArmTy" 248.018485;
	setAttr ".LeftArmTz" -32.582663;
	setAttr ".LeftArmRx" -31.130686;
	setAttr ".LeftArmRy" -1.252917;
	setAttr ".LeftArmRz" -90.000418;
	setAttr ".LeftForeArmTx" -48.090721;
	setAttr ".LeftForeArmTy" 247.725078;
	setAttr ".LeftForeArmTz" -45.990621;
	setAttr ".LeftForeArmRx" -90.43154;
	setAttr ".LeftForeArmRy" -90;
	setAttr ".LeftHandTx" -8.949669;
	setAttr ".LeftHandTy" 247.43027;
	setAttr ".LeftHandTz" -45.990621;
	setAttr ".LeftHandRx" -90.43154;
	setAttr ".LeftHandRy" -90;
	setAttr ".RightArmTx" 70.296445;
	setAttr ".RightArmTy" 248.018669;
	setAttr ".RightArmTz" -32.582513;
	setAttr ".RightArmRx" 148.869457;
	setAttr ".RightArmRy" 1.253091;
	setAttr ".RightArmRz" 89.999972;
	setAttr ".RightForeArmTx" 48.091336;
	setAttr ".RightForeArmTy" 247.725463;
	setAttr ".RightForeArmTz" -45.990859;
	setAttr ".RightForeArmRx" 89.56846;
	setAttr ".RightForeArmRy" 90;
	setAttr ".RightHandTx" 8.950284;
	setAttr ".RightHandTy" 247.430666;
	setAttr ".RightHandTz" -45.990831;
	setAttr ".RightHandRx" 89.56846;
	setAttr ".RightHandRy" 90;
	setAttr ".HeadTx" -6.67179e-05;
	setAttr ".HeadTy" 286.546331;
	setAttr ".HeadTz" -45.442415;
	setAttr ".HeadRx" 53.736918;
	setAttr ".HeadRy" -6.2404999999999998e-06;
	setAttr ".HeadRz" 6.4964300000000018e-05;
	setAttr ".LeftShoulderTx" -61.378043;
	setAttr ".LeftShoulderTy" 224.778516;
	setAttr ".LeftShoulderTz" 42.101153;
	setAttr ".LeftShoulderRx" -89.288039;
	setAttr ".LeftShoulderRy" 31.765451;
	setAttr ".LeftShoulderRz" 0.374741;
	setAttr ".RightShoulderTx" 61.378122;
	setAttr ".RightShoulderTy" 224.778512;
	setAttr ".RightShoulderTz" 42.101268;
	setAttr ".RightShoulderRx" 90.71176;
	setAttr ".RightShoulderRy" -31.7659;
	setAttr ".RightShoulderRz" -0.374778;
	setAttr ".NeckTx" -5.5414000000000006e-07;
	setAttr ".NeckTy" 228.045337;
	setAttr ".NeckTz" 7.291635;
	setAttr ".NeckRx" 3.2631920000000005;
	setAttr ".NeckRy" 6.4964300000000018e-05;
	setAttr ".NeckRz" 6.2404999999999998e-06;
	setAttr ".Spine1Tx" -8.1976499999999991e-10;
	setAttr ".Spine1Ty" 176.691033;
	setAttr ".Spine1Tz" 3.639256;
	setAttr ".Spine1Rx" 2.696467;
	setAttr ".Spine1Ry" 4.3694499999999993e-05;
	setAttr ".Spine1Rz" 3.7249399999999999e-06;
	setAttr ".Spine2Tx" -5.0220799999999994e-07;
	setAttr ".Spine2Ty" 193.923404;
	setAttr ".Spine2Tz" 4.450849;
	setAttr ".Spine2Rx" 2.80741;
	setAttr ".Spine2Ry" 4.3694499999999993e-05;
	setAttr ".Spine2Rz" 3.7249399999999999e-06;
	setAttr ".Spine3Tx" -9.7879500000000013e-07;
	setAttr ".Spine3Ty" 211.181292;
	setAttr ".Spine3Tz" 5.297138;
	setAttr ".Spine3Rx" 6.744993;
	setAttr ".Spine3Ry" 4.3694499999999993e-05;
	setAttr ".Spine3Rz" 3.7249399999999999e-06;
	setAttr ".Neck1Tx" -1.34361e-06;
	setAttr ".Neck1Ty" 245.877864;
	setAttr ".Neck1Tz" 8.308358;
	setAttr ".Neck1Rx" -24.896421;
	setAttr ".Neck1Ry" 6.4964300000000018e-05;
	setAttr ".Neck1Rz" 6.2404999999999998e-06;
	setAttr ".Neck2Tx" -8.1349000000000007e-06;
	setAttr ".Neck2Ty" 256.570408;
	setAttr ".Neck2Tz" 3.345856;
	setAttr ".Neck2Rx" -65.077203;
	setAttr ".Neck2Ry" 6.4964300000000018e-05;
	setAttr ".Neck2Rz" 6.2404999999999998e-06;
	setAttr ".Neck3Tx" -1.6991999999999999e-05;
	setAttr ".Neck3Ty" 260.045121;
	setAttr ".Neck3Tz" -4.131979;
	setAttr ".Neck3Rx" -68.759242;
	setAttr ".Neck3Ry" 6.4964300000000018e-05;
	setAttr ".Neck3Rz" 6.2404999999999998e-06;
	setAttr ".Neck4Tx" -2.8994799999999999e-05;
	setAttr ".Neck4Ty" 264.011704;
	setAttr ".Neck4Tz" -14.336902;
	setAttr ".Neck4Rx" -69.817002;
	setAttr ".Neck4Ry" 6.4964300000000018e-05;
	setAttr ".Neck4Rz" 6.2404999999999998e-06;
	setAttr ".Neck5Tx" -4.0484200000000001e-05;
	setAttr ".Neck5Ty" 267.609518;
	setAttr ".Neck5Tz" -24.124436;
	setAttr ".Neck5Rx" -64.938015;
	setAttr ".Neck5Ry" 6.4964300000000018e-05;
	setAttr ".Neck5Rz" 6.2404999999999998e-06;
	setAttr ".Neck6Tx" -5.3876899999999999e-05;
	setAttr ".Neck6Ty" 272.895572;
	setAttr ".Neck6Tz" -35.428471;
	setAttr ".Neck6Rx" -36.263082;
	setAttr ".Neck6Ry" 6.4964300000000018e-05;
	setAttr ".Neck6Rz" 6.2404999999999998e-06;
	setAttr ".LeftHandIndex1Tx" 22.993734;
	setAttr ".LeftHandIndex1Ty" 247.189674;
	setAttr ".LeftHandIndex1Tz" -45.990621;
	setAttr ".LeftHandIndex1Rx" -90.43154;
	setAttr ".LeftHandIndex1Ry" -90;
	setAttr ".LeftHandIndex2Tx" 32.789779;
	setAttr ".LeftHandIndex2Ty" 247.115891;
	setAttr ".LeftHandIndex2Tz" -45.990621;
	setAttr ".LeftHandIndex2Rx" -90.43154;
	setAttr ".LeftHandIndex2Ry" -90;
	setAttr ".RightHandIndex1Tx" -22.99312;
	setAttr ".RightHandIndex1Ty" 247.190058;
	setAttr ".RightHandIndex1Tz" -45.990877;
	setAttr ".RightHandIndex1Rx" 89.56846;
	setAttr ".RightHandIndex1Ry" 90;
	setAttr ".RightHandIndex2Tx" -32.789063;
	setAttr ".RightHandIndex2Ty" 247.116362;
	setAttr ".RightHandIndex2Tz" -45.990836;
	setAttr ".RightHandIndex2Rx" 89.56846;
	setAttr ".RightHandIndex2Ry" 90;
	setAttr ".LeftFootIndex1Tx" 15.406674;
	setAttr ".LeftFootIndex1Ty" 40.1381;
	setAttr ".LeftFootIndex1Tz" 48.949494;
	setAttr ".LeftFootIndex1Rx" 89.56846;
	setAttr ".LeftFootIndex1Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex1Rz" 180;
	setAttr ".LeftFootIndex2Tx" 15.406674;
	setAttr ".LeftFootIndex2Ty" 40.053015;
	setAttr ".LeftFootIndex2Tz" 60.246103;
	setAttr ".LeftFootIndex2Rx" 89.56846;
	setAttr ".LeftFootIndex2Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex2Rz" 180;
	setAttr ".RightFootIndex1Tx" -15.406682;
	setAttr ".RightFootIndex1Ty" 40.138104;
	setAttr ".RightFootIndex1Tz" 48.949605;
	setAttr ".RightFootIndex1Rx" -90.43154;
	setAttr ".RightFootIndex1Ry" -2.71362e-08;
	setAttr ".RightFootIndex1Rz" 180;
	setAttr ".RightFootIndex2Tx" -15.40671;
	setAttr ".RightFootIndex2Ty" 40.053154;
	setAttr ".RightFootIndex2Tz" 60.245758;
	setAttr ".RightFootIndex2Rx" -90.43154;
	setAttr ".RightFootIndex2Ry" -2.71362e-08;
	setAttr ".RightFootIndex2Rz" 180;
createNode HIKProperty2State -n "camera_HIKproperties2";
	rename -uid "E358B17C-4B5C-900E-9BAD-DEA304511EDE";
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".ScaleCompensation" 0;
	setAttr ".FootBottomToAnkle" 40.364727;
	setAttr ".FootBackToAnkle" 6.646608;
	setAttr ".FootMiddleToAnkle" 13.293217;
	setAttr ".FootFrontToMiddle" 6.646608;
	setAttr ".FootInToAnkle" 6.646608;
	setAttr ".FootOutToAnkle" 6.646608;
	setAttr ".HandBottomToWrist" 3.190372;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 8.773523;
	setAttr ".HandFrontToMiddle" 8.773523;
	setAttr ".HandInToWrist" 8.773523;
	setAttr ".HandOutToWrist" 8.773523;
	setAttr ".HandContactType" 3;
	setAttr ".HandFingerContactMode" 0;
	setAttr ".FootContactType" 3;
	setAttr ".FootFingerContactMode" 0;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".CtrlChestPullLeftHand" 0;
	setAttr ".CtrlChestPullRightHand" 0;
	setAttr ".CtrlEnforceGravity" 0.6;
	setAttr ".FloorPivot" 2;
	setAttr ".Posture" 1;
	setAttr ".HandFloorPivot" 2;
	setAttr ".LeftHandIndexTip" 3.69846;
	setAttr ".RightHandIndexTip" 3.69846;
	setAttr ".LeftFootIndexTip" 3.69846;
	setAttr ".RightFootIndexTip" 3.69846;
	setAttr ".ExtraCollarRatio" 0.5;
	setAttr ".LeftUpLegRollEx" 0.4;
	setAttr ".LeftLegRollEx" 0.8;
	setAttr ".RightUpLegRollEx" 0.4;
	setAttr ".RightLegRollEx" 0.8;
	setAttr ".LeftArmRollEx" 0.4;
	setAttr ".LeftForeArmRollEx" 0.4;
	setAttr ".RightArmRollEx" 0.4;
	setAttr ".RightForeArmRollEx" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKSolverNode -n "camera_HIKSolverNode2";
	rename -uid "929B5664-4B86-38BD-632E-59B7E6BB4D1F";
	setAttr ".ihi" 0;
	setAttr ".InputStance" yes;
createNode HIKState2SK -n "camera_HIKState2SK2";
	rename -uid "EB535D7C-4206-22E3-D352-82BE686733B3";
	setAttr ".ihi" 0;
createNode HIKCharacterNode -n "camera_Horse2";
	rename -uid "96FC4080-411B-7DC8-9BC7-21A3B27B0BA1";
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".HipsTy" 141.835342;
	setAttr ".HipsRx" 7.03154;
	setAttr ".HipsRy" 2.7980699999999999e-07;
	setAttr ".HipsRz" 3.0561999999999999e-08;
	setAttr ".LeftUpLegTx" 15.406674;
	setAttr ".LeftUpLegTy" 120.121769;
	setAttr ".LeftUpLegTz" 19.461216;
	setAttr ".LeftUpLegRx" -0.43154;
	setAttr ".LeftUpLegRy" -2.04536e-07;
	setAttr ".LeftUpLegRz" -180;
	setAttr ".LeftLegTx" 15.406674;
	setAttr ".LeftLegTy" 90.863575;
	setAttr ".LeftLegTz" 19.240843;
	setAttr ".LeftLegRx" -0.431538;
	setAttr ".LeftLegRy" -9.9113400000000004e-08;
	setAttr ".LeftLegRz" 180;
	setAttr ".LeftFootTx" 15.406674;
	setAttr ".LeftFootTy" 40.364729;
	setAttr ".LeftFootTz" 18.86049;
	setAttr ".LeftFootRx" 89.56846;
	setAttr ".LeftFootRy" -2.33654e-08;
	setAttr ".LeftFootRz" 180;
	setAttr ".RightUpLegTx" -15.4067;
	setAttr ".RightUpLegTy" 120.121765;
	setAttr ".RightUpLegTz" 19.461243;
	setAttr ".RightUpLegRx" 179.56846;
	setAttr ".RightUpLegRy" -2.1519400000000004e-07;
	setAttr ".RightUpLegRz" -180;
	setAttr ".RightLegTx" -15.406649;
	setAttr ".RightLegTy" 90.863571;
	setAttr ".RightLegTz" 19.240915;
	setAttr ".RightLegRx" 179.56846200000004;
	setAttr ".RightLegRy" 1.6312800000000001e-08;
	setAttr ".RightLegRz" -180;
	setAttr ".RightFootTx" -15.406636;
	setAttr ".RightFootTy" 40.364725;
	setAttr ".RightFootTz" 18.860601;
	setAttr ".RightFootRx" -90.43154;
	setAttr ".RightFootRy" -7.6270500000000005e-09;
	setAttr ".RightFootRz" -180;
	setAttr ".SpineTx" 1.2135400000000001e-09;
	setAttr ".SpineTy" 159.436317;
	setAttr ".SpineTz" 2.170964;
	setAttr ".SpineRx" 4.863875;
	setAttr ".SpineRy" 2.7980699999999999e-07;
	setAttr ".SpineRz" 3.0561999999999999e-08;
	setAttr ".LeftArmTx" -70.295763;
	setAttr ".LeftArmTy" 248.018485;
	setAttr ".LeftArmTz" -32.582663;
	setAttr ".LeftArmRx" -31.130686;
	setAttr ".LeftArmRy" -1.252917;
	setAttr ".LeftArmRz" -90.000418;
	setAttr ".LeftForeArmTx" -48.090721;
	setAttr ".LeftForeArmTy" 247.725078;
	setAttr ".LeftForeArmTz" -45.990621;
	setAttr ".LeftForeArmRx" -90.43154;
	setAttr ".LeftForeArmRy" -90;
	setAttr ".LeftHandTx" -8.949669;
	setAttr ".LeftHandTy" 247.43027;
	setAttr ".LeftHandTz" -45.990621;
	setAttr ".LeftHandRx" -90.43154;
	setAttr ".LeftHandRy" -90;
	setAttr ".RightArmTx" 70.296445;
	setAttr ".RightArmTy" 248.018669;
	setAttr ".RightArmTz" -32.582513;
	setAttr ".RightArmRx" 148.869457;
	setAttr ".RightArmRy" 1.253091;
	setAttr ".RightArmRz" 89.999972;
	setAttr ".RightForeArmTx" 48.091336;
	setAttr ".RightForeArmTy" 247.725463;
	setAttr ".RightForeArmTz" -45.990859;
	setAttr ".RightForeArmRx" 89.56846;
	setAttr ".RightForeArmRy" 90;
	setAttr ".RightHandTx" 8.950284;
	setAttr ".RightHandTy" 247.430666;
	setAttr ".RightHandTz" -45.990831;
	setAttr ".RightHandRx" 89.56846;
	setAttr ".RightHandRy" 90;
	setAttr ".HeadTx" -6.67179e-05;
	setAttr ".HeadTy" 286.546331;
	setAttr ".HeadTz" -45.442415;
	setAttr ".HeadRx" 53.736918;
	setAttr ".HeadRy" -6.2404999999999998e-06;
	setAttr ".HeadRz" 6.4964300000000018e-05;
	setAttr ".LeftShoulderTx" -61.378043;
	setAttr ".LeftShoulderTy" 224.778516;
	setAttr ".LeftShoulderTz" 42.101153;
	setAttr ".LeftShoulderRx" -89.288039;
	setAttr ".LeftShoulderRy" 31.765451;
	setAttr ".LeftShoulderRz" 0.374741;
	setAttr ".RightShoulderTx" 61.378122;
	setAttr ".RightShoulderTy" 224.778512;
	setAttr ".RightShoulderTz" 42.101268;
	setAttr ".RightShoulderRx" 90.71176;
	setAttr ".RightShoulderRy" -31.7659;
	setAttr ".RightShoulderRz" -0.374778;
	setAttr ".NeckTx" -5.5414000000000006e-07;
	setAttr ".NeckTy" 228.045337;
	setAttr ".NeckTz" 7.291635;
	setAttr ".NeckRx" 3.2631920000000005;
	setAttr ".NeckRy" 6.4964300000000018e-05;
	setAttr ".NeckRz" 6.2404999999999998e-06;
	setAttr ".Spine1Tx" -8.1976499999999991e-10;
	setAttr ".Spine1Ty" 176.691033;
	setAttr ".Spine1Tz" 3.639256;
	setAttr ".Spine1Rx" 2.696467;
	setAttr ".Spine1Ry" 4.3694499999999993e-05;
	setAttr ".Spine1Rz" 3.7249399999999999e-06;
	setAttr ".Spine2Tx" -5.0220799999999994e-07;
	setAttr ".Spine2Ty" 193.923404;
	setAttr ".Spine2Tz" 4.450849;
	setAttr ".Spine2Rx" 2.80741;
	setAttr ".Spine2Ry" 4.3694499999999993e-05;
	setAttr ".Spine2Rz" 3.7249399999999999e-06;
	setAttr ".Spine3Tx" -9.7879500000000013e-07;
	setAttr ".Spine3Ty" 211.181292;
	setAttr ".Spine3Tz" 5.297138;
	setAttr ".Spine3Rx" 6.744993;
	setAttr ".Spine3Ry" 4.3694499999999993e-05;
	setAttr ".Spine3Rz" 3.7249399999999999e-06;
	setAttr ".Neck1Tx" -1.34361e-06;
	setAttr ".Neck1Ty" 245.877864;
	setAttr ".Neck1Tz" 8.308358;
	setAttr ".Neck1Rx" -24.896421;
	setAttr ".Neck1Ry" 6.4964300000000018e-05;
	setAttr ".Neck1Rz" 6.2404999999999998e-06;
	setAttr ".Neck2Tx" -8.1349000000000007e-06;
	setAttr ".Neck2Ty" 256.570408;
	setAttr ".Neck2Tz" 3.345856;
	setAttr ".Neck2Rx" -65.077203;
	setAttr ".Neck2Ry" 6.4964300000000018e-05;
	setAttr ".Neck2Rz" 6.2404999999999998e-06;
	setAttr ".Neck3Tx" -1.6991999999999999e-05;
	setAttr ".Neck3Ty" 260.045121;
	setAttr ".Neck3Tz" -4.131979;
	setAttr ".Neck3Rx" -68.759242;
	setAttr ".Neck3Ry" 6.4964300000000018e-05;
	setAttr ".Neck3Rz" 6.2404999999999998e-06;
	setAttr ".Neck4Tx" -2.8994799999999999e-05;
	setAttr ".Neck4Ty" 264.011704;
	setAttr ".Neck4Tz" -14.336902;
	setAttr ".Neck4Rx" -69.817002;
	setAttr ".Neck4Ry" 6.4964300000000018e-05;
	setAttr ".Neck4Rz" 6.2404999999999998e-06;
	setAttr ".Neck5Tx" -4.0484200000000001e-05;
	setAttr ".Neck5Ty" 267.609518;
	setAttr ".Neck5Tz" -24.124436;
	setAttr ".Neck5Rx" -64.938015;
	setAttr ".Neck5Ry" 6.4964300000000018e-05;
	setAttr ".Neck5Rz" 6.2404999999999998e-06;
	setAttr ".Neck6Tx" -5.3876899999999999e-05;
	setAttr ".Neck6Ty" 272.895572;
	setAttr ".Neck6Tz" -35.428471;
	setAttr ".Neck6Rx" -36.263082;
	setAttr ".Neck6Ry" 6.4964300000000018e-05;
	setAttr ".Neck6Rz" 6.2404999999999998e-06;
	setAttr ".LeftHandIndex1Tx" 22.993734;
	setAttr ".LeftHandIndex1Ty" 247.189674;
	setAttr ".LeftHandIndex1Tz" -45.990621;
	setAttr ".LeftHandIndex1Rx" -90.43154;
	setAttr ".LeftHandIndex1Ry" -90;
	setAttr ".LeftHandIndex2Tx" 32.789779;
	setAttr ".LeftHandIndex2Ty" 247.115891;
	setAttr ".LeftHandIndex2Tz" -45.990621;
	setAttr ".LeftHandIndex2Rx" -90.43154;
	setAttr ".LeftHandIndex2Ry" -90;
	setAttr ".RightHandIndex1Tx" -22.99312;
	setAttr ".RightHandIndex1Ty" 247.190058;
	setAttr ".RightHandIndex1Tz" -45.990877;
	setAttr ".RightHandIndex1Rx" 89.56846;
	setAttr ".RightHandIndex1Ry" 90;
	setAttr ".RightHandIndex2Tx" -32.789063;
	setAttr ".RightHandIndex2Ty" 247.116362;
	setAttr ".RightHandIndex2Tz" -45.990836;
	setAttr ".RightHandIndex2Rx" 89.56846;
	setAttr ".RightHandIndex2Ry" 90;
	setAttr ".LeftFootIndex1Tx" 15.406674;
	setAttr ".LeftFootIndex1Ty" 40.1381;
	setAttr ".LeftFootIndex1Tz" 48.949494;
	setAttr ".LeftFootIndex1Rx" 89.56846;
	setAttr ".LeftFootIndex1Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex1Rz" 180;
	setAttr ".LeftFootIndex2Tx" 15.406674;
	setAttr ".LeftFootIndex2Ty" 40.053015;
	setAttr ".LeftFootIndex2Tz" 60.246103;
	setAttr ".LeftFootIndex2Rx" 89.56846;
	setAttr ".LeftFootIndex2Ry" -3.8561399999999999e-09;
	setAttr ".LeftFootIndex2Rz" 180;
	setAttr ".RightFootIndex1Tx" -15.406682;
	setAttr ".RightFootIndex1Ty" 40.138104;
	setAttr ".RightFootIndex1Tz" 48.949605;
	setAttr ".RightFootIndex1Rx" -90.43154;
	setAttr ".RightFootIndex1Ry" -2.71362e-08;
	setAttr ".RightFootIndex1Rz" 180;
	setAttr ".RightFootIndex2Tx" -15.40671;
	setAttr ".RightFootIndex2Ty" 40.053154;
	setAttr ".RightFootIndex2Tz" 60.245758;
	setAttr ".RightFootIndex2Rx" -90.43154;
	setAttr ".RightFootIndex2Ry" -2.71362e-08;
	setAttr ".RightFootIndex2Rz" 180;
createNode HIKProperty2State -n "camera_HIKproperties3";
	rename -uid "1ABBCB12-49B4-A402-378D-C3A8C9E57092";
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".ScaleCompensation" 0;
	setAttr ".FootBottomToAnkle" 40.364727;
	setAttr ".FootBackToAnkle" 6.646608;
	setAttr ".FootMiddleToAnkle" 13.293217;
	setAttr ".FootFrontToMiddle" 6.646608;
	setAttr ".FootInToAnkle" 6.646608;
	setAttr ".FootOutToAnkle" 6.646608;
	setAttr ".HandBottomToWrist" 3.190372;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 8.773523;
	setAttr ".HandFrontToMiddle" 8.773523;
	setAttr ".HandInToWrist" 8.773523;
	setAttr ".HandOutToWrist" 8.773523;
	setAttr ".HandContactType" 3;
	setAttr ".HandFingerContactMode" 0;
	setAttr ".FootContactType" 3;
	setAttr ".FootFingerContactMode" 0;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".CtrlChestPullLeftHand" 0;
	setAttr ".CtrlChestPullRightHand" 0;
	setAttr ".CtrlEnforceGravity" 0.6;
	setAttr ".FloorPivot" 2;
	setAttr ".Posture" 1;
	setAttr ".HandFloorPivot" 2;
	setAttr ".LeftHandIndexTip" 3.69846;
	setAttr ".RightHandIndexTip" 3.69846;
	setAttr ".LeftFootIndexTip" 3.69846;
	setAttr ".RightFootIndexTip" 3.69846;
	setAttr ".ExtraCollarRatio" 0.5;
	setAttr ".LeftUpLegRollEx" 0.4;
	setAttr ".LeftLegRollEx" 0.8;
	setAttr ".RightUpLegRollEx" 0.4;
	setAttr ".RightLegRollEx" 0.8;
	setAttr ".LeftArmRollEx" 0.4;
	setAttr ".LeftForeArmRollEx" 0.4;
	setAttr ".RightArmRollEx" 0.4;
	setAttr ".RightForeArmRollEx" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKSolverNode -n "camera_HIKSolverNode3";
	rename -uid "C82CCD79-4E72-F615-ACF7-648B0FFB043C";
	setAttr ".ihi" 0;
	setAttr ".InputStance" yes;
createNode HIKState2SK -n "camera_HIKState2SK3";
	rename -uid "6A805751-4E94-2FA3-8F38-2AA017CC2AC8";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "horse_low_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "0018A05B-4B9E-C19C-2642-CC8DD4214C17";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -10064.285904204569 -21427.381431394162 ;
	setAttr ".tgi[0].vh" -type "double2" 8935.7145204785356 21429.762383680511 ;
createNode materialInfo -n "materialInfo218";
	rename -uid "08608422-4C25-82C1-716F-5DB3E78A3E95";
createNode nodeGraphEditorInfo -n "lion_low_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "74F70E56-47A8-D868-BFC8-D8850A31DE08";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -24783.333878562102 -23138.690993639226 ;
	setAttr ".tgi[0].vh" -type "double2" 24359.524362723518 23147.024326641418 ;
createNode materialInfo -n "lion_low_materialInfo218";
	rename -uid "3B952F90-47F4-3AB2-FA72-D9AAA614E79A";
createNode nodeGraphEditorInfo -n "lion_low_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "637F45FA-4596-A133-EBC3-81BA70315B28";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -24783.333878562102 -23138.690993639226 ;
	setAttr ".tgi[0].vh" -type "double2" 24359.524362723518 23147.024326641418 ;
createNode materialInfo -n "lion_low_materialInfo219";
	rename -uid "0A6E675B-470C-9616-8675-569EA5A21855";
createNode nodeGraphEditorInfo -n "lion_low_hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "26A4CB62-4FE3-8710-B03B-72A3191652CD";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -24783.333878562102 -23138.690993639226 ;
	setAttr ".tgi[0].vh" -type "double2" 24359.524362723518 23147.024326641418 ;
createNode decomposeMatrix -n "DCM_36";
	rename -uid "1E136943-4173-CEEA-2A04-828C8330391D";
createNode decomposeMatrix -n "DCM_37";
	rename -uid "56205A39-48ED-A426-90B9-8DAD143B1BC3";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9DBE36F3-4406-6D4A-B7E4-A1B264EDAF1E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -630.1314135232559 1100.1602138280241 ;
	setAttr ".tgi[0].vh" -type "double2" 99.484391548103801 1420.2877406830219 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -234.1968994140625;
	setAttr ".tgi[0].ni[0].y" 1772.768310546875;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" -549.19561767578125;
	setAttr ".tgi[0].ni[1].y" 1782.588134765625;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -205.71427917480469;
	setAttr ".tgi[0].ni[2].y" 1421.4285888671875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -205.71427917480469;
	setAttr ".tgi[0].ni[3].y" 1228.5714111328125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -512.85711669921875;
	setAttr ".tgi[0].ni[4].y" 1395.7142333984375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -205.71427917480469;
	setAttr ".tgi[0].ni[5].y" 1320;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -205.71427917480469;
	setAttr ".tgi[0].ni[6].y" 1164.2857666015625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -512.85711669921875;
	setAttr ".tgi[0].ni[7].y" 1294.2857666015625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
createNode materialInfo -n "lion_low_materialInfo220";
	rename -uid "3E516558-47AC-4641-A9EC-A9B7C433AB31";
createNode nodeGraphEditorInfo -n "lion_low_hyperShadePrimaryNodeEditorSavedTabsInfo3";
	rename -uid "E8E7B736-463E-104A-C3B0-2A9F0225ACBF";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -24783.333878562102 -23138.690993639226 ;
	setAttr ".tgi[0].vh" -type "double2" 24359.524362723518 23147.024326641418 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "90AA9A30-4458-416E-4C24-63851D3B28FB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1472058.2748389931 -1705.3525996181186 ;
	setAttr ".tgi[0].vh" -type "double2" -1469948.7511132942 3052.9715936875982 ;
createNode materialInfo -n "lion_low_materialInfo221";
	rename -uid "EF0D3C30-4162-CB28-0E70-16A15A5E32D0";
createNode nodeGraphEditorInfo -n "lion_low_hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "396EFADC-4A4E-275A-DBA2-B3882D49B9C1";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -24783.333878562102 -23138.690993639226 ;
	setAttr ".tgi[0].vh" -type "double2" 24359.524362723518 23147.024326641418 ;
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
	setAttr -av -k on ".msaa" yes;
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
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
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
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
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
	setAttr -av -cb on ".ren";
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr -s 35 ".hyp";
	setAttr ".hyp[83147].isc" yes;
	setAttr ".hyp[84754].isc" yes;
	setAttr ".hyp[84755].isc" yes;
	setAttr ".hyp[84880].isc" yes;
	setAttr ".hyp[84881].isc" yes;
	setAttr ".hyp[84912].isc" yes;
	setAttr ".hyp[84913].isc" yes;
	setAttr ".hyp[84914].isc" yes;
	setAttr ".hyp[84916].isc" yes;
	setAttr ".hyp[84917].isc" yes;
	setAttr ".hyp[84919].isc" yes;
	setAttr ".hyp[84920].isc" yes;
	setAttr ".hyp[84962].isc" yes;
	setAttr ".hyp[84963].isc" yes;
	setAttr ".hyp[84964].isc" yes;
	setAttr ".hyp[84970].isc" yes;
	setAttr ".hyp[84971].isc" yes;
	setAttr ".hyp[84975].isc" yes;
	setAttr ".hyp[84976].isc" yes;
	setAttr ".hyp[84978].isc" yes;
	setAttr ".hyp[84983].isc" yes;
	setAttr ".hyp[84984].isc" yes;
	setAttr ".hyp[84985].isc" yes;
	setAttr ".hyp[84988].isc" yes;
	setAttr ".hyp[84989].isc" yes;
	setAttr ".hyp[84990].isc" yes;
	setAttr ".hyp[84991].isc" yes;
	setAttr ".hyp[84992].isc" yes;
	setAttr ".hyp[84994].isc" yes;
	setAttr ".hyp[84995].isc" yes;
	setAttr ".hyp[84996].isc" yes;
	setAttr ".hyp[84997].isc" yes;
	setAttr ".hyp[84998].isc" yes;
	setAttr ".hyp[84999].isc" yes;
	setAttr ".hyp[85001].isc" yes;
connectAttr "hip_guide_aimConstraint1.crx" "hip_guide.rx" -l on;
connectAttr "hip_guide_aimConstraint1.cry" "hip_guide.ry" -l on;
connectAttr "hip_guide_aimConstraint1.crz" "hip_guide.rz" -l on;
connectAttr "hip_guide.pim" "hip_guide_aimConstraint1.cpim";
connectAttr "hip_guide.t" "hip_guide_aimConstraint1.ct";
connectAttr "hip_guide.rp" "hip_guide_aimConstraint1.crp";
connectAttr "hip_guide.rpt" "hip_guide_aimConstraint1.crt";
connectAttr "hip_guide.ro" "hip_guide_aimConstraint1.cro";
connectAttr "upr_guide.t" "hip_guide_aimConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "hip_guide_aimConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "hip_guide_aimConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "hip_guide_aimConstraint1.tg[0].tpm";
connectAttr "hip_guide_aimConstraint1.w0" "hip_guide_aimConstraint1.tg[0].tw";
connectAttr "upr_guide.wm" "hip_guide_aimConstraint1.wum";
connectAttr "upr_guide_aimConstraint1.crx" "upr_guide.rx" -l on;
connectAttr "upr_guide_aimConstraint1.cry" "upr_guide.ry" -l on;
connectAttr "upr_guide_aimConstraint1.crz" "upr_guide.rz" -l on;
connectAttr "upr_guide.pim" "upr_guide_aimConstraint1.cpim";
connectAttr "upr_guide.t" "upr_guide_aimConstraint1.ct";
connectAttr "upr_guide.rp" "upr_guide_aimConstraint1.crp";
connectAttr "upr_guide.rpt" "upr_guide_aimConstraint1.crt";
connectAttr "upr_guide.ro" "upr_guide_aimConstraint1.cro";
connectAttr "lwr_guide.t" "upr_guide_aimConstraint1.tg[0].tt";
connectAttr "lwr_guide.rp" "upr_guide_aimConstraint1.tg[0].trp";
connectAttr "lwr_guide.rpt" "upr_guide_aimConstraint1.tg[0].trt";
connectAttr "lwr_guide.pm" "upr_guide_aimConstraint1.tg[0].tpm";
connectAttr "upr_guide_aimConstraint1.w0" "upr_guide_aimConstraint1.tg[0].tw";
connectAttr "lwr_guide.wm" "upr_guide_aimConstraint1.wum";
connectAttr "lwr_guide_ofs_pointConstraint1.ctx" "lwr_guide_ofs.tx";
connectAttr "lwr_guide_ofs_pointConstraint1.cty" "lwr_guide_ofs.ty";
connectAttr "lwr_guide_ofs_pointConstraint1.ctz" "lwr_guide_ofs.tz";
connectAttr "lwr_guide_ofs.pim" "lwr_guide_ofs_pointConstraint1.cpim";
connectAttr "lwr_guide_ofs.rp" "lwr_guide_ofs_pointConstraint1.crp";
connectAttr "lwr_guide_ofs.rpt" "lwr_guide_ofs_pointConstraint1.crt";
connectAttr "palm_guide.t" "lwr_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "lwr_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "lwr_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "lwr_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "lwr_guide_ofs_pointConstraint1.w0" "lwr_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "upr_guide.t" "lwr_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "upr_guide.rp" "lwr_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "upr_guide.rpt" "lwr_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "upr_guide.pm" "lwr_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "lwr_guide_ofs_pointConstraint1.w1" "lwr_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "lwr_guide_aimConstraint1.crx" "lwr_guide.rx" -l on;
connectAttr "lwr_guide_aimConstraint1.cry" "lwr_guide.ry" -l on;
connectAttr "lwr_guide_aimConstraint1.crz" "lwr_guide.rz" -l on;
connectAttr "lwr_guide.pim" "lwr_guide_aimConstraint1.cpim";
connectAttr "lwr_guide.t" "lwr_guide_aimConstraint1.ct";
connectAttr "lwr_guide.rp" "lwr_guide_aimConstraint1.crp";
connectAttr "lwr_guide.rpt" "lwr_guide_aimConstraint1.crt";
connectAttr "lwr_guide.ro" "lwr_guide_aimConstraint1.cro";
connectAttr "palm_guide.t" "lwr_guide_aimConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "lwr_guide_aimConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "lwr_guide_aimConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "lwr_guide_aimConstraint1.tg[0].tpm";
connectAttr "lwr_guide_aimConstraint1.w0" "lwr_guide_aimConstraint1.tg[0].tw";
connectAttr "pv_loc.wm" "lwr_guide_aimConstraint1.wum";
connectAttr "master_guide.patellaBone" "patella_guide.v";
connectAttr "master_guide.twistBones" "radius_guide_ZRO.v";
connectAttr "radius_guide_aimConstraint1.crx" "radius_guide.rx" -l on;
connectAttr "radius_guide_aimConstraint1.cry" "radius_guide.ry" -l on;
connectAttr "radius_guide_aimConstraint1.crz" "radius_guide.rz" -l on;
connectAttr "radius_guide.pim" "radius_guide_aimConstraint1.cpim";
connectAttr "radius_guide.t" "radius_guide_aimConstraint1.ct";
connectAttr "radius_guide.rp" "radius_guide_aimConstraint1.crp";
connectAttr "radius_guide.rpt" "radius_guide_aimConstraint1.crt";
connectAttr "radius_guide.ro" "radius_guide_aimConstraint1.cro";
connectAttr "radiusEnd_guide.t" "radius_guide_aimConstraint1.tg[0].tt";
connectAttr "radiusEnd_guide.rp" "radius_guide_aimConstraint1.tg[0].trp";
connectAttr "radiusEnd_guide.rpt" "radius_guide_aimConstraint1.tg[0].trt";
connectAttr "radiusEnd_guide.pm" "radius_guide_aimConstraint1.tg[0].tpm";
connectAttr "radius_guide_aimConstraint1.w0" "radius_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "master_guide.wm" "radius_guide_aimConstraint1.wum";
connectAttr "master_guide.twistBones" "ulna_guide_ZRO.v";
connectAttr "ulna_guide_aimConstraint1.crx" "ulna_guide.rx" -l on;
connectAttr "ulna_guide_aimConstraint1.cry" "ulna_guide.ry" -l on;
connectAttr "ulna_guide_aimConstraint1.crz" "ulna_guide.rz" -l on;
connectAttr "ulna_guide.pim" "ulna_guide_aimConstraint1.cpim";
connectAttr "ulna_guide.t" "ulna_guide_aimConstraint1.ct";
connectAttr "ulna_guide.rp" "ulna_guide_aimConstraint1.crp";
connectAttr "ulna_guide.rpt" "ulna_guide_aimConstraint1.crt";
connectAttr "ulna_guide.ro" "ulna_guide_aimConstraint1.cro";
connectAttr "ulnaEnd_guide.t" "ulna_guide_aimConstraint1.tg[0].tt";
connectAttr "ulnaEnd_guide.rp" "ulna_guide_aimConstraint1.tg[0].trp";
connectAttr "ulnaEnd_guide.rpt" "ulna_guide_aimConstraint1.tg[0].trt";
connectAttr "ulnaEnd_guide.pm" "ulna_guide_aimConstraint1.tg[0].tpm";
connectAttr "ulna_guide_aimConstraint1.w0" "ulna_guide_aimConstraint1.tg[0].tw";
connectAttr "master_guide.wm" "ulna_guide_aimConstraint1.wum";
connectAttr "master_guide.twistBones" "radiusEnd_guide_ZRO.v";
connectAttr "radiusEnd_guide_aimConstraint1.crx" "radiusEnd_guide.rx" -l on;
connectAttr "radiusEnd_guide_aimConstraint1.cry" "radiusEnd_guide.ry" -l on;
connectAttr "radiusEnd_guide_aimConstraint1.crz" "radiusEnd_guide.rz" -l on;
connectAttr "radiusEnd_guide.pim" "radiusEnd_guide_aimConstraint1.cpim";
connectAttr "radiusEnd_guide.t" "radiusEnd_guide_aimConstraint1.ct";
connectAttr "radiusEnd_guide.rp" "radiusEnd_guide_aimConstraint1.crp";
connectAttr "radiusEnd_guide.rpt" "radiusEnd_guide_aimConstraint1.crt";
connectAttr "radiusEnd_guide.ro" "radiusEnd_guide_aimConstraint1.cro";
connectAttr "radius_guide.t" "radiusEnd_guide_aimConstraint1.tg[0].tt";
connectAttr "radius_guide.rp" "radiusEnd_guide_aimConstraint1.tg[0].trp";
connectAttr "radius_guide.rpt" "radiusEnd_guide_aimConstraint1.tg[0].trt";
connectAttr "radius_guide.pm" "radiusEnd_guide_aimConstraint1.tg[0].tpm";
connectAttr "radiusEnd_guide_aimConstraint1.w0" "radiusEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "master_guide.wm" "radiusEnd_guide_aimConstraint1.wum";
connectAttr "master_guide.twistBones" "ulnaEnd_guide_ZRO.v";
connectAttr "ulnaEnd_guide_aimConstraint1.crx" "ulnaEnd_guide.rx" -l on;
connectAttr "ulnaEnd_guide_aimConstraint1.cry" "ulnaEnd_guide.ry" -l on;
connectAttr "ulnaEnd_guide_aimConstraint1.crz" "ulnaEnd_guide.rz" -l on;
connectAttr "ulnaEnd_guide.pim" "ulnaEnd_guide_aimConstraint1.cpim";
connectAttr "ulnaEnd_guide.t" "ulnaEnd_guide_aimConstraint1.ct";
connectAttr "ulnaEnd_guide.rp" "ulnaEnd_guide_aimConstraint1.crp";
connectAttr "ulnaEnd_guide.rpt" "ulnaEnd_guide_aimConstraint1.crt";
connectAttr "ulnaEnd_guide.ro" "ulnaEnd_guide_aimConstraint1.cro";
connectAttr "ulna_guide.t" "ulnaEnd_guide_aimConstraint1.tg[0].tt";
connectAttr "ulna_guide.rp" "ulnaEnd_guide_aimConstraint1.tg[0].trp";
connectAttr "ulna_guide.rpt" "ulnaEnd_guide_aimConstraint1.tg[0].trt";
connectAttr "ulna_guide.pm" "ulnaEnd_guide_aimConstraint1.tg[0].tpm";
connectAttr "ulnaEnd_guide_aimConstraint1.w0" "ulnaEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "master_guide.wm" "ulnaEnd_guide_aimConstraint1.wum";
connectAttr "digit_guide_aimConstraint1.crx" "digit_guide.rx" -l on;
connectAttr "digit_guide_aimConstraint1.cry" "digit_guide.ry" -l on;
connectAttr "digit_guide_aimConstraint1.crz" "digit_guide.rz" -l on;
connectAttr "digit_guide.pim" "digit_guide_aimConstraint1.cpim";
connectAttr "digit_guide.t" "digit_guide_aimConstraint1.ct";
connectAttr "digit_guide.rp" "digit_guide_aimConstraint1.crp";
connectAttr "digit_guide.rpt" "digit_guide_aimConstraint1.crt";
connectAttr "digit_guide.ro" "digit_guide_aimConstraint1.cro";
connectAttr "ball_guide.t" "digit_guide_aimConstraint1.tg[0].tt";
connectAttr "ball_guide.rp" "digit_guide_aimConstraint1.tg[0].trp";
connectAttr "ball_guide.rpt" "digit_guide_aimConstraint1.tg[0].trt";
connectAttr "ball_guide.pm" "digit_guide_aimConstraint1.tg[0].tpm";
connectAttr "digit_guide_aimConstraint1.w0" "digit_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "ball_guide_aimConstraint1.crx" "ball_guide.rx" -l on;
connectAttr "ball_guide_aimConstraint1.cry" "ball_guide.ry" -l on;
connectAttr "ball_guide_aimConstraint1.crz" "ball_guide.rz" -l on;
connectAttr "ball_guide.pim" "ball_guide_aimConstraint1.cpim";
connectAttr "ball_guide.t" "ball_guide_aimConstraint1.ct";
connectAttr "ball_guide.rp" "ball_guide_aimConstraint1.crp";
connectAttr "ball_guide.rpt" "ball_guide_aimConstraint1.crt";
connectAttr "ball_guide.ro" "ball_guide_aimConstraint1.cro";
connectAttr "tip_guide.t" "ball_guide_aimConstraint1.tg[0].tt";
connectAttr "tip_guide.rp" "ball_guide_aimConstraint1.tg[0].trp";
connectAttr "tip_guide.rpt" "ball_guide_aimConstraint1.tg[0].trt";
connectAttr "tip_guide.pm" "ball_guide_aimConstraint1.tg[0].tpm";
connectAttr "ball_guide_aimConstraint1.w0" "ball_guide_aimConstraint1.tg[0].tw";
connectAttr "pv_loc_ofs_pointConstraint1.ctx" "pv_loc_ofs.tx";
connectAttr "pv_loc_ofs_pointConstraint1.cty" "pv_loc_ofs.ty";
connectAttr "pv_loc_ofs_pointConstraint1.ctz" "pv_loc_ofs.tz";
connectAttr "pv_loc_ofs.pim" "pv_loc_ofs_pointConstraint1.cpim";
connectAttr "pv_loc_ofs.rp" "pv_loc_ofs_pointConstraint1.crp";
connectAttr "pv_loc_ofs.rpt" "pv_loc_ofs_pointConstraint1.crt";
connectAttr "upr_guide.t" "pv_loc_ofs_pointConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "pv_loc_ofs_pointConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "pv_loc_ofs_pointConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "pv_loc_ofs_pointConstraint1.tg[0].tpm";
connectAttr "pv_loc_ofs_pointConstraint1.w0" "pv_loc_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "palm_guide.t" "pv_loc_ofs_pointConstraint1.tg[1].tt";
connectAttr "palm_guide.rp" "pv_loc_ofs_pointConstraint1.tg[1].trp";
connectAttr "palm_guide.rpt" "pv_loc_ofs_pointConstraint1.tg[1].trt";
connectAttr "palm_guide.pm" "pv_loc_ofs_pointConstraint1.tg[1].tpm";
connectAttr "pv_loc_ofs_pointConstraint1.w1" "pv_loc_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "pvc_guide.posRatio" "pv_loc_ofs_pointConstraint1.w0";
connectAttr "pv_loc_aimConstraint1.crx" "pv_loc.rx" -l on;
connectAttr "pv_loc_aimConstraint1.cry" "pv_loc.ry" -l on;
connectAttr "pv_loc_aimConstraint1.crz" "pv_loc.rz" -l on;
connectAttr "pv_loc.pim" "pv_loc_aimConstraint1.cpim";
connectAttr "pv_loc.t" "pv_loc_aimConstraint1.ct";
connectAttr "pv_loc.rp" "pv_loc_aimConstraint1.crp";
connectAttr "pv_loc.rpt" "pv_loc_aimConstraint1.crt";
connectAttr "pv_loc.ro" "pv_loc_aimConstraint1.cro";
connectAttr "lwr_guide.t" "pv_loc_aimConstraint1.tg[0].tt";
connectAttr "lwr_guide.rp" "pv_loc_aimConstraint1.tg[0].trp";
connectAttr "lwr_guide.rpt" "pv_loc_aimConstraint1.tg[0].trt";
connectAttr "lwr_guide.pm" "pv_loc_aimConstraint1.tg[0].tpm";
connectAttr "pv_loc_aimConstraint1.w0" "pv_loc_aimConstraint1.tg[0].tw";
connectAttr "master_guide.toeBones" "toesRoot_guide.v" -l on;
connectAttr "toesRoot_guide_pointConstraint1.ctx" "toesRoot_guide.tx" -l on;
connectAttr "toesRoot_guide_pointConstraint1.cty" "toesRoot_guide.ty" -l on;
connectAttr "toesRoot_guide_pointConstraint1.ctz" "toesRoot_guide.tz" -l on;
connectAttr "multiplyDivide1.ox" "toesRoot_guide_ofs.tx";
connectAttr "multiplyDivide1.oy" "toesRoot_guide_ofs.ty";
connectAttr "multiplyDivide1.oz" "toesRoot_guide_ofs.tz";
connectAttr "toesRoot_guide.pim" "toesRoot_guide_pointConstraint1.cpim";
connectAttr "toesRoot_guide.rp" "toesRoot_guide_pointConstraint1.crp";
connectAttr "toesRoot_guide.rpt" "toesRoot_guide_pointConstraint1.crt";
connectAttr "palm_guide.t" "toesRoot_guide_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "toesRoot_guide_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "toesRoot_guide_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "toesRoot_guide_pointConstraint1.tg[0].tpm";
connectAttr "toesRoot_guide_pointConstraint1.w0" "toesRoot_guide_pointConstraint1.tg[0].tw"
		;
connectAttr "DCM_1.ot" "line_01Shape.cp[0]";
connectAttr "DCM_2.ot" "line_01Shape.cp[1]";
connectAttr "DCM_2.ot" "line_02Shape.cp[0]";
connectAttr "DCM_3.ot" "line_02Shape.cp[1]";
connectAttr "DCM_3.ot" "line_03Shape.cp[0]";
connectAttr "DCM_4.ot" "line_03Shape.cp[1]";
connectAttr "DCM_4.ot" "line_04Shape.cp[0]";
connectAttr "DCM_5.ot" "line_04Shape.cp[1]";
connectAttr "DCM_3.ot" "line_06Shape.cp[0]";
connectAttr "DCM_7.ot" "line_06Shape.cp[1]";
connectAttr "DCM_5.ot" "curveShape1.cp[0]";
connectAttr "DCM_36.ot" "curveShape1.cp[1]";
connectAttr "DCM_36.ot" "curveShape2.cp[0]";
connectAttr "DCM_37.ot" "curveShape2.cp[1]";
connectAttr "master_guide.toeBones" "line_grp2.v";
connectAttr "DCM_12.ot" "line_09Shape.cp[0]";
connectAttr "DCM_13.ot" "line_09Shape.cp[1]";
connectAttr "DCM_13.ot" "line_10Shape.cp[0]";
connectAttr "DCM_14.ot" "line_10Shape.cp[1]";
connectAttr "DCM_14.ot" "line_11Shape.cp[0]";
connectAttr "DCM_15.ot" "line_11Shape.cp[1]";
connectAttr "DCM_15.ot" "line_12Shape.cp[0]";
connectAttr "DCM_16.ot" "line_12Shape.cp[1]";
connectAttr "DCM_17.ot" "line_13Shape.cp[0]";
connectAttr "DCM_18.ot" "line_13Shape.cp[1]";
connectAttr "DCM_18.ot" "line_14Shape.cp[0]";
connectAttr "DCM_19.ot" "line_14Shape.cp[1]";
connectAttr "DCM_19.ot" "line_15Shape.cp[0]";
connectAttr "DCM_20.ot" "line_15Shape.cp[1]";
connectAttr "DCM_20.ot" "line_16Shape.cp[0]";
connectAttr "DCM_21.ot" "line_16Shape.cp[1]";
connectAttr "DCM_22.ot" "line_17Shape.cp[0]";
connectAttr "DCM_23.ot" "line_17Shape.cp[1]";
connectAttr "DCM_23.ot" "line_18Shape.cp[0]";
connectAttr "DCM_24.ot" "line_18Shape.cp[1]";
connectAttr "DCM_24.ot" "line_19Shape.cp[0]";
connectAttr "DCM_25.ot" "line_19Shape.cp[1]";
connectAttr "DCM_25.ot" "line_20Shape.cp[0]";
connectAttr "DCM_26.ot" "line_20Shape.cp[1]";
connectAttr "DCM_27.ot" "line_21Shape.cp[0]";
connectAttr "DCM_28.ot" "line_21Shape.cp[1]";
connectAttr "DCM_28.ot" "line_22Shape.cp[0]";
connectAttr "DCM_29.ot" "line_22Shape.cp[1]";
connectAttr "DCM_29.ot" "line_23Shape.cp[0]";
connectAttr "DCM_30.ot" "line_23Shape.cp[1]";
connectAttr "DCM_30.ot" "line_24Shape.cp[0]";
connectAttr "DCM_31.ot" "line_24Shape.cp[1]";
connectAttr "DCM_32.ot" "line_25Shape.cp[0]";
connectAttr "DCM_33.ot" "line_25Shape.cp[1]";
connectAttr "DCM_33.ot" "line_26Shape.cp[0]";
connectAttr "DCM_34.ot" "line_26Shape.cp[1]";
connectAttr "DCM_34.ot" "line_27Shape.cp[0]";
connectAttr "DCM_35.ot" "line_27Shape.cp[1]";
connectAttr "DCM_33.ot" "line_28Shape.cp[0]";
connectAttr "DCM_28.ot" "line_28Shape.cp[1]";
connectAttr "DCM_28.ot" "line_29Shape.cp[0]";
connectAttr "DCM_23.ot" "line_29Shape.cp[1]";
connectAttr "DCM_23.ot" "line_30Shape.cp[0]";
connectAttr "DCM_18.ot" "line_30Shape.cp[1]";
connectAttr "DCM_18.ot" "line_31Shape.cp[0]";
connectAttr "DCM_13.ot" "line_31Shape.cp[1]";
connectAttr "master_guide.twistBones" "line_grp3.v";
connectAttr "DCM_8.ot" "line_07Shape.cp[0]";
connectAttr "DCM_9.ot" "line_07Shape.cp[1]";
connectAttr "DCM_10.ot" "line_08Shape.cp[0]";
connectAttr "DCM_11.ot" "line_08Shape.cp[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "hip_guide.wm" "DCM_1.imat";
connectAttr "upr_guide.wm" "DCM_2.imat";
connectAttr "lwr_guide.wm" "DCM_3.imat";
connectAttr "palm_guide.wm" "DCM_4.imat";
connectAttr "digit_guide.wm" "DCM_5.imat";
connectAttr "pvc_guide.wm" "DCM_7.imat";
connectAttr "toesRoot_guide.tx" "multiplyDivide1.i1x";
connectAttr "toesRoot_guide.ty" "multiplyDivide1.i1y";
connectAttr "toesRoot_guide.tz" "multiplyDivide1.i1z";
connectAttr "ulna_guide.wm" "DCM_8.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_9.imat";
connectAttr "radiusEnd_guide.wm" "DCM_10.imat";
connectAttr "radius_guide.wm" "DCM_11.imat";
connectAttr "toe04_1_guide.wm" "DCM_12.imat";
connectAttr "toe04_2_guide.wm" "DCM_13.imat";
connectAttr "toe04_3_guide.wm" "DCM_14.imat";
connectAttr "toe04_4_guide.wm" "DCM_15.imat";
connectAttr "toe04_5_guide.wm" "DCM_16.imat";
connectAttr "toe03_1_guide.wm" "DCM_17.imat";
connectAttr "toe03_2_guide.wm" "DCM_18.imat";
connectAttr "toe03_3_guide.wm" "DCM_19.imat";
connectAttr "toe03_4_guide.wm" "DCM_20.imat";
connectAttr "toe03_5_guide.wm" "DCM_21.imat";
connectAttr "toe02_1_guide.wm" "DCM_22.imat";
connectAttr "toe02_2_guide.wm" "DCM_23.imat";
connectAttr "toe02_3_guide.wm" "DCM_24.imat";
connectAttr "toe02_4_guide.wm" "DCM_25.imat";
connectAttr "toe02_5_guide.wm" "DCM_26.imat";
connectAttr "toe01_1_guide.wm" "DCM_27.imat";
connectAttr "toe01_2_guide.wm" "DCM_28.imat";
connectAttr "toe01_3_guide.wm" "DCM_29.imat";
connectAttr "toe01_4_guide.wm" "DCM_30.imat";
connectAttr "toe01_5_guide.wm" "DCM_31.imat";
connectAttr "toe00_1_guide.wm" "DCM_32.imat";
connectAttr "toe00_2_guide.wm" "DCM_33.imat";
connectAttr "toe00_3_guide.wm" "DCM_34.imat";
connectAttr "toe00_4_guide.wm" "DCM_35.imat";
connectAttr "HIKproperties1.msg" "Horse.propertyState";
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "Horse.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "Horse.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "camera_HIKproperties1.msg" "camera_Horse.propertyState";
connectAttr "camera_HIKproperties1.OutputPropertySetState" "camera_HIKSolverNode1.InputPropertySetState"
		;
connectAttr "camera_Horse.OutputCharacterDefinition" "camera_HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "camera_Horse.OutputCharacterDefinition" "camera_HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "camera_HIKSolverNode1.OutputCharacterState" "camera_HIKState2SK1.InputCharacterState"
		;
connectAttr "camera_HIKproperties2.msg" "camera_Horse1.propertyState";
connectAttr "camera_HIKproperties2.OutputPropertySetState" "camera_HIKSolverNode2.InputPropertySetState"
		;
connectAttr "camera_Horse1.OutputCharacterDefinition" "camera_HIKSolverNode2.InputCharacterDefinition"
		;
connectAttr "camera_Horse1.OutputCharacterDefinition" "camera_HIKState2SK2.InputCharacterDefinition"
		;
connectAttr "camera_HIKSolverNode2.OutputCharacterState" "camera_HIKState2SK2.InputCharacterState"
		;
connectAttr "camera_HIKproperties3.msg" "camera_Horse2.propertyState";
connectAttr "camera_HIKproperties3.OutputPropertySetState" "camera_HIKSolverNode3.InputPropertySetState"
		;
connectAttr "camera_Horse2.OutputCharacterDefinition" "camera_HIKSolverNode3.InputCharacterDefinition"
		;
connectAttr "camera_Horse2.OutputCharacterDefinition" "camera_HIKState2SK3.InputCharacterDefinition"
		;
connectAttr "camera_HIKSolverNode3.OutputCharacterState" "camera_HIKState2SK3.InputCharacterState"
		;
connectAttr "ball_guide.wm" "DCM_36.imat";
connectAttr "tip_guide.wm" "DCM_37.imat";
connectAttr "line_grp2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "curveShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "line_32.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "DCM_36.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "curveShape2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "line_33.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "DCM_37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "lwr_guide_ofs.msg" ":hyperGraphLayout.hyp[83147].dn";
connectAttr "upr_guide_aimConstraint1.msg" ":hyperGraphLayout.hyp[84754].dn";
connectAttr "hip_guide_ofs.msg" ":hyperGraphLayout.hyp[84755].dn";
connectAttr "palm_heelPos_guide.msg" ":hyperGraphLayout.hyp[84880].dn";
connectAttr "palm_inPos_guide.msg" ":hyperGraphLayout.hyp[84881].dn";
connectAttr "upr_guide_ofs.msg" ":hyperGraphLayout.hyp[84912].dn";
connectAttr "palm_inPos_ofs.msg" ":hyperGraphLayout.hyp[84913].dn";
connectAttr "palm_outPos_ofs.msg" ":hyperGraphLayout.hyp[84914].dn";
connectAttr "pv_loc.msg" ":hyperGraphLayout.hyp[84916].dn";
connectAttr "palm_toePos_guide.msg" ":hyperGraphLayout.hyp[84917].dn";
connectAttr "palm_heelPos_ofs.msg" ":hyperGraphLayout.hyp[84919].dn";
connectAttr "palm_toePos_guide_ofs.msg" ":hyperGraphLayout.hyp[84920].dn";
connectAttr "toesRoot_guideShape.msg" ":hyperGraphLayout.hyp[84962].dn";
connectAttr "toesRoot_guide_ofs.msg" ":hyperGraphLayout.hyp[84963].dn";
connectAttr "toesRoot_guide_pointConstraint1.msg" ":hyperGraphLayout.hyp[84964].dn"
		;
connectAttr "pv_loc_ofs.msg" ":hyperGraphLayout.hyp[84970].dn";
connectAttr "toesRoot_guide.msg" ":hyperGraphLayout.hyp[84971].dn";
connectAttr "line_grp2.msg" ":hyperGraphLayout.hyp[84975].dn";
connectAttr "line_grp3.msg" ":hyperGraphLayout.hyp[84976].dn";
connectAttr "radiusEnd_guide_ZRO.msg" ":hyperGraphLayout.hyp[84978].dn";
connectAttr "ulnaEnd_guide.msg" ":hyperGraphLayout.hyp[84983].dn";
connectAttr "ulnaEnd_guide_ZRO.msg" ":hyperGraphLayout.hyp[84984].dn";
connectAttr "tip_guide.msg" ":hyperGraphLayout.hyp[84985].dn";
connectAttr "line_01.msg" ":hyperGraphLayout.hyp[84988].dn";
connectAttr "line_02.msg" ":hyperGraphLayout.hyp[84989].dn";
connectAttr "line_03.msg" ":hyperGraphLayout.hyp[84990].dn";
connectAttr "line_04.msg" ":hyperGraphLayout.hyp[84991].dn";
connectAttr "line_06.msg" ":hyperGraphLayout.hyp[84992].dn";
connectAttr "line_32.msg" ":hyperGraphLayout.hyp[84994].dn";
connectAttr "line_33.msg" ":hyperGraphLayout.hyp[84995].dn";
connectAttr "line_grp.msg" ":hyperGraphLayout.hyp[84996].dn";
connectAttr "palm_guide_ofs.msg" ":hyperGraphLayout.hyp[84997].dn";
connectAttr "ball_guide_ofs1.msg" ":hyperGraphLayout.hyp[84998].dn";
connectAttr "digit_guide_ofs.msg" ":hyperGraphLayout.hyp[84999].dn";
connectAttr "tip_guide_ofs.msg" ":hyperGraphLayout.hyp[85001].dn";
// End of lfArmQd.ma
