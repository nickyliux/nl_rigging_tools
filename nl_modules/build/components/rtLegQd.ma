//Maya ASCII 2023 scene
//Name: rtLegQd.ma
//Last modified: Wed, Jul 08, 2026 04:30:58 PM
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
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "246DA102-4DA9-AC01-4349-0C96F3F0F6F4";
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 113.07601784375717 122.04052529498942 124.28715020332272 ;
	setAttr ".r" -type "double3" -24.938352729009125 49.800000000000765 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 177.70626507005636;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -9.9999999999999982 47.111944361380559 20.279851247201488 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C26C709E-427B-9FAF-006E-479957AA5F62";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
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
	setAttr ".t" -type "double3" 4.0829870150503087 57.744327702283229 1001.2298212469492 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EBE1F472-4B19-95B5-7032-02B7F660A422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1030.7043060160258;
	setAttr ".ow" 113.49281191934296;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -10.000000000000007 47.199012198009875 -29.474484769076629 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "998302DF-4A25-D2FE-09B0-24A5C61EAE93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1002.5343167264481 4.8524995485432934 14.028984309656398 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35324118-40AF-2D58-3D90-F6B12F0BE94B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1017.5343167264481;
	setAttr ".ow" 10.495719480012136;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -15.000000000000007 2.7295373222628871 7.3977498776093498 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "master_guide";
	rename -uid "F9A81B29-43EB-067F-B3D9-4B8E3C9B1943";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en "____________" 
		-at "enum";
	addAttr -ci true -sn "built" -ln "built" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "scapulaBone" -ln "scapulaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "carpalFix" -ln "carpalFix" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dualBone" -ln "dualBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeType" -ln "toeType" -min 0 -max 2 -en "None:Mammal:Bird" 
		-at "enum";
	addAttr -ci true -sn "includeMeta" -ln "includeMeta" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeNum" -ln "toeNum" -dv 5 -min 2 -max 5 -at "long";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "hipAutoAim" -ln "hipAutoAim" -dv 0.5 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -min -2 -max 2 -at "double";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -10 0 0 ;
	setAttr -l on -k on ".____________";
	setAttr -cb on ".scapulaBone";
	setAttr -cb on ".patellaBone";
	setAttr -cb on ".carpalFix";
	setAttr -cb on ".dualBone";
	setAttr -cb on ".toeType";
	setAttr -cb on ".includeMeta" yes;
	setAttr -cb on ".toeNum";
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".hipAutoAim";
	setAttr -cb on ".palmAimRatio" 1;
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "LegQd";
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 94 18 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "hip_guide" -p "hip_guide_ofs";
	rename -uid "C6869A0E-45EF-177D-DFB3-C1AA8EA4FC3E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
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
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.55971561940284364 7.2164496600635175e-15 -2.6090241078691179e-15
		0.51968211980317869 0.21525937284741345 -2.6090241078691179e-15
		0.39774749602252496 0.39774749602253218 -2.6090241078691179e-15
		0.21525937284740623 0.5196821198031859 -2.6090241078691179e-15
		0 0.55970249440298225 -2.6090241078691179e-15
		-0.21525937284740623 0.5196821198031859 -2.6090241078691179e-15
		-0.39774749602252496 0.39774749602253218 -2.6090241078691179e-15
		-0.51968211980317869 0.21525937284741345 -2.6090241078691179e-15
		-0.55971561940284364 -2.6518905018361216e-08 -2.6090241078691179e-15
		-0.51968211980317869 -0.21525937284739902 -2.6090241078691179e-15
		-0.39774749602252496 -0.39774749602251774 -2.6090241078691179e-15
		-0.21525937284740623 -0.51968211980317147 -2.6090241078691179e-15
		2.2351724776482751e-08 -0.55970249440296782 -0.0038058749619438595
		0.21525937284740623 -0.51968211980317147 -2.6090241078691179e-15
		0.39774749602252496 -0.39774749602251774 -2.6090241078691179e-15
		0.51968211980317869 -0.21525937284739902 -2.6090241078691179e-15
		0.55971561940284364 7.2164496600635175e-15 -2.6090241078691179e-15
		0.51710961982890369 0.0014564849854423667 -0.21418912285811137
		0.39577874604221253 0.0026912549730946666 -0.39577012104230136
		0.21419399785806001 0.0035162999648442167 -0.51709836982901891
		2.2351724776482751e-08 0.003806024961946966 -0.55970324440297015
		-0.21419399785806001 0.0035162999648442167 -0.51709836982901891
		-0.39577874604221253 0.0026912549730946666 -0.39577012104230136
		-0.51710961982890369 0.0014564849854423667 -0.21418912285811137
		-0.55971561940284364 -2.6518905018361216e-08 -2.6090241078691179e-15
		-0.51710961982890369 -0.0014565374854274085 0.21418837285811365
		-0.39577874604221253 -0.0026913074730797086 0.39576974604229986
		-0.21419399785806001 -0.0035163524648292592 0.51709761982902114
		2.2351724776482751e-08 -0.0038060624619321594 0.55970249440297237
		0.21419399785806001 -0.0035163524648292592 0.51709761982902114
		0.39577874604221253 -0.0026913074730797086 0.39576974604229986
		0.51710961982890369 -0.0014565374854274085 0.21418837285811365
		0.55971561940284364 7.2164496600635175e-15 -2.6090241078691179e-15
		0.51710961982890369 0.0014564849854423667 -0.21418912285811137
		0.39577874604221253 0.0026912549730946666 -0.39577012104230136
		0.21419399785806001 0.0035162999648442167 -0.51709836982901891
		2.2351724776482751e-08 0.003806024961946966 -0.55970324440297015
		2.2351724776482751e-08 0.21770512282295598 -0.51564149484358757
		2.2351724776482751e-08 0.39846074601539971 -0.39307874606921511
		2.2351724776482751e-08 0.51855411981446597 -0.21067274789327511
		0 0.55970249440298225 -2.6090241078691179e-15
		2.2351724776482751e-08 0.51564111984359595 0.21770512282294616
		2.2351724776482751e-08 0.39307837106922339 0.39846037101539367
		2.2351724776482751e-08 0.21067274789327972 0.51855411981445609
		2.2351724776482751e-08 -0.0038060624619321594 0.55970249440297237
		2.2351724776482751e-08 -0.21770512282294155 0.5156407448435899
		2.2351724776482751e-08 -0.39846074601538528 0.39307799606921745
		2.2351724776482751e-08 -0.51855411981445154 0.21067199789327737
		2.2351724776482751e-08 -0.55970249440296782 -0.0038058749619438595
		2.2351724776482751e-08 -0.51564111984358152 -0.21770587282294385
		2.2351724776482751e-08 -0.39307837106920895 -0.39846112101539133
		2.2351724776482751e-08 -0.21067274789326529 -0.51855486981445387
		2.2351724776482751e-08 0.003806024961946966 -0.55970324440297015
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "FDBB4D88-4CFD-F00D-82C0-DC86D56796A9";
	setAttr ".t" -type "double3" 0 85 6 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "upr_guide" -p "upr_guide_ofs";
	rename -uid "B5C7B15F-4E8B-8C8D-4E16-A481C67BBCC3";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
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
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "scap_guide_ofs" -p "upr_guide";
	rename -uid "E20C7250-4042-E45E-7C8D-18BBE1E75CA4";
	setAttr ".t" -type "double3" 3.0000000000000142 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999944 ;
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "48EA90C2-45F7-4333-B462-92BD0860F021";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 0 0 90 ;
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
	setAttr ".t" -type "double3" 0 0 13 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
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
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "patella_guide" -p "lwr_guide";
	rename -uid "B464E39E-4445-4B5B-620A-11833E49C3C4";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012543e-16 ;
	setAttr ".rpt" -type "double3" 4.21462170084871e-17 8.8817841970012523e-16 -1.000533584333026e-18 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 1.9721522630525304e-31 ;
createNode nurbsCurve -n "patella_guideShape" -p "patella_guide";
	rename -uid "84C282AB-483F-665C-173F-1FB4E8C42D42";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 3;
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
createNode nurbsCurve -n "ulna_guideShape" -p "radius_guide";
	rename -uid "3FA56856-4C66-1412-438B-16B6DDCFC9C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 3;
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
	setAttr ".t" -type "double3" 0 20 -1 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "2777BD87-4148-276D-9AEA-CDA4ABC15F94";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
createNode transform -n "carpal_guide" -p "palm_guide";
	rename -uid "50D1594F-4476-FEC2-6C55-679739C56696";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 3 0 1 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006281e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -4.0207158471726087e-16 0 -9.6219237681277527e-17 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -1.9721522630525313e-31 0 ;
createNode nurbsCurve -n "carpal_guideShape" -p "carpal_guide";
	rename -uid "8F33EE3F-418F-EAC1-9568-348631B863DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 3;
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
createNode transform -n "ball_guide_ofs" -p "master_guide";
	rename -uid "AFC6ACE8-49C2-6343-D10B-D995FB21F46F";
	setAttr ".t" -type "double3" 2.0146931650783329e-16 5 12 ;
	setAttr ".r" -type "double3" 3.9756933518293952e-15 0 90.000000000000028 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
createNode transform -n "ball_guide" -p "ball_guide_ofs";
	rename -uid "4881E75D-4BDC-BA9A-2224-299C5DB2B52F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 1.8318679906315083e-15 0 1.1796119636642288e-15 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
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
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tip_guide" -p "tip_guide_ofs";
	rename -uid "05FF854B-48FD-8CFD-1BE2-1298CB99257E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "palm_inPos_ofs" -p "master_guide";
	rename -uid "26550532-446F-6D54-BE99-30AFC5B9CBBB";
createNode transform -n "palm_inPos_guide" -p "palm_inPos_ofs";
	rename -uid "D4E600EC-46C0-7F63-B923-98859A463209";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 6.0000000000000018 0 10 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode nurbsCurve -n "palm_toePos_guideShape" -p "palm_inPos_guide";
	rename -uid "625E9C79-4AA7-792F-D139-7DACE15FCB82";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.37314374626856245 0 0
		0.34645474653545244 0.14350624856493749 0
		0.26516499734834997 0.26516499734834997 0
		0.14350624856493749 0.34645474653545244 0
		0 0.37313499626864999 0
		-0.14350624856493749 0.34645474653545244 0
		-0.26516499734834997 0.26516499734834997 0
		-0.34645474653545244 0.14350624856493749 0
		-0.37314374626856245 -1.7679274823207251e-08 0
		-0.34645474653545244 -0.14350624856493749 0
		-0.26516499734834997 -0.26516499734834997 0
		-0.14350624856493749 -0.34645474653545244 0
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275003
		0.14350624856493749 -0.34645474653545244 0
		0.26516499734834997 -0.26516499734834997 0
		0.34645474653545244 -0.14350624856493749 0
		0.37314374626856245 0 0
		0.34473974655260248 0.00097098999029010015 -0.1427927485720725
		0.26385249736147504 0.0017941699820583001 -0.26384674736153252
		0.14279599857204001 0.0023441999765580002 -0.34473224655267753
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864506
		-0.14279599857204001 0.0023441999765580002 -0.34473224655267753
		-0.26385249736147504 0.0017941699820583001 -0.26384674736153252
		-0.34473974655260248 0.00097098999029010015 -0.1427927485720725
		-0.37314374626856245 -1.7679274823207251e-08 0
		-0.34473974655260248 -0.00097102499028974996 0.14279224857207751
		-0.26385249736147504 -0.0017942049820579499 0.26384649736153498
		-0.14279599857204001 -0.0023442349765576504 0.34473174655268252
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864999
		0.14279599857204001 -0.0023442349765576504 0.34473174655268252
		0.26385249736147504 -0.0017942049820579499 0.26384649736153498
		0.34473974655260248 -0.00097102499028974996 0.14279224857207751
		0.37314374626856245 0 0
		0.34473974655260248 0.00097098999029010015 -0.1427927485720725
		0.26385249736147504 0.0017941699820583001 -0.26384674736153252
		0.14279599857204001 0.0023441999765580002 -0.34473224655267753
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864506
		1.4901149850988502e-08 0.14513674854863251 -0.34376099656238995
		1.4901149850988502e-08 0.26564049734359502 -0.262052497379475
		1.4901149850988502e-08 0.34570274654297251 -0.140448498595515
		0 0.37313499626864999 0
		1.4901149850988502e-08 0.34376074656239253 0.14513674854863251
		1.4901149850988502e-08 0.26205224737947747 0.26564024734359754
		1.4901149850988502e-08 0.140448498595515 0.34570274654297251
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864999
		1.4901149850988502e-08 -0.14513674854863251 0.34376049656239499
		1.4901149850988502e-08 -0.26564049734359502 0.26205199737948004
		1.4901149850988502e-08 -0.34570274654297251 0.14044799859551998
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275003
		1.4901149850988502e-08 -0.34376074656239253 -0.1451372485486275
		1.4901149850988502e-08 -0.26205224737947747 -0.2656407473435925
		1.4901149850988502e-08 -0.140448498595515 -0.34570324654296752
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864506
		;
	setAttr ".adot" yes;
createNode transform -n "palm_outPos_ofs" -p "master_guide";
	rename -uid "F6F1B2FB-4E39-7E92-531C-D8BB9BE9B167";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.9999999999999982 0 10 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_heelPos_ofs" -p "master_guide";
	rename -uid "D90D5744-48AD-1C3E-C8CC-5398D295274A";
createNode transform -n "palm_heelPos_guide" -p "palm_heelPos_ofs";
	rename -uid "787DB076-48C9-B786-C071-BE9CE7005953";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_toePos_guide_ofs" -p "master_guide";
	rename -uid "599ADB09-4770-6B46-8E3A-F1B3BB4CD812";
createNode transform -n "palm_toePos_guide" -p "palm_toePos_guide_ofs";
	rename -uid "CA3FADE3-4772-7BB9-CBD5-2FB8F233B024";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 18 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
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
	setAttr ".t" -type "double3" 45 0 1.0122718478325402e-12 ;
	setAttr ".r" -type "double3" 0 89.999999999999588 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "49C74691-42F4-C3E1-28F2-EA81CCDCB1BE";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "posRatio" -ln "posRatio" -dv 1 -min 0.5 -max 3 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 0 ;
	setAttr -l on ".wsMirror";
	setAttr -cb on ".posRatio";
createNode transform -n "digit_guide_ofs" -p "master_guide";
	rename -uid "EF522AC3-43DA-DAA0-C96D-CCAFAE0F95CB";
	setAttr ".t" -type "double3" 1.4111453853770693e-14 5 5 ;
	setAttr ".r" -type "double3" 0 90 90.000000000000028 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
createNode transform -n "digit_guide" -p "digit_guide_ofs";
	rename -uid "F31A1EB4-4955-D46D-96E0-6E96553D6829";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 1.8318679906315083e-15 0 1.1796119636642288e-15 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -2.1895288505075267e-47 3.9443045261050608e-31 ;
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
createNode transform -n "toe_guide_grp" -p "master_guide";
	rename -uid "405EC980-4873-BE07-B654-55ACF9D9FF65";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toe_main_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "DFAD4A94-4518-CE5A-86E1-04B5FFBCB146";
	setAttr ".t" -type "double3" 0 0 -5 ;
createNode transform -n "toeMain_guide" -p "toe_main_2_guide_ofs";
	rename -uid "96B82D0D-4224-6AE2-F9A9-4CBC6A3181BE";
	setAttr ".t" -type "double3" 0 -5 0 ;
createNode transform -n "toe2_2_guide_ofs" -p "toeMain_guide";
	rename -uid "1DAFA6CF-44F5-0333-2806-7CBEB14C1480";
createNode transform -n "toe2_2_guide" -p "toe2_2_guide_ofs";
	rename -uid "C6E5F714-4695-EF41-D9B5-7DA9AF9A1D94";
createNode transform -n "toe2_3_guide_ofs" -p "toe2_2_guide";
	rename -uid "3565BBD0-42DB-CB02-FEF7-5A83EFFD3A21";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 5.3290705182007514e-15 -7 ;
createNode transform -n "toe2_3_guide" -p "toe2_3_guide_ofs";
	rename -uid "2DC645B9-45F7-EDFD-0F74-BA8147295724";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe2_4_guide_ofs" -p "toe2_3_guide";
	rename -uid "80CA17D6-4C30-31AF-1299-7EA298364194";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 0 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe2_4_guide" -p "toe2_4_guide_ofs";
	rename -uid "D98A424E-4BDB-3933-95A5-62B67DF1CF7E";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe2_5_guide_ofs" -p "toe2_4_guide";
	rename -uid "8EC1B4D3-4C7F-0526-ADD3-E78900402A12";
	setAttr ".t" -type "double3" 0 4.4408920985006281e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe2_5_guide" -p "toe2_5_guide_ofs";
	rename -uid "6A902F4F-4B58-F837-F9C9-988005CF7EC3";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode nurbsCurve -n "toe3_1_guideShape" -p "toe2_5_guide";
	rename -uid "153988A0-4EA1-F83E-2059-D480198988EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.11194312388056912 -1.3866695599588098e-32 0
		0.10393642396063613 0.043051874569481251 0
		0.079549499204505381 0.079549499204504992 0
		0.043051874569481639 0.10393642396063574 0
		3.8857805861880479e-16 0.11194049888059499 0
		-0.043051874569480862 0.10393642396063574 0
		-0.079549499204504603 0.079549499204504992 0
		-0.10393642396063535 0.043051874569481251 0
		-0.11194312388056835 -5.3037824469621759e-09 0
		-0.10393642396063535 -0.043051874569481251 0
		-0.079549499204504603 -0.079549499204504992 0
		-0.043051874569480862 -0.10393642396063574 0
		4.4703453438746098e-09 -0.11194049888059499 -0.00076117499238825001
		0.043051874569481639 -0.10393642396063574 0
		0.079549499204505381 -0.079549499204504992 0
		0.10393642396063613 -0.043051874569481251 0
		0.11194312388056912 -1.3866695599588098e-32 0
		0.10342192396578115 0.00029129699708703004 -0.042837824571621753
		0.079155749208442899 0.00053825099461749003 -0.079154024208459767
		0.042838799571612386 0.00070325999296740006 -0.10341967396580326
		4.4703453438746098e-09 0.00076120499238794995 -0.11194064888059352
		-0.042838799571611609 0.00070325999296740006 -0.10341967396580326
		-0.079155749208442122 0.00053825099461749003 -0.079154024208459767
		-0.10342192396578037 0.00029129699708703004 -0.042837824571621753
		-0.11194312388056835 -5.3037824469621759e-09 0
		-0.10342192396578037 -0.00029130749708692499 0.042837674571623255
		-0.079155749208442122 -0.00053826149461738497 0.079153949208460486
		-0.042838799571611609 -0.00070327049296729522 0.10341952396580475
		4.4703453438746098e-09 -0.00076121249238787509 0.11194049888059499
		0.042838799571612386 -0.00070327049296729522 0.10341952396580475
		0.079155749208442899 -0.00053826149461738497 0.079153949208460486
		0.10342192396578115 -0.00029130749708692499 0.042837674571623255
		0.11194312388056912 -1.3866695599588098e-32 0
		0.10342192396578115 0.00029129699708703004 -0.042837824571621753
		0.079155749208442899 0.00053825099461749003 -0.079154024208459767
		0.042838799571612386 0.00070325999296740006 -0.10341967396580326
		4.4703453438746098e-09 0.00076120499238794995 -0.11194064888059352
		4.4703453438746098e-09 0.043541024564589748 -0.103128298968717
		4.4703453438746098e-09 0.079692149203078516 -0.078615749213842512
		4.4703453438746098e-09 0.10371082396289176 -0.042134549578654493
		3.8857805861880479e-16 0.11194049888059499 0
		4.4703453438746098e-09 0.10312822396871775 0.043541024564589748
		4.4703453438746098e-09 0.078615674213843231 0.079692074203079249
		4.4703453438746098e-09 0.042134549578654493 0.10371082396289176
		4.4703453438746098e-09 -0.00076121249238787509 0.11194049888059499
		4.4703453438746098e-09 -0.043541024564589748 0.1031281489687185
		4.4703453438746098e-09 -0.079692149203078516 0.078615599213844006
		4.4703453438746098e-09 -0.10371082396289176 0.042134399578656001
		4.4703453438746098e-09 -0.11194049888059499 -0.00076117499238825001
		4.4703453438746098e-09 -0.10312822396871775 -0.043541174564588253
		4.4703453438746098e-09 -0.078615674213843231 -0.079692224203077741
		4.4703453438746098e-09 -0.042134549578654493 -0.10371097396289027
		4.4703453438746098e-09 0.00076120499238794995 -0.11194064888059352
		;
	setAttr ".adot" yes;
createNode transform -n "toe2_1_guide_ofs" -p "toe2_2_guide";
	rename -uid "C3D000AF-4F98-C2E9-DCC6-16824B85B020";
	setAttr ".t" -type "double3" 0 0 10 ;
createNode transform -n "toe2_1_guide" -p "toe2_1_guide_ofs";
	rename -uid "056D85F9-4CBA-09C0-EB4E-53ACEDCC5B88";
	setAttr ".t" -type "double3" 0 -10 -6 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe1_2_guideShape" -p "toe2_2_guide";
	rename -uid "9FF5AE27-41B5-5B69-67B8-E0A9958DC9CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 58 0 no 3
		59 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.37464662
		 52.597181769999999 52.658450129999999 52.692305070000003 53 56
		59
		-0.15741653748833465 0.0010704445205455542 -6.2864225933857744e-09
		-0.14584355713531444 -0.059251710344982889 -6.2864225933857744e-09
		-0.1120671902855781 -0.11055329186321704 -6.2864225933857744e-09
		-0.061229776731452218 -0.14502406495600936 -6.2864225933857744e-09
		-0.0010704023330459769 -0.1574163265508367 -6.2864225933857744e-09
		0.059251499407484996 -0.14584334619781653 -6.2864225933857744e-09
		0.11055318639446814 -0.11206708481682913 -6.2864225933857744e-09
		0.14502395948726038 -0.061229565793954346 -6.2864225933857744e-09
		0.1574163265508367 -0.0010704550674204495 -6.2864225933857744e-09
		0.14584334619781653 0.059251710344982889 -6.2864225933857744e-09
		0.11206697934808019 0.11055329186321704 -6.2864225933857744e-09
		0.061229565793954346 0.14502406495600936 -6.2864225933857744e-09
		0 0.1574163265508367 0
		-0.059251710344982889 0.14584334619781653 -6.2864225933857744e-09
		-0.11055339733196602 0.11206708481682913 -6.2864225933857744e-09
		-0.14502417042475824 0.061229565793954346 -6.2864225933857744e-09
		-0.15741653748833465 0.0010704445205455542 -6.2864225933857744e-09
		-0.14543391651441084 0.00098895936511040629 -0.060242061897579365
		-0.11131034654314653 0.0007569154611808454 -0.11131277232437226
		-0.060240690803843089 0.00040963640215363603 -0.14543708057687912
		0 0 -0.15742001795704977
		0.060240479866345203 -0.00040965116777848829 -0.14543708057687912
		0.11131024107439758 -0.00075693022680569776 -0.11131277232437226
		0.14543370557691293 -0.00098897413073525888 -0.060242061897579365
		0.1574163265508367 -0.0010704550674204495 -6.2864225933857744e-09
		0.14543370557691293 -0.00098897413073525888 0.060242061897579365
		0.11131024107439758 -0.00075693022680569776 0.11131277232437226
		0.060240479866345203 -0.00040965116777848829 0.14543708057687912
		0 -7.4584440660405588e-09 0.15742001795704977
		-0.060240690803843089 0.00040963640215363603 0.14543708057687912
		-0.11131034654314653 0.0007569154611808454 0.11131277232437226
		-0.14543391651441084 0.00098895936511040629 0.060242061897579365
		-0.15741653748833465 0.0010704445205455542 -6.2864225933857744e-09
		-0.14543391651441084 0.00098895936511040629 -0.060242061897579365
		-0.11131034654314653 0.0007569154611808454 -0.11131277232437226
		-0.060240690803843089 0.00040963640215363603 -0.14543708057687912
		0 0 -0.15742001795704977
		0 -0.06054169861333298 -0.146160596194644
		0 -0.11186648325633515 -0.11186648325633515
		0 -0.146160596194644 -0.06054169861333298
		-0.0010704023330459769 -0.1574163265508367 -6.2864225933857744e-09
		0 -0.146160596194644 0.06054169861333298
		0 -0.11186648325633515 0.11186648325633515
		0 -0.06054169861333298 0.146160596194644
		0 -7.4584440660405588e-09 0.15742001795704977
		0 0.06054169861333298 0.146160596194644
		0 0.11186648325633515 0.11186648325633515
		0 0.146160596194644 0.06054169861333298
		0 0.1574163265508367 0
		0 0.146160596194644 -0.06054169861333298
		0 0.11186648325633515 -0.11186648325633515
		0 0.06054169861333298 -0.146160596194644
		0 0 -0.15742001795704977
		0 0 -0.6328125
		0 0 -1.1711366400095347e-08
		0 1.265625 0
		0 -1.265625 0
		0 0 1.1711366400095347e-08
		0 0 1.1711366400095347e-08
		;
	setAttr ".adot" yes;
createNode transform -n "toe1_2_guide_ofs" -p "toeMain_guide";
	rename -uid "35B74CF6-4E45-E65E-EE66-1EB785CAF57A";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "toe1_2_guide" -p "toe1_2_guide_ofs";
	rename -uid "B44BCC66-44DC-A18B-BC4A-6D95B915679D";
createNode transform -n "toe1_3_guide_ofs" -p "toe1_2_guide";
	rename -uid "0F30D4E6-4AD8-BBEA-518A-33B04FB4F37A";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 -7 ;
createNode transform -n "toe1_3_guide" -p "toe1_3_guide_ofs";
	rename -uid "80BE644F-4F74-9BCD-95CC-629718039753";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe1_4_guide_ofs" -p "toe1_3_guide";
	rename -uid "DC1740B0-45B8-502D-0F84-DFA69FE72D0D";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 0 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe1_4_guide" -p "toe1_4_guide_ofs";
	rename -uid "CEDE5B7B-4527-589C-1FB6-A78C19C4F73F";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe1_5_guide_ofs" -p "toe1_4_guide";
	rename -uid "19ECCA67-4904-3B43-1169-E9A00480058F";
	setAttr ".t" -type "double3" 0 4.4408920984955893e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe1_5_guide" -p "toe1_5_guide_ofs";
	rename -uid "32C59068-451C-A451-EC8D-74A2606D426C";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode transform -n "toe1_1_guide_ofs" -p "toe1_2_guide";
	rename -uid "5A42BBB6-4322-A87E-BD70-DA88F521B273";
	setAttr ".t" -type "double3" 0 0 10 ;
createNode transform -n "toe1_1_guide" -p "toe1_1_guide_ofs";
	rename -uid "C6F4C7F5-4CFC-229B-537F-C685DFAE0E36";
	setAttr ".t" -type "double3" 0 -10 -6 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe0_2_guide_ofs" -p "toeMain_guide";
	rename -uid "DFED9676-4592-9226-C962-26A60285B81B";
	setAttr ".t" -type "double3" 4 0 0 ;
createNode transform -n "toe0_2_guide" -p "toe0_2_guide_ofs";
	rename -uid "633EB8DB-4DA2-0178-1F7C-B9A4E3B2D110";
createNode transform -n "toe0_3_guide_ofs" -p "toe0_2_guide";
	rename -uid "3026E826-431F-B38F-6FEC-4B8D0A25F466";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 6.2172489379008766e-15 -7 ;
createNode transform -n "toe0_3_guide" -p "toe0_3_guide_ofs";
	rename -uid "CF2A0C17-4CB3-8169-6131-9B9986FE0F37";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe0_4_guide_ofs" -p "toe0_3_guide";
	rename -uid "EF5FD2BC-4116-AB6C-DE99-9BB894F616C0";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 0 -1.9999999999999858 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe0_4_guide" -p "toe0_4_guide_ofs";
	rename -uid "09EDCF41-45E8-2DF6-9823-33A0FD11B96F";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "toe0_1_guide_ofs" -p "toe0_2_guide";
	rename -uid "86E8AD69-4B8D-030D-D371-0AB94C8DCB18";
	setAttr ".t" -type "double3" 0 0 10 ;
createNode transform -n "toe0_1_guide" -p "toe0_1_guide_ofs";
	rename -uid "41B3B581-4AE8-FCCB-E9C3-B59FCFEB63A4";
	setAttr ".t" -type "double3" 0 -10 -6 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe0_1_guideShape" -p "toe0_1_guide";
	rename -uid "E8477B09-4DC5-00BD-8246-C2AD000F68C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.11194312388056873 -1.3866695599588098e-32 0
		0.10393642396063572 0.043051874569481244 0
		0.079549499204504964 0.079549499204504964 0
		0.043051874569481244 0.10393642396063572 0
		0 0.11194049888059499 0
		-0.043051874569481244 0.10393642396063572 0
		-0.079549499204504964 0.079549499204504964 0
		-0.10393642396063572 0.043051874569481244 0
		-0.11194312388056873 -5.3037824469621759e-09 0
		-0.10393642396063572 -0.043051874569481244 0
		-0.079549499204504964 -0.079549499204504964 0
		-0.043051874569481244 -0.10393642396063572 0
		4.4703449552965512e-09 -0.11194049888059499 -0.00076117499238824991
		0.043051874569481244 -0.10393642396063572 0
		0.079549499204504964 -0.079549499204504964 0
		0.10393642396063572 -0.043051874569481244 0
		0.11194312388056873 -1.3866695599588098e-32 0
		0.10342192396578076 0.00029129699708703004 -0.042837824571621753
		0.079155749208442511 0.00053825099461748981 -0.079154024208459753
		0.042838799571611998 0.00070325999296739995 -0.10341967396580326
		4.4703449552965512e-09 0.00076120499238794984 -0.11194064888059349
		-0.042838799571611998 0.00070325999296739995 -0.10341967396580326
		-0.079155749208442511 0.00053825099461748981 -0.079154024208459753
		-0.10342192396578076 0.00029129699708703004 -0.042837824571621753
		-0.11194312388056873 -5.3037824469621759e-09 0
		-0.10342192396578076 -0.00029130749708692499 0.042837674571623255
		-0.079155749208442511 -0.00053826149461738497 0.079153949208460472
		-0.042838799571611998 -0.000703270492967295 0.10341952396580475
		4.4703449552965512e-09 -0.00076121249238787498 0.11194049888059499
		0.042838799571611998 -0.000703270492967295 0.10341952396580475
		0.079155749208442511 -0.00053826149461738497 0.079153949208460472
		0.10342192396578076 -0.00029130749708692499 0.042837674571623255
		0.11194312388056873 -1.3866695599588098e-32 0
		0.10342192396578076 0.00029129699708703004 -0.042837824571621753
		0.079155749208442511 0.00053825099461748981 -0.079154024208459753
		0.042838799571611998 0.00070325999296739995 -0.10341967396580326
		4.4703449552965512e-09 0.00076120499238794984 -0.11194064888059349
		4.4703449552965512e-09 0.043541024564589748 -0.10312829896871697
		4.4703449552965512e-09 0.079692149203078488 -0.078615749213842498
		4.4703449552965512e-09 0.10371082396289176 -0.042134549578654486
		0 0.11194049888059499 0
		4.4703449552965512e-09 0.10312822396871775 0.043541024564589748
		4.4703449552965512e-09 0.078615674213843217 0.079692074203079249
		4.4703449552965512e-09 0.042134549578654486 0.10371082396289176
		4.4703449552965512e-09 -0.00076121249238787498 0.11194049888059499
		4.4703449552965512e-09 -0.043541024564589748 0.1031281489687185
		4.4703449552965512e-09 -0.079692149203078488 0.078615599213844006
		4.4703449552965512e-09 -0.10371082396289176 0.042134399578655987
		4.4703449552965512e-09 -0.11194049888059499 -0.00076117499238824991
		4.4703449552965512e-09 -0.10312822396871775 -0.043541174564588246
		4.4703449552965512e-09 -0.078615674213843217 -0.079692224203077727
		4.4703449552965512e-09 -0.042134549578654486 -0.10371097396289025
		4.4703449552965512e-09 0.00076120499238794984 -0.11194064888059349
		;
	setAttr ".adot" yes;
createNode transform -n "toe3_2_guide_ofs" -p "toeMain_guide";
	rename -uid "0AE88825-47D9-D980-88E0-DD84487F4B09";
	setAttr ".t" -type "double3" -2 0 0 ;
createNode transform -n "toe3_2_guide" -p "toe3_2_guide_ofs";
	rename -uid "F9FB549A-4D84-019D-AFA1-6F909611F039";
createNode transform -n "toe3_3_guide_ofs" -p "toe3_2_guide";
	rename -uid "ECDE5891-4D91-6FB3-836A-62914CA4222C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.9936057773011271e-15 -7 ;
createNode transform -n "toe3_3_guide" -p "toe3_3_guide_ofs";
	rename -uid "DB1D0C19-46B5-F47A-2E19-61939818CC67";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe3_4_guide_ofs" -p "toe3_3_guide";
	rename -uid "AFE8BF1F-46AD-48CA-4616-66834C7E7A52";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 0 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe3_4_guide" -p "toe3_4_guide_ofs";
	rename -uid "86409C3C-4C54-8B63-951B-3FB081F22523";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe3_5_guide_ofs" -p "toe3_4_guide";
	rename -uid "A5752EA4-46D0-F5CF-94E0-B985E9B7AA09";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985056709e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe3_5_guide" -p "toe3_5_guide_ofs";
	rename -uid "9714F74C-4B01-D587-A82D-E1AD3EDDE2CF";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode transform -n "toe3_1_guide_ofs" -p "toe3_2_guide";
	rename -uid "6DEA2C3A-4105-7F88-5FCB-74A5A45F4C17";
	setAttr ".t" -type "double3" 0 0 10 ;
createNode transform -n "toe3_1_guide" -p "toe3_1_guide_ofs";
	rename -uid "F8DF52AF-4E09-6C70-8674-25B610DF9D1B";
	setAttr ".t" -type "double3" 0 -10 -6 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe4_2_guide_ofs" -p "toeMain_guide";
	rename -uid "8E7AB8BF-48FA-A5FB-DCEE-179B8163E2C2";
	setAttr ".t" -type "double3" -4 0 0 ;
createNode transform -n "toe4_2_guide" -p "toe4_2_guide_ofs";
	rename -uid "F1D80380-48D8-61E1-2D4C-EB8CE9298368";
createNode transform -n "toe4_3_guide_ofs" -p "toe4_2_guide";
	rename -uid "889A5B0D-44F8-B530-89FF-8798D081EC89";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 -7 ;
createNode transform -n "toe4_3_guide" -p "toe4_3_guide_ofs";
	rename -uid "DDDABA38-4401-ACF2-1656-E1AC49828C43";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe4_4_guide_ofs" -p "toe4_3_guide";
	rename -uid "49CF788C-4894-4014-8075-26A908BC4782";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 0 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe4_4_guide" -p "toe4_4_guide_ofs";
	rename -uid "C7ECA8F6-4E6A-ACFA-AA84-95A06BBCF75F";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe4_5_guide_ofs" -p "toe4_4_guide";
	rename -uid "DFFA1631-400F-8738-796A-049AF6FA5BA1";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 4.440892098505667e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe4_5_guide" -p "toe4_5_guide_ofs";
	rename -uid "8D26FCAB-4396-2817-6BE9-E59B14CE4F33";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode transform -n "toe4_1_guide_ofs" -p "toe4_2_guide";
	rename -uid "F26453EC-4213-1379-8352-4D9FE7181963";
	setAttr ".t" -type "double3" 0 0 10 ;
createNode transform -n "toe4_1_guide" -p "toe4_1_guide_ofs";
	rename -uid "CFA1EC55-4E1A-103F-97C4-DF8320B64E6F";
	setAttr ".t" -type "double3" 0 -10 -6 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe4_1_guideShape" -p "toe4_1_guide";
	rename -uid "19AC264D-4AC0-AAA0-0C78-20B98F50BF3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.11194312388056873 -1.3866695599588098e-32 0
		0.10393642396063572 0.043051874569481244 0
		0.079549499204504964 0.079549499204504964 0
		0.043051874569481244 0.10393642396063572 0
		0 0.11194049888059499 0
		-0.043051874569481244 0.10393642396063572 0
		-0.079549499204504964 0.079549499204504964 0
		-0.10393642396063572 0.043051874569481244 0
		-0.11194312388056873 -5.3037824469621759e-09 0
		-0.10393642396063572 -0.043051874569481244 0
		-0.079549499204504964 -0.079549499204504964 0
		-0.043051874569481244 -0.10393642396063572 0
		4.4703449552965512e-09 -0.11194049888059499 -0.00076117499238824991
		0.043051874569481244 -0.10393642396063572 0
		0.079549499204504964 -0.079549499204504964 0
		0.10393642396063572 -0.043051874569481244 0
		0.11194312388056873 -1.3866695599588098e-32 0
		0.10342192396578076 0.00029129699708703004 -0.042837824571621753
		0.079155749208442511 0.00053825099461748981 -0.079154024208459753
		0.042838799571611998 0.00070325999296739995 -0.10341967396580326
		4.4703449552965512e-09 0.00076120499238794984 -0.11194064888059349
		-0.042838799571611998 0.00070325999296739995 -0.10341967396580326
		-0.079155749208442511 0.00053825099461748981 -0.079154024208459753
		-0.10342192396578076 0.00029129699708703004 -0.042837824571621753
		-0.11194312388056873 -5.3037824469621759e-09 0
		-0.10342192396578076 -0.00029130749708692499 0.042837674571623255
		-0.079155749208442511 -0.00053826149461738497 0.079153949208460472
		-0.042838799571611998 -0.000703270492967295 0.10341952396580475
		4.4703449552965512e-09 -0.00076121249238787498 0.11194049888059499
		0.042838799571611998 -0.000703270492967295 0.10341952396580475
		0.079155749208442511 -0.00053826149461738497 0.079153949208460472
		0.10342192396578076 -0.00029130749708692499 0.042837674571623255
		0.11194312388056873 -1.3866695599588098e-32 0
		0.10342192396578076 0.00029129699708703004 -0.042837824571621753
		0.079155749208442511 0.00053825099461748981 -0.079154024208459753
		0.042838799571611998 0.00070325999296739995 -0.10341967396580326
		4.4703449552965512e-09 0.00076120499238794984 -0.11194064888059349
		4.4703449552965512e-09 0.043541024564589748 -0.10312829896871697
		4.4703449552965512e-09 0.079692149203078488 -0.078615749213842498
		4.4703449552965512e-09 0.10371082396289176 -0.042134549578654486
		0 0.11194049888059499 0
		4.4703449552965512e-09 0.10312822396871775 0.043541024564589748
		4.4703449552965512e-09 0.078615674213843217 0.079692074203079249
		4.4703449552965512e-09 0.042134549578654486 0.10371082396289176
		4.4703449552965512e-09 -0.00076121249238787498 0.11194049888059499
		4.4703449552965512e-09 -0.043541024564589748 0.1031281489687185
		4.4703449552965512e-09 -0.079692149203078488 0.078615599213844006
		4.4703449552965512e-09 -0.10371082396289176 0.042134399578655987
		4.4703449552965512e-09 -0.11194049888059499 -0.00076117499238824991
		4.4703449552965512e-09 -0.10312822396871775 -0.043541174564588246
		4.4703449552965512e-09 -0.078615674213843217 -0.079692224203077727
		4.4703449552965512e-09 -0.042134549578654486 -0.10371097396289025
		4.4703449552965512e-09 0.00076120499238794984 -0.11194064888059349
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "toeMain_guideShape" -p "toeMain_guide";
	rename -uid "E859A3B4-468C-1A4C-484B-CFAB429F0375";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		5.625 0 5.625
		5.625 0 -5.625
		-5.625 0 -5.625
		-5.625 0 5.625
		5.625 0 5.625
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp_main" -p "master_guide";
	rename -uid "387C8921-4CD0-9D0D-ECBC-3E8A3C48EB6E";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".it" no;
createNode transform -n "line_01" -p "line_grp_main";
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 94 18
		-10 85 6
		;
	setAttr ".adot" yes;
createNode transform -n "line_02" -p "line_grp_main";
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 85 6
		-10 52.5 15.5
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp_main";
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 52.5 15.5
		-10 20 -1
		;
	setAttr ".adot" yes;
createNode transform -n "line_05" -p "line_grp_main";
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5.0000000000000018 12.000000000000002
		-10 -3.9443045261050586e-31 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_06" -p "line_grp_main";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 1;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10.000000000000993 52.499999999999993 47.5
		-10 52.5 15.5
		;
	setAttr ".adot" yes;
createNode transform -n "line_32" -p "line_grp_main";
	rename -uid "743A8BF2-4BEF-04F3-6D44-13AC433A0C32";
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
createNode nurbsCurve -n "curveShape1" -p "|master_guide|line_grp_main|line_32";
	rename -uid "9BE19C0F-4121-83D1-011F-C79634FAF5F1";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5.0000000000000018 12.000000000000002
		-9.9999999999999858 5.0000000000000009 4.9999999999999982
		;
	setAttr ".adot" yes;
createNode transform -n "line_33" -p "line_grp_main";
	rename -uid "1EC15A4F-49FB-50DD-7111-14BFA525C978";
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
createNode nurbsCurve -n "curveShape2" -p "|master_guide|line_grp_main|line_33";
	rename -uid "56BFFB0D-4510-F42B-12BB-3F8D3E6E3951";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.9999999999999858 5.0000000000000009 4.9999999999999982
		-10 20 -1
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp_dual" -p "master_guide";
	rename -uid "E4B6023D-490E-8702-026B-989F568BA5AC";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 10 0 50 ;
createNode transform -n "line_07" -p "line_grp_dual";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-5 48.041665546974755 13.236537923187379
		-5.0000000000000018 20 -0.99999999999999989
		;
	setAttr ".adot" yes;
createNode transform -n "line_08" -p "line_grp_dual";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 48.041665546974755 13.236537923187377
		-14.999999999999998 20 -0.99999999999999922
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp_mammalFoot" -p "master_guide";
	rename -uid "AD65DFA2-4F01-8F5B-A9E6-AB838951D525";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 10 0 50 ;
createNode transform -n "toe_line_grp1" -p "line_grp_mammalFoot";
	rename -uid "966827F0-4E38-EC6E-4BB2-50B4743B6142";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_34" -p "toe_line_grp1";
	rename -uid "5C9D44C7-4B5C-8B9A-8AB0-1AABFC601722";
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
createNode nurbsCurve -n "curveShape3" -p "|master_guide|line_grp_mammalFoot|toe_line_grp1|line_34";
	rename -uid "F260229D-4807-97AF-0276-9B9E5C193B6B";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-6 15 0.99999999999999822
		-6 5.0000000000000009 4.9999999999999991
		;
	setAttr ".adot" yes;
createNode transform -n "line_35" -p "toe_line_grp1";
	rename -uid "C74F8F2B-453E-0C94-898E-F8B0A335DA6B";
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
createNode nurbsCurve -n "curveShape4" -p "|master_guide|line_grp_mammalFoot|toe_line_grp1|line_35";
	rename -uid "BD5ADB38-402D-1230-7198-7C8BD75119A6";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-6 5.0000000000000009 4.9999999999999991
		-5.9999999999999982 4.9999999999999956 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_36" -p "toe_line_grp1";
	rename -uid "B1C159BE-45D8-D960-664B-849E06F37D6A";
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
createNode nurbsCurve -n "curveShape5" -p "|master_guide|line_grp_mammalFoot|toe_line_grp1|line_36";
	rename -uid "C2926C82-42B4-1347-62A2-7FAD65E1AE37";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-5.9999999999999982 4.9999999999999956 12
		-6.0000000000002593 -4.4408920985006262e-15 13.999999999999986
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp2" -p "line_grp_mammalFoot";
	rename -uid "E2A75E58-40CE-342F-E089-A6802D582616";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_37" -p "toe_line_grp2";
	rename -uid "C561B469-458F-D19A-8D6B-4B960A19A36F";
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
createNode nurbsCurve -n "curveShape6" -p "|master_guide|line_grp_mammalFoot|toe_line_grp2|line_37";
	rename -uid "27BE5C59-406A-8D58-83A1-7B94CA974BE6";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 15 0.99999999999999822
		-8 5.0000000000000009 4.9999999999999991
		;
	setAttr ".adot" yes;
createNode transform -n "line_38" -p "toe_line_grp2";
	rename -uid "E1B8029F-4E5A-D4A1-8804-A5B8700D59C0";
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
createNode nurbsCurve -n "curveShape7" -p "|master_guide|line_grp_mammalFoot|toe_line_grp2|line_38";
	rename -uid "66668719-4BDE-DBD1-D84E-ECA20A70CD8F";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8 5.0000000000000009 4.9999999999999991
		-7.9999999999999982 5 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_39" -p "toe_line_grp2";
	rename -uid "8652F0B2-41F6-4A08-4E31-20B56DFAA991";
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
createNode nurbsCurve -n "curveShape8" -p "|master_guide|line_grp_mammalFoot|toe_line_grp2|line_39";
	rename -uid "02F6ED60-4096-1CDB-008F-209EB93EDC00";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-7.9999999999999982 5 12
		-8.0000000000002593 0 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_40" -p "toe_line_grp2";
	rename -uid "178D8571-4288-F885-F90A-56B8280DA38E";
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
createNode nurbsCurve -n "curveShape9" -p "|master_guide|line_grp_mammalFoot|toe_line_grp2|line_40";
	rename -uid "97934993-4963-C91D-7062-41A3C7AF9DDF";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-8.0000000000002593 0 14
		-8.0000000000002593 -1.9915985002008819e-16 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp3" -p "line_grp_mammalFoot";
	rename -uid "054C2130-488F-B1CC-4C7B-48A4BCE21827";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_41" -p "toe_line_grp3";
	rename -uid "3031F21F-48F6-C05A-1B19-B2934B91F937";
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
createNode nurbsCurve -n "curveShape10" -p "|master_guide|line_grp_mammalFoot|toe_line_grp3|line_41";
	rename -uid "E415A9FF-463B-946F-103D-1E80B1CFDC74";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 15 0.99999999999999822
		-10 5.0000000000000009 4.9999999999999991
		;
	setAttr ".adot" yes;
createNode transform -n "line_42" -p "toe_line_grp3";
	rename -uid "4C3ABCE2-4B80-E616-A4C5-D6A1AF49221A";
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
createNode nurbsCurve -n "curveShape11" -p "|master_guide|line_grp_mammalFoot|toe_line_grp3|line_42";
	rename -uid "4731C64C-4077-5A23-BAAE-B0A43989153F";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 5.0000000000000009 4.9999999999999991
		-9.9999999999999982 4.9999999999999964 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_43" -p "toe_line_grp3";
	rename -uid "AEA25F11-43F4-E038-FF18-9486F858CEE8";
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
createNode nurbsCurve -n "curveShape12" -p "|master_guide|line_grp_mammalFoot|toe_line_grp3|line_43";
	rename -uid "F05A4173-4B73-FC96-60E2-07A701127938";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-9.9999999999999982 4.9999999999999964 12
		-10.000000000000259 -3.5527136788005009e-15 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_44" -p "toe_line_grp3";
	rename -uid "6D537E99-4150-054A-9627-F18ED8158DDB";
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
createNode nurbsCurve -n "curveShape13" -p "line_44";
	rename -uid "0603056A-45A3-076A-25DA-DB85FC0C6DC0";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10.000000000000259 -3.5527136788005009e-15 14
		-10.000000000000259 -3.7518735288210932e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp4" -p "line_grp_mammalFoot";
	rename -uid "67C37E4B-403E-2DB1-1DCF-3298FC03FF99";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_45" -p "toe_line_grp4";
	rename -uid "162F7E78-4D86-0AB3-899F-41A755007A7C";
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
createNode nurbsCurve -n "curveShape14" -p "line_45";
	rename -uid "31096F18-436D-44DC-3B65-1A8DA63D6432";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 15 0.99999999999999822
		-12 5.0000000000000009 4.9999999999999991
		;
	setAttr ".adot" yes;
createNode transform -n "line_46" -p "toe_line_grp4";
	rename -uid "0B287C95-4EF0-4386-6185-0D91E059AD83";
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
createNode nurbsCurve -n "curveShape15" -p "line_46";
	rename -uid "BB4EAA61-43AA-2D99-421F-55AD9144E337";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 5.0000000000000009 4.9999999999999991
		-11.999999999999998 4.9999999999999938 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_47" -p "toe_line_grp4";
	rename -uid "ED0F9E4A-4CFC-181A-B3E3-E39AFDF3E0EC";
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
createNode nurbsCurve -n "curveShape16" -p "line_47";
	rename -uid "B945B9AE-4E1D-1091-3C91-9CBE6F5DB7E5";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11.999999999999998 4.9999999999999938 12
		-12.000000000000259 -6.2172489379008766e-15 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_48" -p "toe_line_grp4";
	rename -uid "97D9D09C-421C-AA66-56BE-06B479390B8B";
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
createNode nurbsCurve -n "curveShape17" -p "line_48";
	rename -uid "2C7F1845-49B6-1DFC-9CE8-F2A34386068D";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12.000000000000259 -6.2172489379008766e-15 14
		-12.000000000000261 -6.416408787921973e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp5" -p "line_grp_mammalFoot";
	rename -uid "C07A873F-4D11-58E6-3637-F7B6EE078282";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_49" -p "toe_line_grp5";
	rename -uid "9BBAC719-4355-9416-7923-9FA05D945F30";
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
createNode nurbsCurve -n "curveShape18" -p "line_49";
	rename -uid "A139064E-4A5B-74F9-12D3-789DFA3EF109";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 15 0.99999999999999822
		-14 5.0000000000000009 4.9999999999999991
		;
	setAttr ".adot" yes;
createNode transform -n "line_50" -p "toe_line_grp5";
	rename -uid "C9317385-4A8B-0BE5-4331-DA95689A650E";
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
createNode nurbsCurve -n "curveShape19" -p "line_50";
	rename -uid "5B700B52-4D92-2731-B20D-97B54E0CF7B8";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 5.0000000000000009 4.9999999999999991
		-13.999999999999998 4.9999999999999947 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_51" -p "toe_line_grp5";
	rename -uid "685A8701-43A7-15AD-3531-CAA545D43856";
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
createNode nurbsCurve -n "curveShape20" -p "line_51";
	rename -uid "671DC7E8-4E96-4B6B-5C02-3F972D95D0A6";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13.999999999999998 4.9999999999999947 12
		-14.000000000000259 -5.3290705182007514e-15 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_52" -p "toe_line_grp5";
	rename -uid "E9DE7C6F-4061-15D4-9D6E-B49A50507D83";
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
createNode nurbsCurve -n "curveShape21" -p "line_52";
	rename -uid "D83605EF-4573-8B2C-2695-508AEB8D63FC";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14.000000000000259 -5.3290705182007514e-15 14
		-14.000000000000265 -5.528230368221847e-15 16
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "36273D51-49D5-30C9-F45F-E084A20909F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 0 no 3
		6 0 1 3 4 6 7
		6
		-1.3692803048987582e-15 0 25
		7.4999999999999982 0 20
		7.5000000000000027 0 -7.4999999999999982
		-7.4999999999999982 0 -7.5
		-7.5000000000000018 0 20
		-1.3692803048987582e-15 0 25
		;
createNode transform -n "line_grp_birdFoot" -p "master_guide";
	rename -uid "16C7FDFF-424C-7A66-5FE9-70B83864E06A";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "group_toe_0" -p "line_grp_birdFoot";
	rename -uid "C7B6E3B3-4512-9303-BA90-28B950EB4863";
createNode transform -n "line_42" -p "group_toe_0";
	rename -uid "02254301-488E-8A08-36F4-6EA96A314CFB";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape70" -p "|master_guide|line_grp_birdFoot|group_toe_0|line_42";
	rename -uid "9555E788-45EA-FF90-A624-2D8D38493BD3";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 4.8985871965894128e-16 4
		-10 3.0616169978683846e-16 2.5
		;
createNode transform -n "line_43" -p "group_toe_0";
	rename -uid "5A295FD3-403B-2027-8A1F-4B92CEEE3B94";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape71" -p "|master_guide|line_grp_birdFoot|group_toe_0|line_43";
	rename -uid "4414B76C-47D0-ECC1-4534-4183F4056E35";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 3.0616169978683846e-16 2.5
		-10 -6.1232339957367377e-17 -0.49999999999999867
		;
createNode transform -n "line_53" -p "group_toe_0";
	rename -uid "3F349D0D-4588-8BA5-D802-0AA8E331FD25";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape72" -p "line_53";
	rename -uid "EB3BD0CB-466F-278D-8AB8-FC91342B55AB";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 -6.1232339957367377e-17 -0.49999999999999867
		-10 -4.2862637970157346e-16 -3.4999999999999982
		;
createNode transform -n "group_toe_1" -p "line_grp_birdFoot";
	rename -uid "76A65A0D-4F62-00B7-A858-2FAC065EAF76";
createNode transform -n "line_30" -p "group_toe_1";
	rename -uid "CCE96645-456D-2A4E-0EFB-BD875E09CDEA";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape58" -p "line_30";
	rename -uid "B768221E-43A1-2E99-50D0-7F9D11897043";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-4.0499999999999954 1.7847575658260706e-15 14.573651497465946
		-5.6999999999999957 1.4347677370468509e-15 11.715767664977296
		;
	setAttr ".adot" yes;
createNode transform -n "line_31" -p "group_toe_1";
	rename -uid "6B7BEABE-4DA2-1A68-6C2E-E79F26A1C922";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape59" -p "line_31";
	rename -uid "DEE83D7A-4A77-3C6D-B90B-E98D43BE7FA3";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-5.6999999999999957 1.4347677370468509e-15 11.715767664977296
		-7.3499999999999979 1.0847779082676315e-15 8.857883832488648
		;
	setAttr ".adot" yes;
createNode transform -n "line_32" -p "group_toe_1";
	rename -uid "A92499D2-444F-6ED6-8A7B-5185477EAD67";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape60" -p "|master_guide|line_grp_birdFoot|group_toe_1|line_32";
	rename -uid "F890CB61-4C55-5DD8-D037-548465A4E5BF";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-7.3499999999999979 1.0847779082676315e-15 8.857883832488648
		-9 7.3478807948841197e-16 6
		;
createNode transform -n "group_toe_2" -p "line_grp_birdFoot";
	rename -uid "E7E44A76-4657-1CC1-A61E-D2B2FAE1655F";
createNode transform -n "line_33" -p "group_toe_2";
	rename -uid "A8FBD7AF-4A7D-E017-093A-3894580C967D";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape61" -p "|master_guide|line_grp_birdFoot|group_toe_2|line_33";
	rename -uid "7FFEBF15-4BD0-FB62-8DC2-8F86225E6180";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 8.5725275940314722e-16 7
		-10 1.2246467991473531e-15 10
		;
createNode transform -n "line_34" -p "group_toe_2";
	rename -uid "7F0F40FE-4DC4-DA88-78A9-4BB4C2484399";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape62" -p "|master_guide|line_grp_birdFoot|group_toe_2|line_34";
	rename -uid "7FA14CCE-4CF5-1910-B961-95A01283E936";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 1.2246467991473531e-15 10
		-10 1.5920408388915589e-15 13
		;
createNode transform -n "line_35" -p "group_toe_2";
	rename -uid "2BC41E2D-4B8C-21A8-C4B3-2AB469D71259";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape63" -p "|master_guide|line_grp_birdFoot|group_toe_2|line_35";
	rename -uid "41A493D7-4EF4-CAE4-07AE-369D16B911C2";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 1.5920408388915589e-15 13
		-10 1.9594348786357647e-15 16
		;
createNode transform -n "line_36" -p "group_toe_2";
	rename -uid "7CD3B156-4615-5811-8628-71A979B1DD38";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape64" -p "|master_guide|line_grp_birdFoot|group_toe_2|line_36";
	rename -uid "6CD2375C-477D-030C-57C4-209F3632B7CB";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10 1.9594348786357647e-15 16
		-10 2.3268289183799706e-15 19
		;
createNode transform -n "group_toe_3" -p "line_grp_birdFoot";
	rename -uid "FAF0DCD7-4667-5D80-DBA3-BD8D4CAB024C";
createNode transform -n "line_37" -p "group_toe_3";
	rename -uid "8DFC64F7-4EAF-0E1D-8396-F7839FE92724";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape65" -p "|master_guide|line_grp_birdFoot|group_toe_3|line_37";
	rename -uid "75F6C500-411C-FCEA-F68E-459E73AAAA81";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11 7.3478807948841207e-16 6
		-12 9.4690312723339331e-16 7.7320508075688776
		;
createNode transform -n "line_38" -p "group_toe_3";
	rename -uid "17262BF3-4569-01E4-F67A-63A22FAF3776";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape66" -p "|master_guide|line_grp_birdFoot|group_toe_3|line_38";
	rename -uid "A0B4B286-45A6-FEFB-8245-E99FC2B51F29";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12 9.4690312723339331e-16 7.7320508075688776
		-13 1.1590181749783741e-15 9.4641016151377553
		;
createNode transform -n "line_39" -p "group_toe_3";
	rename -uid "4D0E10A9-4885-D820-4647-F8B7BB06C080";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape67" -p "|master_guide|line_grp_birdFoot|group_toe_3|line_39";
	rename -uid "93081C1B-4B17-30F0-4C78-CCA037F6E099";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13 1.1590181749783741e-15 9.4641016151377553
		-14 1.371133222723355e-15 11.196152422706632
		;
createNode transform -n "line_40" -p "group_toe_3";
	rename -uid "79A2EB2C-493C-16F3-E938-109898D327B9";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape68" -p "|master_guide|line_grp_birdFoot|group_toe_3|line_40";
	rename -uid "7CFE1FCB-495A-C121-7CD5-A3AAEA707079";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14 1.371133222723355e-15 11.196152422706632
		-15 1.583248270468336e-15 12.928203230275511
		;
createNode transform -n "line_41" -p "group_toe_3";
	rename -uid "6AF776D9-4B5D-90F4-4B5D-86B105EDC1BF";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape69" -p "|master_guide|line_grp_birdFoot|group_toe_3|line_41";
	rename -uid "60C30439-47A2-11B0-0925-B3B40594D01C";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 1.583248270468336e-15 12.928203230275511
		-15.999999999999998 1.7953633182133171e-15 14.660254037844389
		;
createNode transform -n "toeBird_guide_grp_ofs" -p "master_guide";
	rename -uid "CC9A8DA8-41E2-1551-C1EF-E8933DD0C1D6";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toeBird_guide_grp" -p "toeBird_guide_grp_ofs";
	rename -uid "06C670E2-4ABF-2FE6-0B85-6E9B441554B1";
	setAttr ".t" -type "double3" -10 0 -5 ;
createNode transform -n "toeBird_guide" -p "toeBird_guide_grp";
	rename -uid "D1023A9D-4335-5802-A78E-A7828056256E";
createNode transform -n "toeBird00_1_guide_ofs" -p "toeBird_guide";
	rename -uid "833B0689-441F-54FF-3A59-19B7DD018494";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "toe0_up_guide" -p "toeBird00_1_guide_ofs";
	rename -uid "3A517205-49EA-87B1-EFFF-6AAA3472C194";
	setAttr ".t" -type "double3" 0 -2.4651903288156619e-32 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "toe0_mid_guide" -p "toe0_up_guide";
	rename -uid "91932A03-4B60-162C-9C6A-F183C8395EDD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -9.8607613152626476e-32 -1.5 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe0_mid_guideShape" -p "toe0_mid_guide";
	rename -uid "ADC9C589-4716-B226-21FB-2C9641AC2212";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe0_low_guide" -p "toe0_mid_guide";
	rename -uid "163EE73E-4D73-80A4-B1C3-C8A0FF6F9A9D";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 2.4651903288156619e-32 -2.9999999999999991 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe0_low_guideShape" -p "toe0_low_guide";
	rename -uid "2BF238B8-4E86-DD4D-01BB-31869E03DD59";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe0_end_guide" -p "toe0_low_guide";
	rename -uid "640EE492-44E6-E2D5-CF95-328F59C22379";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.9721522630525295e-31 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe0_end_guideShape" -p "toe0_end_guide";
	rename -uid "174177CF-409D-160C-43A6-A2B41C7B0321";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "toe0_up_guideShape" -p "toe0_up_guide";
	rename -uid "D0DFFDD4-44DE-C914-ECEA-B4829E454A52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 58 0 no 3
		59 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.37464662
		 52.597181769999999 52.658450129999999 52.692305070000003 53 56
		59
		-0.15741653748833581 0.0010704445205455542 -6.2864225933857744e-09
		-0.1458435571353156 -0.059251710344982889 -6.2864225933857744e-09
		-0.11206719028557925 -0.11055329186321704 -6.2864225933857744e-09
		-0.061229776731453384 -0.14502406495600936 -6.2864225933857744e-09
		-0.0010704023330471461 -0.1574163265508367 -6.2864225933857744e-09
		0.059251499407483824 -0.14584334619781653 -6.2864225933857744e-09
		0.11055318639446696 -0.11206708481682913 -6.2864225933857744e-09
		0.14502395948725919 -0.061229565793954346 -6.2864225933857744e-09
		0.15741632655083554 -0.0010704550674204495 -6.2864225933857744e-09
		0.14584334619781536 0.059251710344982889 -6.2864225933857744e-09
		0.11206697934807901 0.11055329186321704 -6.2864225933857744e-09
		0.061229565793953174 0.14502406495600936 -6.2864225933857744e-09
		-1.169203622808368e-15 0.1574163265508367 0
		-0.059251710344984061 0.14584334619781653 -6.2864225933857744e-09
		-0.11055339733196717 0.11206708481682913 -6.2864225933857744e-09
		-0.14502417042475943 0.061229565793954346 -6.2864225933857744e-09
		-0.15741653748833581 0.0010704445205455542 -6.2864225933857744e-09
		-0.14543391651441198 0.00098895936511040629 -0.060242061897579365
		-0.1113103465431477 0.0007569154611808454 -0.11131277232437226
		-0.060240690803844255 0.00040963640215363603 -0.14543708057687912
		-1.169203622808368e-15 -6.740754805355331e-32 -0.15742001795704977
		0.060240479866344024 -0.00040965116777848829 -0.14543708057687912
		0.1113102410743964 -0.00075693022680569776 -0.11131277232437226
		0.14543370557691176 -0.00098897413073525888 -0.060242061897579365
		0.15741632655083554 -0.0010704550674204495 -6.2864225933857744e-09
		0.14543370557691176 -0.00098897413073525888 0.060242061897579365
		0.1113102410743964 -0.00075693022680569776 0.11131277232437226
		0.060240479866344024 -0.00040965116777848829 0.14543708057687912
		-1.169203622808368e-15 -7.4584440660405588e-09 0.15742001795704977
		-0.060240690803844255 0.00040963640215363603 0.14543708057687912
		-0.1113103465431477 0.0007569154611808454 0.11131277232437226
		-0.14543391651441198 0.00098895936511040629 0.060242061897579365
		-0.15741653748833581 0.0010704445205455542 -6.2864225933857744e-09
		-0.14543391651441198 0.00098895936511040629 -0.060242061897579365
		-0.1113103465431477 0.0007569154611808454 -0.11131277232437226
		-0.060240690803844255 0.00040963640215363603 -0.14543708057687912
		-1.169203622808368e-15 -6.740754805355331e-32 -0.15742001795704977
		-1.169203622808368e-15 -0.06054169861333298 -0.146160596194644
		-1.169203622808368e-15 -0.11186648325633515 -0.11186648325633515
		-1.169203622808368e-15 -0.146160596194644 -0.06054169861333298
		-0.0010704023330471461 -0.1574163265508367 -6.2864225933857744e-09
		-1.169203622808368e-15 -0.146160596194644 0.06054169861333298
		-1.169203622808368e-15 -0.11186648325633515 0.11186648325633515
		-1.169203622808368e-15 -0.06054169861333298 0.146160596194644
		-1.169203622808368e-15 -7.4584440660405588e-09 0.15742001795704977
		-1.169203622808368e-15 0.06054169861333298 0.146160596194644
		-1.169203622808368e-15 0.11186648325633515 0.11186648325633515
		-1.169203622808368e-15 0.146160596194644 0.06054169861333298
		-1.169203622808368e-15 0.1574163265508367 0
		-1.169203622808368e-15 0.146160596194644 -0.06054169861333298
		-1.169203622808368e-15 0.11186648325633515 -0.11186648325633515
		-1.169203622808368e-15 0.06054169861333298 -0.146160596194644
		-1.169203622808368e-15 -6.740754805355331e-32 -0.15742001795704977
		-1.169203622808368e-15 -6.740754805355331e-32 -0.6328125
		-1.169203622808368e-15 -6.740754805355331e-32 -1.1711366400095347e-08
		-1.169203622808368e-15 1.265625 0
		-1.169203622808368e-15 -1.265625 0
		-1.169203622808368e-15 -6.740754805355331e-32 1.1711366400095347e-08
		-1.169203622808368e-15 -6.740754805355331e-32 1.1711366400095347e-08
		;
	setAttr ".adot" yes;
createNode transform -n "toeBird01_1_guide_ofs" -p "toeBird_guide";
	rename -uid "0F48E1B4-4C68-0734-E7E5-ACAEF3FE2CF6";
	setAttr ".t" -type "double3" 1 -9.8607613152626476e-32 -1 ;
	setAttr ".r" -type "double3" 0 -29.999999999999996 0 ;
createNode transform -n "toe1_up_guide" -p "toeBird01_1_guide_ofs";
	rename -uid "83BFA0A1-4F43-39F1-3BC8-62B1BD8B280D";
	setAttr ".t" -type "double3" 0 9.8607613152626476e-32 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "toe1_mid_guide" -p "toe1_up_guide";
	rename -uid "1302C267-4C36-A0A6-EE47-DE94CDBD6A4A";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.9721522630525295e-31 -3.3000000000000012 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe1_mid_guideShape" -p "toe1_mid_guide";
	rename -uid "ABE33A60-4636-742A-6479-5882318BE696";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe1_low_guide" -p "toe1_mid_guide";
	rename -uid "C5181D02-4C6A-BBCF-D402-B89BEB7519D3";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.9721522630525304e-31 -3.3000000000000007 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe1_low_guideShape" -p "toe1_low_guide";
	rename -uid "3361DA26-4B21-33F4-0B72-E3ABFF44E198";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe1_end_guide" -p "toe1_low_guide";
	rename -uid "5E590886-4707-6528-845C-C58BF40B45F3";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 -3.3000000000000007 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe1_end_guideShape" -p "toe1_end_guide";
	rename -uid "109B990B-496F-1C05-601E-C9B85F6972C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toeBird02_1_guide_ofs" -p "toeBird_guide";
	rename -uid "912A7F48-47CC-BAEE-F13C-298C1960AB1F";
	setAttr ".t" -type "double3" 0 0 -2 ;
createNode transform -n "toe2_up_guide" -p "toeBird02_1_guide_ofs";
	rename -uid "72ABB071-4031-06BA-3D38-EF96E1532163";
createNode transform -n "toe2_mid_guide" -p "toe2_up_guide";
	rename -uid "61F19984-4C22-D6CA-C92C-8C85D5C7E83C";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.9721522630525295e-31 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe2_mid_guideShape" -p "toe2_mid_guide";
	rename -uid "1E4E8BAA-4185-A9F5-BD8F-D2B7310E1C80";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe2_mid2_guide" -p "toe2_mid_guide";
	rename -uid "AE95A352-4341-8539-3536-9C8908863E2E";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe2_mid2_guideShape" -p "toe2_mid2_guide";
	rename -uid "86DF45AE-4D3B-B2CF-903D-C4BEDBAB8AAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe2_low_guide" -p "toe2_mid2_guide";
	rename -uid "663ED026-4A54-E56D-0728-20A67F96F598";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.9721522630525295e-31 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe2_low_guideShape" -p "toe2_low_guide";
	rename -uid "C1E7166B-4400-8140-F088-05B2FE239706";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe2_end_guide" -p "toe2_low_guide";
	rename -uid "DAD8AEF7-4655-0991-3E42-49AFCAA6CE90";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe2_end_guideShape" -p "toe2_end_guide";
	rename -uid "F40DFCFE-4CD3-0BBF-BA84-80B06D14EFE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toeBird03_1_guide_ofs" -p "toeBird_guide";
	rename -uid "D1D699C2-48DF-4A3C-ACD5-D096D547FFB1";
	setAttr ".t" -type "double3" -1 -9.8607613152626476e-32 -1 ;
	setAttr ".r" -type "double3" 0 29.999999999999996 0 ;
createNode transform -n "toe3_up_guide" -p "toeBird03_1_guide_ofs";
	rename -uid "38D3E6A3-4FBC-CEFA-AD38-2D9993A8E204";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "toe3_mid_guide" -p "toe3_up_guide";
	rename -uid "BCC1AE0D-4130-4287-60D8-03B2E2C991FC";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.9721522630525286e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe3_mid_guideShape" -p "toe3_mid_guide";
	rename -uid "ED6C687B-46BE-5B43-D3E5-478FA89194A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe3_mid2_guide" -p "toe3_mid_guide";
	rename -uid "2C8B7081-4CCE-8352-6263-9DB661C47C28";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 5.4234187233944562e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe3_mid2_guideShape" -p "toe3_mid2_guide";
	rename -uid "EE4A3BB7-4457-B4D0-5698-81999674A6B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe3_mid3_guide" -p "toe3_mid2_guide";
	rename -uid "6A73D484-4DD3-304A-D1A4-59AD8CAE8D1C";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 5.9164567891575885e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe3_mid3_guideShape" -p "toe3_mid3_guide";
	rename -uid "BCE35AB3-460F-E8AB-B848-C6BBFE65269F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe3_low_guide" -p "toe3_mid3_guide";
	rename -uid "CB5CEDF9-4E77-49EF-042B-94BE49FE5953";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 3.4512664603419266e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe3_low_guideShape" -p "toe3_low_guide";
	rename -uid "4328F107-40EA-E850-3D07-80A94A987914";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "toe3_end_guide" -p "toe3_low_guide";
	rename -uid "ADB1E449-47D1-0C4D-0EC5-C7BB90677EBD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 4.9303806576313238e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe3_end_guideShape" -p "toe3_end_guide";
	rename -uid "D6DB8BDA-408B-BB2E-76C9-15B3A99FC849";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704977 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		-0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704977 -7.4584440660405588e-09 0
		-0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579371 -0.00098897413073525888 0.14543370557691293
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687915 -0.00040965116777848829 0.060240479866345203
		0.15742001795704977 0 0
		0.14543708057687915 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314653
		0.060242061897579371 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982889
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982889 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982889 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "toeBird_guideShape" -p "toeBird_guide";
	rename -uid "EB5E4563-4BDB-C14B-2EB9-A188C8BE1EBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		4.21875 0 4.21875
		4.21875 0 -4.21875
		-4.21875 0 -4.21875
		-4.21875 0 4.21875
		4.21875 0 4.21875
		;
createNode transform -n "toesRoot_guide" -p "master_guide";
	rename -uid "62EF956C-4BC5-4324-3BC6-5CA5D5BFF1A0";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -dv 1 -at "double";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".wsMirror";
createNode locator -n "toesRoot_guideShape" -p "toesRoot_guide";
	rename -uid "FBADE16D-4701-19ED-E38A-8BBF8EFFD454";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "upr_guide" ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "palm_guide" ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "ball_guide" ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "tip_guide" ;
parent -s -nc -r -add "|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "digit_guide" ;
parent -s -nc -r -add "|master_guide|lwr_guide_ofs|lwr_guide|radius_guide_ZRO|radius_guide|ulna_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|master_guide|lwr_guide_ofs|lwr_guide|radius_guide_ZRO|radius_guide|ulna_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|master_guide|lwr_guide_ofs|lwr_guide|radius_guide_ZRO|radius_guide|ulna_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe3_1_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe3_5_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe0_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe1_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe1_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe2_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe0_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe3_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe1_5_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe4_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe3_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe4_5_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe2_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe4_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe2_1_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe2_3_guide_ofs|toe2_3_guide|toe2_4_guide_ofs|toe2_4_guide|toe2_5_guide_ofs|toe2_5_guide|toe3_1_guideShape" "toe1_1_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe1_2_guideShape" "toe3_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe1_2_guideShape" "toe4_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe1_2_guideShape" "toe0_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe2_2_guide_ofs|toe2_2_guide|toe1_2_guideShape" "toe1_2_guide" ;
parent -s -nc -r -add "|master_guide|toeBird_guide_grp_ofs|toeBird_guide_grp|toeBird_guide|toeBird00_1_guide_ofs|toe0_up_guide|toe0_up_guideShape" "toe1_up_guide" ;
parent -s -nc -r -add "|master_guide|toeBird_guide_grp_ofs|toeBird_guide_grp|toeBird_guide|toeBird00_1_guide_ofs|toe0_up_guide|toe0_up_guideShape" "toe3_up_guide" ;
parent -s -nc -r -add "|master_guide|toeBird_guide_grp_ofs|toeBird_guide_grp|toeBird_guide|toeBird00_1_guide_ofs|toe0_up_guide|toe0_up_guideShape" "toe2_up_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "90A8DC19-432B-F51A-3CA1-C484312C2FF9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8BC25F94-420F-005F-8793-8B90C122CB93";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1957AA0B-4627-AECF-B6FF-769CDA0AFE64";
createNode displayLayerManager -n "layerManager";
	rename -uid "EE2B1FC8-4761-D117-B7F6-368429F879FA";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1BC477AC-4E94-5E56-3DC6-45BA549FE024";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "47ABDCF5-4400-C307-437A-E4AF35DAB19B";
	setAttr ".g" yes;
createNode ikSpringSolver -s -n "ikSpringSolver";
	rename -uid "FAE7F5DB-4B62-65C0-B03F-05843F25B4CD";
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
createNode decomposeMatrix -n "DCM_8";
	rename -uid "B975ABD7-4D41-FD7A-464D-D4B37605ED22";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "BA6AEEF0-4B4B-4C80-2018-1E8475EA8DC5";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "932159D2-400E-A5D9-4ED3-7D9200A3195E";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "BDBD74B5-4DAF-8DA2-B863-17B3434C72C9";
createNode decomposeMatrix -n "DCM_36";
	rename -uid "B596337F-45DA-B34A-A388-0380B09FB43C";
createNode decomposeMatrix -n "DCM_37";
	rename -uid "1200C4F7-42F6-F3D1-798E-F185D4B3600D";
createNode decomposeMatrix -n "DCM_38";
	rename -uid "08006D61-4308-442A-1B3C-9BA24D8421A5";
createNode decomposeMatrix -n "DCM_39";
	rename -uid "893112C8-4591-FCEA-7FDB-73B3064AAE63";
createNode decomposeMatrix -n "DCM_40";
	rename -uid "0E8028DC-4792-4152-B5ED-8BA455C478DF";
createNode decomposeMatrix -n "DCM_41";
	rename -uid "F76D8213-49AB-FBCE-C836-8CB61B609880";
createNode decomposeMatrix -n "DCM_42";
	rename -uid "3E67D98C-4470-B9CA-7509-DFABEC521AC7";
createNode decomposeMatrix -n "DCM_43";
	rename -uid "60F93AFD-4C6E-EA73-525F-2E968999997F";
createNode decomposeMatrix -n "DCM_44";
	rename -uid "1C9DAD73-49AC-D743-3CBF-E1B407373FEB";
createNode decomposeMatrix -n "DCM_45";
	rename -uid "DB1D6144-458A-9EFB-9CB7-7D9033F93D80";
createNode decomposeMatrix -n "DCM_46";
	rename -uid "1B5B65AF-4398-B7D6-CCE7-0B8A6C4F804E";
createNode decomposeMatrix -n "DCM_47";
	rename -uid "DF598C9F-4E6C-583A-9F79-AA9DDCE034BC";
createNode decomposeMatrix -n "DCM_48";
	rename -uid "126B6F40-4514-9455-033E-C7906DFEEF68";
createNode decomposeMatrix -n "DCM_49";
	rename -uid "CD8F1067-46C2-0001-858A-F58D6B454B98";
createNode decomposeMatrix -n "DCM_50";
	rename -uid "927F7E05-4689-1BBA-ED65-A2B28B96BF71";
createNode decomposeMatrix -n "DCM_51";
	rename -uid "BF655D8B-4F29-76FF-B2BD-60AFA7C7097A";
createNode decomposeMatrix -n "DCM_52";
	rename -uid "F700B6EC-4014-851F-ACF4-B6870ADBC18D";
createNode decomposeMatrix -n "DCM_53";
	rename -uid "153A5E1D-4511-4603-195D-3EB7283A7582";
createNode decomposeMatrix -n "DCM_54";
	rename -uid "452B2296-4018-C43C-A9B3-4C900E297E65";
createNode decomposeMatrix -n "DCM_55";
	rename -uid "4464716B-4865-2D95-CDB6-59BAD38C4E81";
createNode decomposeMatrix -n "DCM_56";
	rename -uid "7D9EF0D2-483F-2ABC-2C63-7FBBA275F0D8";
createNode decomposeMatrix -n "DCM_57";
	rename -uid "56EE036A-4D95-1A0A-EEF6-8E9FD495B461";
createNode decomposeMatrix -n "DCM_58";
	rename -uid "EF42E506-4E44-00ED-80E6-5E9740155E36";
createNode decomposeMatrix -n "DCM_59";
	rename -uid "E9E90629-4B94-49F6-BCEB-F5819B61E5F7";
createNode decomposeMatrix -n "DCM_60";
	rename -uid "A5A40830-45E3-C352-36CD-BC9141A684B3";
createNode condition -n "le_cdn_1";
	rename -uid "61CA3496-49C3-EEFB-D998-9E844ECBFAA5";
	setAttr ".op" 5;
	setAttr ".st" 4;
createNode condition -n "le_cdn_2";
	rename -uid "F42E04A9-4BCF-8175-5EF6-6AB67C0FB400";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "le_cdn_3";
	rename -uid "99CECF6C-4CCD-916E-7F72-87B74BB9C9C8";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode ik2Bsolver -s -n "ik2Bsolver";
	rename -uid "C55138B4-4F9F-1E57-B1F5-A897F4482410";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8B965B41-4F53-2D7C-CF8B-CE82A4D49CB4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1177\n            -height 723\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"toe04_3_guide\" \n                -opaqueContainers 0\n                -dropTargetNode \"toe04_1_guide\" \n                -dropNode \"toe04_3_guide\" \n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 943\n            -height 723\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 943\\n    -height 723\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 943\\n    -height 723\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 30 -size 300 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "878E7EB4-4C20-180C-A804-2F88FBB35FB3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode decomposeMatrix -n "DCM_100";
	rename -uid "C30C7519-4808-B76B-C600-A9BB7F490A33";
createNode decomposeMatrix -n "DCM_101";
	rename -uid "5DA4CC60-4F7E-9E98-4366-A5AC463C42E7";
createNode decomposeMatrix -n "DCM_102";
	rename -uid "F63BE7E2-4EB2-6551-7613-B183D61C603A";
createNode decomposeMatrix -n "DCM_103";
	rename -uid "AEAEAB52-4370-11D7-0FFA-328CE495C57D";
createNode decomposeMatrix -n "DCM_104";
	rename -uid "3C89AA82-42BC-2C50-3016-9A905B394880";
createNode decomposeMatrix -n "DCM_105";
	rename -uid "7B9E2D34-42F1-000D-89D3-E494496DD6EC";
createNode decomposeMatrix -n "DCM_106";
	rename -uid "143BC7D4-450E-C9DE-CEC7-F796C86E483B";
createNode decomposeMatrix -n "DCM_107";
	rename -uid "AE1B764E-474E-F9EC-4B8D-CA95FECB6185";
createNode decomposeMatrix -n "DCM_108";
	rename -uid "C4F8C8D5-4A8F-50D4-4C8D-0B9C09878EF7";
createNode decomposeMatrix -n "DCM_109";
	rename -uid "C2AE5E08-44C3-CDB7-6F20-E2BD5F9F4C91";
createNode decomposeMatrix -n "DCM_110";
	rename -uid "134E9E38-4AAF-BA54-E66A-8F95B183F828";
createNode decomposeMatrix -n "DCM_111";
	rename -uid "0D85921C-4A9D-B410-846E-C0AF5E081A69";
createNode decomposeMatrix -n "DCM_112";
	rename -uid "1170B4FD-4B6C-E143-43F8-0FA3B78F412D";
createNode decomposeMatrix -n "DCM_113";
	rename -uid "CB522C64-4EE6-DEA7-EC0C-DBB59F336393";
createNode decomposeMatrix -n "DCM_114";
	rename -uid "5382C078-44CE-E775-406D-82A202736AE7";
createNode decomposeMatrix -n "DCM_115";
	rename -uid "F618DAC8-49BB-7900-D1DD-D9BCDDEBDA9B";
createNode decomposeMatrix -n "DCM_116";
	rename -uid "402E86D3-4973-F3FD-C3AF-FE9D6758F2C5";
createNode decomposeMatrix -n "DCM_117";
	rename -uid "C22CB08B-4E6E-902A-78E6-16B19770B518";
createNode condition -n "condition1";
	rename -uid "569AECD7-49E9-F5B0-9770-2E9BDDEA7303";
	setAttr ".op" 1;
	setAttr ".st" 1;
createNode condition -n "condition2";
	rename -uid "8BC7CEF1-4D11-7271-7066-048B4256F680";
	setAttr ".op" 1;
	setAttr ".st" 2;
createNode condition -n "condition3";
	rename -uid "6ECEF118-4762-B789-9927-58B187D42D32";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "condition4";
	rename -uid "2BAF9F2E-44A9-4695-1785-78BF1991D9CC";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7F277C7A-4B8B-CD50-650C-A3B4E8BC1843";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -7332.738229608738 -1697.6190954683327 ;
	setAttr ".tgi[0].vh" -type "double2" 6381.5477912151582 2016.666701838139 ;
	setAttr -s 53 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 224.28572082519531;
	setAttr ".tgi[0].ni[0].y" 62.857143402099609;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 224.28572082519531;
	setAttr ".tgi[0].ni[1].y" 831.4285888671875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 224.28572082519531;
	setAttr ".tgi[0].ni[2].y" -244.28572082519531;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 224.28572082519531;
	setAttr ".tgi[0].ni[3].y" -1274.2857666015625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 224.28572082519531;
	setAttr ".tgi[0].ni[4].y" -751.4285888671875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 224.28572082519531;
	setAttr ".tgi[0].ni[5].y" -142.85714721679688;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -1064.2857666015625;
	setAttr ".tgi[0].ni[6].y" 1024.2857666015625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 224.28572082519531;
	setAttr ".tgi[0].ni[7].y" 1541.4285888671875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -1064.2857666015625;
	setAttr ".tgi[0].ni[8].y" 1297.142822265625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 224.28572082519531;
	setAttr ".tgi[0].ni[9].y" 1642.857177734375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 224.28572082519531;
	setAttr ".tgi[0].ni[10].y" -447.14285278320312;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 224.28572082519531;
	setAttr ".tgi[0].ni[11].y" -650;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 224.28572082519531;
	setAttr ".tgi[0].ni[12].y" 1034.2857666015625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 224.28572082519531;
	setAttr ".tgi[0].ni[13].y" 2150;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -90;
	setAttr ".tgi[0].ni[14].y" 900;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 224.28572082519531;
	setAttr ".tgi[0].ni[15].y" -1968.5714111328125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 224.28572082519531;
	setAttr ".tgi[0].ni[16].y" 932.85711669921875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 224.28572082519531;
	setAttr ".tgi[0].ni[17].y" -954.28570556640625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 224.28572082519531;
	setAttr ".tgi[0].ni[18].y" 1440;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 224.28572082519531;
	setAttr ".tgi[0].ni[19].y" -548.5714111328125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 224.28572082519531;
	setAttr ".tgi[0].ni[20].y" -1578.5714111328125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 224.28572082519531;
	setAttr ".tgi[0].ni[21].y" -1838.5714111328125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -417.14285278320312;
	setAttr ".tgi[0].ni[22].y" 305.71429443359375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 224.28572082519531;
	setAttr ".tgi[0].ni[23].y" 2048.571533203125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 224.28572082519531;
	setAttr ".tgi[0].ni[24].y" 367.14285278320312;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -1371.4285888671875;
	setAttr ".tgi[0].ni[25].y" 2341.428466796875;
	setAttr ".tgi[0].ni[25].nvs" 18306;
	setAttr ".tgi[0].ni[26].x" 224.28572082519531;
	setAttr ".tgi[0].ni[26].y" -345.71429443359375;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 224.28572082519531;
	setAttr ".tgi[0].ni[27].y" 615.71429443359375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 224.28572082519531;
	setAttr ".tgi[0].ni[28].y" 1744.2857666015625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 224.28572082519531;
	setAttr ".tgi[0].ni[29].y" 164.28572082519531;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 224.28572082519531;
	setAttr ".tgi[0].ni[30].y" -38.571430206298828;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 224.28572082519531;
	setAttr ".tgi[0].ni[31].y" 1338.5714111328125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -417.14285278320312;
	setAttr ".tgi[0].ni[32].y" 62.857143402099609;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 224.28572082519531;
	setAttr ".tgi[0].ni[33].y" 730;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -90;
	setAttr ".tgi[0].ni[34].y" 152.85714721679688;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -90;
	setAttr ".tgi[0].ni[35].y" 1325.7142333984375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 224.28572082519531;
	setAttr ".tgi[0].ni[36].y" 265.71429443359375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -90;
	setAttr ".tgi[0].ni[37].y" -335.71429443359375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -90;
	setAttr ".tgi[0].ni[38].y" 1224.2857666015625;
	setAttr ".tgi[0].ni[38].nvs" 18306;
	setAttr ".tgi[0].ni[39].x" 224.28572082519531;
	setAttr ".tgi[0].ni[39].y" 1237.142822265625;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 224.28572082519531;
	setAttr ".tgi[0].ni[40].y" -852.85711669921875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 224.28572082519531;
	setAttr ".tgi[0].ni[41].y" -1375.7142333984375;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 224.28572082519531;
	setAttr ".tgi[0].ni[42].y" -1477.142822265625;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 224.28572082519531;
	setAttr ".tgi[0].ni[43].y" 1845.7142333984375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" -90;
	setAttr ".tgi[0].ni[44].y" -177.14285278320312;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 224.28572082519531;
	setAttr ".tgi[0].ni[45].y" -1708.5714111328125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 224.28572082519531;
	setAttr ".tgi[0].ni[46].y" 514.28570556640625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 224.28572082519531;
	setAttr ".tgi[0].ni[47].y" -1055.7142333984375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -757.14288330078125;
	setAttr ".tgi[0].ni[48].y" 851.4285888671875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -90;
	setAttr ".tgi[0].ni[49].y" 410;
	setAttr ".tgi[0].ni[49].nvs" 18305;
	setAttr ".tgi[0].ni[50].x" -757.14288330078125;
	setAttr ".tgi[0].ni[50].y" 461.42855834960938;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 224.28572082519531;
	setAttr ".tgi[0].ni[51].y" 1947.142822265625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 224.28572082519531;
	setAttr ".tgi[0].ni[52].y" 1135.7142333984375;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -123.21428081819009 -845.83329972293791 ;
	setAttr ".tgi[1].vh" -type "double2" 801.78568242561391 150.59523211112122 ;
	setAttr -s 10 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 515.98394775390625;
	setAttr ".tgi[1].ni[0].y" -188.14154052734375;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 166.64239501953125;
	setAttr ".tgi[1].ni[1].y" -159.54570007324219;
	setAttr ".tgi[1].ni[1].nvs" 18305;
	setAttr ".tgi[1].ni[2].x" 533.74017333984375;
	setAttr ".tgi[1].ni[2].y" -112.96933746337891;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 514.53289794921875;
	setAttr ".tgi[1].ni[3].y" -8.5608711242675781;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 513.83416748046875;
	setAttr ".tgi[1].ni[4].y" 61.497306823730469;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 705.97503662109375;
	setAttr ".tgi[1].ni[5].y" -305.07489013671875;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 4.3697452545166016;
	setAttr ".tgi[1].ni[6].y" 144.20167541503906;
	setAttr ".tgi[1].ni[6].nvs" 18306;
	setAttr ".tgi[1].ni[7].x" 248.59269714355469;
	setAttr ".tgi[1].ni[7].y" 52.764072418212891;
	setAttr ".tgi[1].ni[7].nvs" 18305;
	setAttr ".tgi[1].ni[8].x" 120;
	setAttr ".tgi[1].ni[8].y" -685.71429443359375;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" -91.428573608398438;
	setAttr ".tgi[1].ni[9].y" -32.857143402099609;
	setAttr ".tgi[1].ni[9].nvs" 18304;
createNode decomposeMatrix -n "DCM_118";
	rename -uid "CCCD0410-47CF-E7AD-727E-01878DED85ED";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "CEA8F93B-4468-9CBF-B3F2-D8B1CF6479B5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
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
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcr";
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
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".u";
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
	setAttr -av -k on ".rv";
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
	setAttr -s 37 ".hyp";
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
	setAttr ".hyp[84975].isc" yes;
	setAttr ".hyp[85140].isc" yes;
	setAttr ".hyp[85141].isc" yes;
	setAttr ".hyp[85142].isc" yes;
	setAttr ".hyp[85143].isc" yes;
	setAttr ".hyp[85148].isc" yes;
	setAttr ".hyp[85149].isc" yes;
	setAttr ".hyp[85150].isc" yes;
	setAttr ".hyp[85151].isc" yes;
	setAttr ".hyp[85152].isc" yes;
	setAttr ".hyp[85153].isc" yes;
	setAttr ".hyp[85154].isc" yes;
	setAttr ".hyp[85155].isc" yes;
	setAttr ".hyp[85156].isc" yes;
	setAttr ".hyp[85157].isc" yes;
	setAttr ".hyp[85158].isc" yes;
	setAttr ".hyp[85159].isc" yes;
	setAttr ".hyp[85163].isc" yes;
	setAttr ".hyp[85184].isc" yes;
	setAttr ".hyp[85185].isc" yes;
	setAttr ".hyp[85186].isc" yes;
	setAttr ".hyp[85187].isc" yes;
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
connectAttr "master_guide.dualBone" "radius_guide_ZRO.v";
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
connectAttr "master_guide.dualBone" "ulna_guide_ZRO.v";
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
connectAttr "master_guide.dualBone" "radiusEnd_guide_ZRO.v";
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
connectAttr "master_guide.dualBone" "ulnaEnd_guide_ZRO.v";
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
connectAttr "master_guide.carpalFix" "carpal_guide.v" -l on;
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
connectAttr "condition1.ocr" "toeMain_guide.v";
connectAttr "master_guide.includeMeta" "toe2_1_guide.v";
connectAttr "le_cdn_3.ocr" "toe1_2_guide.v";
connectAttr "master_guide.includeMeta" "toe1_1_guide.v";
connectAttr "le_cdn_1.ocr" "toe0_2_guide.v";
connectAttr "master_guide.includeMeta" "toe0_1_guide.v";
connectAttr "master_guide.includeMeta" "toe3_1_guide.v";
connectAttr "le_cdn_2.ocr" "toe4_2_guide.v";
connectAttr "master_guide.includeMeta" "toe4_1_guide.v";
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
connectAttr "master_guide.dualBone" "line_grp_dual.v";
connectAttr "DCM_8.ot" "line_07Shape.cp[0]";
connectAttr "DCM_9.ot" "line_07Shape.cp[1]";
connectAttr "DCM_10.ot" "line_08Shape.cp[0]";
connectAttr "DCM_11.ot" "line_08Shape.cp[1]";
connectAttr "condition1.ocr" "line_grp_mammalFoot.v";
connectAttr "le_cdn_1.ocr" "toe_line_grp1.v";
connectAttr "master_guide.includeMeta" "|master_guide|line_grp_mammalFoot|toe_line_grp1|line_34.v"
		;
connectAttr "DCM_37.ot" "curveShape3.cp[0]";
connectAttr "DCM_38.ot" "curveShape3.cp[1]";
connectAttr "DCM_38.ot" "curveShape4.cp[0]";
connectAttr "DCM_39.ot" "curveShape4.cp[1]";
connectAttr "DCM_39.ot" "curveShape5.cp[0]";
connectAttr "DCM_40.ot" "curveShape5.cp[1]";
connectAttr "le_cdn_3.ocr" "toe_line_grp2.v";
connectAttr "master_guide.includeMeta" "|master_guide|line_grp_mammalFoot|toe_line_grp2|line_37.v"
		;
connectAttr "DCM_41.ot" "curveShape6.cp[0]";
connectAttr "DCM_42.ot" "curveShape6.cp[1]";
connectAttr "DCM_42.ot" "curveShape7.cp[0]";
connectAttr "DCM_43.ot" "curveShape7.cp[1]";
connectAttr "DCM_43.ot" "curveShape8.cp[0]";
connectAttr "DCM_44.ot" "curveShape8.cp[1]";
connectAttr "DCM_44.ot" "curveShape9.cp[0]";
connectAttr "DCM_45.ot" "curveShape9.cp[1]";
connectAttr "master_guide.includeMeta" "|master_guide|line_grp_mammalFoot|toe_line_grp3|line_41.v"
		;
connectAttr "DCM_46.ot" "curveShape10.cp[0]";
connectAttr "DCM_47.ot" "curveShape10.cp[1]";
connectAttr "DCM_47.ot" "curveShape11.cp[0]";
connectAttr "DCM_48.ot" "curveShape11.cp[1]";
connectAttr "DCM_48.ot" "curveShape12.cp[0]";
connectAttr "DCM_49.ot" "curveShape12.cp[1]";
connectAttr "DCM_49.ot" "curveShape13.cp[0]";
connectAttr "DCM_50.ot" "curveShape13.cp[1]";
connectAttr "master_guide.includeMeta" "line_45.v";
connectAttr "DCM_51.ot" "curveShape14.cp[0]";
connectAttr "DCM_52.ot" "curveShape14.cp[1]";
connectAttr "DCM_52.ot" "curveShape15.cp[0]";
connectAttr "DCM_53.ot" "curveShape15.cp[1]";
connectAttr "DCM_53.ot" "curveShape16.cp[0]";
connectAttr "DCM_54.ot" "curveShape16.cp[1]";
connectAttr "DCM_54.ot" "curveShape17.cp[0]";
connectAttr "DCM_55.ot" "curveShape17.cp[1]";
connectAttr "le_cdn_2.ocr" "toe_line_grp5.v";
connectAttr "master_guide.includeMeta" "line_49.v";
connectAttr "DCM_56.ot" "curveShape18.cp[0]";
connectAttr "DCM_57.ot" "curveShape18.cp[1]";
connectAttr "DCM_57.ot" "curveShape19.cp[0]";
connectAttr "DCM_58.ot" "curveShape19.cp[1]";
connectAttr "DCM_58.ot" "curveShape20.cp[0]";
connectAttr "DCM_59.ot" "curveShape20.cp[1]";
connectAttr "DCM_59.ot" "curveShape21.cp[0]";
connectAttr "DCM_60.ot" "curveShape21.cp[1]";
connectAttr "condition2.ocr" "line_grp_birdFoot.v";
connectAttr "condition3.ocr" "group_toe_0.v";
connectAttr "DCM_115.ot" "curveShape70.cp[0]";
connectAttr "DCM_116.ot" "curveShape70.cp[1]";
connectAttr "DCM_116.ot" "curveShape71.cp[0]";
connectAttr "DCM_117.ot" "curveShape71.cp[1]";
connectAttr "DCM_117.ot" "curveShape72.cp[0]";
connectAttr "DCM_118.ot" "curveShape72.cp[1]";
connectAttr "condition4.ocr" "group_toe_1.v";
connectAttr "DCM_100.ot" "curveShape58.cp[0]";
connectAttr "DCM_101.ot" "curveShape58.cp[1]";
connectAttr "DCM_101.ot" "curveShape59.cp[0]";
connectAttr "DCM_102.ot" "curveShape59.cp[1]";
connectAttr "DCM_102.ot" "curveShape60.cp[0]";
connectAttr "DCM_103.ot" "curveShape60.cp[1]";
connectAttr "DCM_104.ot" "curveShape61.cp[0]";
connectAttr "DCM_105.ot" "curveShape61.cp[1]";
connectAttr "DCM_105.ot" "curveShape62.cp[0]";
connectAttr "DCM_106.ot" "curveShape62.cp[1]";
connectAttr "DCM_106.ot" "curveShape63.cp[0]";
connectAttr "DCM_107.ot" "curveShape63.cp[1]";
connectAttr "DCM_107.ot" "curveShape64.cp[0]";
connectAttr "DCM_108.ot" "curveShape64.cp[1]";
connectAttr "DCM_109.ot" "curveShape65.cp[0]";
connectAttr "DCM_110.ot" "curveShape65.cp[1]";
connectAttr "DCM_110.ot" "curveShape66.cp[0]";
connectAttr "DCM_111.ot" "curveShape66.cp[1]";
connectAttr "DCM_111.ot" "curveShape67.cp[0]";
connectAttr "DCM_112.ot" "curveShape67.cp[1]";
connectAttr "DCM_112.ot" "curveShape68.cp[0]";
connectAttr "DCM_113.ot" "curveShape68.cp[1]";
connectAttr "DCM_113.ot" "curveShape69.cp[0]";
connectAttr "DCM_114.ot" "curveShape69.cp[1]";
connectAttr "condition2.ocr" "toeBird_guide.v";
connectAttr "condition3.ocr" "toeBird00_1_guide_ofs.v";
connectAttr "condition4.ocr" "toeBird01_1_guide_ofs.v";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hip_guide.wm" "DCM_1.imat";
connectAttr "upr_guide.wm" "DCM_2.imat";
connectAttr "lwr_guide.wm" "DCM_3.imat";
connectAttr "palm_guide.wm" "DCM_4.imat";
connectAttr "ball_guide.wm" "DCM_5.imat";
connectAttr "tip_guide.wm" "DCM_6.imat";
connectAttr "pvc_guide.wm" "DCM_7.imat";
connectAttr "radius_guide.wm" "DCM_8.imat";
connectAttr "radiusEnd_guide.wm" "DCM_9.imat";
connectAttr "ulna_guide.wm" "DCM_10.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_11.imat";
connectAttr "digit_guide.wm" "DCM_36.imat";
connectAttr "toe0_1_guide.wm" "DCM_37.imat";
connectAttr "toe0_2_guide.wm" "DCM_38.imat";
connectAttr "toe0_3_guide.wm" "DCM_39.imat";
connectAttr "toe0_4_guide.wm" "DCM_40.imat";
connectAttr "toe1_1_guide.wm" "DCM_41.imat";
connectAttr "toe1_2_guide.wm" "DCM_42.imat";
connectAttr "toe1_3_guide.wm" "DCM_43.imat";
connectAttr "toe1_4_guide.wm" "DCM_44.imat";
connectAttr "toe1_5_guide.wm" "DCM_45.imat";
connectAttr "toe2_1_guide.wm" "DCM_46.imat";
connectAttr "toe2_2_guide.wm" "DCM_47.imat";
connectAttr "toe2_3_guide.wm" "DCM_48.imat";
connectAttr "toe2_4_guide.wm" "DCM_49.imat";
connectAttr "toe2_5_guide.wm" "DCM_50.imat";
connectAttr "toe3_1_guide.wm" "DCM_51.imat";
connectAttr "toe3_2_guide.wm" "DCM_52.imat";
connectAttr "toe3_3_guide.wm" "DCM_53.imat";
connectAttr "toe3_4_guide.wm" "DCM_54.imat";
connectAttr "toe3_5_guide.wm" "DCM_55.imat";
connectAttr "toe4_1_guide.wm" "DCM_56.imat";
connectAttr "toe4_2_guide.wm" "DCM_57.imat";
connectAttr "toe4_3_guide.wm" "DCM_58.imat";
connectAttr "toe4_4_guide.wm" "DCM_59.imat";
connectAttr "toe4_5_guide.wm" "DCM_60.imat";
connectAttr "master_guide.toeNum" "le_cdn_1.ft";
connectAttr "master_guide.toeNum" "le_cdn_2.ft";
connectAttr "master_guide.toeNum" "le_cdn_3.ft";
connectAttr "toe1_end_guide.wm" "DCM_100.imat";
connectAttr "toe1_low_guide.wm" "DCM_101.imat";
connectAttr "toe1_mid_guide.wm" "DCM_102.imat";
connectAttr "toe1_up_guide.wm" "DCM_103.imat";
connectAttr "toe2_up_guide.wm" "DCM_104.imat";
connectAttr "toe2_mid_guide.wm" "DCM_105.imat";
connectAttr "toe2_mid2_guide.wm" "DCM_106.imat";
connectAttr "toe2_low_guide.wm" "DCM_107.imat";
connectAttr "toe2_end_guide.wm" "DCM_108.imat";
connectAttr "toe3_up_guide.wm" "DCM_109.imat";
connectAttr "toe3_mid_guide.wm" "DCM_110.imat";
connectAttr "toe3_mid2_guide.wm" "DCM_111.imat";
connectAttr "toe3_mid3_guide.wm" "DCM_112.imat";
connectAttr "toe3_low_guide.wm" "DCM_113.imat";
connectAttr "toe3_end_guide.wm" "DCM_114.imat";
connectAttr "toe0_up_guide.wm" "DCM_115.imat";
connectAttr "toe0_mid_guide.wm" "DCM_116.imat";
connectAttr "toe0_low_guide.wm" "DCM_117.imat";
connectAttr "master_guide.toeType" "condition1.ft";
connectAttr "master_guide.toeType" "condition2.ft";
connectAttr "master_guide.toeNum" "condition3.ft";
connectAttr "master_guide.toeNum" "condition4.ft";
connectAttr "line_grp_birdFoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "radius_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "|master_guide|line_grp_mammalFoot|toe_line_grp1|line_34.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "line_49.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "|master_guide|line_grp_mammalFoot|toe_line_grp3|line_41.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "carpal_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "radius_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "ulna_guide_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "ulnaEnd_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "toe4_1_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "le_cdn_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "toeMain_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "radiusEnd_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "ulna_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "master_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ulnaEnd_guide_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "toe4_2_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "|master_guide|line_grp_mammalFoot|toe_line_grp2|line_37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "toe0_2_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "patella_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "toeBird_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "toe_line_grp2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "radiusEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "line_grp_mammalFoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "le_cdn_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "le_cdn_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "line_grp_dual.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "radius_guide_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "condition1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "toe3_1_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "toe1_2_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "toe2_1_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "line_45.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "toe1_1_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "ulnaEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "toe0_1_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "ulna_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "condition2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "radiusEnd_guide_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "toe_line_grp5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "toe_line_grp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "group_toe_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "condition4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn";
connectAttr "toeBird01_1_guide_ofs.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "group_toe_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "toeBird00_1_guide_ofs.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "group_toe_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn";
connectAttr "condition3.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn";
connectAttr "group_toe_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn";
connectAttr "master_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "toe0_end_guide.wm" "DCM_118.imat";
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "line_grp_main.msg" ":hyperGraphLayout.hyp[83065].dn";
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
connectAttr "line_grp_mammalFoot.msg" ":hyperGraphLayout.hyp[84975].dn";
connectAttr "toe2_2_guide.msg" ":hyperGraphLayout.hyp[85140].dn";
connectAttr "toe2_3_guide.msg" ":hyperGraphLayout.hyp[85141].dn";
connectAttr "toe2_1_guide.msg" ":hyperGraphLayout.hyp[85142].dn";
connectAttr "toe2_4_guide.msg" ":hyperGraphLayout.hyp[85143].dn";
connectAttr "toe3_1_guide.msg" ":hyperGraphLayout.hyp[85148].dn";
connectAttr "toe4_1_guide.msg" ":hyperGraphLayout.hyp[85149].dn";
connectAttr "toe1_1_guide.msg" ":hyperGraphLayout.hyp[85150].dn";
connectAttr "toe0_1_guide.msg" ":hyperGraphLayout.hyp[85151].dn";
connectAttr "toe1_2_guide.msg" ":hyperGraphLayout.hyp[85152].dn";
connectAttr "toe0_2_guide.msg" ":hyperGraphLayout.hyp[85153].dn";
connectAttr "toe3_2_guide.msg" ":hyperGraphLayout.hyp[85154].dn";
connectAttr "toe4_2_guide.msg" ":hyperGraphLayout.hyp[85155].dn";
connectAttr "toe0_4_guide.msg" ":hyperGraphLayout.hyp[85156].dn";
connectAttr "toe1_4_guide.msg" ":hyperGraphLayout.hyp[85157].dn";
connectAttr "toe3_4_guide.msg" ":hyperGraphLayout.hyp[85158].dn";
connectAttr "toe4_4_guide.msg" ":hyperGraphLayout.hyp[85159].dn";
connectAttr "toeMain_guide.msg" ":hyperGraphLayout.hyp[85163].dn";
connectAttr "group_toe_1.msg" ":hyperGraphLayout.hyp[85184].dn";
connectAttr "group_toe_2.msg" ":hyperGraphLayout.hyp[85185].dn";
connectAttr "group_toe_3.msg" ":hyperGraphLayout.hyp[85186].dn";
connectAttr "group_toe_0.msg" ":hyperGraphLayout.hyp[85187].dn";
// End of rtLegQd.ma
