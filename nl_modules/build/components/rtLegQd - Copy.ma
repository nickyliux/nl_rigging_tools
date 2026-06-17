//Maya ASCII 2023 scene
//Name: rtLegQd.ma
//Last modified: Wed, Jun 10, 2026 07:16:55 PM
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
fileInfo "UUID" "7B5DE88B-4B0B-0DFF-A632-EF89257AE15D";
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 68.816234674196593 72.57058835788564 60.601253929385472 ;
	setAttr ".r" -type "double3" -15.338352728979103 59.400000000074741 -3.1240627806110016e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 97.966943440770621;
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
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "showRef" -ln "showRef" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeNum" -ln "toeNum" -dv 5 -min 2 -max 5 -at "long";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "scapulaAutoAim" -ln "scapulaAutoAim" -dv 0.5 -min 0 -max 1 
		-at "double";
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
	setAttr -cb on ".toeBones";
	setAttr -cb on ".showRef";
	setAttr -cb on ".toeNum";
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".scapulaAutoAim";
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
	setAttr ".t" -type "double3" 0 -5.0000000000000027 -5 ;
createNode transform -n "toeMain_guide" -p "toe_main_2_guide_ofs";
	rename -uid "96B82D0D-4224-6AE2-F9A9-4CBC6A3181BE";
createNode transform -n "toe02_2_guide_ofs" -p "toeMain_guide";
	rename -uid "1DAFA6CF-44F5-0333-2806-7CBEB14C1480";
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ofs";
	rename -uid "C6E5F714-4695-EF41-D9B5-7DA9AF9A1D94";
createNode transform -n "toe02_3_guide_ofs" -p "toe02_2_guide";
	rename -uid "3565BBD0-42DB-CB02-FEF7-5A83EFFD3A21";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 5.3290705182007514e-15 -7 ;
createNode transform -n "toe02_3_guide" -p "toe02_3_guide_ofs";
	rename -uid "2DC645B9-45F7-EDFD-0F74-BA8147295724";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe02_4_guide_ofs" -p "toe02_3_guide";
	rename -uid "80CA17D6-4C30-31AF-1299-7EA298364194";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe02_4_guide" -p "toe02_4_guide_ofs";
	rename -uid "D98A424E-4BDB-3933-95A5-62B67DF1CF7E";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe02_5_guide_ofs" -p "toe02_4_guide";
	rename -uid "8EC1B4D3-4C7F-0526-ADD3-E78900402A12";
	setAttr ".t" -type "double3" 0 4.4408920985006281e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe02_5_guide" -p "toe02_5_guide_ofs";
	rename -uid "6A902F4F-4B58-F837-F9C9-988005CF7EC3";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode nurbsCurve -n "toe03_1_guideShape" -p "toe02_5_guide";
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
createNode transform -n "toe02_1_guide_ofs" -p "toe02_2_guide";
	rename -uid "C3D000AF-4F98-C2E9-DCC6-16824B85B020";
createNode transform -n "toe02_1_guide" -p "toe02_1_guide_ofs";
	rename -uid "056D85F9-4CBA-09C0-EB4E-53ACEDCC5B88";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe02_1_guide_ofs_pointConstraint1" -p "toe02_1_guide_ofs";
	rename -uid "AAC4D5C8-411E-56F1-AB99-4D9C3190CDAA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut2_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 -10.999999999999998 4.3999999999999986 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode nurbsCurve -n "dotLineShape1" -p "toe02_2_guide";
	rename -uid "C4CF8242-458C-1A80-944B-179DE4DD1CFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 54 0 no 3
		55 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 55
		55
		-0.13992581110074731 -5.5879311940865335e-09 -0.0009515062404824732
		-0.1296387174536183 -5.5879311949098495e-09 0.052668186973320569
		-0.09961528025385262 -5.5879312095465788e-09 0.098269592767306527
		-0.054426468205740763 -5.5879312095465788e-09 0.12891027996089968
		-0.00095146874049077928 -5.5879311802731202e-09 0.13992562360074617
		0.052667999473314492 -5.5879311978371954e-09 0.1296385299536171
		0.098269499017299519 -5.5879311919825037e-09 0.099615186503850567
		0.12891018621089259 -5.5879311890551578e-09 0.054426280705739641
		0.13992562360073818 -5.5879311940407937e-09 0.00095151561548730782
		0.12963852995360911 -5.5879311919825037e-09 -0.052668186973315649
		0.099615092753843559 -5.5879311978371954e-09 -0.098269592767301572
		0.054426280705731696 -5.5879311919825037e-09 -0.12891027996089471
		-5.4672071923378245e-15 1.1709383462843448e-17 -0.13992562360074123
		-0.05266818697332358 -5.5879311919825037e-09 -0.12963852995361214
		-0.098269686517308538 -5.5879311861278119e-09 -0.099615186503845654
		-0.12891037371090169 -5.5879311832004661e-09 -0.0544262807057347
		-0.13992581110074731 -5.5879311940865335e-09 -0.0009515062404824732
		-0.12927459245725947 -0.053548499464514981 -0.00087907499120679045
		-0.098942530260580169 -0.098944686510553104 -0.00067281374326940552
		-0.05354728071453263 -0.12927740495722587 -0.00036412124635634225
		-5.4672071923378245e-15 -0.13992890485071086 2.4589705271971241e-15
		0.05354709321452357 -0.12927740495722587 0.00036413437136113423
		0.098942436510570081 -0.098944686510553118 0.00067282686827417409
		0.12927440495725045 -0.053548499464514995 0.000879088116211578
		0.13992562360073818 -5.5879311940407937e-09 0.00095151561548730782
		0.12927440495725045 0.053548499464514961 0.00087908811621158244
		0.098942436510570081 0.098944686510553118 0.00067282686827419165
		0.05354709321452357 0.12927740495722589 0.00036413437136112252
		-5.4672071923378245e-15 0.13992890485071086 6.6297305243313148e-09
		-0.05354728071453263 0.12927740495722589 -0.00036412124635631883
		-0.098942530260580169 0.098944686510553104 -0.00067281374326939381
		-0.12927459245725947 0.053548499464514981 -0.00087907499120677733
		-0.13992581110074731 -5.5879311940865335e-09 -0.0009515062404824732
		-0.12927459245725947 -0.053548499464514981 -0.00087907499120679045
		-0.098942530260580169 -0.098944686510553104 -0.00067281374326940552
		-0.05354728071453263 -0.12927740495722587 -0.00036412124635634225
		-5.4672071923378245e-15 -0.13992890485071086 2.4589705271971241e-15
		-5.4672071923378245e-15 -0.12992052995079462 0.053814843211854015
		-5.4672071923378245e-15 -0.099436874005631226 0.099436874005633655
		-5.4672071923378245e-15 -0.053814843211851537 0.12992052995079711
		-0.00095146874049077928 -5.5879311802731202e-09 0.13992562360074617
		-5.4672071923378245e-15 0.053814843211851537 0.12992052995079711
		-5.4672071923378245e-15 0.099436874005631171 0.099436874005633669
		-5.4672071923378245e-15 0.12992052995079462 0.053814843211854015
		-5.4672071923378245e-15 0.13992890485071086 6.6297305243313148e-09
		-5.4672071923378245e-15 0.12992052995079462 -0.053814843211849081
		-5.4672071923378245e-15 0.099436874005631171 -0.0994368740056287
		-5.4672071923378245e-15 0.053814843211851517 -0.12992052995079217
		-5.4672071923378245e-15 1.1709383462843448e-17 -0.13992562360074123
		-5.4672071923378245e-15 -0.053814843211851524 -0.12992052995079217
		-5.4672071923378245e-15 -0.099436874005631171 -0.099436874005628742
		-5.4672071923378245e-15 -0.12992052995079462 -0.053814843211849081
		-5.4672071923378245e-15 -0.13992890646901199 2.4765346023913892e-15
		-5.4672071923378245e-15 -1.3208558053262172 2.2013640910145682e-15
		-5.4672071923378245e-15 -1.3208558053262172 2.2013640910145682e-15
		;
	setAttr ".adot" yes;
createNode scaleConstraint -n "toe02_2_guide_ofs_scaleConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "9D13300C-40C1-8C0B-8BDB-8885A0DB1DFE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "toe02_2_guide_ofs_parentConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "3D43E03C-4625-3421-737B-3485F6A119F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "toe01_2_guide_ofs" -p "toeMain_guide";
	rename -uid "35B74CF6-4E45-E65E-EE66-1EB785CAF57A";
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ofs";
	rename -uid "B44BCC66-44DC-A18B-BC4A-6D95B915679D";
createNode transform -n "toe01_3_guide_ofs" -p "toe01_2_guide";
	rename -uid "0F30D4E6-4AD8-BBEA-518A-33B04FB4F37A";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 -7 ;
createNode transform -n "toe01_3_guide" -p "toe01_3_guide_ofs";
	rename -uid "80BE644F-4F74-9BCD-95CC-629718039753";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe01_4_guide_ofs" -p "toe01_3_guide";
	rename -uid "DC1740B0-45B8-502D-0F84-DFA69FE72D0D";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000071 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe01_4_guide" -p "toe01_4_guide_ofs";
	rename -uid "CEDE5B7B-4527-589C-1FB6-A78C19C4F73F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe01_5_guide_ofs" -p "toe01_4_guide";
	rename -uid "19ECCA67-4904-3B43-1169-E9A00480058F";
	setAttr ".t" -type "double3" 0 4.4408920984955893e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe01_5_guide" -p "toe01_5_guide_ofs";
	rename -uid "32C59068-451C-A451-EC8D-74A2606D426C";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode transform -n "toe01_1_guide_ofs" -p "toe01_2_guide";
	rename -uid "5A42BBB6-4322-A87E-BD70-DA88F521B273";
createNode transform -n "toe01_1_guide" -p "toe01_1_guide_ofs";
	rename -uid "C6F4C7F5-4CFC-229B-537F-C685DFAE0E36";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe01_1_guide_ofs_pointConstraint1" -p "toe01_1_guide_ofs";
	rename -uid "DAE12DC7-4C86-464B-FCC4-89AB5F00C406";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut2_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -2 -10.999999999999998 4.3999999999999986 ;
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode scaleConstraint -n "toe01_2_guide_ofs_scaleConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "55621D10-4271-286C-DC0B-FAB2884D370B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode parentConstraint -n "toe01_2_guide_ofs_parentConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "872375B5-44F2-0378-20D2-FBBF0E7438B2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode transform -n "toe00_2_guide_ofs" -p "toeMain_guide";
	rename -uid "DFED9676-4592-9226-C962-26A60285B81B";
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ofs";
	rename -uid "633EB8DB-4DA2-0178-1F7C-B9A4E3B2D110";
createNode transform -n "toe00_3_guide_ofs" -p "toe00_2_guide";
	rename -uid "3026E826-431F-B38F-6FEC-4B8D0A25F466";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 6.2172489379008766e-15 -7 ;
createNode transform -n "toe00_3_guide" -p "toe00_3_guide_ofs";
	rename -uid "CF2A0C17-4CB3-8169-6131-9B9986FE0F37";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe00_4_guide_ofs" -p "toe00_3_guide";
	rename -uid "EF5FD2BC-4116-AB6C-DE99-9BB894F616C0";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000107 -1.9999999999999858 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe00_4_guide" -p "toe00_4_guide_ofs";
	rename -uid "09EDCF41-45E8-2DF6-9823-33A0FD11B96F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "toe00_1_guide_ofs" -p "toe00_2_guide";
	rename -uid "86E8AD69-4B8D-030D-D371-0AB94C8DCB18";
createNode transform -n "toe00_1_guide" -p "toe00_1_guide_ofs";
	rename -uid "41B3B581-4AE8-FCCB-E9C3-B59FCFEB63A4";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "E8477B09-4DC5-00BD-8246-C2AD000F68C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
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
createNode pointConstraint -n "toe00_1_guide_ofs_pointConstraint1" -p "toe00_1_guide_ofs";
	rename -uid "BE358EC5-4ED6-386E-5D34-7B82F66D0452";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 -10.999999999999998 4.3999999999999986 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "toe00_2_guide_ofs_scaleConstraint1" -p "toe00_2_guide_ofs";
	rename -uid "099328D9-47BC-A307-120C-F88E91941D0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "toe00_2_guide_ofs_parentConstraint1" -p "toe00_2_guide_ofs";
	rename -uid "B94E0CE4-41CB-7950-8CBD-6EB97EA23DE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 4 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "toe03_2_guide_ofs" -p "toeMain_guide";
	rename -uid "0AE88825-47D9-D980-88E0-DD84487F4B09";
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ofs";
	rename -uid "F9FB549A-4D84-019D-AFA1-6F909611F039";
createNode transform -n "toe03_3_guide_ofs" -p "toe03_2_guide";
	rename -uid "ECDE5891-4D91-6FB3-836A-62914CA4222C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.9936057773011271e-15 -7 ;
createNode transform -n "toe03_3_guide" -p "toe03_3_guide_ofs";
	rename -uid "DB1D0C19-46B5-F47A-2E19-61939818CC67";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe03_4_guide_ofs" -p "toe03_3_guide";
	rename -uid "AFE8BF1F-46AD-48CA-4616-66834C7E7A52";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe03_4_guide" -p "toe03_4_guide_ofs";
	rename -uid "86409C3C-4C54-8B63-951B-3FB081F22523";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe03_5_guide_ofs" -p "toe03_4_guide";
	rename -uid "A5752EA4-46D0-F5CF-94E0-B985E9B7AA09";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985056709e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe03_5_guide" -p "toe03_5_guide_ofs";
	rename -uid "9714F74C-4B01-D587-A82D-E1AD3EDDE2CF";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode transform -n "toe03_1_guide_ofs" -p "toe03_2_guide";
	rename -uid "6DEA2C3A-4105-7F88-5FCB-74A5A45F4C17";
createNode transform -n "toe03_1_guide" -p "toe03_1_guide_ofs";
	rename -uid "F8DF52AF-4E09-6C70-8674-25B610DF9D1B";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe03_1_guide_ofs_pointConstraint1" -p "toe03_1_guide_ofs";
	rename -uid "6A7DC7FE-4F8E-85AC-3993-74B43E7D595C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut2_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 -10.999999999999998 4.3999999999999986 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode scaleConstraint -n "toe03_2_guide_ofs_scaleConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "BDF735F3-4C2A-9559-88A5-45954893B190";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode parentConstraint -n "toe03_2_guide_ofs_parentConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "AB0F0882-431A-F115-4F76-0581A145D505";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toeOut_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode transform -n "toe04_2_guide_ofs" -p "toeMain_guide";
	rename -uid "8E7AB8BF-48FA-A5FB-DCEE-179B8163E2C2";
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ofs";
	rename -uid "F1D80380-48D8-61E1-2D4C-EB8CE9298368";
createNode transform -n "toe04_3_guide_ofs" -p "toe04_2_guide";
	rename -uid "889A5B0D-44F8-B530-89FF-8798D081EC89";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 -7 ;
createNode transform -n "toe04_3_guide" -p "toe04_3_guide_ofs";
	rename -uid "DDDABA38-4401-ACF2-1656-E1AC49828C43";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "toe04_4_guide_ofs" -p "toe04_3_guide";
	rename -uid "49CF788C-4894-4014-8075-26A908BC4782";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000062 -2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe04_4_guide" -p "toe04_4_guide_ofs";
	rename -uid "C7ECA8F6-4E6A-ACFA-AA84-95A06BBCF75F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "toe04_5_guide_ofs" -p "toe04_4_guide";
	rename -uid "DFFA1631-400F-8738-796A-049AF6FA5BA1";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 4.440892098505667e-16 -2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe04_5_guide" -p "toe04_5_guide_ofs";
	rename -uid "8D26FCAB-4396-2817-6BE9-E59B14CE4F33";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
createNode transform -n "toe04_1_guide_ofs" -p "toe04_2_guide";
	rename -uid "F26453EC-4213-1379-8352-4D9FE7181963";
createNode transform -n "toe04_1_guide" -p "toe04_1_guide_ofs";
	rename -uid "CFA1EC55-4E1A-103F-97C4-DF8320B64E6F";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "19AC264D-4AC0-AAA0-0C78-20B98F50BF3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
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
createNode pointConstraint -n "toe04_1_guide_ofs_pointConstraint1" -p "toe04_1_guide_ofs";
	rename -uid "92437E54-431A-626F-CD4E-4EAC97173853";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeOut2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 -10.999999999999998 4.3999999999999986 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "toe04_2_guide_ofs_scaleConstraint1" -p "toe04_2_guide_ofs";
	rename -uid "FFD1241D-4BEB-3386-1DBB-97A480A677F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeOut_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "toe04_2_guide_ofs_parentConstraint1" -p "toe04_2_guide_ofs";
	rename -uid "5EC40B16-4C82-F1FD-5B20-4EB18B6C5820";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeOut_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -4 0 0 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "squareShape1" -p "toeMain_guide";
	rename -uid "2ADFF530-4247-8648-A7CA-35A97DF5E6BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.9927591019580673 0 4.0581062200498064
		6.9927591019580673 0 -4.0581062200498064
		-6.9927591019580673 0 -4.0581062200498064
		-6.9927591019580673 0 4.0581062200498064
		6.9927591019580673 0 4.0581062200498064
		;
	setAttr ".adot" yes;
createNode transform -n "toeOut_guide_ofs" -p "toeMain_guide";
	rename -uid "7911E6E5-43BD-4407-44E5-54A14A68FE49";
	setAttr ".t" -type "double3" -4 0 0 ;
createNode transform -n "toeOut_guide" -p "toeOut_guide_ofs";
	rename -uid "A96D31BA-4759-3633-2387-CCB6D2A90C2E";
createNode transform -n "toeOut2_guide_ofs" -p "toeOut_guide";
	rename -uid "C1D3DDE6-4787-9D4C-C630-129C5D9C20DA";
	setAttr ".t" -type "double3" 0 -10.999999999999998 4.3999999999999986 ;
createNode transform -n "toeOut2_guide" -p "toeOut2_guide_ofs";
	rename -uid "7C729C03-4F08-6315-F66D-3CAE1BD0D349";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "cubeShape1" -p "toeOut2_guide";
	rename -uid "C74EFA1A-4515-91BA-2F61-41A90E63F885";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0.889892578125 -0.889892578125 0.889892578125
		0.889892578125 0.889892578125 0.889892578125
		0.889892578125 0.889892578125 -0.889892578125
		0.889892578125 -0.889892578125 -0.889892578125
		0.889892578125 -0.889892578125 0.889892578125
		-0.889892578125 -0.889892578125 0.889892578125
		-0.889892578125 -0.889892578125 -0.889892578125
		0.889892578125 -0.889892578125 -0.889892578125
		0.889892578125 0.889892578125 -0.889892578125
		-0.889892578125 0.889892578125 -0.889892578125
		-0.889892578125 -0.889892578125 -0.889892578125
		-0.889892578125 0.889892578125 -0.889892578125
		-0.889892578125 0.889892578125 0.889892578125
		-0.889892578125 -0.889892578125 0.889892578125
		0.889892578125 -0.889892578125 0.889892578125
		0.889892578125 0.889892578125 0.889892578125
		-0.889892578125 0.889892578125 0.889892578125
		;
	setAttr ".adot" yes;
createNode transform -n "toeIn_guide_ofs" -p "toeMain_guide";
	rename -uid "F487B416-4CAD-4480-E991-F99DB0E4CD4D";
	setAttr ".t" -type "double3" 4 0 0 ;
createNode transform -n "toeIn_guide" -p "toeIn_guide_ofs";
	rename -uid "22A971D3-409A-69EB-07E2-33A579DC5DEA";
createNode transform -n "toeIn2_guide_ofs" -p "toeIn_guide";
	rename -uid "8B841B7A-4622-3CA4-0971-679B609ECFB3";
	setAttr ".t" -type "double3" 0 -10.999999999999998 4.3999999999999986 ;
createNode transform -n "toeIn2_guide" -p "toeIn2_guide_ofs";
	rename -uid "5E5D9464-41D8-F1C0-55E8-1D94CD8FE535";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toesRoot_guide_zro" -p "master_guide";
	rename -uid "09A05AA1-4A71-52B8-15B4-17A40B19F187";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toesRoot_guide" -p "toesRoot_guide_zro";
	rename -uid "62EF956C-4BC5-4324-3BC6-5CA5D5BFF1A0";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "toesRoot_guideShape" -p "toesRoot_guide";
	rename -uid "FBADE16D-4701-19ED-E38A-8BBF8EFFD454";
	setAttr -k off ".v";
createNode pointConstraint -n "null1_pointConstraint1" -p "toesRoot_guide_zro";
	rename -uid "AD2CBAB0-4AD8-B62F-692E-019963ED6B59";
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
	setAttr ".rst" -type "double3" 0 20 -1 ;
	setAttr -k on ".w0";
createNode transform -n "line_grp" -p "master_guide";
	rename -uid "387C8921-4CD0-9D0D-ECBC-3E8A3C48EB6E";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
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
createNode transform -n "line_32" -p "line_grp";
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
createNode nurbsCurve -n "curveShape1" -p "line_32";
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
createNode transform -n "line_33" -p "line_grp";
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
createNode nurbsCurve -n "curveShape2" -p "line_33";
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
createNode transform -n "line_grp3" -p "master_guide";
	rename -uid "E4B6023D-490E-8702-026B-989F568BA5AC";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 10 0 50 ;
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
createNode transform -n "line_grp2" -p "master_guide";
	rename -uid "AD65DFA2-4F01-8F5B-A9E6-AB838951D525";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 10 0 50 ;
createNode transform -n "toe_line_grp1" -p "line_grp2";
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
createNode nurbsCurve -n "curveShape3" -p "line_34";
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
		-6 16 0.59999999999999787
		-6 5.0000000000000036 4.9999999999999991
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
createNode nurbsCurve -n "curveShape4" -p "line_35";
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
		-6 5.0000000000000036 4.9999999999999991
		-5.9999999999999982 4.9999999999999982 12
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
createNode nurbsCurve -n "curveShape5" -p "line_36";
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
		-5.9999999999999982 4.9999999999999982 12
		-6.0000000000002593 -1.1546319456101628e-14 13.999999999999986
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp2" -p "line_grp2";
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
createNode nurbsCurve -n "curveShape6" -p "line_37";
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
		-8 16 0.59999999999999787
		-8 5.0000000000000036 4.9999999999999991
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
createNode nurbsCurve -n "curveShape7" -p "line_38";
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
		-8 5.0000000000000036 4.9999999999999991
		-7.9999999999999982 5.0000000000000027 12
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
createNode nurbsCurve -n "curveShape8" -p "line_39";
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
		-7.9999999999999982 5.0000000000000027 12
		-8.0000000000002593 -3.5527136788005009e-15 14
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
createNode nurbsCurve -n "curveShape9" -p "line_40";
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
		-8.0000000000002593 -3.5527136788005009e-15 14
		-8.0000000000002593 -3.7518735288205892e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp3" -p "line_grp2";
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
createNode nurbsCurve -n "curveShape10" -p "line_41";
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
		-10 16 0.59999999999999787
		-10 5.0000000000000036 4.9999999999999991
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
createNode nurbsCurve -n "curveShape11" -p "line_42";
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
		-10 5.0000000000000036 4.9999999999999991
		-9.9999999999999982 4.9999999999999991 12
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
createNode nurbsCurve -n "curveShape12" -p "line_43";
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
		-9.9999999999999982 4.9999999999999991 12
		-10.000000000000259 -8.8817841970012523e-16 14
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
		-10.000000000000259 -8.8817841970012523e-16 14
		-10.000000000000259 -1.0873382697207172e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp4" -p "line_grp2";
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
		-12 16 0.59999999999999787
		-12 5.0000000000000036 4.9999999999999991
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
		-12 5.0000000000000036 4.9999999999999991
		-11.999999999999998 4.9999999999999964 12
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
		-11.999999999999998 4.9999999999999964 12
		-12.000000000000259 -3.5527136788005009e-15 14
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
		-12.000000000000259 -3.5527136788005009e-15 14
		-12.000000000000261 -3.7518735288215973e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp5" -p "line_grp2";
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
		-14 16 0.59999999999999787
		-14 5.0000000000000036 4.9999999999999991
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
		-14 5.0000000000000036 4.9999999999999991
		-13.999999999999998 4.9999999999999973 12
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
		-13.999999999999998 4.9999999999999973 12
		-14.000000000000259 -7.9936057773011271e-15 14
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
		-14.000000000000259 -7.9936057773011271e-15 14
		-14.000000000000265 -8.1927656273222227e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "fgrRef_grp" -p "master_guide";
	rename -uid "37D915C3-4015-7F07-5D51-1EAF4C094727";
	setAttr ".t" -type "double3" 10 0 50 ;
createNode transform -n "null1" -p "fgrRef_grp";
	rename -uid "2450142A-40F9-EE2F-21E9-04A514D293F6";
	setAttr ".t" -type "double3" -6 5.0000000000000036 -45 ;
createNode transform -n "fgrRef1" -p "null1";
	rename -uid "B86314F5-4AC3-02E9-22E7-93B0521994E6";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 -0.92847669088525897 0.37139067635410355 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode mesh -n "fgrRefShape" -p "fgrRef1";
	rename -uid "784C672A-4418-27A3-AE1B-72B8FF7E12C3";
	setAttr -k off ".v";
	setAttr -s 19 ".iog";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -3 0 0.10886002 -3 0 1.9999998 
		-3 0 0.10886002 -3 0 -1.2246469e-16 -3 0 -0.10886014 -3 0 -1.9999999 -3 0 -0.10886014 
		-3 0 -1.2246469e-16 0 0 0.10886002 0 0 1.9999998 0 0 0.10886002 0 0 0 0 0 -0.10886014 
		2.220446e-16 0 -1.9999999 0 0 -0.10886014 0 0 0;
	setAttr -s 16 ".vt[0:15]"  1 0.054430068 -0.054430008 1 0 -0.99999988
		 1 -0.054430008 -0.054430008 1 -0.99999988 0 1 -0.054430008 0.054430068 1 0 0.99999994
		 1 0.054430068 0.054430068 1 1 0 -1 0.054430068 -0.054430008 -1 0 -0.99999988 -1 -0.054430008 -0.054430008
		 -1 -0.99999988 0 -1 -0.054430008 0.054430068 -1 0 0.99999994 -1 0.054430068 0.054430068
		 -1 1 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode pointConstraint -n "fgrRef1_poiCst" -p "fgrRef1";
	rename -uid "EAB4A926-4255-DECD-E0CC-C2BC46EF970A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef1_aimCst" -p "fgrRef1";
	rename -uid "98FBAD29-441B-6597-960D-B29244C1F84A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90 21.801409486351808 90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef2" -p "null1";
	rename -uid "4E4B348B-46AE-9A72-9386-37BC4C13AE5C";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef2_poiCst" -p "fgrRef2";
	rename -uid "13B62BC2-4D35-358E-0267-5482DBE631E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5 5.0000000000000036 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef2_aimCst" -p "fgrRef2";
	rename -uid "7EDF8BAD-425A-957F-590B-6185585E609D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe00_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 179.99999999999997 89.999999999999943 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef3" -p "null1";
	rename -uid "58BA5219-4B57-DD42-90E0-1DB39C70B250";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999995037 -0.92847669088526019 0.37139067635410034 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef3_poiCst" -p "fgrRef3";
	rename -uid "0E074741-4726-9913-7B0E-03ADD07B1751";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -4.9999999999999982 4.9999999999999982 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef3_aimCst" -p "fgrRef3";
	rename -uid "F9A193A0-4FEB-B7E2-19DC-6EA5D8666216";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe00_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -90.000000000008072 21.801409486351631 89.999999999997002 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null1_scaleConstraint1" -p "null1";
	rename -uid "EE0A4964-4E2B-F298-5C75-26B3E86A8EFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null2" -p "fgrRef_grp";
	rename -uid "D4A228BB-4624-20FF-F4D7-6594C39653A4";
	setAttr ".t" -type "double3" -8 5.0000000000000036 -45 ;
createNode transform -n "fgrRef4" -p "null2";
	rename -uid "FDE01D92-4EE4-EA6E-0F87-9BB85227AFDC";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 -0.92847669088525897 0.37139067635410355 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef4_poiCst" -p "fgrRef4";
	rename -uid "284C98A5-4838-6552-C210-75AE11AA7BD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe01_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -7 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef4_aimCst" -p "fgrRef4";
	rename -uid "BFF7BEAF-48C0-5AC0-309A-BDA85424829A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe01_2_guideW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90 21.801409486351808 90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef5" -p "null2";
	rename -uid "B895E8E6-45D8-3378-545F-BEB20E6B5A68";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999956 -4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef5_poiCst" -p "fgrRef5";
	rename -uid "4D6FE35F-436A-E3C8-2108-9280A58ACDD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe01_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -7 5.0000000000000036 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef5_aimCst" -p "fgrRef5";
	rename -uid "F5C963AC-4F96-941B-4E91-81B1588200FB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe01_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 180 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef6" -p "null2";
	rename -uid "4CC1659D-49DE-90F1-4A5D-94BA3BD8ECDE";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -1.0000000000000002 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999995204 -0.92847669088525953 0.37139067635410372 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" -2.2204460492503141e-16 0 0 ;
createNode pointConstraint -n "fgrRef6_poiCst" -p "fgrRef6";
	rename -uid "7B533403-47CC-6439-C70A-07BBCAF162DA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe01_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -6.9999999999999982 5.0000000000000027 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef6_aimCst" -p "fgrRef6";
	rename -uid "F7A01E15-44BB-BD6F-255A-60AA1B731EB1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe01_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -90.000000000008072 21.80140948635179 89.999999999997016 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef7" -p "null2";
	rename -uid "D12A8865-4822-83D4-70BB-4B959AC90464";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef7_poiCst" -p "fgrRef7";
	rename -uid "74777C18-4A9E-FB0E-B449-A1A5DCD0545A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe01_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -7.0000000000002593 -3.5527136788005009e-15 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef7_aimCst" -p "fgrRef7";
	rename -uid "85EB6B66-4384-851A-B6B7-A49F25319195";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe01_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -180 90 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null2_scaleConstraint1" -p "null2";
	rename -uid "30B02609-40F8-DEA5-0977-109BCC43A3CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe01_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null3" -p "fgrRef_grp";
	rename -uid "078D70D3-428A-3D10-1A93-6C82B9043114";
	setAttr ".t" -type "double3" -10 5.0000000000000036 -45 ;
createNode transform -n "fgrRef8" -p "null3";
	rename -uid "8405850D-4890-E944-124C-288D55661881";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 -0.92847669088525897 0.37139067635410355 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef8_poiCst" -p "fgrRef8";
	rename -uid "2C138E36-4555-3739-211F-D58BF7A04CF2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe02_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -9 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef8_aimCst" -p "fgrRef8";
	rename -uid "FF9417AF-47E1-B149-0C99-07B5543332E8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe02_2_guideW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90 21.801409486351808 90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef9" -p "null3";
	rename -uid "9A70BACB-4994-45D9-08D1-49B1EFD87DFE";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef9_poiCst" -p "fgrRef9";
	rename -uid "1600BE21-4565-71AC-CF65-D68329DCF1CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe02_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -9 5.0000000000000036 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef9_aimCst" -p "fgrRef9";
	rename -uid "F0659AA7-495A-7C22-B0F3-1394E4DEB299";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe02_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 179.99999999999997 89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef10" -p "null3";
	rename -uid "3805E46E-4DC3-E9FE-A915-769F5FC90610";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999995182 -0.92847669088525941 0.37139067635410433 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef10_poiCst" -p "fgrRef10";
	rename -uid "0AA9E3DD-4865-0246-D2AD-4FB8666DF0EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe02_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -8.9999999999999982 4.9999999999999991 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef10_aimCst" -p "fgrRef10";
	rename -uid "FE28CD56-4D22-01A6-C812-BC923A589B10";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe02_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -90.000000000008072 21.801409486351822 89.999999999997016 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef11" -p "null3";
	rename -uid "C50675D0-44E4-9C58-63EE-96A82553E246";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef11_poiCst" -p "fgrRef11";
	rename -uid "0CB64A53-4139-B692-986F-D6B1FDE3210F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe02_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -9.0000000000002593 -8.8817841970012523e-16 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef11_aimCst" -p "fgrRef11";
	rename -uid "04E7402F-49D2-0B76-49BA-098594F29973";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe02_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -180 90 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null3_scaleConstraint1" -p "null3";
	rename -uid "897CE119-4AB6-C381-636B-B39233102304";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe02_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null4" -p "fgrRef_grp";
	rename -uid "878A5E02-435B-6854-4605-F693F05E0415";
	setAttr ".t" -type "double3" -12 5.0000000000000036 -45 ;
createNode transform -n "fgrRef12" -p "null4";
	rename -uid "3C0347A2-42D8-11FB-3CB6-87AEEB2498FF";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 -0.92847669088525897 0.37139067635410355 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef12_poiCst" -p "fgrRef12";
	rename -uid "0CA99CFD-42F4-6C67-C333-4881D6D8E3B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe03_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -11 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef12_aimCst" -p "fgrRef12";
	rename -uid "5D0C3833-4217-2437-D8FC-F5871942F3EB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe03_2_guideW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90 21.801409486351808 90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef13" -p "null4";
	rename -uid "2094F76B-4E31-DCED-E4A7-6395B79A2330";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999889 -3.9443045261050599e-31 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef13_poiCst" -p "fgrRef13";
	rename -uid "0067EBF7-4660-9A71-1952-248CB97DF9F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe03_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -11 5.0000000000000036 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef13_aimCst" -p "fgrRef13";
	rename -uid "73D69A10-4A26-79A9-CEDD-D184A82DECED";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe03_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 179.99999999999994 89.999999999999929 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef14" -p "null4";
	rename -uid "78EF82E2-466A-4720-A167-EA8CB042F524";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999995182 -0.92847669088525941 0.37139067635410433 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef14_poiCst" -p "fgrRef14";
	rename -uid "D2A7AE33-4E95-8A32-2F3B-409C5C706D5C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe03_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -10.999999999999998 4.9999999999999964 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef14_aimCst" -p "fgrRef14";
	rename -uid "CE4F428C-4C78-2EDA-EE8A-7B8984815FBF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe03_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -90.000000000008072 21.801409486351822 89.999999999997016 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef15" -p "null4";
	rename -uid "11E59132-4BB1-8F6E-66E4-969175E7AF68";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999889 4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef15_poiCst" -p "fgrRef15";
	rename -uid "E2B13E0C-42ED-A3F7-5697-DCBFD48DF444";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe03_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -11.000000000000259 -3.5527136788005009e-15 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef15_aimCst" -p "fgrRef15";
	rename -uid "1E690A7C-4DDB-707C-DC37-95A4E5B94A68";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe03_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999929 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null4_scaleConstraint1" -p "null4";
	rename -uid "FC509C97-4917-CEDA-2556-2F8DCADE5C2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe03_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null5" -p "fgrRef_grp";
	rename -uid "DAA89613-42A2-9860-9784-60AF8E8F8792";
	setAttr ".t" -type "double3" -14 5.0000000000000036 -45 ;
createNode transform -n "fgrRef16" -p "null5";
	rename -uid "6497EC8C-4A6E-4B72-4C52-77B1ECA6F97B";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 -0.92847669088525897 0.37139067635410355 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef16_poiCst" -p "fgrRef16";
	rename -uid "D9D705FD-4353-27A5-B107-FE9B90952132";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -13 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef16_aimCst" -p "fgrRef16";
	rename -uid "CFFE3368-4D6E-05AB-5CF7-6481B4A663E7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90 21.801409486351808 90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef17" -p "null5";
	rename -uid "8BFA26D2-471D-D0E0-B153-A4B2EF0A6B81";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef17_poiCst" -p "fgrRef17";
	rename -uid "C210F62B-45AD-B941-11FA-C097BB03BEDB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -13 5.0000000000000036 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef17_aimCst" -p "fgrRef17";
	rename -uid "A20878A3-4F8E-B8EB-19E9-019C2C08BD26";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe04_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 179.99999999999997 89.999999999999943 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef18" -p "null5";
	rename -uid "E326100D-495B-8C5A-3F16-B9B93F26179F";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.9999999999999506 -0.92847669088525875 0.37139067635410306 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef18_poiCst" -p "fgrRef18";
	rename -uid "87643DEA-4FE2-2540-2592-9DB1FB56A080";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -12.999999999999998 4.9999999999999973 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef18_aimCst" -p "fgrRef18";
	rename -uid "F06A3572-41F9-2DD2-4A37-52BC9930D66E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe04_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -90.000000000008043 21.80140948635179 89.999999999997016 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef19" -p "null5";
	rename -uid "4057A99E-48C1-BD65-2B6E-8288F038EDB0";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999734 0 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef19_poiCst" -p "fgrRef19";
	rename -uid "9C3D3F57-49C2-486D-8058-78B42EF85721";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -13.000000000000259 -7.9936057773011271e-15 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef19_aimCst" -p "fgrRef19";
	rename -uid "E33C701C-4E0D-CDBB-2AA5-F9BCBDCC7122";
	addAttr -dcb 0 -ci true -sn "w0" -ln "toe04_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999844 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null5_scaleConstraint1" -p "null5";
	rename -uid "48A0A26D-486B-5C0C-E0E9-C9A3896F9DB6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
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
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe00_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe00_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe03_1_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe04_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe01_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe03_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe00_2_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toeOut_guide_ofs|toeOut_guide|toeOut2_guide_ofs|toeOut2_guide|cubeShape1" "toeIn_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toeOut_guide_ofs|toeOut_guide|toeOut2_guide_ofs|toeOut2_guide|cubeShape1" "toeOut_guide" ;
parent -s -nc -r -add "|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toeOut_guide_ofs|toeOut_guide|toeOut2_guide_ofs|toeOut2_guide|cubeShape1" "toeIn2_guide" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef2" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef3" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef4" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef5" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef6" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef7" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef8" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef9" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef10" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef11" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef12" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef13" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef14" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef15" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef16" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef17" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef18" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef19" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "761E5783-4085-5616-10F8-EBA9BA58CEBB";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "55AF41FE-4B03-26AB-376F-BEB119484F6F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8E3F224A-43E4-4A88-95A5-FCB596619A00";
createNode displayLayerManager -n "layerManager";
	rename -uid "03FF2718-47E3-704D-149E-27BE30179EBA";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E73C1745-4E45-D87D-B0A4-EBB87918E13A";
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
createNode lambert -n "lambert2";
	rename -uid "923A631A-472B-C234-B2A8-F8B1531C5E10";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "8BB7527B-4E61-9434-DF19-41BE7A3A7F98";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "D50ACC6D-4375-1744-8DEE-648C038B10B6";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 402\n            -height 726\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"auto_bind_jnt_grp\" \n                -opaqueContainers 0\n                -dropTargetNode \"auto_bind_spine_grp\" \n                -dropNode \"auto_bind_tail_grp\" \n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
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
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 256\n            -height 726\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 256\\n    -height 726\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 256\\n    -height 726\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 30 -size 300 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "878E7EB4-4C20-180C-A804-2F88FBB35FB3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9635A001-4A05-0452-BA71-29A9CFA23E10";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -95.428009763509323 -1583.2832398179478 ;
	setAttr ".tgi[0].vh" -type "double2" 640.70642336998867 -921.09838444215279 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 218.57142639160156;
	setAttr ".tgi[0].ni[0].y" -875.71429443359375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -106.55461883544922;
	setAttr ".tgi[0].ni[1].y" -395.88235473632812;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 205.96638488769531;
	setAttr ".tgi[0].ni[2].y" -1075.1260986328125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 272.85714721679688;
	setAttr ".tgi[0].ni[3].y" -548.5714111328125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 272.85714721679688;
	setAttr ".tgi[0].ni[4].y" -418.57144165039062;
	setAttr ".tgi[0].ni[4].nvs" 18304;
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
	setAttr -s 3 ".st";
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
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
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
	setAttr -s 33 ".hyp";
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
connectAttr "master_guide.toeBones" "toe_guide_grp.v";
connectAttr "toe02_2_guide_ofs_parentConstraint1.ctx" "toe02_2_guide_ofs.tx";
connectAttr "toe02_2_guide_ofs_parentConstraint1.cty" "toe02_2_guide_ofs.ty";
connectAttr "toe02_2_guide_ofs_parentConstraint1.ctz" "toe02_2_guide_ofs.tz";
connectAttr "toe02_2_guide_ofs_parentConstraint1.crx" "toe02_2_guide_ofs.rx";
connectAttr "toe02_2_guide_ofs_parentConstraint1.cry" "toe02_2_guide_ofs.ry";
connectAttr "toe02_2_guide_ofs_parentConstraint1.crz" "toe02_2_guide_ofs.rz";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.csx" "toe02_2_guide_ofs.sx";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.csy" "toe02_2_guide_ofs.sy";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.csz" "toe02_2_guide_ofs.sz";
connectAttr "toe02_1_guide_ofs_pointConstraint1.ctx" "toe02_1_guide_ofs.tx";
connectAttr "toe02_1_guide_ofs_pointConstraint1.cty" "toe02_1_guide_ofs.ty";
connectAttr "toe02_1_guide_ofs_pointConstraint1.ctz" "toe02_1_guide_ofs.tz";
connectAttr "toe02_1_guide_ofs.pim" "toe02_1_guide_ofs_pointConstraint1.cpim";
connectAttr "toe02_1_guide_ofs.rp" "toe02_1_guide_ofs_pointConstraint1.crp";
connectAttr "toe02_1_guide_ofs.rpt" "toe02_1_guide_ofs_pointConstraint1.crt";
connectAttr "toeIn2_guide.t" "toe02_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toeIn2_guide.rp" "toe02_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toeIn2_guide.rpt" "toe02_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toeIn2_guide.pm" "toe02_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe02_1_guide_ofs_pointConstraint1.w0" "toe02_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toeOut2_guide.t" "toe02_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toeOut2_guide.rp" "toe02_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toeOut2_guide.rpt" "toe02_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toeOut2_guide.pm" "toe02_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe02_1_guide_ofs_pointConstraint1.w1" "toe02_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe02_2_guide_ofs.pim" "toe02_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeIn_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.w0" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toeOut_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toeOut_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[1].tpm";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.w1" "toe02_2_guide_ofs_scaleConstraint1.tg[1].tw"
		;
connectAttr "toe02_2_guide_ofs.ro" "toe02_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe02_2_guide_ofs.pim" "toe02_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe02_2_guide_ofs.rp" "toe02_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe02_2_guide_ofs.rpt" "toe02_2_guide_ofs_parentConstraint1.crt";
connectAttr "toeIn_guide.t" "toe02_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toeIn_guide.rp" "toe02_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toeIn_guide.rpt" "toe02_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toeIn_guide.r" "toe02_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toeIn_guide.ro" "toe02_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toeIn_guide.s" "toe02_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe02_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_parentConstraint1.w0" "toe02_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toeOut_guide.t" "toe02_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toeOut_guide.rp" "toe02_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toeOut_guide.rpt" "toe02_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toeOut_guide.r" "toe02_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toeOut_guide.ro" "toe02_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toeOut_guide.s" "toe02_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toeOut_guide.pm" "toe02_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe02_2_guide_ofs_parentConstraint1.w1" "toe02_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs_parentConstraint1.ctx" "toe01_2_guide_ofs.tx";
connectAttr "toe01_2_guide_ofs_parentConstraint1.cty" "toe01_2_guide_ofs.ty";
connectAttr "toe01_2_guide_ofs_parentConstraint1.ctz" "toe01_2_guide_ofs.tz";
connectAttr "toe01_2_guide_ofs_parentConstraint1.crx" "toe01_2_guide_ofs.rx";
connectAttr "toe01_2_guide_ofs_parentConstraint1.cry" "toe01_2_guide_ofs.ry";
connectAttr "toe01_2_guide_ofs_parentConstraint1.crz" "toe01_2_guide_ofs.rz";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.csx" "toe01_2_guide_ofs.sx";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.csy" "toe01_2_guide_ofs.sy";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.csz" "toe01_2_guide_ofs.sz";
connectAttr "le_cdn_3.ocr" "toe01_2_guide.v";
connectAttr "le_cdn_3.ocr" "toe01_3_guide.v";
connectAttr "le_cdn_3.ocr" "toe01_4_guide.v";
connectAttr "le_cdn_3.ocr" "toe01_5_guide.v";
connectAttr "toe01_1_guide_ofs_pointConstraint1.ctx" "toe01_1_guide_ofs.tx";
connectAttr "toe01_1_guide_ofs_pointConstraint1.cty" "toe01_1_guide_ofs.ty";
connectAttr "toe01_1_guide_ofs_pointConstraint1.ctz" "toe01_1_guide_ofs.tz";
connectAttr "le_cdn_3.ocr" "toe01_1_guide.v";
connectAttr "toe01_1_guide_ofs.pim" "toe01_1_guide_ofs_pointConstraint1.cpim";
connectAttr "toe01_1_guide_ofs.rp" "toe01_1_guide_ofs_pointConstraint1.crp";
connectAttr "toe01_1_guide_ofs.rpt" "toe01_1_guide_ofs_pointConstraint1.crt";
connectAttr "toeIn2_guide.t" "toe01_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toeIn2_guide.rp" "toe01_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toeIn2_guide.rpt" "toe01_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toeIn2_guide.pm" "toe01_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe01_1_guide_ofs_pointConstraint1.w0" "toe01_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toeOut2_guide.t" "toe01_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toeOut2_guide.rp" "toe01_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toeOut2_guide.rpt" "toe01_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toeOut2_guide.pm" "toe01_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe01_1_guide_ofs_pointConstraint1.w1" "toe01_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs.pim" "toe01_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeIn_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.w0" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toeOut_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toeOut_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[1].tpm";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.w1" "toe01_2_guide_ofs_scaleConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs.ro" "toe01_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe01_2_guide_ofs.pim" "toe01_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe01_2_guide_ofs.rp" "toe01_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe01_2_guide_ofs.rpt" "toe01_2_guide_ofs_parentConstraint1.crt";
connectAttr "toeIn_guide.t" "toe01_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toeIn_guide.rp" "toe01_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toeIn_guide.rpt" "toe01_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toeIn_guide.r" "toe01_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toeIn_guide.ro" "toe01_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toeIn_guide.s" "toe01_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe01_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_parentConstraint1.w0" "toe01_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toeOut_guide.t" "toe01_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toeOut_guide.rp" "toe01_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toeOut_guide.rpt" "toe01_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toeOut_guide.r" "toe01_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toeOut_guide.ro" "toe01_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toeOut_guide.s" "toe01_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toeOut_guide.pm" "toe01_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe01_2_guide_ofs_parentConstraint1.w1" "toe01_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe00_2_guide_ofs_scaleConstraint1.csx" "toe00_2_guide_ofs.sx";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.csy" "toe00_2_guide_ofs.sy";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.csz" "toe00_2_guide_ofs.sz";
connectAttr "toe00_2_guide_ofs_parentConstraint1.ctx" "toe00_2_guide_ofs.tx";
connectAttr "toe00_2_guide_ofs_parentConstraint1.cty" "toe00_2_guide_ofs.ty";
connectAttr "toe00_2_guide_ofs_parentConstraint1.ctz" "toe00_2_guide_ofs.tz";
connectAttr "toe00_2_guide_ofs_parentConstraint1.crx" "toe00_2_guide_ofs.rx";
connectAttr "toe00_2_guide_ofs_parentConstraint1.cry" "toe00_2_guide_ofs.ry";
connectAttr "toe00_2_guide_ofs_parentConstraint1.crz" "toe00_2_guide_ofs.rz";
connectAttr "le_cdn_1.ocr" "toe00_2_guide.v";
connectAttr "le_cdn_1.ocr" "toe00_3_guide.v";
connectAttr "le_cdn_1.ocr" "toe00_4_guide.v";
connectAttr "toe00_1_guide_ofs_pointConstraint1.ctx" "toe00_1_guide_ofs.tx";
connectAttr "toe00_1_guide_ofs_pointConstraint1.cty" "toe00_1_guide_ofs.ty";
connectAttr "toe00_1_guide_ofs_pointConstraint1.ctz" "toe00_1_guide_ofs.tz";
connectAttr "le_cdn_1.ocr" "toe00_1_guide.v";
connectAttr "toe00_1_guide_ofs.pim" "toe00_1_guide_ofs_pointConstraint1.cpim";
connectAttr "toe00_1_guide_ofs.rp" "toe00_1_guide_ofs_pointConstraint1.crp";
connectAttr "toe00_1_guide_ofs.rpt" "toe00_1_guide_ofs_pointConstraint1.crt";
connectAttr "toeIn2_guide.t" "toe00_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toeIn2_guide.rp" "toe00_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toeIn2_guide.rpt" "toe00_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toeIn2_guide.pm" "toe00_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe00_1_guide_ofs_pointConstraint1.w0" "toe00_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide_ofs.pim" "toe00_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeIn_guide.s" "toe00_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe00_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.w0" "toe00_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide_ofs.ro" "toe00_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe00_2_guide_ofs.pim" "toe00_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe00_2_guide_ofs.rp" "toe00_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe00_2_guide_ofs.rpt" "toe00_2_guide_ofs_parentConstraint1.crt";
connectAttr "toeIn_guide.t" "toe00_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toeIn_guide.rp" "toe00_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toeIn_guide.rpt" "toe00_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toeIn_guide.r" "toe00_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toeIn_guide.ro" "toe00_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toeIn_guide.s" "toe00_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe00_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe00_2_guide_ofs_parentConstraint1.w0" "toe00_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe03_2_guide_ofs_parentConstraint1.ctx" "toe03_2_guide_ofs.tx";
connectAttr "toe03_2_guide_ofs_parentConstraint1.cty" "toe03_2_guide_ofs.ty";
connectAttr "toe03_2_guide_ofs_parentConstraint1.ctz" "toe03_2_guide_ofs.tz";
connectAttr "toe03_2_guide_ofs_parentConstraint1.crx" "toe03_2_guide_ofs.rx";
connectAttr "toe03_2_guide_ofs_parentConstraint1.cry" "toe03_2_guide_ofs.ry";
connectAttr "toe03_2_guide_ofs_parentConstraint1.crz" "toe03_2_guide_ofs.rz";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.csx" "toe03_2_guide_ofs.sx";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.csy" "toe03_2_guide_ofs.sy";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.csz" "toe03_2_guide_ofs.sz";
connectAttr "toe03_1_guide_ofs_pointConstraint1.ctx" "toe03_1_guide_ofs.tx";
connectAttr "toe03_1_guide_ofs_pointConstraint1.cty" "toe03_1_guide_ofs.ty";
connectAttr "toe03_1_guide_ofs_pointConstraint1.ctz" "toe03_1_guide_ofs.tz";
connectAttr "toe03_1_guide_ofs.pim" "toe03_1_guide_ofs_pointConstraint1.cpim";
connectAttr "toe03_1_guide_ofs.rp" "toe03_1_guide_ofs_pointConstraint1.crp";
connectAttr "toe03_1_guide_ofs.rpt" "toe03_1_guide_ofs_pointConstraint1.crt";
connectAttr "toeIn2_guide.t" "toe03_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toeIn2_guide.rp" "toe03_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toeIn2_guide.rpt" "toe03_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toeIn2_guide.pm" "toe03_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe03_1_guide_ofs_pointConstraint1.w0" "toe03_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toeOut2_guide.t" "toe03_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toeOut2_guide.rp" "toe03_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toeOut2_guide.rpt" "toe03_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toeOut2_guide.pm" "toe03_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe03_1_guide_ofs_pointConstraint1.w1" "toe03_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe03_2_guide_ofs.pim" "toe03_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeIn_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.w0" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toeOut_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toeOut_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[1].tpm";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.w1" "toe03_2_guide_ofs_scaleConstraint1.tg[1].tw"
		;
connectAttr "toe03_2_guide_ofs.ro" "toe03_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe03_2_guide_ofs.pim" "toe03_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe03_2_guide_ofs.rp" "toe03_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe03_2_guide_ofs.rpt" "toe03_2_guide_ofs_parentConstraint1.crt";
connectAttr "toeIn_guide.t" "toe03_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toeIn_guide.rp" "toe03_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toeIn_guide.rpt" "toe03_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toeIn_guide.r" "toe03_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toeIn_guide.ro" "toe03_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toeIn_guide.s" "toe03_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe03_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_parentConstraint1.w0" "toe03_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toeOut_guide.t" "toe03_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toeOut_guide.rp" "toe03_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toeOut_guide.rpt" "toe03_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toeOut_guide.r" "toe03_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toeOut_guide.ro" "toe03_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toeOut_guide.s" "toe03_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toeOut_guide.pm" "toe03_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe03_2_guide_ofs_parentConstraint1.w1" "toe03_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe04_2_guide_ofs_scaleConstraint1.csx" "toe04_2_guide_ofs.sx";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.csy" "toe04_2_guide_ofs.sy";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.csz" "toe04_2_guide_ofs.sz";
connectAttr "toe04_2_guide_ofs_parentConstraint1.ctx" "toe04_2_guide_ofs.tx";
connectAttr "toe04_2_guide_ofs_parentConstraint1.cty" "toe04_2_guide_ofs.ty";
connectAttr "toe04_2_guide_ofs_parentConstraint1.ctz" "toe04_2_guide_ofs.tz";
connectAttr "toe04_2_guide_ofs_parentConstraint1.crx" "toe04_2_guide_ofs.rx";
connectAttr "toe04_2_guide_ofs_parentConstraint1.cry" "toe04_2_guide_ofs.ry";
connectAttr "toe04_2_guide_ofs_parentConstraint1.crz" "toe04_2_guide_ofs.rz";
connectAttr "le_cdn_2.ocr" "toe04_2_guide.v";
connectAttr "le_cdn_2.ocr" "toe04_3_guide.v";
connectAttr "le_cdn_2.ocr" "toe04_4_guide.v";
connectAttr "le_cdn_2.ocr" "toe04_5_guide.v";
connectAttr "toe04_1_guide_ofs_pointConstraint1.ctx" "toe04_1_guide_ofs.tx";
connectAttr "toe04_1_guide_ofs_pointConstraint1.cty" "toe04_1_guide_ofs.ty";
connectAttr "toe04_1_guide_ofs_pointConstraint1.ctz" "toe04_1_guide_ofs.tz";
connectAttr "le_cdn_2.ocr" "toe04_1_guide.v";
connectAttr "toe04_1_guide_ofs.pim" "toe04_1_guide_ofs_pointConstraint1.cpim";
connectAttr "toe04_1_guide_ofs.rp" "toe04_1_guide_ofs_pointConstraint1.crp";
connectAttr "toe04_1_guide_ofs.rpt" "toe04_1_guide_ofs_pointConstraint1.crt";
connectAttr "toeOut2_guide.t" "toe04_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toeOut2_guide.rp" "toe04_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toeOut2_guide.rpt" "toe04_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toeOut2_guide.pm" "toe04_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe04_1_guide_ofs_pointConstraint1.w0" "toe04_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide_ofs.pim" "toe04_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeOut_guide.s" "toe04_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeOut_guide.pm" "toe04_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.w0" "toe04_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide_ofs.ro" "toe04_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe04_2_guide_ofs.pim" "toe04_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe04_2_guide_ofs.rp" "toe04_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe04_2_guide_ofs.rpt" "toe04_2_guide_ofs_parentConstraint1.crt";
connectAttr "toeOut_guide.t" "toe04_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toeOut_guide.rp" "toe04_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toeOut_guide.rpt" "toe04_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toeOut_guide.r" "toe04_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toeOut_guide.ro" "toe04_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toeOut_guide.s" "toe04_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toeOut_guide.pm" "toe04_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe04_2_guide_ofs_parentConstraint1.w0" "toe04_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "null1_pointConstraint1.ctx" "toesRoot_guide_zro.tx";
connectAttr "null1_pointConstraint1.cty" "toesRoot_guide_zro.ty";
connectAttr "null1_pointConstraint1.ctz" "toesRoot_guide_zro.tz";
connectAttr "toesRoot_guide_zro.pim" "null1_pointConstraint1.cpim";
connectAttr "toesRoot_guide_zro.rp" "null1_pointConstraint1.crp";
connectAttr "toesRoot_guide_zro.rpt" "null1_pointConstraint1.crt";
connectAttr "palm_guide.t" "null1_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "null1_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "null1_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "null1_pointConstraint1.tg[0].tpm";
connectAttr "null1_pointConstraint1.w0" "null1_pointConstraint1.tg[0].tw";
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
connectAttr "master_guide.dualBone" "line_grp3.v";
connectAttr "DCM_8.ot" "line_07Shape.cp[0]";
connectAttr "DCM_9.ot" "line_07Shape.cp[1]";
connectAttr "DCM_10.ot" "line_08Shape.cp[0]";
connectAttr "DCM_11.ot" "line_08Shape.cp[1]";
connectAttr "master_guide.toeBones" "line_grp2.v";
connectAttr "le_cdn_1.ocr" "toe_line_grp1.v";
connectAttr "DCM_37.ot" "curveShape3.cp[0]";
connectAttr "DCM_38.ot" "curveShape3.cp[1]";
connectAttr "DCM_38.ot" "curveShape4.cp[0]";
connectAttr "DCM_39.ot" "curveShape4.cp[1]";
connectAttr "DCM_39.ot" "curveShape5.cp[0]";
connectAttr "DCM_40.ot" "curveShape5.cp[1]";
connectAttr "le_cdn_3.ocr" "toe_line_grp2.v";
connectAttr "DCM_41.ot" "curveShape6.cp[0]";
connectAttr "DCM_42.ot" "curveShape6.cp[1]";
connectAttr "DCM_42.ot" "curveShape7.cp[0]";
connectAttr "DCM_43.ot" "curveShape7.cp[1]";
connectAttr "DCM_43.ot" "curveShape8.cp[0]";
connectAttr "DCM_44.ot" "curveShape8.cp[1]";
connectAttr "DCM_44.ot" "curveShape9.cp[0]";
connectAttr "DCM_45.ot" "curveShape9.cp[1]";
connectAttr "DCM_46.ot" "curveShape10.cp[0]";
connectAttr "DCM_47.ot" "curveShape10.cp[1]";
connectAttr "DCM_47.ot" "curveShape11.cp[0]";
connectAttr "DCM_48.ot" "curveShape11.cp[1]";
connectAttr "DCM_48.ot" "curveShape12.cp[0]";
connectAttr "DCM_49.ot" "curveShape12.cp[1]";
connectAttr "DCM_49.ot" "curveShape13.cp[0]";
connectAttr "DCM_50.ot" "curveShape13.cp[1]";
connectAttr "DCM_51.ot" "curveShape14.cp[0]";
connectAttr "DCM_52.ot" "curveShape14.cp[1]";
connectAttr "DCM_52.ot" "curveShape15.cp[0]";
connectAttr "DCM_53.ot" "curveShape15.cp[1]";
connectAttr "DCM_53.ot" "curveShape16.cp[0]";
connectAttr "DCM_54.ot" "curveShape16.cp[1]";
connectAttr "DCM_54.ot" "curveShape17.cp[0]";
connectAttr "DCM_55.ot" "curveShape17.cp[1]";
connectAttr "le_cdn_2.ocr" "toe_line_grp5.v";
connectAttr "DCM_56.ot" "curveShape18.cp[0]";
connectAttr "DCM_57.ot" "curveShape18.cp[1]";
connectAttr "DCM_57.ot" "curveShape19.cp[0]";
connectAttr "DCM_58.ot" "curveShape19.cp[1]";
connectAttr "DCM_58.ot" "curveShape20.cp[0]";
connectAttr "DCM_59.ot" "curveShape20.cp[1]";
connectAttr "DCM_59.ot" "curveShape21.cp[0]";
connectAttr "DCM_60.ot" "curveShape21.cp[1]";
connectAttr "master_guide.showRef" "fgrRef_grp.v";
connectAttr "le_cdn_1.ocr" "null1.v";
connectAttr "null1_scaleConstraint1.csx" "null1.sx";
connectAttr "null1_scaleConstraint1.csy" "null1.sy";
connectAttr "null1_scaleConstraint1.csz" "null1.sz";
connectAttr "fgrRef1_poiCst.ctx" "fgrRef1.tx";
connectAttr "fgrRef1_poiCst.cty" "fgrRef1.ty";
connectAttr "fgrRef1_poiCst.ctz" "fgrRef1.tz";
connectAttr "fgrRef1_aimCst.crx" "fgrRef1.rx";
connectAttr "fgrRef1_aimCst.cry" "fgrRef1.ry";
connectAttr "fgrRef1_aimCst.crz" "fgrRef1.rz";
connectAttr "fgrRef1.pim" "fgrRef1_poiCst.cpim";
connectAttr "fgrRef1.rp" "fgrRef1_poiCst.crp";
connectAttr "fgrRef1.rpt" "fgrRef1_poiCst.crt";
connectAttr "toe00_1_guide.t" "fgrRef1_poiCst.tg[0].tt";
connectAttr "toe00_1_guide.rp" "fgrRef1_poiCst.tg[0].trp";
connectAttr "toe00_1_guide.rpt" "fgrRef1_poiCst.tg[0].trt";
connectAttr "toe00_1_guide.pm" "fgrRef1_poiCst.tg[0].tpm";
connectAttr "fgrRef1_poiCst.w0" "fgrRef1_poiCst.tg[0].tw";
connectAttr "fgrRef1.pim" "fgrRef1_aimCst.cpim";
connectAttr "fgrRef1.t" "fgrRef1_aimCst.ct";
connectAttr "fgrRef1.rp" "fgrRef1_aimCst.crp";
connectAttr "fgrRef1.rpt" "fgrRef1_aimCst.crt";
connectAttr "fgrRef1.ro" "fgrRef1_aimCst.cro";
connectAttr "toe00_2_guide.t" "fgrRef1_aimCst.tg[0].tt";
connectAttr "toe00_2_guide.rp" "fgrRef1_aimCst.tg[0].trp";
connectAttr "toe00_2_guide.rpt" "fgrRef1_aimCst.tg[0].trt";
connectAttr "toe00_2_guide.pm" "fgrRef1_aimCst.tg[0].tpm";
connectAttr "fgrRef1_aimCst.w0" "fgrRef1_aimCst.tg[0].tw";
connectAttr "toe00_1_guide.wm" "fgrRef1_aimCst.wum";
connectAttr "fgrRef2_poiCst.ctx" "fgrRef2.tx";
connectAttr "fgrRef2_poiCst.cty" "fgrRef2.ty";
connectAttr "fgrRef2_poiCst.ctz" "fgrRef2.tz";
connectAttr "fgrRef2_aimCst.crx" "fgrRef2.rx";
connectAttr "fgrRef2_aimCst.cry" "fgrRef2.ry";
connectAttr "fgrRef2_aimCst.crz" "fgrRef2.rz";
connectAttr "fgrRef2.pim" "fgrRef2_poiCst.cpim";
connectAttr "fgrRef2.rp" "fgrRef2_poiCst.crp";
connectAttr "fgrRef2.rpt" "fgrRef2_poiCst.crt";
connectAttr "toe00_2_guide.t" "fgrRef2_poiCst.tg[0].tt";
connectAttr "toe00_2_guide.rp" "fgrRef2_poiCst.tg[0].trp";
connectAttr "toe00_2_guide.rpt" "fgrRef2_poiCst.tg[0].trt";
connectAttr "toe00_2_guide.pm" "fgrRef2_poiCst.tg[0].tpm";
connectAttr "fgrRef2_poiCst.w0" "fgrRef2_poiCst.tg[0].tw";
connectAttr "fgrRef2.pim" "fgrRef2_aimCst.cpim";
connectAttr "fgrRef2.t" "fgrRef2_aimCst.ct";
connectAttr "fgrRef2.rp" "fgrRef2_aimCst.crp";
connectAttr "fgrRef2.rpt" "fgrRef2_aimCst.crt";
connectAttr "fgrRef2.ro" "fgrRef2_aimCst.cro";
connectAttr "toe00_3_guide.t" "fgrRef2_aimCst.tg[0].tt";
connectAttr "toe00_3_guide.rp" "fgrRef2_aimCst.tg[0].trp";
connectAttr "toe00_3_guide.rpt" "fgrRef2_aimCst.tg[0].trt";
connectAttr "toe00_3_guide.pm" "fgrRef2_aimCst.tg[0].tpm";
connectAttr "fgrRef2_aimCst.w0" "fgrRef2_aimCst.tg[0].tw";
connectAttr "toe00_2_guide.wm" "fgrRef2_aimCst.wum";
connectAttr "fgrRef3_poiCst.ctx" "fgrRef3.tx";
connectAttr "fgrRef3_poiCst.cty" "fgrRef3.ty";
connectAttr "fgrRef3_poiCst.ctz" "fgrRef3.tz";
connectAttr "fgrRef3_aimCst.crx" "fgrRef3.rx";
connectAttr "fgrRef3_aimCst.cry" "fgrRef3.ry";
connectAttr "fgrRef3_aimCst.crz" "fgrRef3.rz";
connectAttr "fgrRef3.pim" "fgrRef3_poiCst.cpim";
connectAttr "fgrRef3.rp" "fgrRef3_poiCst.crp";
connectAttr "fgrRef3.rpt" "fgrRef3_poiCst.crt";
connectAttr "toe00_3_guide.t" "fgrRef3_poiCst.tg[0].tt";
connectAttr "toe00_3_guide.rp" "fgrRef3_poiCst.tg[0].trp";
connectAttr "toe00_3_guide.rpt" "fgrRef3_poiCst.tg[0].trt";
connectAttr "toe00_3_guide.pm" "fgrRef3_poiCst.tg[0].tpm";
connectAttr "fgrRef3_poiCst.w0" "fgrRef3_poiCst.tg[0].tw";
connectAttr "fgrRef3.pim" "fgrRef3_aimCst.cpim";
connectAttr "fgrRef3.t" "fgrRef3_aimCst.ct";
connectAttr "fgrRef3.rp" "fgrRef3_aimCst.crp";
connectAttr "fgrRef3.rpt" "fgrRef3_aimCst.crt";
connectAttr "fgrRef3.ro" "fgrRef3_aimCst.cro";
connectAttr "toe00_4_guide.t" "fgrRef3_aimCst.tg[0].tt";
connectAttr "toe00_4_guide.rp" "fgrRef3_aimCst.tg[0].trp";
connectAttr "toe00_4_guide.rpt" "fgrRef3_aimCst.tg[0].trt";
connectAttr "toe00_4_guide.pm" "fgrRef3_aimCst.tg[0].tpm";
connectAttr "fgrRef3_aimCst.w0" "fgrRef3_aimCst.tg[0].tw";
connectAttr "toe00_3_guide.wm" "fgrRef3_aimCst.wum";
connectAttr "null1.pim" "null1_scaleConstraint1.cpim";
connectAttr "toe00_2_guide.s" "null1_scaleConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "null1_scaleConstraint1.tg[0].tpm";
connectAttr "null1_scaleConstraint1.w0" "null1_scaleConstraint1.tg[0].tw";
connectAttr "le_cdn_3.ocr" "null2.v";
connectAttr "null2_scaleConstraint1.csx" "null2.sx";
connectAttr "null2_scaleConstraint1.csy" "null2.sy";
connectAttr "null2_scaleConstraint1.csz" "null2.sz";
connectAttr "fgrRef4_poiCst.ctx" "fgrRef4.tx";
connectAttr "fgrRef4_poiCst.cty" "fgrRef4.ty";
connectAttr "fgrRef4_poiCst.ctz" "fgrRef4.tz";
connectAttr "fgrRef4_aimCst.crx" "fgrRef4.rx";
connectAttr "fgrRef4_aimCst.cry" "fgrRef4.ry";
connectAttr "fgrRef4_aimCst.crz" "fgrRef4.rz";
connectAttr "fgrRef4.pim" "fgrRef4_poiCst.cpim";
connectAttr "fgrRef4.rp" "fgrRef4_poiCst.crp";
connectAttr "fgrRef4.rpt" "fgrRef4_poiCst.crt";
connectAttr "toe01_1_guide.t" "fgrRef4_poiCst.tg[0].tt";
connectAttr "toe01_1_guide.rp" "fgrRef4_poiCst.tg[0].trp";
connectAttr "toe01_1_guide.rpt" "fgrRef4_poiCst.tg[0].trt";
connectAttr "toe01_1_guide.pm" "fgrRef4_poiCst.tg[0].tpm";
connectAttr "fgrRef4_poiCst.w0" "fgrRef4_poiCst.tg[0].tw";
connectAttr "fgrRef4.pim" "fgrRef4_aimCst.cpim";
connectAttr "fgrRef4.t" "fgrRef4_aimCst.ct";
connectAttr "fgrRef4.rp" "fgrRef4_aimCst.crp";
connectAttr "fgrRef4.rpt" "fgrRef4_aimCst.crt";
connectAttr "fgrRef4.ro" "fgrRef4_aimCst.cro";
connectAttr "toe01_2_guide.t" "fgrRef4_aimCst.tg[0].tt";
connectAttr "toe01_2_guide.rp" "fgrRef4_aimCst.tg[0].trp";
connectAttr "toe01_2_guide.rpt" "fgrRef4_aimCst.tg[0].trt";
connectAttr "toe01_2_guide.pm" "fgrRef4_aimCst.tg[0].tpm";
connectAttr "fgrRef4_aimCst.w0" "fgrRef4_aimCst.tg[0].tw";
connectAttr "toe01_1_guide.wm" "fgrRef4_aimCst.wum";
connectAttr "fgrRef5_poiCst.ctx" "fgrRef5.tx";
connectAttr "fgrRef5_poiCst.cty" "fgrRef5.ty";
connectAttr "fgrRef5_poiCst.ctz" "fgrRef5.tz";
connectAttr "fgrRef5_aimCst.crx" "fgrRef5.rx";
connectAttr "fgrRef5_aimCst.cry" "fgrRef5.ry";
connectAttr "fgrRef5_aimCst.crz" "fgrRef5.rz";
connectAttr "fgrRef5.pim" "fgrRef5_poiCst.cpim";
connectAttr "fgrRef5.rp" "fgrRef5_poiCst.crp";
connectAttr "fgrRef5.rpt" "fgrRef5_poiCst.crt";
connectAttr "toe01_2_guide.t" "fgrRef5_poiCst.tg[0].tt";
connectAttr "toe01_2_guide.rp" "fgrRef5_poiCst.tg[0].trp";
connectAttr "toe01_2_guide.rpt" "fgrRef5_poiCst.tg[0].trt";
connectAttr "toe01_2_guide.pm" "fgrRef5_poiCst.tg[0].tpm";
connectAttr "fgrRef5_poiCst.w0" "fgrRef5_poiCst.tg[0].tw";
connectAttr "fgrRef5.pim" "fgrRef5_aimCst.cpim";
connectAttr "fgrRef5.t" "fgrRef5_aimCst.ct";
connectAttr "fgrRef5.rp" "fgrRef5_aimCst.crp";
connectAttr "fgrRef5.rpt" "fgrRef5_aimCst.crt";
connectAttr "fgrRef5.ro" "fgrRef5_aimCst.cro";
connectAttr "toe01_3_guide.t" "fgrRef5_aimCst.tg[0].tt";
connectAttr "toe01_3_guide.rp" "fgrRef5_aimCst.tg[0].trp";
connectAttr "toe01_3_guide.rpt" "fgrRef5_aimCst.tg[0].trt";
connectAttr "toe01_3_guide.pm" "fgrRef5_aimCst.tg[0].tpm";
connectAttr "fgrRef5_aimCst.w0" "fgrRef5_aimCst.tg[0].tw";
connectAttr "toe01_2_guide.wm" "fgrRef5_aimCst.wum";
connectAttr "fgrRef6_poiCst.ctx" "fgrRef6.tx";
connectAttr "fgrRef6_poiCst.cty" "fgrRef6.ty";
connectAttr "fgrRef6_poiCst.ctz" "fgrRef6.tz";
connectAttr "fgrRef6_aimCst.crx" "fgrRef6.rx";
connectAttr "fgrRef6_aimCst.cry" "fgrRef6.ry";
connectAttr "fgrRef6_aimCst.crz" "fgrRef6.rz";
connectAttr "fgrRef6.pim" "fgrRef6_poiCst.cpim";
connectAttr "fgrRef6.rp" "fgrRef6_poiCst.crp";
connectAttr "fgrRef6.rpt" "fgrRef6_poiCst.crt";
connectAttr "toe01_3_guide.t" "fgrRef6_poiCst.tg[0].tt";
connectAttr "toe01_3_guide.rp" "fgrRef6_poiCst.tg[0].trp";
connectAttr "toe01_3_guide.rpt" "fgrRef6_poiCst.tg[0].trt";
connectAttr "toe01_3_guide.pm" "fgrRef6_poiCst.tg[0].tpm";
connectAttr "fgrRef6_poiCst.w0" "fgrRef6_poiCst.tg[0].tw";
connectAttr "fgrRef6.pim" "fgrRef6_aimCst.cpim";
connectAttr "fgrRef6.t" "fgrRef6_aimCst.ct";
connectAttr "fgrRef6.rp" "fgrRef6_aimCst.crp";
connectAttr "fgrRef6.rpt" "fgrRef6_aimCst.crt";
connectAttr "fgrRef6.ro" "fgrRef6_aimCst.cro";
connectAttr "toe01_4_guide.t" "fgrRef6_aimCst.tg[0].tt";
connectAttr "toe01_4_guide.rp" "fgrRef6_aimCst.tg[0].trp";
connectAttr "toe01_4_guide.rpt" "fgrRef6_aimCst.tg[0].trt";
connectAttr "toe01_4_guide.pm" "fgrRef6_aimCst.tg[0].tpm";
connectAttr "fgrRef6_aimCst.w0" "fgrRef6_aimCst.tg[0].tw";
connectAttr "toe01_3_guide.wm" "fgrRef6_aimCst.wum";
connectAttr "fgrRef7_poiCst.ctx" "fgrRef7.tx";
connectAttr "fgrRef7_poiCst.cty" "fgrRef7.ty";
connectAttr "fgrRef7_poiCst.ctz" "fgrRef7.tz";
connectAttr "fgrRef7_aimCst.crx" "fgrRef7.rx";
connectAttr "fgrRef7_aimCst.cry" "fgrRef7.ry";
connectAttr "fgrRef7_aimCst.crz" "fgrRef7.rz";
connectAttr "fgrRef7.pim" "fgrRef7_poiCst.cpim";
connectAttr "fgrRef7.rp" "fgrRef7_poiCst.crp";
connectAttr "fgrRef7.rpt" "fgrRef7_poiCst.crt";
connectAttr "toe01_4_guide.t" "fgrRef7_poiCst.tg[0].tt";
connectAttr "toe01_4_guide.rp" "fgrRef7_poiCst.tg[0].trp";
connectAttr "toe01_4_guide.rpt" "fgrRef7_poiCst.tg[0].trt";
connectAttr "toe01_4_guide.pm" "fgrRef7_poiCst.tg[0].tpm";
connectAttr "fgrRef7_poiCst.w0" "fgrRef7_poiCst.tg[0].tw";
connectAttr "fgrRef7.pim" "fgrRef7_aimCst.cpim";
connectAttr "fgrRef7.t" "fgrRef7_aimCst.ct";
connectAttr "fgrRef7.rp" "fgrRef7_aimCst.crp";
connectAttr "fgrRef7.rpt" "fgrRef7_aimCst.crt";
connectAttr "fgrRef7.ro" "fgrRef7_aimCst.cro";
connectAttr "toe01_5_guide.t" "fgrRef7_aimCst.tg[0].tt";
connectAttr "toe01_5_guide.rp" "fgrRef7_aimCst.tg[0].trp";
connectAttr "toe01_5_guide.rpt" "fgrRef7_aimCst.tg[0].trt";
connectAttr "toe01_5_guide.pm" "fgrRef7_aimCst.tg[0].tpm";
connectAttr "fgrRef7_aimCst.w0" "fgrRef7_aimCst.tg[0].tw";
connectAttr "toe01_4_guide.wm" "fgrRef7_aimCst.wum";
connectAttr "null2.pim" "null2_scaleConstraint1.cpim";
connectAttr "toe01_2_guide.s" "null2_scaleConstraint1.tg[0].ts";
connectAttr "toe01_2_guide.pm" "null2_scaleConstraint1.tg[0].tpm";
connectAttr "null2_scaleConstraint1.w0" "null2_scaleConstraint1.tg[0].tw";
connectAttr "null3_scaleConstraint1.csx" "null3.sx";
connectAttr "null3_scaleConstraint1.csy" "null3.sy";
connectAttr "null3_scaleConstraint1.csz" "null3.sz";
connectAttr "fgrRef8_poiCst.ctx" "fgrRef8.tx";
connectAttr "fgrRef8_poiCst.cty" "fgrRef8.ty";
connectAttr "fgrRef8_poiCst.ctz" "fgrRef8.tz";
connectAttr "fgrRef8_aimCst.crx" "fgrRef8.rx";
connectAttr "fgrRef8_aimCst.cry" "fgrRef8.ry";
connectAttr "fgrRef8_aimCst.crz" "fgrRef8.rz";
connectAttr "fgrRef8.pim" "fgrRef8_poiCst.cpim";
connectAttr "fgrRef8.rp" "fgrRef8_poiCst.crp";
connectAttr "fgrRef8.rpt" "fgrRef8_poiCst.crt";
connectAttr "toe02_1_guide.t" "fgrRef8_poiCst.tg[0].tt";
connectAttr "toe02_1_guide.rp" "fgrRef8_poiCst.tg[0].trp";
connectAttr "toe02_1_guide.rpt" "fgrRef8_poiCst.tg[0].trt";
connectAttr "toe02_1_guide.pm" "fgrRef8_poiCst.tg[0].tpm";
connectAttr "fgrRef8_poiCst.w0" "fgrRef8_poiCst.tg[0].tw";
connectAttr "fgrRef8.pim" "fgrRef8_aimCst.cpim";
connectAttr "fgrRef8.t" "fgrRef8_aimCst.ct";
connectAttr "fgrRef8.rp" "fgrRef8_aimCst.crp";
connectAttr "fgrRef8.rpt" "fgrRef8_aimCst.crt";
connectAttr "fgrRef8.ro" "fgrRef8_aimCst.cro";
connectAttr "toe02_2_guide.t" "fgrRef8_aimCst.tg[0].tt";
connectAttr "toe02_2_guide.rp" "fgrRef8_aimCst.tg[0].trp";
connectAttr "toe02_2_guide.rpt" "fgrRef8_aimCst.tg[0].trt";
connectAttr "toe02_2_guide.pm" "fgrRef8_aimCst.tg[0].tpm";
connectAttr "fgrRef8_aimCst.w0" "fgrRef8_aimCst.tg[0].tw";
connectAttr "toe02_1_guide.wm" "fgrRef8_aimCst.wum";
connectAttr "fgrRef9_poiCst.ctx" "fgrRef9.tx";
connectAttr "fgrRef9_poiCst.cty" "fgrRef9.ty";
connectAttr "fgrRef9_poiCst.ctz" "fgrRef9.tz";
connectAttr "fgrRef9_aimCst.crx" "fgrRef9.rx";
connectAttr "fgrRef9_aimCst.cry" "fgrRef9.ry";
connectAttr "fgrRef9_aimCst.crz" "fgrRef9.rz";
connectAttr "fgrRef9.pim" "fgrRef9_poiCst.cpim";
connectAttr "fgrRef9.rp" "fgrRef9_poiCst.crp";
connectAttr "fgrRef9.rpt" "fgrRef9_poiCst.crt";
connectAttr "toe02_2_guide.t" "fgrRef9_poiCst.tg[0].tt";
connectAttr "toe02_2_guide.rp" "fgrRef9_poiCst.tg[0].trp";
connectAttr "toe02_2_guide.rpt" "fgrRef9_poiCst.tg[0].trt";
connectAttr "toe02_2_guide.pm" "fgrRef9_poiCst.tg[0].tpm";
connectAttr "fgrRef9_poiCst.w0" "fgrRef9_poiCst.tg[0].tw";
connectAttr "fgrRef9.pim" "fgrRef9_aimCst.cpim";
connectAttr "fgrRef9.t" "fgrRef9_aimCst.ct";
connectAttr "fgrRef9.rp" "fgrRef9_aimCst.crp";
connectAttr "fgrRef9.rpt" "fgrRef9_aimCst.crt";
connectAttr "fgrRef9.ro" "fgrRef9_aimCst.cro";
connectAttr "toe02_3_guide.t" "fgrRef9_aimCst.tg[0].tt";
connectAttr "toe02_3_guide.rp" "fgrRef9_aimCst.tg[0].trp";
connectAttr "toe02_3_guide.rpt" "fgrRef9_aimCst.tg[0].trt";
connectAttr "toe02_3_guide.pm" "fgrRef9_aimCst.tg[0].tpm";
connectAttr "fgrRef9_aimCst.w0" "fgrRef9_aimCst.tg[0].tw";
connectAttr "toe02_2_guide.wm" "fgrRef9_aimCst.wum";
connectAttr "fgrRef10_poiCst.ctx" "fgrRef10.tx";
connectAttr "fgrRef10_poiCst.cty" "fgrRef10.ty";
connectAttr "fgrRef10_poiCst.ctz" "fgrRef10.tz";
connectAttr "fgrRef10_aimCst.crx" "fgrRef10.rx";
connectAttr "fgrRef10_aimCst.cry" "fgrRef10.ry";
connectAttr "fgrRef10_aimCst.crz" "fgrRef10.rz";
connectAttr "fgrRef10.pim" "fgrRef10_poiCst.cpim";
connectAttr "fgrRef10.rp" "fgrRef10_poiCst.crp";
connectAttr "fgrRef10.rpt" "fgrRef10_poiCst.crt";
connectAttr "toe02_3_guide.t" "fgrRef10_poiCst.tg[0].tt";
connectAttr "toe02_3_guide.rp" "fgrRef10_poiCst.tg[0].trp";
connectAttr "toe02_3_guide.rpt" "fgrRef10_poiCst.tg[0].trt";
connectAttr "toe02_3_guide.pm" "fgrRef10_poiCst.tg[0].tpm";
connectAttr "fgrRef10_poiCst.w0" "fgrRef10_poiCst.tg[0].tw";
connectAttr "fgrRef10.pim" "fgrRef10_aimCst.cpim";
connectAttr "fgrRef10.t" "fgrRef10_aimCst.ct";
connectAttr "fgrRef10.rp" "fgrRef10_aimCst.crp";
connectAttr "fgrRef10.rpt" "fgrRef10_aimCst.crt";
connectAttr "fgrRef10.ro" "fgrRef10_aimCst.cro";
connectAttr "toe02_4_guide.t" "fgrRef10_aimCst.tg[0].tt";
connectAttr "toe02_4_guide.rp" "fgrRef10_aimCst.tg[0].trp";
connectAttr "toe02_4_guide.rpt" "fgrRef10_aimCst.tg[0].trt";
connectAttr "toe02_4_guide.pm" "fgrRef10_aimCst.tg[0].tpm";
connectAttr "fgrRef10_aimCst.w0" "fgrRef10_aimCst.tg[0].tw";
connectAttr "toe02_3_guide.wm" "fgrRef10_aimCst.wum";
connectAttr "fgrRef11_poiCst.ctx" "fgrRef11.tx";
connectAttr "fgrRef11_poiCst.cty" "fgrRef11.ty";
connectAttr "fgrRef11_poiCst.ctz" "fgrRef11.tz";
connectAttr "fgrRef11_aimCst.crx" "fgrRef11.rx";
connectAttr "fgrRef11_aimCst.cry" "fgrRef11.ry";
connectAttr "fgrRef11_aimCst.crz" "fgrRef11.rz";
connectAttr "fgrRef11.pim" "fgrRef11_poiCst.cpim";
connectAttr "fgrRef11.rp" "fgrRef11_poiCst.crp";
connectAttr "fgrRef11.rpt" "fgrRef11_poiCst.crt";
connectAttr "toe02_4_guide.t" "fgrRef11_poiCst.tg[0].tt";
connectAttr "toe02_4_guide.rp" "fgrRef11_poiCst.tg[0].trp";
connectAttr "toe02_4_guide.rpt" "fgrRef11_poiCst.tg[0].trt";
connectAttr "toe02_4_guide.pm" "fgrRef11_poiCst.tg[0].tpm";
connectAttr "fgrRef11_poiCst.w0" "fgrRef11_poiCst.tg[0].tw";
connectAttr "fgrRef11.pim" "fgrRef11_aimCst.cpim";
connectAttr "fgrRef11.t" "fgrRef11_aimCst.ct";
connectAttr "fgrRef11.rp" "fgrRef11_aimCst.crp";
connectAttr "fgrRef11.rpt" "fgrRef11_aimCst.crt";
connectAttr "fgrRef11.ro" "fgrRef11_aimCst.cro";
connectAttr "toe02_5_guide.t" "fgrRef11_aimCst.tg[0].tt";
connectAttr "toe02_5_guide.rp" "fgrRef11_aimCst.tg[0].trp";
connectAttr "toe02_5_guide.rpt" "fgrRef11_aimCst.tg[0].trt";
connectAttr "toe02_5_guide.pm" "fgrRef11_aimCst.tg[0].tpm";
connectAttr "fgrRef11_aimCst.w0" "fgrRef11_aimCst.tg[0].tw";
connectAttr "toe02_4_guide.wm" "fgrRef11_aimCst.wum";
connectAttr "null3.pim" "null3_scaleConstraint1.cpim";
connectAttr "toe02_2_guide.s" "null3_scaleConstraint1.tg[0].ts";
connectAttr "toe02_2_guide.pm" "null3_scaleConstraint1.tg[0].tpm";
connectAttr "null3_scaleConstraint1.w0" "null3_scaleConstraint1.tg[0].tw";
connectAttr "null4_scaleConstraint1.csx" "null4.sx";
connectAttr "null4_scaleConstraint1.csy" "null4.sy";
connectAttr "null4_scaleConstraint1.csz" "null4.sz";
connectAttr "fgrRef12_poiCst.ctx" "fgrRef12.tx";
connectAttr "fgrRef12_poiCst.cty" "fgrRef12.ty";
connectAttr "fgrRef12_poiCst.ctz" "fgrRef12.tz";
connectAttr "fgrRef12_aimCst.crx" "fgrRef12.rx";
connectAttr "fgrRef12_aimCst.cry" "fgrRef12.ry";
connectAttr "fgrRef12_aimCst.crz" "fgrRef12.rz";
connectAttr "fgrRef12.pim" "fgrRef12_poiCst.cpim";
connectAttr "fgrRef12.rp" "fgrRef12_poiCst.crp";
connectAttr "fgrRef12.rpt" "fgrRef12_poiCst.crt";
connectAttr "toe03_1_guide.t" "fgrRef12_poiCst.tg[0].tt";
connectAttr "toe03_1_guide.rp" "fgrRef12_poiCst.tg[0].trp";
connectAttr "toe03_1_guide.rpt" "fgrRef12_poiCst.tg[0].trt";
connectAttr "toe03_1_guide.pm" "fgrRef12_poiCst.tg[0].tpm";
connectAttr "fgrRef12_poiCst.w0" "fgrRef12_poiCst.tg[0].tw";
connectAttr "fgrRef12.pim" "fgrRef12_aimCst.cpim";
connectAttr "fgrRef12.t" "fgrRef12_aimCst.ct";
connectAttr "fgrRef12.rp" "fgrRef12_aimCst.crp";
connectAttr "fgrRef12.rpt" "fgrRef12_aimCst.crt";
connectAttr "fgrRef12.ro" "fgrRef12_aimCst.cro";
connectAttr "toe03_2_guide.t" "fgrRef12_aimCst.tg[0].tt";
connectAttr "toe03_2_guide.rp" "fgrRef12_aimCst.tg[0].trp";
connectAttr "toe03_2_guide.rpt" "fgrRef12_aimCst.tg[0].trt";
connectAttr "toe03_2_guide.pm" "fgrRef12_aimCst.tg[0].tpm";
connectAttr "fgrRef12_aimCst.w0" "fgrRef12_aimCst.tg[0].tw";
connectAttr "toe03_1_guide.wm" "fgrRef12_aimCst.wum";
connectAttr "fgrRef13_poiCst.ctx" "fgrRef13.tx";
connectAttr "fgrRef13_poiCst.cty" "fgrRef13.ty";
connectAttr "fgrRef13_poiCst.ctz" "fgrRef13.tz";
connectAttr "fgrRef13_aimCst.crx" "fgrRef13.rx";
connectAttr "fgrRef13_aimCst.cry" "fgrRef13.ry";
connectAttr "fgrRef13_aimCst.crz" "fgrRef13.rz";
connectAttr "fgrRef13.pim" "fgrRef13_poiCst.cpim";
connectAttr "fgrRef13.rp" "fgrRef13_poiCst.crp";
connectAttr "fgrRef13.rpt" "fgrRef13_poiCst.crt";
connectAttr "toe03_2_guide.t" "fgrRef13_poiCst.tg[0].tt";
connectAttr "toe03_2_guide.rp" "fgrRef13_poiCst.tg[0].trp";
connectAttr "toe03_2_guide.rpt" "fgrRef13_poiCst.tg[0].trt";
connectAttr "toe03_2_guide.pm" "fgrRef13_poiCst.tg[0].tpm";
connectAttr "fgrRef13_poiCst.w0" "fgrRef13_poiCst.tg[0].tw";
connectAttr "fgrRef13.pim" "fgrRef13_aimCst.cpim";
connectAttr "fgrRef13.t" "fgrRef13_aimCst.ct";
connectAttr "fgrRef13.rp" "fgrRef13_aimCst.crp";
connectAttr "fgrRef13.rpt" "fgrRef13_aimCst.crt";
connectAttr "fgrRef13.ro" "fgrRef13_aimCst.cro";
connectAttr "toe03_3_guide.t" "fgrRef13_aimCst.tg[0].tt";
connectAttr "toe03_3_guide.rp" "fgrRef13_aimCst.tg[0].trp";
connectAttr "toe03_3_guide.rpt" "fgrRef13_aimCst.tg[0].trt";
connectAttr "toe03_3_guide.pm" "fgrRef13_aimCst.tg[0].tpm";
connectAttr "fgrRef13_aimCst.w0" "fgrRef13_aimCst.tg[0].tw";
connectAttr "toe03_2_guide.wm" "fgrRef13_aimCst.wum";
connectAttr "fgrRef14_poiCst.ctx" "fgrRef14.tx";
connectAttr "fgrRef14_poiCst.cty" "fgrRef14.ty";
connectAttr "fgrRef14_poiCst.ctz" "fgrRef14.tz";
connectAttr "fgrRef14_aimCst.crx" "fgrRef14.rx";
connectAttr "fgrRef14_aimCst.cry" "fgrRef14.ry";
connectAttr "fgrRef14_aimCst.crz" "fgrRef14.rz";
connectAttr "fgrRef14.pim" "fgrRef14_poiCst.cpim";
connectAttr "fgrRef14.rp" "fgrRef14_poiCst.crp";
connectAttr "fgrRef14.rpt" "fgrRef14_poiCst.crt";
connectAttr "toe03_3_guide.t" "fgrRef14_poiCst.tg[0].tt";
connectAttr "toe03_3_guide.rp" "fgrRef14_poiCst.tg[0].trp";
connectAttr "toe03_3_guide.rpt" "fgrRef14_poiCst.tg[0].trt";
connectAttr "toe03_3_guide.pm" "fgrRef14_poiCst.tg[0].tpm";
connectAttr "fgrRef14_poiCst.w0" "fgrRef14_poiCst.tg[0].tw";
connectAttr "fgrRef14.pim" "fgrRef14_aimCst.cpim";
connectAttr "fgrRef14.t" "fgrRef14_aimCst.ct";
connectAttr "fgrRef14.rp" "fgrRef14_aimCst.crp";
connectAttr "fgrRef14.rpt" "fgrRef14_aimCst.crt";
connectAttr "fgrRef14.ro" "fgrRef14_aimCst.cro";
connectAttr "toe03_4_guide.t" "fgrRef14_aimCst.tg[0].tt";
connectAttr "toe03_4_guide.rp" "fgrRef14_aimCst.tg[0].trp";
connectAttr "toe03_4_guide.rpt" "fgrRef14_aimCst.tg[0].trt";
connectAttr "toe03_4_guide.pm" "fgrRef14_aimCst.tg[0].tpm";
connectAttr "fgrRef14_aimCst.w0" "fgrRef14_aimCst.tg[0].tw";
connectAttr "toe03_3_guide.wm" "fgrRef14_aimCst.wum";
connectAttr "fgrRef15_poiCst.ctx" "fgrRef15.tx";
connectAttr "fgrRef15_poiCst.cty" "fgrRef15.ty";
connectAttr "fgrRef15_poiCst.ctz" "fgrRef15.tz";
connectAttr "fgrRef15_aimCst.crx" "fgrRef15.rx";
connectAttr "fgrRef15_aimCst.cry" "fgrRef15.ry";
connectAttr "fgrRef15_aimCst.crz" "fgrRef15.rz";
connectAttr "fgrRef15.pim" "fgrRef15_poiCst.cpim";
connectAttr "fgrRef15.rp" "fgrRef15_poiCst.crp";
connectAttr "fgrRef15.rpt" "fgrRef15_poiCst.crt";
connectAttr "toe03_4_guide.t" "fgrRef15_poiCst.tg[0].tt";
connectAttr "toe03_4_guide.rp" "fgrRef15_poiCst.tg[0].trp";
connectAttr "toe03_4_guide.rpt" "fgrRef15_poiCst.tg[0].trt";
connectAttr "toe03_4_guide.pm" "fgrRef15_poiCst.tg[0].tpm";
connectAttr "fgrRef15_poiCst.w0" "fgrRef15_poiCst.tg[0].tw";
connectAttr "fgrRef15.pim" "fgrRef15_aimCst.cpim";
connectAttr "fgrRef15.t" "fgrRef15_aimCst.ct";
connectAttr "fgrRef15.rp" "fgrRef15_aimCst.crp";
connectAttr "fgrRef15.rpt" "fgrRef15_aimCst.crt";
connectAttr "fgrRef15.ro" "fgrRef15_aimCst.cro";
connectAttr "toe03_5_guide.t" "fgrRef15_aimCst.tg[0].tt";
connectAttr "toe03_5_guide.rp" "fgrRef15_aimCst.tg[0].trp";
connectAttr "toe03_5_guide.rpt" "fgrRef15_aimCst.tg[0].trt";
connectAttr "toe03_5_guide.pm" "fgrRef15_aimCst.tg[0].tpm";
connectAttr "fgrRef15_aimCst.w0" "fgrRef15_aimCst.tg[0].tw";
connectAttr "toe03_4_guide.wm" "fgrRef15_aimCst.wum";
connectAttr "null4.pim" "null4_scaleConstraint1.cpim";
connectAttr "toe03_2_guide.s" "null4_scaleConstraint1.tg[0].ts";
connectAttr "toe03_2_guide.pm" "null4_scaleConstraint1.tg[0].tpm";
connectAttr "null4_scaleConstraint1.w0" "null4_scaleConstraint1.tg[0].tw";
connectAttr "le_cdn_2.ocr" "null5.v";
connectAttr "null5_scaleConstraint1.csx" "null5.sx";
connectAttr "null5_scaleConstraint1.csy" "null5.sy";
connectAttr "null5_scaleConstraint1.csz" "null5.sz";
connectAttr "fgrRef16_poiCst.ctx" "fgrRef16.tx";
connectAttr "fgrRef16_poiCst.cty" "fgrRef16.ty";
connectAttr "fgrRef16_poiCst.ctz" "fgrRef16.tz";
connectAttr "fgrRef16_aimCst.crx" "fgrRef16.rx";
connectAttr "fgrRef16_aimCst.cry" "fgrRef16.ry";
connectAttr "fgrRef16_aimCst.crz" "fgrRef16.rz";
connectAttr "fgrRef16.pim" "fgrRef16_poiCst.cpim";
connectAttr "fgrRef16.rp" "fgrRef16_poiCst.crp";
connectAttr "fgrRef16.rpt" "fgrRef16_poiCst.crt";
connectAttr "toe04_1_guide.t" "fgrRef16_poiCst.tg[0].tt";
connectAttr "toe04_1_guide.rp" "fgrRef16_poiCst.tg[0].trp";
connectAttr "toe04_1_guide.rpt" "fgrRef16_poiCst.tg[0].trt";
connectAttr "toe04_1_guide.pm" "fgrRef16_poiCst.tg[0].tpm";
connectAttr "fgrRef16_poiCst.w0" "fgrRef16_poiCst.tg[0].tw";
connectAttr "fgrRef16.pim" "fgrRef16_aimCst.cpim";
connectAttr "fgrRef16.t" "fgrRef16_aimCst.ct";
connectAttr "fgrRef16.rp" "fgrRef16_aimCst.crp";
connectAttr "fgrRef16.rpt" "fgrRef16_aimCst.crt";
connectAttr "fgrRef16.ro" "fgrRef16_aimCst.cro";
connectAttr "toe04_2_guide.t" "fgrRef16_aimCst.tg[0].tt";
connectAttr "toe04_2_guide.rp" "fgrRef16_aimCst.tg[0].trp";
connectAttr "toe04_2_guide.rpt" "fgrRef16_aimCst.tg[0].trt";
connectAttr "toe04_2_guide.pm" "fgrRef16_aimCst.tg[0].tpm";
connectAttr "fgrRef16_aimCst.w0" "fgrRef16_aimCst.tg[0].tw";
connectAttr "toe04_1_guide.wm" "fgrRef16_aimCst.wum";
connectAttr "fgrRef17_poiCst.ctx" "fgrRef17.tx";
connectAttr "fgrRef17_poiCst.cty" "fgrRef17.ty";
connectAttr "fgrRef17_poiCst.ctz" "fgrRef17.tz";
connectAttr "fgrRef17_aimCst.crx" "fgrRef17.rx";
connectAttr "fgrRef17_aimCst.cry" "fgrRef17.ry";
connectAttr "fgrRef17_aimCst.crz" "fgrRef17.rz";
connectAttr "fgrRef17.pim" "fgrRef17_poiCst.cpim";
connectAttr "fgrRef17.rp" "fgrRef17_poiCst.crp";
connectAttr "fgrRef17.rpt" "fgrRef17_poiCst.crt";
connectAttr "toe04_2_guide.t" "fgrRef17_poiCst.tg[0].tt";
connectAttr "toe04_2_guide.rp" "fgrRef17_poiCst.tg[0].trp";
connectAttr "toe04_2_guide.rpt" "fgrRef17_poiCst.tg[0].trt";
connectAttr "toe04_2_guide.pm" "fgrRef17_poiCst.tg[0].tpm";
connectAttr "fgrRef17_poiCst.w0" "fgrRef17_poiCst.tg[0].tw";
connectAttr "fgrRef17.pim" "fgrRef17_aimCst.cpim";
connectAttr "fgrRef17.t" "fgrRef17_aimCst.ct";
connectAttr "fgrRef17.rp" "fgrRef17_aimCst.crp";
connectAttr "fgrRef17.rpt" "fgrRef17_aimCst.crt";
connectAttr "fgrRef17.ro" "fgrRef17_aimCst.cro";
connectAttr "toe04_3_guide.t" "fgrRef17_aimCst.tg[0].tt";
connectAttr "toe04_3_guide.rp" "fgrRef17_aimCst.tg[0].trp";
connectAttr "toe04_3_guide.rpt" "fgrRef17_aimCst.tg[0].trt";
connectAttr "toe04_3_guide.pm" "fgrRef17_aimCst.tg[0].tpm";
connectAttr "fgrRef17_aimCst.w0" "fgrRef17_aimCst.tg[0].tw";
connectAttr "toe04_2_guide.wm" "fgrRef17_aimCst.wum";
connectAttr "fgrRef18_poiCst.ctx" "fgrRef18.tx";
connectAttr "fgrRef18_poiCst.cty" "fgrRef18.ty";
connectAttr "fgrRef18_poiCst.ctz" "fgrRef18.tz";
connectAttr "fgrRef18_aimCst.crx" "fgrRef18.rx";
connectAttr "fgrRef18_aimCst.cry" "fgrRef18.ry";
connectAttr "fgrRef18_aimCst.crz" "fgrRef18.rz";
connectAttr "fgrRef18.pim" "fgrRef18_poiCst.cpim";
connectAttr "fgrRef18.rp" "fgrRef18_poiCst.crp";
connectAttr "fgrRef18.rpt" "fgrRef18_poiCst.crt";
connectAttr "toe04_3_guide.t" "fgrRef18_poiCst.tg[0].tt";
connectAttr "toe04_3_guide.rp" "fgrRef18_poiCst.tg[0].trp";
connectAttr "toe04_3_guide.rpt" "fgrRef18_poiCst.tg[0].trt";
connectAttr "toe04_3_guide.pm" "fgrRef18_poiCst.tg[0].tpm";
connectAttr "fgrRef18_poiCst.w0" "fgrRef18_poiCst.tg[0].tw";
connectAttr "fgrRef18.pim" "fgrRef18_aimCst.cpim";
connectAttr "fgrRef18.t" "fgrRef18_aimCst.ct";
connectAttr "fgrRef18.rp" "fgrRef18_aimCst.crp";
connectAttr "fgrRef18.rpt" "fgrRef18_aimCst.crt";
connectAttr "fgrRef18.ro" "fgrRef18_aimCst.cro";
connectAttr "toe04_4_guide.t" "fgrRef18_aimCst.tg[0].tt";
connectAttr "toe04_4_guide.rp" "fgrRef18_aimCst.tg[0].trp";
connectAttr "toe04_4_guide.rpt" "fgrRef18_aimCst.tg[0].trt";
connectAttr "toe04_4_guide.pm" "fgrRef18_aimCst.tg[0].tpm";
connectAttr "fgrRef18_aimCst.w0" "fgrRef18_aimCst.tg[0].tw";
connectAttr "toe04_3_guide.wm" "fgrRef18_aimCst.wum";
connectAttr "fgrRef19_poiCst.ctx" "fgrRef19.tx";
connectAttr "fgrRef19_poiCst.cty" "fgrRef19.ty";
connectAttr "fgrRef19_poiCst.ctz" "fgrRef19.tz";
connectAttr "fgrRef19_aimCst.crx" "fgrRef19.rx";
connectAttr "fgrRef19_aimCst.cry" "fgrRef19.ry";
connectAttr "fgrRef19_aimCst.crz" "fgrRef19.rz";
connectAttr "fgrRef19.pim" "fgrRef19_poiCst.cpim";
connectAttr "fgrRef19.rp" "fgrRef19_poiCst.crp";
connectAttr "fgrRef19.rpt" "fgrRef19_poiCst.crt";
connectAttr "toe04_4_guide.t" "fgrRef19_poiCst.tg[0].tt";
connectAttr "toe04_4_guide.rp" "fgrRef19_poiCst.tg[0].trp";
connectAttr "toe04_4_guide.rpt" "fgrRef19_poiCst.tg[0].trt";
connectAttr "toe04_4_guide.pm" "fgrRef19_poiCst.tg[0].tpm";
connectAttr "fgrRef19_poiCst.w0" "fgrRef19_poiCst.tg[0].tw";
connectAttr "fgrRef19.pim" "fgrRef19_aimCst.cpim";
connectAttr "fgrRef19.t" "fgrRef19_aimCst.ct";
connectAttr "fgrRef19.rp" "fgrRef19_aimCst.crp";
connectAttr "fgrRef19.rpt" "fgrRef19_aimCst.crt";
connectAttr "fgrRef19.ro" "fgrRef19_aimCst.cro";
connectAttr "toe04_5_guide.t" "fgrRef19_aimCst.tg[0].tt";
connectAttr "toe04_5_guide.rp" "fgrRef19_aimCst.tg[0].trp";
connectAttr "toe04_5_guide.rpt" "fgrRef19_aimCst.tg[0].trt";
connectAttr "toe04_5_guide.pm" "fgrRef19_aimCst.tg[0].tpm";
connectAttr "fgrRef19_aimCst.w0" "fgrRef19_aimCst.tg[0].tw";
connectAttr "toe04_4_guide.wm" "fgrRef19_aimCst.wum";
connectAttr "null5.pim" "null5_scaleConstraint1.cpim";
connectAttr "toe04_2_guide.s" "null5_scaleConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "null5_scaleConstraint1.tg[0].tpm";
connectAttr "null5_scaleConstraint1.w0" "null5_scaleConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
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
connectAttr "toe00_1_guide.wm" "DCM_37.imat";
connectAttr "toe00_2_guide.wm" "DCM_38.imat";
connectAttr "toe00_3_guide.wm" "DCM_39.imat";
connectAttr "toe00_4_guide.wm" "DCM_40.imat";
connectAttr "toe01_1_guide.wm" "DCM_41.imat";
connectAttr "toe01_2_guide.wm" "DCM_42.imat";
connectAttr "toe01_3_guide.wm" "DCM_43.imat";
connectAttr "toe01_4_guide.wm" "DCM_44.imat";
connectAttr "toe01_5_guide.wm" "DCM_45.imat";
connectAttr "toe02_1_guide.wm" "DCM_46.imat";
connectAttr "toe02_2_guide.wm" "DCM_47.imat";
connectAttr "toe02_3_guide.wm" "DCM_48.imat";
connectAttr "toe02_4_guide.wm" "DCM_49.imat";
connectAttr "toe02_5_guide.wm" "DCM_50.imat";
connectAttr "toe03_1_guide.wm" "DCM_51.imat";
connectAttr "toe03_2_guide.wm" "DCM_52.imat";
connectAttr "toe03_3_guide.wm" "DCM_53.imat";
connectAttr "toe03_4_guide.wm" "DCM_54.imat";
connectAttr "toe03_5_guide.wm" "DCM_55.imat";
connectAttr "toe04_1_guide.wm" "DCM_56.imat";
connectAttr "toe04_2_guide.wm" "DCM_57.imat";
connectAttr "toe04_3_guide.wm" "DCM_58.imat";
connectAttr "toe04_4_guide.wm" "DCM_59.imat";
connectAttr "toe04_5_guide.wm" "DCM_60.imat";
connectAttr "master_guide.toeNum" "le_cdn_1.ft";
connectAttr "master_guide.toeNum" "le_cdn_2.ft";
connectAttr "master_guide.toeNum" "le_cdn_3.ft";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null1|fgrRef2|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null1|fgrRef3|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef4|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef5|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef6|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef7|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef8|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef9|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef10|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef11|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef12|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef13|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef14|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef15|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef16|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef17|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef18|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef19|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "carpal_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "master_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "fgrRef_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
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
connectAttr "line_grp2.msg" ":hyperGraphLayout.hyp[84975].dn";
connectAttr "toe02_2_guide.msg" ":hyperGraphLayout.hyp[85140].dn";
connectAttr "toe02_3_guide.msg" ":hyperGraphLayout.hyp[85141].dn";
connectAttr "toe02_1_guide.msg" ":hyperGraphLayout.hyp[85142].dn";
connectAttr "toe02_4_guide.msg" ":hyperGraphLayout.hyp[85143].dn";
connectAttr "toe03_1_guide.msg" ":hyperGraphLayout.hyp[85148].dn";
connectAttr "toe04_1_guide.msg" ":hyperGraphLayout.hyp[85149].dn";
connectAttr "toe01_1_guide.msg" ":hyperGraphLayout.hyp[85150].dn";
connectAttr "toe00_1_guide.msg" ":hyperGraphLayout.hyp[85151].dn";
connectAttr "toe01_2_guide.msg" ":hyperGraphLayout.hyp[85152].dn";
connectAttr "toe00_2_guide.msg" ":hyperGraphLayout.hyp[85153].dn";
connectAttr "toe03_2_guide.msg" ":hyperGraphLayout.hyp[85154].dn";
connectAttr "toe04_2_guide.msg" ":hyperGraphLayout.hyp[85155].dn";
connectAttr "toe00_4_guide.msg" ":hyperGraphLayout.hyp[85156].dn";
connectAttr "toe01_4_guide.msg" ":hyperGraphLayout.hyp[85157].dn";
connectAttr "toe03_4_guide.msg" ":hyperGraphLayout.hyp[85158].dn";
connectAttr "toe04_4_guide.msg" ":hyperGraphLayout.hyp[85159].dn";
connectAttr "toeMain_guide.msg" ":hyperGraphLayout.hyp[85163].dn";
// End of rtLegQd.ma
