//Maya ASCII 2023 scene
//Name: ALL.ma
//Last modified: Fri, Jul 10, 2026 05:55:35 PM
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
fileInfo "UUID" "7D3A3562-40E7-49D8-EEFD-7E9BB91CF980";
createNode transform -s -n "persp";
	rename -uid "64D78795-4936-CB9E-D999-88A52A701986";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 221.75853394362329 124.34529961206894 108.83358332078704 ;
	setAttr ".r" -type "double3" -15.338352729608033 60.200000000003087 3.19992085187685e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9CD8EB7D-41A6-00D4-2A55-7C93808E3F11";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 294.30845530993975;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.8817841970012523e-16 89.582823521437845 -48.217017085478851 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5D697368-4909-A65D-1E73-4891E6EA458C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "84D3D720-4D29-B141-0F19-F8B87ECC51F7";
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
	rename -uid "72733F81-4614-CE84-6CAF-AB94CEF61718";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1680DCA5-4A0B-0615-1EE3-AD9566636F56";
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
	rename -uid "5642161C-471F-ED33-DE98-9E9B21526B9A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "993A5A9C-4FBB-6361-DB4F-5DA3E2B354B6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "GUIDES";
	rename -uid "D8A27976-4B55-5FE9-9BF1-6281210A9512";
createNode nurbsCurve -n "GUIDESShape1" -p "GUIDES";
	rename -uid "47226234-47B4-9209-A998-75B422E8415C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 0.99999999999999989 1.9999999999999998 2.9999999999999996 3.9999999999999996
		 4.9999999999999991 5.9999999999999991
		7
		7.3478807948841199e-15 7.3478807948841199e-15 -120
		-103.92304845413263 3.6739403974420608e-15 -60.000000000000014
		-103.92304845413267 -3.6739403974420576e-15 59.999999999999972
		-5.3977247829140696e-14 -7.3478807948841199e-15 120
		103.92304845413261 -3.6739403974420623e-15 60.000000000000057
		103.9230484541327 3.6739403974420544e-15 -59.999999999999915
		1.1392929115889914e-13 7.3478807948841199e-15 -120
		;
createNode transform -n "spineQd0_master_guide" -p "GUIDES";
	rename -uid "6409417B-4B90-B515-0490-00AF34F3FAAE";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en "____________" 
		-at "enum";
	addAttr -ci true -sn "built" -ln "built" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 7 -min 0 -at "long";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -ci true -sn "rbJntSet" -ln "rbJntSet" -dt "string";
	setAttr ".t" -type "double3" 0 90 10 ;
	setAttr -l on -k on ".____________";
	setAttr -cb on ".rbnJntNum" 8;
	setAttr ".rigID" -type "string" "spineQd0";
	setAttr ".rigClass" -type "string" "SpineQd";
	setAttr -cb on ".rbJntSet" -type "string" "spine_rbj_set";
createNode transform -n "spineQd0_st_guide_ofs" -p "spineQd0_master_guide";
	rename -uid "7B259B1E-4B00-9EED-4C08-B5837BAADD26";
	setAttr ".t" -type "double3" 0 0 50 ;
createNode transform -n "spineQd0_tp_guide" -p "spineQd0_st_guide_ofs";
	rename -uid "C65DD43B-40A0-9742-33E7-E8B3FA949555";
createNode nurbsCurve -n "spineQd0_md_guideShape" -p "spineQd0_tp_guide";
	rename -uid "BDFD01D2-44E5-DF31-51FA-CABA697301C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.62968007182819907 0 0
		0.584642384778576 0.242166794453332 0
		0.4474659330253406 0.4474659330253406 0
		0.242166794453332 0.584642384778576 0
		0 0.62966530620334682 0
		-0.242166794453332 0.584642384778576 0
		-0.4474659330253406 0.4474659330253406 0
		-0.584642384778576 0.242166794453332 0
		-0.62968007182819907 -2.9833776264162235e-08 0
		-0.584642384778576 -0.242166794453332 0
		-0.4474659330253406 -0.4474659330253406 0
		-0.242166794453332 -0.584642384778576 0
		2.5145690373543098e-08 -0.62966530620334682 -0.0042816093321839076
		0.242166794453332 -0.584642384778576 0
		0.4474659330253406 -0.4474659330253406 0
		0.584642384778576 -0.242166794453332 0
		0.62968007182819907 0 0
		0.58174832230751661 0.0016385456086145441 -0.24096276321537236
		0.44525108929748913 0.0030276618447233816 -0.44524138617258613
		0.24096824759031749 0.0039558374604416252 -0.58173566605764337
		2.5145690373543098e-08 0.0042817780821822176 -0.62966614995333858
		-0.24096824759031749 0.0039558374604416252 -0.58173566605764337
		-0.44525108929748913 0.0030276618447233816 -0.44524138617258613
		-0.58174832230751661 0.0016385456086145441 -0.24096276321537236
		-0.62968007182819907 -2.9833776264162235e-08 0
		-0.58174832230751661 -0.0016386046711139531 0.24096191946538081
		-0.44525108929748913 -0.0030277209072227911 0.4452409642975903
		-0.24096824759031749 -0.0039558965229410355 0.58173482230765172
		2.5145690373543098e-08 -0.0042818202696817981 0.62966530620334682
		0.24096824759031749 -0.0039558965229410355 0.58173482230765172
		0.44525108929748913 -0.0030277209072227911 0.4452409642975903
		0.58174832230751661 -0.0016386046711139531 0.24096191946538081
		0.62968007182819907 0 0
		0.58174832230751661 0.0016385456086145441 -0.24096276321537236
		0.44525108929748913 0.0030276618447233816 -0.44524138617258613
		0.24096824759031749 0.0039558374604416252 -0.58173566605764337
		2.5145690373543098e-08 0.0042817780821822176 -0.62966614995333858
		2.5145690373543098e-08 0.24491826317581739 -0.58009668169903306
		2.5145690373543098e-08 0.44826833926731652 -0.44221358932786409
		2.5145690373543098e-08 0.5833733847912661 -0.23700684137993155
		0 0.62966530620334682 0
		2.5145690373543098e-08 0.58009625982403745 0.24491826317581739
		2.5145690373543098e-08 0.44221316745286815 0.44826791739232091
		2.5145690373543098e-08 0.23700684137993155 0.5833733847912661
		2.5145690373543098e-08 -0.0042818202696817981 0.62966530620334682
		2.5145690373543098e-08 -0.24491826317581739 0.58009583794904152
		2.5145690373543098e-08 -0.44826833926731652 0.44221274557787255
		2.5145690373543098e-08 -0.5833733847912661 0.23700599762993999
		2.5145690373543098e-08 -0.62966530620334682 -0.0042816093321839076
		2.5145690373543098e-08 -0.58009625982403745 -0.24491910692580887
		2.5145690373543098e-08 -0.44221316745286815 -0.4482687611423124
		2.5145690373543098e-08 -0.23700684137993155 -0.58337422854125776
		2.5145690373543098e-08 0.0042817780821822176 -0.62966614995333858
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_joint1" -p "spineQd0_tp_guide";
	rename -uid "FBAF8DD7-4B94-0320-CFA3-FE8D5AE4D3B9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 95 50 1;
	setAttr ".radi" 10;
createNode transform -n "spineQd0_md_guide_ofs" -p "spineQd0_master_guide";
	rename -uid "36011857-40D6-FDE1-9EC9-E68EC7F7CBEC";
createNode transform -n "spineQd0_md_guide" -p "spineQd0_md_guide_ofs";
	rename -uid "C3E0B47B-45DD-A2D8-87F1-9E9B2D2EDB7F";
createNode joint -n "spineQd0_joint2" -p "spineQd0_md_guide";
	rename -uid "F9C9EF46-406B-CC34-446F-99936005A3EE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7268917917981639e-14 95 0 1;
	setAttr ".radi" 10;
createNode pointConstraint -n "spineQd0_md_guide_ofs_pointConstraint1" -p "spineQd0_md_guide_ofs";
	rename -uid "86A65CF8-4089-A5F9-6B0A-A2B4E9691958";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "st_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ed_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.7268917917981639e-14 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "spineQd0_md_guide_ofs_aimConstraint1" -p "spineQd0_md_guide_ofs";
	rename -uid "35CBECED-4C8C-F73C-02A1-EC8D7E608E14";
	addAttr -dcb 0 -ci true -sn "w0" -ln "rt_guideW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "spineQd0_ed_guide_ofs" -p "spineQd0_master_guide";
	rename -uid "7575339A-42BC-D85A-272D-9AB6C0080690";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 0 -50 ;
createNode transform -n "spineQd0_rt_guide" -p "spineQd0_ed_guide_ofs";
	rename -uid "FFD5908C-41F9-C765-33DD-F886E625BD6B";
createNode joint -n "spineQd0_joint3" -p "spineQd0_rt_guide";
	rename -uid "ED7D07A3-4A19-6396-46DB-8580E3F8B3CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 95 -50 1;
	setAttr ".radi" 10;
createNode transform -n "spineQd0_base_pivot_guide" -p "spineQd0_master_guide";
	rename -uid "C022AC3C-4607-95E5-BAAE-2A989F073C5D";
	setAttr ".t" -type "double3" 0 -5 -30 ;
createNode nurbsCurve -n "spineQd0_base_pivot_guideShape" -p "spineQd0_base_pivot_guide";
	rename -uid "2023CD5A-4363-D1F5-3E7F-5FB2D8E7BD0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		3.8806921265974493e-16 16.223393057156137 0
		3.8806921265974493e-16 -16.223393057156137 0
		3.8806921265974493e-16 0 0
		3.8806921265974493e-16 0 -16.223393057156137
		3.8806921265974493e-16 0 16.223393057156137
		3.8806921265974493e-16 0 0
		-16.223393057156137 0 0
		16.223393057156137 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_chest_pivot_guide" -p "spineQd0_master_guide";
	rename -uid "DEBFE8C1-4043-5BFD-1A22-2F8FCA603E69";
	setAttr ".t" -type "double3" 0 -5 30 ;
createNode nurbsCurve -n "spineQd0_chest_pivot_guideShape" -p "spineQd0_chest_pivot_guide";
	rename -uid "B285A5E7-43EC-9A13-B135-629C7809A9D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		3.8806921265974493e-16 16.223393057156137 0
		3.8806921265974493e-16 -16.223393057156137 0
		3.8806921265974493e-16 0 0
		3.8806921265974493e-16 0 -16.223393057156137
		3.8806921265974493e-16 0 16.223393057156137
		3.8806921265974493e-16 0 0
		-16.223393057156137 0 0
		16.223393057156137 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_cog_pivot_guide" -p "spineQd0_master_guide";
	rename -uid "3E6147CF-4ACC-CA85-8158-64814652C893";
	setAttr ".t" -type "double3" 0 -5 0 ;
createNode nurbsCurve -n "spineQd0_cog_pivot_guideShape" -p "spineQd0_cog_pivot_guide";
	rename -uid "09D96324-40F6-ABA6-30DA-458A0877ABAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		3.8806921265974493e-16 16.223393057156137 0
		3.8806921265974493e-16 -16.223393057156137 0
		3.8806921265974493e-16 0 0
		3.8806921265974493e-16 0 -16.223393057156137
		3.8806921265974493e-16 0 16.223393057156137
		3.8806921265974493e-16 0 0
		-16.223393057156137 0 0
		16.223393057156137 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_line_grp" -p "spineQd0_master_guide";
	rename -uid "41150839-49C6-7ECE-BA1A-BC875CE54DD4";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 0 -85 -15 ;
createNode transform -n "spineQd0_line_guide" -p "spineQd0_line_grp";
	rename -uid "89E53F60-4B87-BE38-E8B3-64BEE303AC64";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 140 0 ;
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
createNode nurbsCurve -n "spineQd0_line_guideShape" -p "spineQd0_line_guide";
	rename -uid "DED0A5D4-4CBD-D433-4261-8297DD363A0D";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".tw" yes;
	setAttr ".ls" 5;
	setAttr ".adot" yes;
createNode nurbsCurve -n "spineQd0_line_guideShapeOrig" -p "spineQd0_line_guide";
	rename -uid "62F8E073-46DE-7ACB-8DE6-0CAC6BA0164B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 25 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster1_2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster2_2";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster3_1";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[8].gtagnm" -type "string" "cluster3_2";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[9].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[10].gtagnm" -type "string" "cluster4_1";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[11].gtagnm" -type "string" "cluster4_2";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[12].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[13].gtagnm" -type "string" "cluster5_1";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[14].gtagnm" -type "string" "cluster5_2";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[15].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[15].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[16].gtagnm" -type "string" "cluster6_1";
	setAttr ".gtag[16].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[17].gtagnm" -type "string" "cluster6_2";
	setAttr ".gtag[17].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[18].gtagnm" -type "string" "cluster1_3";
	setAttr ".gtag[18].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[19].gtagnm" -type "string" "cluster2_3";
	setAttr ".gtag[19].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[20].gtagnm" -type "string" "cluster3_3";
	setAttr ".gtag[20].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[21].gtagnm" -type "string" "cluster4_3";
	setAttr ".gtag[21].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[22].gtagnm" -type "string" "cluster5_3";
	setAttr ".gtag[22].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[23].gtagnm" -type "string" "cluster6_3";
	setAttr ".gtag[23].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[24].gtagnm" -type "string" "cluster7";
	setAttr ".gtag[24].gtagcmp" -type "componentList" 1 "cv[6]";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 0.25 0.5 0.74999999999999989 1 1 1
		7
		2.4015078120555895e-17 -45.000000000000007 -50.000000000000007
		2.4015078120559051e-17 -44.999999999999993 -41.666666627938618
		-1.3386098473400853e-14 -45.000000000000199 -25.000000025054309
		-2.7433331652313578e-14 -44.999999999999716 4.8352979158501079e-15
		-4.1256688641390619e-14 -45.000000000000206 25.00000002505406
		-5.453783583596329e-14 -44.999999999999993 41.666666627938703
		-5.4537835835963278e-14 -45 50
		

		"gtag" 25
		"cluster1" 1 "cv[0]"
		"cluster1_1" 1 "cv[0]"
		"cluster1_2" 1 "cv[0]"
		"cluster1_3" 1 "cv[0]"
		"cluster2" 1 "cv[1]"
		"cluster2_1" 1 "cv[1]"
		"cluster2_2" 1 "cv[1]"
		"cluster2_3" 1 "cv[1]"
		"cluster3" 1 "cv[2]"
		"cluster3_1" 1 "cv[2]"
		"cluster3_2" 1 "cv[2]"
		"cluster3_3" 1 "cv[2]"
		"cluster4" 1 "cv[3]"
		"cluster4_1" 1 "cv[3]"
		"cluster4_2" 1 "cv[3]"
		"cluster4_3" 1 "cv[3]"
		"cluster5" 1 "cv[4]"
		"cluster5_1" 1 "cv[4]"
		"cluster5_2" 1 "cv[4]"
		"cluster5_3" 1 "cv[4]"
		"cluster6" 1 "cv[5]"
		"cluster6_1" 1 "cv[5]"
		"cluster6_2" 1 "cv[5]"
		"cluster6_3" 1 "cv[5]"
		"cluster7" 1 "cv[6]";
createNode nurbsCurve -n "spineQd0_master_guideShape" -p "spineQd0_master_guide";
	rename -uid "610B954A-4411-593F-5BE1-11A9F6CCC8DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 0 no 3
		6 0 1 3 4 6 7
		6
		3.2457014634637222e-15 26.503163734421271 0
		-17.777777777777771 17.777777777777786 0
		-17.777777777777782 -17.777777777777771 0
		17.777777777777771 -17.777777777777775 0
		17.777777777777779 17.777777777777779 0
		3.2457014634637222e-15 26.503163734421271 0
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_master_guide" -p "GUIDES";
	rename -uid "5F243D3E-4190-F06B-9EF7-E7BB5FF2F106";
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
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 10 0 -50 ;
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
	setAttr ".rigID" -type "string" "lfLegQd0";
	setAttr ".rigClass" -type "string" "LegQd";
createNode transform -n "lfLegQd0_hip_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "A777CE3C-4D51-3D19-C3B3-0780F20D08ED";
	setAttr ".t" -type "double3" 0 94 18 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_hip_guide" -p "lfLegQd0_hip_guide_ofs";
	rename -uid "83FAB2C4-40FF-278A-8D81-F0A57ED2D10A";
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
createNode aimConstraint -n "lfLegQd0_hip_guide_aimConstraint1" -p "lfLegQd0_hip_guide";
	rename -uid "940AE1C4-44A0-0E07-859F-C5A73149D3D2";
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
createNode nurbsCurve -n "lfLegQd0_hip_guideShape" -p "lfLegQd0_hip_guide";
	rename -uid "6BA268AD-4382-7D43-D4CD-5D9DB361C89D";
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
createNode transform -n "lfLegQd0_upr_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "49C263CA-4802-AB2A-0782-FA89A6B9FF22";
	setAttr ".t" -type "double3" 0 85 6 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_upr_guide" -p "lfLegQd0_upr_guide_ofs";
	rename -uid "234950B4-4135-A562-A10A-5582A85A1090";
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
createNode aimConstraint -n "lfLegQd0_upr_guide_aimConstraint1" -p "lfLegQd0_upr_guide";
	rename -uid "025C8C50-40EC-41B1-3BC3-239CA98B5C8D";
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
createNode transform -n "lfLegQd0_scap_guide_ofs" -p "lfLegQd0_upr_guide";
	rename -uid "188F64A5-4532-EF19-AEAC-A6A4056AF427";
	setAttr ".t" -type "double3" -2.9999999999999858 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode transform -n "lfLegQd0_lwr_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "06E0A245-4E84-49D2-2B81-29ABC29628E3";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "lfLegQd0_lwr_guide_ofs_pointConstraint1" -p "lfLegQd0_lwr_guide_ofs";
	rename -uid "012DB6F9-4AA0-FA71-57DC-4DA0C7960DB1";
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
createNode transform -n "lfLegQd0_lwr_guide" -p "lfLegQd0_lwr_guide_ofs";
	rename -uid "F96DDE56-4DCE-E71F-1135-AB99507B44BA";
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
createNode aimConstraint -n "lfLegQd0_lwr_guide_aimConstraint1" -p "lfLegQd0_lwr_guide";
	rename -uid "C64A2561-48B0-2B75-8C53-08858074AFDA";
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
createNode transform -n "lfLegQd0_patella_guide" -p "lfLegQd0_lwr_guide";
	rename -uid "249D00DF-4CD0-5FA5-1941-758FF4334875";
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
createNode nurbsCurve -n "lfLegQd0_patella_guideShape" -p "lfLegQd0_patella_guide";
	rename -uid "AF486407-42BD-8225-4161-3C8C73E9702F";
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
createNode transform -n "lfLegQd0_radius_guide_ZRO" -p "lfLegQd0_lwr_guide";
	rename -uid "71684A31-4C07-EB0D-CD00-2EAD51A0405F";
	setAttr ".t" -type "double3" 5 5 4.7184478546569183e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "lfLegQd0_radius_guide" -p "lfLegQd0_radius_guide_ZRO";
	rename -uid "102A3FB3-41AD-FA19-FB0B-468EB3CBA666";
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
createNode aimConstraint -n "lfLegQd0_radius_guide_aimConstraint1" -p "lfLegQd0_radius_guide";
	rename -uid "D23B1CF9-4326-C96F-3D9A-D38F2AD8599F";
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
createNode nurbsCurve -n "lfLegQd0_ulna_guideShape" -p "lfLegQd0_radius_guide";
	rename -uid "41AA7073-4BFC-AA0D-6C82-24B686E5BA1E";
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
createNode transform -n "lfLegQd0_ulna_guide_ZRO" -p "lfLegQd0_lwr_guide";
	rename -uid "72794120-4A5B-663F-8689-2E8561098568";
	setAttr ".t" -type "double3" 5 -5 4.7184478546569183e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ulna_guide" -p "lfLegQd0_ulna_guide_ZRO";
	rename -uid "C78A4352-4BCF-606C-B4ED-298418716706";
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
createNode aimConstraint -n "lfLegQd0_ulna_guide_aimConstraint1" -p "lfLegQd0_ulna_guide";
	rename -uid "62417E3B-4AF1-CA6B-357E-B59AA28B9EBA";
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
createNode transform -n "lfLegQd0_palm_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "5310C341-4637-1BA7-DBF9-CF9D50DE68AD";
	setAttr ".t" -type "double3" 0 20 -1 ;
	setAttr ".r" -type "double3" 180 9.0309812684467041e-17 -90 ;
createNode transform -n "lfLegQd0_palm_guide" -p "lfLegQd0_palm_guide_ofs";
	rename -uid "1493070C-4676-CF85-004A-D8A61A1FB69F";
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
createNode transform -n "lfLegQd0_radiusEnd_guide_ZRO" -p "lfLegQd0_palm_guide";
	rename -uid "68541EA2-4076-E89F-B454-03AF305A1CA6";
	setAttr ".t" -type "double3" 0 5 1.2246467991473542e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000009 ;
createNode transform -n "lfLegQd0_radiusEnd_guide" -p "lfLegQd0_radiusEnd_guide_ZRO";
	rename -uid "BA4035B9-4824-D4E1-1FF9-99AB6BD3D8EC";
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
createNode aimConstraint -n "lfLegQd0_radiusEnd_guide_aimConstraint1" -p "lfLegQd0_radiusEnd_guide";
	rename -uid "79CBEF21-4C00-A1A9-8CDE-88BE2E00ADA9";
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
createNode transform -n "lfLegQd0_ulnaEnd_guide_ZRO" -p "lfLegQd0_palm_guide";
	rename -uid "C1AD6C5D-4BE8-0B7B-B325-26BD84822450";
	setAttr ".t" -type "double3" 0 -5 -1.2246467991473519e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000009 ;
createNode transform -n "lfLegQd0_ulnaEnd_guide" -p "lfLegQd0_ulnaEnd_guide_ZRO";
	rename -uid "9A25365C-42DD-E503-502C-DB92C341C565";
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
createNode aimConstraint -n "lfLegQd0_ulnaEnd_guide_aimConstraint1" -p "lfLegQd0_ulnaEnd_guide";
	rename -uid "E0CC6A17-46B5-2252-D6BF-5F9A9C4E644C";
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
createNode transform -n "lfLegQd0_carpal_guide" -p "lfLegQd0_palm_guide";
	rename -uid "1EEA8BD5-4D94-ABC9-00BA-25A11B49142B";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -3 0 -1 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -4.0207158471726101e-16 0 -9.6219237681277626e-17 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode nurbsCurve -n "lfLegQd0_carpal_guideShape" -p "lfLegQd0_carpal_guide";
	rename -uid "673F8A5E-4049-8634-C0BC-88A9128C01C8";
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
createNode transform -n "lfLegQd0_digit_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "32493B33-47E0-25CE-D0F1-EAB4F22A1062";
	setAttr ".t" -type "double3" -9.0815373377806495e-13 5 5 ;
	setAttr ".r" -type "double3" 0 -90 89.999999999958362 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "lfLegQd0_digit_guide" -p "lfLegQd0_digit_guide_ofs";
	rename -uid "C60A51A2-4A89-EBC2-65C5-A4B59C35706D";
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
createNode aimConstraint -n "lfLegQd0_digit_guide_aimConstraint1" -p "lfLegQd0_digit_guide";
	rename -uid "F2F5921B-4AD4-74C5-E0E7-D4BD71C8A65F";
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
createNode transform -n "lfLegQd0_ball_guide_ofs1" -p "lfLegQd0_master_guide";
	rename -uid "F5A56F97-4B88-F081-6CCE-69AD4C7D73C3";
	setAttr ".t" -type "double3" -1.6289226076098935e-13 5 12 ;
	setAttr ".r" -type "double3" 180 0 -90.000000000000838 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "lfLegQd0_ball_guide" -p "lfLegQd0_ball_guide_ofs1";
	rename -uid "4A75DB83-4B1B-96C5-7292-DF8EF89B1609";
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
createNode aimConstraint -n "lfLegQd0_ball_guide_aimConstraint1" -p "lfLegQd0_ball_guide";
	rename -uid "BE2139BE-42A2-7449-0C3A-1BB54185F0DC";
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
createNode transform -n "lfLegQd0_tip_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "5FD379AD-4CF2-20EA-A952-D191C2942647";
	setAttr ".t" -type "double3" -2.5751698834672243e-13 -3.6190529924333017e-29 14 ;
	setAttr ".r" -type "double3" 180 -90 -90.000000000016229 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd0_tip_guide" -p "lfLegQd0_tip_guide_ofs";
	rename -uid "0F12DF40-418B-C70D-44D3-0C89AE53AEF5";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "lfLegQd0_palm_inPos_ofs" -p "lfLegQd0_master_guide";
	rename -uid "747FA152-4457-F259-FD09-55B1BBAA3889";
createNode transform -n "lfLegQd0_palm_inPos_guide" -p "lfLegQd0_palm_inPos_ofs";
	rename -uid "D7C970BD-4CA5-BFF8-8A65-41AEF9D4BF91";
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
createNode nurbsCurve -n "lfLegQd0_palm_toePos_guideShape" -p "lfLegQd0_palm_inPos_guide";
	rename -uid "7ACBE485-499C-E802-9DA0-CF933CC1E9F0";
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
createNode transform -n "lfLegQd0_palm_outPos_ofs" -p "lfLegQd0_master_guide";
	rename -uid "C6DEB70D-4E79-C8FC-6DF6-A2A9AC49610A";
createNode transform -n "lfLegQd0_palm_outPos_guide" -p "lfLegQd0_palm_outPos_ofs";
	rename -uid "DB84BF3C-4E4A-4682-0CB0-4D9B5D100222";
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
createNode transform -n "lfLegQd0_palm_heelPos_ofs" -p "lfLegQd0_master_guide";
	rename -uid "FCFE71FA-47BC-FD80-E32F-83B6F35C56FA";
createNode transform -n "lfLegQd0_palm_heelPos_guide" -p "lfLegQd0_palm_heelPos_ofs";
	rename -uid "630A5652-46BF-6135-F507-6E9199FB7608";
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
createNode transform -n "lfLegQd0_palm_toePos_guide_ofs" -p "lfLegQd0_master_guide";
	rename -uid "C18C20FD-415C-3ABA-B37F-0E902092AD51";
createNode transform -n "lfLegQd0_palm_toePos_guide" -p "lfLegQd0_palm_toePos_guide_ofs";
	rename -uid "091A754E-4C51-C66E-02C4-41A17663F465";
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
createNode transform -n "lfLegQd0_pv_loc_ofs" -p "lfLegQd0_master_guide";
	rename -uid "2CC821C2-4FB8-750B-D36F-7498466AED8E";
createNode pointConstraint -n "lfLegQd0_pv_loc_ofs_pointConstraint1" -p "lfLegQd0_pv_loc_ofs";
	rename -uid "C29478FE-4139-9299-168B-61BA5C43DEAB";
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
createNode transform -n "lfLegQd0_pv_loc" -p "lfLegQd0_pv_loc_ofs";
	rename -uid "36C09A58-4F5F-D7C4-DB08-8C9767FD3568";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "lfLegQd0_pv_locShape" -p "lfLegQd0_pv_loc";
	rename -uid "6349BA9E-4FC2-EFCA-9205-CA9AF154FC7F";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "lfLegQd0_pvc_guide_ofs" -p "lfLegQd0_pv_loc";
	rename -uid "A6E9E2BD-40BE-C2E3-0F0D-A8A2FE6B2160";
	setAttr ".t" -type "double3" 45 7.1054273576010019e-15 1.0978271331186208e-15 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "lfLegQd0_pvc_guide" -p "lfLegQd0_pvc_guide_ofs";
	rename -uid "2C42B43B-4404-2BB2-5EAA-DDBB9F936B33";
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
createNode aimConstraint -n "lfLegQd0_pv_loc_aimConstraint1" -p "lfLegQd0_pv_loc";
	rename -uid "C4935190-4267-E8A5-EC54-3D8D066B0E9F";
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
createNode transform -n "lfLegQd0_toe_guide_grp" -p "lfLegQd0_master_guide";
	rename -uid "95D69A7E-48C7-EB7E-7F37-8298A5E58165";
createNode transform -n "lfLegQd0_toe_main_2_guide_ofs" -p "lfLegQd0_toe_guide_grp";
	rename -uid "5A3ECAAB-4BCC-7991-0F6F-B0AACC217D75";
	setAttr ".t" -type "double3" 0 0 5 ;
createNode transform -n "lfLegQd0_toeMain_guide" -p "lfLegQd0_toe_main_2_guide_ofs";
	rename -uid "18645A6D-44E0-10AC-A648-9CAE9444BE43";
	setAttr ".t" -type "double3" 0 5 0 ;
createNode transform -n "lfLegQd0_toe0_2_guide_ofs" -p "lfLegQd0_toeMain_guide";
	rename -uid "85139B9B-4C35-0588-C9AE-F5B96A2482FE";
	setAttr ".t" -type "double3" -4.0000000000000009 0 0 ;
createNode transform -n "lfLegQd0_toe0_2_guide" -p "lfLegQd0_toe0_2_guide_ofs";
	rename -uid "63CC9439-4363-01FA-931C-FDB136EE64C7";
createNode nurbsCurve -n "lfLegQd0_toe1_2_guideShape" -p "lfLegQd0_toe0_2_guide";
	rename -uid "292042CF-4CA4-2468-6F0E-4E86B7D69FE1";
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
		0.15741653748833453 0.0010704445205455535 6.2864225933857719e-09
		0.1458435571353143 -0.059251710344982833 6.2864225933857719e-09
		0.11206719028557802 -0.110553291863217 6.2864225933857719e-09
		0.061229776731452148 -0.14502406495600931 6.2864225933857719e-09
		0.0010704023330459762 -0.15741632655083657 6.2864225933857719e-09
		-0.059251499407484975 -0.14584334619781647 6.2864225933857719e-09
		-0.11055318639446805 -0.11206708481682903 6.2864225933857719e-09
		-0.14502395948726021 -0.061229565793954333 6.2864225933857719e-09
		-0.15741632655083657 -0.0010704550674204491 6.2864225933857719e-09
		-0.14584334619781647 0.059251710344982833 6.2864225933857719e-09
		-0.1120669793480801 0.110553291863217 6.2864225933857719e-09
		-0.061229565793954333 0.14502406495600931 6.2864225933857719e-09
		0 0.15741632655083657 0
		0.059251710344982833 0.14584334619781647 6.2864225933857719e-09
		0.11055339733196594 0.11206708481682903 6.2864225933857719e-09
		0.1450241704247581 0.061229565793954333 6.2864225933857719e-09
		0.15741653748833453 0.0010704445205455535 6.2864225933857719e-09
		0.14543391651441073 0.00098895936511040564 0.06024206189757933
		0.11131034654314645 0.00075691546118084453 0.11131277232437216
		0.060240690803843047 0.00040963640215363559 0.14543708057687901
		0 0 0.15742001795704963
		-0.060240479866345162 -0.00040965116777848812 0.14543708057687901
		-0.11131024107439746 -0.00075693022680569733 0.11131277232437216
		-0.14543370557691282 -0.00098897413073525801 0.06024206189757933
		-0.15741632655083657 -0.0010704550674204491 6.2864225933857719e-09
		-0.14543370557691282 -0.00098897413073525801 -0.06024206189757933
		-0.11131024107439746 -0.00075693022680569733 -0.11131277232437216
		-0.060240479866345162 -0.00040965116777848812 -0.14543708057687901
		0 -7.4584440660405555e-09 -0.15742001795704963
		0.060240690803843047 0.00040963640215363559 -0.14543708057687901
		0.11131034654314645 0.00075691546118084453 -0.11131277232437216
		0.14543391651441073 0.00098895936511040564 -0.06024206189757933
		0.15741653748833453 0.0010704445205455535 6.2864225933857719e-09
		0.14543391651441073 0.00098895936511040564 0.06024206189757933
		0.11131034654314645 0.00075691546118084453 0.11131277232437216
		0.060240690803843047 0.00040963640215363559 0.14543708057687901
		0 0 0.15742001795704963
		0 -0.060541698613332903 0.14616059619464389
		0 -0.11186648325633511 0.11186648325633511
		0 -0.14616059619464389 0.060541698613332903
		0.0010704023330459762 -0.15741632655083657 6.2864225933857719e-09
		0 -0.14616059619464389 -0.060541698613332903
		0 -0.11186648325633511 -0.11186648325633511
		0 -0.060541698613332903 -0.14616059619464389
		0 -7.4584440660405555e-09 -0.15742001795704963
		0 0.060541698613332903 -0.14616059619464389
		0 0.11186648325633511 -0.11186648325633511
		0 0.14616059619464389 -0.060541698613332903
		0 0.15741632655083657 0
		0 0.14616059619464389 0.060541698613332903
		0 0.11186648325633511 0.11186648325633511
		0 0.060541698613332903 0.14616059619464389
		0 0 0.15742001795704963
		0 0 0.6328125
		0 0 1.1711366400095347e-08
		0 1.265625 0
		0 -1.265625 0
		0 0 -1.1711366400095347e-08
		0 0 -1.1711366400095347e-08
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe0_3_guide" -p "lfLegQd0_toe0_2_guide";
	rename -uid "AB678093-4BBF-7D2B-888D-5D85E6BBC8C1";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -6.2172489379008766e-15 7 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe2_1_guideShape" -p "lfLegQd0_toe0_3_guide";
	rename -uid "87F88552-4409-188C-8065-4DBD16A5724C";
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
createNode transform -n "lfLegQd0_toe0_4_guide" -p "lfLegQd0_toe0_3_guide";
	rename -uid "89D08A14-4B89-1A83-6DBD-918DFAE4B4C7";
	setAttr ".t" -type "double3" -2.6023627697213669e-13 -5.0000000000000009 2.0000000000000124 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe0_1_guide" -p "lfLegQd0_toe0_2_guide";
	rename -uid "27FFF30C-493D-0ABF-CD72-33955045E818";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 10 -4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe0_1_guideShape" -p "lfLegQd0_toe0_1_guide";
	rename -uid "F321CE7F-4A82-97E7-19E4-60A5C2F169FB";
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
createNode transform -n "lfLegQd0_toe1_2_guide_ofs" -p "lfLegQd0_toeMain_guide";
	rename -uid "56F3CD3F-4606-CA48-062C-69A034C1C6E2";
	setAttr ".t" -type "double3" -2.0000000000000009 0 0 ;
createNode transform -n "lfLegQd0_toe1_2_guide" -p "lfLegQd0_toe1_2_guide_ofs";
	rename -uid "C9849A07-4663-5E52-EB8F-5B866165C421";
createNode transform -n "lfLegQd0_toe1_3_guide" -p "lfLegQd0_toe1_2_guide";
	rename -uid "CEBA5331-4529-DBBE-8255-32B7E0975D24";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.0658141036401503e-14 7 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe1_4_guide" -p "lfLegQd0_toe1_3_guide";
	rename -uid "B74AA7C8-4433-23FA-5841-40AF01E2D26F";
	setAttr ".t" -type "double3" -2.5579538487363607e-13 -5.0000000000000009 1.9999999999999982 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe1_5_guide" -p "lfLegQd0_toe1_4_guide";
	rename -uid "5C343C99-49A1-FD89-D5CC-D0A41A607F44";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 4.440892098495609e-16 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe1_1_guide" -p "lfLegQd0_toe1_2_guide";
	rename -uid "EE1417E3-464F-EB3B-E5A9-89B8949E5609";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 10 -4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe2_2_guide_ofs" -p "lfLegQd0_toeMain_guide";
	rename -uid "0A85665E-43F2-0DEB-3A8D-6E9344D771EB";
createNode transform -n "lfLegQd0_toe2_2_guide" -p "lfLegQd0_toe2_2_guide_ofs";
	rename -uid "676015D8-402E-9F30-BB71-45A46830EE66";
createNode transform -n "lfLegQd0_toe2_3_guide" -p "lfLegQd0_toe2_2_guide";
	rename -uid "DBE3B63A-4935-E10F-E718-3184617EE108";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 7 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe2_4_guide" -p "lfLegQd0_toe2_3_guide";
	rename -uid "DE9AE3E7-41B3-551C-9D34-26819A6DA5AE";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 -5.0000000000000009 1.9999999999999982 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe2_5_guide" -p "lfLegQd0_toe2_4_guide";
	rename -uid "78A8BD73-4AB8-9796-F213-538A71EAD837";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe2_1_guide" -p "lfLegQd0_toe2_2_guide";
	rename -uid "79F45C74-4905-781A-12D2-DEBDBDD875E9";
	setAttr ".t" -type "double3" 0 10 -4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe3_2_guide_ofs" -p "lfLegQd0_toeMain_guide";
	rename -uid "27F3E3DF-4205-B889-91E1-7C95B0C783E2";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "lfLegQd0_toe3_2_guide" -p "lfLegQd0_toe3_2_guide_ofs";
	rename -uid "503FB4E1-4587-FA25-6868-3598677B869B";
createNode transform -n "lfLegQd0_toe3_3_guide" -p "lfLegQd0_toe3_2_guide";
	rename -uid "06C2CA10-4BA6-6C18-4D88-6489EC4DB3D8";
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-15 7 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe3_4_guide" -p "lfLegQd0_toe3_3_guide";
	rename -uid "6B4A406A-4863-41A4-646D-51A139535710";
	setAttr ".t" -type "double3" -2.6290081223123707e-13 -5.0000000000000009 1.9999999999999982 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe3_5_guide" -p "lfLegQd0_toe3_4_guide";
	rename -uid "990F159D-4662-9914-5098-66BF630B5FDA";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 4.440892098505667e-16 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe3_1_guide" -p "lfLegQd0_toe3_2_guide";
	rename -uid "469DDBA5-480F-B3ED-FF40-1486A755F6A3";
	setAttr ".t" -type "double3" 0 10 -4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe4_2_guide_ofs" -p "lfLegQd0_toeMain_guide";
	rename -uid "C5AEF177-41EF-590F-ECA3-13A6EBAA5DE3";
	setAttr ".t" -type "double3" 4 0 0 ;
createNode transform -n "lfLegQd0_toe4_2_guide" -p "lfLegQd0_toe4_2_guide_ofs";
	rename -uid "FAE113C7-4217-A7CF-23D8-8E9B2E1FEE35";
createNode transform -n "lfLegQd0_toe4_3_guide" -p "lfLegQd0_toe4_2_guide";
	rename -uid "F7D65D71-45AB-7372-5253-73ADBD61985A";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 7 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe4_4_guide" -p "lfLegQd0_toe4_3_guide";
	rename -uid "7451D76D-4600-29C0-B595-3A8FC5BD183C";
	setAttr ".t" -type "double3" -2.5224267119483557e-13 -5.0000000000000009 1.9999999999999982 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe4_5_guide" -p "lfLegQd0_toe4_4_guide";
	rename -uid "5F94A067-4903-47B3-5740-9BBB59B46F79";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 4.4408920985056749e-16 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000007 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "lfLegQd0_toe4_1_guide" -p "lfLegQd0_toe4_2_guide";
	rename -uid "91A5ACBB-491C-82FB-379E-A39722E72393";
	setAttr ".t" -type "double3" 0 10 -4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe4_1_guideShape" -p "lfLegQd0_toe4_1_guide";
	rename -uid "43E511AE-436B-2704-0E39-C398F5622B0F";
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
createNode nurbsCurve -n "lfLegQd0_toeMain_guideShape" -p "lfLegQd0_toeMain_guide";
	rename -uid "5B325497-4D1F-F78A-B3B7-778BC75293C9";
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
createNode transform -n "lfLegQd0_line_grp_main" -p "lfLegQd0_master_guide";
	rename -uid "EC9D26CC-4EB9-6ADF-8270-E19C35AF71B2";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".it" no;
createNode transform -n "lfLegQd0_line_01" -p "lfLegQd0_line_grp_main";
	rename -uid "46ADDB11-4973-99E0-D02F-409C6913E968";
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
createNode nurbsCurve -n "lfLegQd0_line_01Shape" -p "lfLegQd0_line_01";
	rename -uid "4B695E5F-4B28-8C58-826D-879FB6AE14BC";
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
		10 94 -32
		10 85 -44
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_02" -p "lfLegQd0_line_grp_main";
	rename -uid "67B25A48-4785-EEF7-7A47-8B82E60B62FB";
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
createNode nurbsCurve -n "lfLegQd0_line_02Shape" -p "lfLegQd0_line_02";
	rename -uid "1439CF2D-45DD-919E-22C5-63883E265EE3";
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
		10 85 -44
		10.000000000000002 52.5 -34.5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_03" -p "lfLegQd0_line_grp_main";
	rename -uid "1BFDA060-4910-630B-1D26-DA86C9594AA7";
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
createNode nurbsCurve -n "lfLegQd0_line_03Shape" -p "lfLegQd0_line_03";
	rename -uid "7544D037-4202-98EB-B211-079DCF1B25B6";
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
		10.000000000000002 52.5 -34.5
		10 20 -51
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_06" -p "lfLegQd0_line_grp_main";
	rename -uid "B07B4AED-4F47-FE02-4DEF-0FA4F2E78BF4";
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
createNode nurbsCurve -n "lfLegQd0_line_06Shape" -p "lfLegQd0_line_06";
	rename -uid "A20DE14F-4452-C9C4-805E-B38409B87564";
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
		10.000000000000002 52.5 -34.5
		9.999999999999984 52.500000000000007 -2.5000000000000004
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_04" -p "lfLegQd0_line_grp_main";
	rename -uid "08BBF648-4CAE-0E6F-3A16-B88997E37FAB";
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
createNode nurbsCurve -n "lfLegQd0_curveShape36" -p "lfLegQd0_line_04";
	rename -uid "CC169B68-4BC5-24BF-856C-18955B200640";
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
		10 20 -51
		9.9999999906678276 5.0000000000000053 -44.999999728515704
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_28" -p "lfLegQd0_line_grp_main";
	rename -uid "17717845-4593-63DF-EE50-18A599641CA7";
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
createNode nurbsCurve -n "lfLegQd0_curveShape56" -p "lfLegQd0_line_28";
	rename -uid "137F2D7D-4F09-1334-5780-7FB81519788C";
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
		9.9999999999998366 5 -38
		9.9999999906678276 5.0000000000000053 -44.999999728515704
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_29" -p "lfLegQd0_line_grp_main";
	rename -uid "6047667E-4414-D09C-B68A-B295200F03B6";
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
createNode nurbsCurve -n "lfLegQd0_curveShape57" -p "lfLegQd0_line_29";
	rename -uid "22D3DF6C-4E12-512B-7816-2ABF1B329F69";
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
		9.9999999999998366 5 -38
		9.9999999999997424 -3.5796099471722455e-29 -36
		;
createNode transform -n "lfLegQd0_line_grp_mammalFoot" -p "lfLegQd0_master_guide";
	rename -uid "4C496BAA-4C01-11D3-4DC1-46AD0B20DB37";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" -10 0 50 ;
createNode transform -n "lfLegQd0_toe_line_grp1" -p "lfLegQd0_line_grp_mammalFoot";
	rename -uid "E8E61AD3-45E1-7C40-B700-CF8CB00B431A";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "lfLegQd0_line_25" -p "lfLegQd0_toe_line_grp1";
	rename -uid "1534CD4B-4F26-28E3-3554-B1AAE88D69C9";
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
createNode nurbsCurve -n "lfLegQd0_curveShape53" -p "lfLegQd0_line_25";
	rename -uid "1682E489-4551-BCC8-7E52-4BA4741A1EAF";
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
		5.9999999999999982 15 1
		5.9999999999999991 5 5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_26" -p "lfLegQd0_toe_line_grp1";
	rename -uid "D8ADEFBB-41CA-6E6B-8031-A0A9AF3550B0";
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
createNode nurbsCurve -n "lfLegQd0_curveShape54" -p "lfLegQd0_line_26";
	rename -uid "B9DF91F4-4CAA-6217-1E25-5AA97623FAAE";
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
		5.9999999999999991 5 5
		6.0000000000000044 4.9999999999999938 12
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_27" -p "lfLegQd0_toe_line_grp1";
	rename -uid "E8038F63-42DA-97C5-6A1E-709E89D83849";
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
createNode nurbsCurve -n "lfLegQd0_curveShape55" -p "lfLegQd0_line_27";
	rename -uid "D5100F4E-410B-64DD-B8DA-A2BA55B51EB7";
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
		6.0000000000000044 4.9999999999999938 12
		5.9999999999997442 -6.2172489379008766e-15 14.000000000000012
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe_line_grp2" -p "lfLegQd0_line_grp_mammalFoot";
	rename -uid "8ABFDC75-489F-2A8F-921D-1181AFFA4BC1";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "lfLegQd0_line_21" -p "lfLegQd0_toe_line_grp2";
	rename -uid "B264F0CE-4AC0-5A2B-95BF-859120E7FFB1";
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
createNode nurbsCurve -n "lfLegQd0_curveShape49" -p "lfLegQd0_line_21";
	rename -uid "B53DA19C-4404-31A6-B343-128FEF2BC70D";
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
		7.9999999999999982 15 1
		7.9999999999999991 5 5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_22" -p "lfLegQd0_toe_line_grp2";
	rename -uid "DB8E2FBC-4FC7-09EF-A123-D38DB783C670";
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
createNode nurbsCurve -n "lfLegQd0_curveShape50" -p "lfLegQd0_line_22";
	rename -uid "62B44557-4FEB-4BAC-3129-039BA6F41590";
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
		7.9999999999999991 5 5
		8 4.9999999999999893 12
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_23" -p "lfLegQd0_toe_line_grp2";
	rename -uid "E7BA54C1-46EF-0F44-6FA9-FEB2AB272CFD";
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
createNode nurbsCurve -n "lfLegQd0_curveShape51" -p "lfLegQd0_line_23";
	rename -uid "50EAA13C-42F7-1B64-6031-B79259044AA2";
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
		8 4.9999999999999893 12
		7.9999999999997442 -1.0658141036401503e-14 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_24" -p "lfLegQd0_toe_line_grp2";
	rename -uid "A97C3318-44E8-1E82-BBB1-A2BBB5A7E337";
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
createNode nurbsCurve -n "lfLegQd0_curveShape52" -p "lfLegQd0_line_24";
	rename -uid "C5F3BBA4-424F-E814-1672-ADA8CBF70195";
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
		7.9999999999997442 -1.0658141036401503e-14 13.999999999999998
		7.9999999999997433 -1.0214051826551942e-14 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe_line_grp3" -p "lfLegQd0_line_grp_mammalFoot";
	rename -uid "6AEC566C-44BC-F078-9CF1-799BCC185BEC";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "lfLegQd0_line_17" -p "lfLegQd0_toe_line_grp3";
	rename -uid "9254A388-4F34-99DE-E268-6EB10512AB00";
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
createNode nurbsCurve -n "lfLegQd0_curveShape45" -p "lfLegQd0_line_17";
	rename -uid "2EFC7643-4475-DAB7-16D9-F6883C2B7E6E";
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
		10 15 1
		10 5 5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_18" -p "lfLegQd0_toe_line_grp3";
	rename -uid "7BAB1BFC-455D-D9CD-2641-BD98F52BA813";
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
createNode nurbsCurve -n "lfLegQd0_curveShape46" -p "lfLegQd0_line_18";
	rename -uid "3580B645-408B-2174-26DF-09BE20DCA6A1";
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
		10 5 5
		10.000000000000002 4.9999999999999929 12
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_19" -p "lfLegQd0_toe_line_grp3";
	rename -uid "EFFC4EB3-49E8-1C25-D07F-DF92F2E7AA19";
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
createNode nurbsCurve -n "lfLegQd0_curveShape47" -p "lfLegQd0_line_19";
	rename -uid "F44BF1A7-446E-BD4E-4989-7A8B17644D9D";
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
		10.000000000000002 4.9999999999999929 12
		9.9999999999997407 -7.1054273576010019e-15 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_20" -p "lfLegQd0_toe_line_grp3";
	rename -uid "E69BCE1E-4CEB-CA63-9B5A-FBB555148DD1";
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
createNode nurbsCurve -n "lfLegQd0_curveShape48" -p "lfLegQd0_line_20";
	rename -uid "9A91E93A-4E08-8EB2-2CB0-9F965C413117";
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
		9.9999999999997407 -7.1054273576010019e-15 13.999999999999998
		9.9999999999997407 -6.6613381477509392e-15 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe_line_grp4" -p "lfLegQd0_line_grp_mammalFoot";
	rename -uid "557C23B8-4A2C-F8BF-1F35-58A27EC980AB";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "lfLegQd0_line_13" -p "lfLegQd0_toe_line_grp4";
	rename -uid "94C60072-43F4-2F16-98CA-66A0F74475A8";
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
createNode nurbsCurve -n "lfLegQd0_curveShape41" -p "lfLegQd0_line_13";
	rename -uid "331FFAB8-40BD-92EF-9ABF-EC9AB9D5798F";
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
		12 15 1
		12 5 5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_14" -p "lfLegQd0_toe_line_grp4";
	rename -uid "3844C0B4-4843-E9A9-1371-899B6E744CC4";
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
createNode nurbsCurve -n "lfLegQd0_curveShape42" -p "lfLegQd0_line_14";
	rename -uid "97E94CAC-4E10-CE66-7A05-A2B98AA9E76F";
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
		12 5 5
		12 4.9999999999999956 12
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_15" -p "lfLegQd0_toe_line_grp4";
	rename -uid "4923E6BE-4782-4070-EBEE-5897D53ECFE2";
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
createNode nurbsCurve -n "lfLegQd0_curveShape43" -p "lfLegQd0_line_15";
	rename -uid "9E007C38-49EF-FC4B-996C-378324F9C835";
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
		12 4.9999999999999956 12
		11.999999999999737 -4.4408920985006262e-15 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_16" -p "lfLegQd0_toe_line_grp4";
	rename -uid "6C416376-47D4-0278-4D88-DCAF153F3FB7";
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
createNode nurbsCurve -n "lfLegQd0_curveShape44" -p "lfLegQd0_line_16";
	rename -uid "D253DAD6-4C09-E2EE-BE87-7AAEF9F10BD0";
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
		11.999999999999737 -4.4408920985006262e-15 13.999999999999998
		11.999999999999735 -3.9968028886500595e-15 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe_line_grp5" -p "lfLegQd0_line_grp_mammalFoot";
	rename -uid "343BD720-4CE6-B554-BD19-0D851F5DCFCB";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "lfLegQd0_line_09" -p "lfLegQd0_toe_line_grp5";
	rename -uid "EAE689B2-43BA-E4ED-F7C4-79815691DDDD";
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
createNode nurbsCurve -n "lfLegQd0_curveShape37" -p "lfLegQd0_line_09";
	rename -uid "66E01E8F-4BA2-C364-2CB7-21A6655BD678";
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
		14 15 1
		14 5 5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_10" -p "lfLegQd0_toe_line_grp5";
	rename -uid "7B585763-4498-5EBE-D603-F280A808909B";
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
createNode nurbsCurve -n "lfLegQd0_curveShape38" -p "lfLegQd0_line_10";
	rename -uid "82501E65-482C-40E3-81A6-03B77EB769EC";
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
		14 5 5
		14 4.9999999999999947 12
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_11" -p "lfLegQd0_toe_line_grp5";
	rename -uid "10A2C48C-4A62-B540-DF13-F78FDAE77643";
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
createNode nurbsCurve -n "lfLegQd0_curveShape39" -p "lfLegQd0_line_11";
	rename -uid "9ED9A781-4200-EA86-DDF3-A2813E9019F6";
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
		14 4.9999999999999947 12
		13.999999999999748 -5.3290705182007514e-15 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_12" -p "lfLegQd0_toe_line_grp5";
	rename -uid "5D89ED4E-455F-BCCC-A3B1-6582BDB9BCDB";
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
createNode nurbsCurve -n "lfLegQd0_curveShape40" -p "lfLegQd0_line_12";
	rename -uid "DEB309B1-44E6-5DF9-E098-CCA467DB1572";
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
		13.999999999999748 -5.3290705182007514e-15 13.999999999999998
		13.999999999999741 -4.8849813083501839e-15 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_grp_dual" -p "lfLegQd0_master_guide";
	rename -uid "15FFCA08-47BF-E327-016C-6C800E9F9233";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 21;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" -10 0 50 ;
createNode transform -n "lfLegQd0_line_07" -p "lfLegQd0_line_grp_dual";
	rename -uid "7E5A3199-4AE7-23F9-ED0C-8DB692615410";
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
createNode nurbsCurve -n "lfLegQd0_line_07Shape" -p "lfLegQd0_line_07";
	rename -uid "E91ABF04-48B1-89AE-7FF8-19B952AC3A53";
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
		15.000000000000002 48.041666153709095 13.236538201113847
		15 20 -0.99999999999999856
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_08" -p "lfLegQd0_line_grp_dual";
	rename -uid "EEE2A9A3-4E5D-928E-6E37-679EAA4DFCE5";
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
createNode nurbsCurve -n "lfLegQd0_line_08Shape" -p "lfLegQd0_line_08";
	rename -uid "7B15316E-4FE6-FAFA-4D52-2E9FB7084A63";
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
		5 20 -1.0000000000000007
		5.0000000000000018 48.041666153709095 13.236538201113849
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "lfLegQd0_master_guideShape" -p "lfLegQd0_master_guide";
	rename -uid "C913FA22-43AF-228D-62CE-85AB26F12739";
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
createNode transform -n "lfLegQd0_line_grp_birdFoot" -p "lfLegQd0_master_guide";
	rename -uid "1A345044-41E2-210B-8CFC-2393266AFA87";
	setAttr ".t" -type "double3" -10 0 0 ;
createNode transform -n "lfLegQd0_group_toe_0" -p "lfLegQd0_line_grp_birdFoot";
	rename -uid "BEC935BF-40F6-56DD-441E-9C9BE66E8DC9";
createNode transform -n "lfLegQd0_line_42" -p "lfLegQd0_group_toe_0";
	rename -uid "757B7577-485C-2CA7-1404-D88C68E54DD7";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape70" -p "lfLegQd0_line_42";
	rename -uid "5D68727E-4622-BED8-F952-3D925F40B36D";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 0 4
		10 0 2.5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_43" -p "lfLegQd0_group_toe_0";
	rename -uid "30645392-4855-E016-119A-8197E6D93FFC";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape71" -p "lfLegQd0_line_43";
	rename -uid "3D9DD3B4-4070-801C-2F7E-9AAED5BDCA3E";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 0 2.5
		10 0 -0.5
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_group_toe_1" -p "lfLegQd0_line_grp_birdFoot";
	rename -uid "22B02B0A-44C7-2707-2A60-C5B508442464";
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_group_toe_1";
	rename -uid "BB2BAF4C-41DA-175C-7225-8DAD9C7560C0";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape58" -p "lfLegQd0_line_30";
	rename -uid "453AF11E-4999-4003-C461-F2865E7CAE53";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		4.0500000000000007 0 14.573651497465946
		5.7000000000000002 0 11.715767664977296
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_31" -p "lfLegQd0_group_toe_1";
	rename -uid "44FBCA49-4546-C893-D198-77847C2AB6E4";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape59" -p "lfLegQd0_line_31";
	rename -uid "92B469D0-44C3-6BDC-0BDB-19BBF1A251BB";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		5.7000000000000002 0 11.715767664977296
		7.3500000000000005 0 8.857883832488648
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_32" -p "lfLegQd0_group_toe_1";
	rename -uid "7834F06D-4D8B-89BF-EEBB-CFBD2DEB33C2";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape60" -p "lfLegQd0_line_32";
	rename -uid "67BC81AD-4113-9429-7E0E-9A8D60D2D60D";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		7.3500000000000005 0 8.857883832488648
		9 0 6
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_group_toe_2" -p "lfLegQd0_line_grp_birdFoot";
	rename -uid "8FB9A82A-4E8C-17D6-E084-26B346C30DF5";
createNode transform -n "lfLegQd0_line_33" -p "lfLegQd0_group_toe_2";
	rename -uid "4E341291-4E3B-3184-BCBB-55B7F0DB868C";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape61" -p "lfLegQd0_line_33";
	rename -uid "DDA9F470-41C4-3B4C-BB7E-F79C54AF526B";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 0 7
		10 0 10
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_34" -p "lfLegQd0_group_toe_2";
	rename -uid "FCFA2DE8-4E87-8847-691A-E48C4DDD29C5";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape62" -p "lfLegQd0_line_34";
	rename -uid "4C611914-4C2B-1C6B-4870-709AC18FB54D";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 0 10
		10 0 13
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_35" -p "lfLegQd0_group_toe_2";
	rename -uid "9B578377-4655-CECD-05BA-27BC335BA02F";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape63" -p "lfLegQd0_line_35";
	rename -uid "BBF729F1-4691-7F3E-9612-55B338CC529F";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 0 13
		10 0 16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_36" -p "lfLegQd0_group_toe_2";
	rename -uid "0A577698-47A0-31EC-45F6-91A7FB442331";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape64" -p "lfLegQd0_line_36";
	rename -uid "72222948-46E1-1467-2598-97A60F169D06";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 0 16
		10 0 19
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_group_toe_3" -p "lfLegQd0_line_grp_birdFoot";
	rename -uid "196863B6-4BE2-C6E7-54FB-439EB7CEE8C9";
createNode transform -n "lfLegQd0_line_37" -p "lfLegQd0_group_toe_3";
	rename -uid "F8F3DD66-4202-2D21-6801-1D9ABF4BFB20";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape65" -p "lfLegQd0_line_37";
	rename -uid "B0BE8A0B-49CA-C889-3A2E-4E862D629DC8";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		11 0 6
		12 0 7.7320508075688776
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_38" -p "lfLegQd0_group_toe_3";
	rename -uid "DC96B106-4179-3D37-A6AA-A28D6CC02798";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape66" -p "lfLegQd0_line_38";
	rename -uid "90D4BA49-4B33-5016-44F5-2CADFE77E54F";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12 0 7.7320508075688776
		13 0 9.4641016151377553
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_39" -p "lfLegQd0_group_toe_3";
	rename -uid "0FE794B3-4E8D-D9EA-A708-CD90EAA1BCDB";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape67" -p "lfLegQd0_line_39";
	rename -uid "33AA0ED3-4B6C-3AB2-972C-6FA29DFA63D8";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		13 0 9.4641016151377553
		14 0 11.196152422706632
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_40" -p "lfLegQd0_group_toe_3";
	rename -uid "B0D81243-41D2-30B2-CE92-519C31EB1C67";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape68" -p "lfLegQd0_line_40";
	rename -uid "B7265C90-4AC3-02E1-FB9A-0ABBC2F7FFDB";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14 0 11.196152422706632
		14.999999999999998 0 12.928203230275511
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_line_41" -p "lfLegQd0_group_toe_3";
	rename -uid "8AD41745-48D4-A5D8-CEEC-F5BFCB3CFFB7";
	setAttr ".it" no;
createNode nurbsCurve -n "lfLegQd0_curveShape69" -p "lfLegQd0_line_41";
	rename -uid "441D2212-4176-D1A2-60CE-518AF467CDBA";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14.999999999999998 0 12.928203230275511
		16.000000000000004 0 14.660254037844386
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toeBird_guide_grp_ofs" -p "lfLegQd0_master_guide";
	rename -uid "B2CD39A0-43A7-9041-6E5A-E6B3AB6E73DB";
	setAttr ".t" -type "double3" -10 0 0 ;
createNode transform -n "lfLegQd0_toeBird_guide_grp" -p "lfLegQd0_toeBird_guide_grp_ofs";
	rename -uid "E7A2AE4F-464E-2C90-447D-6893FD62E998";
	setAttr ".t" -type "double3" 10 0 5 ;
createNode transform -n "lfLegQd0_toeBird_guide" -p "lfLegQd0_toeBird_guide_grp";
	rename -uid "2205EE27-4DCE-B70B-DED2-EC8052C1F7A4";
createNode transform -n "lfLegQd0_toeBird00_1_guide_ofs" -p "lfLegQd0_toeBird_guide";
	rename -uid "65F3A477-450B-CF11-BB80-C5801034B3F0";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "lfLegQd0_toe0_up_guide" -p "lfLegQd0_toeBird00_1_guide_ofs";
	rename -uid "49BD65D4-41D7-7953-7F77-E4B2E7D6A198";
createNode transform -n "lfLegQd0_toe0_mid_guide" -p "lfLegQd0_toe0_up_guide";
	rename -uid "36FC532E-49E4-EF0C-E3F2-3DB6CA2673CB";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 1.5 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe0_mid_guideShape" -p "lfLegQd0_toe0_mid_guide";
	rename -uid "D7CD26C7-4900-BB93-6042-9588F74B430C";
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
createNode transform -n "lfLegQd0_toe0_low_guide" -p "lfLegQd0_toe0_mid_guide";
	rename -uid "076F478E-44FE-E927-498E-E3AA1B21081D";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe0_low_guideShape" -p "lfLegQd0_toe0_low_guide";
	rename -uid "56B6BCD9-4D90-CF51-8006-47A825703A69";
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
createNode transform -n "lfLegQd0_toe0_end_guide" -p "lfLegQd0_toe0_low_guide";
	rename -uid "40426256-489F-ABAC-2E31-36AFAAD524E1";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe0_end_guideShape" -p "lfLegQd0_toe0_end_guide";
	rename -uid "341C23D9-4BAC-D515-9B93-20809FC96B32";
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
createNode nurbsCurve -n "lfLegQd0_toe0_up_guideShape" -p "lfLegQd0_toe0_up_guide";
	rename -uid "A79F0AEB-4AF1-48DD-B087-D9BD06988AA5";
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
		0.15741653748833465 0.0010704445205455542 6.2864225933857744e-09
		0.14584355713531444 -0.059251710344982889 6.2864225933857744e-09
		0.1120671902855781 -0.11055329186321704 6.2864225933857744e-09
		0.061229776731452218 -0.14502406495600936 6.2864225933857744e-09
		0.0010704023330459769 -0.1574163265508367 6.2864225933857744e-09
		-0.059251499407484996 -0.14584334619781653 6.2864225933857744e-09
		-0.11055318639446814 -0.11206708481682913 6.2864225933857744e-09
		-0.14502395948726038 -0.061229565793954346 6.2864225933857744e-09
		-0.1574163265508367 -0.0010704550674204495 6.2864225933857744e-09
		-0.14584334619781653 0.059251710344982889 6.2864225933857744e-09
		-0.11206697934808019 0.11055329186321704 6.2864225933857744e-09
		-0.061229565793954346 0.14502406495600936 6.2864225933857744e-09
		0 0.1574163265508367 0
		0.059251710344982889 0.14584334619781653 6.2864225933857744e-09
		0.11055339733196602 0.11206708481682913 6.2864225933857744e-09
		0.14502417042475824 0.061229565793954346 6.2864225933857744e-09
		0.15741653748833465 0.0010704445205455542 6.2864225933857744e-09
		0.14543391651441084 0.00098895936511040629 0.060242061897579365
		0.11131034654314653 0.0007569154611808454 0.11131277232437226
		0.060240690803843089 0.00040963640215363603 0.14543708057687912
		0 0 0.15742001795704977
		-0.060240479866345203 -0.00040965116777848829 0.14543708057687912
		-0.11131024107439758 -0.00075693022680569776 0.11131277232437226
		-0.14543370557691293 -0.00098897413073525888 0.060242061897579365
		-0.1574163265508367 -0.0010704550674204495 6.2864225933857744e-09
		-0.14543370557691293 -0.00098897413073525888 -0.060242061897579365
		-0.11131024107439758 -0.00075693022680569776 -0.11131277232437226
		-0.060240479866345203 -0.00040965116777848829 -0.14543708057687912
		0 -7.4584440660405588e-09 -0.15742001795704977
		0.060240690803843089 0.00040963640215363603 -0.14543708057687912
		0.11131034654314653 0.0007569154611808454 -0.11131277232437226
		0.14543391651441084 0.00098895936511040629 -0.060242061897579365
		0.15741653748833465 0.0010704445205455542 6.2864225933857744e-09
		0.14543391651441084 0.00098895936511040629 0.060242061897579365
		0.11131034654314653 0.0007569154611808454 0.11131277232437226
		0.060240690803843089 0.00040963640215363603 0.14543708057687912
		0 0 0.15742001795704977
		0 -0.06054169861333298 0.146160596194644
		0 -0.11186648325633515 0.11186648325633515
		0 -0.146160596194644 0.06054169861333298
		0.0010704023330459769 -0.1574163265508367 6.2864225933857744e-09
		0 -0.146160596194644 -0.06054169861333298
		0 -0.11186648325633515 -0.11186648325633515
		0 -0.06054169861333298 -0.146160596194644
		0 -7.4584440660405588e-09 -0.15742001795704977
		0 0.06054169861333298 -0.146160596194644
		0 0.11186648325633515 -0.11186648325633515
		0 0.146160596194644 -0.06054169861333298
		0 0.1574163265508367 0
		0 0.146160596194644 0.06054169861333298
		0 0.11186648325633515 0.11186648325633515
		0 0.06054169861333298 0.146160596194644
		0 0 0.15742001795704977
		0 0 0.6328125
		0 0 1.1711366400095347e-08
		0 1.265625 0
		0 -1.265625 0
		0 0 -1.1711366400095347e-08
		0 0 -1.1711366400095347e-08
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toeBird01_1_guide_ofs" -p "lfLegQd0_toeBird_guide";
	rename -uid "0854953D-43B0-F2A7-8D4D-53BD01BDC87F";
	setAttr ".t" -type "double3" -1 0 1 ;
	setAttr ".r" -type "double3" 0 -29.999999999999996 0 ;
createNode transform -n "lfLegQd0_toe1_up_guide" -p "lfLegQd0_toeBird01_1_guide_ofs";
	rename -uid "59DDD72A-4568-695B-24E8-9492EEBF34E5";
createNode transform -n "lfLegQd0_toe1_mid_guide" -p "lfLegQd0_toe1_up_guide";
	rename -uid "5916D656-4317-3E69-8CF4-D7B7DF443BE3";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3.3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe1_mid_guideShape" -p "lfLegQd0_toe1_mid_guide";
	rename -uid "CEC526BD-4DC4-321F-F050-31A93530E27B";
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
createNode transform -n "lfLegQd0_toe1_low_guide" -p "lfLegQd0_toe1_mid_guide";
	rename -uid "5322101F-46EC-BAA4-135F-E388A9B8D21E";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3.3000000000000007 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe1_low_guideShape" -p "lfLegQd0_toe1_low_guide";
	rename -uid "94637956-4FB1-4D9B-3984-8AB318FE86A9";
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
createNode transform -n "lfLegQd0_toe1_end_guide" -p "lfLegQd0_toe1_low_guide";
	rename -uid "2E3E819C-4A39-D7F5-4300-10987B94C544";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.3000000000000025 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe1_end_guideShape" -p "lfLegQd0_toe1_end_guide";
	rename -uid "ACCF5D52-4CF8-41CF-08B6-67B41BD93B0B";
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
createNode transform -n "lfLegQd0_toeBird02_1_guide_ofs" -p "lfLegQd0_toeBird_guide";
	rename -uid "97B37712-4268-8F6B-25DC-5799116CC42C";
	setAttr ".t" -type "double3" 0 0 2 ;
createNode transform -n "lfLegQd0_toe2_up_guide" -p "lfLegQd0_toeBird02_1_guide_ofs";
	rename -uid "3E550680-44F2-436E-C774-0A894C6E7523";
createNode transform -n "lfLegQd0_toe2_mid_guide" -p "lfLegQd0_toe2_up_guide";
	rename -uid "8BA94CC6-41F3-1451-1A0E-33B3710DF4CC";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe2_mid_guideShape" -p "lfLegQd0_toe2_mid_guide";
	rename -uid "9629F0E4-492F-8816-1999-E19B43F4A7AA";
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
createNode transform -n "lfLegQd0_toe2_mid2_guide" -p "lfLegQd0_toe2_mid_guide";
	rename -uid "04191691-4242-4288-355F-3893C3464316";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe2_mid2_guideShape" -p "lfLegQd0_toe2_mid2_guide";
	rename -uid "530FA9BB-4DAA-CD01-E912-5CA8C18247CD";
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
createNode transform -n "lfLegQd0_toe2_low_guide" -p "lfLegQd0_toe2_mid2_guide";
	rename -uid "1F5414A2-434F-282E-55AF-6CA6EBDA5C23";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe2_low_guideShape" -p "lfLegQd0_toe2_low_guide";
	rename -uid "B7F76F5F-4135-CBDE-1B39-7AA0BD1FD212";
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
createNode transform -n "lfLegQd0_toe2_end_guide" -p "lfLegQd0_toe2_low_guide";
	rename -uid "BA3DF6B5-42B9-C458-5293-CCA7C56CE9CD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe2_end_guideShape" -p "lfLegQd0_toe2_end_guide";
	rename -uid "D6C0BFE5-4AAE-DF91-AD9F-F8A72D428B7A";
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
createNode transform -n "lfLegQd0_toeBird03_1_guide_ofs" -p "lfLegQd0_toeBird_guide";
	rename -uid "4E69C1CB-4D8B-4D41-8D82-ECA4043077E2";
	setAttr ".t" -type "double3" 1 0 1 ;
	setAttr ".r" -type "double3" 0 29.999999999999996 0 ;
createNode transform -n "lfLegQd0_toe3_up_guide" -p "lfLegQd0_toeBird03_1_guide_ofs";
	rename -uid "15D01E13-439A-59E2-EDE3-D1975FC36855";
createNode transform -n "lfLegQd0_toe3_mid_guide" -p "lfLegQd0_toe3_up_guide";
	rename -uid "71DFC3E8-470B-15AD-BDA9-D681518ED595";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe3_mid_guideShape" -p "lfLegQd0_toe3_mid_guide";
	rename -uid "E7905F59-4C0B-5481-CBB2-58804FA373B9";
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
createNode transform -n "lfLegQd0_toe3_mid2_guide" -p "lfLegQd0_toe3_mid_guide";
	rename -uid "39BE8CE5-4359-ACDE-3351-2592A3E421AD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe3_mid2_guideShape" -p "lfLegQd0_toe3_mid2_guide";
	rename -uid "B8DC586C-4A26-D19F-C1B0-979697297E6F";
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
createNode transform -n "lfLegQd0_toe3_mid3_guide" -p "lfLegQd0_toe3_mid2_guide";
	rename -uid "828B677A-4F0B-A1FF-5AAD-4DAC7225D785";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe3_mid3_guideShape" -p "lfLegQd0_toe3_mid3_guide";
	rename -uid "B3F42A19-4F8C-54BE-A730-589BD1EE45A8";
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
createNode transform -n "lfLegQd0_toe3_low_guide" -p "lfLegQd0_toe3_mid3_guide";
	rename -uid "7BE4576E-480C-5DBC-1F6D-3DA43AC334F8";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe3_low_guideShape" -p "lfLegQd0_toe3_low_guide";
	rename -uid "F506925A-4386-AD70-905E-DFBFAB2FB457";
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
createNode transform -n "lfLegQd0_toe3_end_guide" -p "lfLegQd0_toe3_low_guide";
	rename -uid "E58F9ACC-4CCA-1C23-42CA-1AAE60BF6D41";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 0 2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "lfLegQd0_toe3_end_guideShape" -p "lfLegQd0_toe3_end_guide";
	rename -uid "507326A4-4E93-14B6-5872-1FB3123A121F";
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
createNode nurbsCurve -n "lfLegQd0_toeBird_guideShape" -p "lfLegQd0_toeBird_guide";
	rename -uid "89874FF1-4D39-9011-9594-65882FC61907";
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
createNode transform -n "lfLegQd0_toesRoot_guide" -p "lfLegQd0_master_guide";
	rename -uid "FAD61014-4212-BFDC-483A-B791B97B5C59";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -dv 1 -at "double";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 4.4408920985006252e-16 4.4408920985006262e-16 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr -l on ".wsMirror";
createNode locator -n "lfLegQd0_toesRoot_guideShape" -p "lfLegQd0_toesRoot_guide";
	rename -uid "115B6863-4627-B325-F15D-3990C28090FE";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "rtLegQd0_master_guide" -p "GUIDES";
	rename -uid "8ED04A1D-4588-BF0A-560C-9BA77318D92C";
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
	setAttr ".t" -type "double3" -10 0 -50 ;
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
	setAttr ".rigID" -type "string" "rtLegQd0";
	setAttr ".rigClass" -type "string" "LegQd";
createNode transform -n "rtLegQd0_hip_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "946C11C9-4F4B-BCFB-091B-CB8F9ED7FC55";
	setAttr ".t" -type "double3" 0 94 18 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "rtLegQd0_hip_guide" -p "rtLegQd0_hip_guide_ofs";
	rename -uid "32CE0303-4832-F3CD-5FF0-879D8D6C1D05";
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
createNode aimConstraint -n "rtLegQd0_hip_guide_aimConstraint1" -p "rtLegQd0_hip_guide";
	rename -uid "CF08ACBA-4119-E422-D958-60823DCE6EED";
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
createNode nurbsCurve -n "rtLegQd0_hip_guideShape" -p "rtLegQd0_hip_guide";
	rename -uid "B124AD2C-42F3-D826-7862-84B16C4C5946";
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
createNode transform -n "rtLegQd0_upr_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "B90CCE34-4512-484A-4676-23A10AD7741A";
	setAttr ".t" -type "double3" 0 85 6 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_upr_guide" -p "rtLegQd0_upr_guide_ofs";
	rename -uid "4F56C284-4926-4BBD-69F1-BCA16A0AC358";
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
createNode aimConstraint -n "rtLegQd0_upr_guide_aimConstraint1" -p "rtLegQd0_upr_guide";
	rename -uid "3ABC6AEE-47CA-01B7-3030-799457B6B1B1";
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
createNode transform -n "rtLegQd0_scap_guide_ofs" -p "rtLegQd0_upr_guide";
	rename -uid "87C5870E-49A8-15CD-50C0-37BAA8D1F1CF";
	setAttr ".t" -type "double3" 3.0000000000000142 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999944 ;
createNode transform -n "rtLegQd0_lwr_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "9ADAEA31-4EE1-CA03-0752-47AF37039289";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "rtLegQd0_lwr_guide_ofs_pointConstraint1" -p "rtLegQd0_lwr_guide_ofs";
	rename -uid "E1C0D8B6-4365-7B46-9C95-F2A8B728B27E";
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
createNode transform -n "rtLegQd0_lwr_guide" -p "rtLegQd0_lwr_guide_ofs";
	rename -uid "6487D083-40CD-ABFF-9D2F-1ABF546A01EE";
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
createNode aimConstraint -n "rtLegQd0_lwr_guide_aimConstraint1" -p "rtLegQd0_lwr_guide";
	rename -uid "C452B32C-4822-34EE-2153-E1ADC2235926";
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
createNode transform -n "rtLegQd0_patella_guide" -p "rtLegQd0_lwr_guide";
	rename -uid "22E4F07E-42B9-49C0-D147-D5A28CF5898F";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012543e-16 ;
	setAttr ".rpt" -type "double3" 4.21462170084871e-17 8.8817841970012523e-16 -1.000533584333026e-18 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 1.9721522630525304e-31 ;
createNode nurbsCurve -n "rtLegQd0_patella_guideShape" -p "rtLegQd0_patella_guide";
	rename -uid "5D3D19E0-4BC4-9A97-8868-FCB0D394F41B";
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
createNode transform -n "rtLegQd0_radius_guide_ZRO" -p "rtLegQd0_lwr_guide";
	rename -uid "B3692E5C-4836-870A-CD9A-FFB4A7D155AD";
	setAttr ".t" -type "double3" -5.0000006668200356 -5 2.6846203394220945e-08 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "rtLegQd0_radius_guide" -p "rtLegQd0_radius_guide_ZRO";
	rename -uid "73A07819-47DA-3151-C057-CFB613753D89";
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
createNode aimConstraint -n "rtLegQd0_radius_guide_aimConstraint1" -p "rtLegQd0_radius_guide";
	rename -uid "05E221C4-4D42-978B-C913-0C97ECA2A6E9";
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
createNode nurbsCurve -n "rtLegQd0_ulna_guideShape" -p "rtLegQd0_radius_guide";
	rename -uid "D5F45CF3-4DA4-53BB-F12E-128FE7667F4F";
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
createNode transform -n "rtLegQd0_ulna_guide_ZRO" -p "rtLegQd0_lwr_guide";
	rename -uid "4A8BE4D0-411F-0945-C8CD-D4889B5FB5A8";
	setAttr ".t" -type "double3" -5.0000006668200356 5 2.684620117502556e-08 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ulna_guide" -p "rtLegQd0_ulna_guide_ZRO";
	rename -uid "94EFACA4-4BB5-0F6A-C69E-28986B903066";
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
createNode aimConstraint -n "rtLegQd0_ulna_guide_aimConstraint1" -p "rtLegQd0_ulna_guide";
	rename -uid "E046A3B2-4D0B-7296-7774-97B3FDA1A255";
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
createNode transform -n "rtLegQd0_palm_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "49C0C4BD-41F4-029A-29E0-FFA9D3B7504A";
	setAttr ".t" -type "double3" 0 20 -1 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "rtLegQd0_palm_guide" -p "rtLegQd0_palm_guide_ofs";
	rename -uid "65871500-4DEE-90D0-E362-AEB47FE6EB51";
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
createNode transform -n "rtLegQd0_radiusEnd_guide_ZRO" -p "rtLegQd0_palm_guide";
	rename -uid "5D6CF37E-4C76-0798-8ECD-3A801C413F72";
	setAttr ".t" -type "double3" 0 -5 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000018 1.0000000000000009 ;
createNode transform -n "rtLegQd0_radiusEnd_guide" -p "rtLegQd0_radiusEnd_guide_ZRO";
	rename -uid "1645900E-42A6-7F70-2F4F-5687E8BBDA87";
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
createNode aimConstraint -n "rtLegQd0_radiusEnd_guide_aimConstraint1" -p "rtLegQd0_radiusEnd_guide";
	rename -uid "7196256D-4916-FDE5-0EC2-B1BE3568D960";
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
createNode transform -n "rtLegQd0_ulnaEnd_guide_ZRO" -p "rtLegQd0_palm_guide";
	rename -uid "CA5171CA-4C4C-417A-E0C0-3E9FB654F0C7";
	setAttr ".t" -type "double3" 0 5 6.1232339957367604e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000018 1.0000000000000009 ;
createNode transform -n "rtLegQd0_ulnaEnd_guide" -p "rtLegQd0_ulnaEnd_guide_ZRO";
	rename -uid "2A4DF7AA-4241-D848-7A05-33A3F6865EC7";
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
createNode aimConstraint -n "rtLegQd0_ulnaEnd_guide_aimConstraint1" -p "rtLegQd0_ulnaEnd_guide";
	rename -uid "67494BCF-424F-D8B0-C578-1BB50D7BA3E5";
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
createNode transform -n "rtLegQd0_carpal_guide" -p "rtLegQd0_palm_guide";
	rename -uid "BA48DF3F-41DA-2551-6FCB-36862450AA38";
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
createNode nurbsCurve -n "rtLegQd0_carpal_guideShape" -p "rtLegQd0_carpal_guide";
	rename -uid "440E8904-4AD8-11A4-E758-0CB35781629D";
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
createNode transform -n "rtLegQd0_ball_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "4B149115-486E-74D8-BB0E-37A87CC9C3D1";
	setAttr ".t" -type "double3" 2.0146931650783329e-16 5 12 ;
	setAttr ".r" -type "double3" 3.9756933518293952e-15 0 90.000000000000028 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
createNode transform -n "rtLegQd0_ball_guide" -p "rtLegQd0_ball_guide_ofs";
	rename -uid "48B2BC0E-4F97-2975-057A-5F9ADC63944D";
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
createNode aimConstraint -n "rtLegQd0_ball_guide_aimConstraint1" -p "rtLegQd0_ball_guide";
	rename -uid "843783B7-4494-CB17-3ACD-43B668315494";
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
createNode transform -n "rtLegQd0_tip_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "98770588-42EC-8EA7-FDAC-C7AE36706AB6";
	setAttr ".t" -type "double3" 0 0 14 ;
	setAttr ".r" -type "double3" 0 90 90 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd0_tip_guide" -p "rtLegQd0_tip_guide_ofs";
	rename -uid "4EE2BEF0-4EBC-8F55-7F40-13816BF540E1";
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
createNode transform -n "rtLegQd0_palm_inPos_ofs" -p "rtLegQd0_master_guide";
	rename -uid "388505C5-414B-42CE-FAAF-578A515F80F7";
createNode transform -n "rtLegQd0_palm_inPos_guide" -p "rtLegQd0_palm_inPos_ofs";
	rename -uid "262488AB-467D-B8FA-A34B-B6AA8C8AC3B5";
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
createNode nurbsCurve -n "rtLegQd0_palm_toePos_guideShape" -p "rtLegQd0_palm_inPos_guide";
	rename -uid "D07B0A7E-4364-5562-A6A8-6EA14C37A48D";
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
createNode transform -n "rtLegQd0_palm_outPos_ofs" -p "rtLegQd0_master_guide";
	rename -uid "37BC2F9F-4512-5E71-2904-D1BA93FE760E";
createNode transform -n "rtLegQd0_palm_outPos_guide" -p "rtLegQd0_palm_outPos_ofs";
	rename -uid "1C74AAB4-4AD1-F22E-6B3D-2D882E163D79";
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
createNode transform -n "rtLegQd0_palm_heelPos_ofs" -p "rtLegQd0_master_guide";
	rename -uid "4595AD68-4C06-02BA-6EF6-CD8863EA3791";
createNode transform -n "rtLegQd0_palm_heelPos_guide" -p "rtLegQd0_palm_heelPos_ofs";
	rename -uid "B579623E-4E21-504F-938D-58A4CC4F40A6";
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
createNode transform -n "rtLegQd0_palm_toePos_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "4F2FD1F0-48C6-5239-9694-AB9EECFA5C11";
createNode transform -n "rtLegQd0_palm_toePos_guide" -p "rtLegQd0_palm_toePos_guide_ofs";
	rename -uid "C308FDF5-4B6E-CD29-01AA-81A82F0BA572";
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
createNode transform -n "rtLegQd0_pv_loc_ofs" -p "rtLegQd0_master_guide";
	rename -uid "0D1EF53A-4941-36BA-A9CA-0695C296B3A5";
createNode pointConstraint -n "rtLegQd0_pv_loc_ofs_pointConstraint1" -p "rtLegQd0_pv_loc_ofs";
	rename -uid "9EC43134-4455-7E7C-321B-08942328BD4A";
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
createNode transform -n "rtLegQd0_pv_loc" -p "rtLegQd0_pv_loc_ofs";
	rename -uid "EC5FA0F3-4FC8-528A-DCA1-5EB1485CE245";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "rtLegQd0_pv_locShape" -p "rtLegQd0_pv_loc";
	rename -uid "7373F19F-4634-F6D6-F540-F09610ADA421";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode aimConstraint -n "rtLegQd0_pv_loc_aimConstraint1" -p "rtLegQd0_pv_loc";
	rename -uid "C3B6EB1D-491D-6E58-CE95-A2B28C61C64B";
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
createNode transform -n "rtLegQd0_pvc_guide_ofs" -p "rtLegQd0_pv_loc";
	rename -uid "34AEBDCB-4EDD-9175-4D6B-228E8D3ED9EB";
	setAttr ".t" -type "double3" 45 0 1.0122718478325402e-12 ;
	setAttr ".r" -type "double3" 0 89.999999999999588 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc_guide" -p "rtLegQd0_pvc_guide_ofs";
	rename -uid "52CE5A60-44CB-1AF2-B9DA-AAB527A5711F";
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
createNode transform -n "rtLegQd0_digit_guide_ofs" -p "rtLegQd0_master_guide";
	rename -uid "A21636F9-4DB4-EE0B-DE26-82B77CD4D06E";
	setAttr ".t" -type "double3" 1.4111453853770693e-14 5 5 ;
	setAttr ".r" -type "double3" 0 90 90.000000000000028 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
createNode transform -n "rtLegQd0_digit_guide" -p "rtLegQd0_digit_guide_ofs";
	rename -uid "91D7E101-43EF-A1E8-FD00-A18C08E2D4DB";
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
createNode aimConstraint -n "rtLegQd0_digit_guide_aimConstraint1" -p "rtLegQd0_digit_guide";
	rename -uid "769FBFAD-4CBB-63F9-9940-239F78795C78";
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
createNode transform -n "rtLegQd0_toe_guide_grp" -p "rtLegQd0_master_guide";
	rename -uid "5284E9B0-4901-0538-92D1-3EBB66DAE616";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "rtLegQd0_toe_main_2_guide_ofs" -p "rtLegQd0_toe_guide_grp";
	rename -uid "B3078B67-4B79-B326-11B9-C2898B6B841E";
	setAttr ".t" -type "double3" 0 0 -5 ;
createNode transform -n "rtLegQd0_toeMain_guide" -p "rtLegQd0_toe_main_2_guide_ofs";
	rename -uid "AB280294-4520-38C3-726E-C28014847B8A";
	setAttr ".t" -type "double3" 0 -5 0 ;
createNode transform -n "rtLegQd0_toe2_2_guide_ofs" -p "rtLegQd0_toeMain_guide";
	rename -uid "42D120ED-4F1B-9E9B-249A-91B335D3516C";
createNode transform -n "rtLegQd0_toe2_2_guide" -p "rtLegQd0_toe2_2_guide_ofs";
	rename -uid "3D35DB5A-44FE-B877-CD57-35888BA67C16";
createNode nurbsCurve -n "rtLegQd0_toe1_2_guideShape" -p "rtLegQd0_toe2_2_guide";
	rename -uid "81DB8249-4620-E08F-32D9-F0A7DEC8E92B";
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
createNode transform -n "rtLegQd0_toe2_1_guide" -p "rtLegQd0_toe2_2_guide";
	rename -uid "E7FB57AA-4BC3-C0A8-C128-439F27E9BD45";
	setAttr ".t" -type "double3" 0 -10 4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe3_1_guideShape" -p "rtLegQd0_toe2_1_guide";
	rename -uid "9BBC9815-492B-2116-4C14-FAA0EE659386";
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
createNode transform -n "rtLegQd0_toe2_3_guide" -p "rtLegQd0_toe2_2_guide";
	rename -uid "688469BD-462B-B81F-5D72-929AF61F1D9D";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 5.3290705182007514e-15 -7 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe2_4_guide" -p "rtLegQd0_toe2_3_guide";
	rename -uid "874ED7BB-4645-477B-2F62-D38CA24B9876";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -1.9999999999999982 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe2_5_guide" -p "rtLegQd0_toe2_4_guide";
	rename -uid "D5A3D4B7-4B4E-347D-7BF5-29B01453D276";
	setAttr ".t" -type "double3" 0 4.4408920985006341e-16 -2 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe1_2_guide_ofs" -p "rtLegQd0_toeMain_guide";
	rename -uid "152AF406-4576-2C99-ACEF-418A469AFD06";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "rtLegQd0_toe1_2_guide" -p "rtLegQd0_toe1_2_guide_ofs";
	rename -uid "BFC3297F-4490-E356-6DBC-29B3D11DB9F0";
createNode transform -n "rtLegQd0_toe1_3_guide" -p "rtLegQd0_toe1_2_guide";
	rename -uid "7468BFB1-414A-991A-BA0A-14B7A7A1226A";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 -7 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe1_4_guide" -p "rtLegQd0_toe1_3_guide";
	rename -uid "864211B3-45A6-C788-37BD-B4933061E423";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -1.9999999999999982 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe1_5_guide" -p "rtLegQd0_toe1_4_guide";
	rename -uid "BFC11948-4B8F-9B5D-AA89-2BA71EB196BF";
	setAttr ".t" -type "double3" 0 4.4408920984955893e-16 -2 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe1_1_guide" -p "rtLegQd0_toe1_2_guide";
	rename -uid "47D2EF6E-4563-2202-C4C1-97A98D95E605";
	setAttr ".t" -type "double3" 0 -10 4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "rtLegQd0_toe0_2_guide_ofs" -p "rtLegQd0_toeMain_guide";
	rename -uid "80E64E56-4241-8F40-C53D-1BB44E902DB6";
	setAttr ".t" -type "double3" 4 0 0 ;
createNode transform -n "rtLegQd0_toe0_2_guide" -p "rtLegQd0_toe0_2_guide_ofs";
	rename -uid "1DE8B240-4F6E-35CF-1066-F0B82B429BD4";
createNode transform -n "rtLegQd0_toe0_3_guide" -p "rtLegQd0_toe0_2_guide";
	rename -uid "08BED7AB-4979-D964-500C-9696808D2949";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 6.2172489379008766e-15 -7 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe0_4_guide" -p "rtLegQd0_toe0_3_guide";
	rename -uid "A39F5C7C-47B5-01C7-CDF5-DB863D23C16B";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -1.999999999999984 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd0_toe0_1_guide" -p "rtLegQd0_toe0_2_guide";
	rename -uid "07DA11EA-406A-8CA6-9AFF-73BB2EAA423F";
	setAttr ".t" -type "double3" 0 -10 4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe0_1_guideShape" -p "rtLegQd0_toe0_1_guide";
	rename -uid "505DEC63-4F3D-A709-9A6C-8A8BACEFDF77";
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
createNode transform -n "rtLegQd0_toe3_2_guide_ofs" -p "rtLegQd0_toeMain_guide";
	rename -uid "F51D1759-4A20-C535-EAB9-199853361BCF";
	setAttr ".t" -type "double3" -2 0 0 ;
createNode transform -n "rtLegQd0_toe3_2_guide" -p "rtLegQd0_toe3_2_guide_ofs";
	rename -uid "4BE747DA-456A-EB6F-B711-15981E63BE0B";
createNode transform -n "rtLegQd0_toe3_3_guide" -p "rtLegQd0_toe3_2_guide";
	rename -uid "3FCB76B7-4156-86BA-B880-F48020BE6115";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.9936057773011271e-15 -7 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe3_4_guide" -p "rtLegQd0_toe3_3_guide";
	rename -uid "E6819361-4000-342E-7E72-0C8BB7157F18";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -1.9999999999999982 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe3_5_guide" -p "rtLegQd0_toe3_4_guide";
	rename -uid "D405039A-4AA8-71B1-75DB-5DBE0C2DFC52";
	setAttr ".t" -type "double3" 0 4.4408920985056591e-16 -2 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe3_1_guide" -p "rtLegQd0_toe3_2_guide";
	rename -uid "BF6F3F7E-4EDB-E3A0-3D0D-7DBD8DB2591F";
	setAttr ".t" -type "double3" 0 -10 4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "rtLegQd0_toe4_2_guide_ofs" -p "rtLegQd0_toeMain_guide";
	rename -uid "0444A542-4521-D0AA-D18B-DD97E5D9BC9B";
	setAttr ".t" -type "double3" -4 0 0 ;
createNode transform -n "rtLegQd0_toe4_2_guide" -p "rtLegQd0_toe4_2_guide_ofs";
	rename -uid "162E4AA2-4BD2-F03E-BA40-419E51C32628";
createNode transform -n "rtLegQd0_toe4_3_guide" -p "rtLegQd0_toe4_2_guide";
	rename -uid "5B640D2F-40DD-5325-28E3-D2B84CE64103";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 -7 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_toe4_4_guide" -p "rtLegQd0_toe4_3_guide";
	rename -uid "A77A5928-4E84-E9C7-6FF5-548DC9D692D4";
	setAttr ".t" -type "double3" -2.6112445539183682e-13 5.0000000000000009 -1.9999999999999982 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe4_5_guide" -p "rtLegQd0_toe4_4_guide";
	rename -uid "9983AA37-4ED2-A479-967B-50B212B19311";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 4.4408920985056591e-16 -2 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe4_1_guide" -p "rtLegQd0_toe4_2_guide";
	rename -uid "3E42B117-458A-0BF8-DEEF-78BEE6FCE016";
	setAttr ".t" -type "double3" 0 -10 4 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe4_1_guideShape" -p "rtLegQd0_toe4_1_guide";
	rename -uid "0F65E351-4D90-FE91-5943-6DB28EBAC633";
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
createNode nurbsCurve -n "rtLegQd0_toeMain_guideShape" -p "rtLegQd0_toeMain_guide";
	rename -uid "BA6E30C5-46EA-82DC-4E51-6A8DC1C0121E";
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
createNode transform -n "rtLegQd0_line_grp_main" -p "rtLegQd0_master_guide";
	rename -uid "1194C133-4F5D-487D-0AD2-8586604691AC";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".it" no;
createNode transform -n "rtLegQd0_line_01" -p "rtLegQd0_line_grp_main";
	rename -uid "B1079562-43CA-DFD8-23F3-F1B3E59BCDD7";
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
createNode nurbsCurve -n "rtLegQd0_line_01Shape" -p "rtLegQd0_line_01";
	rename -uid "5EF97481-4AB2-0C54-A148-D9AA6C0C878C";
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
		-10 94 -32
		-10 85 -44
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_02" -p "rtLegQd0_line_grp_main";
	rename -uid "B7D88046-4597-CF6A-7979-179046DEDAA6";
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
createNode nurbsCurve -n "rtLegQd0_line_02Shape" -p "rtLegQd0_line_02";
	rename -uid "43F2B670-437E-AB38-39E7-DB8A98BE0AF4";
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
		-10 85 -44
		-10 52.5 -34.5
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_03" -p "rtLegQd0_line_grp_main";
	rename -uid "AF1018D3-4F6B-6B2C-A79D-7BB9AF86047D";
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
createNode nurbsCurve -n "rtLegQd0_line_03Shape" -p "rtLegQd0_line_03";
	rename -uid "FC40E5C1-49F3-3078-4603-B480B24B2722";
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
		-10 52.5 -34.5
		-10 20 -51
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_05" -p "rtLegQd0_line_grp_main";
	rename -uid "401E6AEF-4635-D2BD-9411-FCA2A10822C2";
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
createNode nurbsCurve -n "rtLegQd0_line_05Shape" -p "rtLegQd0_line_05";
	rename -uid "A4F71244-4C70-9565-F922-6397F7FAD04E";
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
		-10 5.0000000000000018 -38
		-10 -3.9443045261050586e-31 -36
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_06" -p "rtLegQd0_line_grp_main";
	rename -uid "56E20AB7-4203-C91F-5B9D-84BBAA733E96";
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
createNode nurbsCurve -n "rtLegQd0_line_06Shape" -p "rtLegQd0_line_06";
	rename -uid "80FF3DB6-4DF4-6832-4DAA-97A3868AF75C";
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
		-10.000000000000993 52.499999999999993 -2.5
		-10 52.5 -34.5
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_32" -p "rtLegQd0_line_grp_main";
	rename -uid "2765CCFA-45B5-6182-CF6C-E4BC9C1EF918";
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
createNode nurbsCurve -n "rtLegQd0_curveShape1" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_main|rtLegQd0_line_32";
	rename -uid "B9123E51-404D-F15F-979F-B5B805720D95";
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
		-10 5.0000000000000018 -38
		-9.9999999999999858 5.0000000000000009 -45
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_33" -p "rtLegQd0_line_grp_main";
	rename -uid "C045E8D2-4EBD-B2E4-36FF-9289DDADF350";
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
createNode nurbsCurve -n "rtLegQd0_curveShape2" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_main|rtLegQd0_line_33";
	rename -uid "FB1DAE91-4A5C-B9E5-BEC2-328C543EEA19";
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
		-9.9999999999999858 5.0000000000000009 -45
		-10 20 -51
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_grp_dual" -p "rtLegQd0_master_guide";
	rename -uid "F99F3808-469F-35DA-65B3-0B90CD14CAE2";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 10 0 50 ;
createNode transform -n "rtLegQd0_line_07" -p "rtLegQd0_line_grp_dual";
	rename -uid "6FB5D55C-4515-24E4-88BA-F8ABDDE14EF7";
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
createNode nurbsCurve -n "rtLegQd0_line_07Shape" -p "rtLegQd0_line_07";
	rename -uid "28A01F2B-4E80-C1A1-5267-FDB4A609574F";
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
createNode transform -n "rtLegQd0_line_08" -p "rtLegQd0_line_grp_dual";
	rename -uid "5E4EE553-43E1-ED6A-7FC3-74B30B50228E";
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
createNode nurbsCurve -n "rtLegQd0_line_08Shape" -p "rtLegQd0_line_08";
	rename -uid "B0CFA899-4D35-53E0-57A2-B9B749E09E1E";
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
createNode transform -n "rtLegQd0_line_grp_mammalFoot" -p "rtLegQd0_master_guide";
	rename -uid "76642096-43D4-5BDE-1D1B-289DD1E27381";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 10 0 50 ;
createNode transform -n "rtLegQd0_toe_line_grp1" -p "rtLegQd0_line_grp_mammalFoot";
	rename -uid "9065B7A5-429F-ABA2-34A9-EDB6F97181E4";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "rtLegQd0_line_34" -p "rtLegQd0_toe_line_grp1";
	rename -uid "8C4E35C0-42FB-A418-52C1-CBA775527000";
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
createNode nurbsCurve -n "rtLegQd0_curveShape3" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp1|rtLegQd0_line_34";
	rename -uid "6094FAB7-4424-D026-54DE-68866B98BBEB";
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
createNode transform -n "rtLegQd0_line_35" -p "rtLegQd0_toe_line_grp1";
	rename -uid "5860C49F-48BC-88EC-5BA9-ABB7C87E34B0";
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
createNode nurbsCurve -n "rtLegQd0_curveShape4" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp1|rtLegQd0_line_35";
	rename -uid "9BE082C9-47F2-07AF-E76E-B9B89BB86E84";
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
createNode transform -n "rtLegQd0_line_36" -p "rtLegQd0_toe_line_grp1";
	rename -uid "73135F48-4D20-7AE7-8F59-0B8B8AEA6C7B";
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
createNode nurbsCurve -n "rtLegQd0_curveShape5" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp1|rtLegQd0_line_36";
	rename -uid "ABA7B8EF-458A-87D8-EC39-469E5E7E6D5B";
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
		-6.0000000000002593 -4.4408920985006262e-15 13.999999999999984
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe_line_grp2" -p "rtLegQd0_line_grp_mammalFoot";
	rename -uid "6A0BAEB8-4FC6-1A61-534C-21B030DD8322";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "rtLegQd0_line_37" -p "rtLegQd0_toe_line_grp2";
	rename -uid "B030DE36-47C8-0403-9250-D6B2846590B7";
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
createNode nurbsCurve -n "rtLegQd0_curveShape6" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp2|rtLegQd0_line_37";
	rename -uid "231D232C-4ABF-7BA2-8BD3-C6885BA5B1A0";
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
createNode transform -n "rtLegQd0_line_38" -p "rtLegQd0_toe_line_grp2";
	rename -uid "A729DA9F-42E0-311C-C898-9CBE42C4F830";
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
createNode nurbsCurve -n "rtLegQd0_curveShape7" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp2|rtLegQd0_line_38";
	rename -uid "7579B041-483F-AFF2-DF42-C6A5A8B46088";
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
createNode transform -n "rtLegQd0_line_39" -p "rtLegQd0_toe_line_grp2";
	rename -uid "C436FC16-4A54-3C78-8A0A-50BC00A13C50";
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
createNode nurbsCurve -n "rtLegQd0_curveShape8" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp2|rtLegQd0_line_39";
	rename -uid "637ABD99-4005-E5B5-3B49-3DBE0B811A7C";
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
		-8.0000000000002593 0 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_40" -p "rtLegQd0_toe_line_grp2";
	rename -uid "01C6A7C4-490B-FC10-ECAD-B7B0606B13DD";
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
createNode nurbsCurve -n "rtLegQd0_curveShape9" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp2|rtLegQd0_line_40";
	rename -uid "5DF89D3C-4647-B412-416E-298342A5FF4E";
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
		-8.0000000000002593 0 13.999999999999998
		-8.0000000000002593 -1.9915985002008819e-16 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe_line_grp3" -p "rtLegQd0_line_grp_mammalFoot";
	rename -uid "FF213BCE-469D-8E1D-E261-4C93A3D94413";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "rtLegQd0_line_41" -p "rtLegQd0_toe_line_grp3";
	rename -uid "4510816A-4E2E-C60A-2F63-CA93AAAED426";
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
createNode nurbsCurve -n "rtLegQd0_curveShape10" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp3|rtLegQd0_line_41";
	rename -uid "2BCA0A6B-4DA8-9AFC-A71C-B1883ECF76E1";
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
createNode transform -n "rtLegQd0_line_42" -p "rtLegQd0_toe_line_grp3";
	rename -uid "9A37873C-44F9-8D51-00EC-1EBF44D50CAE";
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
createNode nurbsCurve -n "rtLegQd0_curveShape11" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp3|rtLegQd0_line_42";
	rename -uid "D19E1C3E-4AD3-A413-C15D-7EA85E70B95E";
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
createNode transform -n "rtLegQd0_line_43" -p "rtLegQd0_toe_line_grp3";
	rename -uid "40954B54-4458-7D43-6D35-0EBBCB3FAC0B";
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
createNode nurbsCurve -n "rtLegQd0_curveShape12" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp3|rtLegQd0_line_43";
	rename -uid "13B17A1E-4135-229B-E737-269AD0B0F06F";
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
		-10.000000000000259 -3.5527136788005009e-15 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_44" -p "rtLegQd0_toe_line_grp3";
	rename -uid "9CBE6780-406E-E6E2-FDAB-CABBCA75CA4E";
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
createNode nurbsCurve -n "rtLegQd0_curveShape13" -p "rtLegQd0_line_44";
	rename -uid "CEF30B37-43CB-B955-F8A1-D29F1CC7BC61";
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
		-10.000000000000259 -3.5527136788005009e-15 13.999999999999998
		-10.000000000000259 -3.7518735288210932e-15 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe_line_grp4" -p "rtLegQd0_line_grp_mammalFoot";
	rename -uid "700B04C3-409D-FA39-D26D-F7A5943B0208";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "rtLegQd0_line_45" -p "rtLegQd0_toe_line_grp4";
	rename -uid "D4F540A6-4048-1AC2-2210-53B63DB4E183";
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
createNode nurbsCurve -n "rtLegQd0_curveShape14" -p "rtLegQd0_line_45";
	rename -uid "692F7B8A-4932-732C-CEA4-BF9C800DFDCE";
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
createNode transform -n "rtLegQd0_line_46" -p "rtLegQd0_toe_line_grp4";
	rename -uid "19BA61C2-4A53-8BC5-B69B-0AA0FAA46C24";
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
createNode nurbsCurve -n "rtLegQd0_curveShape15" -p "rtLegQd0_line_46";
	rename -uid "D2D8B530-4295-62DA-E54B-A79AFDFBA613";
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
createNode transform -n "rtLegQd0_line_47" -p "rtLegQd0_toe_line_grp4";
	rename -uid "E5927E06-4992-012D-8521-2A8CDAA5FA93";
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
createNode nurbsCurve -n "rtLegQd0_curveShape16" -p "rtLegQd0_line_47";
	rename -uid "C322C5BF-4456-B620-46CD-8CBFF05E28A9";
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
		-12.000000000000259 -6.2172489379008766e-15 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_48" -p "rtLegQd0_toe_line_grp4";
	rename -uid "915A0251-4124-6F1A-9B04-42B0F5DABC8B";
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
createNode nurbsCurve -n "rtLegQd0_curveShape17" -p "rtLegQd0_line_48";
	rename -uid "6F525F0D-4A05-F16A-65F6-5B8B69CA6FF9";
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
		-12.000000000000259 -6.2172489379008766e-15 13.999999999999998
		-12.000000000000259 -6.4164087879219715e-15 15.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe_line_grp5" -p "rtLegQd0_line_grp_mammalFoot";
	rename -uid "CF3A4752-449C-7013-5707-41968CC13E46";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
createNode transform -n "rtLegQd0_line_49" -p "rtLegQd0_toe_line_grp5";
	rename -uid "9C41C294-459B-ECC5-C236-60A43A5F8AA7";
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
createNode nurbsCurve -n "rtLegQd0_curveShape18" -p "rtLegQd0_line_49";
	rename -uid "17B46BDC-401F-6CCF-DC97-E1ACF057077C";
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
createNode transform -n "rtLegQd0_line_50" -p "rtLegQd0_toe_line_grp5";
	rename -uid "A1211BDE-47E7-AA71-FCAB-66A2D953B0AE";
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
createNode nurbsCurve -n "rtLegQd0_curveShape19" -p "rtLegQd0_line_50";
	rename -uid "29711A3F-4721-E996-052A-B29BEA335448";
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
createNode transform -n "rtLegQd0_line_51" -p "rtLegQd0_toe_line_grp5";
	rename -uid "6CD9803B-426F-4F7B-DE8C-5C8E82182220";
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
createNode nurbsCurve -n "rtLegQd0_curveShape20" -p "rtLegQd0_line_51";
	rename -uid "A2BB1DF0-4338-2177-AE2D-78A9C1735B66";
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
		-14.000000000000259 -5.3290705182007514e-15 13.999999999999998
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_line_52" -p "rtLegQd0_toe_line_grp5";
	rename -uid "4867D643-46F9-D8FB-6BAA-47B364D1BCFA";
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
createNode nurbsCurve -n "rtLegQd0_curveShape21" -p "rtLegQd0_line_52";
	rename -uid "EDA0B529-41A8-401A-2424-38A2DE6ED4CF";
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
		-14.000000000000259 -5.3290705182007514e-15 13.999999999999998
		-14.000000000000263 -5.5282303682218462e-15 15.999999999999998
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "rtLegQd0_master_guideShape" -p "rtLegQd0_master_guide";
	rename -uid "FECEA7CA-4B40-9C6C-A4A6-99BC028D1643";
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
createNode transform -n "rtLegQd0_line_grp_birdFoot" -p "rtLegQd0_master_guide";
	rename -uid "07C82A20-4586-1EC4-7362-B78209E2F6BC";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "rtLegQd0_group_toe_0" -p "rtLegQd0_line_grp_birdFoot";
	rename -uid "694862FB-432A-6270-E967-3D952E3A638B";
createNode transform -n "rtLegQd0_line_42" -p "rtLegQd0_group_toe_0";
	rename -uid "BDFD8745-4041-E74B-8C57-E484FD6482EE";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape70" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_0|rtLegQd0_line_42";
	rename -uid "2BFEBBB1-4C13-B2C4-FF07-20B3628FF73B";
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
createNode transform -n "rtLegQd0_line_43" -p "rtLegQd0_group_toe_0";
	rename -uid "33A36F95-4F7A-8D65-65CE-10842FD5DAF8";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape71" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_0|rtLegQd0_line_43";
	rename -uid "F4221362-42B6-8DA0-8FFF-D28F9989D47B";
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
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_group_toe_0";
	rename -uid "F5A0136E-446A-E123-8B91-74B7C5D27487";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape72" -p "rtLegQd0_line_53";
	rename -uid "C036E2D6-4248-2A59-C0D4-039B83B56A8C";
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
createNode transform -n "rtLegQd0_group_toe_1" -p "rtLegQd0_line_grp_birdFoot";
	rename -uid "66A27A68-4C6E-074C-D104-939C53C88D1F";
createNode transform -n "rtLegQd0_line_30" -p "rtLegQd0_group_toe_1";
	rename -uid "4797979E-420A-6ABB-805A-399117281953";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape58" -p "rtLegQd0_line_30";
	rename -uid "F3AEF3A1-4F3D-FB0A-C37B-5B9C08AB722D";
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
createNode transform -n "rtLegQd0_line_31" -p "rtLegQd0_group_toe_1";
	rename -uid "10259192-4F73-9748-E82F-8D98ED7B4FA1";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape59" -p "rtLegQd0_line_31";
	rename -uid "9E2CEE62-4765-71F3-7DFC-CDA47C299157";
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
createNode transform -n "rtLegQd0_line_32" -p "rtLegQd0_group_toe_1";
	rename -uid "6C03185C-47AA-A9AC-FFCD-8D9C29EFC52D";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape60" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_1|rtLegQd0_line_32";
	rename -uid "B17960C7-41DC-3B68-FAA5-4B8CA2105E41";
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
createNode transform -n "rtLegQd0_group_toe_2" -p "rtLegQd0_line_grp_birdFoot";
	rename -uid "B025495A-4E23-87D1-DEC0-B4B8E416F0CD";
createNode transform -n "rtLegQd0_line_33" -p "rtLegQd0_group_toe_2";
	rename -uid "EEFF4D43-47FB-CFA0-4645-A588FC7B6FFD";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape61" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_2|rtLegQd0_line_33";
	rename -uid "F41C82B8-4B8B-9436-4CEB-959E50CAE7E6";
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
createNode transform -n "rtLegQd0_line_34" -p "rtLegQd0_group_toe_2";
	rename -uid "7A0DCE0E-4DA7-EDE9-D267-D59CC485B59C";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape62" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_2|rtLegQd0_line_34";
	rename -uid "BA44CDC3-49A7-49A9-37AE-568679EFC30D";
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
createNode transform -n "rtLegQd0_line_35" -p "rtLegQd0_group_toe_2";
	rename -uid "CEE34D06-4545-BA35-FC0C-F892FC55290E";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape63" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_2|rtLegQd0_line_35";
	rename -uid "38344647-419E-F5C6-8DDD-B9A3D0373235";
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
createNode transform -n "rtLegQd0_line_36" -p "rtLegQd0_group_toe_2";
	rename -uid "BEE3F3A7-4C51-E70E-A46E-24BA26AB4611";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape64" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_2|rtLegQd0_line_36";
	rename -uid "876192E6-4E41-FE44-5D53-BD812CB03805";
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
createNode transform -n "rtLegQd0_group_toe_3" -p "rtLegQd0_line_grp_birdFoot";
	rename -uid "34360C11-4F05-A565-748D-AE820CAD9406";
createNode transform -n "rtLegQd0_line_37" -p "rtLegQd0_group_toe_3";
	rename -uid "1832B33C-4D65-C304-C99B-A0872A409DDF";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape65" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_3|rtLegQd0_line_37";
	rename -uid "6DEF7C25-4E91-2957-9B85-5F849316268E";
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
createNode transform -n "rtLegQd0_line_38" -p "rtLegQd0_group_toe_3";
	rename -uid "202C8C74-4982-79A2-B707-A3B93B6628D1";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape66" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_3|rtLegQd0_line_38";
	rename -uid "9A1118CA-4661-215F-2446-978B07CC7060";
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
createNode transform -n "rtLegQd0_line_39" -p "rtLegQd0_group_toe_3";
	rename -uid "289FD710-4CF4-B77C-6AD1-7C9E67696F38";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape67" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_3|rtLegQd0_line_39";
	rename -uid "E81E0C24-402A-AB76-54FD-E590785BF5F7";
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
createNode transform -n "rtLegQd0_line_40" -p "rtLegQd0_group_toe_3";
	rename -uid "9F7080C6-49F9-1E36-1C74-C598A453CDAB";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape68" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_3|rtLegQd0_line_40";
	rename -uid "34DF6E73-4060-0B72-6BA2-2088BA1491F8";
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
createNode transform -n "rtLegQd0_line_41" -p "rtLegQd0_group_toe_3";
	rename -uid "A4BDBE96-424D-A54E-2084-B983196655A8";
	setAttr ".it" no;
createNode nurbsCurve -n "rtLegQd0_curveShape69" -p "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_birdFoot|rtLegQd0_group_toe_3|rtLegQd0_line_41";
	rename -uid "04D65C73-4C56-0B45-5044-1F9014F54A1D";
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
createNode transform -n "rtLegQd0_toeBird_guide_grp_ofs" -p "rtLegQd0_master_guide";
	rename -uid "6C060D73-421B-5117-9342-4CB4820B7CCC";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "rtLegQd0_toeBird_guide_grp" -p "rtLegQd0_toeBird_guide_grp_ofs";
	rename -uid "06ADCCB0-4A1F-3DE5-5844-15B451464E80";
	setAttr ".t" -type "double3" -10 0 -5 ;
createNode transform -n "rtLegQd0_toeBird_guide" -p "rtLegQd0_toeBird_guide_grp";
	rename -uid "89EDB4FF-4FF8-3BD4-1595-609CB4CE9958";
createNode transform -n "rtLegQd0_toeBird00_1_guide_ofs" -p "rtLegQd0_toeBird_guide";
	rename -uid "7D8838D4-485C-B78F-97B3-0D8E6F51E586";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_toe0_up_guide" -p "rtLegQd0_toeBird00_1_guide_ofs";
	rename -uid "6EE7D0D5-49D3-8C19-C682-C1B121332803";
	setAttr ".t" -type "double3" 0 -2.4651903288156619e-32 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe0_mid_guide" -p "rtLegQd0_toe0_up_guide";
	rename -uid "B5050FFE-45ED-3C32-FB5C-6DB9A6B680D0";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -9.8607613152626476e-32 -1.5 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe0_mid_guideShape" -p "rtLegQd0_toe0_mid_guide";
	rename -uid "0DEB4084-4FE4-8816-DEE3-99A85432C774";
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
createNode transform -n "rtLegQd0_toe0_low_guide" -p "rtLegQd0_toe0_mid_guide";
	rename -uid "FE58B10F-4D0D-9976-E95E-F6BBEEBAD4FC";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 2.4651903288156619e-32 -2.9999999999999991 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe0_low_guideShape" -p "rtLegQd0_toe0_low_guide";
	rename -uid "FC5600F3-4A71-66A7-F861-55829243FF87";
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
createNode transform -n "rtLegQd0_toe0_end_guide" -p "rtLegQd0_toe0_low_guide";
	rename -uid "0AD70F71-4211-59E5-31EE-F38DAF305093";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.9721522630525295e-31 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe0_end_guideShape" -p "rtLegQd0_toe0_end_guide";
	rename -uid "E44A13C4-40C0-18BC-9FCD-1BAAA6750BCF";
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
createNode nurbsCurve -n "rtLegQd0_toe0_up_guideShape" -p "rtLegQd0_toe0_up_guide";
	rename -uid "24FC4051-4FAA-33BF-CABA-7F8E42BB1B83";
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
createNode transform -n "rtLegQd0_toeBird01_1_guide_ofs" -p "rtLegQd0_toeBird_guide";
	rename -uid "4AB0A965-4631-7DFD-DB06-EDB3C93DCD5E";
	setAttr ".t" -type "double3" 1 -9.8607613152626476e-32 -1 ;
	setAttr ".r" -type "double3" 0 -29.999999999999996 0 ;
createNode transform -n "rtLegQd0_toe1_up_guide" -p "rtLegQd0_toeBird01_1_guide_ofs";
	rename -uid "30F5D26C-4380-8287-9D54-DDA2750CA114";
	setAttr ".t" -type "double3" 0 9.8607613152626476e-32 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe1_mid_guide" -p "rtLegQd0_toe1_up_guide";
	rename -uid "23AA28BE-44AF-8517-BF94-68AA0BF713B5";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.9721522630525295e-31 -3.3000000000000012 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe1_mid_guideShape" -p "rtLegQd0_toe1_mid_guide";
	rename -uid "CF3B9147-43D7-3018-842C-EDA3858E9E6D";
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
createNode transform -n "rtLegQd0_toe1_low_guide" -p "rtLegQd0_toe1_mid_guide";
	rename -uid "9F1874E6-46C4-6F59-4BF1-AB8FA3645E11";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.9721522630525304e-31 -3.3000000000000007 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe1_low_guideShape" -p "rtLegQd0_toe1_low_guide";
	rename -uid "C990CC51-4172-07F8-DE1F-D1959FBBBDAB";
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
createNode transform -n "rtLegQd0_toe1_end_guide" -p "rtLegQd0_toe1_low_guide";
	rename -uid "E2162EF4-4187-5A22-29C1-C4BBCBBB4BC7";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 -3.3000000000000007 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe1_end_guideShape" -p "rtLegQd0_toe1_end_guide";
	rename -uid "C864C035-4143-7014-47D5-7C8D5051FE61";
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
createNode transform -n "rtLegQd0_toeBird02_1_guide_ofs" -p "rtLegQd0_toeBird_guide";
	rename -uid "E4835A01-4A56-65E3-09C5-7DB9F28AF468";
	setAttr ".t" -type "double3" 0 0 -2 ;
createNode transform -n "rtLegQd0_toe2_up_guide" -p "rtLegQd0_toeBird02_1_guide_ofs";
	rename -uid "E4C1B8EC-4631-83E1-A928-2483C071CA53";
createNode transform -n "rtLegQd0_toe2_mid_guide" -p "rtLegQd0_toe2_up_guide";
	rename -uid "DADA8D3C-4F84-AAE7-09BF-79BF395EA54F";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.9721522630525295e-31 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe2_mid_guideShape" -p "rtLegQd0_toe2_mid_guide";
	rename -uid "345AB807-4609-F285-BF58-088CE6DB3880";
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
createNode transform -n "rtLegQd0_toe2_mid2_guide" -p "rtLegQd0_toe2_mid_guide";
	rename -uid "A9AC61DF-4D29-9212-5ED4-46AEC170B11D";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe2_mid2_guideShape" -p "rtLegQd0_toe2_mid2_guide";
	rename -uid "AA0ABF2C-4CF4-C0E8-D8FC-7BB79187BDF0";
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
createNode transform -n "rtLegQd0_toe2_low_guide" -p "rtLegQd0_toe2_mid2_guide";
	rename -uid "FC2BC567-484B-B9BF-367A-CC8601CFDA34";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.9721522630525295e-31 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe2_low_guideShape" -p "rtLegQd0_toe2_low_guide";
	rename -uid "A62B2554-421E-9949-57BB-D897D7AC2CC3";
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
createNode transform -n "rtLegQd0_toe2_end_guide" -p "rtLegQd0_toe2_low_guide";
	rename -uid "1C736425-4559-C34A-F567-B1A5561D79AE";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe2_end_guideShape" -p "rtLegQd0_toe2_end_guide";
	rename -uid "D8E1595F-40FA-D4F4-ECC7-B8A5C082EF13";
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
createNode transform -n "rtLegQd0_toeBird03_1_guide_ofs" -p "rtLegQd0_toeBird_guide";
	rename -uid "A61FD1D3-4CC8-DFD5-7E25-3BA48BA547CA";
	setAttr ".t" -type "double3" -1 -9.8607613152626476e-32 -1 ;
	setAttr ".r" -type "double3" 0 29.999999999999996 0 ;
createNode transform -n "rtLegQd0_toe3_up_guide" -p "rtLegQd0_toeBird03_1_guide_ofs";
	rename -uid "62DA8E92-4418-CB58-AD65-B5BF97DB2A01";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe3_mid_guide" -p "rtLegQd0_toe3_up_guide";
	rename -uid "BFFEDADD-461C-B3BC-2731-A19DAF14D3C5";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.9721522630525286e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe3_mid_guideShape" -p "rtLegQd0_toe3_mid_guide";
	rename -uid "ED322130-436C-E472-9216-458F23B08873";
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
createNode transform -n "rtLegQd0_toe3_mid2_guide" -p "rtLegQd0_toe3_mid_guide";
	rename -uid "24B66F1A-4DA3-A455-ADF2-DCB8B5D256EA";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 5.4234187233944562e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe3_mid2_guideShape" -p "rtLegQd0_toe3_mid2_guide";
	rename -uid "D5FF6A14-41D3-6B18-CCD7-A68F72868773";
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
createNode transform -n "rtLegQd0_toe3_mid3_guide" -p "rtLegQd0_toe3_mid2_guide";
	rename -uid "48071791-48CE-1211-EDF4-738CAA04D261";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 5.9164567891575885e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe3_mid3_guideShape" -p "rtLegQd0_toe3_mid3_guide";
	rename -uid "7DD96414-4488-4027-D716-BFB8EB41C4A2";
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
createNode transform -n "rtLegQd0_toe3_low_guide" -p "rtLegQd0_toe3_mid3_guide";
	rename -uid "18B25A02-4839-870E-3AD9-6EB13D4BC8F3";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 3.4512664603419266e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe3_low_guideShape" -p "rtLegQd0_toe3_low_guide";
	rename -uid "A9BBB297-4FF7-36DE-FE5F-7D89315CF6B8";
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
createNode transform -n "rtLegQd0_toe3_end_guide" -p "rtLegQd0_toe3_low_guide";
	rename -uid "CCD8A56B-4B12-5ABB-8F8C-7A87E924908F";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 4.9303806576313238e-31 -2 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "rtLegQd0_toe3_end_guideShape" -p "rtLegQd0_toe3_end_guide";
	rename -uid "F9BF8296-4274-BCAB-BAD1-40B9D8C57130";
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
createNode nurbsCurve -n "rtLegQd0_toeBird_guideShape" -p "rtLegQd0_toeBird_guide";
	rename -uid "CDF55BB3-4A87-0043-B9DB-82A070BA93D0";
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
createNode transform -n "rtLegQd0_toesRoot_guide" -p "rtLegQd0_master_guide";
	rename -uid "4CF49371-4945-54D0-C4E1-EB8C6645B192";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -dv 1 -at "double";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".wsMirror";
createNode locator -n "rtLegQd0_toesRoot_guideShape" -p "rtLegQd0_toesRoot_guide";
	rename -uid "137DDCE9-49C8-4CC2-FCD5-CA9EB68BD406";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "tail0_master_guide" -p "GUIDES";
	rename -uid "27EFD4AC-411B-7165-4ECD-21AEEA057DAE";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en "____________" 
		-at "enum";
	addAttr -ci true -sn "built" -ln "built" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikJntNum" -ln "ikJntNum" -dv 5 -min 2 -at "long";
	addAttr -ci true -sn "fkJntNum" -ln "fkJntNum" -dv 8 -min 0 -at "long";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 24 -min 0 -at "long";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -ci true -sn "rbJntSet" -ln "rbJntSet" -dt "string";
	setAttr ".t" -type "double3" 0 84 -50 ;
	setAttr -l on -k on ".____________";
	setAttr -cb on ".ikJntNum" 4;
	setAttr -cb on ".fkJntNum" 6;
	setAttr -cb on ".rbnJntNum" 6;
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr ".rigID" -type "string" "tail0";
	setAttr ".rigClass" -type "string" "Tail";
	setAttr -cb on ".rbJntSet" -type "string" "tail_rbj_set";
createNode transform -n "tail0_rt_guide_ofs" -p "tail0_master_guide";
	rename -uid "30ED5A1E-4949-E344-66A0-B4B37F45BE20";
createNode transform -n "tail0_rt_guide" -p "tail0_rt_guide_ofs";
	rename -uid "3DC6CD05-4932-44CD-603E-F688EA582624";
createNode nurbsCurve -n "tail0_tp_guideShape" -p "tail0_rt_guide";
	rename -uid "0C76F338-4293-3EEC-B104-C482C8A3EC6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.62968007182819907 0 0
		0.584642384778576 0.242166794453332 0
		0.4474659330253406 0.4474659330253406 0
		0.242166794453332 0.584642384778576 0
		0 0.62966530620334682 0
		-0.242166794453332 0.584642384778576 0
		-0.4474659330253406 0.4474659330253406 0
		-0.584642384778576 0.242166794453332 0
		-0.62968007182819907 -2.9833776264162235e-08 0
		-0.584642384778576 -0.242166794453332 0
		-0.4474659330253406 -0.4474659330253406 0
		-0.242166794453332 -0.584642384778576 0
		2.5145690373543098e-08 -0.62966530620334682 -0.0042816093321839076
		0.242166794453332 -0.584642384778576 0
		0.4474659330253406 -0.4474659330253406 0
		0.584642384778576 -0.242166794453332 0
		0.62968007182819907 0 0
		0.58174832230751661 0.0016385456086145441 -0.24096276321537236
		0.44525108929748913 0.0030276618447233816 -0.44524138617258613
		0.24096824759031749 0.0039558374604416252 -0.58173566605764337
		2.5145690373543098e-08 0.0042817780821822176 -0.62966614995333858
		-0.24096824759031749 0.0039558374604416252 -0.58173566605764337
		-0.44525108929748913 0.0030276618447233816 -0.44524138617258613
		-0.58174832230751661 0.0016385456086145441 -0.24096276321537236
		-0.62968007182819907 -2.9833776264162235e-08 0
		-0.58174832230751661 -0.0016386046711139531 0.24096191946538081
		-0.44525108929748913 -0.0030277209072227911 0.4452409642975903
		-0.24096824759031749 -0.0039558965229410355 0.58173482230765172
		2.5145690373543098e-08 -0.0042818202696817981 0.62966530620334682
		0.24096824759031749 -0.0039558965229410355 0.58173482230765172
		0.44525108929748913 -0.0030277209072227911 0.4452409642975903
		0.58174832230751661 -0.0016386046711139531 0.24096191946538081
		0.62968007182819907 0 0
		0.58174832230751661 0.0016385456086145441 -0.24096276321537236
		0.44525108929748913 0.0030276618447233816 -0.44524138617258613
		0.24096824759031749 0.0039558374604416252 -0.58173566605764337
		2.5145690373543098e-08 0.0042817780821822176 -0.62966614995333858
		2.5145690373543098e-08 0.24491826317581739 -0.58009668169903306
		2.5145690373543098e-08 0.44826833926731652 -0.44221358932786409
		2.5145690373543098e-08 0.5833733847912661 -0.23700684137993155
		0 0.62966530620334682 0
		2.5145690373543098e-08 0.58009625982403745 0.24491826317581739
		2.5145690373543098e-08 0.44221316745286815 0.44826791739232091
		2.5145690373543098e-08 0.23700684137993155 0.5833733847912661
		2.5145690373543098e-08 -0.0042818202696817981 0.62966530620334682
		2.5145690373543098e-08 -0.24491826317581739 0.58009583794904152
		2.5145690373543098e-08 -0.44826833926731652 0.44221274557787255
		2.5145690373543098e-08 -0.5833733847912661 0.23700599762993999
		2.5145690373543098e-08 -0.62966530620334682 -0.0042816093321839076
		2.5145690373543098e-08 -0.58009625982403745 -0.24491910692580887
		2.5145690373543098e-08 -0.44221316745286815 -0.4482687611423124
		2.5145690373543098e-08 -0.23700684137993155 -0.58337422854125776
		2.5145690373543098e-08 0.0042817780821822176 -0.62966614995333858
		;
	setAttr ".adot" yes;
createNode joint -n "tail0_joint1" -p "tail0_rt_guide";
	rename -uid "09719518-4B08-EB4F-3DC9-26B11D0656BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 10;
createNode transform -n "tail0_md_guide_ofs" -p "tail0_master_guide";
	rename -uid "F220EE69-4D7D-FF27-EAD6-6180D1CA279C";
createNode transform -n "tail0_md_guide" -p "tail0_md_guide_ofs";
	rename -uid "5DD93093-46D2-49D5-D3C6-A585F69B2C2B";
createNode joint -n "tail0_joint2" -p "tail0_md_guide";
	rename -uid "885CF5C5-4219-4E50-E0B1-4C9B08089C2B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7268917917981639e-14 0 -50 1;
	setAttr ".radi" 10;
createNode pointConstraint -n "tail0_md_guide_ofs_pointConstraint1" -p "tail0_md_guide_ofs";
	rename -uid "49D6954E-450D-470D-5742-4592F2775A50";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "st_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ed_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.7268917917981639e-14 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "tail0_md_guide_ofs_aimConstraint1" -p "tail0_md_guide_ofs";
	rename -uid "BD47DE55-4A88-C8B5-4C9D-2888BCC5C8C0";
	addAttr -dcb 0 -ci true -sn "w0" -ln "rt_guideW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "tail0_tp_guide_ofs" -p "tail0_master_guide";
	rename -uid "08AE37B7-4B0F-1CB1-00F2-D58AA98A0733";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 0 -100 ;
createNode transform -n "tail0_tp_guide" -p "tail0_tp_guide_ofs";
	rename -uid "4CD99E10-44DF-86D6-0A86-20B4E86D037E";
createNode joint -n "tail0_joint3" -p "tail0_tp_guide";
	rename -uid "69D6EA54-46D3-49B2-B3DC-14B2F3C8C735";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 0 -100 1;
	setAttr ".radi" 10;
createNode transform -n "tail0_line_grp" -p "tail0_master_guide";
	rename -uid "D0BD3C46-436B-22DE-3027-3B8306BD2CE2";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 0 -180 180 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode transform -n "tail0_line_guide" -p "tail0_line_grp";
	rename -uid "EC4132A9-4C4E-71B4-7923-E5A44B10DC9B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.11303400742991e-15 0 -49.999999999999993 ;
	setAttr ".sp" -type "double3" 6.11303400742991e-15 0 -49.999999999999993 ;
	setAttr ".it" no;
createNode nurbsCurve -n "tail0_line_guideShape" -p "tail0_line_guide";
	rename -uid "E837205C-4EC7-63E3-EC18-F3BC7C52AD29";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".tw" yes;
	setAttr ".ls" 5;
	setAttr ".adot" yes;
createNode nurbsCurve -n "tail0_line_guideShapeOrig" -p "tail0_line_guide";
	rename -uid "65087DF0-44F2-F69B-D4A1-71A1F21EBD4C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 25 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster1_2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster1_3";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "cv[0]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster2_2";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster2_3";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "cv[1]";
	setAttr ".gtag[8].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[9].gtagnm" -type "string" "cluster3_1";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[10].gtagnm" -type "string" "cluster3_2";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[11].gtagnm" -type "string" "cluster3_3";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "cv[2]";
	setAttr ".gtag[12].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[13].gtagnm" -type "string" "cluster4_1";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[14].gtagnm" -type "string" "cluster4_2";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[15].gtagnm" -type "string" "cluster4_3";
	setAttr ".gtag[15].gtagcmp" -type "componentList" 1 "cv[3]";
	setAttr ".gtag[16].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[16].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[17].gtagnm" -type "string" "cluster5_1";
	setAttr ".gtag[17].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[18].gtagnm" -type "string" "cluster5_2";
	setAttr ".gtag[18].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[19].gtagnm" -type "string" "cluster5_3";
	setAttr ".gtag[19].gtagcmp" -type "componentList" 1 "cv[4]";
	setAttr ".gtag[20].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[20].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[21].gtagnm" -type "string" "cluster6_1";
	setAttr ".gtag[21].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[22].gtagnm" -type "string" "cluster6_2";
	setAttr ".gtag[22].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[23].gtagnm" -type "string" "cluster6_3";
	setAttr ".gtag[23].gtagcmp" -type "componentList" 1 "cv[5]";
	setAttr ".gtag[24].gtagnm" -type "string" "cluster7";
	setAttr ".gtag[24].gtagcmp" -type "componentList" 1 "cv[6]";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 0.25 0.5 0.74999999999999989 1 1 1
		7
		-2.7291125445348776e-14 -4.9737991503207013e-14 7.1054273576010019e-15
		-2.6270586441316501e-14 -3.5527136788005009e-14 -8.3333333720613822
		-1.0819394899027252e-14 -2.4158453015843406e-13 -24.999999974945691
		6.2894552808221235e-15 2.4158453015843406e-13 -50.000000000000007
		2.3174429270835782e-14 -2.4868995751603507e-13 -75.000000025054064
		3.8496654456176334e-14 -3.5527136788005009e-14 -91.666666627938696
		3.9517193460208589e-14 -4.2632564145606011e-14 -100
		

		"gtag" 25
		"cluster1" 1 "cv[0]"
		"cluster1_1" 1 "cv[0]"
		"cluster1_2" 1 "cv[0]"
		"cluster1_3" 1 "cv[0]"
		"cluster2" 1 "cv[1]"
		"cluster2_1" 1 "cv[1]"
		"cluster2_2" 1 "cv[1]"
		"cluster2_3" 1 "cv[1]"
		"cluster3" 1 "cv[2]"
		"cluster3_1" 1 "cv[2]"
		"cluster3_2" 1 "cv[2]"
		"cluster3_3" 1 "cv[2]"
		"cluster4" 1 "cv[3]"
		"cluster4_1" 1 "cv[3]"
		"cluster4_2" 1 "cv[3]"
		"cluster4_3" 1 "cv[3]"
		"cluster5" 1 "cv[4]"
		"cluster5_1" 1 "cv[4]"
		"cluster5_2" 1 "cv[4]"
		"cluster5_3" 1 "cv[4]"
		"cluster6" 1 "cv[5]"
		"cluster6_1" 1 "cv[5]"
		"cluster6_2" 1 "cv[5]"
		"cluster6_3" 1 "cv[5]"
		"cluster7" 1 "cv[6]";
createNode nurbsCurve -n "tail0_master_guideShape" -p "tail0_master_guide";
	rename -uid "F98AF997-446A-B61D-3B64-FD829BE1E2A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 0 no 3
		6 0 1 3 4 6 7
		6
		-2.4342760975977869e-15 19.877372800816001 2.3684757858670004e-14
		13.33333333333333 13.333333333333387 2.3684757858670004e-14
		13.333333333333337 -13.333333333333282 2.3684757858670004e-14
		-13.33333333333333 -13.333333333333284 2.3684757858670004e-14
		-13.333333333333336 13.333333333333384 2.3684757858670004e-14
		-2.4342760975977869e-15 19.877372800816001 2.3684757858670004e-14
		;
	setAttr ".adot" yes;
parent -s -nc -r -add "|GUIDES|spineQd0_master_guide|spineQd0_st_guide_ofs|spineQd0_tp_guide|spineQd0_md_guideShape" "spineQd0_md_guide" ;
parent -s -nc -r -add "|GUIDES|spineQd0_master_guide|spineQd0_st_guide_ofs|spineQd0_tp_guide|spineQd0_md_guideShape" "spineQd0_rt_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_upr_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_lwr_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_palm_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_digit_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_tip_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_pvc_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_hip_guide_ofs|lfLegQd0_hip_guide|lfLegQd0_hip_guideShape" "lfLegQd0_ball_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_lwr_guide_ofs|lfLegQd0_lwr_guide|lfLegQd0_radius_guide_ZRO|lfLegQd0_radius_guide|lfLegQd0_ulna_guideShape" "lfLegQd0_ulnaEnd_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_lwr_guide_ofs|lfLegQd0_lwr_guide|lfLegQd0_radius_guide_ZRO|lfLegQd0_radius_guide|lfLegQd0_ulna_guideShape" "lfLegQd0_radiusEnd_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_lwr_guide_ofs|lfLegQd0_lwr_guide|lfLegQd0_radius_guide_ZRO|lfLegQd0_radius_guide|lfLegQd0_ulna_guideShape" "lfLegQd0_ulna_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_palm_inPos_ofs|lfLegQd0_palm_inPos_guide|lfLegQd0_palm_toePos_guideShape" "lfLegQd0_palm_toePos_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_palm_inPos_ofs|lfLegQd0_palm_inPos_guide|lfLegQd0_palm_toePos_guideShape" "lfLegQd0_palm_heelPos_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_palm_inPos_ofs|lfLegQd0_palm_inPos_guide|lfLegQd0_palm_toePos_guideShape" "lfLegQd0_palm_outPos_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe1_2_guideShape" "lfLegQd0_toe2_2_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe1_2_guideShape" "lfLegQd0_toe3_2_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe1_2_guideShape" "lfLegQd0_toe4_2_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe1_2_guideShape" "lfLegQd0_toe1_2_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe0_4_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe2_5_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe2_1_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe1_5_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe1_3_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe3_3_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe2_4_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe4_4_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe4_5_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe2_3_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe4_3_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe3_4_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe1_4_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe3_5_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe3_1_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toe_guide_grp|lfLegQd0_toe_main_2_guide_ofs|lfLegQd0_toeMain_guide|lfLegQd0_toe0_2_guide_ofs|lfLegQd0_toe0_2_guide|lfLegQd0_toe0_3_guide|lfLegQd0_toe2_1_guideShape" "lfLegQd0_toe1_1_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toeBird_guide_grp_ofs|lfLegQd0_toeBird_guide_grp|lfLegQd0_toeBird_guide|lfLegQd0_toeBird00_1_guide_ofs|lfLegQd0_toe0_up_guide|lfLegQd0_toe0_up_guideShape" "lfLegQd0_toe1_up_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toeBird_guide_grp_ofs|lfLegQd0_toeBird_guide_grp|lfLegQd0_toeBird_guide|lfLegQd0_toeBird00_1_guide_ofs|lfLegQd0_toe0_up_guide|lfLegQd0_toe0_up_guideShape" "lfLegQd0_toe3_up_guide" ;
parent -s -nc -r -add "|GUIDES|lfLegQd0_master_guide|lfLegQd0_toeBird_guide_grp_ofs|lfLegQd0_toeBird_guide_grp|lfLegQd0_toeBird_guide|lfLegQd0_toeBird00_1_guide_ofs|lfLegQd0_toe0_up_guide|lfLegQd0_toe0_up_guideShape" "lfLegQd0_toe2_up_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_pvc_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_upr_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_lwr_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_palm_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_ball_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_tip_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_hip_guide_ofs|rtLegQd0_hip_guide|rtLegQd0_hip_guideShape" "rtLegQd0_digit_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_lwr_guide_ofs|rtLegQd0_lwr_guide|rtLegQd0_radius_guide_ZRO|rtLegQd0_radius_guide|rtLegQd0_ulna_guideShape" "rtLegQd0_ulnaEnd_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_lwr_guide_ofs|rtLegQd0_lwr_guide|rtLegQd0_radius_guide_ZRO|rtLegQd0_radius_guide|rtLegQd0_ulna_guideShape" "rtLegQd0_radiusEnd_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_lwr_guide_ofs|rtLegQd0_lwr_guide|rtLegQd0_radius_guide_ZRO|rtLegQd0_radius_guide|rtLegQd0_ulna_guideShape" "rtLegQd0_ulna_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_palm_inPos_ofs|rtLegQd0_palm_inPos_guide|rtLegQd0_palm_toePos_guideShape" "rtLegQd0_palm_toePos_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_palm_inPos_ofs|rtLegQd0_palm_inPos_guide|rtLegQd0_palm_toePos_guideShape" "rtLegQd0_palm_heelPos_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_palm_inPos_ofs|rtLegQd0_palm_inPos_guide|rtLegQd0_palm_toePos_guideShape" "rtLegQd0_palm_outPos_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe1_2_guideShape" "rtLegQd0_toe3_2_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe1_2_guideShape" "rtLegQd0_toe4_2_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe1_2_guideShape" "rtLegQd0_toe0_2_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe1_2_guideShape" "rtLegQd0_toe1_2_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe2_5_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe3_1_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe3_5_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe0_4_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe1_4_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe1_3_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe2_3_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe0_3_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe3_4_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe1_5_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe4_3_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe3_3_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe4_5_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe2_4_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe4_4_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toe_guide_grp|rtLegQd0_toe_main_2_guide_ofs|rtLegQd0_toeMain_guide|rtLegQd0_toe2_2_guide_ofs|rtLegQd0_toe2_2_guide|rtLegQd0_toe2_1_guide|rtLegQd0_toe3_1_guideShape" "rtLegQd0_toe1_1_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toeBird_guide_grp_ofs|rtLegQd0_toeBird_guide_grp|rtLegQd0_toeBird_guide|rtLegQd0_toeBird00_1_guide_ofs|rtLegQd0_toe0_up_guide|rtLegQd0_toe0_up_guideShape" "rtLegQd0_toe1_up_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toeBird_guide_grp_ofs|rtLegQd0_toeBird_guide_grp|rtLegQd0_toeBird_guide|rtLegQd0_toeBird00_1_guide_ofs|rtLegQd0_toe0_up_guide|rtLegQd0_toe0_up_guideShape" "rtLegQd0_toe3_up_guide" ;
parent -s -nc -r -add "|GUIDES|rtLegQd0_master_guide|rtLegQd0_toeBird_guide_grp_ofs|rtLegQd0_toeBird_guide_grp|rtLegQd0_toeBird_guide|rtLegQd0_toeBird00_1_guide_ofs|rtLegQd0_toe0_up_guide|rtLegQd0_toe0_up_guideShape" "rtLegQd0_toe2_up_guide" ;
parent -s -nc -r -add "|GUIDES|tail0_master_guide|tail0_rt_guide_ofs|tail0_rt_guide|tail0_tp_guideShape" "tail0_md_guide" ;
parent -s -nc -r -add "|GUIDES|tail0_master_guide|tail0_rt_guide_ofs|tail0_rt_guide|tail0_tp_guideShape" "tail0_tp_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "14B64EDD-4D9E-01B7-4F81-D0AB787152BB";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C34B6EB6-48DE-5505-00AE-9C85D187BB2C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E6792316-4077-9C85-4E18-E1973822BCDE";
createNode displayLayerManager -n "layerManager";
	rename -uid "B8592D79-4C11-AD9A-1362-E5BD3B0023D7";
createNode displayLayer -n "defaultLayer";
	rename -uid "BEFA9DA9-492A-F38A-08E9-F2A0DA5F9C4C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8F17A681-4130-47D3-7A61-8ABD08318BEC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AB5DC700-4FA0-A175-AE35-C597A79ACFCA";
	setAttr ".g" yes;
createNode shadingEngine -n "lf_carpal_01_boneSG";
	rename -uid "A937F611-4B6A-33F7-4383-55B6D7A1687B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "76573B27-4E36-2C9A-0A50-30A149785CA4";
createNode shadingEngine -n "skull_boneSG";
	rename -uid "8EA2CE33-4A23-63A0-CDA0-F49BE5109324";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "85B42C13-4E02-08CE-2FD0-7C86B548ED19";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C7E0EC66-412C-45BC-7B6E-68A536A4E3C9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 468\n            -height 340\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 468\n            -height 339\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 468\n            -height 339\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 943\n            -height 723\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 943\n            -height 723\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 943\\n    -height 723\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 943\\n    -height 723\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2E2BD151-4DB7-9C44-A4C8-479C4CAB60F8";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5F88DC73-44EC-4F2B-0D7B-019C7E59E340";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -803.57139664037027 ;
	setAttr ".tgi[0].vh" -type "double2" 461.90474355031648 44.047617297323995 ;
createNode lambert -n "lambert2";
	rename -uid "B7F6D92A-4FC0-D810-2EC9-52AB13E37E5F";
	setAttr ".c" -type "float3" 1 0.80000001 0.60000002 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "BE6A4B6D-427C-F222-81D9-88991F402E52";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C2DA029F-42F5-3945-425E-8285FF0DADB0";
createNode skinCluster -n "spineQd0_skinCluster1";
	rename -uid "75E90AC4-413D-7CF2-75E6-2EAA9FD378AD";
	setAttr -s 7 ".wl";
	setAttr ".wl[0:6].w"
		1 2 1
		1 2 1
		2 1 0.19999999999999996 2 0.8
		1 1 1
		2 0 0.8 1 0.19999999999999996
		1 0 1
		1 0 1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -95 -50 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.7268917917981639e-14 -95 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.4537835835963278e-14 -95 50 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 140 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "spineQd0_bindPose1";
	rename -uid "234E2659-4039-DFC1-2D3B-AF9E84DADF89";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 95 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 95 50 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 95 50 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7268917917981639e-14 95 0 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7268917917981639e-14 95 0 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 95 -50 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 95 -50 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 95 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 50 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.7268917917981639e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4537835835963278e-14
		 0 -50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes no yes yes no yes yes no;
	setAttr ".bp" yes;
createNode decomposeMatrix -n "lfLegQd0_DCM_1";
	rename -uid "8CEAD840-47FF-65B9-6BAA-B9A9AFED7A8D";
createNode decomposeMatrix -n "lfLegQd0_DCM_2";
	rename -uid "6E3F54FD-4B99-BEA7-3D59-F2A4AC191BE5";
createNode decomposeMatrix -n "lfLegQd0_DCM_3";
	rename -uid "50BFB19D-442F-20B1-E9F8-50BAF26A4B6C";
createNode decomposeMatrix -n "lfLegQd0_DCM_4";
	rename -uid "A0BFB689-4D89-26F9-1B69-AF930DDB56F6";
createNode decomposeMatrix -n "lfLegQd0_DCM_7";
	rename -uid "3F6275DB-4FD3-2379-5A34-27B47A651D5A";
createNode decomposeMatrix -n "lfLegQd0_DCM_8";
	rename -uid "C1816B4F-440F-67C1-14F2-1E81B63134D0";
createNode decomposeMatrix -n "lfLegQd0_DCM_9";
	rename -uid "18C7EA90-4FCF-B606-435D-88BED0D73965";
createNode decomposeMatrix -n "lfLegQd0_DCM_10";
	rename -uid "C068D7DC-4FEE-FF6F-B737-C394D49D200A";
createNode decomposeMatrix -n "lfLegQd0_DCM_11";
	rename -uid "B0DA51DC-49CC-E3F1-4C48-949E90EA0241";
createNode decomposeMatrix -n "lfLegQd0_DCM_73";
	rename -uid "54C439BB-48F6-1BC2-89AC-5AABE87C5111";
createNode decomposeMatrix -n "lfLegQd0_DCM_74";
	rename -uid "5C3CAA2B-427B-BE23-5CBC-F7A0B9C14A36";
createNode decomposeMatrix -n "lfLegQd0_DCM_75";
	rename -uid "6F8A1504-453C-CAA1-7798-DCB45D808274";
createNode decomposeMatrix -n "lfLegQd0_DCM_76";
	rename -uid "5F57D75F-4024-82CC-4995-4FAB94650EC2";
createNode decomposeMatrix -n "lfLegQd0_DCM_77";
	rename -uid "F226B79A-45B3-3CBA-5A22-DDA9CC074432";
createNode decomposeMatrix -n "lfLegQd0_DCM_78";
	rename -uid "7C709FED-4D2D-071C-3B94-CCA24264F7D8";
createNode decomposeMatrix -n "lfLegQd0_DCM_79";
	rename -uid "C05FEBD6-4932-83A9-2115-49AADAA4E24F";
createNode decomposeMatrix -n "lfLegQd0_DCM_80";
	rename -uid "C6CFB486-447F-8F80-DE62-3A997B247E7A";
createNode decomposeMatrix -n "lfLegQd0_DCM_81";
	rename -uid "77331EE2-4FB6-2612-2F5E-AFB4E52965DC";
createNode decomposeMatrix -n "lfLegQd0_DCM_82";
	rename -uid "FA044222-430F-FC98-BD84-81A03DD5565F";
createNode decomposeMatrix -n "lfLegQd0_DCM_83";
	rename -uid "AC44F9CB-46B0-0A68-9FA2-0E809FD451F6";
createNode decomposeMatrix -n "lfLegQd0_DCM_84";
	rename -uid "9236C600-4196-7B5B-27A6-C4B1D478164A";
createNode decomposeMatrix -n "lfLegQd0_DCM_85";
	rename -uid "AC8A7366-4080-6B02-3E69-BF9016F36848";
createNode decomposeMatrix -n "lfLegQd0_DCM_86";
	rename -uid "59B8DA17-4652-4A0A-3428-EC89DE396C6A";
createNode decomposeMatrix -n "lfLegQd0_DCM_87";
	rename -uid "79C795D0-4CF7-76A3-098A-6CBB439703D0";
createNode decomposeMatrix -n "lfLegQd0_DCM_88";
	rename -uid "0401E7BA-4514-7415-3F70-0CAFA961DB7E";
createNode decomposeMatrix -n "lfLegQd0_DCM_89";
	rename -uid "3C49CC67-4A9C-9490-01CE-409871E13D66";
createNode decomposeMatrix -n "lfLegQd0_DCM_90";
	rename -uid "F8ADB9B3-48AE-9A8B-5C30-4481B4DC0BC7";
createNode decomposeMatrix -n "lfLegQd0_DCM_91";
	rename -uid "83307FAE-4753-5072-E1F0-D99E5DB887A5";
createNode decomposeMatrix -n "lfLegQd0_DCM_92";
	rename -uid "5088233B-48D1-91A4-548B-77B51BBAC42C";
createNode decomposeMatrix -n "lfLegQd0_DCM_93";
	rename -uid "8ED0B55F-4B16-8BFF-EC46-C1A184CE3635";
createNode decomposeMatrix -n "lfLegQd0_DCM_94";
	rename -uid "5921F972-4EBF-DC7A-C0CF-E7807B58E679";
createNode decomposeMatrix -n "lfLegQd0_DCM_95";
	rename -uid "F5D58AAE-4D64-13AC-CA66-C597A4F5419D";
createNode decomposeMatrix -n "lfLegQd0_DCM_96";
	rename -uid "C4C06E74-4BD6-0629-DAAC-CFB3A6B17D6D";
createNode decomposeMatrix -n "lfLegQd0_DCM_97";
	rename -uid "933B7710-420D-2AA1-CA04-0BA80054CFB3";
createNode condition -n "lfLegQd0_le_cdn_1";
	rename -uid "BF830BEE-41D8-F4B4-22B8-F48240EAECBC";
	setAttr ".op" 5;
	setAttr ".st" 4;
createNode condition -n "lfLegQd0_le_cdn_2";
	rename -uid "F8B62396-4F6F-55A4-B079-79B03235BB96";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "lfLegQd0_le_cdn_3";
	rename -uid "F1196DFA-4AD2-154D-C0FD-948BE73F0B39";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode decomposeMatrix -n "lfLegQd0_DCM_98";
	rename -uid "A52C6B76-49B6-F539-6DEA-2FA66892827A";
createNode decomposeMatrix -n "lfLegQd0_DCM_99";
	rename -uid "477AE6DC-419C-6466-3DB8-968FA4B2AB2E";
createNode decomposeMatrix -n "lfLegQd0_DCM_100";
	rename -uid "8AB16D08-47DE-7C7F-9042-E585EF4F5053";
createNode decomposeMatrix -n "lfLegQd0_DCM_101";
	rename -uid "E3DC2DDB-4E4C-2DF9-4BC5-D8938D6D2BF9";
createNode decomposeMatrix -n "lfLegQd0_DCM_102";
	rename -uid "3E08C653-444B-E4CE-B62C-7C868F2E2B9C";
createNode decomposeMatrix -n "lfLegQd0_DCM_103";
	rename -uid "D9727D12-4D96-C09B-41E9-42A10576FCF4";
createNode decomposeMatrix -n "lfLegQd0_DCM_104";
	rename -uid "8CDE5D8E-4677-BEE5-932A-D3932FA7238C";
createNode decomposeMatrix -n "lfLegQd0_DCM_108";
	rename -uid "2A53BC6E-483E-E52D-4B4F-948C670B942F";
createNode decomposeMatrix -n "lfLegQd0_DCM_109";
	rename -uid "89EEBB40-4095-C06A-4049-3882029E21A9";
createNode decomposeMatrix -n "lfLegQd0_DCM_110";
	rename -uid "7E79E44A-4999-234D-599F-6991A5382042";
createNode decomposeMatrix -n "lfLegQd0_DCM_111";
	rename -uid "E4215C52-41C3-7900-B184-2CBFC79EC8C5";
createNode decomposeMatrix -n "lfLegQd0_DCM_112";
	rename -uid "144FA70A-4F82-1F09-05C7-23A39DC94136";
createNode decomposeMatrix -n "lfLegQd0_DCM_113";
	rename -uid "826DA130-4C66-D490-7177-6BA6CA1CA318";
createNode decomposeMatrix -n "lfLegQd0_DCM_114";
	rename -uid "7DF848A8-473F-309D-8603-CA84E4EF6AB2";
createNode decomposeMatrix -n "lfLegQd0_DCM_115";
	rename -uid "82851532-495B-79E0-0E3A-F29D677B90FF";
createNode decomposeMatrix -n "lfLegQd0_DCM_116";
	rename -uid "2E0D96A0-4DFB-54B6-93F4-BCA6E722DF74";
createNode decomposeMatrix -n "lfLegQd0_DCM_117";
	rename -uid "E26D1DCB-407F-9066-DD3C-E1BB7E2086A6";
createNode decomposeMatrix -n "lfLegQd0_DCM_105";
	rename -uid "56374AA2-43AF-09C3-F52F-E3A92AF26660";
createNode decomposeMatrix -n "lfLegQd0_DCM_106";
	rename -uid "FA6A0CB4-4793-02B6-5A0D-02BBB1F1E3FC";
createNode decomposeMatrix -n "lfLegQd0_DCM_107";
	rename -uid "A1FAE4BA-4F13-71AF-61C7-939007C8645C";
createNode condition -n "lfLegQd0_condition2";
	rename -uid "21AD5965-4F01-0685-4CD2-87B055A05734";
	setAttr ".op" 1;
	setAttr ".st" 1;
createNode condition -n "lfLegQd0_condition3";
	rename -uid "EF7643EF-49CB-3330-0FEF-F1A1663F2015";
	setAttr ".op" 1;
	setAttr ".st" 2;
createNode condition -n "lfLegQd0_condition4";
	rename -uid "1E10F440-4632-659E-A576-51BCBF605BDE";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "lfLegQd0_condition5";
	rename -uid "91EA59A0-4BF0-C0EB-884D-02A1AF2C7C9E";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode nodeGraphEditorInfo -n "lfLegQd0_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B1B4CD64-4508-9729-84D8-A99BCFCA295C";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode decomposeMatrix -n "rtLegQd0_DCM_1";
	rename -uid "E31B5807-4D23-3B7D-8035-AEB27D94EBBE";
createNode decomposeMatrix -n "rtLegQd0_DCM_2";
	rename -uid "838D17A2-4985-7330-D42D-DDB32FAE9376";
createNode decomposeMatrix -n "rtLegQd0_DCM_3";
	rename -uid "FF5420B4-463F-292E-91D4-0594903BA828";
createNode decomposeMatrix -n "rtLegQd0_DCM_4";
	rename -uid "F020E402-4A54-9B52-70F5-CC8061210491";
createNode decomposeMatrix -n "rtLegQd0_DCM_5";
	rename -uid "5FCA2440-4121-AB86-2EDA-6DAC04E849A7";
createNode decomposeMatrix -n "rtLegQd0_DCM_6";
	rename -uid "89406849-4F2C-9D5E-A71B-78AEB7B20160";
createNode decomposeMatrix -n "rtLegQd0_DCM_7";
	rename -uid "8F82B4C5-4ABC-CE1E-1756-8985017ACD58";
createNode decomposeMatrix -n "rtLegQd0_DCM_8";
	rename -uid "9E190BF9-40F9-A6C5-C4D9-C99AEA6B7CCA";
createNode decomposeMatrix -n "rtLegQd0_DCM_9";
	rename -uid "461A28FD-4FDB-FE3C-3FF2-F9BBA5E46328";
createNode decomposeMatrix -n "rtLegQd0_DCM_10";
	rename -uid "087D9D79-44DF-C630-33C4-948FD58500CD";
createNode decomposeMatrix -n "rtLegQd0_DCM_11";
	rename -uid "D42E1DB1-4C15-A92D-FC6A-B7B573CCBF1F";
createNode decomposeMatrix -n "rtLegQd0_DCM_36";
	rename -uid "AD8FB2C3-4F1D-35CC-8A18-0EB116A06F1B";
createNode decomposeMatrix -n "rtLegQd0_DCM_37";
	rename -uid "85B85645-4486-A747-69CD-38986DE1503B";
createNode decomposeMatrix -n "rtLegQd0_DCM_38";
	rename -uid "2F4DFD92-445E-2CCA-3ECA-9D8F4C046A1B";
createNode decomposeMatrix -n "rtLegQd0_DCM_39";
	rename -uid "64C52612-4C75-436A-7646-02B0D73F17D5";
createNode decomposeMatrix -n "rtLegQd0_DCM_40";
	rename -uid "BF72A307-482C-724A-BEA5-F7837CC8B8BB";
createNode decomposeMatrix -n "rtLegQd0_DCM_41";
	rename -uid "0CB22D54-4984-759E-7ACE-7D8E39309D5D";
createNode decomposeMatrix -n "rtLegQd0_DCM_42";
	rename -uid "2887DD04-44ED-5877-966F-2CAD8414C80A";
createNode decomposeMatrix -n "rtLegQd0_DCM_43";
	rename -uid "8AC1051E-4026-F38E-C774-B6876836F679";
createNode decomposeMatrix -n "rtLegQd0_DCM_44";
	rename -uid "CFCE43C9-4402-40E7-37CE-ACBA523229D0";
createNode decomposeMatrix -n "rtLegQd0_DCM_45";
	rename -uid "B9D50EE6-48F2-D452-3A0D-EDBA8A4E73F6";
createNode decomposeMatrix -n "rtLegQd0_DCM_46";
	rename -uid "6DE9847C-478E-033E-C42F-D3A047B8FA36";
createNode decomposeMatrix -n "rtLegQd0_DCM_47";
	rename -uid "77374595-4B4A-1543-6796-2BB756E7A5A4";
createNode decomposeMatrix -n "rtLegQd0_DCM_48";
	rename -uid "1345743E-451F-D445-435D-18809CF15D79";
createNode decomposeMatrix -n "rtLegQd0_DCM_49";
	rename -uid "14DDBEBB-4129-80E6-0B8E-3ABDDC8FB9D7";
createNode decomposeMatrix -n "rtLegQd0_DCM_50";
	rename -uid "7381F02D-4C42-4D00-36AB-A28252BD1E3F";
createNode decomposeMatrix -n "rtLegQd0_DCM_51";
	rename -uid "B0352E59-4F28-26FE-B61F-A497A5E1108D";
createNode decomposeMatrix -n "rtLegQd0_DCM_52";
	rename -uid "8CC9C11B-4239-8C2C-0108-9CA21FB5F37F";
createNode decomposeMatrix -n "rtLegQd0_DCM_53";
	rename -uid "183F3335-4D35-93E2-5AAF-9581D65EAA1B";
createNode decomposeMatrix -n "rtLegQd0_DCM_54";
	rename -uid "4459ACB1-4341-9052-FC16-758DF893743E";
createNode decomposeMatrix -n "rtLegQd0_DCM_55";
	rename -uid "38F4C49D-46D6-9993-9EC7-D594AD15E208";
createNode decomposeMatrix -n "rtLegQd0_DCM_56";
	rename -uid "F5AFB9D7-4660-980C-62D2-6E81EEC2FB1E";
createNode decomposeMatrix -n "rtLegQd0_DCM_57";
	rename -uid "EE6BD1BB-4A08-3527-509F-A382DE9AD92F";
createNode decomposeMatrix -n "rtLegQd0_DCM_58";
	rename -uid "672539B8-46AD-2CF7-4BB1-92B33EAA0196";
createNode decomposeMatrix -n "rtLegQd0_DCM_59";
	rename -uid "04C15149-4956-7EAE-4EF9-BDA8E8A2E918";
createNode decomposeMatrix -n "rtLegQd0_DCM_60";
	rename -uid "D9F9E2BF-4FAA-7667-651C-2EBB173C8B4B";
createNode condition -n "rtLegQd0_le_cdn_1";
	rename -uid "666AF175-4BB0-2BE3-10B4-8C8C517D4466";
	setAttr ".op" 5;
	setAttr ".st" 4;
createNode condition -n "rtLegQd0_le_cdn_2";
	rename -uid "1673471D-4ADA-0347-7EDB-198E9D31F9A1";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "rtLegQd0_le_cdn_3";
	rename -uid "3FF4A91F-4BD3-D5BA-0B67-37B22BC3150A";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode decomposeMatrix -n "rtLegQd0_DCM_100";
	rename -uid "6C731855-4197-FEC2-A9FC-B9B5985D83B2";
createNode decomposeMatrix -n "rtLegQd0_DCM_101";
	rename -uid "611D6747-401C-E52A-1714-BF98FA60E07A";
createNode decomposeMatrix -n "rtLegQd0_DCM_102";
	rename -uid "D06B69EC-49E2-CD91-3C28-2C90CB16BBE8";
createNode decomposeMatrix -n "rtLegQd0_DCM_103";
	rename -uid "351755F0-4A10-5860-E2FC-5B8A4A271342";
createNode decomposeMatrix -n "rtLegQd0_DCM_104";
	rename -uid "4D0EEBA8-4F6B-CD55-58CC-71A2DDC22DC8";
createNode decomposeMatrix -n "rtLegQd0_DCM_105";
	rename -uid "67E64584-4F75-010C-CB8B-26A699D441F7";
createNode decomposeMatrix -n "rtLegQd0_DCM_106";
	rename -uid "20FE5EE4-46BD-6CB9-64E3-9AAC31ACB39D";
createNode decomposeMatrix -n "rtLegQd0_DCM_107";
	rename -uid "2EC1F68A-458C-8EAC-8C2F-D3AD1ADB9A80";
createNode decomposeMatrix -n "rtLegQd0_DCM_108";
	rename -uid "187855DE-492D-DB14-3F08-48BD8E5BA2E2";
createNode decomposeMatrix -n "rtLegQd0_DCM_109";
	rename -uid "052812C3-4149-73C4-12E2-1083AFA174F0";
createNode decomposeMatrix -n "rtLegQd0_DCM_110";
	rename -uid "5A61BFCE-492F-BCDD-FBFF-6E97422A370A";
createNode decomposeMatrix -n "rtLegQd0_DCM_111";
	rename -uid "89CA98D4-4530-CEDD-B07A-5ABCFC0592AB";
createNode decomposeMatrix -n "rtLegQd0_DCM_112";
	rename -uid "49E92AF6-47C6-F7E7-9473-6DAF7FE0A07A";
createNode decomposeMatrix -n "rtLegQd0_DCM_113";
	rename -uid "BCB88504-4CF9-2946-41C8-AB93C6C7C445";
createNode decomposeMatrix -n "rtLegQd0_DCM_114";
	rename -uid "42C433C4-4AF4-80CA-6412-6989F3C6C7CA";
createNode decomposeMatrix -n "rtLegQd0_DCM_115";
	rename -uid "A80E628F-49B0-0488-7BDA-A7B6D5025D7A";
createNode decomposeMatrix -n "rtLegQd0_DCM_116";
	rename -uid "8BA58AE1-4264-12CF-4DC7-6FAFEC670D12";
createNode decomposeMatrix -n "rtLegQd0_DCM_117";
	rename -uid "BE5EDC5D-4315-6976-778E-7B932B68F381";
createNode condition -n "rtLegQd0_condition1";
	rename -uid "BC2A51C5-4063-D340-ADFB-9FB9405AFE56";
	setAttr ".op" 1;
	setAttr ".st" 1;
createNode condition -n "rtLegQd0_condition2";
	rename -uid "834D156C-4CA7-D9C3-74AD-F7A664796C4E";
	setAttr ".op" 1;
	setAttr ".st" 2;
createNode condition -n "rtLegQd0_condition3";
	rename -uid "BF77307E-4748-FFC8-0149-9883E7448B16";
	setAttr ".op" 5;
	setAttr ".st" 3;
createNode condition -n "rtLegQd0_condition4";
	rename -uid "2EECE596-4BBA-AC66-6BE1-78ADC72FAD27";
	setAttr ".op" 5;
	setAttr ".st" 2;
createNode decomposeMatrix -n "rtLegQd0_DCM_118";
	rename -uid "0FA22AD0-4430-057C-D709-3F8F4B9F15D7";
createNode nodeGraphEditorInfo -n "rtLegQd0_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "DA68AA46-435D-38D6-66BC-0FAB6EEF1733";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode skinCluster -n "tail0_skinCluster1";
	rename -uid "A5FB4685-4100-C4E4-5FD1-8791F91C846C";
	setAttr -s 7 ".wl";
	setAttr ".wl[0:6].w"
		1 0 1
		1 0 1
		2 0 0.5 1 0.5
		1 1 1
		2 1 0.5 2 0.5
		1 2 1
		1 2 1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.7268917917981639e-14 0 50 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.4537835835963278e-14 0 100 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "tail0_bindPose2";
	rename -uid "9A5BC34F-489D-F072-69C0-FFADF4B5B2BB";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7268917917981639e-14 0 -50 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7268917917981639e-14 0 -50 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 0 -100 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4537835835963278e-14 0 -100 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.7268917917981639e-14
		 0 -50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4537835835963278e-14
		 0 -100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes no yes yes no yes yes no;
	setAttr ".bp" yes;
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
	setAttr -s 5 ".st";
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
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".u";
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
	setAttr -av -k on ".pram";
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
select -ne :hyperGraphLayout;
	setAttr -k on ".nds";
	setAttr -s 76 ".hyp";
connectAttr "spineQd0_md_guide_ofs_pointConstraint1.ctx" "spineQd0_md_guide_ofs.tx"
		;
connectAttr "spineQd0_md_guide_ofs_pointConstraint1.cty" "spineQd0_md_guide_ofs.ty"
		;
connectAttr "spineQd0_md_guide_ofs_pointConstraint1.ctz" "spineQd0_md_guide_ofs.tz"
		;
connectAttr "spineQd0_md_guide_ofs_aimConstraint1.crx" "spineQd0_md_guide_ofs.rx"
		;
connectAttr "spineQd0_md_guide_ofs_aimConstraint1.cry" "spineQd0_md_guide_ofs.ry"
		;
connectAttr "spineQd0_md_guide_ofs_aimConstraint1.crz" "spineQd0_md_guide_ofs.rz"
		;
connectAttr "spineQd0_md_guide_ofs.pim" "spineQd0_md_guide_ofs_pointConstraint1.cpim"
		;
connectAttr "spineQd0_md_guide_ofs.rp" "spineQd0_md_guide_ofs_pointConstraint1.crp"
		;
connectAttr "spineQd0_md_guide_ofs.rpt" "spineQd0_md_guide_ofs_pointConstraint1.crt"
		;
connectAttr "spineQd0_tp_guide.t" "spineQd0_md_guide_ofs_pointConstraint1.tg[0].tt"
		;
connectAttr "spineQd0_tp_guide.rp" "spineQd0_md_guide_ofs_pointConstraint1.tg[0].trp"
		;
connectAttr "spineQd0_tp_guide.rpt" "spineQd0_md_guide_ofs_pointConstraint1.tg[0].trt"
		;
connectAttr "spineQd0_tp_guide.pm" "spineQd0_md_guide_ofs_pointConstraint1.tg[0].tpm"
		;
connectAttr "spineQd0_md_guide_ofs_pointConstraint1.w0" "spineQd0_md_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "spineQd0_rt_guide.t" "spineQd0_md_guide_ofs_pointConstraint1.tg[1].tt"
		;
connectAttr "spineQd0_rt_guide.rp" "spineQd0_md_guide_ofs_pointConstraint1.tg[1].trp"
		;
connectAttr "spineQd0_rt_guide.rpt" "spineQd0_md_guide_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "spineQd0_rt_guide.pm" "spineQd0_md_guide_ofs_pointConstraint1.tg[1].tpm"
		;
connectAttr "spineQd0_md_guide_ofs_pointConstraint1.w1" "spineQd0_md_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "spineQd0_md_guide_ofs.pim" "spineQd0_md_guide_ofs_aimConstraint1.cpim"
		;
connectAttr "spineQd0_md_guide_ofs.t" "spineQd0_md_guide_ofs_aimConstraint1.ct";
connectAttr "spineQd0_md_guide_ofs.rp" "spineQd0_md_guide_ofs_aimConstraint1.crp"
		;
connectAttr "spineQd0_md_guide_ofs.rpt" "spineQd0_md_guide_ofs_aimConstraint1.crt"
		;
connectAttr "spineQd0_md_guide_ofs.ro" "spineQd0_md_guide_ofs_aimConstraint1.cro"
		;
connectAttr "spineQd0_rt_guide.t" "spineQd0_md_guide_ofs_aimConstraint1.tg[0].tt"
		;
connectAttr "spineQd0_rt_guide.rp" "spineQd0_md_guide_ofs_aimConstraint1.tg[0].trp"
		;
connectAttr "spineQd0_rt_guide.rpt" "spineQd0_md_guide_ofs_aimConstraint1.tg[0].trt"
		;
connectAttr "spineQd0_rt_guide.pm" "spineQd0_md_guide_ofs_aimConstraint1.tg[0].tpm"
		;
connectAttr "spineQd0_md_guide_ofs_aimConstraint1.w0" "spineQd0_md_guide_ofs_aimConstraint1.tg[0].tw"
		;
connectAttr "spineQd0_master_guide.wm" "spineQd0_md_guide_ofs_aimConstraint1.wum"
		;
connectAttr "spineQd0_skinCluster1.og[0]" "spineQd0_line_guideShape.cr";
connectAttr "lfLegQd0_hip_guide_aimConstraint1.crx" "lfLegQd0_hip_guide.rx" -l on
		;
connectAttr "lfLegQd0_hip_guide_aimConstraint1.cry" "lfLegQd0_hip_guide.ry" -l on
		;
connectAttr "lfLegQd0_hip_guide_aimConstraint1.crz" "lfLegQd0_hip_guide.rz" -l on
		;
connectAttr "lfLegQd0_hip_guide.pim" "lfLegQd0_hip_guide_aimConstraint1.cpim";
connectAttr "lfLegQd0_hip_guide.t" "lfLegQd0_hip_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_hip_guide.rp" "lfLegQd0_hip_guide_aimConstraint1.crp";
connectAttr "lfLegQd0_hip_guide.rpt" "lfLegQd0_hip_guide_aimConstraint1.crt";
connectAttr "lfLegQd0_hip_guide.ro" "lfLegQd0_hip_guide_aimConstraint1.cro";
connectAttr "lfLegQd0_upr_guide.t" "lfLegQd0_hip_guide_aimConstraint1.tg[0].tt";
connectAttr "lfLegQd0_upr_guide.rp" "lfLegQd0_hip_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_upr_guide.rpt" "lfLegQd0_hip_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_upr_guide.pm" "lfLegQd0_hip_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_hip_guide_aimConstraint1.w0" "lfLegQd0_hip_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_upr_guide.wm" "lfLegQd0_hip_guide_aimConstraint1.wum";
connectAttr "lfLegQd0_upr_guide_aimConstraint1.crx" "lfLegQd0_upr_guide.rx" -l on
		;
connectAttr "lfLegQd0_upr_guide_aimConstraint1.cry" "lfLegQd0_upr_guide.ry" -l on
		;
connectAttr "lfLegQd0_upr_guide_aimConstraint1.crz" "lfLegQd0_upr_guide.rz" -l on
		;
connectAttr "lfLegQd0_upr_guide.pim" "lfLegQd0_upr_guide_aimConstraint1.cpim";
connectAttr "lfLegQd0_upr_guide.t" "lfLegQd0_upr_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_upr_guide.rp" "lfLegQd0_upr_guide_aimConstraint1.crp";
connectAttr "lfLegQd0_upr_guide.rpt" "lfLegQd0_upr_guide_aimConstraint1.crt";
connectAttr "lfLegQd0_upr_guide.ro" "lfLegQd0_upr_guide_aimConstraint1.cro";
connectAttr "lfLegQd0_lwr_guide.t" "lfLegQd0_upr_guide_aimConstraint1.tg[0].tt";
connectAttr "lfLegQd0_lwr_guide.rp" "lfLegQd0_upr_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_lwr_guide.rpt" "lfLegQd0_upr_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_lwr_guide.pm" "lfLegQd0_upr_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_upr_guide_aimConstraint1.w0" "lfLegQd0_upr_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_lwr_guide.wm" "lfLegQd0_upr_guide_aimConstraint1.wum";
connectAttr "lfLegQd0_lwr_guide_ofs_pointConstraint1.ctx" "lfLegQd0_lwr_guide_ofs.tx"
		;
connectAttr "lfLegQd0_lwr_guide_ofs_pointConstraint1.cty" "lfLegQd0_lwr_guide_ofs.ty"
		;
connectAttr "lfLegQd0_lwr_guide_ofs_pointConstraint1.ctz" "lfLegQd0_lwr_guide_ofs.tz"
		;
connectAttr "lfLegQd0_lwr_guide_ofs.pim" "lfLegQd0_lwr_guide_ofs_pointConstraint1.cpim"
		;
connectAttr "lfLegQd0_lwr_guide_ofs.rp" "lfLegQd0_lwr_guide_ofs_pointConstraint1.crp"
		;
connectAttr "lfLegQd0_lwr_guide_ofs.rpt" "lfLegQd0_lwr_guide_ofs_pointConstraint1.crt"
		;
connectAttr "lfLegQd0_palm_guide.t" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_palm_guide.rp" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_palm_guide.rpt" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_palm_guide.pm" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_lwr_guide_ofs_pointConstraint1.w0" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_upr_guide.t" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].tt"
		;
connectAttr "lfLegQd0_upr_guide.rp" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].trp"
		;
connectAttr "lfLegQd0_upr_guide.rpt" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "lfLegQd0_upr_guide.pm" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].tpm"
		;
connectAttr "lfLegQd0_lwr_guide_ofs_pointConstraint1.w1" "lfLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "lfLegQd0_lwr_guide_aimConstraint1.crx" "lfLegQd0_lwr_guide.rx" -l on
		;
connectAttr "lfLegQd0_lwr_guide_aimConstraint1.cry" "lfLegQd0_lwr_guide.ry" -l on
		;
connectAttr "lfLegQd0_lwr_guide_aimConstraint1.crz" "lfLegQd0_lwr_guide.rz" -l on
		;
connectAttr "lfLegQd0_lwr_guide.pim" "lfLegQd0_lwr_guide_aimConstraint1.cpim";
connectAttr "lfLegQd0_lwr_guide.t" "lfLegQd0_lwr_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_lwr_guide.rp" "lfLegQd0_lwr_guide_aimConstraint1.crp";
connectAttr "lfLegQd0_lwr_guide.rpt" "lfLegQd0_lwr_guide_aimConstraint1.crt";
connectAttr "lfLegQd0_lwr_guide.ro" "lfLegQd0_lwr_guide_aimConstraint1.cro";
connectAttr "lfLegQd0_palm_guide.t" "lfLegQd0_lwr_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_palm_guide.rp" "lfLegQd0_lwr_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_palm_guide.rpt" "lfLegQd0_lwr_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_palm_guide.pm" "lfLegQd0_lwr_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_lwr_guide_aimConstraint1.w0" "lfLegQd0_lwr_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_pv_loc.wm" "lfLegQd0_lwr_guide_aimConstraint1.wum";
connectAttr "lfLegQd0_master_guide.patellaBone" "lfLegQd0_patella_guide.v";
connectAttr "lfLegQd0_master_guide.dualBone" "lfLegQd0_radius_guide_ZRO.v";
connectAttr "lfLegQd0_radius_guide_aimConstraint1.crx" "lfLegQd0_radius_guide.rx"
		 -l on;
connectAttr "lfLegQd0_radius_guide_aimConstraint1.cry" "lfLegQd0_radius_guide.ry"
		 -l on;
connectAttr "lfLegQd0_radius_guide_aimConstraint1.crz" "lfLegQd0_radius_guide.rz"
		 -l on;
connectAttr "lfLegQd0_radius_guide.pim" "lfLegQd0_radius_guide_aimConstraint1.cpim"
		;
connectAttr "lfLegQd0_radius_guide.t" "lfLegQd0_radius_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_radius_guide.rp" "lfLegQd0_radius_guide_aimConstraint1.crp"
		;
connectAttr "lfLegQd0_radius_guide.rpt" "lfLegQd0_radius_guide_aimConstraint1.crt"
		;
connectAttr "lfLegQd0_radius_guide.ro" "lfLegQd0_radius_guide_aimConstraint1.cro"
		;
connectAttr "lfLegQd0_radiusEnd_guide.t" "lfLegQd0_radius_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_radiusEnd_guide.rp" "lfLegQd0_radius_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_radiusEnd_guide.rpt" "lfLegQd0_radius_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_radiusEnd_guide.pm" "lfLegQd0_radius_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_radius_guide_aimConstraint1.w0" "lfLegQd0_radius_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_master_guide.wm" "lfLegQd0_radius_guide_aimConstraint1.wum"
		;
connectAttr "lfLegQd0_master_guide.dualBone" "lfLegQd0_ulna_guide_ZRO.v";
connectAttr "lfLegQd0_ulna_guide_aimConstraint1.crx" "lfLegQd0_ulna_guide.rx" -l
		 on;
connectAttr "lfLegQd0_ulna_guide_aimConstraint1.cry" "lfLegQd0_ulna_guide.ry" -l
		 on;
connectAttr "lfLegQd0_ulna_guide_aimConstraint1.crz" "lfLegQd0_ulna_guide.rz" -l
		 on;
connectAttr "lfLegQd0_ulna_guide.pim" "lfLegQd0_ulna_guide_aimConstraint1.cpim";
connectAttr "lfLegQd0_ulna_guide.t" "lfLegQd0_ulna_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_ulna_guide.rp" "lfLegQd0_ulna_guide_aimConstraint1.crp";
connectAttr "lfLegQd0_ulna_guide.rpt" "lfLegQd0_ulna_guide_aimConstraint1.crt";
connectAttr "lfLegQd0_ulna_guide.ro" "lfLegQd0_ulna_guide_aimConstraint1.cro";
connectAttr "lfLegQd0_ulnaEnd_guide.t" "lfLegQd0_ulna_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.rp" "lfLegQd0_ulna_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.rpt" "lfLegQd0_ulna_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.pm" "lfLegQd0_ulna_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_ulna_guide_aimConstraint1.w0" "lfLegQd0_ulna_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_master_guide.wm" "lfLegQd0_ulna_guide_aimConstraint1.wum";
connectAttr "lfLegQd0_master_guide.dualBone" "lfLegQd0_radiusEnd_guide_ZRO.v";
connectAttr "lfLegQd0_radiusEnd_guide_aimConstraint1.crx" "lfLegQd0_radiusEnd_guide.rx"
		 -l on;
connectAttr "lfLegQd0_radiusEnd_guide_aimConstraint1.cry" "lfLegQd0_radiusEnd_guide.ry"
		 -l on;
connectAttr "lfLegQd0_radiusEnd_guide_aimConstraint1.crz" "lfLegQd0_radiusEnd_guide.rz"
		 -l on;
connectAttr "lfLegQd0_radiusEnd_guide.pim" "lfLegQd0_radiusEnd_guide_aimConstraint1.cpim"
		;
connectAttr "lfLegQd0_radiusEnd_guide.t" "lfLegQd0_radiusEnd_guide_aimConstraint1.ct"
		;
connectAttr "lfLegQd0_radiusEnd_guide.rp" "lfLegQd0_radiusEnd_guide_aimConstraint1.crp"
		;
connectAttr "lfLegQd0_radiusEnd_guide.rpt" "lfLegQd0_radiusEnd_guide_aimConstraint1.crt"
		;
connectAttr "lfLegQd0_radiusEnd_guide.ro" "lfLegQd0_radiusEnd_guide_aimConstraint1.cro"
		;
connectAttr "lfLegQd0_radius_guide.t" "lfLegQd0_radiusEnd_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_radius_guide.rp" "lfLegQd0_radiusEnd_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_radius_guide.rpt" "lfLegQd0_radiusEnd_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_radius_guide.pm" "lfLegQd0_radiusEnd_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_radiusEnd_guide_aimConstraint1.w0" "lfLegQd0_radiusEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_master_guide.wm" "lfLegQd0_radiusEnd_guide_aimConstraint1.wum"
		;
connectAttr "lfLegQd0_master_guide.dualBone" "lfLegQd0_ulnaEnd_guide_ZRO.v";
connectAttr "lfLegQd0_ulnaEnd_guide_aimConstraint1.crx" "lfLegQd0_ulnaEnd_guide.rx"
		 -l on;
connectAttr "lfLegQd0_ulnaEnd_guide_aimConstraint1.cry" "lfLegQd0_ulnaEnd_guide.ry"
		 -l on;
connectAttr "lfLegQd0_ulnaEnd_guide_aimConstraint1.crz" "lfLegQd0_ulnaEnd_guide.rz"
		 -l on;
connectAttr "lfLegQd0_ulnaEnd_guide.pim" "lfLegQd0_ulnaEnd_guide_aimConstraint1.cpim"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.t" "lfLegQd0_ulnaEnd_guide_aimConstraint1.ct"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.rp" "lfLegQd0_ulnaEnd_guide_aimConstraint1.crp"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.rpt" "lfLegQd0_ulnaEnd_guide_aimConstraint1.crt"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.ro" "lfLegQd0_ulnaEnd_guide_aimConstraint1.cro"
		;
connectAttr "lfLegQd0_ulna_guide.t" "lfLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_ulna_guide.rp" "lfLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_ulna_guide.rpt" "lfLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_ulna_guide.pm" "lfLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_ulnaEnd_guide_aimConstraint1.w0" "lfLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_master_guide.wm" "lfLegQd0_ulnaEnd_guide_aimConstraint1.wum"
		;
connectAttr "lfLegQd0_master_guide.carpalFix" "lfLegQd0_carpal_guide.v" -l on;
connectAttr "lfLegQd0_digit_guide_aimConstraint1.crx" "lfLegQd0_digit_guide.rx" 
		-l on;
connectAttr "lfLegQd0_digit_guide_aimConstraint1.cry" "lfLegQd0_digit_guide.ry" 
		-l on;
connectAttr "lfLegQd0_digit_guide_aimConstraint1.crz" "lfLegQd0_digit_guide.rz" 
		-l on;
connectAttr "lfLegQd0_digit_guide.pim" "lfLegQd0_digit_guide_aimConstraint1.cpim"
		;
connectAttr "lfLegQd0_digit_guide.t" "lfLegQd0_digit_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_digit_guide.rp" "lfLegQd0_digit_guide_aimConstraint1.crp";
connectAttr "lfLegQd0_digit_guide.rpt" "lfLegQd0_digit_guide_aimConstraint1.crt"
		;
connectAttr "lfLegQd0_digit_guide.ro" "lfLegQd0_digit_guide_aimConstraint1.cro";
connectAttr "lfLegQd0_ball_guide.t" "lfLegQd0_digit_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_ball_guide.rp" "lfLegQd0_digit_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_ball_guide.rpt" "lfLegQd0_digit_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_ball_guide.pm" "lfLegQd0_digit_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_digit_guide_aimConstraint1.w0" "lfLegQd0_digit_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_ball_guide_aimConstraint1.crx" "lfLegQd0_ball_guide.rx" -l
		 on;
connectAttr "lfLegQd0_ball_guide_aimConstraint1.cry" "lfLegQd0_ball_guide.ry" -l
		 on;
connectAttr "lfLegQd0_ball_guide_aimConstraint1.crz" "lfLegQd0_ball_guide.rz" -l
		 on;
connectAttr "lfLegQd0_ball_guide.pim" "lfLegQd0_ball_guide_aimConstraint1.cpim";
connectAttr "lfLegQd0_ball_guide.t" "lfLegQd0_ball_guide_aimConstraint1.ct";
connectAttr "lfLegQd0_ball_guide.rp" "lfLegQd0_ball_guide_aimConstraint1.crp";
connectAttr "lfLegQd0_ball_guide.rpt" "lfLegQd0_ball_guide_aimConstraint1.crt";
connectAttr "lfLegQd0_ball_guide.ro" "lfLegQd0_ball_guide_aimConstraint1.cro";
connectAttr "lfLegQd0_tip_guide.t" "lfLegQd0_ball_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_tip_guide.rp" "lfLegQd0_ball_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_tip_guide.rpt" "lfLegQd0_ball_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_tip_guide.pm" "lfLegQd0_ball_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_ball_guide_aimConstraint1.w0" "lfLegQd0_ball_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_pv_loc_ofs_pointConstraint1.ctx" "lfLegQd0_pv_loc_ofs.tx";
connectAttr "lfLegQd0_pv_loc_ofs_pointConstraint1.cty" "lfLegQd0_pv_loc_ofs.ty";
connectAttr "lfLegQd0_pv_loc_ofs_pointConstraint1.ctz" "lfLegQd0_pv_loc_ofs.tz";
connectAttr "lfLegQd0_pv_loc_ofs.pim" "lfLegQd0_pv_loc_ofs_pointConstraint1.cpim"
		;
connectAttr "lfLegQd0_pv_loc_ofs.rp" "lfLegQd0_pv_loc_ofs_pointConstraint1.crp";
connectAttr "lfLegQd0_pv_loc_ofs.rpt" "lfLegQd0_pv_loc_ofs_pointConstraint1.crt"
		;
connectAttr "lfLegQd0_upr_guide.t" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[0].tt"
		;
connectAttr "lfLegQd0_upr_guide.rp" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[0].trp"
		;
connectAttr "lfLegQd0_upr_guide.rpt" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[0].trt"
		;
connectAttr "lfLegQd0_upr_guide.pm" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[0].tpm"
		;
connectAttr "lfLegQd0_pv_loc_ofs_pointConstraint1.w0" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_palm_guide.t" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[1].tt"
		;
connectAttr "lfLegQd0_palm_guide.rp" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[1].trp"
		;
connectAttr "lfLegQd0_palm_guide.rpt" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "lfLegQd0_palm_guide.pm" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[1].tpm"
		;
connectAttr "lfLegQd0_pv_loc_ofs_pointConstraint1.w1" "lfLegQd0_pv_loc_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "lfLegQd0_pvc_guide.posRatio" "lfLegQd0_pv_loc_ofs_pointConstraint1.w0"
		;
connectAttr "lfLegQd0_pv_loc_aimConstraint1.crx" "lfLegQd0_pv_loc.rx" -l on;
connectAttr "lfLegQd0_pv_loc_aimConstraint1.cry" "lfLegQd0_pv_loc.ry" -l on;
connectAttr "lfLegQd0_pv_loc_aimConstraint1.crz" "lfLegQd0_pv_loc.rz" -l on;
connectAttr "lfLegQd0_pv_loc.pim" "lfLegQd0_pv_loc_aimConstraint1.cpim";
connectAttr "lfLegQd0_pv_loc.t" "lfLegQd0_pv_loc_aimConstraint1.ct";
connectAttr "lfLegQd0_pv_loc.rp" "lfLegQd0_pv_loc_aimConstraint1.crp";
connectAttr "lfLegQd0_pv_loc.rpt" "lfLegQd0_pv_loc_aimConstraint1.crt";
connectAttr "lfLegQd0_pv_loc.ro" "lfLegQd0_pv_loc_aimConstraint1.cro";
connectAttr "lfLegQd0_lwr_guide.t" "lfLegQd0_pv_loc_aimConstraint1.tg[0].tt";
connectAttr "lfLegQd0_lwr_guide.rp" "lfLegQd0_pv_loc_aimConstraint1.tg[0].trp";
connectAttr "lfLegQd0_lwr_guide.rpt" "lfLegQd0_pv_loc_aimConstraint1.tg[0].trt";
connectAttr "lfLegQd0_lwr_guide.pm" "lfLegQd0_pv_loc_aimConstraint1.tg[0].tpm";
connectAttr "lfLegQd0_pv_loc_aimConstraint1.w0" "lfLegQd0_pv_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "lfLegQd0_condition2.ocr" "lfLegQd0_toeMain_guide.v";
connectAttr "lfLegQd0_le_cdn_1.ocr" "lfLegQd0_toe0_2_guide.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_toe0_1_guide.v";
connectAttr "lfLegQd0_le_cdn_3.ocr" "lfLegQd0_toe1_2_guide.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_toe1_1_guide.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_toe2_1_guide.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_toe3_1_guide.v";
connectAttr "lfLegQd0_le_cdn_2.ocr" "lfLegQd0_toe4_2_guide.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_toe4_1_guide.v";
connectAttr "lfLegQd0_DCM_1.ot" "lfLegQd0_line_01Shape.cp[0]";
connectAttr "lfLegQd0_DCM_2.ot" "lfLegQd0_line_01Shape.cp[1]";
connectAttr "lfLegQd0_DCM_2.ot" "lfLegQd0_line_02Shape.cp[0]";
connectAttr "lfLegQd0_DCM_3.ot" "lfLegQd0_line_02Shape.cp[1]";
connectAttr "lfLegQd0_DCM_3.ot" "lfLegQd0_line_03Shape.cp[0]";
connectAttr "lfLegQd0_DCM_4.ot" "lfLegQd0_line_03Shape.cp[1]";
connectAttr "lfLegQd0_DCM_3.ot" "lfLegQd0_line_06Shape.cp[0]";
connectAttr "lfLegQd0_DCM_7.ot" "lfLegQd0_line_06Shape.cp[1]";
connectAttr "lfLegQd0_DCM_4.ot" "lfLegQd0_curveShape36.cp[0]";
connectAttr "lfLegQd0_DCM_73.ot" "lfLegQd0_curveShape36.cp[1]";
connectAttr "lfLegQd0_DCM_98.ot" "lfLegQd0_curveShape56.cp[0]";
connectAttr "lfLegQd0_DCM_73.ot" "lfLegQd0_curveShape56.cp[1]";
connectAttr "lfLegQd0_DCM_98.ot" "lfLegQd0_curveShape57.cp[0]";
connectAttr "lfLegQd0_DCM_99.ot" "lfLegQd0_curveShape57.cp[1]";
connectAttr "lfLegQd0_condition2.ocr" "lfLegQd0_line_grp_mammalFoot.v";
connectAttr "lfLegQd0_le_cdn_1.ocr" "lfLegQd0_toe_line_grp1.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_line_25.v";
connectAttr "lfLegQd0_DCM_94.ot" "lfLegQd0_curveShape53.cp[0]";
connectAttr "lfLegQd0_DCM_95.ot" "lfLegQd0_curveShape53.cp[1]";
connectAttr "lfLegQd0_DCM_95.ot" "lfLegQd0_curveShape54.cp[0]";
connectAttr "lfLegQd0_DCM_96.ot" "lfLegQd0_curveShape54.cp[1]";
connectAttr "lfLegQd0_DCM_96.ot" "lfLegQd0_curveShape55.cp[0]";
connectAttr "lfLegQd0_DCM_97.ot" "lfLegQd0_curveShape55.cp[1]";
connectAttr "lfLegQd0_le_cdn_3.ocr" "lfLegQd0_toe_line_grp2.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_line_21.v";
connectAttr "lfLegQd0_DCM_89.ot" "lfLegQd0_curveShape49.cp[0]";
connectAttr "lfLegQd0_DCM_90.ot" "lfLegQd0_curveShape49.cp[1]";
connectAttr "lfLegQd0_DCM_90.ot" "lfLegQd0_curveShape50.cp[0]";
connectAttr "lfLegQd0_DCM_91.ot" "lfLegQd0_curveShape50.cp[1]";
connectAttr "lfLegQd0_DCM_91.ot" "lfLegQd0_curveShape51.cp[0]";
connectAttr "lfLegQd0_DCM_92.ot" "lfLegQd0_curveShape51.cp[1]";
connectAttr "lfLegQd0_DCM_92.ot" "lfLegQd0_curveShape52.cp[0]";
connectAttr "lfLegQd0_DCM_93.ot" "lfLegQd0_curveShape52.cp[1]";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_line_17.v";
connectAttr "lfLegQd0_DCM_84.ot" "lfLegQd0_curveShape45.cp[0]";
connectAttr "lfLegQd0_DCM_85.ot" "lfLegQd0_curveShape45.cp[1]";
connectAttr "lfLegQd0_DCM_85.ot" "lfLegQd0_curveShape46.cp[0]";
connectAttr "lfLegQd0_DCM_86.ot" "lfLegQd0_curveShape46.cp[1]";
connectAttr "lfLegQd0_DCM_86.ot" "lfLegQd0_curveShape47.cp[0]";
connectAttr "lfLegQd0_DCM_87.ot" "lfLegQd0_curveShape47.cp[1]";
connectAttr "lfLegQd0_DCM_87.ot" "lfLegQd0_curveShape48.cp[0]";
connectAttr "lfLegQd0_DCM_88.ot" "lfLegQd0_curveShape48.cp[1]";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_line_13.v";
connectAttr "lfLegQd0_DCM_79.ot" "lfLegQd0_curveShape41.cp[0]";
connectAttr "lfLegQd0_DCM_80.ot" "lfLegQd0_curveShape41.cp[1]";
connectAttr "lfLegQd0_DCM_80.ot" "lfLegQd0_curveShape42.cp[0]";
connectAttr "lfLegQd0_DCM_81.ot" "lfLegQd0_curveShape42.cp[1]";
connectAttr "lfLegQd0_DCM_81.ot" "lfLegQd0_curveShape43.cp[0]";
connectAttr "lfLegQd0_DCM_82.ot" "lfLegQd0_curveShape43.cp[1]";
connectAttr "lfLegQd0_DCM_82.ot" "lfLegQd0_curveShape44.cp[0]";
connectAttr "lfLegQd0_DCM_83.ot" "lfLegQd0_curveShape44.cp[1]";
connectAttr "lfLegQd0_le_cdn_2.ocr" "lfLegQd0_toe_line_grp5.v";
connectAttr "lfLegQd0_master_guide.includeMeta" "lfLegQd0_line_09.v";
connectAttr "lfLegQd0_DCM_74.ot" "lfLegQd0_curveShape37.cp[0]";
connectAttr "lfLegQd0_DCM_75.ot" "lfLegQd0_curveShape37.cp[1]";
connectAttr "lfLegQd0_DCM_75.ot" "lfLegQd0_curveShape38.cp[0]";
connectAttr "lfLegQd0_DCM_76.ot" "lfLegQd0_curveShape38.cp[1]";
connectAttr "lfLegQd0_DCM_76.ot" "lfLegQd0_curveShape39.cp[0]";
connectAttr "lfLegQd0_DCM_77.ot" "lfLegQd0_curveShape39.cp[1]";
connectAttr "lfLegQd0_DCM_77.ot" "lfLegQd0_curveShape40.cp[0]";
connectAttr "lfLegQd0_DCM_78.ot" "lfLegQd0_curveShape40.cp[1]";
connectAttr "lfLegQd0_master_guide.dualBone" "lfLegQd0_line_grp_dual.v";
connectAttr "lfLegQd0_DCM_8.ot" "lfLegQd0_line_07Shape.cp[0]";
connectAttr "lfLegQd0_DCM_9.ot" "lfLegQd0_line_07Shape.cp[1]";
connectAttr "lfLegQd0_DCM_10.ot" "lfLegQd0_line_08Shape.cp[0]";
connectAttr "lfLegQd0_DCM_11.ot" "lfLegQd0_line_08Shape.cp[1]";
connectAttr "lfLegQd0_condition3.ocr" "lfLegQd0_line_grp_birdFoot.v";
connectAttr "lfLegQd0_condition4.ocr" "lfLegQd0_group_toe_0.v";
connectAttr "lfLegQd0_DCM_115.ot" "lfLegQd0_curveShape70.cp[0]";
connectAttr "lfLegQd0_DCM_116.ot" "lfLegQd0_curveShape70.cp[1]";
connectAttr "lfLegQd0_DCM_116.ot" "lfLegQd0_curveShape71.cp[0]";
connectAttr "lfLegQd0_DCM_117.ot" "lfLegQd0_curveShape71.cp[1]";
connectAttr "lfLegQd0_condition5.ocr" "lfLegQd0_group_toe_1.v";
connectAttr "lfLegQd0_DCM_100.ot" "lfLegQd0_curveShape58.cp[0]";
connectAttr "lfLegQd0_DCM_101.ot" "lfLegQd0_curveShape58.cp[1]";
connectAttr "lfLegQd0_DCM_101.ot" "lfLegQd0_curveShape59.cp[0]";
connectAttr "lfLegQd0_DCM_102.ot" "lfLegQd0_curveShape59.cp[1]";
connectAttr "lfLegQd0_DCM_102.ot" "lfLegQd0_curveShape60.cp[0]";
connectAttr "lfLegQd0_DCM_103.ot" "lfLegQd0_curveShape60.cp[1]";
connectAttr "lfLegQd0_DCM_104.ot" "lfLegQd0_curveShape61.cp[0]";
connectAttr "lfLegQd0_DCM_105.ot" "lfLegQd0_curveShape61.cp[1]";
connectAttr "lfLegQd0_DCM_105.ot" "lfLegQd0_curveShape62.cp[0]";
connectAttr "lfLegQd0_DCM_106.ot" "lfLegQd0_curveShape62.cp[1]";
connectAttr "lfLegQd0_DCM_106.ot" "lfLegQd0_curveShape63.cp[0]";
connectAttr "lfLegQd0_DCM_107.ot" "lfLegQd0_curveShape63.cp[1]";
connectAttr "lfLegQd0_DCM_107.ot" "lfLegQd0_curveShape64.cp[0]";
connectAttr "lfLegQd0_DCM_108.ot" "lfLegQd0_curveShape64.cp[1]";
connectAttr "lfLegQd0_DCM_109.ot" "lfLegQd0_curveShape65.cp[0]";
connectAttr "lfLegQd0_DCM_110.ot" "lfLegQd0_curveShape65.cp[1]";
connectAttr "lfLegQd0_DCM_110.ot" "lfLegQd0_curveShape66.cp[0]";
connectAttr "lfLegQd0_DCM_111.ot" "lfLegQd0_curveShape66.cp[1]";
connectAttr "lfLegQd0_DCM_111.ot" "lfLegQd0_curveShape67.cp[0]";
connectAttr "lfLegQd0_DCM_112.ot" "lfLegQd0_curveShape67.cp[1]";
connectAttr "lfLegQd0_DCM_112.ot" "lfLegQd0_curveShape68.cp[0]";
connectAttr "lfLegQd0_DCM_113.ot" "lfLegQd0_curveShape68.cp[1]";
connectAttr "lfLegQd0_DCM_113.ot" "lfLegQd0_curveShape69.cp[0]";
connectAttr "lfLegQd0_DCM_114.ot" "lfLegQd0_curveShape69.cp[1]";
connectAttr "lfLegQd0_condition3.ocr" "lfLegQd0_toeBird_guide.v";
connectAttr "lfLegQd0_condition4.ocr" "lfLegQd0_toeBird00_1_guide_ofs.v";
connectAttr "lfLegQd0_condition5.ocr" "lfLegQd0_toeBird01_1_guide_ofs.v";
connectAttr "rtLegQd0_hip_guide_aimConstraint1.crx" "rtLegQd0_hip_guide.rx" -l on
		;
connectAttr "rtLegQd0_hip_guide_aimConstraint1.cry" "rtLegQd0_hip_guide.ry" -l on
		;
connectAttr "rtLegQd0_hip_guide_aimConstraint1.crz" "rtLegQd0_hip_guide.rz" -l on
		;
connectAttr "rtLegQd0_hip_guide.pim" "rtLegQd0_hip_guide_aimConstraint1.cpim";
connectAttr "rtLegQd0_hip_guide.t" "rtLegQd0_hip_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_hip_guide.rp" "rtLegQd0_hip_guide_aimConstraint1.crp";
connectAttr "rtLegQd0_hip_guide.rpt" "rtLegQd0_hip_guide_aimConstraint1.crt";
connectAttr "rtLegQd0_hip_guide.ro" "rtLegQd0_hip_guide_aimConstraint1.cro";
connectAttr "rtLegQd0_upr_guide.t" "rtLegQd0_hip_guide_aimConstraint1.tg[0].tt";
connectAttr "rtLegQd0_upr_guide.rp" "rtLegQd0_hip_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_upr_guide.rpt" "rtLegQd0_hip_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_upr_guide.pm" "rtLegQd0_hip_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_hip_guide_aimConstraint1.w0" "rtLegQd0_hip_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_upr_guide.wm" "rtLegQd0_hip_guide_aimConstraint1.wum";
connectAttr "rtLegQd0_upr_guide_aimConstraint1.crx" "rtLegQd0_upr_guide.rx" -l on
		;
connectAttr "rtLegQd0_upr_guide_aimConstraint1.cry" "rtLegQd0_upr_guide.ry" -l on
		;
connectAttr "rtLegQd0_upr_guide_aimConstraint1.crz" "rtLegQd0_upr_guide.rz" -l on
		;
connectAttr "rtLegQd0_upr_guide.pim" "rtLegQd0_upr_guide_aimConstraint1.cpim";
connectAttr "rtLegQd0_upr_guide.t" "rtLegQd0_upr_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_upr_guide.rp" "rtLegQd0_upr_guide_aimConstraint1.crp";
connectAttr "rtLegQd0_upr_guide.rpt" "rtLegQd0_upr_guide_aimConstraint1.crt";
connectAttr "rtLegQd0_upr_guide.ro" "rtLegQd0_upr_guide_aimConstraint1.cro";
connectAttr "rtLegQd0_lwr_guide.t" "rtLegQd0_upr_guide_aimConstraint1.tg[0].tt";
connectAttr "rtLegQd0_lwr_guide.rp" "rtLegQd0_upr_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_lwr_guide.rpt" "rtLegQd0_upr_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_lwr_guide.pm" "rtLegQd0_upr_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_upr_guide_aimConstraint1.w0" "rtLegQd0_upr_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_lwr_guide.wm" "rtLegQd0_upr_guide_aimConstraint1.wum";
connectAttr "rtLegQd0_lwr_guide_ofs_pointConstraint1.ctx" "rtLegQd0_lwr_guide_ofs.tx"
		;
connectAttr "rtLegQd0_lwr_guide_ofs_pointConstraint1.cty" "rtLegQd0_lwr_guide_ofs.ty"
		;
connectAttr "rtLegQd0_lwr_guide_ofs_pointConstraint1.ctz" "rtLegQd0_lwr_guide_ofs.tz"
		;
connectAttr "rtLegQd0_lwr_guide_ofs.pim" "rtLegQd0_lwr_guide_ofs_pointConstraint1.cpim"
		;
connectAttr "rtLegQd0_lwr_guide_ofs.rp" "rtLegQd0_lwr_guide_ofs_pointConstraint1.crp"
		;
connectAttr "rtLegQd0_lwr_guide_ofs.rpt" "rtLegQd0_lwr_guide_ofs_pointConstraint1.crt"
		;
connectAttr "rtLegQd0_upr_guide.t" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_upr_guide.rp" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_upr_guide.rpt" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_upr_guide.pm" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_lwr_guide_ofs_pointConstraint1.w0" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_palm_guide.t" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].tt"
		;
connectAttr "rtLegQd0_palm_guide.rp" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].trp"
		;
connectAttr "rtLegQd0_palm_guide.rpt" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "rtLegQd0_palm_guide.pm" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].tpm"
		;
connectAttr "rtLegQd0_lwr_guide_ofs_pointConstraint1.w1" "rtLegQd0_lwr_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "rtLegQd0_lwr_guide_aimConstraint1.crx" "rtLegQd0_lwr_guide.rx" -l on
		;
connectAttr "rtLegQd0_lwr_guide_aimConstraint1.cry" "rtLegQd0_lwr_guide.ry" -l on
		;
connectAttr "rtLegQd0_lwr_guide_aimConstraint1.crz" "rtLegQd0_lwr_guide.rz" -l on
		;
connectAttr "rtLegQd0_lwr_guide.pim" "rtLegQd0_lwr_guide_aimConstraint1.cpim";
connectAttr "rtLegQd0_lwr_guide.t" "rtLegQd0_lwr_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_lwr_guide.rp" "rtLegQd0_lwr_guide_aimConstraint1.crp";
connectAttr "rtLegQd0_lwr_guide.rpt" "rtLegQd0_lwr_guide_aimConstraint1.crt";
connectAttr "rtLegQd0_lwr_guide.ro" "rtLegQd0_lwr_guide_aimConstraint1.cro";
connectAttr "rtLegQd0_palm_guide.t" "rtLegQd0_lwr_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_palm_guide.rp" "rtLegQd0_lwr_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_palm_guide.rpt" "rtLegQd0_lwr_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_palm_guide.pm" "rtLegQd0_lwr_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_lwr_guide_aimConstraint1.w0" "rtLegQd0_lwr_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_pv_loc.wm" "rtLegQd0_lwr_guide_aimConstraint1.wum";
connectAttr "rtLegQd0_master_guide.patellaBone" "rtLegQd0_patella_guide.v" -l on
		;
connectAttr "rtLegQd0_master_guide.dualBone" "rtLegQd0_radius_guide_ZRO.v";
connectAttr "rtLegQd0_radius_guide_aimConstraint1.crx" "rtLegQd0_radius_guide.rx"
		 -l on;
connectAttr "rtLegQd0_radius_guide_aimConstraint1.cry" "rtLegQd0_radius_guide.ry"
		 -l on;
connectAttr "rtLegQd0_radius_guide_aimConstraint1.crz" "rtLegQd0_radius_guide.rz"
		 -l on;
connectAttr "rtLegQd0_radius_guide.pim" "rtLegQd0_radius_guide_aimConstraint1.cpim"
		;
connectAttr "rtLegQd0_radius_guide.t" "rtLegQd0_radius_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_radius_guide.rp" "rtLegQd0_radius_guide_aimConstraint1.crp"
		;
connectAttr "rtLegQd0_radius_guide.rpt" "rtLegQd0_radius_guide_aimConstraint1.crt"
		;
connectAttr "rtLegQd0_radius_guide.ro" "rtLegQd0_radius_guide_aimConstraint1.cro"
		;
connectAttr "rtLegQd0_radiusEnd_guide.t" "rtLegQd0_radius_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_radiusEnd_guide.rp" "rtLegQd0_radius_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_radiusEnd_guide.rpt" "rtLegQd0_radius_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_radiusEnd_guide.pm" "rtLegQd0_radius_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_radius_guide_aimConstraint1.w0" "rtLegQd0_radius_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_master_guide.wm" "rtLegQd0_radius_guide_aimConstraint1.wum"
		;
connectAttr "rtLegQd0_master_guide.dualBone" "rtLegQd0_ulna_guide_ZRO.v";
connectAttr "rtLegQd0_ulna_guide_aimConstraint1.crx" "rtLegQd0_ulna_guide.rx" -l
		 on;
connectAttr "rtLegQd0_ulna_guide_aimConstraint1.cry" "rtLegQd0_ulna_guide.ry" -l
		 on;
connectAttr "rtLegQd0_ulna_guide_aimConstraint1.crz" "rtLegQd0_ulna_guide.rz" -l
		 on;
connectAttr "rtLegQd0_ulna_guide.pim" "rtLegQd0_ulna_guide_aimConstraint1.cpim";
connectAttr "rtLegQd0_ulna_guide.t" "rtLegQd0_ulna_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_ulna_guide.rp" "rtLegQd0_ulna_guide_aimConstraint1.crp";
connectAttr "rtLegQd0_ulna_guide.rpt" "rtLegQd0_ulna_guide_aimConstraint1.crt";
connectAttr "rtLegQd0_ulna_guide.ro" "rtLegQd0_ulna_guide_aimConstraint1.cro";
connectAttr "rtLegQd0_ulnaEnd_guide.t" "rtLegQd0_ulna_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.rp" "rtLegQd0_ulna_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.rpt" "rtLegQd0_ulna_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.pm" "rtLegQd0_ulna_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_ulna_guide_aimConstraint1.w0" "rtLegQd0_ulna_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_master_guide.wm" "rtLegQd0_ulna_guide_aimConstraint1.wum";
connectAttr "rtLegQd0_master_guide.dualBone" "rtLegQd0_radiusEnd_guide_ZRO.v";
connectAttr "rtLegQd0_radiusEnd_guide_aimConstraint1.crx" "rtLegQd0_radiusEnd_guide.rx"
		 -l on;
connectAttr "rtLegQd0_radiusEnd_guide_aimConstraint1.cry" "rtLegQd0_radiusEnd_guide.ry"
		 -l on;
connectAttr "rtLegQd0_radiusEnd_guide_aimConstraint1.crz" "rtLegQd0_radiusEnd_guide.rz"
		 -l on;
connectAttr "rtLegQd0_radiusEnd_guide.pim" "rtLegQd0_radiusEnd_guide_aimConstraint1.cpim"
		;
connectAttr "rtLegQd0_radiusEnd_guide.t" "rtLegQd0_radiusEnd_guide_aimConstraint1.ct"
		;
connectAttr "rtLegQd0_radiusEnd_guide.rp" "rtLegQd0_radiusEnd_guide_aimConstraint1.crp"
		;
connectAttr "rtLegQd0_radiusEnd_guide.rpt" "rtLegQd0_radiusEnd_guide_aimConstraint1.crt"
		;
connectAttr "rtLegQd0_radiusEnd_guide.ro" "rtLegQd0_radiusEnd_guide_aimConstraint1.cro"
		;
connectAttr "rtLegQd0_radius_guide.t" "rtLegQd0_radiusEnd_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_radius_guide.rp" "rtLegQd0_radiusEnd_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_radius_guide.rpt" "rtLegQd0_radiusEnd_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_radius_guide.pm" "rtLegQd0_radiusEnd_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_radiusEnd_guide_aimConstraint1.w0" "rtLegQd0_radiusEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_master_guide.wm" "rtLegQd0_radiusEnd_guide_aimConstraint1.wum"
		;
connectAttr "rtLegQd0_master_guide.dualBone" "rtLegQd0_ulnaEnd_guide_ZRO.v";
connectAttr "rtLegQd0_ulnaEnd_guide_aimConstraint1.crx" "rtLegQd0_ulnaEnd_guide.rx"
		 -l on;
connectAttr "rtLegQd0_ulnaEnd_guide_aimConstraint1.cry" "rtLegQd0_ulnaEnd_guide.ry"
		 -l on;
connectAttr "rtLegQd0_ulnaEnd_guide_aimConstraint1.crz" "rtLegQd0_ulnaEnd_guide.rz"
		 -l on;
connectAttr "rtLegQd0_ulnaEnd_guide.pim" "rtLegQd0_ulnaEnd_guide_aimConstraint1.cpim"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.t" "rtLegQd0_ulnaEnd_guide_aimConstraint1.ct"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.rp" "rtLegQd0_ulnaEnd_guide_aimConstraint1.crp"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.rpt" "rtLegQd0_ulnaEnd_guide_aimConstraint1.crt"
		;
connectAttr "rtLegQd0_ulnaEnd_guide.ro" "rtLegQd0_ulnaEnd_guide_aimConstraint1.cro"
		;
connectAttr "rtLegQd0_ulna_guide.t" "rtLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_ulna_guide.rp" "rtLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_ulna_guide.rpt" "rtLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_ulna_guide.pm" "rtLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_ulnaEnd_guide_aimConstraint1.w0" "rtLegQd0_ulnaEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_master_guide.wm" "rtLegQd0_ulnaEnd_guide_aimConstraint1.wum"
		;
connectAttr "rtLegQd0_master_guide.carpalFix" "rtLegQd0_carpal_guide.v" -l on;
connectAttr "rtLegQd0_ball_guide_aimConstraint1.crx" "rtLegQd0_ball_guide.rx" -l
		 on;
connectAttr "rtLegQd0_ball_guide_aimConstraint1.cry" "rtLegQd0_ball_guide.ry" -l
		 on;
connectAttr "rtLegQd0_ball_guide_aimConstraint1.crz" "rtLegQd0_ball_guide.rz" -l
		 on;
connectAttr "rtLegQd0_ball_guide.pim" "rtLegQd0_ball_guide_aimConstraint1.cpim";
connectAttr "rtLegQd0_ball_guide.t" "rtLegQd0_ball_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_ball_guide.rp" "rtLegQd0_ball_guide_aimConstraint1.crp";
connectAttr "rtLegQd0_ball_guide.rpt" "rtLegQd0_ball_guide_aimConstraint1.crt";
connectAttr "rtLegQd0_ball_guide.ro" "rtLegQd0_ball_guide_aimConstraint1.cro";
connectAttr "rtLegQd0_tip_guide.t" "rtLegQd0_ball_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_tip_guide.rp" "rtLegQd0_ball_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_tip_guide.rpt" "rtLegQd0_ball_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_tip_guide.pm" "rtLegQd0_ball_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_ball_guide_aimConstraint1.w0" "rtLegQd0_ball_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_tip_guide.wm" "rtLegQd0_ball_guide_aimConstraint1.wum";
connectAttr "rtLegQd0_pv_loc_ofs_pointConstraint1.ctx" "rtLegQd0_pv_loc_ofs.tx";
connectAttr "rtLegQd0_pv_loc_ofs_pointConstraint1.cty" "rtLegQd0_pv_loc_ofs.ty";
connectAttr "rtLegQd0_pv_loc_ofs_pointConstraint1.ctz" "rtLegQd0_pv_loc_ofs.tz";
connectAttr "rtLegQd0_pv_loc_ofs.pim" "rtLegQd0_pv_loc_ofs_pointConstraint1.cpim"
		;
connectAttr "rtLegQd0_pv_loc_ofs.rp" "rtLegQd0_pv_loc_ofs_pointConstraint1.crp";
connectAttr "rtLegQd0_pv_loc_ofs.rpt" "rtLegQd0_pv_loc_ofs_pointConstraint1.crt"
		;
connectAttr "rtLegQd0_upr_guide.t" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_upr_guide.rp" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_upr_guide.rpt" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_upr_guide.pm" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_pv_loc_ofs_pointConstraint1.w0" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_palm_guide.t" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[1].tt"
		;
connectAttr "rtLegQd0_palm_guide.rp" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[1].trp"
		;
connectAttr "rtLegQd0_palm_guide.rpt" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "rtLegQd0_palm_guide.pm" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[1].tpm"
		;
connectAttr "rtLegQd0_pv_loc_ofs_pointConstraint1.w1" "rtLegQd0_pv_loc_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "rtLegQd0_pvc_guide.posRatio" "rtLegQd0_pv_loc_ofs_pointConstraint1.w0"
		;
connectAttr "rtLegQd0_pv_loc_aimConstraint1.crx" "rtLegQd0_pv_loc.rx" -l on;
connectAttr "rtLegQd0_pv_loc_aimConstraint1.cry" "rtLegQd0_pv_loc.ry" -l on;
connectAttr "rtLegQd0_pv_loc_aimConstraint1.crz" "rtLegQd0_pv_loc.rz" -l on;
connectAttr "rtLegQd0_pv_loc.pim" "rtLegQd0_pv_loc_aimConstraint1.cpim";
connectAttr "rtLegQd0_pv_loc.t" "rtLegQd0_pv_loc_aimConstraint1.ct";
connectAttr "rtLegQd0_pv_loc.rp" "rtLegQd0_pv_loc_aimConstraint1.crp";
connectAttr "rtLegQd0_pv_loc.rpt" "rtLegQd0_pv_loc_aimConstraint1.crt";
connectAttr "rtLegQd0_pv_loc.ro" "rtLegQd0_pv_loc_aimConstraint1.cro";
connectAttr "rtLegQd0_lwr_guide.t" "rtLegQd0_pv_loc_aimConstraint1.tg[0].tt";
connectAttr "rtLegQd0_lwr_guide.rp" "rtLegQd0_pv_loc_aimConstraint1.tg[0].trp";
connectAttr "rtLegQd0_lwr_guide.rpt" "rtLegQd0_pv_loc_aimConstraint1.tg[0].trt";
connectAttr "rtLegQd0_lwr_guide.pm" "rtLegQd0_pv_loc_aimConstraint1.tg[0].tpm";
connectAttr "rtLegQd0_pv_loc_aimConstraint1.w0" "rtLegQd0_pv_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_digit_guide_aimConstraint1.crx" "rtLegQd0_digit_guide.rx" 
		-l on;
connectAttr "rtLegQd0_digit_guide_aimConstraint1.cry" "rtLegQd0_digit_guide.ry" 
		-l on;
connectAttr "rtLegQd0_digit_guide_aimConstraint1.crz" "rtLegQd0_digit_guide.rz" 
		-l on;
connectAttr "rtLegQd0_digit_guide.pim" "rtLegQd0_digit_guide_aimConstraint1.cpim"
		;
connectAttr "rtLegQd0_digit_guide.t" "rtLegQd0_digit_guide_aimConstraint1.ct";
connectAttr "rtLegQd0_digit_guide.rp" "rtLegQd0_digit_guide_aimConstraint1.crp";
connectAttr "rtLegQd0_digit_guide.rpt" "rtLegQd0_digit_guide_aimConstraint1.crt"
		;
connectAttr "rtLegQd0_digit_guide.ro" "rtLegQd0_digit_guide_aimConstraint1.cro";
connectAttr "rtLegQd0_ball_guide.t" "rtLegQd0_digit_guide_aimConstraint1.tg[0].tt"
		;
connectAttr "rtLegQd0_ball_guide.rp" "rtLegQd0_digit_guide_aimConstraint1.tg[0].trp"
		;
connectAttr "rtLegQd0_ball_guide.rpt" "rtLegQd0_digit_guide_aimConstraint1.tg[0].trt"
		;
connectAttr "rtLegQd0_ball_guide.pm" "rtLegQd0_digit_guide_aimConstraint1.tg[0].tpm"
		;
connectAttr "rtLegQd0_digit_guide_aimConstraint1.w0" "rtLegQd0_digit_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "rtLegQd0_condition1.ocr" "rtLegQd0_toeMain_guide.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_toe2_1_guide.v";
connectAttr "rtLegQd0_le_cdn_3.ocr" "rtLegQd0_toe1_2_guide.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_toe1_1_guide.v";
connectAttr "rtLegQd0_le_cdn_1.ocr" "rtLegQd0_toe0_2_guide.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_toe0_1_guide.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_toe3_1_guide.v";
connectAttr "rtLegQd0_le_cdn_2.ocr" "rtLegQd0_toe4_2_guide.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_toe4_1_guide.v";
connectAttr "rtLegQd0_DCM_1.ot" "rtLegQd0_line_01Shape.cp[0]";
connectAttr "rtLegQd0_DCM_2.ot" "rtLegQd0_line_01Shape.cp[1]";
connectAttr "rtLegQd0_DCM_2.ot" "rtLegQd0_line_02Shape.cp[0]";
connectAttr "rtLegQd0_DCM_3.ot" "rtLegQd0_line_02Shape.cp[1]";
connectAttr "rtLegQd0_DCM_3.ot" "rtLegQd0_line_03Shape.cp[0]";
connectAttr "rtLegQd0_DCM_4.ot" "rtLegQd0_line_03Shape.cp[1]";
connectAttr "rtLegQd0_DCM_5.ot" "rtLegQd0_line_05Shape.cp[0]";
connectAttr "rtLegQd0_DCM_6.ot" "rtLegQd0_line_05Shape.cp[1]";
connectAttr "rtLegQd0_DCM_7.ot" "rtLegQd0_line_06Shape.cp[0]";
connectAttr "rtLegQd0_DCM_3.ot" "rtLegQd0_line_06Shape.cp[1]";
connectAttr "rtLegQd0_DCM_5.ot" "rtLegQd0_curveShape1.cp[0]";
connectAttr "rtLegQd0_DCM_36.ot" "rtLegQd0_curveShape1.cp[1]";
connectAttr "rtLegQd0_DCM_36.ot" "rtLegQd0_curveShape2.cp[0]";
connectAttr "rtLegQd0_DCM_4.ot" "rtLegQd0_curveShape2.cp[1]";
connectAttr "rtLegQd0_master_guide.dualBone" "rtLegQd0_line_grp_dual.v";
connectAttr "rtLegQd0_DCM_8.ot" "rtLegQd0_line_07Shape.cp[0]";
connectAttr "rtLegQd0_DCM_9.ot" "rtLegQd0_line_07Shape.cp[1]";
connectAttr "rtLegQd0_DCM_10.ot" "rtLegQd0_line_08Shape.cp[0]";
connectAttr "rtLegQd0_DCM_11.ot" "rtLegQd0_line_08Shape.cp[1]";
connectAttr "rtLegQd0_condition1.ocr" "rtLegQd0_line_grp_mammalFoot.v";
connectAttr "rtLegQd0_le_cdn_1.ocr" "rtLegQd0_toe_line_grp1.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp1|rtLegQd0_line_34.v"
		;
connectAttr "rtLegQd0_DCM_37.ot" "rtLegQd0_curveShape3.cp[0]";
connectAttr "rtLegQd0_DCM_38.ot" "rtLegQd0_curveShape3.cp[1]";
connectAttr "rtLegQd0_DCM_38.ot" "rtLegQd0_curveShape4.cp[0]";
connectAttr "rtLegQd0_DCM_39.ot" "rtLegQd0_curveShape4.cp[1]";
connectAttr "rtLegQd0_DCM_39.ot" "rtLegQd0_curveShape5.cp[0]";
connectAttr "rtLegQd0_DCM_40.ot" "rtLegQd0_curveShape5.cp[1]";
connectAttr "rtLegQd0_le_cdn_3.ocr" "rtLegQd0_toe_line_grp2.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp2|rtLegQd0_line_37.v"
		;
connectAttr "rtLegQd0_DCM_41.ot" "rtLegQd0_curveShape6.cp[0]";
connectAttr "rtLegQd0_DCM_42.ot" "rtLegQd0_curveShape6.cp[1]";
connectAttr "rtLegQd0_DCM_42.ot" "rtLegQd0_curveShape7.cp[0]";
connectAttr "rtLegQd0_DCM_43.ot" "rtLegQd0_curveShape7.cp[1]";
connectAttr "rtLegQd0_DCM_43.ot" "rtLegQd0_curveShape8.cp[0]";
connectAttr "rtLegQd0_DCM_44.ot" "rtLegQd0_curveShape8.cp[1]";
connectAttr "rtLegQd0_DCM_44.ot" "rtLegQd0_curveShape9.cp[0]";
connectAttr "rtLegQd0_DCM_45.ot" "rtLegQd0_curveShape9.cp[1]";
connectAttr "rtLegQd0_master_guide.includeMeta" "|GUIDES|rtLegQd0_master_guide|rtLegQd0_line_grp_mammalFoot|rtLegQd0_toe_line_grp3|rtLegQd0_line_41.v"
		;
connectAttr "rtLegQd0_DCM_46.ot" "rtLegQd0_curveShape10.cp[0]";
connectAttr "rtLegQd0_DCM_47.ot" "rtLegQd0_curveShape10.cp[1]";
connectAttr "rtLegQd0_DCM_47.ot" "rtLegQd0_curveShape11.cp[0]";
connectAttr "rtLegQd0_DCM_48.ot" "rtLegQd0_curveShape11.cp[1]";
connectAttr "rtLegQd0_DCM_48.ot" "rtLegQd0_curveShape12.cp[0]";
connectAttr "rtLegQd0_DCM_49.ot" "rtLegQd0_curveShape12.cp[1]";
connectAttr "rtLegQd0_DCM_49.ot" "rtLegQd0_curveShape13.cp[0]";
connectAttr "rtLegQd0_DCM_50.ot" "rtLegQd0_curveShape13.cp[1]";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_line_45.v";
connectAttr "rtLegQd0_DCM_51.ot" "rtLegQd0_curveShape14.cp[0]";
connectAttr "rtLegQd0_DCM_52.ot" "rtLegQd0_curveShape14.cp[1]";
connectAttr "rtLegQd0_DCM_52.ot" "rtLegQd0_curveShape15.cp[0]";
connectAttr "rtLegQd0_DCM_53.ot" "rtLegQd0_curveShape15.cp[1]";
connectAttr "rtLegQd0_DCM_53.ot" "rtLegQd0_curveShape16.cp[0]";
connectAttr "rtLegQd0_DCM_54.ot" "rtLegQd0_curveShape16.cp[1]";
connectAttr "rtLegQd0_DCM_54.ot" "rtLegQd0_curveShape17.cp[0]";
connectAttr "rtLegQd0_DCM_55.ot" "rtLegQd0_curveShape17.cp[1]";
connectAttr "rtLegQd0_le_cdn_2.ocr" "rtLegQd0_toe_line_grp5.v";
connectAttr "rtLegQd0_master_guide.includeMeta" "rtLegQd0_line_49.v";
connectAttr "rtLegQd0_DCM_56.ot" "rtLegQd0_curveShape18.cp[0]";
connectAttr "rtLegQd0_DCM_57.ot" "rtLegQd0_curveShape18.cp[1]";
connectAttr "rtLegQd0_DCM_57.ot" "rtLegQd0_curveShape19.cp[0]";
connectAttr "rtLegQd0_DCM_58.ot" "rtLegQd0_curveShape19.cp[1]";
connectAttr "rtLegQd0_DCM_58.ot" "rtLegQd0_curveShape20.cp[0]";
connectAttr "rtLegQd0_DCM_59.ot" "rtLegQd0_curveShape20.cp[1]";
connectAttr "rtLegQd0_DCM_59.ot" "rtLegQd0_curveShape21.cp[0]";
connectAttr "rtLegQd0_DCM_60.ot" "rtLegQd0_curveShape21.cp[1]";
connectAttr "rtLegQd0_condition2.ocr" "rtLegQd0_line_grp_birdFoot.v";
connectAttr "rtLegQd0_condition3.ocr" "rtLegQd0_group_toe_0.v";
connectAttr "rtLegQd0_DCM_115.ot" "rtLegQd0_curveShape70.cp[0]";
connectAttr "rtLegQd0_DCM_116.ot" "rtLegQd0_curveShape70.cp[1]";
connectAttr "rtLegQd0_DCM_116.ot" "rtLegQd0_curveShape71.cp[0]";
connectAttr "rtLegQd0_DCM_117.ot" "rtLegQd0_curveShape71.cp[1]";
connectAttr "rtLegQd0_DCM_117.ot" "rtLegQd0_curveShape72.cp[0]";
connectAttr "rtLegQd0_DCM_118.ot" "rtLegQd0_curveShape72.cp[1]";
connectAttr "rtLegQd0_condition4.ocr" "rtLegQd0_group_toe_1.v";
connectAttr "rtLegQd0_DCM_100.ot" "rtLegQd0_curveShape58.cp[0]";
connectAttr "rtLegQd0_DCM_101.ot" "rtLegQd0_curveShape58.cp[1]";
connectAttr "rtLegQd0_DCM_101.ot" "rtLegQd0_curveShape59.cp[0]";
connectAttr "rtLegQd0_DCM_102.ot" "rtLegQd0_curveShape59.cp[1]";
connectAttr "rtLegQd0_DCM_102.ot" "rtLegQd0_curveShape60.cp[0]";
connectAttr "rtLegQd0_DCM_103.ot" "rtLegQd0_curveShape60.cp[1]";
connectAttr "rtLegQd0_DCM_104.ot" "rtLegQd0_curveShape61.cp[0]";
connectAttr "rtLegQd0_DCM_105.ot" "rtLegQd0_curveShape61.cp[1]";
connectAttr "rtLegQd0_DCM_105.ot" "rtLegQd0_curveShape62.cp[0]";
connectAttr "rtLegQd0_DCM_106.ot" "rtLegQd0_curveShape62.cp[1]";
connectAttr "rtLegQd0_DCM_106.ot" "rtLegQd0_curveShape63.cp[0]";
connectAttr "rtLegQd0_DCM_107.ot" "rtLegQd0_curveShape63.cp[1]";
connectAttr "rtLegQd0_DCM_107.ot" "rtLegQd0_curveShape64.cp[0]";
connectAttr "rtLegQd0_DCM_108.ot" "rtLegQd0_curveShape64.cp[1]";
connectAttr "rtLegQd0_DCM_109.ot" "rtLegQd0_curveShape65.cp[0]";
connectAttr "rtLegQd0_DCM_110.ot" "rtLegQd0_curveShape65.cp[1]";
connectAttr "rtLegQd0_DCM_110.ot" "rtLegQd0_curveShape66.cp[0]";
connectAttr "rtLegQd0_DCM_111.ot" "rtLegQd0_curveShape66.cp[1]";
connectAttr "rtLegQd0_DCM_111.ot" "rtLegQd0_curveShape67.cp[0]";
connectAttr "rtLegQd0_DCM_112.ot" "rtLegQd0_curveShape67.cp[1]";
connectAttr "rtLegQd0_DCM_112.ot" "rtLegQd0_curveShape68.cp[0]";
connectAttr "rtLegQd0_DCM_113.ot" "rtLegQd0_curveShape68.cp[1]";
connectAttr "rtLegQd0_DCM_113.ot" "rtLegQd0_curveShape69.cp[0]";
connectAttr "rtLegQd0_DCM_114.ot" "rtLegQd0_curveShape69.cp[1]";
connectAttr "rtLegQd0_condition2.ocr" "rtLegQd0_toeBird_guide.v";
connectAttr "rtLegQd0_condition3.ocr" "rtLegQd0_toeBird00_1_guide_ofs.v";
connectAttr "rtLegQd0_condition4.ocr" "rtLegQd0_toeBird01_1_guide_ofs.v";
connectAttr "tail0_md_guide_ofs_pointConstraint1.ctx" "tail0_md_guide_ofs.tx";
connectAttr "tail0_md_guide_ofs_pointConstraint1.cty" "tail0_md_guide_ofs.ty";
connectAttr "tail0_md_guide_ofs_pointConstraint1.ctz" "tail0_md_guide_ofs.tz";
connectAttr "tail0_md_guide_ofs_aimConstraint1.crx" "tail0_md_guide_ofs.rx";
connectAttr "tail0_md_guide_ofs_aimConstraint1.cry" "tail0_md_guide_ofs.ry";
connectAttr "tail0_md_guide_ofs_aimConstraint1.crz" "tail0_md_guide_ofs.rz";
connectAttr "tail0_md_guide_ofs.pim" "tail0_md_guide_ofs_pointConstraint1.cpim";
connectAttr "tail0_md_guide_ofs.rp" "tail0_md_guide_ofs_pointConstraint1.crp";
connectAttr "tail0_md_guide_ofs.rpt" "tail0_md_guide_ofs_pointConstraint1.crt";
connectAttr "tail0_rt_guide.t" "tail0_md_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "tail0_rt_guide.rp" "tail0_md_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "tail0_rt_guide.rpt" "tail0_md_guide_ofs_pointConstraint1.tg[0].trt"
		;
connectAttr "tail0_rt_guide.pm" "tail0_md_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "tail0_md_guide_ofs_pointConstraint1.w0" "tail0_md_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "tail0_tp_guide.t" "tail0_md_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "tail0_tp_guide.rp" "tail0_md_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "tail0_tp_guide.rpt" "tail0_md_guide_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "tail0_tp_guide.pm" "tail0_md_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "tail0_md_guide_ofs_pointConstraint1.w1" "tail0_md_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "tail0_md_guide_ofs.pim" "tail0_md_guide_ofs_aimConstraint1.cpim";
connectAttr "tail0_md_guide_ofs.t" "tail0_md_guide_ofs_aimConstraint1.ct";
connectAttr "tail0_md_guide_ofs.rp" "tail0_md_guide_ofs_aimConstraint1.crp";
connectAttr "tail0_md_guide_ofs.rpt" "tail0_md_guide_ofs_aimConstraint1.crt";
connectAttr "tail0_md_guide_ofs.ro" "tail0_md_guide_ofs_aimConstraint1.cro";
connectAttr "tail0_tp_guide.t" "tail0_md_guide_ofs_aimConstraint1.tg[0].tt";
connectAttr "tail0_tp_guide.rp" "tail0_md_guide_ofs_aimConstraint1.tg[0].trp";
connectAttr "tail0_tp_guide.rpt" "tail0_md_guide_ofs_aimConstraint1.tg[0].trt";
connectAttr "tail0_tp_guide.pm" "tail0_md_guide_ofs_aimConstraint1.tg[0].tpm";
connectAttr "tail0_md_guide_ofs_aimConstraint1.w0" "tail0_md_guide_ofs_aimConstraint1.tg[0].tw"
		;
connectAttr "tail0_skinCluster1.og[0]" "tail0_line_guideShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lf_carpal_01_boneSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "skull_boneSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lf_carpal_01_boneSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "skull_boneSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lf_carpal_01_boneSG.msg" "materialInfo1.sg";
connectAttr "skull_boneSG.msg" "materialInfo2.sg";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "spineQd0_line_guideShapeOrig.ws" "spineQd0_skinCluster1.ip[0].ig";
connectAttr "spineQd0_line_guideShapeOrig.l" "spineQd0_skinCluster1.orggeom[0]";
connectAttr "spineQd0_bindPose1.msg" "spineQd0_skinCluster1.bp";
connectAttr "spineQd0_joint1.wm" "spineQd0_skinCluster1.ma[0]";
connectAttr "spineQd0_joint2.wm" "spineQd0_skinCluster1.ma[1]";
connectAttr "spineQd0_joint3.wm" "spineQd0_skinCluster1.ma[2]";
connectAttr "spineQd0_joint1.liw" "spineQd0_skinCluster1.lw[0]";
connectAttr "spineQd0_joint2.liw" "spineQd0_skinCluster1.lw[1]";
connectAttr "spineQd0_joint3.liw" "spineQd0_skinCluster1.lw[2]";
connectAttr "spineQd0_joint1.obcc" "spineQd0_skinCluster1.ifcl[0]";
connectAttr "spineQd0_joint2.obcc" "spineQd0_skinCluster1.ifcl[1]";
connectAttr "spineQd0_joint3.obcc" "spineQd0_skinCluster1.ifcl[2]";
connectAttr "spineQd0_master_guide.msg" "spineQd0_bindPose1.m[1]";
connectAttr "spineQd0_st_guide_ofs.msg" "spineQd0_bindPose1.m[2]";
connectAttr "spineQd0_tp_guide.msg" "spineQd0_bindPose1.m[3]";
connectAttr "spineQd0_joint1.msg" "spineQd0_bindPose1.m[4]";
connectAttr "spineQd0_md_guide_ofs.msg" "spineQd0_bindPose1.m[5]";
connectAttr "spineQd0_md_guide.msg" "spineQd0_bindPose1.m[6]";
connectAttr "spineQd0_joint2.msg" "spineQd0_bindPose1.m[7]";
connectAttr "spineQd0_ed_guide_ofs.msg" "spineQd0_bindPose1.m[8]";
connectAttr "spineQd0_rt_guide.msg" "spineQd0_bindPose1.m[9]";
connectAttr "spineQd0_joint3.msg" "spineQd0_bindPose1.m[10]";
connectAttr "spineQd0_bindPose1.w" "spineQd0_bindPose1.p[0]";
connectAttr "spineQd0_bindPose1.m[0]" "spineQd0_bindPose1.p[1]";
connectAttr "spineQd0_bindPose1.m[1]" "spineQd0_bindPose1.p[2]";
connectAttr "spineQd0_bindPose1.m[2]" "spineQd0_bindPose1.p[3]";
connectAttr "spineQd0_bindPose1.m[3]" "spineQd0_bindPose1.p[4]";
connectAttr "spineQd0_bindPose1.m[1]" "spineQd0_bindPose1.p[5]";
connectAttr "spineQd0_bindPose1.m[5]" "spineQd0_bindPose1.p[6]";
connectAttr "spineQd0_bindPose1.m[6]" "spineQd0_bindPose1.p[7]";
connectAttr "spineQd0_bindPose1.m[1]" "spineQd0_bindPose1.p[8]";
connectAttr "spineQd0_bindPose1.m[8]" "spineQd0_bindPose1.p[9]";
connectAttr "spineQd0_bindPose1.m[9]" "spineQd0_bindPose1.p[10]";
connectAttr "spineQd0_joint1.bps" "spineQd0_bindPose1.wm[4]";
connectAttr "spineQd0_joint2.bps" "spineQd0_bindPose1.wm[7]";
connectAttr "spineQd0_joint3.bps" "spineQd0_bindPose1.wm[10]";
connectAttr "lfLegQd0_hip_guide.wm" "lfLegQd0_DCM_1.imat";
connectAttr "lfLegQd0_upr_guide.wm" "lfLegQd0_DCM_2.imat";
connectAttr "lfLegQd0_lwr_guide.wm" "lfLegQd0_DCM_3.imat";
connectAttr "lfLegQd0_palm_guide.wm" "lfLegQd0_DCM_4.imat";
connectAttr "lfLegQd0_pvc_guide.wm" "lfLegQd0_DCM_7.imat";
connectAttr "lfLegQd0_ulna_guide.wm" "lfLegQd0_DCM_8.imat";
connectAttr "lfLegQd0_ulnaEnd_guide.wm" "lfLegQd0_DCM_9.imat";
connectAttr "lfLegQd0_radiusEnd_guide.wm" "lfLegQd0_DCM_10.imat";
connectAttr "lfLegQd0_radius_guide.wm" "lfLegQd0_DCM_11.imat";
connectAttr "lfLegQd0_digit_guide.wm" "lfLegQd0_DCM_73.imat";
connectAttr "lfLegQd0_toe4_1_guide.wm" "lfLegQd0_DCM_74.imat";
connectAttr "lfLegQd0_toe4_2_guide.wm" "lfLegQd0_DCM_75.imat";
connectAttr "lfLegQd0_toe4_3_guide.wm" "lfLegQd0_DCM_76.imat";
connectAttr "lfLegQd0_toe4_4_guide.wm" "lfLegQd0_DCM_77.imat";
connectAttr "lfLegQd0_toe4_5_guide.wm" "lfLegQd0_DCM_78.imat";
connectAttr "lfLegQd0_toe3_1_guide.wm" "lfLegQd0_DCM_79.imat";
connectAttr "lfLegQd0_toe3_2_guide.wm" "lfLegQd0_DCM_80.imat";
connectAttr "lfLegQd0_toe3_3_guide.wm" "lfLegQd0_DCM_81.imat";
connectAttr "lfLegQd0_toe3_4_guide.wm" "lfLegQd0_DCM_82.imat";
connectAttr "lfLegQd0_toe3_5_guide.wm" "lfLegQd0_DCM_83.imat";
connectAttr "lfLegQd0_toe2_1_guide.wm" "lfLegQd0_DCM_84.imat";
connectAttr "lfLegQd0_toe2_2_guide.wm" "lfLegQd0_DCM_85.imat";
connectAttr "lfLegQd0_toe2_3_guide.wm" "lfLegQd0_DCM_86.imat";
connectAttr "lfLegQd0_toe2_4_guide.wm" "lfLegQd0_DCM_87.imat";
connectAttr "lfLegQd0_toe2_5_guide.wm" "lfLegQd0_DCM_88.imat";
connectAttr "lfLegQd0_toe1_1_guide.wm" "lfLegQd0_DCM_89.imat";
connectAttr "lfLegQd0_toe1_2_guide.wm" "lfLegQd0_DCM_90.imat";
connectAttr "lfLegQd0_toe1_3_guide.wm" "lfLegQd0_DCM_91.imat";
connectAttr "lfLegQd0_toe1_4_guide.wm" "lfLegQd0_DCM_92.imat";
connectAttr "lfLegQd0_toe1_5_guide.wm" "lfLegQd0_DCM_93.imat";
connectAttr "lfLegQd0_toe0_1_guide.wm" "lfLegQd0_DCM_94.imat";
connectAttr "lfLegQd0_toe0_2_guide.wm" "lfLegQd0_DCM_95.imat";
connectAttr "lfLegQd0_toe0_3_guide.wm" "lfLegQd0_DCM_96.imat";
connectAttr "lfLegQd0_toe0_4_guide.wm" "lfLegQd0_DCM_97.imat";
connectAttr "lfLegQd0_master_guide.toeNum" "lfLegQd0_le_cdn_1.ft";
connectAttr "lfLegQd0_master_guide.toeNum" "lfLegQd0_le_cdn_2.ft";
connectAttr "lfLegQd0_master_guide.toeNum" "lfLegQd0_le_cdn_3.ft";
connectAttr "lfLegQd0_ball_guide.wm" "lfLegQd0_DCM_98.imat";
connectAttr "lfLegQd0_tip_guide.wm" "lfLegQd0_DCM_99.imat";
connectAttr "lfLegQd0_toe1_end_guide.wm" "lfLegQd0_DCM_100.imat";
connectAttr "lfLegQd0_toe1_low_guide.wm" "lfLegQd0_DCM_101.imat";
connectAttr "lfLegQd0_toe1_mid_guide.wm" "lfLegQd0_DCM_102.imat";
connectAttr "lfLegQd0_toe1_up_guide.wm" "lfLegQd0_DCM_103.imat";
connectAttr "lfLegQd0_toe2_up_guide.wm" "lfLegQd0_DCM_104.imat";
connectAttr "lfLegQd0_toe2_end_guide.wm" "lfLegQd0_DCM_108.imat";
connectAttr "lfLegQd0_toe3_up_guide.wm" "lfLegQd0_DCM_109.imat";
connectAttr "lfLegQd0_toe3_mid_guide.wm" "lfLegQd0_DCM_110.imat";
connectAttr "lfLegQd0_toe3_mid2_guide.wm" "lfLegQd0_DCM_111.imat";
connectAttr "lfLegQd0_toe3_mid3_guide.wm" "lfLegQd0_DCM_112.imat";
connectAttr "lfLegQd0_toe3_low_guide.wm" "lfLegQd0_DCM_113.imat";
connectAttr "lfLegQd0_toe3_end_guide.wm" "lfLegQd0_DCM_114.imat";
connectAttr "lfLegQd0_toe0_up_guide.wm" "lfLegQd0_DCM_115.imat";
connectAttr "lfLegQd0_toe0_mid_guide.wm" "lfLegQd0_DCM_116.imat";
connectAttr "lfLegQd0_toe0_low_guide.wm" "lfLegQd0_DCM_117.imat";
connectAttr "lfLegQd0_toe2_mid_guide.wm" "lfLegQd0_DCM_105.imat";
connectAttr "lfLegQd0_toe2_mid2_guide.wm" "lfLegQd0_DCM_106.imat";
connectAttr "lfLegQd0_toe2_low_guide.wm" "lfLegQd0_DCM_107.imat";
connectAttr "lfLegQd0_master_guide.toeType" "lfLegQd0_condition2.ft";
connectAttr "lfLegQd0_master_guide.toeType" "lfLegQd0_condition3.ft";
connectAttr "lfLegQd0_master_guide.toeNum" "lfLegQd0_condition4.ft";
connectAttr "lfLegQd0_master_guide.toeNum" "lfLegQd0_condition5.ft";
connectAttr "rtLegQd0_hip_guide.wm" "rtLegQd0_DCM_1.imat";
connectAttr "rtLegQd0_upr_guide.wm" "rtLegQd0_DCM_2.imat";
connectAttr "rtLegQd0_lwr_guide.wm" "rtLegQd0_DCM_3.imat";
connectAttr "rtLegQd0_palm_guide.wm" "rtLegQd0_DCM_4.imat";
connectAttr "rtLegQd0_ball_guide.wm" "rtLegQd0_DCM_5.imat";
connectAttr "rtLegQd0_tip_guide.wm" "rtLegQd0_DCM_6.imat";
connectAttr "rtLegQd0_pvc_guide.wm" "rtLegQd0_DCM_7.imat";
connectAttr "rtLegQd0_radius_guide.wm" "rtLegQd0_DCM_8.imat";
connectAttr "rtLegQd0_radiusEnd_guide.wm" "rtLegQd0_DCM_9.imat";
connectAttr "rtLegQd0_ulna_guide.wm" "rtLegQd0_DCM_10.imat";
connectAttr "rtLegQd0_ulnaEnd_guide.wm" "rtLegQd0_DCM_11.imat";
connectAttr "rtLegQd0_digit_guide.wm" "rtLegQd0_DCM_36.imat";
connectAttr "rtLegQd0_toe0_1_guide.wm" "rtLegQd0_DCM_37.imat";
connectAttr "rtLegQd0_toe0_2_guide.wm" "rtLegQd0_DCM_38.imat";
connectAttr "rtLegQd0_toe0_3_guide.wm" "rtLegQd0_DCM_39.imat";
connectAttr "rtLegQd0_toe0_4_guide.wm" "rtLegQd0_DCM_40.imat";
connectAttr "rtLegQd0_toe1_1_guide.wm" "rtLegQd0_DCM_41.imat";
connectAttr "rtLegQd0_toe1_2_guide.wm" "rtLegQd0_DCM_42.imat";
connectAttr "rtLegQd0_toe1_3_guide.wm" "rtLegQd0_DCM_43.imat";
connectAttr "rtLegQd0_toe1_4_guide.wm" "rtLegQd0_DCM_44.imat";
connectAttr "rtLegQd0_toe1_5_guide.wm" "rtLegQd0_DCM_45.imat";
connectAttr "rtLegQd0_toe2_1_guide.wm" "rtLegQd0_DCM_46.imat";
connectAttr "rtLegQd0_toe2_2_guide.wm" "rtLegQd0_DCM_47.imat";
connectAttr "rtLegQd0_toe2_3_guide.wm" "rtLegQd0_DCM_48.imat";
connectAttr "rtLegQd0_toe2_4_guide.wm" "rtLegQd0_DCM_49.imat";
connectAttr "rtLegQd0_toe2_5_guide.wm" "rtLegQd0_DCM_50.imat";
connectAttr "rtLegQd0_toe3_1_guide.wm" "rtLegQd0_DCM_51.imat";
connectAttr "rtLegQd0_toe3_2_guide.wm" "rtLegQd0_DCM_52.imat";
connectAttr "rtLegQd0_toe3_3_guide.wm" "rtLegQd0_DCM_53.imat";
connectAttr "rtLegQd0_toe3_4_guide.wm" "rtLegQd0_DCM_54.imat";
connectAttr "rtLegQd0_toe3_5_guide.wm" "rtLegQd0_DCM_55.imat";
connectAttr "rtLegQd0_toe4_1_guide.wm" "rtLegQd0_DCM_56.imat";
connectAttr "rtLegQd0_toe4_2_guide.wm" "rtLegQd0_DCM_57.imat";
connectAttr "rtLegQd0_toe4_3_guide.wm" "rtLegQd0_DCM_58.imat";
connectAttr "rtLegQd0_toe4_4_guide.wm" "rtLegQd0_DCM_59.imat";
connectAttr "rtLegQd0_toe4_5_guide.wm" "rtLegQd0_DCM_60.imat";
connectAttr "rtLegQd0_master_guide.toeNum" "rtLegQd0_le_cdn_1.ft";
connectAttr "rtLegQd0_master_guide.toeNum" "rtLegQd0_le_cdn_2.ft";
connectAttr "rtLegQd0_master_guide.toeNum" "rtLegQd0_le_cdn_3.ft";
connectAttr "rtLegQd0_toe1_end_guide.wm" "rtLegQd0_DCM_100.imat";
connectAttr "rtLegQd0_toe1_low_guide.wm" "rtLegQd0_DCM_101.imat";
connectAttr "rtLegQd0_toe1_mid_guide.wm" "rtLegQd0_DCM_102.imat";
connectAttr "rtLegQd0_toe1_up_guide.wm" "rtLegQd0_DCM_103.imat";
connectAttr "rtLegQd0_toe2_up_guide.wm" "rtLegQd0_DCM_104.imat";
connectAttr "rtLegQd0_toe2_mid_guide.wm" "rtLegQd0_DCM_105.imat";
connectAttr "rtLegQd0_toe2_mid2_guide.wm" "rtLegQd0_DCM_106.imat";
connectAttr "rtLegQd0_toe2_low_guide.wm" "rtLegQd0_DCM_107.imat";
connectAttr "rtLegQd0_toe2_end_guide.wm" "rtLegQd0_DCM_108.imat";
connectAttr "rtLegQd0_toe3_up_guide.wm" "rtLegQd0_DCM_109.imat";
connectAttr "rtLegQd0_toe3_mid_guide.wm" "rtLegQd0_DCM_110.imat";
connectAttr "rtLegQd0_toe3_mid2_guide.wm" "rtLegQd0_DCM_111.imat";
connectAttr "rtLegQd0_toe3_mid3_guide.wm" "rtLegQd0_DCM_112.imat";
connectAttr "rtLegQd0_toe3_low_guide.wm" "rtLegQd0_DCM_113.imat";
connectAttr "rtLegQd0_toe3_end_guide.wm" "rtLegQd0_DCM_114.imat";
connectAttr "rtLegQd0_toe0_up_guide.wm" "rtLegQd0_DCM_115.imat";
connectAttr "rtLegQd0_toe0_mid_guide.wm" "rtLegQd0_DCM_116.imat";
connectAttr "rtLegQd0_toe0_low_guide.wm" "rtLegQd0_DCM_117.imat";
connectAttr "rtLegQd0_master_guide.toeType" "rtLegQd0_condition1.ft";
connectAttr "rtLegQd0_master_guide.toeType" "rtLegQd0_condition2.ft";
connectAttr "rtLegQd0_master_guide.toeNum" "rtLegQd0_condition3.ft";
connectAttr "rtLegQd0_master_guide.toeNum" "rtLegQd0_condition4.ft";
connectAttr "rtLegQd0_toe0_end_guide.wm" "rtLegQd0_DCM_118.imat";
connectAttr "tail0_line_guideShapeOrig.ws" "tail0_skinCluster1.ip[0].ig";
connectAttr "tail0_line_guideShapeOrig.l" "tail0_skinCluster1.orggeom[0]";
connectAttr "tail0_bindPose2.msg" "tail0_skinCluster1.bp";
connectAttr "tail0_joint1.wm" "tail0_skinCluster1.ma[0]";
connectAttr "tail0_joint2.wm" "tail0_skinCluster1.ma[1]";
connectAttr "tail0_joint3.wm" "tail0_skinCluster1.ma[2]";
connectAttr "tail0_joint1.liw" "tail0_skinCluster1.lw[0]";
connectAttr "tail0_joint2.liw" "tail0_skinCluster1.lw[1]";
connectAttr "tail0_joint3.liw" "tail0_skinCluster1.lw[2]";
connectAttr "tail0_joint1.obcc" "tail0_skinCluster1.ifcl[0]";
connectAttr "tail0_joint2.obcc" "tail0_skinCluster1.ifcl[1]";
connectAttr "tail0_joint3.obcc" "tail0_skinCluster1.ifcl[2]";
connectAttr "tail0_master_guide.msg" "tail0_bindPose2.m[1]";
connectAttr "tail0_rt_guide_ofs.msg" "tail0_bindPose2.m[2]";
connectAttr "tail0_rt_guide.msg" "tail0_bindPose2.m[3]";
connectAttr "tail0_joint1.msg" "tail0_bindPose2.m[4]";
connectAttr "tail0_md_guide_ofs.msg" "tail0_bindPose2.m[5]";
connectAttr "tail0_md_guide.msg" "tail0_bindPose2.m[6]";
connectAttr "tail0_joint2.msg" "tail0_bindPose2.m[7]";
connectAttr "tail0_tp_guide_ofs.msg" "tail0_bindPose2.m[8]";
connectAttr "tail0_tp_guide.msg" "tail0_bindPose2.m[9]";
connectAttr "tail0_joint3.msg" "tail0_bindPose2.m[10]";
connectAttr "tail0_bindPose2.w" "tail0_bindPose2.p[0]";
connectAttr "tail0_bindPose2.m[0]" "tail0_bindPose2.p[1]";
connectAttr "tail0_bindPose2.m[1]" "tail0_bindPose2.p[2]";
connectAttr "tail0_bindPose2.m[2]" "tail0_bindPose2.p[3]";
connectAttr "tail0_bindPose2.m[3]" "tail0_bindPose2.p[4]";
connectAttr "tail0_bindPose2.m[1]" "tail0_bindPose2.p[5]";
connectAttr "tail0_bindPose2.m[5]" "tail0_bindPose2.p[6]";
connectAttr "tail0_bindPose2.m[6]" "tail0_bindPose2.p[7]";
connectAttr "tail0_bindPose2.m[1]" "tail0_bindPose2.p[8]";
connectAttr "tail0_bindPose2.m[8]" "tail0_bindPose2.p[9]";
connectAttr "tail0_bindPose2.m[9]" "tail0_bindPose2.p[10]";
connectAttr "tail0_joint1.bps" "tail0_bindPose2.wm[4]";
connectAttr "tail0_joint2.bps" "tail0_bindPose2.wm[7]";
connectAttr "tail0_joint3.bps" "tail0_bindPose2.wm[10]";
connectAttr "lf_carpal_01_boneSG.pa" ":renderPartition.st" -na;
connectAttr "skull_boneSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lfLegQd0_condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lfLegQd0_condition3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lfLegQd0_condition4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lfLegQd0_condition5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rtLegQd0_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rtLegQd0_condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rtLegQd0_condition3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rtLegQd0_condition4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rtLegQd0_line_grp_main.msg" ":hyperGraphLayout.hyp[83065].dn";
connectAttr "rtLegQd0_palm_inPos_guide.msg" ":hyperGraphLayout.hyp[83127].dn";
connectAttr "rtLegQd0_palm_outPos_guide.msg" ":hyperGraphLayout.hyp[83128].dn";
connectAttr "lfLegQd0_lwr_guide_ofs.msg" ":hyperGraphLayout.hyp[83147].dn";
connectAttr "rtLegQd0_tip_guide.msg" ":hyperGraphLayout.hyp[83153].dn";
connectAttr "rtLegQd0_palm_guide_ofs.msg" ":hyperGraphLayout.hyp[83158].dn";
connectAttr "rtLegQd0_tip_guide_ofs.msg" ":hyperGraphLayout.hyp[83161].dn";
connectAttr "rtLegQd0_ball_guide_ofs.msg" ":hyperGraphLayout.hyp[83162].dn";
connectAttr "rtLegQd0_palm_inPos_ofs.msg" ":hyperGraphLayout.hyp[83163].dn";
connectAttr "rtLegQd0_palm_outPos_ofs.msg" ":hyperGraphLayout.hyp[83164].dn";
connectAttr "rtLegQd0_pv_loc.msg" ":hyperGraphLayout.hyp[83166].dn";
connectAttr "rtLegQd0_lwr_guide_ofs_pointConstraint1.msg" ":hyperGraphLayout.hyp[83167].dn"
		;
connectAttr "rtLegQd0_lwr_guide.msg" ":hyperGraphLayout.hyp[83168].dn";
connectAttr "rtLegQd0_lwr_guide_ofs.msg" ":hyperGraphLayout.hyp[83169].dn";
connectAttr "lfLegQd0_upr_guide_aimConstraint1.msg" ":hyperGraphLayout.hyp[84754].dn"
		;
connectAttr "lfLegQd0_hip_guide_ofs.msg" ":hyperGraphLayout.hyp[84755].dn";
connectAttr "lfLegQd0_palm_heelPos_guide.msg" ":hyperGraphLayout.hyp[84880].dn";
connectAttr "lfLegQd0_palm_inPos_guide.msg" ":hyperGraphLayout.hyp[84881].dn";
connectAttr "lfLegQd0_upr_guide_ofs.msg" ":hyperGraphLayout.hyp[84912].dn";
connectAttr "lfLegQd0_palm_inPos_ofs.msg" ":hyperGraphLayout.hyp[84913].dn";
connectAttr "lfLegQd0_palm_outPos_ofs.msg" ":hyperGraphLayout.hyp[84914].dn";
connectAttr "lfLegQd0_pv_loc.msg" ":hyperGraphLayout.hyp[84916].dn";
connectAttr "lfLegQd0_palm_toePos_guide.msg" ":hyperGraphLayout.hyp[84917].dn";
connectAttr "lfLegQd0_palm_heelPos_ofs.msg" ":hyperGraphLayout.hyp[84919].dn";
connectAttr "lfLegQd0_palm_toePos_guide_ofs.msg" ":hyperGraphLayout.hyp[84920].dn"
		;
connectAttr "rtLegQd0_palm_heelPos_ofs.msg" ":hyperGraphLayout.hyp[84921].dn";
connectAttr "rtLegQd0_palm_toePos_guide_ofs.msg" ":hyperGraphLayout.hyp[84922].dn"
		;
connectAttr "lfLegQd0_toesRoot_guideShape.msg" ":hyperGraphLayout.hyp[84962].dn"
		;
connectAttr "lfLegQd0_pv_loc_ofs.msg" ":hyperGraphLayout.hyp[84970].dn";
connectAttr "lfLegQd0_line_grp_mammalFoot.msg" ":hyperGraphLayout.hyp[84975].dn"
		;
connectAttr "lfLegQd0_line_grp_dual.msg" ":hyperGraphLayout.hyp[84976].dn";
connectAttr "lfLegQd0_radiusEnd_guide_ZRO.msg" ":hyperGraphLayout.hyp[84978].dn"
		;
connectAttr "lfLegQd0_ulnaEnd_guide.msg" ":hyperGraphLayout.hyp[84983].dn";
connectAttr "lfLegQd0_ulnaEnd_guide_ZRO.msg" ":hyperGraphLayout.hyp[84984].dn";
connectAttr "lfLegQd0_tip_guide.msg" ":hyperGraphLayout.hyp[84985].dn";
connectAttr "lfLegQd0_line_01.msg" ":hyperGraphLayout.hyp[84988].dn";
connectAttr "lfLegQd0_line_02.msg" ":hyperGraphLayout.hyp[84989].dn";
connectAttr "lfLegQd0_line_03.msg" ":hyperGraphLayout.hyp[84990].dn";
connectAttr "lfLegQd0_line_06.msg" ":hyperGraphLayout.hyp[84992].dn";
connectAttr "lfLegQd0_line_grp_main.msg" ":hyperGraphLayout.hyp[84996].dn";
connectAttr "lfLegQd0_palm_guide_ofs.msg" ":hyperGraphLayout.hyp[84997].dn";
connectAttr "lfLegQd0_ball_guide_ofs1.msg" ":hyperGraphLayout.hyp[84998].dn";
connectAttr "lfLegQd0_digit_guide_ofs.msg" ":hyperGraphLayout.hyp[84999].dn";
connectAttr "lfLegQd0_tip_guide_ofs.msg" ":hyperGraphLayout.hyp[85001].dn";
connectAttr "lfLegQd0_toe2_2_guide.msg" ":hyperGraphLayout.hyp[85140].dn";
connectAttr "lfLegQd0_toe2_3_guide.msg" ":hyperGraphLayout.hyp[85141].dn";
connectAttr "lfLegQd0_toe2_1_guide.msg" ":hyperGraphLayout.hyp[85142].dn";
connectAttr "lfLegQd0_toe2_4_guide.msg" ":hyperGraphLayout.hyp[85143].dn";
connectAttr "lfLegQd0_toe3_1_guide.msg" ":hyperGraphLayout.hyp[85148].dn";
connectAttr "lfLegQd0_toe4_1_guide.msg" ":hyperGraphLayout.hyp[85149].dn";
connectAttr "lfLegQd0_toe1_1_guide.msg" ":hyperGraphLayout.hyp[85150].dn";
connectAttr "lfLegQd0_toe0_1_guide.msg" ":hyperGraphLayout.hyp[85151].dn";
connectAttr "lfLegQd0_toe1_2_guide.msg" ":hyperGraphLayout.hyp[85152].dn";
connectAttr "lfLegQd0_toe0_2_guide.msg" ":hyperGraphLayout.hyp[85153].dn";
connectAttr "lfLegQd0_toe3_2_guide.msg" ":hyperGraphLayout.hyp[85154].dn";
connectAttr "lfLegQd0_toe4_2_guide.msg" ":hyperGraphLayout.hyp[85155].dn";
connectAttr "lfLegQd0_toe0_4_guide.msg" ":hyperGraphLayout.hyp[85156].dn";
connectAttr "lfLegQd0_toe1_4_guide.msg" ":hyperGraphLayout.hyp[85157].dn";
connectAttr "lfLegQd0_toe3_4_guide.msg" ":hyperGraphLayout.hyp[85158].dn";
connectAttr "lfLegQd0_toe4_4_guide.msg" ":hyperGraphLayout.hyp[85159].dn";
connectAttr "lfLegQd0_toesRoot_guide.msg" ":hyperGraphLayout.hyp[85161].dn";
connectAttr "rtLegQd0_toeMain_guide.msg" ":hyperGraphLayout.hyp[85163].dn";
connectAttr "lfLegQd0_toe2_2_guide_ofs.msg" ":hyperGraphLayout.hyp[85173].dn";
connectAttr "lfLegQd0_toe1_2_guide_ofs.msg" ":hyperGraphLayout.hyp[85174].dn";
connectAttr "lfLegQd0_toe0_2_guide_ofs.msg" ":hyperGraphLayout.hyp[85175].dn";
connectAttr "lfLegQd0_toe3_2_guide_ofs.msg" ":hyperGraphLayout.hyp[85176].dn";
connectAttr "lfLegQd0_toe4_2_guide_ofs.msg" ":hyperGraphLayout.hyp[85177].dn";
connectAttr "lfLegQd0_group_toe_1.msg" ":hyperGraphLayout.hyp[85179].dn";
connectAttr "lfLegQd0_group_toe_2.msg" ":hyperGraphLayout.hyp[85180].dn";
connectAttr "lfLegQd0_group_toe_3.msg" ":hyperGraphLayout.hyp[85181].dn";
connectAttr "lfLegQd0_group_toe_0.msg" ":hyperGraphLayout.hyp[85182].dn";
connectAttr "rtLegQd0_group_toe_1.msg" ":hyperGraphLayout.hyp[85184].dn";
connectAttr "rtLegQd0_group_toe_2.msg" ":hyperGraphLayout.hyp[85185].dn";
connectAttr "rtLegQd0_group_toe_3.msg" ":hyperGraphLayout.hyp[85186].dn";
connectAttr "rtLegQd0_group_toe_0.msg" ":hyperGraphLayout.hyp[85187].dn";
connectAttr "lfLegQd0_toe0_end_guide.msg" ":hyperGraphLayout.hyp[85191].dn";
// End of ALL.ma
