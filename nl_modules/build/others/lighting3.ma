//Maya ASCII 2023 scene
//Name: lighting3.ma
//Last modified: Sun, Aug 18, 2024 12:25:58 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
requires "Mayatomr" "2012.0m - 3.9.1.36 ";
requires "ziva-v03-maya2015" "0.3";
requires "ziva-v02-maya2015" "0.2";
requires "maxwell" "2.7.4";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "77E68197-4C26-42CC-C2EC-9E91A7474AB5";
createNode transform -n "env_grp";
	rename -uid "98EEA128-473A-816B-7AE7-4292259F3AC5";
createNode transform -n "env" -p "env_grp";
	rename -uid "3E0FFA86-42EA-4CF2-665B-559A90E0EF1F";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode nurbsSurface -n "envShape" -p "env";
	rename -uid "10F84827-496F-A40F-5DE9-9082FDE2718B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ds" no;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		4.7982373409884736e-15 -50 -1.2658091679845326e-14
		9.9958395418186381 -50 -9.9958395418186434
		14.136251847345177 -50 -5.5888873805842332e-15
		9.9958395418186381 -50 9.9958395418186328
		2.3945003959176299e-15 -50 14.136251847345179
		-9.9958395418186363 -50 9.9958395418186363
		-14.136251847345186 -50 1.6095621781758716e-17
		-9.9958395418186381 -50 -9.9958395418186399
		-3.5894302771016173e-15 -50 -14.136251847345186
		9.9958395418186381 -50 -9.9958395418186434
		14.136251847345177 -50 -5.5888873805842332e-15
		9.9958395418186381 -50 9.9958395418186328
		30.821498984529487 -39.18058124456121 -30.821498984529491
		43.588181876590163 -39.18058124456121 -2.3888016655982167e-15
		30.821498984529484 -39.18058124456121 30.821498984529484
		-4.1970433010840695e-16 -39.18058124456121 43.588181876590177
		-30.821498984529487 -39.18058124456121 30.821498984529484
		-43.588181876590184 -39.18058124456121 -7.121840562805602e-16
		-30.821498984529484 -39.18058124456121 -30.821498984529491
		-3.2647815968030878e-15 -39.18058124456121 -43.588181876590177
		30.821498984529487 -39.18058124456121 -30.821498984529491
		43.588181876590163 -39.18058124456121 -2.3888016655982167e-15
		30.821498984529484 -39.18058124456121 30.821498984529484
		43.360122374577109 8.8188106046322592e-15 -43.360122374577095
		61.320473128284 6.1637688507990906e-15 3.7547960569377147e-15
		43.360122374577088 3.5087270969659217e-15 43.360122374577102
		-4.3307279585210866e-15 2.4089727938613744e-15 61.320473128284029
		-43.360122374577102 3.5087270969659221e-15 43.360122374577095
		-61.320473128284036 6.1637688507990906e-15 -1.3670783816233314e-15
		-43.360122374577088 8.8188106046322592e-15 -43.360122374577102
		-8.5265915572923691e-16 9.9185649077368069e-15 -61.320473128284029
		43.360122374577109 8.8188106046322592e-15 -43.360122374577095
		61.320473128284 6.1637688507990906e-15 3.7547960569377147e-15
		43.360122374577088 3.5087270969659217e-15 43.360122374577102
		30.821498984529494 39.180581244561239 -30.82149898452948
		43.588181876590163 39.180581244561239 7.7268144071801013e-15
		30.821498984529477 39.180581244561239 30.821498984529498
		-5.7370830618982549e-15 39.180581244561239 43.588181876590177
		-30.821498984529494 39.180581244561239 30.821498984529487
		-43.588181876590184 39.180581244561239 -1.2313254470819371e-15
		-30.821498984529477 39.180581244561239 -30.821498984529491
		2.0525971349867605e-15 39.180581244561239 -43.588181876590177
		30.821498984529494 39.180581244561239 -30.82149898452948
		43.588181876590163 39.180581244561239 7.7268144071801013e-15
		30.821498984529477 39.180581244561239 30.821498984529498
		9.9958395418186292 50 -9.9958395418186168
		14.136251847345157 50 7.3200789382634448e-15
		9.9958395418186186 50 9.995839541818631
		-4.391231927193284e-15 50 14.136251847345166
		-9.9958395418186274 50 9.9958395418186239
		-14.136251847345166 50 -6.4640270559239147e-16
		-9.9958395418186186 50 -9.9958395418186239
		3.1963020460092981e-15 50 -14.136251847345159
		9.9958395418186292 50 -9.9958395418186168
		14.136251847345157 50 7.3200789382634448e-15
		9.9958395418186186 50 9.995839541818631
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		-4.3499183415908475e-15 50 1.2209772680447701e-14
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ground" -p "env_grp";
	rename -uid "CA70CC48-4390-EE43-25B6-D185D85E25E4";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 800 800 0 ;
createNode nurbsSurface -n "groundShape" -p "ground";
	rename -uid "ED61DE53-416F-FE81-CD82-3E82330C21B5";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 3;
	setAttr ".dvv" 3;
	setAttr ".cpr" 15;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "light_grp" -p "env_grp";
	rename -uid "19F91EDA-410E-1A68-A0D9-538A4C057AD7";
	setAttr ".r" -type "double3" 0 -1614.4304798717512 0 ;
createNode transform -n "comp" -p "light_grp";
	rename -uid "E710123E-4D48-6269-B6C0-3BA4C5041571";
	setAttr ".t" -type "double3" 44.986465590847914 163.38424896928214 0 ;
	setAttr ".r" -type "double3" 88.800621276496955 23.328243024037569 107.13673504764913 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode directionalLight -n "compShape" -p "comp";
	rename -uid "D466FC80-4715-4334-A9E9-C9A09C68C81E";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.455924 0.62362725 0.85699999 ;
	setAttr ".in" 0.60000002384185791;
	setAttr ".urs" no;
	setAttr ".sc" -type "float3" 0.01923077 0.01923077 0.01923077 ;
	setAttr ".fs" 2;
createNode transform -n "main" -p "light_grp";
	rename -uid "CB227523-43AD-1DB9-7B3F-5AA54E390827";
	setAttr ".t" -type "double3" -40.567735771878191 160.82416849103936 0 ;
	setAttr ".r" -type "double3" -53.942044459647782 -47.924054964252036 38.062602462521653 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode directionalLight -n "mainShape" -p "main";
	rename -uid "71B2FE2B-4B33-037B-A2B3-909AAADD87D1";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.54000002 0.4341 0.4341 ;
	setAttr ".urs" no;
	setAttr ".sc" -type "float3" 0.032051284 0.032051284 0.032051284 ;
	setAttr ".dms" yes;
	setAttr ".fs" 5;
	setAttr ".dr" 2048;
createNode transform -n "back" -p "light_grp";
	rename -uid "9BD0937D-4E95-F65B-84A7-0CBC0BAA01FE";
	setAttr ".t" -type "double3" 0 163.46605557103874 0 ;
	setAttr ".r" -type "double3" 176.93598232374009 10.696867998057961 -107.3321526440695 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode directionalLight -n "backShape" -p "back";
	rename -uid "A28EF751-4F1D-BA8A-C9F9-18B1E64FFEA7";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.54000002 0.51948005 0.53648323 ;
	setAttr ".urs" no;
	setAttr ".sc" -type "float3" 0.03846154 0.03846154 0.03846154 ;
	setAttr ".fs" 2;
createNode transform -n "ambientLight1" -p "light_grp";
	rename -uid "41F88341-4A6C-2A21-A364-19BA5801D678";
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "7F9D7E3A-492A-A366-3239-7EA2348007E0";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.547822 0.76281399 0.81400001 ;
	setAttr ".in" 0.10000000149011612;
	setAttr ".urs" no;
createNode transform -n "pPlane1" -p "env_grp";
	rename -uid "CB54F984-4012-F2F6-8100-BCA67696D64B";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1028.140246070848 1028.140246070848 1028.140246070848 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "5246B125-4CC8-F9AF-A7AC-36A62623F201";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode materialInfo -n "lighting_materialInfo5";
	rename -uid "5A5F9AFC-46C0-9AA4-3185-228DFB63F3DF";
createNode shadingEngine -n "blinn4SG";
	rename -uid "1A3D15D3-48F6-03BD-C733-1AB367C819BC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode blinn -n "blinn6";
	rename -uid "6AC6060C-48C8-CCBA-924D-AC8AFDE293D1";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.20512821 0.20512821 0.20512821 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".ec" 0.31407114863395691;
	setAttr ".sro" 0.28205129504203796;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "7CA470CB-4D1C-CF72-BBBA-72852322CD2E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".esw" 180;
	setAttr ".s" 10;
	setAttr ".nsp" 10;
createNode polyPlane -n "polyPlane1";
	rename -uid "76251652-4CA9-F33C-91FC-078A149A73B9";
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".cuv" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5064E918-447F-569F-DA09-BC92055A2AD3";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
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
	setAttr -av -k on ".msaa";
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
	setAttr -s 10 ".st";
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
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :lightList1;
	setAttr -s 4 ".l";
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
	setAttr -s 5 ".dsm";
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
select -ne :defaultLightSet;
	setAttr -s 4 ".dsm";
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
	setAttr -s 46 ".hyp";
connectAttr "makeNurbSphere1.os" "groundShape.cr";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "blinn4SG.msg" "lighting_materialInfo5.sg";
connectAttr "blinn6.msg" "lighting_materialInfo5.m";
connectAttr "blinn6.oc" "blinn4SG.ss";
connectAttr "envShape.iog" "blinn4SG.dsm" -na;
connectAttr "groundShape.iog" "blinn4SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn6.msg" ":defaultShaderList1.s" -na;
connectAttr "compShape.ltd" ":lightList1.l" -na;
connectAttr "mainShape.ltd" ":lightList1.l" -na;
connectAttr "backShape.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "comp.iog" ":defaultLightSet.dsm" -na;
connectAttr "main.iog" ":defaultLightSet.dsm" -na;
connectAttr "back.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of lighting3.ma
