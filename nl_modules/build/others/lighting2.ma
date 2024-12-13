//Maya ASCII 2023 scene
//Name: lighting2.ma
//Last modified: Thu, Jul 04, 2024 08:09:06 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
requires "Mayatomr" "2012.0m - 3.9.1.36 ";
requires "maxwell" "2.7.4";
requires "ziva-v02-maya2015" "0.2";
requires "ziva-v03-maya2015" "0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "2614C0D4-4534-04F1-8413-51975A12737C";
createNode transform -n "env_grp";
	rename -uid "130C9641-4496-3122-8AE2-E685A5A7663D";
createNode transform -n "env" -p "env_grp";
	rename -uid "E6B13143-4ACF-C277-186D-2A8D7D359CA5";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode nurbsSurface -n "envShape" -p "env";
	rename -uid "49623913-4CA9-B0B7-B5C6-93A40D5EC5EC";
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
	rename -uid "D0860C79-4F65-8992-E59B-A79E8723A2A6";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 800 800 0 ;
createNode nurbsSurface -n "groundShape" -p "ground";
	rename -uid "33237275-4230-51A2-6F84-449ED92629BD";
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
	rename -uid "BB9521E5-4643-E45C-6089-DE88CCC1D3D6";
	setAttr ".r" -type "double3" 0 200 0 ;
createNode transform -n "comp" -p "light_grp";
	rename -uid "322DA63C-4605-215C-9D45-C7B1A3A808D5";
	setAttr ".t" -type "double3" 44.986465590847914 163.38424896928214 0 ;
	setAttr ".r" -type "double3" 88.800621276496955 23.328243024037569 107.13673504764913 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode directionalLight -n "compShape" -p "comp";
	rename -uid "C03BC2A3-4C29-A6F3-6C7E-A99EA06AB3DE";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.68699998 0.52160001 0.50209999 ;
	setAttr ".in" 0.60000002384185791;
	setAttr ".urs" no;
	setAttr ".sc" -type "float3" 0.01923077 0.01923077 0.01923077 ;
	setAttr ".dms" yes;
	setAttr ".fs" 11;
createNode transform -n "main" -p "light_grp";
	rename -uid "91B97F2A-493B-A757-F06C-A9BF381545E6";
	setAttr ".t" -type "double3" -40.567735771878191 160.82416849103936 0 ;
	setAttr ".r" -type "double3" -53.942044459647782 -47.924054964252036 38.062602462521653 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode directionalLight -n "mainShape" -p "main";
	rename -uid "DE99B486-43A0-77FA-E12D-C18A6FEB87CF";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.68040001 0.37180001 ;
	setAttr ".urs" no;
	setAttr ".sc" -type "float3" 0.032051284 0.032051284 0.032051284 ;
	setAttr ".dms" yes;
	setAttr ".fs" 11;
createNode transform -n "back" -p "light_grp";
	rename -uid "4DB773A1-4B9A-F1E7-37CE-90978E467530";
	setAttr ".t" -type "double3" 0 163.46605557103874 0 ;
	setAttr ".r" -type "double3" 176.93598232374009 10.696867998057961 -107.3321526440695 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode directionalLight -n "backShape" -p "back";
	rename -uid "1BD62A12-4727-9E1F-9AD9-FB8BE97B8438";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.190688 0.3140246 0.472 ;
	setAttr ".in" 2;
	setAttr ".urs" no;
	setAttr ".sc" -type "float3" 0.03846154 0.03846154 0.03846154 ;
	setAttr ".dms" yes;
	setAttr ".fs" 11;
createNode transform -n "ambientLight1" -p "light_grp";
	rename -uid "D89C9EBC-46CF-9D4C-30C4-A8B8D44A36FC";
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "09705566-410E-3D91-D09B-309DA602A06A";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.547822 0.76281399 0.81400001 ;
	setAttr ".in" 0.10000000149011612;
	setAttr ".urs" no;
createNode transform -n "pPlane1" -p "env_grp";
	rename -uid "C9092AEC-4C24-84EA-210B-C184D790CE68";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1028.140246070848 1028.140246070848 1028.140246070848 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "9A485A20-4BCD-23DF-5308-B19173DCE889";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode materialInfo -n "lighting_materialInfo5";
	rename -uid "E5FC8EAA-420E-6A01-13C3-2E9413345E44";
createNode shadingEngine -n "blinn4SG";
	rename -uid "398B3A2A-4D2D-29A0-343A-C4A26D58D8BE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode blinn -n "blinn6";
	rename -uid "E31780DE-400C-6744-6116-14A9DB2AB92B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".ec" 0.31407114863395691;
	setAttr ".sro" 0.28205129504203796;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "A797054F-4444-C863-B3AE-4BB56002566A";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".esw" 180;
	setAttr ".s" 4;
	setAttr ".nsp" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "0CBA5D64-4E5D-3F59-57BA-418F851CB482";
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".cuv" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E59F1051-4114-B17E-B44C-9CAEF8C29DC0";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
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
	setAttr -av ".aoam";
	setAttr -av ".aora";
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
	setAttr -av ".hfa";
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
	setAttr ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 20 ".st";
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
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
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
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
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
	setAttr ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -cb on ".macc";
	setAttr -av -cb on ".macd";
	setAttr -av -cb on ".macq";
	setAttr -av ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf";
	setAttr -av ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -av ".fs";
	setAttr -av ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
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
	setAttr -av ".pram";
	setAttr -av ".poam";
	setAttr -av ".prlm";
	setAttr -av ".polm";
	setAttr -av ".prm";
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
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
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
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off ".fbfm";
	setAttr -av -k off ".ehql";
	setAttr -av -k off ".eams";
	setAttr -av -k off ".eeaa";
	setAttr -av -k off ".engm";
	setAttr -av -k off ".mes";
	setAttr -av -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -av -k off ".mbs";
	setAttr -av -k off ".trm";
	setAttr -av -k off ".tshc";
	setAttr -av -k off ".enpt";
	setAttr -av -k off ".clmt";
	setAttr -av -k off ".tcov";
	setAttr -av -k off ".lith";
	setAttr -av -k off ".sobc";
	setAttr -av -k off ".cuth";
	setAttr -av -k off ".hgcd";
	setAttr -av -k off ".hgci";
	setAttr -av -k off ".mgcs";
	setAttr -av -k off ".twa";
	setAttr -av -k off ".twz";
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
	setAttr -s 33 ".hyp";
	setAttr ".hyp[23].isc" yes;
	setAttr ".hyp[24].isc" yes;
	setAttr ".hyp[25].isc" yes;
	setAttr ".hyp[26].isc" yes;
	setAttr ".hyp[27].isc" yes;
	setAttr ".hyp[28].isc" yes;
	setAttr ".hyp[29].isc" yes;
	setAttr ".hyp[30].isc" yes;
	setAttr ".hyp[31].isc" yes;
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
// End of lighting2.ma
