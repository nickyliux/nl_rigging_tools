//Maya ASCII 2023 scene
//Name: rtArmBp.ma
//Last modified: Thu, Apr 09, 2026 04:14:09 PM
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
fileInfo "UUID" "2A591EFB-4ABB-5A88-DE3D-3A9848420042";
createNode transform -n "module_grp";
	rename -uid "A08207E3-49BA-E61C-5646-E09F599D0878";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide_ofs" -p "module_grp";
	rename -uid "BE21F191-42D3-8D02-BB3D-5C9F680A675B";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "master_guide" -p "master_guide_ofs";
	rename -uid "50807175-43FF-E7F4-58C3-EABB95B14D6E";
	addAttr -ci true -sn "_____" -ln "_____" -min 0 -max 0 -en " " -at "enum";
	addAttr -ci true -sn "ribbon" -ln "ribbon" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "scapulaBone" -ln "scapulaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dualBone" -ln "dualBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "rollJntNum" -ln "rollJntNum" -dv 2 -min 2 -at "long";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "mirrorable" -ln "mirrorable" -min 0 -max 1 -at "bool";
	setAttr -l on -k on "._____";
	setAttr -cb on ".ribbon" yes;
	setAttr -cb on ".scapulaBone";
	setAttr -cb on ".dualBone";
	setAttr -cb on ".rbnJntNum" 4;
	setAttr -cb on ".rollJntNum";
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr -cb on ".mirrorable" yes;
createNode transform -n "clavicle_guide_ofs" -p "master_guide";
	rename -uid "0CE9E75F-4875-A16B-190C-3A8F77759082";
	setAttr ".t" -type "double3" 8 0 0 ;
createNode transform -n "clavicle_guide" -p "clavicle_guide_ofs";
	rename -uid "6841C990-458A-0561-AA73-F2A714DE2148";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode aimConstraint -n "clavicle_guide_aimConstraint1" -p "clavicle_guide";
	rename -uid "238FDEF9-4D31-722A-FC67-17BCBEBE2A97";
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
	setAttr ".u" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -3.2918041132453673e-08 -0.0018772762257365284 0.0020093631406061514 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "clavicle_guideShape" -p "clavicle_guide";
	rename -uid "4B6B6E34-4EF1-7722-6CB4-76BDDDB59E3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.27985780970142182 0 4.8195943751403313e-08
		0.25984105990158929 0.10762968642370312 4.8195943751403313e-08
		0.19887374801126248 0.19887374801126248 4.8195943751403313e-08
		0.10762968642370312 0.25984105990158929 4.8195943751403313e-08
		0 0.27985124720148746 4.8195943751403313e-08
		-0.10762968642370312 0.25984105990158929 4.8195943751403313e-08
		-0.19887374801126248 0.19887374801126248 4.8195943751403313e-08
		-0.25984105990158929 0.10762968642370312 4.8195943751403313e-08
		-0.27985780970142182 -1.3259456117405438e-08 4.8195943751403313e-08
		-0.25984105990158929 -0.10762968642370312 4.8195943751403313e-08
		-0.19887374801126248 -0.19887374801126248 4.8195943751403313e-08
		-0.10762968642370312 -0.25984105990158929 4.8195943751403313e-08
		1.1175862388241376e-08 -0.27985124720148746 -0.0019028892850268735
		0.10762968642370312 -0.25984105990158929 4.8195943751403313e-08
		0.19887374801126248 -0.19887374801126248 4.8195943751403313e-08
		0.25984105990158929 -0.10762968642370312 4.8195943751403313e-08
		0.27985780970142182 0 4.8195943751403313e-08
		0.25855480991445179 0.00072824249271757511 -0.1070945132331106
		0.19788937302110626 0.0013456274865437251 -0.19788501232520564
		0.10709699892902999 0.0017581499824184999 -0.25854913671856439
		1.1175862388241376e-08 0.0019030124809698748 -0.27985157400554
		-0.10709699892902999 0.0017581499824184999 -0.25854913671856439
		-0.19788937302110626 0.0013456274865437251 -0.19788501232520564
		-0.25855480991445179 0.00072824249271757511 -0.1070945132331106
		-0.27985780970142182 -1.3259456117405438e-08 4.8195943751403313e-08
		-0.25855480991445179 -0.00072826874271731247 0.10709423462500187
		-0.19788937302110626 -0.0013456537365434625 0.197884921217095
		-0.10709699892902999 -0.0017581762324182376 0.25854885811045558
		1.1175862388241376e-08 -0.0019030312309696877 0.2798512953974312
		0.10709699892902999 -0.0017581762324182376 0.25854885811045558
		0.19788937302110626 -0.0013456537365434625 0.197884921217095
		0.25855480991445179 -0.00072826874271731247 0.10709423462500187
		0.27985780970142182 0 4.8195943751403313e-08
		0.25855480991445179 0.00072824249271757511 -0.1070945132331106
		0.19788937302110626 0.0013456274865437251 -0.19788501232520564
		0.10709699892902999 0.0017581499824184999 -0.25854913671856439
		1.1175862388241376e-08 0.0019030124809698748 -0.27985157400554
		1.1175862388241376e-08 0.10885256141147438 -0.25782069922584872
		1.1175862388241376e-08 0.19923037300769625 -0.19653932483866249
		1.1175862388241376e-08 0.25927705990722938 -0.1053363257506925
		0 0.27985124720148746 4.8195943751403313e-08
		1.1175862388241376e-08 0.25782055992179442 0.10885260960741813
		1.1175862388241376e-08 0.19653918553460809 0.1992302337036419
		1.1175862388241376e-08 0.10533637394663625 0.25927710810317306
		1.1175862388241376e-08 -0.0019030312309696877 0.2798512953974312
		1.1175862388241376e-08 -0.10885256141147438 0.25782042061774002
		1.1175862388241376e-08 -0.19923037300769625 0.19653904623055374
		1.1175862388241376e-08 -0.25927705990722938 0.10533604714258371
		1.1175862388241376e-08 -0.27985124720148746 -0.0019028892850268735
		1.1175862388241376e-08 -0.25782055992179442 -0.10885288821552686
		1.1175862388241376e-08 -0.19653918553460809 -0.1992305123117506
		1.1175862388241376e-08 -0.10533637394663625 -0.25927738671128187
		1.1175862388241376e-08 0.0019030124809698748 -0.27985157400554
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "B2E61E9C-4A4F-0395-FFDC-50A686F22BEE";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -8.8817841970012523e-16 ;
createNode transform -n "upr_guide" -p "upr_guide_ofs";
	rename -uid "2DE3CD8F-4D2D-EBD3-A307-FA8F05E4E259";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode aimConstraint -n "upr_guide_aimConstraint1" -p "upr_guide";
	rename -uid "F5473FE3-4A7B-B9E0-A998-3099A7E57A62";
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
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "3EA6B1D8-4C40-2B63-4E1E-9081EFCEB037";
createNode transform -n "lwr_guide" -p "lwr_guide_ofs";
	rename -uid "9012E222-46A7-5A73-DB7D-59A45C26AC09";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".ry";
	setAttr -k off ".rx";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006271e-16 8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626519e-32 3.9443045261050625e-31 ;
createNode aimConstraint -n "lwr_guide_aimConstraint1" -p "lwr_guide";
	rename -uid "3712F893-4A39-781E-322D-3992E820AFB8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "hand_guideW0" -dv 1 -at "double";
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
createNode transform -n "ulna_guide_ZRO" -p "lwr_guide";
	rename -uid "2289C749-4402-8504-AE5D-27AD58D12E9F";
	setAttr ".t" -type "double3" 3.944934656718857e-14 4 0 ;
createNode transform -n "ulna_guide" -p "ulna_guide_ZRO";
	rename -uid "B1620B68-4333-BB23-65D3-C09055C449B5";
	setAttr -k off ".v";
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
	rename -uid "7E03FDB3-4188-962B-D7F9-C79804DA8D69";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0.69930060129498572 6.3041832738624874 6.3427376109377063 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ulna_guideShape" -p "ulna_guide";
	rename -uid "03C3DA0D-4189-A7DE-36EF-FD99E8DF3136";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.24876249751237497 -4.4408920985006262e-16 1.4210854715202004e-14
		0.23096983102363497 0.095670832376624548 1.4210854715202004e-14
		0.17677666489889998 0.17677666489889954 1.4210854715202004e-14
		0.095670832376624992 0.23096983102363453 1.4210854715202004e-14
		0 0.24875666417909953 1.4210854715202004e-14
		-0.095670832376624992 0.23096983102363453 1.4210854715202004e-14
		-0.17677666489889998 0.17677666489889954 1.4210854715202004e-14
		-0.23096983102363497 0.095670832376624548 1.4210854715202004e-14
		-0.24876249751237497 -1.1786183659560709e-08 1.4210854715202004e-14
		-0.23096983102363497 -0.095670832376625436 1.4210854715202004e-14
		-0.17677666489889998 -0.17677666489890043 1.4210854715202004e-14
		-0.095670832376624992 -0.23096983102363541 1.4210854715202004e-14
		9.9340999006590018e-09 -0.24875666417910042 -0.0016914999830707892
		0.095670832376624992 -0.23096983102363541 1.4210854715202004e-14
		0.17677666489889998 -0.17677666489890043 1.4210854715202004e-14
		0.23096983102363497 -0.095670832376625436 1.4210854715202004e-14
		0.24876249751237497 -4.4408920985006262e-16 1.4210854715202004e-14
		0.22982649770173499 0.00064732666019295601 -0.095195165714700783
		0.17590166490765002 0.001196113321371756 -0.1758978315743408
		0.095197332381359995 0.001562799984371556 -0.22982149770177079
		9.9340999006590018e-09 0.0016915666497505557 -0.24875699751241581
		-0.095197332381359995 0.001562799984371556 -0.22982149770177079
		-0.17590166490765002 0.001196113321371756 -0.1758978315743408
		-0.22982649770173499 0.00064732666019295601 -0.095195165714700783
		-0.24876249751237497 -1.1786183659560709e-08 1.4210854715202004e-14
		-0.22982649770173499 -0.00064734999352694406 0.095194832381399211
		-0.17590166490765002 -0.001196136654705744 0.1758976649077042
		-0.095197332381359995 -0.0015628233177055442 0.22982116436846922
		9.9340999006590018e-09 -0.0016915833164179443 0.24875666417911418
		0.095197332381359995 -0.0015628233177055442 0.22982116436846922
		0.17590166490765002 -0.001196136654705744 0.1758976649077042
		0.22982649770173499 -0.00064734999352694406 0.095194832381399211
		0.24876249751237497 -4.4408920985006262e-16 1.4210854715202004e-14
		0.22982649770173499 0.00064732666019295601 -0.095195165714700783
		0.17590166490765002 0.001196113321371756 -0.1758978315743408
		0.095197332381359995 0.001562799984371556 -0.22982149770177079
		9.9340999006590018e-09 0.0016915666497505557 -0.24875699751241581
		9.9340999006590018e-09 0.096757832365754554 -0.22917399770824576
		9.9340999006590018e-09 0.17709366489572956 -0.17470166491963579
		9.9340999006590018e-09 0.23046849769531455 -0.093632332396995782
		0 0.24875666417909953 1.4210854715202004e-14
		9.9340999006590018e-09 0.22917383104159456 0.096757832365769209
		9.9340999006590018e-09 0.17470149825298453 0.17709349822907924
		9.9340999006590018e-09 0.093632332397009549 0.23046849769532921
		9.9340999006590018e-09 -0.0016915833164179443 0.24875666417911418
		9.9340999006590018e-09 -0.096757832365755442 0.22917366437494421
		9.9340999006590018e-09 -0.17709366489573045 0.17470133158633422
		9.9340999006590018e-09 -0.23046849769531544 0.093631999063694196
		9.9340999006590018e-09 -0.24875666417910042 -0.0016914999830707892
		9.9340999006590018e-09 -0.22917383104159544 -0.096758165699070794
		9.9340999006590018e-09 -0.17470149825298542 -0.17709383156238079
		9.9340999006590018e-09 -0.093632332397010437 -0.23046883102863081
		9.9340999006590018e-09 0.0016915666497505557 -0.24875699751241581
		;
	setAttr ".adot" yes;
createNode transform -n "radius_guide_ZRO" -p "lwr_guide";
	rename -uid "5965D4DE-4052-2D39-A7EC-75B65565F2B4";
	setAttr ".t" -type "double3" -2.6336571812279885e-14 -4 0 ;
createNode transform -n "radius_guide" -p "radius_guide_ZRO";
	rename -uid "02F93DBB-4BB3-100B-4842-968423DB5D0D";
	setAttr -k off ".v";
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
	rename -uid "541EF43A-47D5-59AC-43C6-A38F37158A33";
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
	setAttr ".rsrr" -type "double3" 179.30183558999656 6.2991012724376265 173.66243805506323 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "lwr_guide_ofs_pointConstraint1" -p "lwr_guide_ofs";
	rename -uid "5E15DF66-4E93-2F39-AB52-B7AADCCFC019";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 28.049483413568197 67.839769818434064 -4.6242190193393409 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "lwr_guide_ofs_aimConstraint1" -p "lwr_guide_ofs";
	rename -uid "C57E7F97-48DA-3188-18F4-42B55F059A8C";
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
	setAttr ".wu" -type "double3" 0 -1 0 ;
	setAttr ".rsrr" -type "double3" 180 1.8792051599528704e-15 -17.48679005437987 ;
	setAttr -k on ".w0";
createNode transform -n "palm_guide_ofs" -p "master_guide";
	rename -uid "0B77CFBA-44EE-4D6B-E66B-8B84266F54BB";
	setAttr ".t" -type "double3" -53.999999046325684 0 8.8817841970012523e-16 ;
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "1C649D6A-4653-B176-5B04-7FBAD8B5B443";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006247e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893969e-31 0 ;
createNode transform -n "ball_guide_ofs" -p "palm_guide";
	rename -uid "14DCFDB8-47CD-2B1B-5851-1FA24418BBA0";
	setAttr ".t" -type "double3" -7.5 -1.0763591960058273e-14 2.8421709430404001e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "ball_guide" -p "ball_guide_ofs";
	rename -uid "D5E098D5-4A93-0C4F-2E42-5488AD8D30AF";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006232e-16 8.8817841970012484e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.9582283945787908e-31 -3.9443045261050555e-31 ;
createNode transform -n "palmIn_guide_ofs" -p "ball_guide";
	rename -uid "6D1D007A-4213-B5A2-289A-5E85441A5374";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 -5.0000000000000018 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "palmIn_guide" -p "palmIn_guide_ofs";
	rename -uid "A539867A-4529-891D-2159-C1B4DB4FA8D1";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006232e-16 8.8817841970012484e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.9582283945787908e-31 -3.9443045261050555e-31 ;
createNode nurbsCurve -n "palmIn_guideShape" -p "palmIn_guide";
	rename -uid "682F7EFE-457C-92D9-DA39-D0A005E85EBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.20989335727605365 2.5424107263916085e-14 7.9450335199737765e-16
		0.1948807949261793 0.080722264817802758 7.9450335199737765e-16
		0.14915531100843415 0.14915531100847229 7.9450335199737765e-16
		0.080722264817764622 0.19488079492621743 7.9450335199737765e-16
		-1.2712053631958042e-14 0.20988843540114102 7.9450335199737765e-16
		-0.080722264817790046 0.19488079492621743 7.9450335199737765e-16
		-0.14915531100845958 0.14915531100847229 7.9450335199737765e-16
		-0.19488079492620472 0.080722264817802758 7.9450335199737765e-16
		-0.20989335727607908 -9.9445666639468151e-09 7.9450335199737765e-16
		-0.19488079492620472 -0.08072226481775191 7.9450335199737765e-16
		-0.14915531100845958 -0.14915531100842144 7.9450335199737765e-16
		-0.080722264817790046 -0.19488079492616658 7.9450335199737765e-16
		8.3818840791274005e-09 -0.20988843540109017 -0.0014272031107271745
		0.080722264817764622 -0.19488079492616658 7.9450335199737765e-16
		0.14915531100843415 -0.14915531100842144 7.9450335199737765e-16
		0.1948807949261793 -0.08072226481775191 7.9450335199737765e-16
		0.20989335727605365 2.5424107263916085e-14 7.9450335199737765e-16
		0.19391610743582616 0.00054618186956360544 -0.08032092107178998
		0.148417029765817 0.001009220614933218 -0.14841379539086125
		0.080322749196759788 0.0013186124868392992 -0.19391188868588027
		8.3818840791274005e-09 0.0014272593607528301 -0.209888716651112
		-0.080322749196785212 0.0013186124868392992 -0.19391188868588027
		-0.14841702976584242 0.001009220614933218 -0.14841379539086125
		-0.19391610743585158 0.00054618186956360544 -0.08032092107178998
		-0.20989335727607908 -9.9445666639468151e-09 7.9450335199737765e-16
		-0.19391610743585158 -0.00054620155701256027 0.080320639821794396
		-0.14841702976584242 -0.0010092403023821729 0.14841365476586421
		-0.080322749196785212 -0.0013186321742882543 0.19391160743588473
		8.3818840791274005e-09 -0.0014272734232018418 0.2098884354011164
		0.080322749196759788 -0.0013186321742882543 0.19391160743588473
		0.148417029765817 -0.0010092403023821729 0.14841365476586421
		0.19391610743582616 -0.00054620155701256027 0.080320639821794396
		0.20989335727605365 2.5424107263916085e-14 7.9450335199737765e-16
		0.19391610743582616 0.00054618186956360544 -0.08032092107178998
		0.148417029765817 0.001009220614933218 -0.14841379539086125
		0.080322749196759788 0.0013186124868392992 -0.19391188868588027
		8.3818840791274005e-09 0.0014272593607528301 -0.209888716651112
		8.3818840791274005e-09 0.081639421058631215 -0.19336556056634358
		8.3818840791274005e-09 0.1494227797557976 -0.14740452977595392
		8.3818840791274005e-09 0.19445779493044746 -0.079002280459976398
		-1.2712053631958042e-14 0.20988843540114102 7.9450335199737765e-16
		8.3818840791274005e-09 0.19336541994137124 0.081639421058606582
		8.3818840791274005e-09 0.14740438915098147 0.14942263913077442
		8.3818840791274005e-09 0.079002280460002614 0.19445779493042284
		8.3818840791274005e-09 -0.0014272734232018418 0.2098884354011164
		8.3818840791274005e-09 -0.081639421058580366 0.19336527931634798
		8.3818840791274005e-09 -0.14942277975574675 0.14740424852595829
		8.3818840791274005e-09 -0.19445779493039661 0.079001999209980786
		8.3818840791274005e-09 -0.20988843540109017 -0.0014272031107271745
		8.3818840791274005e-09 -0.19336541994132039 -0.08163970230860218
		8.3818840791274005e-09 -0.14740438915093063 -0.14942292038076999
		8.3818840791274005e-09 -0.079002280459951765 -0.19445807618041844
		8.3818840791274005e-09 0.0014272593607528301 -0.209888716651112
		;
createNode transform -n "palmOut_guide_ofs" -p "ball_guide";
	rename -uid "06804EE7-4B69-B414-BAEB-BEB23E1F2350";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 5.0000000000000027 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "palmOut_guide" -p "palmOut_guide_ofs";
	rename -uid "342BB096-458D-347C-CA48-E1A841550C90";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006232e-16 8.8817841970012484e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.9582283945787908e-31 -3.9443045261050555e-31 ;
createNode nurbsCurve -n "sphereLShape1" -p "ball_guide";
	rename -uid "A7BD48A2-4C76-EC01-A0F0-B596E64ED45C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 54 0 no 3
		55 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 55
		55
		0.24875699751242997 -9.9340554917380118e-09 0.0016915666497517687
		0.23046883102864493 -9.9340554917380118e-09 -0.093632332397009216
		0.17709383156239494 -9.9340554917380118e-09 -0.17470149825298414
		0.096758165699084964 -9.9340554917380118e-09 -0.22917383104159419
		0.0016914999830849996 -9.9340554917380118e-09 -0.24875666417909917
		-0.093631999063679944 -9.9340554917380118e-09 -0.23046849769531413
		-0.17470133158631992 -9.9340554917380118e-09 -0.17709366489572914
		-0.22917366437492992 -9.9340554917380118e-09 -0.096757832365754193
		-0.24875666417909992 -9.9340554917380118e-09 -0.0016915833164167296
		-0.23046849769531491 -9.9340554917380118e-09 0.093632332397010742
		-0.17709349822906495 -9.9340554917380118e-09 0.17470149825298573
		-0.09675783236575497 -9.9340554917380118e-09 0.22917383104159572
		0 4.4408920985006262e-14 0.24875666417910069
		0.093632332397009965 -9.9340554917380118e-09 0.23046849769531563
		0.17470166491964997 -9.9340554917380118e-09 0.1770936648957307
		0.22917399770825989 -9.9340554917380118e-09 0.096757832365755733
		0.24875699751242997 -9.9340554917380118e-09 0.0016915666497517687
		0.22982149770178489 -0.095197332381315558 0.0015627999843727692
		0.17589783157435493 -0.17590166490760556 0.0011961133213729694
		0.095195165714714966 -0.22982649770169047 0.00064732666019416934
		0 -0.24876249751233043 7.696209121388367e-16
		-0.095194832381384986 -0.22982649770169047 -0.00064734999352572997
		-0.17589766490768993 -0.17590166490760556 -0.0011961366547045299
		-0.2298211643684549 -0.095197332381315558 -0.0015628233177043291
		-0.24875666417909992 -9.9340554917380118e-09 -0.0016915833164167296
		-0.2298211643684549 0.095197332381404376 -0.0015628233177043291
		-0.17589766490768993 0.17590166490769438 -0.0011961366547045299
		-0.095194832381384986 0.22982649770177929 -0.00064734999352572997
		0 0.24876249751241925 -1.1786182445850584e-08
		0.095195165714714966 0.22982649770177929 0.00064732666019416934
		0.17589783157435493 0.17590166490769438 0.0011961133213729694
		0.22982149770178489 0.095197332381404376 0.0015627999843727692
		0.24875699751242997 -9.9340554917380118e-09 0.0016915666497517687
		0.22982149770178489 -0.095197332381315558 0.0015627999843727692
		0.17589783157435493 -0.17590166490760556 0.0011961133213729694
		0.095195165714714966 -0.22982649770169047 0.00064732666019416934
		0 -0.24876249751233043 7.696209121388367e-16
		0 -0.23096983102359045 -0.095670832376624201
		0 -0.17677666489885546 -0.17677666489889915
		0 -0.095670832376580556 -0.23096983102363414
		0.0016914999830849996 -9.9340554917380118e-09 -0.24875666417909917
		0 0.095670832376669374 -0.23096983102363414
		0 0.17677666489894428 -0.17677666489889915
		0 0.23096983102367927 -0.095670832376624201
		0 0.24876249751241925 -1.1786182445850584e-08
		0 0.23096983102367927 0.095670832376625728
		0 0.17677666489894428 0.17677666489890065
		0 0.095670832376669374 0.23096983102363572
		0 4.4408920985006262e-14 0.24875666417910069
		0 -0.095670832376580556 0.23096983102363572
		0 -0.17677666489885546 0.17677666489890065
		0 -0.23096983102359045 0.095670832376625728
		0 -0.24876250038931025 7.696209121388367e-16
		0 -2.3481880983576744 7.696209121388367e-16
		0 -2.3481880983576744 7.696209121388367e-16
		;
	setAttr ".adot" yes;
createNode transform -n "ulnaEnd_guide_ZRO" -p "palm_guide";
	rename -uid "309097D0-400E-A6CE-065E-D2B36403D0DF";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 2.7879490346063498e-14 4 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000004 ;
createNode transform -n "ulnaEnd_guide" -p "ulnaEnd_guide_ZRO";
	rename -uid "F30106B4-417C-1DFC-50CC-86BFABFF97B4";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 4.4408920985006173e-16 0 ;
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
	rename -uid "C7CDCAB9-47FE-589B-FF07-36A58D8F84D8";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode transform -n "radiusEnd_guide_ZRO" -p "palm_guide";
	rename -uid "EA5C3FD4-4A81-1552-494E-5B9636A6880D";
	setAttr ".t" -type "double3" 0 0 -4 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000004 ;
createNode transform -n "radiusEnd_guide" -p "radiusEnd_guide_ZRO";
	rename -uid "EAF60CC1-46D1-4C75-057D-9A8DA731AE85";
	setAttr -k off ".v";
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
	rename -uid "2454720F-49B5-F801-C1B9-4299860BDC7D";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "palm_guide_aimConstraint1" -p "palm_guide";
	rename -uid "9302AAE5-4A09-A2A5-FAFD-498EA826B383";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 90.000000000000057 9.4238658892863217e-16 9.4238658892863276e-16 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "FD6481FF-4FF1-9F14-E67B-9E9A74E9BD4E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.2635036001936348e-16 9.4150401414181815 -9.4150401414181815
		3.6920067633695062e-32 9.8469283042561049 -6.0295046146203583e-16
		-4.2635036001936348e-16 9.4150401414181815 9.4150401414181815
		-6.0295046146203643e-16 5.1046650212987162e-16 9.8469283042561049
		-4.2635036001936348e-16 -9.4150401414181815 9.4150401414181815
		-6.0397960101354759e-32 -9.846928304256112 9.8637354285996911e-16
		4.2635036001936348e-16 -9.4150401414181815 -9.4150401414181815
		6.0295046146203643e-16 -1.3428221361193528e-15 -9.8469283042561049
		4.2635036001936348e-16 9.4150401414181815 -9.4150401414181815
		3.6920067633695062e-32 9.8469283042561049 -6.0295046146203583e-16
		-4.2635036001936348e-16 9.4150401414181815 9.4150401414181815
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp" -p "master_guide";
	rename -uid "A26EA55E-4991-FB3F-D8B8-5EA48FC7BD06";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 18;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr ".t" -type "double3" 13.655999183654785 145.60000610351562 2.3129999637603937 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "line_01" -p "line_grp";
	rename -uid "1DDBC3AF-41B5-0795-AE3B-5E999738E721";
	setAttr -l on -k off ".v";
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
	rename -uid "D1BB3441-42FA-BF24-91AC-9DAEF2A39F83";
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
		8 -8.8817841970012523e-16 1.0877048587575128e-31
		-1.7763568394002505e-15 1.0877048587575128e-31 8.8817841970012523e-16
		;
	setAttr ".adot" yes;
createNode transform -n "line_02" -p "line_grp";
	rename -uid "5783C8DA-4799-9AEE-E507-D8A1446F96A3";
	setAttr -l on -k off ".v";
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
	rename -uid "96679933-413F-15CA-955A-FDA972D81DFC";
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
		-1.7763568394002505e-15 1.0877048587575128e-31 8.8817841970012523e-16
		-26.999999523162842 4.4408920985006252e-16 -8.8817841970012563e-16
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp";
	rename -uid "C8A58302-4395-431D-F6A7-2E925C6940E9";
	setAttr -l on -k off ".v";
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
	rename -uid "FDBCF77E-4605-5F16-0FBA-1882C25142DB";
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
		-26.999999523162842 4.4408920985006252e-16 -8.8817841970012563e-16
		-53.999999046325684 -2.0737809902837778e-31 -8.8817841970012523e-16
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "84D0767B-4AAB-24D3-8023-F2A57A4813E5";
	setAttr -l on -k off ".v";
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
	rename -uid "B4AF689B-4DDA-0EA3-E441-1CA74A407133";
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
		-53.999999046325684 -2.0737809902837778e-31 -8.8817841970012523e-16
		-61.499999046325684 1.0763591960058268e-14 -2.9309887850104126e-14
		;
	setAttr ".adot" yes;
createNode transform -n "line_05" -p "line_grp";
	rename -uid "BC592443-48D4-5272-DE5C-66B0136AF8F0";
	setAttr -l on -k off ".v";
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
	rename -uid "6F906E62-46F5-5B2D-FC6F-98B8E5871F51";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 6;
	setAttr ".ovrgb" -type "float3" 0.69440001 0.55390006 0.25750002 ;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-26.999999523162842 4.4408920985006252e-16 -8.8817841970012563e-16
		-26.999999523162799 2.4579534843238327e-14 -35
		;
	setAttr ".adot" yes;
createNode transform -n "line_06" -p "line_grp";
	rename -uid "043BA1C1-4850-67AE-DD8D-8BACF0831BC8";
	setAttr -k off ".v";
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
	rename -uid "983C9578-4A48-0577-B78A-869D65F1B68C";
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
		-26.999999523162867 4 -1.3874237008567979e-15
		-53.999999046325684 1.8031004057101819e-15 3.9999999999999978
		;
	setAttr ".adot" yes;
createNode transform -n "line_07" -p "line_grp";
	rename -uid "865320A8-439B-C872-CD01-B9BB902B727E";
	setAttr -k off ".v";
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
	rename -uid "02E0AE7B-4210-A54C-2D29-27BD900D9440";
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
		-26.999999523162803 -3.9999999999999996 -4.1734564354014926e-16
		-53.999999046325669 -2.8808744994823619e-14 -4.0000000000000027
		;
	setAttr ".adot" yes;
createNode transform -n "line_09" -p "line_grp";
	rename -uid "50A8C773-44BF-1EDF-35DF-17BE27B1DEFD";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "curveShape2" -p "line_09";
	rename -uid "A8865404-4BC6-4608-8A04-9A9FC20075DA";
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
		7.1054273576010019e-15 5 2.758550201264486e-16
		12 5.0000000000000009 5.0000000000000018
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp";
	rename -uid "895FC78F-4B50-2247-0FEE-9C9A92208093";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "curveShape3" -p "line_10";
	rename -uid "6E1A8F57-4A26-5026-C59D-D6AD6669470A";
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
		-1.7763568394002505e-15 1.0877048587575128e-31 8.8817841970012523e-16
		12 -6.1232339957367604e-16 -4.9999999999999956
		;
	setAttr ".adot" yes;
createNode transform -n "pv_loc_ofs" -p "master_guide";
	rename -uid "5700BBB2-45DA-6BF7-ED6D-B59A63BA2089";
createNode pointConstraint -n "pv_loc_ofs_pointConstraint1" -p "pv_loc_ofs";
	rename -uid "67B89028-4C55-8A25-B98F-CC973C0BAEC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upr_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "palm_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -26.999999523162842 0 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "pv_loc_ofs_aimConstraint1" -p "pv_loc_ofs";
	rename -uid "2DA7B9FB-49A0-1DC8-2641-48A49693395D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "palm_guideW0" -dv 1 -at "double";
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
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -2.0751892962954322e-14 -5.6513428381042619e-15 
		149.53224299942238 ;
	setAttr -k on ".w0";
createNode transform -n "pv_loc_ofs1" -p "pv_loc_ofs";
	rename -uid "257F7718-4FD0-8FD1-007E-95A1655759F3";
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
createNode transform -n "pv_loc" -p "pv_loc_ofs1";
	rename -uid "48C4300E-45EA-7AB8-3E07-3F9AFCFEE46F";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "96923C02-42A7-05C5-94FF-C4BD019B5F95";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 1;
createNode transform -n "pv_guide_ofs" -p "pv_loc";
	rename -uid "95EF90B6-4966-01E5-A757-8B9D15119DEC";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 2.8421709430404007e-14 -40 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "pvc_guide" -p "pv_guide_ofs";
	rename -uid "B89D53FF-4449-BEDD-8F3E-549979F45266";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "posRatio" -ln "posRatio" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".posRatio";
createNode aimConstraint -n "pv_loc_aimConstraint1" -p "pv_loc";
	rename -uid "142FB74D-4AA1-4182-B1E8-86B55FE20465";
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
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr -k on ".w0";
createNode transform -n "clavEnd_guide_ofs" -p "master_guide";
	rename -uid "B48E5213-4BE8-F2C9-78C8-BCA457F71CDD";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -5 0 ;
createNode transform -n "clavEnd_guide" -p "clavEnd_guide_ofs";
	rename -uid "6356ACF4-4E8D-DC24-52AF-B6A9CA9B11E0";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -1.7445623132974362e-17 0 -9.4238658892864834e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode nurbsCurve -n "scapula_guideShape" -p "clavEnd_guide";
	rename -uid "6D725C75-46C1-BC4C-D097-37AA882C21E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.27985780970142182 0 3.8857805861880479e-16
		0.25984105990158934 0.10762968642370312 3.8857805861880479e-16
		0.19887374801126248 0.19887374801126248 3.8857805861880479e-16
		0.10762968642370312 0.25984105990158934 3.8857805861880479e-16
		0 0.27985124720148746 3.8857805861880479e-16
		-0.10762968642370312 0.25984105990158934 3.8857805861880479e-16
		-0.19887374801126248 0.19887374801126248 3.8857805861880479e-16
		-0.25984105990158934 0.10762968642370312 3.8857805861880479e-16
		-0.27985780970142182 -1.3259456117405438e-08 3.8857805861880479e-16
		-0.25984105990158934 -0.10762968642370312 3.8857805861880479e-16
		-0.19887374801126248 -0.19887374801126248 3.8857805861880479e-16
		-0.10762968642370312 -0.25984105990158934 3.8857805861880479e-16
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809702367
		0.10762968642370312 -0.25984105990158934 3.8857805861880479e-16
		0.19887374801126248 -0.19887374801126248 3.8857805861880479e-16
		0.25984105990158934 -0.10762968642370312 3.8857805861880479e-16
		0.27985780970142182 0 3.8857805861880479e-16
		0.25855480991445184 0.00072824249271757511 -0.10709456142905399
		0.19788937302110626 0.0013456274865437251 -0.19788506052114901
		0.10709699892903 0.0017581499824185001 -0.25854918491450773
		1.1175862388241376e-08 0.0019030124809698748 -0.27985162220148341
		-0.10709699892903 0.0017581499824185001 -0.25854918491450773
		-0.19788937302110626 0.0013456274865437251 -0.19788506052114901
		-0.25855480991445184 0.00072824249271757511 -0.10709456142905399
		-0.27985780970142182 -1.3259456117405438e-08 3.8857805861880479e-16
		-0.25855480991445184 -0.00072826874271731247 0.10709418642905852
		-0.19788937302110626 -0.0013456537365434625 0.19788487302115162
		-0.10709699892903 -0.0017581762324182378 0.25854880991451229
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148791
		0.10709699892903 -0.0017581762324182378 0.25854880991451229
		0.19788937302110626 -0.0013456537365434625 0.19788487302115162
		0.25855480991445184 -0.00072826874271731247 0.10709418642905852
		0.27985780970142182 0 3.8857805861880479e-16
		0.25855480991445184 0.00072824249271757511 -0.10709456142905399
		0.19788937302110626 0.0013456274865437251 -0.19788506052114901
		0.10709699892903 0.0017581499824185001 -0.25854918491450773
		1.1175862388241376e-08 0.0019030124809698748 -0.27985162220148341
		1.1175862388241376e-08 0.10885256141147438 -0.25782074742179206
		1.1175862388241376e-08 0.19923037300769625 -0.19653937303460586
		1.1175862388241376e-08 0.25927705990722938 -0.10533637394663586
		0 0.27985124720148746 3.8857805861880479e-16
		1.1175862388241376e-08 0.25782055992179442 0.10885256141147477
		1.1175862388241376e-08 0.19653918553460809 0.19923018550769855
		1.1175862388241376e-08 0.10533637394663625 0.25927705990722977
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148791
		1.1175862388241376e-08 -0.10885256141147438 0.25782037242179662
		1.1175862388241376e-08 -0.19923037300769625 0.19653899803461042
		1.1175862388241376e-08 -0.25927705990722938 0.10533599894664038
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809702367
		1.1175862388241376e-08 -0.25782055992179442 -0.10885293641147023
		1.1175862388241376e-08 -0.19653918553460809 -0.199230560507694
		1.1175862388241376e-08 -0.10533637394663625 -0.25927743490722527
		1.1175862388241376e-08 0.0019030124809698748 -0.27985162220148341
		;
	setAttr ".adot" yes;
createNode transform -n "scapula_guide_ofs" -p "master_guide";
	rename -uid "85B1D354-44A7-0D85-C402-FB9F0C9E6CD7";
	setAttr ".t" -type "double3" 12 0 4.9999999999999964 ;
createNode transform -n "scapula_guide" -p "scapula_guide_ofs";
	rename -uid "FCCA5F6D-4E55-8DE3-DE8A-F494D627CE7C";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode transform -n "clavStart_guide_ofs" -p "master_guide";
	rename -uid "D94F9787-4BF5-95FD-0728-E7A33960DDE2";
	setAttr ".t" -type "double3" 12 -5 -5.0000000000000018 ;
createNode transform -n "clavStart_guide" -p "clavStart_guide_ofs";
	rename -uid "F61B4ECF-44F0-B2B0-0C0D-94ADDC9624A2";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode nurbsCurve -n "clavStart_guideShape" -p "clavStart_guide";
	rename -uid "70C42B27-4CEB-68B6-A38E-D2A1AEFFF09D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.27985780970142182 0 3.8857805861880479e-16
		0.25984105990158934 0.10762968642370312 3.8857805861880479e-16
		0.19887374801126248 0.19887374801126248 3.8857805861880479e-16
		0.10762968642370312 0.25984105990158934 3.8857805861880479e-16
		0 0.27985124720148746 3.8857805861880479e-16
		-0.10762968642370312 0.25984105990158934 3.8857805861880479e-16
		-0.19887374801126248 0.19887374801126248 3.8857805861880479e-16
		-0.25984105990158934 0.10762968642370312 3.8857805861880479e-16
		-0.27985780970142182 -1.3259456117405438e-08 3.8857805861880479e-16
		-0.25984105990158934 -0.10762968642370312 3.8857805861880479e-16
		-0.19887374801126248 -0.19887374801126248 3.8857805861880479e-16
		-0.10762968642370312 -0.25984105990158934 3.8857805861880479e-16
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809702367
		0.10762968642370312 -0.25984105990158934 3.8857805861880479e-16
		0.19887374801126248 -0.19887374801126248 3.8857805861880479e-16
		0.25984105990158934 -0.10762968642370312 3.8857805861880479e-16
		0.27985780970142182 0 3.8857805861880479e-16
		0.25855480991445184 0.00072824249271757511 -0.10709456142905399
		0.19788937302110626 0.0013456274865437251 -0.19788506052114901
		0.10709699892903 0.0017581499824185001 -0.25854918491450773
		1.1175862388241376e-08 0.0019030124809698748 -0.27985162220148341
		-0.10709699892903 0.0017581499824185001 -0.25854918491450773
		-0.19788937302110626 0.0013456274865437251 -0.19788506052114901
		-0.25855480991445184 0.00072824249271757511 -0.10709456142905399
		-0.27985780970142182 -1.3259456117405438e-08 3.8857805861880479e-16
		-0.25855480991445184 -0.00072826874271731247 0.10709418642905852
		-0.19788937302110626 -0.0013456537365434625 0.19788487302115162
		-0.10709699892903 -0.0017581762324182378 0.25854880991451229
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148791
		0.10709699892903 -0.0017581762324182378 0.25854880991451229
		0.19788937302110626 -0.0013456537365434625 0.19788487302115162
		0.25855480991445184 -0.00072826874271731247 0.10709418642905852
		0.27985780970142182 0 3.8857805861880479e-16
		0.25855480991445184 0.00072824249271757511 -0.10709456142905399
		0.19788937302110626 0.0013456274865437251 -0.19788506052114901
		0.10709699892903 0.0017581499824185001 -0.25854918491450773
		1.1175862388241376e-08 0.0019030124809698748 -0.27985162220148341
		1.1175862388241376e-08 0.10885256141147438 -0.25782074742179206
		1.1175862388241376e-08 0.19923037300769625 -0.19653937303460586
		1.1175862388241376e-08 0.25927705990722938 -0.10533637394663586
		0 0.27985124720148746 3.8857805861880479e-16
		1.1175862388241376e-08 0.25782055992179442 0.10885256141147477
		1.1175862388241376e-08 0.19653918553460809 0.19923018550769855
		1.1175862388241376e-08 0.10533637394663625 0.25927705990722977
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148791
		1.1175862388241376e-08 -0.10885256141147438 0.25782037242179662
		1.1175862388241376e-08 -0.19923037300769625 0.19653899803461042
		1.1175862388241376e-08 -0.25927705990722938 0.10533599894664038
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809702367
		1.1175862388241376e-08 -0.25782055992179442 -0.10885293641147023
		1.1175862388241376e-08 -0.19653918553460809 -0.199230560507694
		1.1175862388241376e-08 -0.10533637394663625 -0.25927743490722527
		1.1175862388241376e-08 0.0019030124809698748 -0.27985162220148341
		;
	setAttr ".adot" yes;
createNode transform -n "pole_plane_grp" -p "master_guide_ofs";
	rename -uid "E5783243-42B5-5E5B-92D1-C4AB49E1C266";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "pPlane1" -p "pole_plane_grp";
	rename -uid "E5F181E4-4698-03E6-E6D3-8CB9E676C2A5";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "548D62E5-49A7-01D4-3176-29ABACA0A626";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pPlaneShape1Orig" -p "pPlane1";
	rename -uid "4948E6E7-4E0F-5882-57DE-34B5D195BEBE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 8 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "back";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "front";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "left";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[6].gtagnm" -type "string" "right";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[7].gtagnm" -type "string" "rim";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "e[0:2]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 3 ".ed[0:2]"  0 1 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 1 -3 -1
		mu 0 3 0 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1" -p "pole_plane_grp";
	rename -uid "1B8B28E7-477A-DA73-9DAA-419672DBEB93";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -15.000000000000002 145.25 0.24999999999998346 ;
	setAttr ".sp" -type "double3" -15.000000000000002 145.25 0.24999999999998346 ;
createNode transform -n "cluster1Handle" -p "group1";
	rename -uid "582DBB20-4F2D-6F80-543F-1E90DC58117E";
	setAttr ".rp" -type "double3" 0.5 0 -0.5 ;
	setAttr ".sp" -type "double3" 0.5 0 -0.5 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "B2ECD7F2-4069-74B7-2BCD-7A8E46006BCB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0.5 0 -0.5 ;
createNode pointConstraint -n "cluster1Handle_pointConstraint1" -p "cluster1Handle";
	rename -uid "5FFE1107-4BC9-2A12-9965-B5BE9E0A0FAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upr_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -15.500000000000002 145 0.49999999999998346 ;
	setAttr -k on ".w0";
createNode transform -n "group2" -p "pole_plane_grp";
	rename -uid "93B353EB-4873-2165-E435-8CA95C9ECF7A";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -41.749999523162842 145.25 -10.095828599976684 ;
	setAttr ".sp" -type "double3" -41.749999523162842 145.25 -10.095828599976684 ;
createNode transform -n "cluster2Handle" -p "group2";
	rename -uid "F7E9BBC1-46F9-ABD1-BF0E-2096B0CFE2F4";
	setAttr ".rp" -type "double3" -0.5 0 -0.5 ;
	setAttr ".sp" -type "double3" -0.5 0 -0.5 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "ED04222D-47AC-20B9-0058-9CA4D07D743F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 -0.5 ;
createNode pointConstraint -n "cluster2Handle_pointConstraint1" -p "cluster2Handle";
	rename -uid "829F70E7-4233-E2E8-B6C4-5DB945EAEDF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lwr_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -41.499999523162842 145 -9.8458285999766844 ;
	setAttr -k on ".w0";
createNode transform -n "group3" -p "pole_plane_grp";
	rename -uid "8E711EF0-4F15-9866-BBC9-4E9E09A4D504";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -68.749999046325684 145.25 -1.8318679906315083e-14 ;
	setAttr ".sp" -type "double3" -68.749999046325684 145.25 -1.8318679906315083e-14 ;
createNode transform -n "cluster3Handle" -p "group3";
	rename -uid "847342D7-421F-A12E-8E42-E59C67868EA8";
	setAttr ".rp" -type "double3" -0.5 0 0.5 ;
	setAttr ".sp" -type "double3" -0.5 0 0.5 ;
createNode clusterHandle -n "cluster3HandleShape" -p "cluster3Handle";
	rename -uid "4DCC5813-4F64-6603-B7D5-BE87D6FDA3DE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 0.5 ;
createNode pointConstraint -n "cluster3Handle_pointConstraint1" -p "cluster3Handle";
	rename -uid "0E76C8C2-4917-DECC-F825-26A37B547999";
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
	setAttr ".rst" -type "double3" -68.499999046325684 145 -0.50000000000001832 ;
	setAttr -k on ".w0";
createNode transform -n "plane_normal_loc" -p "pole_plane_grp";
	rename -uid "EE52CFD5-45F9-31A3-CE90-A9BFB2E00549";
	setAttr ".t" -type "double3" -15 145 -1.6553516961244624e-14 ;
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".dla" yes;
createNode locator -n "plane_normal_locShape" -p "plane_normal_loc";
	rename -uid "44476A0F-4C5E-D718-F80B-9789E506D52B";
	setAttr -k off ".v";
createNode normalConstraint -n "plane_normal_loc_normalConstraint1" -p "plane_normal_loc";
	rename -uid "1F93AFCA-4A7C-92D6-48B8-37AC6266B893";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pPlane1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rsrr" -type "double3" 0 0 90 ;
	setAttr -k on ".w0";
createNode transform -s -n "persp";
	rename -uid "AB7E52E5-4BC6-549B-1229-4BA904DD5D93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -74.63943292724457 41.189224852222068 52.315236397902837 ;
	setAttr ".r" -type "double3" -35.138352729796814 -40.200000000022378 -4.1641414228745196e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19F6DB4F-4918-877A-57DD-5EBBE38E71A5";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 78.359715286478902;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "171F7699-45BC-8AD1-0831-258C9B72CA5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5E6699AB-4C66-CE08-5EDA-24B6E1416196";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7B9C70A5-4198-874E-2278-1EB978984F6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -56.285537637940337 142.21364101343218 1011.178809837276 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3A751D4F-4DF6-6C00-16C1-DC8CFC5998C1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1023.8952714721507;
	setAttr ".ow" 33.566124529920337;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -39.234448950401678 145 -12.716461634874733 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "EFA658DE-4B76-8C6D-C386-03B883047C7C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1010.2429472671379 144.55743596065781 -12.200136922308797 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E53ABB81-4149-337F-1000-49B475007B9C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1049.4773962175395;
	setAttr ".ow" 39.683242194352346;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -39.234448950401678 145 -12.716461634874733 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|clavicle_guide_ofs|clavicle_guide|clavicle_guideShape" "upr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|clavicle_guide_ofs|clavicle_guide|clavicle_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|clavicle_guide_ofs|clavicle_guide|clavicle_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|lwr_guide_ofs|lwr_guide|ulna_guide_ZRO|ulna_guide|ulna_guideShape" "radius_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|lwr_guide_ofs|lwr_guide|ulna_guide_ZRO|ulna_guide|ulna_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|lwr_guide_ofs|lwr_guide|ulna_guide_ZRO|ulna_guide|ulna_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|palm_guide_ofs|palm_guide|ball_guide_ofs|ball_guide|palmIn_guide_ofs|palmIn_guide|palmIn_guideShape" "palmOut_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|palm_guide_ofs|palm_guide|ball_guide_ofs|ball_guide|sphereLShape1" "palm_guide" ;
parent -s -nc -r -add "|module_grp|master_guide_ofs|master_guide|clavEnd_guide_ofs|clavEnd_guide|scapula_guideShape" "scapula_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C94DA107-4EFC-FFED-9BA6-6497DC7DC652";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0F2EF392-46EA-52CD-AD3A-99B7D6AA093C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0A616585-4032-18B0-5965-EDB72CDFD1E5";
createNode displayLayerManager -n "layerManager";
	rename -uid "DD668060-4C3C-C822-C616-8FB652923057";
createNode displayLayer -n "defaultLayer";
	rename -uid "4011EB8B-4296-1EB2-2E08-40844F6318E5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1E96B30F-4014-658F-FCE8-6995D48A26CF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BD18B807-4968-E110-0D94-B9A28F4760A6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9EAC53FD-4E7F-55B1-0379-C8B5820375D6";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 552\n            -height 726\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 552\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 552\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 30 -size 300 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7B057219-4602-0D00-E58B-C797EF200F13";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode script -n "RGN";
	rename -uid "58DB0967-4BE8-F398-0E21-8EAA76AD93C6";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -sn "master_guide" -ln "master_guide" -at "message";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "ArmBp";
createNode decomposeMatrix -n "DCM_1";
	rename -uid "B3A15B24-4A00-5E1B-7B87-F1924A99BF20";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "C7903D75-445F-055C-1A78-BC9A26CCEAE8";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "48692019-4FB2-8E7E-8B2A-769CD7287B17";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "CF6B9948-4C4E-9CF5-E369-2B9521C3EE95";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "2B4D14B0-4549-4622-764F-9C8C20AD20B8";
createNode decomposeMatrix -n "DCM_6";
	rename -uid "387834CE-4D58-29CB-A965-62B30A45B705";
createNode decomposeMatrix -n "rt_forearm_fix_DCM_1";
	rename -uid "B6EA2ACD-46E3-747F-AF18-FE8A643A1B99";
createNode decomposeMatrix -n "rt_forearm_fix_DCM_2";
	rename -uid "D49A54FA-41D2-14CD-1604-FAB39253F55A";
createNode decomposeMatrix -n "rt_forearm_fix_DCM_3";
	rename -uid "4FE0E858-469D-A581-4387-A2A2F9E8776F";
createNode decomposeMatrix -n "rt_forearm_fix_DCM_4";
	rename -uid "32953199-436A-6A0F-D646-5095B6D3FA0D";
createNode cluster -n "cluster1";
	rename -uid "5A7851C8-4D8E-D9D4-65A0-97B4F55972CA";
	setAttr ".ip[0].gtg" -type "string" "cluster1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2";
	rename -uid "A4B80021-4035-2C4F-369B-13AC7CD2710C";
	setAttr ".ip[0].gtg" -type "string" "cluster2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster3";
	rename -uid "FC09D336-4858-0E07-229E-1CBD8B8E6B74";
	setAttr ".ip[0].gtg" -type "string" "cluster3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode condition -n "condition2";
	rename -uid "322B8A3A-4960-9E77-04F0-D09C300A5894";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" -3 1 1 ;
createNode decomposeMatrix -n "DCM_7";
	rename -uid "B4BB0E23-44F8-8F6C-5AD3-67984018B2AB";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "42CD1098-45AF-1479-9DF5-589642EF49C3";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "6F5917B0-4CF0-2597-B45B-6180F2281438";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2B578831-412F-7EE2-CE12-E399BA493979";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -597.61902387180123 -535.71426442691359 ;
	setAttr ".tgi[0].vh" -type "double2" 598.80950001497229 534.52378828374265 ;
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
	setAttr -s 2 ".hyp";
	setAttr ".hyp[85291].isc" yes;
	setAttr ".hyp[85292].isc" yes;
connectAttr "clavicle_guide_aimConstraint1.crx" "clavicle_guide.rx" -l on;
connectAttr "clavicle_guide_aimConstraint1.cry" "clavicle_guide.ry" -l on;
connectAttr "clavicle_guide_aimConstraint1.crz" "clavicle_guide.rz" -l on;
connectAttr "clavicle_guide.pim" "clavicle_guide_aimConstraint1.cpim";
connectAttr "clavicle_guide.t" "clavicle_guide_aimConstraint1.ct";
connectAttr "clavicle_guide.rp" "clavicle_guide_aimConstraint1.crp";
connectAttr "clavicle_guide.rpt" "clavicle_guide_aimConstraint1.crt";
connectAttr "clavicle_guide.ro" "clavicle_guide_aimConstraint1.cro";
connectAttr "upr_guide.t" "clavicle_guide_aimConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "clavicle_guide_aimConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "clavicle_guide_aimConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "clavicle_guide_aimConstraint1.tg[0].tpm";
connectAttr "clavicle_guide_aimConstraint1.w0" "clavicle_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "upr_guide.wm" "clavicle_guide_aimConstraint1.wum";
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
connectAttr "lwr_guide_ofs_aimConstraint1.crx" "lwr_guide_ofs.rx";
connectAttr "lwr_guide_ofs_aimConstraint1.cry" "lwr_guide_ofs.ry";
connectAttr "lwr_guide_ofs_aimConstraint1.crz" "lwr_guide_ofs.rz";
connectAttr "lwr_guide_aimConstraint1.cry" "lwr_guide.ry" -l on;
connectAttr "lwr_guide_aimConstraint1.crx" "lwr_guide.rx" -l on;
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
connectAttr "master_guide.dualBone" "ulna_guide.v" -l on;
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
connectAttr "lwr_guide.wm" "ulna_guide_aimConstraint1.wum";
connectAttr "master_guide.dualBone" "radius_guide.v" -l on;
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
connectAttr "palm_guide.wm" "radius_guide_aimConstraint1.wum";
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
connectAttr "lwr_guide_ofs.pim" "lwr_guide_ofs_aimConstraint1.cpim";
connectAttr "lwr_guide_ofs.t" "lwr_guide_ofs_aimConstraint1.ct";
connectAttr "lwr_guide_ofs.rp" "lwr_guide_ofs_aimConstraint1.crp";
connectAttr "lwr_guide_ofs.rpt" "lwr_guide_ofs_aimConstraint1.crt";
connectAttr "lwr_guide_ofs.ro" "lwr_guide_ofs_aimConstraint1.cro";
connectAttr "upr_guide.t" "lwr_guide_ofs_aimConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "lwr_guide_ofs_aimConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "lwr_guide_ofs_aimConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "lwr_guide_ofs_aimConstraint1.tg[0].tpm";
connectAttr "lwr_guide_ofs_aimConstraint1.w0" "lwr_guide_ofs_aimConstraint1.tg[0].tw"
		;
connectAttr "palm_guide_aimConstraint1.crx" "palm_guide.rx" -l on;
connectAttr "palm_guide_aimConstraint1.cry" "palm_guide.ry" -l on;
connectAttr "palm_guide_aimConstraint1.crz" "palm_guide.rz" -l on;
connectAttr "master_guide.dualBone" "ulnaEnd_guide.v" -l on;
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
connectAttr "ulna_guide.wm" "ulnaEnd_guide_aimConstraint1.wum";
connectAttr "master_guide.dualBone" "radiusEnd_guide.v" -l on;
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
connectAttr "radius_guide.wm" "radiusEnd_guide_aimConstraint1.wum";
connectAttr "palm_guide.pim" "palm_guide_aimConstraint1.cpim";
connectAttr "palm_guide.t" "palm_guide_aimConstraint1.ct";
connectAttr "palm_guide.rp" "palm_guide_aimConstraint1.crp";
connectAttr "palm_guide.rpt" "palm_guide_aimConstraint1.crt";
connectAttr "palm_guide.ro" "palm_guide_aimConstraint1.cro";
connectAttr "lwr_guide.t" "palm_guide_aimConstraint1.tg[0].tt";
connectAttr "lwr_guide.rp" "palm_guide_aimConstraint1.tg[0].trp";
connectAttr "lwr_guide.rpt" "palm_guide_aimConstraint1.tg[0].trt";
connectAttr "lwr_guide.pm" "palm_guide_aimConstraint1.tg[0].tpm";
connectAttr "palm_guide_aimConstraint1.w0" "palm_guide_aimConstraint1.tg[0].tw";
connectAttr "pvc_guide.wm" "palm_guide_aimConstraint1.wum";
connectAttr "DCM_1.ot" "line_01Shape.cp[0]";
connectAttr "DCM_2.ot" "line_01Shape.cp[1]";
connectAttr "DCM_2.ot" "line_02Shape.cp[0]";
connectAttr "DCM_3.ot" "line_02Shape.cp[1]";
connectAttr "DCM_3.ot" "line_03Shape.cp[0]";
connectAttr "DCM_4.ot" "line_03Shape.cp[1]";
connectAttr "DCM_4.ot" "line_04Shape.cp[0]";
connectAttr "DCM_5.ot" "line_04Shape.cp[1]";
connectAttr "DCM_3.ot" "line_05Shape.cp[0]";
connectAttr "DCM_6.ot" "line_05Shape.cp[1]";
connectAttr "master_guide.dualBone" "line_06.v" -l on;
connectAttr "rt_forearm_fix_DCM_1.ot" "line_06Shape.cp[0]";
connectAttr "rt_forearm_fix_DCM_2.ot" "line_06Shape.cp[1]";
connectAttr "master_guide.dualBone" "line_07.v" -l on;
connectAttr "rt_forearm_fix_DCM_3.ot" "line_07Shape.cp[0]";
connectAttr "rt_forearm_fix_DCM_4.ot" "line_07Shape.cp[1]";
connectAttr "master_guide.scapulaBone" "line_09.v" -l on;
connectAttr "DCM_7.ot" "curveShape2.cp[0]";
connectAttr "DCM_9.ot" "curveShape2.cp[1]";
connectAttr "master_guide.scapulaBone" "line_10.v" -l on;
connectAttr "DCM_2.ot" "curveShape3.cp[0]";
connectAttr "DCM_10.ot" "curveShape3.cp[1]";
connectAttr "pv_loc_ofs_pointConstraint1.ctx" "pv_loc_ofs.tx";
connectAttr "pv_loc_ofs_pointConstraint1.cty" "pv_loc_ofs.ty";
connectAttr "pv_loc_ofs_pointConstraint1.ctz" "pv_loc_ofs.tz";
connectAttr "pv_loc_ofs_aimConstraint1.crx" "pv_loc_ofs.rx";
connectAttr "pv_loc_ofs_aimConstraint1.cry" "pv_loc_ofs.ry";
connectAttr "pv_loc_ofs_aimConstraint1.crz" "pv_loc_ofs.rz";
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
connectAttr "pv_loc_ofs.pim" "pv_loc_ofs_aimConstraint1.cpim";
connectAttr "pv_loc_ofs.t" "pv_loc_ofs_aimConstraint1.ct";
connectAttr "pv_loc_ofs.rp" "pv_loc_ofs_aimConstraint1.crp";
connectAttr "pv_loc_ofs.rpt" "pv_loc_ofs_aimConstraint1.crt";
connectAttr "pv_loc_ofs.ro" "pv_loc_ofs_aimConstraint1.cro";
connectAttr "palm_guide.t" "pv_loc_ofs_aimConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "pv_loc_ofs_aimConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "pv_loc_ofs_aimConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "pv_loc_ofs_aimConstraint1.tg[0].tpm";
connectAttr "pv_loc_ofs_aimConstraint1.w0" "pv_loc_ofs_aimConstraint1.tg[0].tw";
connectAttr "plane_normal_loc.wm" "pv_loc_ofs_aimConstraint1.wum";
connectAttr "pv_loc_aimConstraint1.crx" "pv_loc.rx";
connectAttr "pv_loc_aimConstraint1.cry" "pv_loc.ry";
connectAttr "pv_loc_aimConstraint1.crz" "pv_loc.rz";
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
connectAttr "master_guide.scapulaBone" "clavEnd_guide.v" -l on;
connectAttr "master_guide.scapulaBone" "scapula_guide.v" -l on;
connectAttr "master_guide.scapulaBone" "clavStart_guide.v" -l on;
connectAttr "cluster3.og[0]" "pPlaneShape1.i";
connectAttr "cluster1Handle_pointConstraint1.ctx" "cluster1Handle.tx";
connectAttr "cluster1Handle_pointConstraint1.cty" "cluster1Handle.ty";
connectAttr "cluster1Handle_pointConstraint1.ctz" "cluster1Handle.tz";
connectAttr "cluster1Handle.pim" "cluster1Handle_pointConstraint1.cpim";
connectAttr "cluster1Handle.rp" "cluster1Handle_pointConstraint1.crp";
connectAttr "cluster1Handle.rpt" "cluster1Handle_pointConstraint1.crt";
connectAttr "upr_guide.t" "cluster1Handle_pointConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "cluster1Handle_pointConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "cluster1Handle_pointConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "cluster1Handle_pointConstraint1.tg[0].tpm";
connectAttr "cluster1Handle_pointConstraint1.w0" "cluster1Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "cluster2Handle_pointConstraint1.ctx" "cluster2Handle.tx";
connectAttr "cluster2Handle_pointConstraint1.cty" "cluster2Handle.ty";
connectAttr "cluster2Handle_pointConstraint1.ctz" "cluster2Handle.tz";
connectAttr "cluster2Handle.pim" "cluster2Handle_pointConstraint1.cpim";
connectAttr "cluster2Handle.rp" "cluster2Handle_pointConstraint1.crp";
connectAttr "cluster2Handle.rpt" "cluster2Handle_pointConstraint1.crt";
connectAttr "lwr_guide.t" "cluster2Handle_pointConstraint1.tg[0].tt";
connectAttr "lwr_guide.rp" "cluster2Handle_pointConstraint1.tg[0].trp";
connectAttr "lwr_guide.rpt" "cluster2Handle_pointConstraint1.tg[0].trt";
connectAttr "lwr_guide.pm" "cluster2Handle_pointConstraint1.tg[0].tpm";
connectAttr "cluster2Handle_pointConstraint1.w0" "cluster2Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "condition2.ocr" "cluster2Handle_pointConstraint1.oz";
connectAttr "cluster3Handle_pointConstraint1.ctx" "cluster3Handle.tx";
connectAttr "cluster3Handle_pointConstraint1.cty" "cluster3Handle.ty";
connectAttr "cluster3Handle_pointConstraint1.ctz" "cluster3Handle.tz";
connectAttr "cluster3Handle.pim" "cluster3Handle_pointConstraint1.cpim";
connectAttr "cluster3Handle.rp" "cluster3Handle_pointConstraint1.crp";
connectAttr "cluster3Handle.rpt" "cluster3Handle_pointConstraint1.crt";
connectAttr "palm_guide.t" "cluster3Handle_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "cluster3Handle_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "cluster3Handle_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "cluster3Handle_pointConstraint1.tg[0].tpm";
connectAttr "cluster3Handle_pointConstraint1.w0" "cluster3Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "plane_normal_loc_normalConstraint1.crx" "plane_normal_loc.rx";
connectAttr "plane_normal_loc_normalConstraint1.cry" "plane_normal_loc.ry";
connectAttr "plane_normal_loc_normalConstraint1.crz" "plane_normal_loc.rz";
connectAttr "plane_normal_loc.pim" "plane_normal_loc_normalConstraint1.cpim";
connectAttr "plane_normal_loc.t" "plane_normal_loc_normalConstraint1.ct";
connectAttr "plane_normal_loc.rp" "plane_normal_loc_normalConstraint1.crp";
connectAttr "plane_normal_loc.rpt" "plane_normal_loc_normalConstraint1.crt";
connectAttr "plane_normal_loc.ro" "plane_normal_loc_normalConstraint1.cro";
connectAttr "pPlaneShape1.w" "plane_normal_loc_normalConstraint1.tg[0].tgm";
connectAttr "plane_normal_loc_normalConstraint1.w0" "plane_normal_loc_normalConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "clavicle_guide.wm" "DCM_1.imat";
connectAttr "upr_guide.wm" "DCM_2.imat";
connectAttr "lwr_guide.wm" "DCM_3.imat";
connectAttr "palm_guide.wm" "DCM_4.imat";
connectAttr "ball_guide.wm" "DCM_5.imat";
connectAttr "pvc_guide.wm" "DCM_6.imat";
connectAttr "radius_guide.wm" "rt_forearm_fix_DCM_1.imat";
connectAttr "radiusEnd_guide.wm" "rt_forearm_fix_DCM_2.imat";
connectAttr "ulna_guide.wm" "rt_forearm_fix_DCM_3.imat";
connectAttr "ulnaEnd_guide.wm" "rt_forearm_fix_DCM_4.imat";
connectAttr "pPlaneShape1Orig.w" "cluster1.ip[0].ig";
connectAttr "pPlaneShape1Orig.o" "cluster1.orggeom[0]";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "cluster1.og[0]" "cluster2.ip[0].ig";
connectAttr "pPlaneShape1Orig.o" "cluster2.orggeom[0]";
connectAttr "cluster2Handle.wm" "cluster2.ma";
connectAttr "cluster2HandleShape.x" "cluster2.x";
connectAttr "cluster2.og[0]" "cluster3.ip[0].ig";
connectAttr "pPlaneShape1Orig.o" "cluster3.orggeom[0]";
connectAttr "cluster3Handle.wm" "cluster3.ma";
connectAttr "cluster3HandleShape.x" "cluster3.x";
connectAttr "lwr_guide.tz" "condition2.ft";
connectAttr "clavEnd_guide.wm" "DCM_7.imat";
connectAttr "clavStart_guide.wm" "DCM_9.imat";
connectAttr "scapula_guide.wm" "DCM_10.imat";
connectAttr "condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pv_loc.msg" ":hyperGraphLayout.hyp[85291].dn";
connectAttr "pv_loc_ofs_pointConstraint1.msg" ":hyperGraphLayout.hyp[85292].dn";
// End of rtArmBp.ma
