//Maya ASCII 2023 scene
//Name: rtArmQd.ma
//Last modified: Sun, Dec 29, 2024 12:34:17 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "ik2Bsolver" "ik2Bsolver" "2.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "ECE1A4BD-4A32-08EB-EF4E-F3A1ED5EF0EC";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr -cb on ".ro";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "F9A81B29-43EB-067F-B3D9-4B8E3C9B1943";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	addAttr -ci true -sn "rbnBones" -ln "rbnBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twistBones" -ln "twistBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeFix" -ln "kneeFix" -min 0 -max 1 -at "bool";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -10 0 55 ;
	setAttr -cb on ".ro";
	setAttr -l on ".wsMirrorAxis";
	setAttr -cb on ".rbnBones";
	setAttr -cb on ".rbnJntNum";
	setAttr -cb on ".patellaBone" yes;
	setAttr -cb on ".toeBones" yes;
	setAttr -cb on ".twistBones" yes;
	setAttr -cb on ".kneeFix" yes;
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 90 5 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
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
	rename -uid "F9419F3F-4B65-CFB1-9229-5AA1B9A2F613";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "hip_guideShape" -p "hip_guide";
	rename -uid "54F33845-403D-F3D7-8002-9EAAE1061E39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.9950499900494999 1.4210854715202004e-14 8.8817841970012523e-16
		0.92387932409453988 0.38268332950651418 8.8817841970012523e-16
		0.70710665959559993 0.70710665959561414 8.8817841970012523e-16
		0.38268332950649997 0.92387932409455409 8.8817841970012523e-16
		0 0.9950266567164141 8.8817841970012523e-16
		-0.38268332950649997 0.92387932409455409 8.8817841970012523e-16
		-0.70710665959559993 0.70710665959561414 8.8817841970012523e-16
		-0.92387932409453988 0.38268332950651418 8.8817841970012523e-16
		-0.9950499900494999 -4.7144718651031283e-08 8.8817841970012523e-16
		-0.92387932409453988 -0.38268332950648576 8.8817841970012523e-16
		-0.70710665959559993 -0.70710665959558572 8.8817841970012523e-16
		-0.38268332950649997 -0.92387932409452567 8.8817841970012523e-16
		3.9736399602636007e-08 -0.99502665671638568 -0.0067659999323391121
		0.38268332950649997 -0.92387932409452567 8.8817841970012523e-16
		0.70710665959559993 -0.70710665959558572 8.8817841970012523e-16
		0.92387932409453988 -0.38268332950648576 8.8817841970012523e-16
		0.9950499900494999 1.4210854715202004e-14 8.8817841970012523e-16
		0.91930599080693998 0.0025893066407878113 -0.38078066285885909
		0.7036066596306001 0.0047844532855030111 -0.70359132629741916
		0.38078932952543998 0.0062511999375022111 -0.91928599080713913
		3.9736399602636007e-08 0.00676626659901821 -0.9950279900497192
		-0.38078932952543998 0.0062511999375022111 -0.91928599080713913
		-0.7036066596306001 0.0047844532855030111 -0.70359132629741916
		-0.91930599080693998 0.0025893066407878113 -0.38078066285885909
		-0.9950499900494999 -4.7144718651031283e-08 8.8817841970012523e-16
		-0.91930599080693998 -0.002589399974091789 0.38077932952554089
		-0.7036066596306001 -0.0047845466188069889 0.70359065963076084
		-0.38078932952543998 -0.0062512932708061898 0.91928465747382093
		3.9736399602636007e-08 -0.0067663332656557901 0.99502665671640078
		0.38078932952543998 -0.0062512932708061898 0.91928465747382093
		0.7036066596306001 -0.0047845466188069889 0.70359065963076084
		0.91930599080693998 -0.002589399974091789 0.38077932952554089
		0.9950499900494999 1.4210854715202004e-14 8.8817841970012523e-16
		0.91930599080693998 0.0025893066407878113 -0.38078066285885909
		0.7036066596306001 0.0047844532855030111 -0.70359132629741916
		0.38078932952543998 0.0062511999375022111 -0.91928599080713913
		3.9736399602636007e-08 0.00676626659901821 -0.9950279900497192
		3.9736399602636007e-08 0.3870313294630342 -0.91669599083303899
		3.9736399602636007e-08 0.70837465958293422 -0.69880665967859912
		3.9736399602636007e-08 0.92187399078127419 -0.37452932958803908
		0 0.9950266567164141 8.8817841970012523e-16
		3.9736399602636007e-08 0.91669532416639421 0.38703132946302088
		3.9736399602636007e-08 0.69880599301195412 0.70837399291626102
		3.9736399602636007e-08 0.37452932958805418 0.92187399078126087
		3.9736399602636007e-08 -0.0067663332656557901 0.99502665671640078
		3.9736399602636007e-08 -0.38703132946300578 0.9166946574997209
		3.9736399602636007e-08 -0.7083746595829058 0.69880532634528092
		3.9736399602636007e-08 -0.92187399078124577 0.37452799625472083
		3.9736399602636007e-08 -0.99502665671638568 -0.0067659999323391121
		3.9736399602636007e-08 -0.91669532416636579 -0.38703266279633913
		3.9736399602636007e-08 -0.6988059930119257 -0.70837532624957911
		3.9736399602636007e-08 -0.37452932958802576 -0.92187532411457918
		3.9736399602636007e-08 0.00676626659901821 -0.9950279900497192
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "FDBB4D88-4CFD-F00D-82C0-DC86D56796A9";
	setAttr ".t" -type "double3" 0 73 10 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
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
	rename -uid "A4D63673-440D-6175-01BF-2592FF22ED6C";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "48EA90C2-45F7-4333-B462-92BD0860F021";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "lwr_guide_ofs_pointConstraint1" -p "lwr_guide_ofs";
	rename -uid "D9AB5E62-4FA9-8522-E751-CF8C46CEC15B";
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
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -3.4404610715910167e-07 35.360860607031114 -2.8759620539837965 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lwr_guide" -p "lwr_guide_ofs";
	rename -uid "61B4C85D-4A6F-96DF-91ED-80B2FEF15965";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -9 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -4.3792105358373804e-23 8.8817841970012504e-16 -1.0745090760029337e-30 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 0 ;
createNode aimConstraint -n "lwr_guide_aimConstraint1" -p "lwr_guide";
	rename -uid "402DD517-4416-9AFE-A2DA-6CAC4A76B258";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "patella_guide" -p "lwr_guide";
	rename -uid "B464E39E-4445-4B5B-620A-11833E49C3C4";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012543e-16 ;
	setAttr ".rpt" -type "double3" 4.21462170084871e-17 8.8817841970012523e-16 -1.000533584333026e-18 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 1.9721522630525304e-31 ;
createNode nurbsCurve -n "patella_guideShape" -p "patella_guide";
	rename -uid "16C01031-48B7-ABED-41C3-1BBD7C7BEA70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.49752499502474995 0 0
		0.46193966204726994 0.19134166475324998 0
		0.35355332979779996 0.35355332979779996 0
		0.19134166475324998 0.46193966204726994 0
		0 0.49751332835819995 0
		-0.19134166475324998 0.46193966204726994 0
		-0.35355332979779996 0.35355332979779996 0
		-0.46193966204726994 0.19134166475324998 0
		-0.49752499502474995 -2.3572366430942999e-08 0
		-0.46193966204726994 -0.19134166475324998 0
		-0.35355332979779996 -0.35355332979779996 0
		-0.19134166475324998 -0.46193966204726994 0
		1.9868199801318004e-08 -0.49751332835819995 -0.0033829999661700002
		0.19134166475324998 -0.46193966204726994 0
		0.35355332979779996 -0.35355332979779996 0
		0.46193966204726994 -0.19134166475324998 0
		0.49752499502474995 0 0
		0.45965299540346999 0.0012946533203868002 -0.19039033142942999
		0.35180332981530005 0.0023922266427444001 -0.35179566314871002
		0.19039466476271999 0.0031255999687440001 -0.45964299540357001
		1.9868199801318004e-08 0.0033831332995019996 -0.49751399502486005
		-0.19039466476271999 0.0031255999687440001 -0.45964299540357001
		-0.35180332981530005 0.0023922266427444001 -0.35179566314871002
		-0.45965299540346999 0.0012946533203868002 -0.19039033142942999
		-0.49752499502474995 -2.3572366430942999e-08 0
		-0.45965299540346999 -0.0012946999870529999 0.19038966476277
		-0.35180332981530005 -0.0023922733094105999 0.35179532981537998
		-0.19039466476271999 -0.0031256466354102003 0.45964232873691002
		1.9868199801318004e-08 -0.0033831666328350005 0.49751332835819995
		0.19039466476271999 -0.0031256466354102003 0.45964232873691002
		0.35180332981530005 -0.0023922733094105999 0.35179532981537998
		0.45965299540346999 -0.0012946999870529999 0.19038966476277
		0.49752499502474995 0 0
		0.45965299540346999 0.0012946533203868002 -0.19039033142942999
		0.35180332981530005 0.0023922266427444001 -0.35179566314871002
		0.19039466476271999 0.0031255999687440001 -0.45964299540357001
		1.9868199801318004e-08 0.0033831332995019996 -0.49751399502486005
		1.9868199801318004e-08 0.19351566473151 -0.45834799541651994
		1.9868199801318004e-08 0.35418732979146 -0.3494033298393
		1.9868199801318004e-08 0.46093699539062999 -0.18726466479401999
		0 0.49751332835819995 0
		1.9868199801318004e-08 0.45834766208319 0.19351566473151
		1.9868199801318004e-08 0.34940299650596995 0.35418699645813007
		1.9868199801318004e-08 0.18726466479401999 0.46093699539062999
		1.9868199801318004e-08 -0.0033831666328350005 0.49751332835819995
		1.9868199801318004e-08 -0.19351566473151 0.45834732874986001
		1.9868199801318004e-08 -0.35418732979146 0.34940266317264002
		1.9868199801318004e-08 -0.46093699539062999 0.18726399812735997
		1.9868199801318004e-08 -0.49751332835819995 -0.0033829999661700002
		1.9868199801318004e-08 -0.45834766208319 -0.19351633139817001
		1.9868199801318004e-08 -0.34940299650596995 -0.35418766312479
		1.9868199801318004e-08 -0.18726466479401999 -0.46093766205729003
		1.9868199801318004e-08 0.0033831332995019996 -0.49751399502486005
		;
	setAttr ".adot" yes;
createNode transform -n "radius_guide_ZRO" -p "lwr_guide";
	rename -uid "1996BC06-444A-0D80-9CCD-EDA5C92ED39B";
	setAttr ".t" -type "double3" -5.0000006668200356 -5 2.6846203394220945e-08 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "radius_guide" -p "radius_guide_ZRO";
	rename -uid "F1AEC7B3-45FC-C7A1-6D2C-08B92E9C65D9";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode aimConstraint -n "radius_guide_aimConstraint1" -p "radius_guide";
	rename -uid "91B4A10D-417B-45ED-4975-E49B3267A802";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -89.999999999999972 -0.42278560623641853 -6.1197526002522432e-13 ;
	setAttr -k on ".w0";
createNode transform -n "ulna_guide_ZRO" -p "lwr_guide";
	rename -uid "08A994A5-4D16-7988-B392-0692C33DB3B8";
	setAttr ".t" -type "double3" -5.0000006668200356 5 2.684620117502556e-08 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "ulna_guide" -p "ulna_guide_ZRO";
	rename -uid "6380B2DE-4CA8-40CF-334D-8C9B98588F3E";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode aimConstraint -n "ulna_guide_aimConstraint1" -p "ulna_guide";
	rename -uid "08C012CF-40DE-4E6A-C2D2-1F896E91BCDD";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -89.999999999999929 -0.42278560623641392 -6.1063342698797568e-13 ;
	setAttr -k on ".w0";
createNode transform -n "palm_guide_ofs" -p "master_guide";
	rename -uid "6692DE7F-4686-BE5A-3FE7-1E9F5E0D39F5";
	setAttr ".t" -type "double3" 0 15 2 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "2777BD87-4148-276D-9AEA-CDA4ABC15F94";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode transform -n "radiusEnd_guide_ZRO" -p "palm_guide";
	rename -uid "7DD6973B-4C60-BA85-19F6-FDAEFF8D6E3F";
	setAttr ".t" -type "double3" 0 -5 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000018 1.0000000000000009 ;
createNode transform -n "radiusEnd_guide" -p "radiusEnd_guide_ZRO";
	rename -uid "84C35BB1-41D8-3033-6DD6-32B6012E053A";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode aimConstraint -n "radiusEnd_guide_aimConstraint1" -p "radiusEnd_guide";
	rename -uid "2857F188-46C0-3E3D-45AC-CA931061999C";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90.000000000000014 0 -6.2512394449759201e-14 ;
	setAttr -k on ".w0";
createNode transform -n "ulnaEnd_guide_ZRO" -p "palm_guide";
	rename -uid "DAA1E6E8-4182-F476-7C1A-899A7B874BE2";
	setAttr ".t" -type "double3" 0 5 6.1232339957367604e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000018 1.0000000000000009 ;
createNode transform -n "ulnaEnd_guide" -p "ulnaEnd_guide_ZRO";
	rename -uid "9D0DC11D-47EF-70D8-63CF-3DB22FDF9FF2";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode aimConstraint -n "ulnaEnd_guide_aimConstraint1" -p "ulnaEnd_guide";
	rename -uid "4095BA22-43F4-9FBD-1CBB-128CECD4DFE6";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -89.999999999999943 -3.1426304823366222 -6.0521553862187276e-14 ;
	setAttr -k on ".w0";
createNode transform -n "ball_guide_ofs" -p "master_guide";
	rename -uid "AFC6ACE8-49C2-6343-D10B-D995FB21F46F";
	setAttr ".t" -type "double3" 2.0146931650783329e-16 5 12 ;
	setAttr ".r" -type "double3" 3.9756933518293952e-15 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
createNode transform -n "ball_guide" -p "ball_guide_ofs";
	rename -uid "4881E75D-4BDC-BA9A-2224-299C5DB2B52F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 1.8318679906315083e-15 0 1.1796119636642288e-15 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -2.1895288505075267e-47 3.9443045261050608e-31 ;
createNode aimConstraint -n "ball_guide_aimConstraint1" -p "ball_guide";
	rename -uid "C0B00C56-4C25-13F8-57E2-848AB8DB2D2D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe_guideW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 0;
	setAttr -k on ".w0";
createNode transform -n "tip_guide_ofs" -p "master_guide";
	rename -uid "9DF21705-4F6C-197D-1814-B7B800AA61B4";
	setAttr ".t" -type "double3" 0 0 14 ;
	setAttr ".r" -type "double3" 0 90 90 ;
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
	rename -uid "26550532-446F-6D54-BE99-30AFC5B9CBBB";
	setAttr -cb on ".ro";
createNode transform -n "palm_inPos_guide" -p "palm_inPos_ofs";
	rename -uid "D4E600EC-46C0-7F63-B923-98859A463209";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
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
	setAttr -l on ".wsMirrorAxis";
createNode transform -n "palm_outPos_ofs" -p "master_guide";
	rename -uid "F6F1B2FB-4E39-7E92-531C-D8BB9BE9B167";
	setAttr -cb on ".ro";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
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
	setAttr -l on ".wsMirrorAxis";
createNode transform -n "palm_heelPos_ofs" -p "master_guide";
	rename -uid "D90D5744-48AD-1C3E-C8CC-5398D295274A";
	setAttr -cb on ".ro";
createNode transform -n "palm_heelPos_guide" -p "palm_heelPos_ofs";
	rename -uid "787DB076-48C9-B786-C071-BE9CE7005953";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
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
	setAttr -l on ".wsMirrorAxis";
createNode transform -n "palm_toePos_guide_ofs" -p "master_guide";
	rename -uid "599ADB09-4770-6B46-8E3A-F1B3BB4CD812";
	setAttr -cb on ".ro";
createNode transform -n "palm_toePos_guide" -p "palm_toePos_guide_ofs";
	rename -uid "CA3FADE3-4772-7BB9-CBD5-2FB8F233B024";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 15 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirrorAxis";
createNode transform -n "pv_loc_ofs" -p "master_guide";
	rename -uid "865C3F4F-4D37-87EC-C148-88BB6FFE3A83";
createNode pointConstraint -n "pv_loc_ofs_pointConstraint1" -p "pv_loc_ofs";
	rename -uid "66B0B3AA-4DB2-54A9-175B-7DAD69E5B83F";
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
	setAttr ".rst" -type "double3" 0 49.800000667572021 8.8817841970012543e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "pv_loc" -p "pv_loc_ofs";
	rename -uid "E2799575-486C-9C81-2CD0-55882166B70D";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "C3D1B0F3-491B-F5D6-7163-E4B34BAB547C";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode aimConstraint -n "pv_loc_aimConstraint1" -p "pv_loc";
	rename -uid "7650D5E0-4E12-79D6-BE7D-9790A8652D78";
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
	setAttr ".rsrr" -type "double3" 3.7010090838848158e-13 -89.999999999999631 0 ;
	setAttr -k on ".w0";
createNode transform -n "pvc_guide_ofs" -p "pv_loc";
	rename -uid "9300E3A0-49EE-D1B8-14AD-C693AEACED66";
	setAttr ".t" -type "double3" 35 0 1.0122718478325402e-12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "49C74691-42F4-C3E1-28F2-EA81CCDCB1BE";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	addAttr -ci true -sn "posRatio" -ln "posRatio" -dv 1 -min 0.5 -max 3 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 0 ;
	setAttr -l on ".wsMirrorAxis";
	setAttr -cb on ".posRatio";
createNode transform -n "rtLeg0_toesRoot_guide_ofs" -p "master_guide";
	rename -uid "50CEEC9D-4B14-A334-98BF-F898CF10BE51";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toesRoot_guide" -p "rtLeg0_toesRoot_guide_ofs";
	rename -uid "EC465439-47EA-97C7-948A-D4BFA07F2B84";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode locator -n "toesRoot_guideShape" -p "toesRoot_guide";
	rename -uid "88671F0C-4321-0DA3-408A-B787191BCBA6";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "toesRoot_guide_ofs" -p "toesRoot_guide";
	rename -uid "FFC8CB8C-4196-9981-965B-13A1BA5F7EAE";
createNode transform -n "toe00_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "38D241CB-4092-BAA6-226B-468FF1C4654F";
	setAttr ".t" -type "double3" 4 4.4408920985006262e-16 -13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ZRO";
	rename -uid "1F18F8CF-4D1A-D4A5-1270-7D9ADDDF8E7E";
	setAttr ".t" -type "double3" 7 0 5 ;
createNode transform -n "toe00_3_guide" -p "toe00_2_guide";
	rename -uid "50F30CF7-4C3F-6252-A6B9-D2A79CF929CC";
	setAttr ".t" -type "double3" -3.6000000000000032 -3.5527136788005009e-15 0 ;
createNode transform -n "toe00_4_guide" -p "toe00_3_guide";
	rename -uid "1D0A795D-4416-3DCE-DFD4-8286B9D4D7A5";
	setAttr ".t" -type "double3" -0.99999999999999822 0 -8.8817841970012523e-16 ;
createNode nurbsCurve -n "toe00_4_guideShape" -p "toe00_4_guide";
	rename -uid "B7443EA1-4A08-6A4F-95B9-9FB2E121B472";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.12437849875621501 0.00084578332487638807 4.9670499503295009e-09
		-0.11523441551432251 -0.046816166198504108 4.9670499503295009e-09
		-0.088546915781197499 -0.0873507491264916 4.9670499503295009e-09
		-0.048379082849542503 -0.11458691552079661 4.9670499503295009e-09
		-0.00084574999154250004 -0.1243783320895491 4.9670499503295009e-09
		0.046815999531839993 -0.11523424884765661 4.9670499503295009e-09
		0.087350665793160004 -0.088546832447864113 4.9670499503295009e-09
		0.114586832187465 -0.048378916182876611 4.9670499503295009e-09
		0.12437833208954999 -0.00084579165820786195 4.9670499503295009e-09
		0.1152342488476575 0.046816166198505885 4.9670499503295009e-09
		0.088546749114532516 0.087350749126493377 4.9670499503295009e-09
		0.048378916182877499 0.11458691552079839 4.9670499503295009e-09
		0 0.12437833208955087 0
		-0.046816166198504996 0.11523424884765839 4.9670499503295009e-09
		-0.087350832459825001 0.088546832447865889 4.9670499503295009e-09
		-0.11458699885412998 0.048378916182878387 4.9670499503295009e-09
		-0.12437849875621501 0.00084578332487638807 4.9670499503295009e-09
		-0.1149107488508925 0.00078139999218688821 0.047598666190679997
		-0.087948915787177506 0.00059805666068698821 0.087950832453825012
		-0.047597582857357497 0.00032366333009758823 0.1149132488508675
		0 8.8817841970012523e-16 0.12438124875618749
		0.0475974161906925 -0.00032367499676236181 0.1149132488508675
		0.087948832453844994 -0.00059806832735176179 0.087950832453825012
		0.11491058218422751 -0.0007814116588516619 0.047598666190679997
		0.12437833208954999 -0.00084579165820786195 4.9670499503295009e-09
		0.11491058218422751 -0.0007814116588516619 -0.047598666190679997
		0.087948832453844994 -0.00059806832735176179 -0.087950832453825012
		0.0475974161906925 -0.00032367499676236181 -0.1149132488508675
		0 -5.89309071955733e-09 -0.12438124875618749
		-0.047597582857357497 0.00032366333009758823 -0.1149132488508675
		-0.087948915787177506 0.00059805666068698821 -0.087950832453825012
		-0.1149107488508925 0.00078139999218688821 -0.047598666190679997
		-0.12437849875621501 0.00084578332487638807 4.9670499503295009e-09
		-0.1149107488508925 0.00078139999218688821 0.047598666190679997
		-0.087948915787177506 0.00059805666068698821 0.087950832453825012
		-0.047597582857357497 0.00032366333009758823 0.1149132488508675
		0 8.8817841970012523e-16 0.12438124875618749
		0 -0.047835416188311608 0.11548491551181748
		0 -0.088388332449449103 0.088388332449449991
		0 -0.1154849155118166 0.047835416188312496
		-0.00084574999154250004 -0.1243783320895491 4.9670499503295009e-09
		0 -0.1154849155118166 -0.047835416188312496
		0 -0.088388332449449103 -0.088388332449449991
		0 -0.047835416188311608 -0.11548491551181748
		0 -5.89309071955733e-09 -0.12438124875618749
		0 0.047835416188313384 -0.11548491551181748
		0 0.088388332449450879 -0.088388332449449991
		0 0.11548491551181837 -0.047835416188312496
		0 0.12437833208955087 0
		0 0.11548491551181837 0.047835416188312496
		0 0.088388332449450879 0.088388332449449991
		0 0.047835416188313384 0.11548491551181748
		0 8.8817841970012523e-16 0.12438125019467738
		0 8.8817841970012523e-16 1.1740940491788601
		-0.15181190164227984 8.8817841970012523e-16 1.3259059508211406
		0.15181190164227984 8.8817841970012523e-16 1.3259059508211406
		0 8.8817841970012523e-16 1.1740940491788601
		;
	setAttr ".adot" yes;
createNode transform -n "toe00_1_guide" -p "toe00_2_guide";
	rename -uid "16B3FDEE-461C-AA76-2DA0-D7A19609EF18";
	setAttr ".t" -type "double3" 2.5 0 8 ;
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "C2EAF486-418C-9998-F835-E59E5AA96E71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0 -1.1786183215471499e-08 -0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0 -0.095670832376624992 0.23096983102363497
		0 -0.17677666489889998 0.17677666489889998
		0 -0.23096983102363497 0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0 -0.23096983102363497 -0.095670832376624992
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.095670832376624992 -0.23096983102363497
		0 -1.1786183215471499e-08 -0.24876249751237497
		0 0.095670832376624992 -0.23096983102363497
		0 0.17677666489889998 -0.17677666489889998
		0 0.23096983102363497 -0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 0.095670832376624992
		0 0.17677666489889998 0.17677666489889998
		0 0.095670832376624992 0.23096983102363497
		0 0 0.24876250038935477
		0 0 2.3481880983577201
		-0.30362380328455968 0 2.6518119016422812
		0.30362380328455968 0 2.6518119016422812
		0 0 2.3481880983577201
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "toe00_2_guideShape" -p "toe00_2_guide";
	rename -uid "203A5425-45BF-30C9-2C5E-399785894A88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0 -1.1786183215471499e-08 -0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0 -0.095670832376624992 0.23096983102363497
		0 -0.17677666489889998 0.17677666489889998
		0 -0.23096983102363497 0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0 -0.23096983102363497 -0.095670832376624992
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.095670832376624992 -0.23096983102363497
		0 -1.1786183215471499e-08 -0.24876249751237497
		0 0.095670832376624992 -0.23096983102363497
		0 0.17677666489889998 -0.17677666489889998
		0 0.23096983102363497 -0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 0.095670832376624992
		0 0.17677666489889998 0.17677666489889998
		0 0.095670832376624992 0.23096983102363497
		0 0 0.24876250038935477
		0 0 2.3481880983577201
		-0.30362380328455968 0 2.6518119016422812
		0.30362380328455968 0 2.6518119016422812
		0 0 2.3481880983577201
		;
	setAttr ".adot" yes;
createNode transform -n "toe01_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "4881AFDD-41C3-3A41-4160-E5BF17DA6E70";
	setAttr ".t" -type "double3" 2 4.4408920985006262e-16 -13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ZRO";
	rename -uid "6A57E2EE-4D34-16C8-8C0B-34951FE37F34";
	setAttr ".t" -type "double3" 7 0 5 ;
createNode transform -n "toe01_3_guide" -p "toe01_2_guide";
	rename -uid "01229DEB-469C-48B3-BABD-87BE2E652336";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe01_4_guide" -p "toe01_3_guide";
	rename -uid "ABB2C348-4D83-A481-5D90-0F8B9EEC6B5F";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe01_5_guide" -p "toe01_4_guide";
	rename -uid "5EBFDF14-4B8D-81B3-886A-C7A21D91B5BD";
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe01_1_guide" -p "toe01_2_guide";
	rename -uid "03AD187F-4511-9FA3-15F0-B0B05C4EA0A0";
	setAttr ".t" -type "double3" 2.5 0 8 ;
createNode transform -n "toe02_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "47846E8F-4970-A27D-C661-5A830597FD2B";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 -13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ZRO";
	rename -uid "2FF1A1F6-4EE4-E684-F501-569C453B772B";
	setAttr ".t" -type "double3" 7 0 5 ;
createNode transform -n "toe02_3_guide" -p "toe02_2_guide";
	rename -uid "E4179C95-444F-0CD7-8EAA-D79DA35821E9";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe02_4_guide" -p "toe02_3_guide";
	rename -uid "5BA81D9A-462C-7654-E94D-94A5F7E74D43";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe02_5_guide" -p "toe02_4_guide";
	rename -uid "BFE91BF9-48C2-FDB2-E3BF-78909C80AE87";
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe02_1_guide" -p "toe02_2_guide";
	rename -uid "EAE81E93-48FE-E4F7-48D3-0DB04D8F6B34";
	setAttr ".t" -type "double3" 2.5 0 8 ;
createNode transform -n "toe03_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "2213CD3F-47BB-A2FF-7DC2-B88D2723E09E";
	setAttr ".t" -type "double3" -2 4.4408920985006262e-16 -13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ZRO";
	rename -uid "64B21917-4DED-51A7-66A4-17B1E7F702D5";
	setAttr ".t" -type "double3" 7 0 5 ;
createNode transform -n "toe03_3_guide" -p "toe03_2_guide";
	rename -uid "A199F249-4BCF-6F81-9B8C-E2BEBA199F29";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe03_4_guide" -p "toe03_3_guide";
	rename -uid "F338A7DA-4D9D-ED76-0B3B-CC83C1787A17";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe03_5_guide" -p "toe03_4_guide";
	rename -uid "CC121BFE-477E-2C68-21DE-8A8C4B15C346";
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe03_1_guide" -p "toe03_2_guide";
	rename -uid "E123EE94-4601-C20B-6FAA-74BCF49484F2";
	setAttr ".t" -type "double3" 2.5 0 8 ;
createNode transform -n "toe04_2_guide_ZRO" -p "toesRoot_guide_ofs";
	rename -uid "E1E8FCFD-4521-CA5F-0FE7-5285195FF850";
	setAttr ".t" -type "double3" -4 4.4408920985006262e-16 -13 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ZRO";
	rename -uid "0949DCC8-403B-A1FD-F12E-39A891E01E35";
	setAttr ".t" -type "double3" 7 0 5 ;
createNode transform -n "toe04_3_guide" -p "toe04_2_guide";
	rename -uid "23BB2041-47D1-B7D1-F95F-FDA10F96174E";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
createNode transform -n "toe04_4_guide" -p "toe04_3_guide";
	rename -uid "09C039B0-40C7-6FC1-C8FB-5A9EA762EE2F";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "toe04_5_guide" -p "toe04_4_guide";
	rename -uid "97F7C493-4F7F-13B4-1C0A-909CC6E35C3D";
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "toe04_1_guide" -p "toe04_2_guide";
	rename -uid "A554E131-4E18-F49A-1F52-6EBE38985F9D";
	setAttr ".t" -type "double3" 2.5 0 8 ;
createNode pointConstraint -n "toesRoot_guide_pointConstraint1" -p "toesRoot_guide";
	rename -uid "70D84A06-43D7-F235-78AE-6F97B61260FD";
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
	setAttr ".rst" -type "double3" 0 -7.6999998092651367 -2.7193348513854282e-15 ;
	setAttr -k on ".w0";
createNode transform -n "digit_guide_ofs" -p "master_guide";
	rename -uid "EF522AC3-43DA-DAA0-C96D-CCAFAE0F95CB";
	setAttr ".t" -type "double3" 1.4111453853770693e-14 5 5 ;
	setAttr ".r" -type "double3" 0 90 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
createNode transform -n "digit_guide" -p "digit_guide_ofs";
	rename -uid "F31A1EB4-4955-D46D-96E0-6E96553D6829";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 1.8318679906315083e-15 0 1.1796119636642288e-15 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -2.1895288505075267e-47 3.9443045261050608e-31 ;
createNode nurbsCurve -n "digit_guideShape" -p "digit_guide";
	rename -uid "3F0DF56C-462A-7467-B299-1B87E25A3EC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.9950499900494999 1.4210854715202004e-14 8.8817841970012523e-16
		0.92387932409453988 0.38268332950651418 8.8817841970012523e-16
		0.70710665959559993 0.70710665959561414 8.8817841970012523e-16
		0.38268332950649997 0.92387932409455409 8.8817841970012523e-16
		0 0.9950266567164141 8.8817841970012523e-16
		-0.38268332950649997 0.92387932409455409 8.8817841970012523e-16
		-0.70710665959559993 0.70710665959561414 8.8817841970012523e-16
		-0.92387932409453988 0.38268332950651418 8.8817841970012523e-16
		-0.9950499900494999 -4.7144718651031283e-08 8.8817841970012523e-16
		-0.92387932409453988 -0.38268332950648576 8.8817841970012523e-16
		-0.70710665959559993 -0.70710665959558572 8.8817841970012523e-16
		-0.38268332950649997 -0.92387932409452567 8.8817841970012523e-16
		3.9736399602636007e-08 -0.99502665671638568 -0.0067659999323391121
		0.38268332950649997 -0.92387932409452567 8.8817841970012523e-16
		0.70710665959559993 -0.70710665959558572 8.8817841970012523e-16
		0.92387932409453988 -0.38268332950648576 8.8817841970012523e-16
		0.9950499900494999 1.4210854715202004e-14 8.8817841970012523e-16
		0.91930599080693998 0.0025893066407878113 -0.38078066285885909
		0.7036066596306001 0.0047844532855030111 -0.70359132629741916
		0.38078932952543998 0.0062511999375022111 -0.91928599080713913
		3.9736399602636007e-08 0.00676626659901821 -0.9950279900497192
		-0.38078932952543998 0.0062511999375022111 -0.91928599080713913
		-0.7036066596306001 0.0047844532855030111 -0.70359132629741916
		-0.91930599080693998 0.0025893066407878113 -0.38078066285885909
		-0.9950499900494999 -4.7144718651031283e-08 8.8817841970012523e-16
		-0.91930599080693998 -0.002589399974091789 0.38077932952554089
		-0.7036066596306001 -0.0047845466188069889 0.70359065963076084
		-0.38078932952543998 -0.0062512932708061898 0.91928465747382093
		3.9736399602636007e-08 -0.0067663332656557901 0.99502665671640078
		0.38078932952543998 -0.0062512932708061898 0.91928465747382093
		0.7036066596306001 -0.0047845466188069889 0.70359065963076084
		0.91930599080693998 -0.002589399974091789 0.38077932952554089
		0.9950499900494999 1.4210854715202004e-14 8.8817841970012523e-16
		0.91930599080693998 0.0025893066407878113 -0.38078066285885909
		0.7036066596306001 0.0047844532855030111 -0.70359132629741916
		0.38078932952543998 0.0062511999375022111 -0.91928599080713913
		3.9736399602636007e-08 0.00676626659901821 -0.9950279900497192
		3.9736399602636007e-08 0.3870313294630342 -0.91669599083303899
		3.9736399602636007e-08 0.70837465958293422 -0.69880665967859912
		3.9736399602636007e-08 0.92187399078127419 -0.37452932958803908
		0 0.9950266567164141 8.8817841970012523e-16
		3.9736399602636007e-08 0.91669532416639421 0.38703132946302088
		3.9736399602636007e-08 0.69880599301195412 0.70837399291626102
		3.9736399602636007e-08 0.37452932958805418 0.92187399078126087
		3.9736399602636007e-08 -0.0067663332656557901 0.99502665671640078
		3.9736399602636007e-08 -0.38703132946300578 0.9166946574997209
		3.9736399602636007e-08 -0.7083746595829058 0.69880532634528092
		3.9736399602636007e-08 -0.92187399078124577 0.37452799625472083
		3.9736399602636007e-08 -0.99502665671638568 -0.0067659999323391121
		3.9736399602636007e-08 -0.91669532416636579 -0.38703266279633913
		3.9736399602636007e-08 -0.6988059930119257 -0.70837532624957911
		3.9736399602636007e-08 -0.37452932958802576 -0.92187532411457918
		3.9736399602636007e-08 0.00676626659901821 -0.9950279900497192
		;
	setAttr ".adot" yes;
createNode aimConstraint -n "digit_guide_aimConstraint1" -p "digit_guide";
	rename -uid "E507EEEE-4324-041A-9140-7685701370AE";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" -90.000000000000014 -4.0179021204161165 1.1119513925209414e-13 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "foot_guide_quadShape1" -p "master_guide";
	rename -uid "71DFFDEE-48B0-5CE8-8895-F58C3065791B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
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
	rename -uid "387C8921-4CD0-9D0D-ECBC-3E8A3C48EB6E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode transform -n "line_01" -p "line_grp";
	rename -uid "AC1A4514-4993-6855-9329-4B8C7607E399";
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
	rename -uid "D86C0DA4-4EB3-4431-17CC-9EB165A4FAEF";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 90 60
		-10 73 65
		;
	setAttr ".adot" yes;
createNode transform -n "line_02" -p "line_grp";
	rename -uid "15754EEC-4A53-1FE8-7670-13BB320727F7";
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
	rename -uid "67168DC9-40B7-2108-AAE3-D9BC2E069150";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 73 65
		-10 44 52
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp";
	rename -uid "A1C4D8D6-43EC-B69C-A8EB-F5ADDAEC8FC5";
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
	rename -uid "9C1B39E1-4654-706E-F6A7-6BB064FBD417";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 44 52
		-10 15 57
		;
	setAttr ".adot" yes;
createNode transform -n "line_05" -p "line_grp";
	rename -uid "67CAC1B9-4B7A-6DC7-09F4-689609131847";
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
createNode nurbsCurve -n "line_05Shape" -p "line_05";
	rename -uid "B45D5E36-4230-4388-49C7-91B0E3A6BFCB";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5.0000000000000018 67
		-10 -3.9443045261050586e-31 69
		;
	setAttr ".adot" yes;
createNode transform -n "line_06" -p "line_grp";
	rename -uid "4E4281A0-47B9-356E-C9D9-2186948922AE";
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
	rename -uid "2DB9E9E3-4AC0-C613-CEEF-C1AC709762D8";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.9999999999989608 43.999999999999993 26
		-10 44 52
		;
	setAttr ".adot" yes;
createNode transform -n "line_32" -p "line_grp";
	rename -uid "743A8BF2-4BEF-04F3-6D44-13AC433A0C32";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "line_32";
	rename -uid "9BE19C0F-4121-83D1-011F-C79634FAF5F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5.0000000000000018 67
		-9.9999999999999858 5.0000000000000009 60
		;
createNode transform -n "line_33" -p "line_grp";
	rename -uid "1EC15A4F-49FB-50DD-7111-14BFA525C978";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "line_33";
	rename -uid "56BFFB0D-4510-F42B-12BB-3F8D3E6E3951";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.9999999999999858 5.0000000000000009 60
		-10 15 57
		;
createNode transform -n "line_grp2" -p "module_grp";
	rename -uid "B3058E7A-4D61-C6B8-45C1-8581EE1C6BBC";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "line_09" -p "line_grp2";
	rename -uid "3313D84B-46E6-2327-0BF0-A1B8576E34D3";
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
	rename -uid "9149E01A-4E47-DBA3-8AA0-43A6266E2096";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-6 13 58.5
		-6 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp2";
	rename -uid "1AEEE118-4AD9-0A0B-B73C-0DB5E5F10E08";
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
	rename -uid "15542A96-4CB7-7B02-78C3-9A8285E52972";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-6 5 61
		-5.9999999999999964 5 64.600000000000009
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "line_grp2";
	rename -uid "958BB7C9-4A4D-4BCB-988D-2DAECF11DA54";
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
	rename -uid "60B7CD03-4A2F-E763-C958-A2ADF43DCFB0";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-5.9999999999999964 5 64.600000000000009
		-5.9999999999999964 4.9999999999999991 65.600000000000009
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp2";
	rename -uid "B72D265A-4976-888A-F9DC-18A2C7E2DC55";
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
	rename -uid "E3CFBD8B-41D4-DD01-FF5B-A99FCB2D8913";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 13 58.5
		-8 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp2";
	rename -uid "4ED6C8C5-4A37-662C-1BF8-86AEEC56B8BD";
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
	rename -uid "84E72592-415A-B7B2-44C0-9189E1203DA9";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 5 61
		-8 5.0000000000000009 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp2";
	rename -uid "F17A1B2E-4413-15F1-5697-338C483232EA";
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
	rename -uid "04B1BE14-41CE-1BF7-4566-1C9B0DFD9AD2";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 5.0000000000000009 67
		-8 1.2412295168563667 68.368080573302677
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp2";
	rename -uid "FD9A4EFA-4078-2944-3214-949ED1DC8F75";
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
	rename -uid "DE50632F-47B6-032C-4C4D-BF90A09FDA7C";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 1.2412295168563667 68.368080573302677
		-8 1.9252698035077045 70.247465814874488
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "line_grp2";
	rename -uid "E2D021AA-496C-F85F-589D-72B44001BCA3";
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
	rename -uid "10740F3C-42CD-42F3-B41F-FA89AACD491C";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 13 58.5
		-10 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp2";
	rename -uid "3176643B-4E67-A665-DDBC-0CB493FC60A8";
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
	rename -uid "7691DFBF-4B0F-0856-7E1C-C88B421BBC03";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5 61
		-10 5.0000000000000009 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp2";
	rename -uid "1204E648-47BF-B89B-9266-87B4ABDDD6AC";
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
	rename -uid "5BAC8AB3-42C8-8414-4643-52AE030CEE38";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5.0000000000000009 67
		-10 1.2412295168563667 68.368080573302677
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp2";
	rename -uid "D78D039F-477A-E20F-BF28-D68C2B264C7B";
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
	rename -uid "8364F973-453B-6393-C8D8-979EE7D9DA47";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 1.2412295168563667 68.368080573302677
		-10 1.9252698035077045 70.247465814874488
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp2";
	rename -uid "39A27DAA-4A16-312F-B6C1-1C9A2D5CAF62";
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
	rename -uid "94C99635-492F-D04D-F00F-BD9E5F5E43AD";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 13 58.5
		-12 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_21" -p "line_grp2";
	rename -uid "167D76FE-4340-27BC-197E-1C935CA6E86C";
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
	rename -uid "A3EFC72C-4C28-53E0-B37C-BEA3ED6C0EEF";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 5 61
		-12 5.0000000000000009 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp2";
	rename -uid "B629BB51-4A46-563C-4893-3789E0E23552";
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
	rename -uid "4BE75461-4569-B4D3-6825-A49E2A2A9451";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 5.0000000000000009 67
		-12 1.2412295168563667 68.368080573302677
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp2";
	rename -uid "0094B401-4BFF-85C0-C701-A39BCAD56D26";
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
	rename -uid "471D2201-442D-5F94-A627-8889944A4C7B";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 1.2412295168563667 68.368080573302677
		-12 1.9252698035077045 70.247465814874488
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp2";
	rename -uid "8D0F1B6E-40B7-9786-50F8-3B8EF9F34868";
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
	rename -uid "944B8622-44DB-A0DF-0011-4D881C9883CB";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 13 58.5
		-14 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_25" -p "line_grp2";
	rename -uid "16C4A2B6-4A4D-69A2-8DEF-A6A7CA7A81C6";
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
	rename -uid "E68B9CCA-45D5-435B-1098-1C85AB3545AF";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 5 61
		-14 5.0000000000000009 67
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "line_grp2";
	rename -uid "BEBC3FC6-4EFC-7AA5-C5B2-D4839B4AD18C";
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
	rename -uid "9C61B5CE-4030-018A-40E7-F6B6E4F62AFC";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 5.0000000000000009 67
		-14 1.2412295168563667 68.368080573302677
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "line_grp2";
	rename -uid "21859952-4D30-2FB6-2CB8-8EBA22348A56";
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
	rename -uid "65AB61CE-486F-5450-B9EB-7998BF6EACA7";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 1.2412295168563667 68.368080573302677
		-14 1.9252698035077045 70.247465814874488
		;
	setAttr ".adot" yes;
createNode transform -n "line_28" -p "line_grp2";
	rename -uid "5C3A55A4-40B9-F320-5275-C2A8DAA1DDBD";
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
	rename -uid "F7FEF743-46B9-5CA4-E5F4-CEB079A5AF6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-6 5 61
		-8 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_31" -p "line_grp2";
	rename -uid "5C6E91BB-4DAC-B596-2700-7F8E4B8F874F";
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
	rename -uid "63F422AF-42B8-D896-FB8F-E09FEDD0C21E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 5 61
		-14 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_29" -p "line_grp2";
	rename -uid "26ABE0C0-46E5-3E52-3890-E791A2589C0D";
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
	rename -uid "1546D2D6-4F1A-BEE1-294B-F4B6C7C60E0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 5 61
		-10 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_30" -p "line_grp2";
	rename -uid "0A6732F0-4BFC-BDFD-0E2D-86ACD016F74B";
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
	rename -uid "7BA561D3-4781-8A6E-5443-29955091AF5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5 61
		-12 5 61
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp3" -p "module_grp";
	rename -uid "E4B6023D-490E-8702-026B-989F568BA5AC";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "line_07" -p "line_grp3";
	rename -uid "9059EF9E-4FFA-28F6-A072-A09F602F859F";
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
	rename -uid "54F1862C-42E5-370F-330F-D8A2F52F7324";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-5 39.072698768715064 52.84953472229143
		-5.0000000000000018 15 57
		;
	setAttr ".adot" yes;
createNode transform -n "line_08" -p "line_grp3";
	rename -uid "186A9654-4DDC-8966-775C-728A3F4F5907";
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
	rename -uid "67A93812-49D6-D60D-9950-DC9E47DF5E21";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 39.072698768715064 52.84953472229143
		-14.999999999999998 15 57
		;
	setAttr ".adot" yes;
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 84.958754512880319 72.756050596959753 129.84917789221285 ;
	setAttr ".r" -type "double3" -13.538352728918197 47.400000000044571 1.174718421071051e-15 ;
	setAttr -cb on ".ro";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 143.58431533529483;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -10.000000000000007 47.199001198009988 -33.853144678733003 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C26C709E-427B-9FAF-006E-479957AA5F62";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "topShape" -p "top";
	rename -uid "A557BBCA-4E3F-918D-EA2B-D0824D7F4CBC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3AC53A90-4787-A00A-10EE-5BB41D967471";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
	setAttr -cb on ".ro";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EBE1F472-4B19-95B5-7032-02B7F660A422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "998302DF-4A25-D2FE-09B0-24A5C61EAE93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1004.9334267860332 45.159939148423504 56.473882813369485 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35324118-40AF-2D58-3D90-F6B12F0BE94B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1004.9334267860332;
	setAttr ".ow" 97.168351870469948;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -7.1054273576010019e-15 45.159939148423504 56.473882813369485 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "upr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "palm_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "ball_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "tip_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "radius_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape" "palm_inPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_3_guide|toe00_4_guide|toe00_4_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe04_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_1_guide|toe00_1_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe04_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|rtLeg0_toesRoot_guide_ofs|toesRoot_guide|toesRoot_guide_ofs|toe00_2_guide_ZRO|toe00_2_guide|toe00_2_guideShape" "toe02_2_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FF1CFCA9-41F5-DC74-B437-3E8D04856141";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1E849A06-4890-FD86-E6EC-298B3B3F351A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B83463C1-4410-B90D-7E8D-E8B1CD97CF4A";
createNode displayLayerManager -n "layerManager";
	rename -uid "EA775D2C-4634-694B-0BA1-8BBD60819E9A";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5949F291-4F1F-4E85-7653-1EAEC7E9DF2B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "47ABDCF5-4400-C307-437A-E4AF35DAB19B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "93E347DE-4858-8D79-1C7B-559212A19E13";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 635\n            -height 736\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 1\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 635\n            -height 736\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 635\\n    -height 736\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 635\\n    -height 736\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode nodeGraphEditorInfo -n "colorBox_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4010B80A-449A-568F-92CC-1E8D1A5342ED";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 1095.2380517172453 44.047617297323995 ;
createNode groupId -n "groupId4037";
	rename -uid "639C8ADB-443D-6FF0-EB9E-D29D628BC740";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4044";
	rename -uid "88A93BA4-4613-1F0A-C4DA-A28C837BDEE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4051";
	rename -uid "F6BC1B24-4670-3773-043C-878CCC57A5BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4058";
	rename -uid "241FBB44-45AA-6C38-5C6B-B2B77D05E722";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4065";
	rename -uid "0BBA4140-4634-7E9E-A2A5-349B60617842";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4072";
	rename -uid "718B6B32-4213-4CBF-38BB-079C9DC787D0";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "DCM_1";
	rename -uid "F6B0A89F-4678-0F46-9153-28AF1D64E9BD";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "3FDF4CDC-484F-53E9-D8FA-CB9C5ECC5552";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "16AE2D56-4CAE-99FE-0D1D-10899A1F664C";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "C891FBEE-430A-24DE-55F5-63B572AEADCE";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "3FE23FC7-4786-6B27-1AC1-6B86F5586724";
createNode decomposeMatrix -n "DCM_6";
	rename -uid "4867C1A8-4A2C-AA81-32F6-DDA0CACF9CAD";
createNode decomposeMatrix -n "DCM_7";
	rename -uid "3BC52E99-4DA9-D467-BD0C-AA9C61040151";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4AFCB698-4900-FEFE-7582-53A84CA05E8D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 711875.31046600419 -8105.1680867565037 ;
	setAttr ".tgi[0].vh" -type "double2" 728322.85143071087 7386.1204962812672 ;
createNode nodeGraphEditorInfo -n "rt_toes_lf_leg_guide_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "7B9DE87B-4EFB-9905-75F3-1D91DAAFA556";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 1095.2380517172453 44.047617297323995 ;
createNode groupId -n "rt_toes_groupId4037";
	rename -uid "3E1A39D5-4E32-D5FB-80B1-FBB0C20E5F0E";
	setAttr ".ihi" 0;
createNode groupId -n "rt_toes_groupId4044";
	rename -uid "911962DB-4661-EAB7-94CF-5CB49B002834";
	setAttr ".ihi" 0;
createNode groupId -n "rt_toes_groupId4051";
	rename -uid "E470A82B-4465-8878-F24B-02AF25CB70C2";
	setAttr ".ihi" 0;
createNode groupId -n "rt_toes_groupId4058";
	rename -uid "29DB12BF-4AF1-3405-642C-189CDD1BC084";
	setAttr ".ihi" 0;
createNode groupId -n "rt_toes_groupId4065";
	rename -uid "6470537E-4E1C-BF75-42E0-96BEC2A0422A";
	setAttr ".ihi" 0;
createNode groupId -n "rt_toes_groupId4072";
	rename -uid "5544EE10-4182-BEE0-E24C-4180091A4E4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4086";
	rename -uid "4FBA7242-48F8-4EA2-EA77-A09733B1465E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4093";
	rename -uid "EAC78D3A-4C2B-D3E1-1F1C-24A023EDC410";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4100";
	rename -uid "D8540721-482B-89C5-D840-C09C656932FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4107";
	rename -uid "011459E8-462F-C00E-6D04-3C86701557B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4121";
	rename -uid "2258F13E-4B5B-DC72-B09A-4A886E491CE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4128";
	rename -uid "E6F9DE9A-466D-5487-3D07-6895EE5FCEFA";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "737597AA-41FC-89B0-6513-75B2C536AB88";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "480D812A-4F2D-487A-93BA-1696498A4D93";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "rt_toes_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "9127B06B-48C1-3D95-9991-B49993E95C48";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -4538952.8537142342 -1211.7321493162331 ;
	setAttr ".tgi[0].vh" -type "double2" -4532457.8801846411 2561.732095672055 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "CDD7791E-4131-7580-AECF-FE80B8E96760";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "DCM_8";
	rename -uid "B975ABD7-4D41-FD7A-464D-D4B37605ED22";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "BA6AEEF0-4B4B-4C80-2018-1E8475EA8DC5";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "932159D2-400E-A5D9-4ED3-7D9200A3195E";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "BDBD74B5-4DAF-8DA2-B863-17B3434C72C9";
createNode decomposeMatrix -n "DCM_12";
	rename -uid "DA89C2F9-4086-95E1-2B4C-CCA6161AFAB0";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "FF8A6770-4FAF-401A-146F-4A9C81CAC1D4";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "A4545839-4CB9-D366-2FEF-21BEEA8B7E0E";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "DA9FE65A-4C00-01AB-D255-528014077555";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "73CED61A-4D55-1210-7D89-7AACE1F53A64";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "C56D5A4B-4ABE-9388-298A-3096A48EBBF1";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "907911A0-499E-A41B-5CFC-9387422AC728";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "E58A69CE-4B51-6A73-C8F1-E5BA9E0DE67A";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "BF09D6D1-436F-022F-F5FB-9E94289F4AE3";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "FF226F3A-42EE-CAE0-738F-4FBDF548E017";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "F20BB090-47FA-B74E-318A-389781387EBC";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "4F65A32A-4FDE-96F5-C790-3AA8B6D08EBB";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "A5A4D58F-4CDF-095A-3182-20862CFDF653";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "76CEAD7A-40ED-4643-7C5C-B984F3EA3252";
createNode decomposeMatrix -n "DCM_26";
	rename -uid "08C22A7E-4AD4-288A-FBDC-2B93BC91296F";
createNode decomposeMatrix -n "DCM_27";
	rename -uid "192A78DA-43C2-DE44-99B2-1FB8CB93D504";
createNode decomposeMatrix -n "DCM_28";
	rename -uid "422F560B-49A0-6854-1F20-F487E74F14BC";
createNode decomposeMatrix -n "DCM_29";
	rename -uid "70431A66-4957-EC2B-CBDD-EB8C9C6368F4";
createNode decomposeMatrix -n "DCM_30";
	rename -uid "55D0F483-445E-8BA1-9460-9DAC0864B1AB";
createNode decomposeMatrix -n "DCM_31";
	rename -uid "D77B4938-42DC-FBFA-4273-B99F85B9644B";
createNode decomposeMatrix -n "DCM_32";
	rename -uid "C4DD018B-4F06-834D-8B40-97AD2A8C411F";
createNode decomposeMatrix -n "DCM_33";
	rename -uid "78C8B351-4395-FD32-8000-D9BC1D5CBD70";
createNode decomposeMatrix -n "DCM_34";
	rename -uid "EFB628D3-4C1D-07E8-A775-61A45827CD66";
createNode decomposeMatrix -n "DCM_35";
	rename -uid "96B3D945-44E5-E684-1A9D-0182FF10E7F6";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "FA1615E6-4393-49B9-D2E7-209B368FDD78";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -70.424861433170349 -354.60320864751259 ;
	setAttr ".tgi[0].vh" -type "double2" 871.42960960327241 162.6230528345788 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -25.079832077026367;
	setAttr ".tgi[0].ni[0].y" -60.530815124511719;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 284.70867919921875;
	setAttr ".tgi[0].ni[1].y" 14.708683013916016;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" 610.15753173828125;
	setAttr ".tgi[0].ni[2].y" 37.196781158447266;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 630;
	setAttr ".tgi[0].ni[3].y" -161.42857360839844;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -14.497198104858398;
	setAttr ".tgi[0].ni[4].y" 68.677169799804688;
	setAttr ".tgi[0].ni[4].nvs" 18304;
createNode decomposeMatrix -n "DCM_36";
	rename -uid "B596337F-45DA-B34A-A388-0380B09FB43C";
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
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr -s 16 ".hyp";
	setAttr ".hyp[83065].isc" yes;
	setAttr ".hyp[83127].isc" yes;
	setAttr ".hyp[83128].isc" yes;
	setAttr ".hyp[83153].isc" yes;
	setAttr ".hyp[83158].isc" yes;
	setAttr ".hyp[83161].isc" yes;
	setAttr ".hyp[83162].isc" yes;
	setAttr ".hyp[83163].isc" yes;
	setAttr ".hyp[83164].isc" yes;
	setAttr ".hyp[83166].isc" yes;
	setAttr ".hyp[83167].isc" yes;
	setAttr ".hyp[83168].isc" yes;
	setAttr ".hyp[83169].isc" yes;
	setAttr ".hyp[84921].isc" yes;
	setAttr ".hyp[84922].isc" yes;
	setAttr ".hyp[84968].isc" yes;
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
connectAttr "upr_guide.t" "lwr_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "lwr_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "lwr_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "lwr_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "lwr_guide_ofs_pointConstraint1.w0" "lwr_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "palm_guide.t" "lwr_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "palm_guide.rp" "lwr_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "palm_guide.rpt" "lwr_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "palm_guide.pm" "lwr_guide_ofs_pointConstraint1.tg[1].tpm";
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
connectAttr "master_guide.patellaBone" "patella_guide.v" -l on;
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
connectAttr "tip_guide.wm" "ball_guide_aimConstraint1.wum";
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
connectAttr "DCM_1.ot" "line_01Shape.cp[0]";
connectAttr "DCM_2.ot" "line_01Shape.cp[1]";
connectAttr "DCM_2.ot" "line_02Shape.cp[0]";
connectAttr "DCM_3.ot" "line_02Shape.cp[1]";
connectAttr "DCM_3.ot" "line_03Shape.cp[0]";
connectAttr "DCM_4.ot" "line_03Shape.cp[1]";
connectAttr "DCM_5.ot" "line_05Shape.cp[0]";
connectAttr "DCM_6.ot" "line_05Shape.cp[1]";
connectAttr "DCM_7.ot" "line_06Shape.cp[0]";
connectAttr "DCM_3.ot" "line_06Shape.cp[1]";
connectAttr "DCM_5.ot" "curveShape1.cp[0]";
connectAttr "DCM_36.ot" "curveShape1.cp[1]";
connectAttr "DCM_36.ot" "curveShape2.cp[0]";
connectAttr "DCM_4.ot" "curveShape2.cp[1]";
connectAttr "master_guide.toeBones" "line_grp2.v";
connectAttr "DCM_12.ot" "line_09Shape.cp[0]";
connectAttr "DCM_13.ot" "line_09Shape.cp[1]";
connectAttr "DCM_13.ot" "line_10Shape.cp[0]";
connectAttr "DCM_14.ot" "line_10Shape.cp[1]";
connectAttr "DCM_14.ot" "line_11Shape.cp[0]";
connectAttr "DCM_15.ot" "line_11Shape.cp[1]";
connectAttr "DCM_16.ot" "line_12Shape.cp[0]";
connectAttr "DCM_17.ot" "line_12Shape.cp[1]";
connectAttr "DCM_17.ot" "line_13Shape.cp[0]";
connectAttr "DCM_18.ot" "line_13Shape.cp[1]";
connectAttr "DCM_18.ot" "line_14Shape.cp[0]";
connectAttr "DCM_19.ot" "line_14Shape.cp[1]";
connectAttr "DCM_19.ot" "line_15Shape.cp[0]";
connectAttr "DCM_20.ot" "line_15Shape.cp[1]";
connectAttr "DCM_21.ot" "line_16Shape.cp[0]";
connectAttr "DCM_22.ot" "line_16Shape.cp[1]";
connectAttr "DCM_22.ot" "line_17Shape.cp[0]";
connectAttr "DCM_23.ot" "line_17Shape.cp[1]";
connectAttr "DCM_23.ot" "line_18Shape.cp[0]";
connectAttr "DCM_24.ot" "line_18Shape.cp[1]";
connectAttr "DCM_24.ot" "line_19Shape.cp[0]";
connectAttr "DCM_25.ot" "line_19Shape.cp[1]";
connectAttr "DCM_26.ot" "line_20Shape.cp[0]";
connectAttr "DCM_27.ot" "line_20Shape.cp[1]";
connectAttr "DCM_27.ot" "line_21Shape.cp[0]";
connectAttr "DCM_28.ot" "line_21Shape.cp[1]";
connectAttr "DCM_28.ot" "line_22Shape.cp[0]";
connectAttr "DCM_29.ot" "line_22Shape.cp[1]";
connectAttr "DCM_29.ot" "line_23Shape.cp[0]";
connectAttr "DCM_30.ot" "line_23Shape.cp[1]";
connectAttr "DCM_31.ot" "line_24Shape.cp[0]";
connectAttr "DCM_32.ot" "line_24Shape.cp[1]";
connectAttr "DCM_32.ot" "line_25Shape.cp[0]";
connectAttr "DCM_33.ot" "line_25Shape.cp[1]";
connectAttr "DCM_33.ot" "line_26Shape.cp[0]";
connectAttr "DCM_34.ot" "line_26Shape.cp[1]";
connectAttr "DCM_34.ot" "line_27Shape.cp[0]";
connectAttr "DCM_35.ot" "line_27Shape.cp[1]";
connectAttr "DCM_13.ot" "line_28Shape.cp[0]";
connectAttr "DCM_17.ot" "line_28Shape.cp[1]";
connectAttr "DCM_27.ot" "line_31Shape.cp[0]";
connectAttr "DCM_32.ot" "line_31Shape.cp[1]";
connectAttr "DCM_17.ot" "line_29Shape.cp[0]";
connectAttr "DCM_22.ot" "line_29Shape.cp[1]";
connectAttr "DCM_22.ot" "line_30Shape.cp[0]";
connectAttr "DCM_27.ot" "line_30Shape.cp[1]";
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
connectAttr "ball_guide.wm" "DCM_5.imat";
connectAttr "tip_guide.wm" "DCM_6.imat";
connectAttr "pvc_guide.wm" "DCM_7.imat";
connectAttr "toesRoot_guide.tx" "multiplyDivide1.i1x";
connectAttr "toesRoot_guide.ty" "multiplyDivide1.i1y";
connectAttr "toesRoot_guide.tz" "multiplyDivide1.i1z";
connectAttr "radius_guide.wm" "DCM_8.imat";
connectAttr "radiusEnd_guide.wm" "DCM_9.imat";
connectAttr "ulna_guide.wm" "DCM_10.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_11.imat";
connectAttr "toe00_1_guide.wm" "DCM_12.imat";
connectAttr "toe00_2_guide.wm" "DCM_13.imat";
connectAttr "toe00_3_guide.wm" "DCM_14.imat";
connectAttr "toe00_4_guide.wm" "DCM_15.imat";
connectAttr "toe01_1_guide.wm" "DCM_16.imat";
connectAttr "toe01_2_guide.wm" "DCM_17.imat";
connectAttr "toe01_3_guide.wm" "DCM_18.imat";
connectAttr "toe01_4_guide.wm" "DCM_19.imat";
connectAttr "toe01_5_guide.wm" "DCM_20.imat";
connectAttr "toe02_1_guide.wm" "DCM_21.imat";
connectAttr "toe02_2_guide.wm" "DCM_22.imat";
connectAttr "toe02_3_guide.wm" "DCM_23.imat";
connectAttr "toe02_4_guide.wm" "DCM_24.imat";
connectAttr "toe02_5_guide.wm" "DCM_25.imat";
connectAttr "toe03_1_guide.wm" "DCM_26.imat";
connectAttr "toe03_2_guide.wm" "DCM_27.imat";
connectAttr "toe03_3_guide.wm" "DCM_28.imat";
connectAttr "toe03_4_guide.wm" "DCM_29.imat";
connectAttr "toe03_5_guide.wm" "DCM_30.imat";
connectAttr "toe04_1_guide.wm" "DCM_31.imat";
connectAttr "toe04_2_guide.wm" "DCM_32.imat";
connectAttr "toe04_3_guide.wm" "DCM_33.imat";
connectAttr "toe04_4_guide.wm" "DCM_34.imat";
connectAttr "toe04_5_guide.wm" "DCM_35.imat";
connectAttr "radius_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "radiusEnd_guide_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "radiusEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|patella_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "digit_guide.wm" "DCM_36.imat";
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "line_grp.msg" ":hyperGraphLayout.hyp[83065].dn";
connectAttr "palm_inPos_guide.msg" ":hyperGraphLayout.hyp[83127].dn";
connectAttr "palm_outPos_guide.msg" ":hyperGraphLayout.hyp[83128].dn";
connectAttr "tip_guide.msg" ":hyperGraphLayout.hyp[83153].dn";
connectAttr "palm_guide_ofs.msg" ":hyperGraphLayout.hyp[83158].dn";
connectAttr "tip_guide_ofs.msg" ":hyperGraphLayout.hyp[83161].dn";
connectAttr "ball_guide_ofs.msg" ":hyperGraphLayout.hyp[83162].dn";
connectAttr "palm_inPos_ofs.msg" ":hyperGraphLayout.hyp[83163].dn";
connectAttr "palm_outPos_ofs.msg" ":hyperGraphLayout.hyp[83164].dn";
connectAttr "pv_loc.msg" ":hyperGraphLayout.hyp[83166].dn";
connectAttr "lwr_guide_ofs_pointConstraint1.msg" ":hyperGraphLayout.hyp[83167].dn"
		;
connectAttr "lwr_guide.msg" ":hyperGraphLayout.hyp[83168].dn";
connectAttr "lwr_guide_ofs.msg" ":hyperGraphLayout.hyp[83169].dn";
connectAttr "palm_heelPos_ofs.msg" ":hyperGraphLayout.hyp[84921].dn";
connectAttr "palm_toePos_guide_ofs.msg" ":hyperGraphLayout.hyp[84922].dn";
connectAttr "toesRoot_guide_pointConstraint1.msg" ":hyperGraphLayout.hyp[84968].dn"
		;
// End of rtArmQd.ma
