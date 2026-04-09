//Maya ASCII 2023 scene
//Name: lfLegQd.ma
//Last modified: Thu, Apr 09, 2026 04:52:48 PM
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
fileInfo "UUID" "0BBAD4A3-45D6-F9F5-5F96-C0A09F403052";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "E66F8CE8-4304-FEB2-4988-D6851FD4AAC0";
	addAttr -ci true -sn "_____" -ln "_____" -min 0 -max 0 -en " " -at "enum";
	addAttr -ci true -sn "scapulaBone" -ln "scapulaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeFix" -ln "kneeFix" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dualBone" -ln "dualBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "showRef" -ln "showRef" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en " " -at "enum";
	setAttr ".ovc" 18;
	setAttr -l on -k on "._____";
	addAttr -ci true -sn "toeNum" -ln "toeNum" -dv 5 -min 2 -max 5 -at "long";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "scapulaAutoAim" -ln "scapulaAutoAim" -dv 0.5 -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -min -2 -max 2 -at "double";
	setAttr -cb on ".scapulaBone";
	setAttr -cb on ".patellaBone";
	setAttr -cb on ".kneeFix";
	setAttr -cb on ".dualBone";
	setAttr -cb on ".toeBones";
	setAttr -cb on ".toeNum";
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".scapulaAutoAim";
	setAttr -cb on ".palmAimRatio" 1;
	setAttr -cb on ".showRef";
	setAttr -l on -k on ".____________";
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 94 18 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
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
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.55971561940284364 -7.7715611723760958e-16 -1.9373391779708982e-14
		0.51968211980317869 0.21525937284740546 -1.9373391779708982e-14
		0.39774749602252496 0.39774749602252418 -1.9373391779708982e-14
		0.21525937284740623 0.51968211980317791 -1.9373391779708982e-14
		0 0.55970249440297426 -1.9373391779708982e-14
		-0.21525937284740623 0.51968211980317791 -1.9373391779708982e-14
		-0.39774749602252496 0.39774749602252418 -1.9373391779708982e-14
		-0.51968211980317869 0.21525937284740546 -1.9373391779708982e-14
		-0.55971561940284364 -2.6518913011966993e-08 -1.9373391779708982e-14
		-0.51968211980317869 -0.21525937284740701 -1.9373391779708982e-14
		-0.39774749602252496 -0.39774749602252574 -1.9373391779708982e-14
		-0.21525937284740623 -0.51968211980317947 -1.9373391779708982e-14
		2.2351724776482751e-08 -0.55970249440297581 -0.0038058749619606239
		0.21525937284740623 -0.51968211980317947 -1.9373391779708982e-14
		0.39774749602252496 -0.39774749602252574 -1.9373391779708982e-14
		0.51968211980317869 -0.21525937284740701 -1.9373391779708982e-14
		0.55971561940284364 -7.7715611723760958e-16 -1.9373391779708982e-14
		0.51710961982890369 0.0014564849854343731 -0.21418912285812813
		0.39577874604221253 0.002691254973086673 -0.39577012104231812
		0.21419399785806001 0.0035162999648362231 -0.51709836982903568
		2.2351724776482751e-08 0.0038060249619389724 -0.55970324440298702
		-0.21419399785806001 0.0035162999648362231 -0.51709836982903568
		-0.39577874604221253 0.002691254973086673 -0.39577012104231812
		-0.51710961982890369 0.0014564849854343731 -0.21418912285812813
		-0.55971561940284364 -2.6518913011966993e-08 -1.9373391779708982e-14
		-0.51710961982890369 -0.0014565374854354021 0.21418837285809689
		-0.39577874604221253 -0.0026913074730877022 0.3957697460422831
		-0.21419399785806001 -0.0035163524648372528 0.51709761982900437
		2.2351724776482751e-08 -0.003806062461940153 0.55970249440295561
		0.21419399785806001 -0.0035163524648372528 0.51709761982900437
		0.39577874604221253 -0.0026913074730877022 0.3957697460422831
		0.51710961982890369 -0.0014565374854354021 0.21418837285809689
		0.55971561940284364 -7.7715611723760958e-16 -1.9373391779708982e-14
		0.51710961982890369 0.0014564849854343731 -0.21418912285812813
		0.39577874604221253 0.002691254973086673 -0.39577012104231812
		0.21419399785806001 0.0035162999648362231 -0.51709836982903568
		2.2351724776482751e-08 0.0038060249619389724 -0.55970324440298702
		2.2351724776482751e-08 0.21770512282294799 -0.51564149484360433
		2.2351724776482751e-08 0.39846074601539172 -0.39307874606923188
		2.2351724776482751e-08 0.51855411981445798 -0.21067274789329188
		0 0.55970249440297426 -1.9373391779708982e-14
		2.2351724776482751e-08 0.51564111984358796 0.21770512282292939
		2.2351724776482751e-08 0.39307837106921539 0.3984603710153769
		2.2351724776482751e-08 0.21067274789327173 0.51855411981443944
		2.2351724776482751e-08 -0.003806062461940153 0.55970249440295561
		2.2351724776482751e-08 -0.21770512282294954 0.51564074484357314
		2.2351724776482751e-08 -0.39846074601539327 0.39307799606920069
		2.2351724776482751e-08 -0.51855411981445954 0.2106719978932606
		2.2351724776482751e-08 -0.55970249440297581 -0.0038058749619606239
		2.2351724776482751e-08 -0.51564111984358951 -0.21770587282296061
		2.2351724776482751e-08 -0.39307837106921695 -0.39846112101540809
		2.2351724776482751e-08 -0.21067274789327328 -0.51855486981447063
		2.2351724776482751e-08 0.0038060249619389724 -0.55970324440298702
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "FDBB4D88-4CFD-F00D-82C0-DC86D56796A9";
	setAttr ".t" -type "double3" 0 85 6 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
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
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 179.99999212859592 0 ;
	setAttr -k on ".w0";
createNode transform -n "scap_guide_ofs" -p "upr_guide";
	rename -uid "58080384-454B-29CC-60EF-B4BBEFD42BFC";
	setAttr ".t" -type "double3" -2.9999999999999858 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "1306F83F-4E01-4A38-0ADD-DC910ADDB46F";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 180 0 -90 ;
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
	setAttr ".t" -type "double3" 0 0 -13 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
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
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "patella_guide" -p "lwr_guide";
	rename -uid "8D0DFFF7-457B-292C-BC34-9EBD723BB229";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -3 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 4.2146217865798014e-17 0 -1.0005336250605246e-18 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode nurbsCurve -n "patella_guideShape" -p "patella_guide";
	rename -uid "8DA63F92-4673-3AD3-C685-0D9F607F781C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34645474653545244 0.14350624856493749 -8.3266726846886741e-17
		0.26516499734834997 0.26516499734834997 -8.3266726846886741e-17
		0.14350624856493749 0.34645474653545244 -8.3266726846886741e-17
		0 0.37313499626864999 -8.3266726846886741e-17
		-0.14350624856493749 0.34645474653545244 -8.3266726846886741e-17
		-0.26516499734834997 0.26516499734834997 -8.3266726846886741e-17
		-0.34645474653545244 0.14350624856493749 -8.3266726846886741e-17
		-0.37314374626856245 -1.7679274823207251e-08 -8.3266726846886741e-17
		-0.34645474653545244 -0.14350624856493749 -8.3266726846886741e-17
		-0.26516499734834997 -0.26516499734834997 -8.3266726846886741e-17
		-0.14350624856493749 -0.34645474653545244 -8.3266726846886741e-17
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275836
		0.14350624856493749 -0.34645474653545244 -8.3266726846886741e-17
		0.26516499734834997 -0.26516499734834997 -8.3266726846886741e-17
		0.34645474653545244 -0.14350624856493749 -8.3266726846886741e-17
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		-0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		-0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		-0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		-0.37314374626856245 -1.7679274823207251e-08 -8.3266726846886741e-17
		-0.34473974655260248 -0.00097102499028974996 0.14279224857207742
		-0.26385249736147504 -0.0017942049820579499 0.26384649736153487
		-0.14279599857204001 -0.0023442349765576504 0.34473174655268246
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864988
		0.14279599857204001 -0.0023442349765576504 0.34473174655268246
		0.26385249736147504 -0.0017942049820579499 0.26384649736153487
		0.34473974655260248 -0.00097102499028974996 0.14279224857207742
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		1.4901149850988502e-08 0.14513674854863251 -0.34376099656239001
		1.4901149850988502e-08 0.26564049734359502 -0.26205249737947511
		1.4901149850988502e-08 0.34570274654297251 -0.14044849859551506
		0 0.37313499626864999 -8.3266726846886741e-17
		1.4901149850988502e-08 0.34376074656239253 0.1451367485486324
		1.4901149850988502e-08 0.26205224737947747 0.26564024734359748
		1.4901149850988502e-08 0.140448498595515 0.34570274654297239
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864988
		1.4901149850988502e-08 -0.14513674854863251 0.34376049656239493
		1.4901149850988502e-08 -0.26564049734359502 0.26205199737947993
		1.4901149850988502e-08 -0.34570274654297251 0.1404479985955199
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275836
		1.4901149850988502e-08 -0.34376074656239253 -0.14513724854862758
		1.4901149850988502e-08 -0.26205224737947747 -0.26564074734359255
		1.4901149850988502e-08 -0.140448498595515 -0.34570324654296758
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
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
createNode nurbsCurve -n "ulnaEnd_guideShape" -p "radius_guide";
	rename -uid "4EFA346C-40E1-8F1E-1BDF-F4A9FB27DE6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34645474653545244 0.14350624856493749 -8.3266726846886741e-17
		0.26516499734834997 0.26516499734834997 -8.3266726846886741e-17
		0.14350624856493749 0.34645474653545244 -8.3266726846886741e-17
		0 0.37313499626864999 -8.3266726846886741e-17
		-0.14350624856493749 0.34645474653545244 -8.3266726846886741e-17
		-0.26516499734834997 0.26516499734834997 -8.3266726846886741e-17
		-0.34645474653545244 0.14350624856493749 -8.3266726846886741e-17
		-0.37314374626856245 -1.7679274823207251e-08 -8.3266726846886741e-17
		-0.34645474653545244 -0.14350624856493749 -8.3266726846886741e-17
		-0.26516499734834997 -0.26516499734834997 -8.3266726846886741e-17
		-0.14350624856493749 -0.34645474653545244 -8.3266726846886741e-17
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275836
		0.14350624856493749 -0.34645474653545244 -8.3266726846886741e-17
		0.26516499734834997 -0.26516499734834997 -8.3266726846886741e-17
		0.34645474653545244 -0.14350624856493749 -8.3266726846886741e-17
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		-0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		-0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		-0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		-0.37314374626856245 -1.7679274823207251e-08 -8.3266726846886741e-17
		-0.34473974655260248 -0.00097102499028974996 0.14279224857207742
		-0.26385249736147504 -0.0017942049820579499 0.26384649736153487
		-0.14279599857204001 -0.0023442349765576504 0.34473174655268246
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864988
		0.14279599857204001 -0.0023442349765576504 0.34473174655268246
		0.26385249736147504 -0.0017942049820579499 0.26384649736153487
		0.34473974655260248 -0.00097102499028974996 0.14279224857207742
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		1.4901149850988502e-08 0.14513674854863251 -0.34376099656239001
		1.4901149850988502e-08 0.26564049734359502 -0.26205249737947511
		1.4901149850988502e-08 0.34570274654297251 -0.14044849859551506
		0 0.37313499626864999 -8.3266726846886741e-17
		1.4901149850988502e-08 0.34376074656239253 0.1451367485486324
		1.4901149850988502e-08 0.26205224737947747 0.26564024734359748
		1.4901149850988502e-08 0.140448498595515 0.34570274654297239
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864988
		1.4901149850988502e-08 -0.14513674854863251 0.34376049656239493
		1.4901149850988502e-08 -0.26564049734359502 0.26205199737947993
		1.4901149850988502e-08 -0.34570274654297251 0.1404479985955199
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275836
		1.4901149850988502e-08 -0.34376074656239253 -0.14513724854862758
		1.4901149850988502e-08 -0.26205224737947747 -0.26564074734359255
		1.4901149850988502e-08 -0.140448498595515 -0.34570324654296758
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		;
	setAttr ".adot" yes;
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
	setAttr ".t" -type "double3" 0 20 -1 ;
	setAttr ".r" -type "double3" 180 9.0309812684467041e-17 -90 ;
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "2777BD87-4148-276D-9AEA-CDA4ABC15F94";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "digit_guide" -p "digit_guide_ofs";
	rename -uid "4881E75D-4BDC-BA9A-2224-299C5DB2B52F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.7148429343528187e-07 9.3312649504333883e-09 -5.3290705182007514e-15 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
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
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "ball_guide" -p "ball_guide_ofs1";
	rename -uid "CB9D3A49-4C66-FC6C-D712-26949CC6ED7F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012474e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -4.9303806576313212e-31 ;
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
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "tip_guide" -p "tip_guide_ofs";
	rename -uid "05FF854B-48FD-8CFD-1BE2-1298CB99257E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "palm_inPos_ofs" -p "master_guide";
	rename -uid "254E1ABA-4993-EFAA-A2B9-BCA39A6DB9B7";
createNode transform -n "palm_inPos_guide" -p "palm_inPos_ofs";
	rename -uid "D4E600EC-46C0-7F63-B923-98859A463209";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -6 0 9.9999999999999929 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode nurbsCurve -n "palm_toePos_guideShape" -p "palm_inPos_guide";
	rename -uid "79F8AB7C-434D-A484-518F-3BAD06789D7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34645474653545244 0.14350624856493749 -8.3266726846886741e-17
		0.26516499734834997 0.26516499734834997 -8.3266726846886741e-17
		0.14350624856493749 0.34645474653545244 -8.3266726846886741e-17
		0 0.37313499626864999 -8.3266726846886741e-17
		-0.14350624856493749 0.34645474653545244 -8.3266726846886741e-17
		-0.26516499734834997 0.26516499734834997 -8.3266726846886741e-17
		-0.34645474653545244 0.14350624856493749 -8.3266726846886741e-17
		-0.37314374626856245 -1.7679274823207251e-08 -8.3266726846886741e-17
		-0.34645474653545244 -0.14350624856493749 -8.3266726846886741e-17
		-0.26516499734834997 -0.26516499734834997 -8.3266726846886741e-17
		-0.14350624856493749 -0.34645474653545244 -8.3266726846886741e-17
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275836
		0.14350624856493749 -0.34645474653545244 -8.3266726846886741e-17
		0.26516499734834997 -0.26516499734834997 -8.3266726846886741e-17
		0.34645474653545244 -0.14350624856493749 -8.3266726846886741e-17
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		-0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		-0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		-0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		-0.37314374626856245 -1.7679274823207251e-08 -8.3266726846886741e-17
		-0.34473974655260248 -0.00097102499028974996 0.14279224857207742
		-0.26385249736147504 -0.0017942049820579499 0.26384649736153487
		-0.14279599857204001 -0.0023442349765576504 0.34473174655268246
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864988
		0.14279599857204001 -0.0023442349765576504 0.34473174655268246
		0.26385249736147504 -0.0017942049820579499 0.26384649736153487
		0.34473974655260248 -0.00097102499028974996 0.14279224857207742
		0.37314374626856245 0 -8.3266726846886741e-17
		0.34473974655260248 0.00097098999029010015 -0.14279274857207258
		0.26385249736147504 0.0017941699820583001 -0.26384674736153257
		0.14279599857204001 0.0023441999765580002 -0.34473224655267759
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		1.4901149850988502e-08 0.14513674854863251 -0.34376099656239001
		1.4901149850988502e-08 0.26564049734359502 -0.26205249737947511
		1.4901149850988502e-08 0.34570274654297251 -0.14044849859551506
		0 0.37313499626864999 -8.3266726846886741e-17
		1.4901149850988502e-08 0.34376074656239253 0.1451367485486324
		1.4901149850988502e-08 0.26205224737947747 0.26564024734359748
		1.4901149850988502e-08 0.140448498595515 0.34570274654297239
		1.4901149850988502e-08 -0.0025373749746262506 0.37313499626864988
		1.4901149850988502e-08 -0.14513674854863251 0.34376049656239493
		1.4901149850988502e-08 -0.26564049734359502 0.26205199737947993
		1.4901149850988502e-08 -0.34570274654297251 0.1404479985955199
		1.4901149850988502e-08 -0.37313499626864999 -0.0025372499746275836
		1.4901149850988502e-08 -0.34376074656239253 -0.14513724854862758
		1.4901149850988502e-08 -0.26205224737947747 -0.26564074734359255
		1.4901149850988502e-08 -0.140448498595515 -0.34570324654296758
		1.4901149850988502e-08 0.0025373499746264997 -0.37313549626864512
		;
	setAttr ".adot" yes;
createNode transform -n "palm_outPos_ofs" -p "master_guide";
	rename -uid "5FC88CCD-48EE-A138-ED19-7C9CCD2BC9BD";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 6 0 10 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_heelPos_ofs" -p "master_guide";
	rename -uid "830B1EA8-46DF-8A2A-5035-F08531437448";
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
	rename -uid "A1C0A36A-4FCA-48D9-3D84-CA976A59E454";
createNode transform -n "palm_toePos_guide" -p "palm_toePos_guide_ofs";
	rename -uid "D0C1A22D-4BCC-3A74-889C-209DD6F8C00D";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 18 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
	setAttr ".t" -type "double3" 45 7.1054273576010019e-15 1.0978271331186208e-15 ;
	setAttr ".r" -type "double3" 0 90 0 ;
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
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode locator -n "toesRoot_guideShape" -p "toesRoot_guide";
	rename -uid "02D0727E-4919-F638-406D-47B5EFFAB856";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
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
	rename -uid "F8F3F39C-49C1-BCCC-A019-FFB89250400D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
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
createNode transform -n "toe_guide_grp" -p "master_guide";
	rename -uid "60DD528A-4284-3D79-F144-5AB1131C8E63";
createNode transform -n "toe_main_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "9791110C-4A2D-A8C1-0129-E08B4864AA1F";
	setAttr ".t" -type "double3" 0 5.0000000000000044 5 ;
createNode transform -n "toeMain_guide" -p "toe_main_2_guide_ofs";
	rename -uid "4A1A4A34-46BA-B008-D3B7-BAA44098248C";
createNode nurbsCurve -n "squareShape1" -p "toeMain_guide";
	rename -uid "FADDEDD5-498A-6B70-0473-8880602FE424";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		7.0739684096498934 0 3.4734843449721526
		7.0739684096498934 0 -3.4734843449721526
		-7.0739684096498934 0 -3.4734843449721526
		-7.0739684096498934 0 3.4734843449721526
		7.0739684096498934 0 3.4734843449721526
		;
	setAttr ".adot" yes;
createNode transform -n "toe02_2_guide_ofs" -p "toeMain_guide";
	rename -uid "5A835247-4293-ED28-EFBF-66A595964E91";
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ofs";
	rename -uid "70157F63-4504-7307-38BC-4E9085F15C0E";
createNode transform -n "toe02_3_guide_ofs" -p "toe02_2_guide";
	rename -uid "B395006F-4752-1E07-8425-0E833BCCF068";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 7 ;
createNode transform -n "toe02_3_guide" -p "toe02_3_guide_ofs";
	rename -uid "425ABFCC-4D33-C627-8300-E5BE4202491E";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe02_4_guide_ofs" -p "toe02_3_guide";
	rename -uid "0AE3AF23-411F-F04D-6A0F-40BACE31640D";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 -4.9999999999999991 2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe02_4_guide" -p "toe02_4_guide_ofs";
	rename -uid "4D805001-4C7F-2014-06E9-90A29914D0E1";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe02_5_guide_ofs" -p "toe02_4_guide";
	rename -uid "93FF70DB-40DC-9337-F1E5-62A0364A4C9C";
	setAttr ".t" -type "double3" 0 4.4408920985006281e-16 2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe02_5_guide" -p "toe02_5_guide_ofs";
	rename -uid "CF66827F-4A09-CDE3-954B-4292445E9C60";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe02_1_guideShape" -p "toe02_5_guide";
	rename -uid "71D0EF71-4EF1-252E-1BF3-5E8E1CD093F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10393642396063549 0.043051874569481251 0
		0.079549499204504742 0.079549499204504992 0
		0.043051874569481001 0.10393642396063574 0
		-2.4980018054066022e-16 0.11194049888059499 0
		-0.043051874569481494 0.10393642396063574 0
		-0.079549499204505242 0.079549499204504992 0
		-0.10393642396063597 0.043051874569481251 0
		-0.11194312388056896 -5.3037824469621759e-09 0
		-0.10393642396063597 -0.043051874569481251 0
		-0.079549499204505242 -0.079549499204504992 0
		-0.043051874569481494 -0.10393642396063574 0
		4.4703447054963707e-09 -0.11194049888059499 -0.00076117499238824991
		0.043051874569481001 -0.10393642396063574 0
		0.079549499204504742 -0.079549499204504992 0
		0.10393642396063549 -0.043051874569481251 0
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10342192396578051 0.00029129699708703004 -0.042837824571621753
		0.079155749208442261 0.00053825099461749003 -0.079154024208459753
		0.042838799571611748 0.00070325999296740006 -0.10341967396580326
		4.4703447054963707e-09 0.00076120499238794995 -0.11194064888059349
		-0.042838799571612247 0.00070325999296740006 -0.10341967396580326
		-0.079155749208442761 0.00053825099461749003 -0.079154024208459753
		-0.10342192396578101 0.00029129699708703004 -0.042837824571621753
		-0.11194312388056896 -5.3037824469621759e-09 0
		-0.10342192396578101 -0.00029130749708692499 0.042837674571623255
		-0.079155749208442761 -0.00053826149461738497 0.079153949208460472
		-0.042838799571612247 -0.00070327049296729522 0.10341952396580475
		4.4703447054963707e-09 -0.00076121249238787498 0.11194049888059499
		0.042838799571611748 -0.00070327049296729522 0.10341952396580475
		0.079155749208442261 -0.00053826149461738497 0.079153949208460472
		0.10342192396578051 -0.00029130749708692499 0.042837674571623255
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10342192396578051 0.00029129699708703004 -0.042837824571621753
		0.079155749208442261 0.00053825099461749003 -0.079154024208459753
		0.042838799571611748 0.00070325999296740006 -0.10341967396580326
		4.4703447054963707e-09 0.00076120499238794995 -0.11194064888059349
		4.4703447054963707e-09 0.043541024564589748 -0.103128298968717
		4.4703447054963707e-09 0.079692149203078516 -0.078615749213842498
		4.4703447054963707e-09 0.10371082396289176 -0.042134549578654493
		-2.4980018054066022e-16 0.11194049888059499 0
		4.4703447054963707e-09 0.10312822396871775 0.043541024564589748
		4.4703447054963707e-09 0.078615674213843217 0.079692074203079249
		4.4703447054963707e-09 0.042134549578654493 0.10371082396289176
		4.4703447054963707e-09 -0.00076121249238787498 0.11194049888059499
		4.4703447054963707e-09 -0.043541024564589748 0.1031281489687185
		4.4703447054963707e-09 -0.079692149203078516 0.078615599213844006
		4.4703447054963707e-09 -0.10371082396289176 0.042134399578656001
		4.4703447054963707e-09 -0.11194049888059499 -0.00076117499238824991
		4.4703447054963707e-09 -0.10312822396871775 -0.043541174564588253
		4.4703447054963707e-09 -0.078615674213843217 -0.079692224203077727
		4.4703447054963707e-09 -0.042134549578654493 -0.10371097396289025
		4.4703447054963707e-09 0.00076120499238794995 -0.11194064888059349
		;
	setAttr ".adot" yes;
createNode transform -n "toe02_1_guide_ofs" -p "toe02_2_guide";
	rename -uid "D0FCB09E-4190-985A-2FC6-D1939F6A1C75";
createNode transform -n "toe02_1_guide" -p "toe02_1_guide_ofs";
	rename -uid "B8A05C5F-4AA4-724F-511D-7D8388FFD1AE";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe02_1_guide_ofs_pointConstraint1" -p "toe02_1_guide_ofs";
	rename -uid "C7EE64BE-429A-B2B9-EBEF-F5BACFDA6D4F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 10.999999999999996 -4.3999999999999986 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode nurbsCurve -n "dotLineShape1" -p "toe02_2_guide";
	rename -uid "9FD4BF1C-43C4-F521-1693-A48C816C956E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 54 0 no 3
		55 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 55
		55
		-0.13992581110074731 5.5879311940865335e-09 0.0009515062404824732
		-0.1296387174536183 5.5879311949098495e-09 -0.052668186973320569
		-0.09961528025385262 5.5879312095465788e-09 -0.098269592767306527
		-0.054426468205740763 5.5879312095465788e-09 -0.12891027996089968
		-0.00095146874049077928 5.5879311802731202e-09 -0.13992562360074617
		0.052667999473314492 5.5879311978371954e-09 -0.1296385299536171
		0.098269499017299519 5.5879311919825037e-09 -0.099615186503850567
		0.12891018621089259 5.5879311890551578e-09 -0.054426280705739641
		0.13992562360073818 5.5879311940407937e-09 -0.00095151561548730782
		0.12963852995360911 5.5879311919825037e-09 0.052668186973315649
		0.099615092753843559 5.5879311978371954e-09 0.098269592767301572
		0.054426280705731696 5.5879311919825037e-09 0.12891027996089471
		-5.4672071923378245e-15 -1.1709383462843448e-17 0.13992562360074123
		-0.05266818697332358 5.5879311919825037e-09 0.12963852995361214
		-0.098269686517308538 5.5879311861278119e-09 0.099615186503845654
		-0.12891037371090169 5.5879311832004661e-09 0.0544262807057347
		-0.13992581110074731 5.5879311940865335e-09 0.0009515062404824732
		-0.12927459245725947 0.053548499464514981 0.00087907499120679045
		-0.098942530260580169 0.098944686510553104 0.00067281374326940552
		-0.05354728071453263 0.12927740495722587 0.00036412124635634225
		-5.4672071923378245e-15 0.13992890485071086 -2.4589705271971241e-15
		0.05354709321452357 0.12927740495722587 -0.00036413437136113423
		0.098942436510570081 0.098944686510553118 -0.00067282686827417409
		0.12927440495725045 0.053548499464514995 -0.000879088116211578
		0.13992562360073818 5.5879311940407937e-09 -0.00095151561548730782
		0.12927440495725045 -0.053548499464514961 -0.00087908811621158244
		0.098942436510570081 -0.098944686510553118 -0.00067282686827419165
		0.05354709321452357 -0.12927740495722589 -0.00036413437136112252
		-5.4672071923378245e-15 -0.13992890485071086 -6.6297305243313148e-09
		-0.05354728071453263 -0.12927740495722589 0.00036412124635631883
		-0.098942530260580169 -0.098944686510553104 0.00067281374326939381
		-0.12927459245725947 -0.053548499464514981 0.00087907499120677733
		-0.13992581110074731 5.5879311940865335e-09 0.0009515062404824732
		-0.12927459245725947 0.053548499464514981 0.00087907499120679045
		-0.098942530260580169 0.098944686510553104 0.00067281374326940552
		-0.05354728071453263 0.12927740495722587 0.00036412124635634225
		-5.4672071923378245e-15 0.13992890485071086 -2.4589705271971241e-15
		-5.4672071923378245e-15 0.12992052995079462 -0.053814843211854015
		-5.4672071923378245e-15 0.099436874005631226 -0.099436874005633655
		-5.4672071923378245e-15 0.053814843211851537 -0.12992052995079711
		-0.00095146874049077928 5.5879311802731202e-09 -0.13992562360074617
		-5.4672071923378245e-15 -0.053814843211851537 -0.12992052995079711
		-5.4672071923378245e-15 -0.099436874005631171 -0.099436874005633669
		-5.4672071923378245e-15 -0.12992052995079462 -0.053814843211854015
		-5.4672071923378245e-15 -0.13992890485071086 -6.6297305243313148e-09
		-5.4672071923378245e-15 -0.12992052995079462 0.053814843211849081
		-5.4672071923378245e-15 -0.099436874005631171 0.0994368740056287
		-5.4672071923378245e-15 -0.053814843211851517 0.12992052995079217
		-5.4672071923378245e-15 -1.1709383462843448e-17 0.13992562360074123
		-5.4672071923378245e-15 0.053814843211851524 0.12992052995079217
		-5.4672071923378245e-15 0.099436874005631171 0.099436874005628742
		-5.4672071923378245e-15 0.12992052995079462 0.053814843211849081
		-5.4672071923378245e-15 0.13992890646901199 -2.4765346023913892e-15
		-5.4672071923378245e-15 1.3208558053262172 -2.2013640910145682e-15
		-5.4672071923378245e-15 1.3208558053262172 -2.2013640910145682e-15
		;
	setAttr ".adot" yes;
createNode scaleConstraint -n "toe02_2_guide_ofs_scaleConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "D4A74164-4D09-241C-1D7C-A1B9E1942A0F";
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
	rename -uid "829D0537-4C88-C842-0079-84AA9C7AE6B1";
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
	rename -uid "A10F2294-4978-1E72-BF0A-DBBCCEEF25A5";
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ofs";
	rename -uid "41CE028D-4AAD-F430-6FB7-B19E132F4760";
createNode transform -n "toe01_3_guide_ofs" -p "toe01_2_guide";
	rename -uid "62956C48-4738-E557-BE8E-24B45E711B5E";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0658141036401503e-14 7 ;
createNode transform -n "toe01_3_guide" -p "toe01_3_guide_ofs";
	rename -uid "07791CFE-49A2-9766-DA7E-20A9E6B8F152";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe01_4_guide_ofs" -p "toe01_3_guide";
	rename -uid "285369EE-434F-F6D1-681C-98BF0D946FA1";
	setAttr ".t" -type "double3" -2.5579538487363607e-13 -4.9999999999999938 2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe01_4_guide" -p "toe01_4_guide_ofs";
	rename -uid "36DAC40F-4285-CA07-ED62-B68C7D57E9EB";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe01_5_guide_ofs" -p "toe01_4_guide";
	rename -uid "FFDB23A9-44A2-1332-26A5-B0967B130D8A";
	setAttr ".t" -type "double3" 0 4.4408920984955893e-16 2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe01_5_guide" -p "toe01_5_guide_ofs";
	rename -uid "C0F55889-44A8-FFB6-1199-9A8110291009";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe01_1_guide_ofs" -p "toe01_2_guide";
	rename -uid "DF497A4F-4B39-1986-5A02-FB8E3A5CCE16";
createNode transform -n "toe01_1_guide" -p "toe01_1_guide_ofs";
	rename -uid "531B5FB9-467F-9842-391B-BCA7EA451D18";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe01_1_guide_ofs_pointConstraint1" -p "toe01_1_guide_ofs";
	rename -uid "9B8EB1BC-4335-95D8-8727-D88DCD36EE6B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.0000000000000009 10.999999999999996 -4.3999999999999986 ;
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode scaleConstraint -n "toe01_2_guide_ofs_scaleConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "4A45F91E-4FFC-CCBB-C38D-088EEF952052";
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
createNode parentConstraint -n "toe01_2_guide_ofs_parentConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "75FA9E75-426B-05DD-97CB-F6AE860463C0";
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
	rename -uid "218EDA25-4C67-FC84-AB26-5E8B31F38DB7";
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ofs";
	rename -uid "055F2166-4EBA-FA02-8AF9-2B8125618554";
createNode transform -n "toe00_3_guide_ofs" -p "toe00_2_guide";
	rename -uid "97901D10-48AD-FFD5-FAE0-C08E16B8EEC0";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -6.2172489379008766e-15 7 ;
createNode transform -n "toe00_3_guide" -p "toe00_3_guide_ofs";
	rename -uid "B338CF4A-4558-72AC-CD52-478B914BFA03";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe00_4_guide_ofs" -p "toe00_3_guide";
	rename -uid "FF139647-469A-2EE7-EAA9-E5B8CE5B9ADC";
	setAttr ".t" -type "double3" -2.5934809855243657e-13 -4.9999999999999902 2.0000000000000142 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe00_4_guide" -p "toe00_4_guide_ofs";
	rename -uid "E56B63CC-4459-E226-A753-8EA87FF804E9";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe00_1_guide_ofs" -p "toe00_2_guide";
	rename -uid "5439B6AA-4442-5FC4-7EC5-01BC0D4F0801";
createNode transform -n "toe00_1_guide" -p "toe00_1_guide_ofs";
	rename -uid "13138FAF-4EAD-1F3E-30CD-3C9A4A1BDEC7";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "273E6B08-4B5A-BBD4-F853-59A642901BD3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10393642396063547 0.043051874569481244 0
		0.079549499204504714 0.079549499204504964 0
		0.043051874569481001 0.10393642396063572 0
		-2.4980018054066022e-16 0.11194049888059499 0
		-0.043051874569481494 0.10393642396063572 0
		-0.079549499204505214 0.079549499204504964 0
		-0.10393642396063597 0.043051874569481244 0
		-0.11194312388056896 -5.3037824469621759e-09 0
		-0.10393642396063597 -0.043051874569481244 0
		-0.079549499204505214 -0.079549499204504964 0
		-0.043051874569481494 -0.10393642396063572 0
		4.4703447054963707e-09 -0.11194049888059499 -0.00076117499238824991
		0.043051874569481001 -0.10393642396063572 0
		0.079549499204504714 -0.079549499204504964 0
		0.10393642396063547 -0.043051874569481244 0
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10342192396578051 0.00029129699708703004 -0.042837824571621753
		0.079155749208442261 0.00053825099461748981 -0.079154024208459739
		0.042838799571611748 0.00070325999296739995 -0.10341967396580326
		4.4703447054963707e-09 0.00076120499238794984 -0.11194064888059349
		-0.042838799571612241 0.00070325999296739995 -0.10341967396580326
		-0.079155749208442761 0.00053825099461748981 -0.079154024208459739
		-0.10342192396578101 0.00029129699708703004 -0.042837824571621753
		-0.11194312388056896 -5.3037824469621759e-09 0
		-0.10342192396578101 -0.00029130749708692499 0.042837674571623255
		-0.079155749208442761 -0.00053826149461738497 0.079153949208460472
		-0.042838799571612241 -0.000703270492967295 0.10341952396580475
		4.4703447054963707e-09 -0.00076121249238787498 0.11194049888059499
		0.042838799571611748 -0.000703270492967295 0.10341952396580475
		0.079155749208442261 -0.00053826149461738497 0.079153949208460472
		0.10342192396578051 -0.00029130749708692499 0.042837674571623255
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10342192396578051 0.00029129699708703004 -0.042837824571621753
		0.079155749208442261 0.00053825099461748981 -0.079154024208459739
		0.042838799571611748 0.00070325999296739995 -0.10341967396580326
		4.4703447054963707e-09 0.00076120499238794984 -0.11194064888059349
		4.4703447054963707e-09 0.043541024564589748 -0.10312829896871697
		4.4703447054963707e-09 0.079692149203078488 -0.078615749213842498
		4.4703447054963707e-09 0.10371082396289176 -0.042134549578654486
		-2.4980018054066022e-16 0.11194049888059499 0
		4.4703447054963707e-09 0.10312822396871775 0.043541024564589748
		4.4703447054963707e-09 0.078615674213843217 0.079692074203079249
		4.4703447054963707e-09 0.042134549578654486 0.10371082396289176
		4.4703447054963707e-09 -0.00076121249238787498 0.11194049888059499
		4.4703447054963707e-09 -0.043541024564589748 0.1031281489687185
		4.4703447054963707e-09 -0.079692149203078488 0.078615599213844006
		4.4703447054963707e-09 -0.10371082396289176 0.042134399578655987
		4.4703447054963707e-09 -0.11194049888059499 -0.00076117499238824991
		4.4703447054963707e-09 -0.10312822396871775 -0.043541174564588246
		4.4703447054963707e-09 -0.078615674213843217 -0.079692224203077727
		4.4703447054963707e-09 -0.042134549578654486 -0.10371097396289022
		4.4703447054963707e-09 0.00076120499238794984 -0.11194064888059349
		;
	setAttr ".adot" yes;
createNode pointConstraint -n "toe00_1_guide_ofs_pointConstraint1" -p "toe00_1_guide_ofs";
	rename -uid "6C064D5C-4F16-6AF1-94DA-0BBA00D2DEBF";
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
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 10.999999999999996 -4.3999999999999986 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "toe00_2_guide_ofs_parentConstraint1" -p "toe00_2_guide_ofs";
	rename -uid "F476781B-4D25-53C9-6842-E5BCD8842183";
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
	setAttr ".rst" -type "double3" -4.0000000000000009 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "toe00_2_guide_ofs_scaleConstraint1" -p "toe00_2_guide_ofs";
	rename -uid "D69DEC68-4A75-E032-1DBA-CBB11A2D9404";
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
createNode transform -n "toe03_2_guide_ofs" -p "toeMain_guide";
	rename -uid "F1F856A6-40A1-D9DD-30E9-FCA365CAD707";
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ofs";
	rename -uid "9086D6C8-493B-3E75-C60E-3C8F6757FAF6";
createNode transform -n "toe03_3_guide_ofs" -p "toe03_2_guide";
	rename -uid "4D4817EE-4921-A875-FC7F-F6867FC753EF";
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-15 7 ;
createNode transform -n "toe03_3_guide" -p "toe03_3_guide_ofs";
	rename -uid "2F955085-49A8-20D2-0151-F481153FFAA7";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe03_4_guide_ofs" -p "toe03_3_guide";
	rename -uid "8D447440-4904-A675-0958-65BEF3C22308";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 -4.9999999999999982 2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe03_4_guide" -p "toe03_4_guide_ofs";
	rename -uid "FFA798B3-4E9D-59EC-2EA9-38AB56A386E6";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe03_5_guide_ofs" -p "toe03_4_guide";
	rename -uid "694F7407-441F-6648-F98E-B08A42A25CA5";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.4408920985056709e-16 2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe03_5_guide" -p "toe03_5_guide_ofs";
	rename -uid "ACEF7A86-4979-3175-BADA-C4AA176C1D92";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe03_1_guide_ofs" -p "toe03_2_guide";
	rename -uid "FCD1CEEF-4E08-A80D-1080-1F8F9262DF0A";
createNode transform -n "toe03_1_guide" -p "toe03_1_guide_ofs";
	rename -uid "949EFD49-4D26-4102-110C-FF92D96A6524";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe03_1_guide_ofs_pointConstraint1" -p "toe03_1_guide_ofs";
	rename -uid "5E8E05C1-42FE-E6E8-AC35-3787E17B4546";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toeIn_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -2 10.999999999999996 -4.3999999999999986 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode scaleConstraint -n "toe03_2_guide_ofs_scaleConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "AC25D647-4F1B-4AC3-FC8A-E7B5340732AE";
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
createNode parentConstraint -n "toe03_2_guide_ofs_parentConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "D7E2CE71-403B-C186-587E-1BA632443452";
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
	rename -uid "B4B9420A-4019-F275-94D1-8C9A2580A0C7";
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ofs";
	rename -uid "BE192271-4CAD-4D2C-2744-F18FAF5F78B4";
createNode transform -n "toe04_3_guide_ofs" -p "toe04_2_guide";
	rename -uid "0B686FEF-4B2D-7E7F-E174-51AD6DC60B49";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 7 ;
createNode transform -n "toe04_3_guide" -p "toe04_3_guide_ofs";
	rename -uid "E827C2C8-4270-2C53-5E62-E398D014D8EC";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe04_4_guide_ofs" -p "toe04_3_guide";
	rename -uid "BAC34609-4566-4962-DBD4-DCB0ECBF9592";
	setAttr ".t" -type "double3" -2.5224267119483557e-13 -4.9999999999999947 2 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "toe04_4_guide" -p "toe04_4_guide_ofs";
	rename -uid "90F76AD1-47B8-F698-B4EF-58A3CD9D9BF0";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe04_5_guide_ofs" -p "toe04_4_guide";
	rename -uid "C9FACF6E-49F2-44A7-206F-30BC5586D94A";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 4.440892098505667e-16 2 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "toe04_5_guide" -p "toe04_5_guide_ofs";
	rename -uid "3C890558-45A2-A042-BE5B-99B5DCE421BE";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe04_1_guide_ofs" -p "toe04_2_guide";
	rename -uid "668A5F82-4B11-AE5A-6ADE-E7A4687233BE";
createNode transform -n "toe04_1_guide" -p "toe04_1_guide_ofs";
	rename -uid "7B986E76-4074-7CE4-5DCD-19A5D2EEEAC6";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "2AB9DFA7-4F9B-3B3C-7A9B-8C800247AB0C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10393642396063547 0.043051874569481244 0
		0.079549499204504714 0.079549499204504964 0
		0.043051874569481001 0.10393642396063572 0
		-2.4980018054066022e-16 0.11194049888059499 0
		-0.043051874569481494 0.10393642396063572 0
		-0.079549499204505214 0.079549499204504964 0
		-0.10393642396063597 0.043051874569481244 0
		-0.11194312388056896 -5.3037824469621759e-09 0
		-0.10393642396063597 -0.043051874569481244 0
		-0.079549499204505214 -0.079549499204504964 0
		-0.043051874569481494 -0.10393642396063572 0
		4.4703447054963707e-09 -0.11194049888059499 -0.00076117499238824991
		0.043051874569481001 -0.10393642396063572 0
		0.079549499204504714 -0.079549499204504964 0
		0.10393642396063547 -0.043051874569481244 0
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10342192396578051 0.00029129699708703004 -0.042837824571621753
		0.079155749208442261 0.00053825099461748981 -0.079154024208459739
		0.042838799571611748 0.00070325999296739995 -0.10341967396580326
		4.4703447054963707e-09 0.00076120499238794984 -0.11194064888059349
		-0.042838799571612241 0.00070325999296739995 -0.10341967396580326
		-0.079155749208442761 0.00053825099461748981 -0.079154024208459739
		-0.10342192396578101 0.00029129699708703004 -0.042837824571621753
		-0.11194312388056896 -5.3037824469621759e-09 0
		-0.10342192396578101 -0.00029130749708692499 0.042837674571623255
		-0.079155749208442761 -0.00053826149461738497 0.079153949208460472
		-0.042838799571612241 -0.000703270492967295 0.10341952396580475
		4.4703447054963707e-09 -0.00076121249238787498 0.11194049888059499
		0.042838799571611748 -0.000703270492967295 0.10341952396580475
		0.079155749208442261 -0.00053826149461738497 0.079153949208460472
		0.10342192396578051 -0.00029130749708692499 0.042837674571623255
		0.11194312388056846 -1.3866695599588098e-32 0
		0.10342192396578051 0.00029129699708703004 -0.042837824571621753
		0.079155749208442261 0.00053825099461748981 -0.079154024208459739
		0.042838799571611748 0.00070325999296739995 -0.10341967396580326
		4.4703447054963707e-09 0.00076120499238794984 -0.11194064888059349
		4.4703447054963707e-09 0.043541024564589748 -0.10312829896871697
		4.4703447054963707e-09 0.079692149203078488 -0.078615749213842498
		4.4703447054963707e-09 0.10371082396289176 -0.042134549578654486
		-2.4980018054066022e-16 0.11194049888059499 0
		4.4703447054963707e-09 0.10312822396871775 0.043541024564589748
		4.4703447054963707e-09 0.078615674213843217 0.079692074203079249
		4.4703447054963707e-09 0.042134549578654486 0.10371082396289176
		4.4703447054963707e-09 -0.00076121249238787498 0.11194049888059499
		4.4703447054963707e-09 -0.043541024564589748 0.1031281489687185
		4.4703447054963707e-09 -0.079692149203078488 0.078615599213844006
		4.4703447054963707e-09 -0.10371082396289176 0.042134399578655987
		4.4703447054963707e-09 -0.11194049888059499 -0.00076117499238824991
		4.4703447054963707e-09 -0.10312822396871775 -0.043541174564588246
		4.4703447054963707e-09 -0.078615674213843217 -0.079692224203077727
		4.4703447054963707e-09 -0.042134549578654486 -0.10371097396289022
		4.4703447054963707e-09 0.00076120499238794984 -0.11194064888059349
		;
	setAttr ".adot" yes;
createNode pointConstraint -n "toe04_1_guide_ofs_pointConstraint1" -p "toe04_1_guide_ofs";
	rename -uid "12C97EA1-41D3-32B9-2344-CE93CD3BB215";
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
	setAttr ".rst" -type "double3" 0 10.999999999999996 -4.3999999999999986 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "toe04_2_guide_ofs_parentConstraint1" -p "toe04_2_guide_ofs";
	rename -uid "43DB7042-4161-F29D-5B16-B9B7624F6721";
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
createNode scaleConstraint -n "toe04_2_guide_ofs_scaleConstraint1" -p "toe04_2_guide_ofs";
	rename -uid "6BF17E1C-4B8D-63A8-8EF0-229BF46B0A77";
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
createNode transform -n "toeOut_guide_ofs" -p "toeMain_guide";
	rename -uid "1889AA03-4795-35DC-3A44-95B542F9E033";
	setAttr ".t" -type "double3" -4.0000000000000009 0 0 ;
createNode transform -n "toeIn_guide" -p "toeOut_guide_ofs";
	rename -uid "9C77DACB-45E6-07AF-B39D-C28E7E802A85";
createNode transform -n "toeIn_guide_ofs1" -p "toeIn_guide";
	rename -uid "D3BCA584-4704-5C4F-B80C-688FF544162C";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 10.999999999999996 -4.3999999999999986 ;
createNode transform -n "toeIn2_guide" -p "toeIn_guide_ofs1";
	rename -uid "4B421519-44D9-2C82-6D06-5DA3634E3866";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "cubeShape1" -p "toeIn2_guide";
	rename -uid "611AEAE7-4A5C-8E6D-691F-6BBE71D729A7";
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
	rename -uid "3B88842E-41AB-DA1C-06B2-48970D3105DB";
	setAttr ".t" -type "double3" 4 0 0 ;
createNode transform -n "toeOut_guide" -p "toeIn_guide_ofs";
	rename -uid "CBABD885-4ECE-74CB-3998-38BB21841266";
createNode transform -n "toeOut2_guide_ofs" -p "toeOut_guide";
	rename -uid "8EEC3B04-4D9F-0791-B172-D081663D13B3";
	setAttr ".t" -type "double3" 0 10.999999999999996 -4.3999999999999986 ;
createNode transform -n "toeOut2_guide" -p "toeOut2_guide_ofs";
	rename -uid "55DDE445-490E-B1B2-BC11-928CE50D8D6F";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "364440FF-4F2C-4A41-21F1-41AE2CA57C86";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-4.3508194350300538e-32 94 18
		-4.3688268593499731e-33 85 6
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-4.3688268593499731e-33 85 6
		2.0361300487416215e-15 52.5 15.5
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
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		2.0361300487416215e-15 52.5 15.5
		-2.4651903288156615e-31 20 -1
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		2.0361300487416215e-15 52.5 15.5
		-1.4864592638470562e-14 52.500000000000007 47.5
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "A3F92E23-4077-4BD4-593E-1A98CB8266D6";
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
createNode nurbsCurve -n "curveShape36" -p "line_04";
	rename -uid "3BD54215-40C8-761A-B1CE-CE87243F1390";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-2.4651903288156615e-31 20 -1
		-9.3321731041671715e-09 5.0000000000000053 5.0000002714842937
		;
	setAttr ".adot" yes;
createNode transform -n "line_28" -p "line_grp";
	rename -uid "5B7E743D-45FC-ED4C-A677-C7889D0A3FBF";
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
createNode nurbsCurve -n "curveShape56" -p "line_28";
	rename -uid "3CE1BC55-4936-74D1-6C57-E7A11A0413CC";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-1.6289226076098935e-13 5 12
		-9.3321731041671715e-09 5.0000000000000053 5.0000002714842937
		;
	setAttr ".adot" yes;
createNode transform -n "line_29" -p "line_grp";
	rename -uid "DFDEF951-4738-E350-047F-129053FA4B51";
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
createNode nurbsCurve -n "curveShape57" -p "line_29";
	rename -uid "39486746-4CC9-7713-80E6-3C98E11394FB";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-1.6289226076098935e-13 5 12
		-2.5751698834672243e-13 -3.5796099471722455e-29 14
		;
createNode transform -n "line_grp2" -p "module_grp";
	rename -uid "C6D2372E-4F2C-CB38-C731-FB8C453EE772";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "toe_line_grp1" -p "line_grp2";
	rename -uid "E2514501-45BC-3589-D1A4-17AA613BB34D";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_25" -p "toe_line_grp1";
	rename -uid "6310EC8D-4E1C-EA40-EC12-53ADAD998AA0";
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
createNode nurbsCurve -n "curveShape53" -p "line_25";
	rename -uid "BF20E131-41CF-B399-5001-0EA17FE335C8";
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
		-4.0000000000000018 16 0.60000000000000142
		-4.0000000000000009 5.0000000000000044 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "toe_line_grp1";
	rename -uid "559989A8-4736-41CA-3689-0D8348766A84";
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
createNode nurbsCurve -n "curveShape54" -p "line_26";
	rename -uid "A47067D5-494F-3838-BA18-F6AE1D2B3443";
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
		-4.0000000000000009 5.0000000000000044 5
		-3.9999999999999956 4.9999999999999982 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "toe_line_grp1";
	rename -uid "C764B9C5-4112-91A4-7ECB-8CB6D2E022AA";
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
createNode nurbsCurve -n "curveShape55" -p "line_27";
	rename -uid "2B5F3F4D-4E09-3BDA-BC1C-5A9DA4F9B09D";
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
		-3.9999999999999956 4.9999999999999982 12
		-4.0000000000002549 8.8817841970012523e-15 14.000000000000014
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp2" -p "line_grp2";
	rename -uid "15C79104-4DAB-662C-DA6C-E983960E5BF4";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_21" -p "toe_line_grp2";
	rename -uid "B6E5FD31-46B6-3AE0-5F3E-CEABE46E67CB";
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
createNode nurbsCurve -n "curveShape49" -p "line_21";
	rename -uid "7C84C6B6-456A-081B-1E55-F9ACDEBF37D6";
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
		-2.0000000000000013 16 0.60000000000000142
		-2.0000000000000009 5.0000000000000044 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "toe_line_grp2";
	rename -uid "2D99B8F1-4AF1-2104-545E-F28044FB1DBC";
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
createNode nurbsCurve -n "curveShape50" -p "line_22";
	rename -uid "DE4FFABD-452A-01B0-5C5A-3E8F94BCD21D";
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
		-2.0000000000000009 5.0000000000000044 5
		-2 4.9999999999999938 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "toe_line_grp2";
	rename -uid "B7321771-4E5B-9B8C-3122-E5BE8C5E886E";
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
createNode nurbsCurve -n "curveShape51" -p "line_23";
	rename -uid "21A280FC-4C3B-10E7-D35F-54A9A9C77A7A";
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
		-2 4.9999999999999938 12
		-2.0000000000002558 8.8817841970012523e-16 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "toe_line_grp2";
	rename -uid "B9F2D981-47F3-B27A-713A-01AE3A713B23";
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
createNode nurbsCurve -n "curveShape52" -p "line_24";
	rename -uid "9BDA9210-4E4D-46E7-B7BA-12AB6E7D69A4";
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
		-2.0000000000002558 8.8817841970012523e-16 14
		-2.0000000000002558 1.3322676295496842e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp3" -p "line_grp2";
	rename -uid "D0D81A9F-4E9E-1A72-6D5F-498F5FA72A4D";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_17" -p "toe_line_grp3";
	rename -uid "61CB7845-40DC-EC5E-0639-239651D586E5";
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
createNode nurbsCurve -n "curveShape45" -p "line_17";
	rename -uid "DDAAC770-4BFF-E780-B89F-4B9650D69567";
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
		-8.8817841970012523e-16 16 0.60000000000000142
		-4.4408920985006262e-16 5.0000000000000044 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "toe_line_grp3";
	rename -uid "62B16DD1-4C1B-0232-791D-E98DF5C673CE";
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
createNode nurbsCurve -n "curveShape46" -p "line_18";
	rename -uid "86292982-46CE-B340-A692-BC909F7E56BF";
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
		-4.4408920985006262e-16 5.0000000000000044 5
		1.3322676295501878e-15 4.9999999999999973 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "toe_line_grp3";
	rename -uid "533F5FF9-45C8-7389-CCB4-2CBA219990BD";
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
createNode nurbsCurve -n "curveShape47" -p "line_19";
	rename -uid "8F67992F-4261-0D29-394B-F2A89B54C507";
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
		1.3322676295501878e-15 4.9999999999999973 12
		-2.5979218776228658e-13 -8.8817841970012523e-16 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "toe_line_grp3";
	rename -uid "8E251FD5-44D9-341E-32C6-C3A44CB59C68";
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
createNode nurbsCurve -n "curveShape48" -p "line_20";
	rename -uid "B1DBA3A3-41BF-0B2C-6BD4-63BF070A5BAE";
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
		-2.5979218776228658e-13 -8.8817841970012523e-16 14
		-2.5979218776228658e-13 -4.4408920985006252e-16 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp4" -p "line_grp2";
	rename -uid "CEE518CC-4DED-AABA-8530-B783AA0D094E";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_13" -p "toe_line_grp4";
	rename -uid "5FC428A2-46FB-3FF7-3030-8A85B9DBF2E1";
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
createNode nurbsCurve -n "curveShape41" -p "line_13";
	rename -uid "5E473EE9-407F-D260-3749-3ABAEF3F4E4E";
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
		1.9999999999999996 16 0.60000000000000142
		1.9999999999999998 5.0000000000000044 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "toe_line_grp4";
	rename -uid "BD72290A-4BD9-81A7-1218-369982ADA8AD";
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
createNode nurbsCurve -n "curveShape42" -p "line_14";
	rename -uid "8BA7E558-4E64-E3EA-993B-5FA47707FFFE";
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
		1.9999999999999998 5.0000000000000044 5
		1.9999999999999998 5 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "toe_line_grp4";
	rename -uid "F8E8C7DD-4637-5091-3820-6B8D4D7C65FE";
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
createNode nurbsCurve -n "curveShape43" -p "line_15";
	rename -uid "60201DF9-4A31-EEB1-1949-FEA52C7C4D99";
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
		1.9999999999999998 5 12
		1.9999999999997387 2.6645352591003757e-15 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "toe_line_grp4";
	rename -uid "A4BE8B2D-4CF0-6D67-5F04-C99091157700";
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
createNode nurbsCurve -n "curveShape44" -p "line_16";
	rename -uid "45CACB24-4DDF-C1D2-DA39-CF88B92F94BB";
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
		1.9999999999997387 2.6645352591003757e-15 14
		1.9999999999997369 3.1086244689509428e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "toe_line_grp5" -p "line_grp2";
	rename -uid "B0E558FB-4F8A-F87B-B0D4-3ABF42CA0937";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "line_09" -p "toe_line_grp5";
	rename -uid "BA424889-4A4A-402B-5B2B-ECAAF9FEE474";
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
createNode nurbsCurve -n "curveShape37" -p "line_09";
	rename -uid "93D0C862-4F14-3528-DC2C-20BAEE9E855D";
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
		4 16 0.60000000000000142
		4 5.0000000000000044 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "toe_line_grp5";
	rename -uid "7FF50056-465B-6042-FFB4-56B10C85A948";
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
createNode nurbsCurve -n "curveShape38" -p "line_10";
	rename -uid "6293D962-4069-EDED-568D-409EF280AF93";
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
		4 5.0000000000000044 5
		4 4.9999999999999991 12
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "toe_line_grp5";
	rename -uid "257CA387-4E3B-DCB0-AFA1-B2BDE53035D3";
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
createNode nurbsCurve -n "curveShape39" -p "line_11";
	rename -uid "720C635B-4FBE-EA59-8525-3EA2BE0456E0";
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
		4 4.9999999999999991 12
		3.9999999999997478 5.3290705182007514e-15 14
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "toe_line_grp5";
	rename -uid "7A22FC89-43CE-9727-7F35-F3B2994B6A23";
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
createNode nurbsCurve -n "curveShape40" -p "line_12";
	rename -uid "26DDE688-499F-9D07-9B2E-F6804E9A757A";
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
		3.9999999999997478 5.3290705182007514e-15 14
		3.9999999999997424 5.7731597280513181e-15 16
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp3" -p "module_grp";
	rename -uid "44F7064C-43EF-54EF-6928-7493A8C4DC1E";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 21;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
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
		5.0000000000000018 48.041666153709095 13.236538201113847
		4.9999999999999991 20 -0.99999999999999856
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
		-5 20 -1.0000000000000007
		-4.9999999999999982 48.041666153709095 13.236538201113849
		;
	setAttr ".adot" yes;
createNode transform -n "fgrRef_grp" -p "module_grp";
	rename -uid "CE114921-4995-F463-E731-F5A4C2FB39B0";
createNode transform -n "null1" -p "fgrRef_grp";
	rename -uid "4C27CA3F-43F1-DCA0-6B02-D7B638A14B87";
	setAttr ".t" -type "double3" 5.9999999999999991 5.0000000000000044 -45 ;
createNode transform -n "fgrRef1" -p "null1";
	rename -uid "E2F3F8E3-4A9D-4C54-15F0-3794B6C443C5";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000009 0.92847669088525941 -0.37139067635410361 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef1_poiCst" -p "fgrRef1";
	rename -uid "80511FEA-45BE-C45D-B901-3BA589705E95";
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
	setAttr ".rst" -type "double3" 6.9999999999999982 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef1_aimCst" -p "fgrRef1";
	rename -uid "DCF157B2-47AD-79A7-0072-F7B12C19C27A";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 89.999999999999972 -21.801409486351812 -89.999999999999986 ;
	setAttr -k on ".w0";
createNode mesh -n "fgrRefShape" -p "fgrRef1";
	rename -uid "24C51FD3-4E24-2314-2008-7DB914F56E4A";
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
	setAttr -s 16 ".pt[0:15]" -type "float3"  -1 0 0 -1 0 0 -1 0 0 -1 0 
		0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "fgrRef2" -p "null1";
	rename -uid "AAB51EF5-43D3-01A4-1E57-778463DE0E83";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999889 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef2_poiCst" -p "fgrRef2";
	rename -uid "5AE2F06C-401B-9004-2D63-29B7FBEADEB1";
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
	setAttr ".rst" -type "double3" 6.9999999999999991 5.0000000000000044 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef2_aimCst" -p "fgrRef2";
	rename -uid "F95A7600-4150-BCB6-D4A5-A7AB4D451D22";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -5.088887490341623e-14 -89.999999999999929 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef3" -p "null1";
	rename -uid "327A8DB5-42B3-7551-87D1-FABCCA635E0A";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000486 0.92847669088525853 -0.37139067635410655 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef3_poiCst" -p "fgrRef3";
	rename -uid "A3E34B99-4613-E445-6E37-EB9C486C1138";
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
	setAttr ".rst" -type "double3" 7.0000000000000044 4.9999999999999982 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef3_aimCst" -p "fgrRef3";
	rename -uid "195BD38D-4525-E197-81AF-BABD6F2462A1";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000008001 -21.801409486351993 -90.00000000000297 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null1_scaleConstraint1" -p "null1";
	rename -uid "3386965B-4B84-E222-B8A7-5E821266F104";
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
	rename -uid "21F8F3D5-4C4F-4E3E-09C3-45B74FF5819C";
	setAttr ".t" -type "double3" 8 5.0000000000000044 -45 ;
createNode transform -n "fgrRef4" -p "null2";
	rename -uid "96D07E81-4A7C-7203-AC02-83A3378CB2DD";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000009 0.92847669088525941 -0.37139067635410361 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef4_poiCst" -p "fgrRef4";
	rename -uid "04343F2B-426F-BDCB-568F-D6BF412405E1";
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
	setAttr ".rst" -type "double3" 8.9999999999999982 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef4_aimCst" -p "fgrRef4";
	rename -uid "C445A942-4980-3AFE-D7B5-3C9390170F2B";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 89.999999999999972 -21.801409486351812 -89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef5" -p "null2";
	rename -uid "44DF9D38-41AE-7751-C846-80BF7A252185";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999867 0 -1.0000000000000002 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef5_poiCst" -p "fgrRef5";
	rename -uid "ECFACA8E-4073-2A31-6577-D1BB5BAC7AF1";
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
	setAttr ".rst" -type "double3" 9 5.0000000000000044 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef5_aimCst" -p "fgrRef5";
	rename -uid "EA8DEF30-4AE7-4C5A-0161-A0B416577538";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -8.7238071262999299e-14 -89.999999999999915 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef6" -p "null2";
	rename -uid "D88FD065-4BBF-3F14-082B-4592521C5A80";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000469 0.92847669088525886 -0.371390676354104 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef6_poiCst" -p "fgrRef6";
	rename -uid "3E278347-456E-7F35-E2AB-DC996499E15B";
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
	setAttr ".rst" -type "double3" 9 4.9999999999999938 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef6_aimCst" -p "fgrRef6";
	rename -uid "09F7AD8E-426E-48C5-216B-B08DACC45CD7";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000007887 -21.801409486351844 -90.000000000002927 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef7" -p "null2";
	rename -uid "42C06478-41A3-6FDE-0332-048FD0B7284A";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" -1.0000000000000002 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000004 0 -1.0000000000000004 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" -2.2204460492503141e-16 0 0 ;
createNode pointConstraint -n "fgrRef7_poiCst" -p "fgrRef7";
	rename -uid "CB20AAFD-403F-7A29-F5D8-6FA1EAD082EA";
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
	setAttr ".rst" -type "double3" 8.9999999999997442 8.8817841970012523e-16 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef7_aimCst" -p "fgrRef7";
	rename -uid "F2F0C8D0-453C-0DF3-D7BA-6CBEEB4054BF";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.2722218725839636e-14 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null2_scaleConstraint1" -p "null2";
	rename -uid "70236F6C-4AC4-95A4-617D-A993EFA93E29";
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
	rename -uid "14347220-483A-F1AA-1952-40A6059F2B0C";
	setAttr ".t" -type "double3" 10 5.0000000000000044 -45 ;
createNode transform -n "fgrRef8" -p "null3";
	rename -uid "7CDC236E-454C-9788-7137-FBBF81ED1CC3";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 0.92847669088525886 -0.37139067635410361 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef8_poiCst" -p "fgrRef8";
	rename -uid "06F37792-435B-10D0-3C21-C5A1F6D3FADC";
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
	setAttr ".rst" -type "double3" 11 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef8_aimCst" -p "fgrRef8";
	rename -uid "CBC84BAA-427E-3DAB-45E5-ED852B59A23B";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90 -21.801409486351812 -90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef9" -p "null3";
	rename -uid "ADE040D6-4607-C628-58A1-D9B40E356C8C";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef9_poiCst" -p "fgrRef9";
	rename -uid "A0634638-4456-9180-0085-198B93B5F7B4";
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
	setAttr ".rst" -type "double3" 11 5.0000000000000044 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef9_aimCst" -p "fgrRef9";
	rename -uid "7F603542-4A35-6F81-BBD8-678559D4B751";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -5.8158714175332862e-14 -89.999999999999943 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef10" -p "null3";
	rename -uid "10928842-4A3C-9BC4-6516-C4A728692962";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000482 0.92847669088525864 -0.37139067635410378 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef10_poiCst" -p "fgrRef10";
	rename -uid "D0D60C9A-4F21-988B-AFA0-05BB25E6581C";
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
	setAttr ".rst" -type "double3" 11.000000000000002 4.9999999999999973 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef10_aimCst" -p "fgrRef10";
	rename -uid "F098A931-4690-9BD3-7580-CEB11DFB82D8";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000008072 -21.801409486351808 -90.000000000002984 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef11" -p "null3";
	rename -uid "1779DC12-4FF9-FDD6-439E-6C84C4BDCC49";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" -1.0000000000000002 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000004 0 -1.0000000000000004 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" -2.2204460492503141e-16 0 0 ;
createNode pointConstraint -n "fgrRef11_poiCst" -p "fgrRef11";
	rename -uid "948CB858-46F2-5A64-C6C4-6E9E523BFF05";
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
	setAttr ".rst" -type "double3" 10.999999999999741 -8.8817841970012523e-16 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef11_aimCst" -p "fgrRef11";
	rename -uid "9BBED8EA-4239-643A-95DA-D7BC4C82B2B4";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null3_scaleConstraint1" -p "null3";
	rename -uid "B3A3DF2A-4C96-8674-3499-F69F9496282E";
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
	rename -uid "10817EB3-4527-A46E-C276-91AF689193D2";
	setAttr ".t" -type "double3" 12 5.0000000000000044 -45 ;
createNode transform -n "fgrRef12" -p "null4";
	rename -uid "BF93EE26-45A9-3DD5-A764-C19BA39A1027";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 0.92847669088525886 -0.37139067635410361 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef12_poiCst" -p "fgrRef12";
	rename -uid "A1CB67EA-4CE2-8057-4454-2D8D17442FF3";
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
	setAttr ".rst" -type "double3" 13 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef12_aimCst" -p "fgrRef12";
	rename -uid "A8C28892-4987-2A57-AFEC-FDB575C77176";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90 -21.801409486351812 -90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef13" -p "null4";
	rename -uid "18F25A9A-4225-6043-5EA3-6BBFDF9E27F9";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef13_poiCst" -p "fgrRef13";
	rename -uid "E9DB80DF-4412-3C94-7652-5987F3A35048";
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
	setAttr ".rst" -type "double3" 13 5.0000000000000044 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef13_aimCst" -p "fgrRef13";
	rename -uid "112FD5B1-420A-A4F1-1395-99B447C22066";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -3.6349196359583037e-14 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef14" -p "null4";
	rename -uid "6E80CD99-44B9-80EE-A2A7-A290FB4B71BD";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999978 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000482 0.92847669088525897 -0.37139067635410372 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 2.2204460492503121e-16 0 0 ;
createNode pointConstraint -n "fgrRef14_poiCst" -p "fgrRef14";
	rename -uid "53D0F442-43C8-772A-6A6F-2B8C5DD33C36";
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
	setAttr ".rst" -type "double3" 13 5 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef14_aimCst" -p "fgrRef14";
	rename -uid "5273B989-4A3D-1B54-B9E9-31AC0E9C5722";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000008072 -21.801409486351819 -90.000000000002998 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef15" -p "null4";
	rename -uid "D6719E7D-42B6-818C-1728-76BF704B9E0D";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef15_poiCst" -p "fgrRef15";
	rename -uid "3D833CFB-42A4-3E09-AFCF-3FBF423E9F60";
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
	setAttr ".rst" -type "double3" 12.999999999999739 2.6645352591003757e-15 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef15_aimCst" -p "fgrRef15";
	rename -uid "493CC422-4295-B29C-CD85-719C656CCE47";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.2722218725868528e-14 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null4_scaleConstraint1" -p "null4";
	rename -uid "54B8B61C-4409-4B06-2049-EC92B9CD321D";
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
	rename -uid "438A972A-4973-366F-C488-DBA26020F1C2";
	setAttr ".t" -type "double3" 14 5.0000000000000044 -45 ;
createNode transform -n "fgrRef16" -p "null5";
	rename -uid "74B63E94-44BA-CA7E-B8C4-28B33EDD188A";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999967 0.92847669088525886 -0.37139067635410361 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef16_poiCst" -p "fgrRef16";
	rename -uid "E96A6E9F-4130-B57C-995F-E488944A2CD7";
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
	setAttr ".rst" -type "double3" 15 16 -49.4 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef16_aimCst" -p "fgrRef16";
	rename -uid "76D640A0-45BE-8FCD-4DAB-61A4DF293C3E";
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
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90 -21.801409486351812 -90 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef17" -p "null5";
	rename -uid "2D2D18D0-4397-DE3E-7349-9F819488AED0";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef17_poiCst" -p "fgrRef17";
	rename -uid "4D9EBAE2-44BF-B263-3A0A-97A8F13D7627";
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
	setAttr ".rst" -type "double3" 15 5.0000000000000044 -45 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef17_aimCst" -p "fgrRef17";
	rename -uid "C5324832-4B05-CA3F-EDE5-7A91ABE7EB6E";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -4.361903563149965e-14 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef18" -p "null5";
	rename -uid "109C523F-4BF5-5D05-9667-B4B7785CED78";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -0.99999999999999967 0 0 ;
	setAttr ".rpt" -type "double3" 1.0000000000000473 0.92847669088525908 -0.37139067635410389 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" 3.3306690738754691e-16 0 0 ;
createNode pointConstraint -n "fgrRef18_poiCst" -p "fgrRef18";
	rename -uid "F07E6967-4320-B32A-5151-1AA4B2A56B12";
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
	setAttr ".rst" -type "double3" 15 4.9999999999999991 -38 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef18_aimCst" -p "fgrRef18";
	rename -uid "4F0490EC-4A48-41D9-F80F-B2A935F8E58E";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000007788 -21.801409486351844 -90.000000000002899 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef19" -p "null5";
	rename -uid "243849A1-4EBF-5F92-1E62-B6A093C66550";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999734 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef19_poiCst" -p "fgrRef19";
	rename -uid "D8EC6AAC-4B2A-CE49-E867-CA9AE3A05565";
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
	setAttr ".rst" -type "double3" 14.999999999999748 5.3290705182007514e-15 -36 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef19_aimCst" -p "fgrRef19";
	rename -uid "95E77A73-47D8-8C0B-D4B1-C3A2A5EECE56";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.2722218725868541e-14 -89.999999999999844 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null5_scaleConstraint1" -p "null5";
	rename -uid "206A18F9-44AC-DAF4-3B46-959748D3CE3D";
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
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 94.877609416534412 65.706613261777107 97.899145200857916 ;
	setAttr ".r" -type "double3" -8.1383527296761962 -311.39999999782361 6.0118282469572128e-16 ;
	setAttr ".rp" -type "double3" 9.0523144535836764e-12 -9.5923269327613525e-13 -1.4551915228366852e-11 ;
	setAttr ".rpt" -type "double3" -9.0526132061662243e-12 -3.9591234438924834e-12 -1.892917819089332e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 133.07104457537673;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.8817841970012523e-15 1.4791141972893971e-31 8.3707381346364915 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C26C709E-427B-9FAF-006E-479957AA5F62";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.3279848667366 -0.50203763068761464 ;
	setAttr ".r" -type "double3" -90 0 0 ;
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
	setAttr ".t" -type "double3" 9.614533088038403 78.636151760694489 1001.2379841584632 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EBE1F472-4B19-95B5-7032-02B7F660A422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 980.71246892753982;
	setAttr ".ow" 113.13365463429015;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -8.8817841970012523e-15 47.19901233134307 20.52551523092335 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "998302DF-4A25-D2FE-09B0-24A5C61EAE93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1004.5203517867659 5.2628564541636784 13.71586294504843 ;
	setAttr ".r" -type "double3" 0 90 0 ;
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
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "ball_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|radius_guide_ZRO|radius_guide|ulnaEnd_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|radius_guide_ZRO|radius_guide|ulnaEnd_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|radius_guide_ZRO|radius_guide|ulnaEnd_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe00_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|toe02_3_guide_ofs|toe02_3_guide|toe02_4_guide_ofs|toe02_4_guide|toe02_5_guide_ofs|toe02_5_guide|toe02_1_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe00_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toe02_2_guide_ofs|toe02_2_guide|dotLineShape1" "toe04_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toeOut_guide_ofs|toeIn_guide|toeIn_guide_ofs1|toeIn2_guide|cubeShape1" "toeIn_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toeOut_guide_ofs|toeIn_guide|toeIn_guide_ofs1|toeIn2_guide|cubeShape1" "toeOut2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_2_guide_ofs|toeMain_guide|toeOut_guide_ofs|toeIn_guide|toeIn_guide_ofs1|toeIn2_guide|cubeShape1" "toeOut_guide" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef2" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef3" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef4" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef5" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef6" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef7" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef8" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef9" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef10" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef11" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef12" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef13" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef14" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef15" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef16" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef17" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef18" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef19" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9E40DAE5-406F-D2BE-0863-48AECA9916F9";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E3DC1093-4E8C-168D-7BED-14B7B3DBB730";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4220BE51-489B-B4F1-3CB7-4C912D388D06";
createNode displayLayerManager -n "layerManager";
	rename -uid "37503F34-40C0-103A-AD98-519CF0C85B56";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "27D12FED-46A7-2F2C-BE5A-B7BDEAB78DE6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "47ABDCF5-4400-C307-437A-E4AF35DAB19B";
	setAttr ".g" yes;
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
createNode decomposeMatrix -n "DCM_1";
	rename -uid "950BD334-4606-8DA6-90E8-75BC5C827661";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "20326255-419E-02F5-82FA-429D556532B4";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "10C86382-4B89-EAF5-1BA8-588A5322F8BB";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "FBFE1AC0-4A05-15A8-0AA8-2EA7EE24B403";
createNode decomposeMatrix -n "DCM_7";
	rename -uid "B81E8A19-431A-64B3-DEC5-C58C468AD23B";
createNode decomposeMatrix -n "DCM_8";
	rename -uid "26F3A6AB-4464-0ACB-D3B7-ECBEB022ACDF";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "75B1242A-47F3-4971-84DE-5986B4C4DB01";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "B6D3AE75-4F48-E8FE-B631-2EB17DC85E83";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "E5D64B72-4E33-A90A-0271-9F871F6E0F16";
createNode decomposeMatrix -n "DCM_73";
	rename -uid "0B19D4B0-4AA7-7579-A926-F6B18C1E1F14";
createNode decomposeMatrix -n "DCM_74";
	rename -uid "9A0B9A34-402C-A1CA-7913-8B9569F2B7FD";
createNode decomposeMatrix -n "DCM_75";
	rename -uid "F54647F8-4085-1791-C0AE-4BABFE41AFEF";
createNode decomposeMatrix -n "DCM_76";
	rename -uid "6C2C2D47-4906-1150-08DB-07846E9A083F";
createNode decomposeMatrix -n "DCM_77";
	rename -uid "B440083D-4427-5100-4C28-0CBFCED67C4C";
createNode decomposeMatrix -n "DCM_78";
	rename -uid "BE695A00-4F91-765E-F003-B1B532F4CE8D";
createNode decomposeMatrix -n "DCM_79";
	rename -uid "223C9DBC-42D6-1EBA-FE62-69AA774A84B6";
createNode decomposeMatrix -n "DCM_80";
	rename -uid "8C362432-4972-6502-42DB-DF80DC25B07E";
createNode decomposeMatrix -n "DCM_81";
	rename -uid "D2036E73-44C9-A99D-5030-BD9C65131F28";
createNode decomposeMatrix -n "DCM_82";
	rename -uid "D916C385-4780-298F-0AC8-2BBA635DCC7E";
createNode decomposeMatrix -n "DCM_83";
	rename -uid "D97E69BE-418A-8645-C373-159B3F9DA0D8";
createNode decomposeMatrix -n "DCM_84";
	rename -uid "B15B30AB-423F-99C5-3983-8590B1781CA4";
createNode decomposeMatrix -n "DCM_85";
	rename -uid "AE9C13A6-4DD2-49B8-7F8A-AEB71AF17EC4";
createNode decomposeMatrix -n "DCM_86";
	rename -uid "1F129AA5-47F7-3210-8929-2A962B722E2B";
createNode decomposeMatrix -n "DCM_87";
	rename -uid "EEBFEAD5-4180-6510-0A44-3996B0011B2C";
createNode decomposeMatrix -n "DCM_88";
	rename -uid "1DAB772C-49BD-9716-CA55-E5B33F442F3D";
createNode decomposeMatrix -n "DCM_89";
	rename -uid "AF9D6E85-4C1A-775C-B2F9-4F938566EB1F";
createNode decomposeMatrix -n "DCM_90";
	rename -uid "18BA9373-4139-5C9D-0D43-9DBDE51CE55F";
createNode decomposeMatrix -n "DCM_91";
	rename -uid "7B2EBFF4-4FC4-0642-3996-EABC116943EE";
createNode decomposeMatrix -n "DCM_92";
	rename -uid "7FEA4849-4F87-1CB1-347B-ED9E513CBC93";
createNode decomposeMatrix -n "DCM_93";
	rename -uid "86BBAFA0-4F80-77E7-71C4-7DA179F870CD";
createNode decomposeMatrix -n "DCM_94";
	rename -uid "AB0CA6E2-4823-0EF2-C85A-ABA1C9157ECD";
createNode decomposeMatrix -n "DCM_95";
	rename -uid "0964A038-4A52-76AC-5F4E-C18951BFFA19";
createNode decomposeMatrix -n "DCM_96";
	rename -uid "53AB7A2B-44DE-4B32-5E00-90A3C397F19A";
createNode decomposeMatrix -n "DCM_97";
	rename -uid "C50B5D70-4935-DD6A-9F6F-30B6FE774909";
createNode condition -n "le_cdn_1";
	rename -uid "676C7BCE-487E-857F-DA5A-BBAD1AC1A0A7";
	setAttr ".op" 5;
	setAttr ".st" 4;
createNode condition -n "le_cdn_2";
	rename -uid "D8172560-4D1D-5A14-7D02-FBACF62B3EBD";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "le_cdn_3";
	rename -uid "701CB1D3-4380-48E2-A75D-AA8B5AD8F3C9";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode decomposeMatrix -n "DCM_98";
	rename -uid "517A56B0-4102-8012-91AA-9FADAC33C147";
createNode decomposeMatrix -n "DCM_99";
	rename -uid "43C748A7-4A9C-F152-D402-B193844038C3";
createNode lambert -n "lambert2";
	rename -uid "26CD000E-48FD-DC24-58B6-F49E060798E7";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "D3659EE9-4346-2F7D-5E2A-6D861BDADC7F";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "D01ABFE5-4096-CB69-6AB7-E1A39EFD7054";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "04154A1E-41F7-F58F-484F-659E53C54263";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 539\n            -height 726\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 539\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 539\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 30 -size 300 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A6D1080C-455E-AEA9-F024-28AAA435BBF6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "13E7D5D3-479D-26AE-FCAF-6B8CF5DA70EE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -288.77161520720318 -359.14817515863092 ;
	setAttr ".tgi[0].vh" -type "double2" 556.60651234108309 85.389627498469991 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 154.92585754394531;
	setAttr ".tgi[0].ni[0].y" -7.0473446846008301;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -69.411766052246094;
	setAttr ".tgi[0].ni[1].y" 51.428565979003906;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -154.28572082519531;
	setAttr ".tgi[0].ni[2].y" -32.857143402099609;
	setAttr ".tgi[0].ni[2].nvs" 18304;
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
	setAttr -s 47 ".hyp";
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
	setAttr ".hyp[84970].isc" yes;
	setAttr ".hyp[84975].isc" yes;
	setAttr ".hyp[84976].isc" yes;
	setAttr ".hyp[84978].isc" yes;
	setAttr ".hyp[84983].isc" yes;
	setAttr ".hyp[84984].isc" yes;
	setAttr ".hyp[84985].isc" yes;
	setAttr ".hyp[84988].isc" yes;
	setAttr ".hyp[84989].isc" yes;
	setAttr ".hyp[84990].isc" yes;
	setAttr ".hyp[84992].isc" yes;
	setAttr ".hyp[84996].isc" yes;
	setAttr ".hyp[84997].isc" yes;
	setAttr ".hyp[84998].isc" yes;
	setAttr ".hyp[84999].isc" yes;
	setAttr ".hyp[85001].isc" yes;
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
	setAttr ".hyp[85161].isc" yes;
	setAttr ".hyp[85163].isc" yes;
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
connectAttr "toesRoot_guide_pointConstraint1.ctx" "toesRoot_guide.tx" -l on;
connectAttr "toesRoot_guide_pointConstraint1.cty" "toesRoot_guide.ty" -l on;
connectAttr "toesRoot_guide_pointConstraint1.ctz" "toesRoot_guide.tz" -l on;
connectAttr "toesRoot_guide.pim" "toesRoot_guide_pointConstraint1.cpim";
connectAttr "toesRoot_guide.rp" "toesRoot_guide_pointConstraint1.crp";
connectAttr "toesRoot_guide.rpt" "toesRoot_guide_pointConstraint1.crt";
connectAttr "palm_guide.t" "toesRoot_guide_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "toesRoot_guide_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "toesRoot_guide_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "toesRoot_guide_pointConstraint1.tg[0].tpm";
connectAttr "toesRoot_guide_pointConstraint1.w0" "toesRoot_guide_pointConstraint1.tg[0].tw"
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
connectAttr "toeOut_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeOut_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.w0" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toeIn_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toeIn_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[1].tpm";
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
connectAttr "toeOut_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeOut_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.w0" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toeIn_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toeIn_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[1].tpm";
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
connectAttr "toe00_2_guide_ofs_parentConstraint1.ctx" "toe00_2_guide_ofs.tx";
connectAttr "toe00_2_guide_ofs_parentConstraint1.cty" "toe00_2_guide_ofs.ty";
connectAttr "toe00_2_guide_ofs_parentConstraint1.ctz" "toe00_2_guide_ofs.tz";
connectAttr "toe00_2_guide_ofs_parentConstraint1.crx" "toe00_2_guide_ofs.rx";
connectAttr "toe00_2_guide_ofs_parentConstraint1.cry" "toe00_2_guide_ofs.ry";
connectAttr "toe00_2_guide_ofs_parentConstraint1.crz" "toe00_2_guide_ofs.rz";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.csx" "toe00_2_guide_ofs.sx";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.csy" "toe00_2_guide_ofs.sy";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.csz" "toe00_2_guide_ofs.sz";
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
connectAttr "toe00_2_guide_ofs.pim" "toe00_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeIn_guide.s" "toe00_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeIn_guide.pm" "toe00_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe00_2_guide_ofs_scaleConstraint1.w0" "toe00_2_guide_ofs_scaleConstraint1.tg[0].tw"
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
connectAttr "toeOut_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeOut_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.w0" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toeIn_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toeIn_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[1].tpm";
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
connectAttr "toe04_2_guide_ofs_parentConstraint1.ctx" "toe04_2_guide_ofs.tx";
connectAttr "toe04_2_guide_ofs_parentConstraint1.cty" "toe04_2_guide_ofs.ty";
connectAttr "toe04_2_guide_ofs_parentConstraint1.ctz" "toe04_2_guide_ofs.tz";
connectAttr "toe04_2_guide_ofs_parentConstraint1.crx" "toe04_2_guide_ofs.rx";
connectAttr "toe04_2_guide_ofs_parentConstraint1.cry" "toe04_2_guide_ofs.ry";
connectAttr "toe04_2_guide_ofs_parentConstraint1.crz" "toe04_2_guide_ofs.rz";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.csx" "toe04_2_guide_ofs.sx";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.csy" "toe04_2_guide_ofs.sy";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.csz" "toe04_2_guide_ofs.sz";
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
connectAttr "toe04_2_guide_ofs.pim" "toe04_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toeOut_guide.s" "toe04_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toeOut_guide.pm" "toe04_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe04_2_guide_ofs_scaleConstraint1.w0" "toe04_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "DCM_1.ot" "line_01Shape.cp[0]";
connectAttr "DCM_2.ot" "line_01Shape.cp[1]";
connectAttr "DCM_2.ot" "line_02Shape.cp[0]";
connectAttr "DCM_3.ot" "line_02Shape.cp[1]";
connectAttr "DCM_3.ot" "line_03Shape.cp[0]";
connectAttr "DCM_4.ot" "line_03Shape.cp[1]";
connectAttr "DCM_3.ot" "line_06Shape.cp[0]";
connectAttr "DCM_7.ot" "line_06Shape.cp[1]";
connectAttr "DCM_4.ot" "curveShape36.cp[0]";
connectAttr "DCM_73.ot" "curveShape36.cp[1]";
connectAttr "DCM_98.ot" "curveShape56.cp[0]";
connectAttr "DCM_73.ot" "curveShape56.cp[1]";
connectAttr "DCM_98.ot" "curveShape57.cp[0]";
connectAttr "DCM_99.ot" "curveShape57.cp[1]";
connectAttr "master_guide.toeBones" "line_grp2.v";
connectAttr "le_cdn_1.ocr" "toe_line_grp1.v";
connectAttr "DCM_94.ot" "curveShape53.cp[0]";
connectAttr "DCM_95.ot" "curveShape53.cp[1]";
connectAttr "DCM_95.ot" "curveShape54.cp[0]";
connectAttr "DCM_96.ot" "curveShape54.cp[1]";
connectAttr "DCM_96.ot" "curveShape55.cp[0]";
connectAttr "DCM_97.ot" "curveShape55.cp[1]";
connectAttr "le_cdn_3.ocr" "toe_line_grp2.v";
connectAttr "DCM_89.ot" "curveShape49.cp[0]";
connectAttr "DCM_90.ot" "curveShape49.cp[1]";
connectAttr "DCM_90.ot" "curveShape50.cp[0]";
connectAttr "DCM_91.ot" "curveShape50.cp[1]";
connectAttr "DCM_91.ot" "curveShape51.cp[0]";
connectAttr "DCM_92.ot" "curveShape51.cp[1]";
connectAttr "DCM_92.ot" "curveShape52.cp[0]";
connectAttr "DCM_93.ot" "curveShape52.cp[1]";
connectAttr "DCM_84.ot" "curveShape45.cp[0]";
connectAttr "DCM_85.ot" "curveShape45.cp[1]";
connectAttr "DCM_85.ot" "curveShape46.cp[0]";
connectAttr "DCM_86.ot" "curveShape46.cp[1]";
connectAttr "DCM_86.ot" "curveShape47.cp[0]";
connectAttr "DCM_87.ot" "curveShape47.cp[1]";
connectAttr "DCM_87.ot" "curveShape48.cp[0]";
connectAttr "DCM_88.ot" "curveShape48.cp[1]";
connectAttr "DCM_79.ot" "curveShape41.cp[0]";
connectAttr "DCM_80.ot" "curveShape41.cp[1]";
connectAttr "DCM_80.ot" "curveShape42.cp[0]";
connectAttr "DCM_81.ot" "curveShape42.cp[1]";
connectAttr "DCM_81.ot" "curveShape43.cp[0]";
connectAttr "DCM_82.ot" "curveShape43.cp[1]";
connectAttr "DCM_82.ot" "curveShape44.cp[0]";
connectAttr "DCM_83.ot" "curveShape44.cp[1]";
connectAttr "le_cdn_2.ocr" "toe_line_grp5.v";
connectAttr "DCM_74.ot" "curveShape37.cp[0]";
connectAttr "DCM_75.ot" "curveShape37.cp[1]";
connectAttr "DCM_75.ot" "curveShape38.cp[0]";
connectAttr "DCM_76.ot" "curveShape38.cp[1]";
connectAttr "DCM_76.ot" "curveShape39.cp[0]";
connectAttr "DCM_77.ot" "curveShape39.cp[1]";
connectAttr "DCM_77.ot" "curveShape40.cp[0]";
connectAttr "DCM_78.ot" "curveShape40.cp[1]";
connectAttr "master_guide.dualBone" "line_grp3.v";
connectAttr "DCM_8.ot" "line_07Shape.cp[0]";
connectAttr "DCM_9.ot" "line_07Shape.cp[1]";
connectAttr "DCM_10.ot" "line_08Shape.cp[0]";
connectAttr "DCM_11.ot" "line_08Shape.cp[1]";
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
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "hip_guide.wm" "DCM_1.imat";
connectAttr "upr_guide.wm" "DCM_2.imat";
connectAttr "lwr_guide.wm" "DCM_3.imat";
connectAttr "palm_guide.wm" "DCM_4.imat";
connectAttr "pvc_guide.wm" "DCM_7.imat";
connectAttr "ulna_guide.wm" "DCM_8.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_9.imat";
connectAttr "radiusEnd_guide.wm" "DCM_10.imat";
connectAttr "radius_guide.wm" "DCM_11.imat";
connectAttr "digit_guide.wm" "DCM_73.imat";
connectAttr "toe04_1_guide.wm" "DCM_74.imat";
connectAttr "toe04_2_guide.wm" "DCM_75.imat";
connectAttr "toe04_3_guide.wm" "DCM_76.imat";
connectAttr "toe04_4_guide.wm" "DCM_77.imat";
connectAttr "toe04_5_guide.wm" "DCM_78.imat";
connectAttr "toe03_1_guide.wm" "DCM_79.imat";
connectAttr "toe03_2_guide.wm" "DCM_80.imat";
connectAttr "toe03_3_guide.wm" "DCM_81.imat";
connectAttr "toe03_4_guide.wm" "DCM_82.imat";
connectAttr "toe03_5_guide.wm" "DCM_83.imat";
connectAttr "toe02_1_guide.wm" "DCM_84.imat";
connectAttr "toe02_2_guide.wm" "DCM_85.imat";
connectAttr "toe02_3_guide.wm" "DCM_86.imat";
connectAttr "toe02_4_guide.wm" "DCM_87.imat";
connectAttr "toe02_5_guide.wm" "DCM_88.imat";
connectAttr "toe01_1_guide.wm" "DCM_89.imat";
connectAttr "toe01_2_guide.wm" "DCM_90.imat";
connectAttr "toe01_3_guide.wm" "DCM_91.imat";
connectAttr "toe01_4_guide.wm" "DCM_92.imat";
connectAttr "toe01_5_guide.wm" "DCM_93.imat";
connectAttr "toe00_1_guide.wm" "DCM_94.imat";
connectAttr "toe00_2_guide.wm" "DCM_95.imat";
connectAttr "toe00_3_guide.wm" "DCM_96.imat";
connectAttr "toe00_4_guide.wm" "DCM_97.imat";
connectAttr "master_guide.toeNum" "le_cdn_1.ft";
connectAttr "master_guide.toeNum" "le_cdn_2.ft";
connectAttr "master_guide.toeNum" "le_cdn_3.ft";
connectAttr "ball_guide.wm" "DCM_98.imat";
connectAttr "tip_guide.wm" "DCM_99.imat";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef1|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef2|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef3|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef4|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef5|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef6|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef7|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef8|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef9|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef10|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef11|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef12|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef13|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef14|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef15|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef16|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef17|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef18|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef19|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "fgrRef_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "foot_guide_quadShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
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
connectAttr "pv_loc_ofs.msg" ":hyperGraphLayout.hyp[84970].dn";
connectAttr "line_grp2.msg" ":hyperGraphLayout.hyp[84975].dn";
connectAttr "line_grp3.msg" ":hyperGraphLayout.hyp[84976].dn";
connectAttr "radiusEnd_guide_ZRO.msg" ":hyperGraphLayout.hyp[84978].dn";
connectAttr "ulnaEnd_guide.msg" ":hyperGraphLayout.hyp[84983].dn";
connectAttr "ulnaEnd_guide_ZRO.msg" ":hyperGraphLayout.hyp[84984].dn";
connectAttr "tip_guide.msg" ":hyperGraphLayout.hyp[84985].dn";
connectAttr "line_01.msg" ":hyperGraphLayout.hyp[84988].dn";
connectAttr "line_02.msg" ":hyperGraphLayout.hyp[84989].dn";
connectAttr "line_03.msg" ":hyperGraphLayout.hyp[84990].dn";
connectAttr "line_06.msg" ":hyperGraphLayout.hyp[84992].dn";
connectAttr "line_grp.msg" ":hyperGraphLayout.hyp[84996].dn";
connectAttr "palm_guide_ofs.msg" ":hyperGraphLayout.hyp[84997].dn";
connectAttr "ball_guide_ofs1.msg" ":hyperGraphLayout.hyp[84998].dn";
connectAttr "digit_guide_ofs.msg" ":hyperGraphLayout.hyp[84999].dn";
connectAttr "tip_guide_ofs.msg" ":hyperGraphLayout.hyp[85001].dn";
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
connectAttr "toesRoot_guide.msg" ":hyperGraphLayout.hyp[85161].dn";
connectAttr "toeMain_guide.msg" ":hyperGraphLayout.hyp[85163].dn";
// End of lfLegQd.ma
