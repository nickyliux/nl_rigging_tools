//Maya ASCII 2023 scene
//Name: rtLegBp.ma
//Last modified: Mon, Nov 10, 2025 04:34:07 PM
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
fileInfo "UUID" "0F403044-4EF4-2461-B9B0-7F9742BD0BE2";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "F9A81B29-43EB-067F-B3D9-4B8E3C9B1943";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 3 -en "basic:ribbon:skeleton" 
		-at "enum";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "rollJntNum" -ln "rollJntNum" -dv 2 -min 2 -at "long";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeFix" -ln "kneeFix" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "scapulaExtra" -ln "scapulaExtra" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "mirrorable" -ln "mirrorable" -min 0 -max 1 -at "bool";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -15 0 0 ;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".limbType" 1;
	setAttr -l on ".wsMirror";
	setAttr -cb on ".rbnJntNum" 4;
	setAttr -cb on ".rollJntNum";
	setAttr -cb on ".patellaBone";
	setAttr -cb on ".toeBones";
	setAttr -cb on ".kneeFix";
	setAttr -cb on ".scapulaExtra";
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr -cb on ".mirrorable" yes;
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 108 0 ;
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
		0.31484003591410092 3.7192471324942744e-15 4.9960036108132044e-16
		0.29232119238928933 0.12108339722666972 4.9960036108132044e-16
		0.2237329665126716 0.22373296651267402 4.9960036108132044e-16
		0.12108339722666735 0.29232119238929172 4.9960036108132044e-16
		1.3357370765021415e-15 0.31483265310167713 4.9960036108132044e-16
		-0.12108339722666467 0.29232119238929172 4.9960036108132044e-16
		-0.22373296651266894 0.22373296651267402 4.9960036108132044e-16
		-0.29232119238928667 0.12108339722666972 4.9960036108132044e-16
		-0.31484003591409826 -1.4916884412833985e-08 4.9960036108132044e-16
		-0.29232119238928667 -0.12108339722666228 4.9960036108132044e-16
		-0.22373296651266894 -0.22373296651266658 4.9960036108132044e-16
		-0.12108339722666467 -0.29232119238928428 4.9960036108132044e-16
		1.2572846522508625e-08 -0.31483265310166969 -0.0021408046660914542
		0.12108339722666735 -0.29232119238928428 4.9960036108132044e-16
		0.2237329665126716 -0.22373296651266658 4.9960036108132044e-16
		0.29232119238928933 -0.12108339722666228 4.9960036108132044e-16
		0.31484003591410092 3.7192471324942744e-15 4.9960036108132044e-16
		0.29087416115375969 0.0008192728043109913 -0.12048138160768568
		0.2226255446487459 0.00151383092236541 -0.22262069308629256
		0.1204841237951601 0.0019779187302245318 -0.29086783302882119
		1.2572846522508625e-08 0.002140889041094828 -0.31483307497666879
		-0.12048412379515742 0.0019779187302245318 -0.29086783302882119
		-0.22262554464874326 0.00151383092236541 -0.22262069308629256
		-0.29087416115375697 0.0008192728043109913 -0.12048138160768568
		-0.31484003591409826 -1.4916884412833985e-08 4.9960036108132044e-16
		-0.29087416115375697 -0.00081930233555325732 0.12048095973269091
		-0.22262554464874326 -0.0015138604536076763 0.22262048214879565
		-0.12048412379515742 -0.0019779482614667985 0.29086741115382642
		1.2572846522508625e-08 -0.0021409101348371798 0.31483265310167391
		0.1204841237951601 -0.0019779482614667985 0.29086741115382642
		0.2226255446487459 -0.0015138604536076763 0.22262048214879565
		0.29087416115375969 -0.00081930233555325732 0.12048095973269091
		0.31484003591410092 3.7192471324942744e-15 4.9960036108132044e-16
		0.29087416115375969 0.0008192728043109913 -0.12048138160768568
		0.2226255446487459 0.00151383092236541 -0.22262069308629256
		0.1204841237951601 0.0019779187302245318 -0.29086783302882119
		1.2572846522508625e-08 0.002140889041094828 -0.31483307497666879
		1.2572846522508625e-08 0.12245913158791241 -0.29004834084951603
		1.2572846522508625e-08 0.22413416963366198 -0.22110679466393154
		1.2572846522508625e-08 0.29168669239563677 -0.11850342068996528
		1.3357370765021415e-15 0.31483265310167713 4.9960036108132044e-16
		1.2572846522508625e-08 0.29004812991202245 0.12245913158790919
		1.2572846522508625e-08 0.22110658372643779 0.22413395869616096
		1.2572846522508625e-08 0.1185034206899695 0.29168669239563355
		1.2572846522508625e-08 -0.0021409101348371798 0.31483265310167391
		1.2572846522508625e-08 -0.12245913158790497 0.29004791897452126
		1.2572846522508625e-08 -0.22413416963365454 0.22110637278893677
		1.2572846522508625e-08 -0.29168669239562933 0.11850299881497049
		1.2572846522508625e-08 -0.31483265310166969 -0.0021408046660914542
		1.2572846522508625e-08 -0.29004812991201501 -0.12245955346290394
		1.2572846522508625e-08 -0.22110658372643036 -0.2241343805711557
		1.2572846522508625e-08 -0.11850342068996206 -0.29168711427062838
		1.2572846522508625e-08 0.002140889041094828 -0.31483307497666879
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "FDBB4D88-4CFD-F00D-82C0-DC86D56796A9";
	setAttr ".t" -type "double3" 0 91.900001525878906 0 ;
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
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "48EA90C2-45F7-4333-B462-92BD0860F021";
	setAttr -l on ".v";
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
createNode aimConstraint -n "lwr_guide_ofs_aimConstraint1" -p "lwr_guide_ofs";
	rename -uid "C30BFC36-42A0-6AA5-B0F7-D88CACDC4AC5";
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
	setAttr ".u" -type "double3" 0 -1 0 ;
	setAttr ".wu" -type "double3" -1 1 0 ;
	setAttr ".rsrr" -type "double3" -5.3679809466221646e-31 -5.3679809466221646e-31 
		90 ;
	setAttr -k on ".w0";
createNode transform -n "lwr_guide_ofs1" -p "lwr_guide_ofs";
	rename -uid "7F2458C8-476D-C9AC-2478-28A05872032A";
	setAttr ".t" -type "double3" 0 0 8.8817841970012444e-16 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "lwr_guide" -p "lwr_guide_ofs1";
	rename -uid "61B4C85D-4A6F-96DF-91ED-80B2FEF15965";
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
createNode nurbsCurve -n "radius_guideShape" -p "patella_guide";
	rename -uid "844D471A-498C-1CEB-6164-B39C31952A2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.20989335727606637 1.3600232051658168e-15 5.1548392290823308e-16
		0.19488079492619201 0.080722264817778694 5.1548392290823308e-16
		0.14915531100844687 0.14915531100844823 5.1548392290823308e-16
		0.080722264817777334 0.19488079492619337 5.1548392290823308e-16
		0 0.20988843540111696 5.1548392290823308e-16
		-0.080722264817777334 0.19488079492619337 5.1548392290823308e-16
		-0.14915531100844687 0.14915531100844823 5.1548392290823308e-16
		-0.19488079492619201 0.080722264817778694 5.1548392290823308e-16
		-0.20989335727606637 -9.9445907280308738e-09 5.1548392290823308e-16
		-0.19488079492619201 -0.080722264817775974 5.1548392290823308e-16
		-0.14915531100844687 -0.14915531100844551 5.1548392290823308e-16
		-0.080722264817777334 -0.19488079492619065 5.1548392290823308e-16
		8.3818967911810325e-09 -0.20988843540111424 -0.0014272031107274534
		0.080722264817777334 -0.19488079492619065 5.1548392290823308e-16
		0.14915531100844687 -0.14915531100844551 5.1548392290823308e-16
		0.19488079492619201 -0.080722264817775974 5.1548392290823308e-16
		0.20989335727606637 1.3600232051658168e-15 5.1548392290823308e-16
		0.19391610743583887 0.00054618186953954136 -0.080320921071790272
		0.14841702976582971 0.0010092206149091539 -0.14841379539086152
		0.0803227491967725 0.0013186124868152351 -0.19391188868588058
		8.3818967911810325e-09 0.001427259360728766 -0.20988871665111233
		-0.0803227491967725 0.0013186124868152351 -0.19391188868588058
		-0.14841702976582971 0.0010092206149091539 -0.14841379539086152
		-0.19391610743583887 0.00054618186953954136 -0.080320921071790272
		-0.20989335727606637 -9.9445907280308738e-09 5.1548392290823308e-16
		-0.19391610743583887 -0.00054620155703662436 0.080320639821794104
		-0.14841702976582971 -0.001009240302406237 0.14841365476586393
		-0.0803227491967725 -0.0013186321743123184 0.19391160743588443
		8.3818967911810325e-09 -0.0014272734232259059 0.20988843540111615
		0.0803227491967725 -0.0013186321743123184 0.19391160743588443
		0.14841702976582971 -0.001009240302406237 0.14841365476586393
		0.19391610743583887 -0.00054620155703662436 0.080320639821794104
		0.20989335727606637 1.3600232051658168e-15 5.1548392290823308e-16
		0.19391610743583887 0.00054618186953954136 -0.080320921071790272
		0.14841702976582971 0.0010092206149091539 -0.14841379539086152
		0.0803227491967725 0.0013186124868152351 -0.19391188868588058
		8.3818967911810325e-09 0.001427259360728766 -0.20988871665111233
		8.3818967911810325e-09 0.081639421058607151 -0.19336556056634382
		8.3818967911810325e-09 0.14942277975577356 -0.14740452977595417
		8.3818967911810325e-09 0.19445779493042339 -0.079002280459976676
		0 0.20988843540111696 5.1548392290823308e-16
		8.3818967911810325e-09 0.19336541994134718 0.081639421058606304
		8.3818967911810325e-09 0.14740438915095744 0.14942263913077414
		8.3818967911810325e-09 0.079002280459978549 0.19445779493042253
		8.3818967911810325e-09 -0.0014272734232259059 0.20988843540111615
		8.3818967911810325e-09 -0.081639421058604431 0.19336527931634767
		8.3818967911810325e-09 -0.14942277975577084 0.14740424852595804
		8.3818967911810325e-09 -0.19445779493042067 0.079001999209980509
		8.3818967911810325e-09 -0.20988843540111424 -0.0014272031107274534
		8.3818967911810325e-09 -0.19336541994134446 -0.081639702308602458
		8.3818967911810325e-09 -0.14740438915095472 -0.14942292038077026
		8.3818967911810325e-09 -0.079002280459975829 -0.19445807618041872
		8.3818967911810325e-09 0.001427259360728766 -0.20988871665111233
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
	setAttr ".t" -type "double3" 0 7.6999998092651367 0 ;
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
createNode transform -n "ball_guide_ofs" -p "master_guide";
	rename -uid "AFC6ACE8-49C2-6343-D10B-D995FB21F46F";
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
createNode aimConstraint -n "ball_guide_ofs_aimConstraint1" -p "ball_guide_ofs";
	rename -uid "4509DD54-49A4-2D76-25F1-21850112267B";
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
	setAttr ".rsrr" -type "double3" 90.000007291229508 -69.999999999999972 -90.000006851514584 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ball_guide_ofs_pointConstraint1" -p "ball_guide_ofs";
	rename -uid "A7490F7D-4A27-BB98-6D14-4693471D1FF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "foot_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 4.2999998927116394 9.5000003576278687 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode transform -n "tip_guide_ofs" -p "master_guide";
	rename -uid "9DF21705-4F6C-197D-1814-B7B800AA61B4";
	setAttr ".t" -type "double3" 0 2 19.000000715255737 ;
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
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode nurbsCurve -n "palm_toePos_guideShape" -p "palm_inPos_guide";
	rename -uid "72E6F9C8-4A00-6F84-C3BB-03A8D6E760E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.27985780970142182 0 0
		0.25984105990158934 0.10762968642370312 0
		0.19887374801126248 0.19887374801126248 0
		0.10762968642370312 0.25984105990158934 0
		0 0.27985124720148746 0
		-0.10762968642370312 0.25984105990158934 0
		-0.19887374801126248 0.19887374801126248 0
		-0.25984105990158934 0.10762968642370312 0
		-0.27985780970142182 -1.3259456117405438e-08 0
		-0.25984105990158934 -0.10762968642370312 0
		-0.19887374801126248 -0.19887374801126248 0
		-0.10762968642370312 -0.25984105990158934 0
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809706253
		0.10762968642370312 -0.25984105990158934 0
		0.19887374801126248 -0.19887374801126248 0
		0.25984105990158934 -0.10762968642370312 0
		0.27985780970142182 0 0
		0.25855480991445184 0.00072824249271757511 -0.10709456142905438
		0.19788937302110626 0.0013456274865437251 -0.1978850605211494
		0.10709699892903 0.0017581499824185001 -0.25854918491450818
		1.1175862388241376e-08 0.0019030124809698748 -0.2798516222014838
		-0.10709699892903 0.0017581499824185001 -0.25854918491450818
		-0.19788937302110626 0.0013456274865437251 -0.1978850605211494
		-0.25855480991445184 0.00072824249271757511 -0.10709456142905438
		-0.27985780970142182 -1.3259456117405438e-08 0
		-0.25855480991445184 -0.00072826874271731247 0.10709418642905813
		-0.19788937302110626 -0.0013456537365434625 0.19788487302115124
		-0.10709699892903 -0.0017581762324182378 0.2585488099145119
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148746
		0.10709699892903 -0.0017581762324182378 0.2585488099145119
		0.19788937302110626 -0.0013456537365434625 0.19788487302115124
		0.25855480991445184 -0.00072826874271731247 0.10709418642905813
		0.27985780970142182 0 0
		0.25855480991445184 0.00072824249271757511 -0.10709456142905438
		0.19788937302110626 0.0013456274865437251 -0.1978850605211494
		0.10709699892903 0.0017581499824185001 -0.25854918491450818
		1.1175862388241376e-08 0.0019030124809698748 -0.2798516222014838
		1.1175862388241376e-08 0.10885256141147438 -0.25782074742179245
		1.1175862388241376e-08 0.19923037300769625 -0.19653937303460625
		1.1175862388241376e-08 0.25927705990722938 -0.10533637394663625
		0 0.27985124720148746 0
		1.1175862388241376e-08 0.25782055992179442 0.10885256141147438
		1.1175862388241376e-08 0.19653918553460809 0.19923018550769817
		1.1175862388241376e-08 0.10533637394663625 0.25927705990722938
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148746
		1.1175862388241376e-08 -0.10885256141147438 0.25782037242179623
		1.1175862388241376e-08 -0.19923037300769625 0.19653899803461003
		1.1175862388241376e-08 -0.25927705990722938 0.10533599894663999
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809706253
		1.1175862388241376e-08 -0.25782055992179442 -0.10885293641147062
		1.1175862388241376e-08 -0.19653918553460809 -0.19923056050769439
		1.1175862388241376e-08 -0.10533637394663625 -0.25927743490722566
		1.1175862388241376e-08 0.0019030124809698748 -0.2798516222014838
		;
	setAttr ".adot" yes;
createNode transform -n "palm_outPos_ofs" -p "master_guide";
	rename -uid "F6F1B2FB-4E39-7E92-531C-D8BB9BE9B167";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -6 0 0 ;
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
	setAttr ".t" -type "double3" 0 0 -6 ;
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
	setAttr ".t" -type "double3" 0 0 20 ;
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
createNode transform -n "pv_loc_ofs1" -p "pv_loc_ofs";
	rename -uid "704D401E-4ABC-A401-F0F3-939BD31053B4";
	setAttr ".t" -type "double3" -1.5987211554602254e-14 -1.4210854715202004e-14 -5 ;
createNode transform -n "pv_loc" -p "pv_loc_ofs1";
	rename -uid "E2799575-486C-9C81-2CD0-55882166B70D";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "C3D1B0F3-491B-F5D6-7163-E4B34BAB547C";
	setAttr -k off ".v" no;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3 3 3 ;
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
	setAttr ".t" -type "double3" 70 0 1.0122718478325402e-12 ;
	setAttr ".r" -type "double3" 0 89.999999999999588 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "49C74691-42F4-C3E1-28F2-EA81CCDCB1BE";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "posRatio" -ln "posRatio" -dv 1 -min 0.5 -max 2 -at "double";
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
createNode aimConstraint -n "pv_loc_ofs_aimConstraint1" -p "pv_loc_ofs";
	rename -uid "93672C63-449D-C93B-ABF5-98AF9B0D563B";
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
	setAttr ".wu" -type "double3" -1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 6.598299269771351 -87.334241627009604 8.0149113814902062 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "foot_guideShape1" -p "master_guide";
	rename -uid "6F492056-4D83-35C3-1AC2-AB9C0DC0C582";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.26773676203117 8.2535382583711187e-16 -19.703581497101396
		-8.1660387114908776e-15 8.0595107077863571e-16 -20.498877972262886
		-11.267736762031188 8.2535382583711157e-16 -19.703581497101396
		-11.689010839838973 1.2470934284616338e-31 10.020851653879564
		-11.267736762031188 -8.2535382583711157e-16 35.552
		-1.0052680407308491e-14 -8.059510707786362e-16 35.552
		11.26773676203117 -8.2535382583711157e-16 35.552
		11.689010839838955 -2.6978565941924595e-32 10.020851653879571
		11.26773676203117 8.2535382583711187e-16 -19.703581497101396
		-8.1660387114908776e-15 8.0595107077863571e-16 -20.498877972262886
		-11.267736762031188 8.2535382583711157e-16 -19.703581497101396
		;
	setAttr ".adot" yes;
createNode transform -n "toe_guide_grp" -p "master_guide";
	rename -uid "E669C658-4F4A-B12C-D97E-1DA743412B3C";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toesRoot_guide" -p "toe_guide_grp";
	rename -uid "EC465439-47EA-97C7-948A-D4BFA07F2B84";
	setAttr -k off ".v";
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
	rename -uid "88671F0C-4321-0DA3-408A-B787191BCBA6";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
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
createNode transform -n "toe00_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "19F60782-415D-D397-872C-46A3DE60216E";
	setAttr ".t" -type "double3" 4 1.5920408388915591e-15 -13 ;
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ofs";
	rename -uid "266AFEBF-46A8-B206-63DA-C6AA3764DE07";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.9 0.33 ;
	setAttr ".r" -type "double3" 16.75 0 0 ;
createNode transform -n "toe00_3_guide_ofs" -p "toe00_2_guide";
	rename -uid "C2D63B5C-455D-41AA-85A4-BB96A9B9DA93";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5 ;
createNode transform -n "toe00_3_guide" -p "toe00_3_guide_ofs";
	rename -uid "50C0A894-4859-AC9C-9468-8696B79F53E4";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe00_4_guide_ofs" -p "toe00_3_guide";
	rename -uid "D85B05D9-4CE4-7ECF-1DA0-F8820226CA82";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -2.5 ;
createNode nurbsCurve -n "toe03_1_guideShape" -p "toe00_3_guide";
	rename -uid "7A5F1DF2-46FE-6CF5-C5DF-B28FE70BFEE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
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
		;
	setAttr ".adot" yes;
createNode transform -n "toe00_4_guide_ofs1" -p "toe00_3_guide";
	rename -uid "1AE42803-47A2-522B-717D-C4BBAEEF221A";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 4.6852140587849672e-16 -2.8000000000000007 ;
createNode transform -n "toe00_4_guide" -p "toe00_4_guide_ofs1";
	rename -uid "5F340945-4C67-1050-9F49-EB9B6D5196C5";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe00_1_guide_ofs" -p "toe00_2_guide";
	rename -uid "C5A2661E-40B7-36AF-8D6B-3FBC46381E15";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.9721522630525295e-31 8 ;
createNode transform -n "toe00_1_guide" -p "toe00_1_guide_ofs";
	rename -uid "ACF47DB4-47E7-C2FB-8BA1-599EA3AAB54C";
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "25371EA2-4A19-EA33-51C0-DAA44767D516";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		-0.124378498756215 0.00084578332487727625 -4.9670499503295001e-09
		-0.11523441551432251 -0.04681616619850322 -4.9670499503295001e-09
		-0.088546915781197499 -0.087350749126490698 -4.9670499503295001e-09
		-0.048379082849542496 -0.11458691552079571 -4.9670499503295001e-09
		-0.00084574999154249993 -0.1243783320895482 -4.9670499503295001e-09
		0.046815999531839986 -0.11523424884765571 -4.9670499503295001e-09
		0.087350665793160004 -0.088546832447863211 -4.9670499503295001e-09
		0.11458683218746497 -0.048378916182875716 -4.9670499503295001e-09
		0.12437833208954999 -0.00084579165820697377 -4.9670499503295001e-09
		0.1152342488476575 0.046816166198506766 -4.9670499503295001e-09
		0.088546749114532503 0.087350749126494265 -4.9670499503295001e-09
		0.048378916182877499 0.11458691552079928 -4.9670499503295001e-09
		0 0.12437833208955176 0
		-0.046816166198504996 0.11523424884765926 -4.9670499503295001e-09
		-0.087350832459825001 0.088546832447866763 -4.9670499503295001e-09
		-0.11458699885412998 0.048378916182879275 -4.9670499503295001e-09
		-0.124378498756215 0.00084578332487727625 -4.9670499503295001e-09
		-0.11491074885089249 0.00078139999218777639 -0.04759866619067999
		-0.087948915787177492 0.00059805666068787639 -0.087950832453825012
		-0.04759758285735749 0.00032366333009847641 -0.11491324885086748
		0 1.7763568394002505e-15 -0.12438124875618749
		0.047597416190692493 -0.00032367499676147358 -0.11491324885086748
		0.08794883245384498 -0.00059806832735087362 -0.087950832453825012
		0.11491058218422751 -0.00078141165885077372 -0.04759866619067999
		0.12437833208954999 -0.00084579165820697377 -4.9670499503295001e-09
		0.11491058218422751 -0.00078141165885077372 0.04759866619067999
		0.08794883245384498 -0.00059806832735087362 0.087950832453825012
		0.047597416190692493 -0.00032367499676147358 0.11491324885086748
		0 -5.8930898313789095e-09 0.12438124875618749
		-0.04759758285735749 0.00032366333009847641 0.11491324885086748
		-0.087948915787177492 0.00059805666068787639 0.087950832453825012
		-0.11491074885089249 0.00078139999218777639 0.04759866619067999
		-0.124378498756215 0.00084578332487727625 -4.9670499503295001e-09
		-0.11491074885089249 0.00078139999218777639 -0.04759866619067999
		-0.087948915787177492 0.00059805666068787639 -0.087950832453825012
		-0.04759758285735749 0.00032366333009847641 -0.11491324885086748
		0 1.7763568394002505e-15 -0.12438124875618749
		0 -0.047835416188310713 -0.11548491551181747
		0 -0.088388332449448215 -0.088388332449449977
		0 -0.11548491551181568 -0.047835416188312482
		-0.00084574999154249993 -0.1243783320895482 -4.9670499503295001e-09
		0 -0.11548491551181568 0.047835416188312482
		0 -0.088388332449448215 0.088388332449449977
		0 -0.047835416188310713 0.11548491551181747
		0 -5.8930898313789095e-09 0.12438124875618749
		0 0.047835416188314273 0.11548491551181747
		0 0.088388332449451754 0.088388332449449977
		0 0.11548491551181926 0.047835416188312482
		0 0.12437833208955176 0
		0 0.11548491551181926 -0.047835416188312482
		0 0.088388332449451754 -0.088388332449449977
		0 0.047835416188314273 -0.11548491551181747
		0 1.7763568394002505e-15 -0.12438125019467736
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "dotLineShape1" -p "toe00_2_guide";
	rename -uid "F74A5D3F-4B7B-98B3-EE36-199A0F1A60CA";
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
		-0.1296387174536183 -5.5879311949098495e-09 0.052668186973320562
		-0.09961528025385262 -5.5879312095465788e-09 0.098269592767306527
		-0.054426468205740756 -5.5879312095465788e-09 0.12891027996089968
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
		-0.12891037371090169 -5.5879311832004661e-09 -0.054426280705734693
		-0.13992581110074731 -5.5879311940865335e-09 -0.0009515062404824732
		-0.12927459245725947 -0.053548499464514981 -0.00087907499120679045
		-0.098942530260580169 -0.098944686510553104 -0.00067281374326940552
		-0.05354728071453263 -0.12927740495722587 -0.00036412124635634225
		-5.4672071923378245e-15 -0.13992890485071086 2.4589705271971241e-15
		0.05354709321452357 -0.12927740495722587 0.00036413437136113423
		0.098942436510570081 -0.098944686510553118 0.00067282686827417409
		0.12927440495725045 -0.053548499464514995 0.00087908811621157789
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
		-5.4672071923378245e-15 -0.099436874005631198 0.099436874005633655
		-5.4672071923378245e-15 -0.053814843211851537 0.12992052995079711
		-0.00095146874049077928 -5.5879311802731202e-09 0.13992562360074617
		-5.4672071923378245e-15 0.053814843211851537 0.12992052995079711
		-5.4672071923378245e-15 0.099436874005631157 0.099436874005633655
		-5.4672071923378245e-15 0.12992052995079462 0.053814843211854015
		-5.4672071923378245e-15 0.13992890485071086 6.6297305243313148e-09
		-5.4672071923378245e-15 0.12992052995079462 -0.053814843211849081
		-5.4672071923378245e-15 0.099436874005631157 -0.0994368740056287
		-5.4672071923378245e-15 0.053814843211851517 -0.12992052995079215
		-5.4672071923378245e-15 1.1709383462843448e-17 -0.13992562360074123
		-5.4672071923378245e-15 -0.053814843211851517 -0.12992052995079215
		-5.4672071923378245e-15 -0.099436874005631157 -0.099436874005628742
		-5.4672071923378245e-15 -0.12992052995079462 -0.053814843211849081
		-5.4672071923378245e-15 -0.13992890646901196 2.4765346023913892e-15
		-5.4672071923378245e-15 -1.3208558053262172 2.2013640910145682e-15
		-5.4672071923378245e-15 -1.3208558053262172 2.2013640910145682e-15
		;
	setAttr ".adot" yes;
createNode transform -n "toe01_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "89DD842D-4AEE-A2AE-2185-B385964C9CD2";
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ofs";
	rename -uid "3E072398-482D-EA9A-EA05-64ACB89DB148";
createNode transform -n "toe01_3_guide_ofs" -p "toe01_2_guide";
	rename -uid "90E5B9E5-4556-4221-83CA-998B085DE582";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5 ;
createNode transform -n "toe01_3_guide" -p "toe01_3_guide_ofs";
	rename -uid "DC878DB9-40C5-0627-9C41-DF9A8B49043F";
createNode transform -n "toe01_4_guide_ofs" -p "toe01_3_guide";
	rename -uid "8D4379EA-4054-A774-BBC0-7E80EF237939";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.5000162187206918 ;
createNode transform -n "toe01_4_guide" -p "toe01_4_guide_ofs";
	rename -uid "7ECEF137-4751-12E0-1F6B-7FB873D84B06";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe01_5_guide_ofs" -p "toe01_4_guide";
	rename -uid "8A082605-4548-E628-6C54-D99FEBD9523B";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 0 -1.3 ;
createNode transform -n "toe01_5_guide_ofs1" -p "toe01_4_guide";
	rename -uid "2D412C51-413E-63AF-5F07-4083CD9EA7B1";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.9721522630525295e-31 -1.3000000000000043 ;
createNode transform -n "toe01_5_guide" -p "toe01_5_guide_ofs1";
	rename -uid "96BAAB75-4AF6-54DA-D295-4AA92E224255";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe01_1_guide_ofs" -p "toe01_2_guide";
	rename -uid "A6676030-47B8-933E-984A-E4B3C68389D0";
createNode transform -n "toe01_1_guide" -p "toe01_1_guide_ofs";
	rename -uid "E1B3661B-45BA-935C-437A-0D8CC2F8F0E8";
createNode pointConstraint -n "toe01_1_guide_ofs_pointConstraint1" -p "toe01_1_guide_ofs";
	rename -uid "F6346D1C-48CF-3ED3-3E72-95B8435714DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_1_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_1_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -1.9999999999999964 1.9721522630525295e-31 8 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode parentConstraint -n "toe01_2_guide_ofs_parentConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "E2F2121B-43B1-B61E-2CC0-CE80329E4CC7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_2_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 16.75 0 0 ;
	setAttr ".rst" -type "double3" 0 1.5920408388915591e-15 -13 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode scaleConstraint -n "toe01_2_guide_ofs_scaleConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "099E6DFA-4477-4015-8D4C-5CBE05749882";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_2_guideW1" -dv 1 -min 0 -at "double";
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
createNode transform -n "toe02_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "E1AFB79E-4248-1D89-7F39-B1A4F6D9723E";
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ofs";
	rename -uid "C5276411-42DB-B547-0791-37BCBF6D737E";
createNode transform -n "toe02_3_guide_ofs" -p "toe02_2_guide";
	rename -uid "01F00D05-4646-38F6-31CD-5FAD4E3F9434";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5 ;
createNode transform -n "toe02_3_guide" -p "toe02_3_guide_ofs";
	rename -uid "FAF3B4A6-4B8E-E8EA-0E3D-338D44678FBB";
createNode transform -n "toe02_4_guide_ofs" -p "toe02_3_guide";
	rename -uid "FB21DA6D-4B40-5BE5-FBE2-DE8ABF912D2B";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.9721522630525295e-31 -1.5 ;
createNode transform -n "toe02_4_guide" -p "toe02_4_guide_ofs";
	rename -uid "F41EDB05-4036-4AD6-7685-E2AE989A68DA";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe02_5_guide_ofs" -p "toe02_4_guide";
	rename -uid "EFA433A4-4E44-7249-0710-48AB1B548430";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -1.3 ;
createNode transform -n "toe02_5_guide_ofs1" -p "toe02_4_guide";
	rename -uid "0F0BFF81-4245-C864-A036-3387031D1E6F";
	setAttr ".t" -type "double3" 0 0 -1.3000000000000043 ;
createNode transform -n "toe02_5_guide" -p "toe02_5_guide_ofs1";
	rename -uid "31F294AA-43F1-63F8-51AB-75A650615696";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe02_1_guide_ofs" -p "toe02_2_guide";
	rename -uid "D91DB606-49F3-EDAC-1232-6B9846E2A414";
createNode transform -n "toe02_1_guide" -p "toe02_1_guide_ofs";
	rename -uid "80653EC0-4CC0-E840-CEAA-09BE43EDB6D9";
createNode pointConstraint -n "toe02_1_guide_ofs_pointConstraint1" -p "toe02_1_guide_ofs";
	rename -uid "E69720B1-432A-09F8-8D54-6BB8528890A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_1_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_1_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 1.9721522630525295e-31 8 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "toe02_2_guide_ofs_parentConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "02B52C7E-46B2-801D-02AC-518E9DF341B5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_2_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 16.75 0 0 ;
	setAttr ".rst" -type "double3" 0 1.5920408388915591e-15 -13 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "toe02_2_guide_ofs_scaleConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "DBECC5DB-434D-0C1A-DAAC-788E0DB7AA43";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_2_guideW1" -dv 1 -min 0 -at "double";
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
createNode transform -n "toe03_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "9590D2E5-4894-4B18-920C-B0BB715FC7C3";
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ofs";
	rename -uid "B670A773-4A7C-9D2B-5399-0DAE17559C88";
createNode transform -n "toe03_3_guide_ofs" -p "toe03_2_guide";
	rename -uid "2A3B9502-4288-1613-72BB-30AC0C993AEC";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5 ;
createNode transform -n "toe03_3_guide" -p "toe03_3_guide_ofs";
	rename -uid "E20991DE-42BF-993A-05B1-FB8CF4A4B1DD";
createNode transform -n "toe03_4_guide_ofs" -p "toe03_3_guide";
	rename -uid "D3436F74-45AB-D184-5935-64B9B6997599";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.5000162187206918 ;
createNode transform -n "toe03_4_guide" -p "toe03_4_guide_ofs";
	rename -uid "D64FC58A-4FD0-AE18-A56A-919F3B7009CF";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe03_5_guide_ofs" -p "toe03_4_guide";
	rename -uid "21D2E7FC-43AE-6E40-DDF4-8FB43015735E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -1.3 ;
createNode transform -n "toe03_5_guide_ofs1" -p "toe03_4_guide";
	rename -uid "40B201B1-4172-4D2F-3AFC-B18235C9EF1E";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.9721522630525295e-31 -1.3000000000000043 ;
createNode transform -n "toe03_5_guide" -p "toe03_5_guide_ofs1";
	rename -uid "7C909E84-453A-0562-F247-5696D8930F9F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe03_1_guide_ofs" -p "toe03_2_guide";
	rename -uid "354626ED-4F5E-8640-E389-3B98145773E9";
createNode transform -n "toe03_1_guide" -p "toe03_1_guide_ofs";
	rename -uid "EF932725-41D4-253F-442C-168DA0CA0C36";
createNode pointConstraint -n "toe03_1_guide_ofs_pointConstraint1" -p "toe03_1_guide_ofs";
	rename -uid "5C70B78D-4594-6387-06C8-D0A8497274A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_1_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_1_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.0000000000000036 1.9721522630525295e-31 8 ;
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode parentConstraint -n "toe03_2_guide_ofs_parentConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "BB1F710C-45F5-704F-965C-95B97B2DD46C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_2_guideW1" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 16.75 0 0 ;
	setAttr ".rst" -type "double3" 0 1.5920408388915591e-15 -13 ;
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode scaleConstraint -n "toe03_2_guide_ofs_scaleConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "8DD29474-41C4-63C9-8378-8BBA8027AA55";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe04_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe00_2_guideW1" -dv 1 -min 0 -at "double";
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
createNode transform -n "toe04_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "3C0801A5-40AC-7834-1601-7BAC953544E9";
	setAttr ".t" -type "double3" -4 1.5920408388915591e-15 -13 ;
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ofs";
	rename -uid "7648776C-4276-C717-A58B-A3A80654A5DF";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.9 0.33 ;
	setAttr ".r" -type "double3" 16.75 0 0 ;
createNode transform -n "toe04_3_guide_ofs" -p "toe04_2_guide";
	rename -uid "CD085A27-44FF-7FEF-C9A0-E8BA8903C95A";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5 ;
createNode transform -n "toe04_3_guide" -p "toe04_3_guide_ofs";
	rename -uid "723CFD35-473C-811B-A583-4087B64D71CD";
createNode transform -n "toe04_4_guide_ofs" -p "toe04_3_guide";
	rename -uid "19C39EA9-41C2-2437-9C70-9792E5DB8D3E";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.5000162187206918 ;
createNode transform -n "toe04_4_guide" -p "toe04_4_guide_ofs";
	rename -uid "F2940094-437A-9AB3-6EAA-EFBA512D58E3";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe04_5_guide_ofs" -p "toe04_4_guide";
	rename -uid "85A79120-4653-2C2A-520E-79820CD41CE2";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -1.3 ;
createNode transform -n "toe04_5_guide_ofs1" -p "toe04_4_guide";
	rename -uid "C67C9DFA-44B6-6ECE-547E-8C833078E400";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.9721522630525295e-31 -1.3000000000000043 ;
createNode transform -n "toe04_5_guide" -p "toe04_5_guide_ofs1";
	rename -uid "85C20D6B-4838-2DDF-AFED-F689711BC995";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "toe04_1_guide_ofs" -p "toe04_2_guide";
	rename -uid "04B4D279-483E-2CC6-3F26-6FBDB021ED75";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.9721522630525295e-31 8 ;
createNode transform -n "toe04_1_guide" -p "toe04_1_guide_ofs";
	rename -uid "2BCA5F41-4F6D-57E3-1E01-49BD26173C18";
createNode nurbsCurve -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "21DF0266-45C3-7E9D-0454-19B1AD10AD0C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		-0.124378498756215 0.00084578332487727625 -4.9670499503295001e-09
		-0.11523441551432251 -0.04681616619850322 -4.9670499503295001e-09
		-0.088546915781197499 -0.087350749126490698 -4.9670499503295001e-09
		-0.048379082849542496 -0.11458691552079571 -4.9670499503295001e-09
		-0.00084574999154249993 -0.1243783320895482 -4.9670499503295001e-09
		0.046815999531839986 -0.11523424884765571 -4.9670499503295001e-09
		0.087350665793160004 -0.088546832447863211 -4.9670499503295001e-09
		0.11458683218746497 -0.048378916182875716 -4.9670499503295001e-09
		0.12437833208954999 -0.00084579165820697377 -4.9670499503295001e-09
		0.1152342488476575 0.046816166198506766 -4.9670499503295001e-09
		0.088546749114532503 0.087350749126494265 -4.9670499503295001e-09
		0.048378916182877499 0.11458691552079928 -4.9670499503295001e-09
		0 0.12437833208955176 0
		-0.046816166198504996 0.11523424884765926 -4.9670499503295001e-09
		-0.087350832459825001 0.088546832447866763 -4.9670499503295001e-09
		-0.11458699885412998 0.048378916182879275 -4.9670499503295001e-09
		-0.124378498756215 0.00084578332487727625 -4.9670499503295001e-09
		-0.11491074885089249 0.00078139999218777639 -0.04759866619067999
		-0.087948915787177492 0.00059805666068787639 -0.087950832453825012
		-0.04759758285735749 0.00032366333009847641 -0.11491324885086748
		0 1.7763568394002505e-15 -0.12438124875618749
		0.047597416190692493 -0.00032367499676147358 -0.11491324885086748
		0.08794883245384498 -0.00059806832735087362 -0.087950832453825012
		0.11491058218422751 -0.00078141165885077372 -0.04759866619067999
		0.12437833208954999 -0.00084579165820697377 -4.9670499503295001e-09
		0.11491058218422751 -0.00078141165885077372 0.04759866619067999
		0.08794883245384498 -0.00059806832735087362 0.087950832453825012
		0.047597416190692493 -0.00032367499676147358 0.11491324885086748
		0 -5.8930898313789095e-09 0.12438124875618749
		-0.04759758285735749 0.00032366333009847641 0.11491324885086748
		-0.087948915787177492 0.00059805666068787639 0.087950832453825012
		-0.11491074885089249 0.00078139999218777639 0.04759866619067999
		-0.124378498756215 0.00084578332487727625 -4.9670499503295001e-09
		-0.11491074885089249 0.00078139999218777639 -0.04759866619067999
		-0.087948915787177492 0.00059805666068787639 -0.087950832453825012
		-0.04759758285735749 0.00032366333009847641 -0.11491324885086748
		0 1.7763568394002505e-15 -0.12438124875618749
		0 -0.047835416188310713 -0.11548491551181747
		0 -0.088388332449448215 -0.088388332449449977
		0 -0.11548491551181568 -0.047835416188312482
		-0.00084574999154249993 -0.1243783320895482 -4.9670499503295001e-09
		0 -0.11548491551181568 0.047835416188312482
		0 -0.088388332449448215 0.088388332449449977
		0 -0.047835416188310713 0.11548491551181747
		0 -5.8930898313789095e-09 0.12438124875618749
		0 0.047835416188314273 0.11548491551181747
		0 0.088388332449451754 0.088388332449449977
		0 0.11548491551181926 0.047835416188312482
		0 0.12437833208955176 0
		0 0.11548491551181926 -0.047835416188312482
		0 0.088388332449451754 -0.088388332449449977
		0 0.047835416188314273 -0.11548491551181747
		0 1.7763568394002505e-15 -0.12438125019467736
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "387C8921-4CD0-9D0D-ECBC-3E8A3C48EB6E";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".it" no;
createNode transform -n "line_01" -p "line_grp";
	rename -uid "AC1A4514-4993-6855-9329-4B8C7607E399";
	setAttr -l on ".v";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 108 0
		-15 91.900001525878906 1.9721522630525295e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_02" -p "line_grp";
	rename -uid "15754EEC-4A53-1FE8-7670-13BB320727F7";
	setAttr -l on ".v";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 91.900001525878906 1.9721522630525295e-31
		-15 49.800000667572021 9.8607613152626476e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp";
	rename -uid "A1C4D8D6-43EC-B69C-A8EB-F5ADDAEC8FC5";
	setAttr -l on ".v";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 49.800000667572021 9.8607613152626476e-31
		-15 7.6999998092651367 -1.9721522630525295e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "41B828D1-4BFD-995D-22EF-22836551D852";
	setAttr -l on ".v";
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
	rename -uid "A00A7E26-4133-4A8F-7C03-0BAF590570FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 7.6999998092651367 -1.9721522630525295e-31
		-15 3.8999999364217146 12.666667143503823
		;
	setAttr ".adot" yes;
createNode transform -n "line_05" -p "line_grp";
	rename -uid "67CAC1B9-4B7A-6DC7-09F4-689609131847";
	setAttr -l on ".v";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 3.8999999364217146 12.666667143503823
		-15 2 19.000000715255737
		;
	setAttr ".adot" yes;
createNode transform -n "line_06" -p "line_grp";
	rename -uid "4E4281A0-47B9-356E-C9D9-2186948922AE";
	setAttr -l on ".v";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000000000998 49.800000667572284 64.999999999999986
		-15 49.800000667572021 9.8607613152626476e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp2" -p "module_grp";
	rename -uid "ABBAED65-4150-D22E-E71F-E6A17D275792";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "line_09" -p "line_grp2";
	rename -uid "235BEFAF-4F72-D4CF-6560-9F9E5F75C2B8";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape1" -p "line_09";
	rename -uid "F484BA21-40FA-4042-47B5-72B28718591E";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11.000000000000004 2.084363510755237 18.702699573070333
		-11 2.8913130615306875 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp2";
	rename -uid "F2DED0FF-4421-010E-576B-0390FF7FCC2A";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape2" -p "line_10";
	rename -uid "0AC15DD3-4911-AF5C-7A6E-509051BD72CE";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11 2.8913130615306875 16.021499762816852
		-11.000000000000004 3.8999999999999999 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "line_grp2";
	rename -uid "C255F2A1-4034-4DCB-C06E-2480B278DBFC";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape3" -p "line_11";
	rename -uid "36CA2C16-4D5B-5D94-F9C5-DB8A10229D6A";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11.000000000000004 3.8999999999999999 12.67
		-11 6.2055701450727145 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp2";
	rename -uid "826EBD14-44A2-538C-4D24-01ACDAB8A874";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape4" -p "line_12";
	rename -uid "30D51C86-4953-6BFF-EF65-2A9207929EBC";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13 2.0843588365804591 18.702715103652778
		-13.000000000000007 2.4590139851547761 17.457872334606517
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp2";
	rename -uid "0DC9F951-428E-41CA-8194-2BB2EF938696";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape5" -p "line_13";
	rename -uid "9BF1A3E6-4AB5-1F39-C98E-CC84EF1BCCF8";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13.000000000000007 2.4590139851547761 17.457872334606517
		-13 2.8913130615306875 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp2";
	rename -uid "EE12560C-42EC-787C-AD73-DBAF026F36C8";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape6" -p "line_14";
	rename -uid "14B7A3FC-4D20-8BBC-D545-65A6F5289FA2";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13 2.8913130615306875 16.021499762816852
		-13.000000000000004 3.8999999999999999 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp2";
	rename -uid "0AC0C40C-42A4-3293-0D45-589F157E79AD";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape7" -p "line_15";
	rename -uid "BC222CDF-47FE-05AB-D5EC-33AC1134381E";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13.000000000000004 3.8999999999999999 12.67
		-12.999999999999996 6.2055701450727145 5.0094291135614828
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "line_grp2";
	rename -uid "04ADE1F6-4E23-42CF-C139-40B5D8438931";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape8" -p "line_16";
	rename -uid "6BE4CD93-4E74-70F4-C816-54AD28003638";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000000000007 2.0843635107552365 18.702699573070337
		-15.000000000000007 2.4590186593295535 17.457856804024075
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp2";
	rename -uid "36063AD7-43D6-0295-1CA8-199F973073A4";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape9" -p "line_17";
	rename -uid "5DB44912-4568-6942-ED9C-BD9E6371D639";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000000000007 2.4590186593295535 17.457856804024075
		-15 2.8913130615306875 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp2";
	rename -uid "2CADF9F5-4C99-4457-E538-0388CE736382";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape10" -p "line_18";
	rename -uid "3A7ECF43-443F-F027-C52B-C2A568633728";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 2.8913130615306875 16.021499762816852
		-15.000000000000004 3.8999999999999999 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp2";
	rename -uid "6A065C22-47E6-E695-4567-2A9656CA0BF7";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape11" -p "line_19";
	rename -uid "7B147FFB-4A8B-5F39-CD59-708321A87D7C";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000000000004 3.8999999999999999 12.67
		-14.999999999999998 6.2055701450727145 5.0094291135614828
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp2";
	rename -uid "83E9ADF7-4628-BED1-924A-44824D375F9A";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape12" -p "line_20";
	rename -uid "F2871A2A-45DB-1BF0-77E3-A7A5EA558740";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-17.000000000000004 2.0843588365804591 18.702715103652778
		-17.000000000000007 2.4590139851547761 17.457872334606517
		;
	setAttr ".adot" yes;
createNode transform -n "line_21" -p "line_grp2";
	rename -uid "3579B23D-4897-62E1-170F-53B70C80BB9A";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape13" -p "line_21";
	rename -uid "D46B1BA5-459B-497D-DC8B-A1A41780580E";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-17.000000000000007 2.4590139851547761 17.457872334606517
		-17 2.8913130615306875 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp2";
	rename -uid "5965D2B6-4CF0-5DEF-3833-53AB572A7C09";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape14" -p "line_22";
	rename -uid "B8D5E490-45F8-C088-FAFA-CBA345EC9C93";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-17 2.8913130615306875 16.021499762816852
		-17.000000000000004 3.8999999999999999 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp2";
	rename -uid "EFAE0038-47DF-CD2A-B7BD-279558C1B4B4";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape15" -p "line_23";
	rename -uid "D26BE876-417D-499B-9111-90B833434031";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-17.000000000000004 3.8999999999999999 12.67
		-16.999999999999996 6.2055701450727145 5.0094291135614828
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp2";
	rename -uid "87D8BE38-45E4-C7E7-A0A9-E8AA8973BF96";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape16" -p "line_24";
	rename -uid "FEFFA0CC-4284-0DDC-00C9-34845081B19E";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.000000000000004 2.0843588365804591 18.702715103652778
		-19.000000000000007 2.4590139851547761 17.457872334606517
		;
	setAttr ".adot" yes;
createNode transform -n "line_25" -p "line_grp2";
	rename -uid "F24202E4-4E88-2EB3-E4EE-66B5A1BB8EAE";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape17" -p "line_25";
	rename -uid "9C24E65B-41EE-FAF0-F88C-5DB6105E8AAD";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.000000000000007 2.4590139851547761 17.457872334606517
		-19 2.8913130615306875 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "line_grp2";
	rename -uid "D05F10D6-4E4D-4E1C-10F1-C698A148AFEA";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape18" -p "line_26";
	rename -uid "85C27069-4D65-0DE5-1338-4793B84FD8CB";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19 2.8913130615306875 16.021499762816852
		-19.000000000000004 3.8999999999999999 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "line_grp2";
	rename -uid "49F3649F-4739-881F-1D5F-D0AF20C78981";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "curveShape19" -p "line_27";
	rename -uid "D502FE49-4BAC-545D-8CA5-A4A9A34B2A44";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.000000000000004 3.8999999999999999 12.67
		-19 6.2055701450727145 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp3" -p "module_grp";
	rename -uid "E4B6023D-490E-8702-026B-989F568BA5AC";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "line_07" -p "line_grp3";
	rename -uid "9059EF9E-4FFA-28F6-A072-A09F602F859F";
	setAttr -l on ".v";
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
		-10 44.800000000751986 2.6846203394220945e-08
		-10.000000000000002 7.6999998092651367 -1.3805065841367717e-30
		;
	setAttr ".adot" yes;
createNode transform -n "line_08" -p "line_grp3";
	rename -uid "186A9654-4DDC-8966-775C-728A3F4F5907";
	setAttr -l on ".v";
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
		-20 44.800000000751986 2.684620117502556e-08
		-20 7.6999998092651367 6.1232339957367466e-16
		;
	setAttr ".adot" yes;
createNode transform -n "fgrRef_grp" -p "module_grp";
	rename -uid "C520AA3F-4E71-6F82-5E57-ADB1A274DFEA";
createNode transform -n "null1" -p "fgrRef_grp";
	rename -uid "77595E4C-4565-A69F-DF1D-F89F4E7AA711";
	setAttr ".t" -type "double3" -11 0 13 ;
createNode transform -n "fgrRef1" -p "null1";
	rename -uid "D04E4983-42BB-54C0-733B-0B9742567499";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999956 4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode mesh -n "fgrRefShape" -p "fgrRef1";
	rename -uid "5ACE6F8C-464B-604F-F501-529FB99C5EFD";
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
	rename -uid "DA9687A4-4962-8FC6-991F-3B91937C5E75";
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
	setAttr ".rst" -type "double3" -9.9999999999999964 -9.7971743931788276e-16 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef1_aimCst" -p "fgrRef1";
	rename -uid "3FDACE34-40B4-3C52-B374-E99A6F7D56C8";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -180 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef2" -p "null1";
	rename -uid "B1B70FAE-4363-24B6-9B50-90BA5D1F8EB9";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef2_poiCst" -p "fgrRef2";
	rename -uid "23E84F3A-47A8-2BB2-E3E8-6EB39FCF791A";
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
	setAttr ".rst" -type "double3" -10 0 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef2_aimCst" -p "fgrRef2";
	rename -uid "8BA29AC7-4A53-F916-D358-9887B9635D17";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef3" -p "null1";
	rename -uid "A51AEF18-42FC-C842-8D23-63852E1AFB8E";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999856 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef3_poiCst" -p "fgrRef3";
	rename -uid "B1D93938-4A6F-AE39-774C-388ABD563AC0";
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
	setAttr ".rst" -type "double3" -9.9999999999999964 4.2862637970157361e-16 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef3_aimCst" -p "fgrRef3";
	rename -uid "E2A6C27D-41AD-5EC6-03B3-E4AB24F89235";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999929 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null1_scaleConstraint1" -p "null1";
	rename -uid "8B1B2E61-491A-2540-7A87-6890017068F1";
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
	rename -uid "A9D9605B-408B-A2DF-F393-8F968509FABF";
	setAttr ".t" -type "double3" -13 0 13 ;
createNode transform -n "fgrRef4" -p "null2";
	rename -uid "E2C1B542-4117-11F6-4606-8BBC9C103E76";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999956 4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef4_poiCst" -p "fgrRef4";
	rename -uid "2FC15B70-4ECA-F923-36D2-53BF872B9C45";
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
	setAttr ".rst" -type "double3" -11.999999999999996 -9.7971743931788276e-16 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef4_aimCst" -p "fgrRef4";
	rename -uid "B5A9089B-4DAE-CBB3-F806-A4BBEA48A98D";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -180 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef5" -p "null2";
	rename -uid "CFFE9E19-4041-4D6C-BA02-7AB02EBA795C";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef5_poiCst" -p "fgrRef5";
	rename -uid "BAD47C27-4C47-D200-37A9-71B947E84CA2";
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
	setAttr ".rst" -type "double3" -12 0 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef5_aimCst" -p "fgrRef5";
	rename -uid "ED96059C-4782-8195-B349-0D878ED1D05C";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef6" -p "null2";
	rename -uid "663C126E-4ED6-5B3C-5F8A-1FBBDDCB328B";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999523 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef6_poiCst" -p "fgrRef6";
	rename -uid "0791685C-488D-CA7B-842D-CC85032C426D";
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
	setAttr ".rst" -type "double3" -11.999999999999996 4.2862637970157361e-16 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef6_aimCst" -p "fgrRef6";
	rename -uid "EB9EB154-42A9-5C00-ED3E-D8B300114A3E";
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
	setAttr ".rsrr" -type "double3" -180 89.99999999999973 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef7" -p "null2";
	rename -uid "B700A09D-4F45-C368-8BBA-248D87599F9F";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999445 0 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef7_poiCst" -p "fgrRef7";
	rename -uid "71A6EFC2-4099-7B1C-E4E5-3F988DFF3002";
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
	setAttr ".rst" -type "double3" -12.000000000000004 6.1232538579411479e-16 18.000016218720692 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef7_aimCst" -p "fgrRef7";
	rename -uid "EAC8D366-4D58-5B55-7023-19ACDB8F3356";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999687 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null2_scaleConstraint1" -p "null2";
	rename -uid "8BB33E8F-4879-68B4-B086-FFA02D2EA475";
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
	rename -uid "8D40374A-4018-5BF7-990F-9E9AE9111B44";
	setAttr ".t" -type "double3" -15 0 13 ;
createNode transform -n "fgrRef8" -p "null3";
	rename -uid "26647B15-4FA6-DD8A-9DEA-96B95976CED0";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999956 4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef8_poiCst" -p "fgrRef8";
	rename -uid "7FC414E2-4861-96E8-403E-57A4F1E132DB";
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
	setAttr ".rst" -type "double3" -13.999999999999996 -9.7971743931788276e-16 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef8_aimCst" -p "fgrRef8";
	rename -uid "460F10C1-49AB-FE8E-03E9-52B5B5D7C0F6";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -180 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef9" -p "null3";
	rename -uid "ABD5180E-4CF3-32E1-F214-86A677282886";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef9_poiCst" -p "fgrRef9";
	rename -uid "91AA0054-4AC2-3F46-64B8-DC8D973B2692";
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
	setAttr ".rst" -type "double3" -14 0 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef9_aimCst" -p "fgrRef9";
	rename -uid "3F983383-4DAB-712A-EA04-FE9976FEE86E";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef10" -p "null3";
	rename -uid "174F3AFC-449D-EC31-36B2-3A86833BA2C2";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999523 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef10_poiCst" -p "fgrRef10";
	rename -uid "0ACD5BCF-4D79-CDA4-E1F6-72B933416123";
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
	setAttr ".rst" -type "double3" -13.999999999999996 4.2862637970157361e-16 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef10_aimCst" -p "fgrRef10";
	rename -uid "2E72556B-4A3E-DF7B-C618-998FB9CF6224";
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
	setAttr ".rsrr" -type "double3" -180 89.99999999999973 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef11" -p "null3";
	rename -uid "AAC313AE-449F-599A-5DA3-F68578FF9976";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef11_poiCst" -p "fgrRef11";
	rename -uid "6C596F60-491D-1921-1B54-3884027F02BA";
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
	setAttr ".rst" -type "double3" -14.000000000000004 6.1232339957367633e-16 18 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef11_aimCst" -p "fgrRef11";
	rename -uid "55EB12B3-4A54-842C-B311-D88C267E8954";
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
	rename -uid "8DFB5C3D-4656-F742-2C69-A98C89269AE4";
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
	rename -uid "09926DCA-4446-0FD9-0537-099F5D4D6F8F";
	setAttr ".t" -type "double3" -17 0 13 ;
createNode transform -n "fgrRef12" -p "null4";
	rename -uid "A5CFAB38-44C1-B4DE-3A9C-5EB35E455D0E";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999956 4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef12_poiCst" -p "fgrRef12";
	rename -uid "7DC24E23-4B84-6DC8-E017-80BF32760D80";
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
	setAttr ".rst" -type "double3" -15.999999999999996 -9.7971743931788276e-16 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef12_aimCst" -p "fgrRef12";
	rename -uid "DD4562FA-451B-B5FB-A7C9-F1899CC289E9";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -180 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef13" -p "null4";
	rename -uid "C76046A7-474D-1F3B-96CB-16B26AD87701";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef13_poiCst" -p "fgrRef13";
	rename -uid "AF1700C1-4765-B920-8CC6-AA943FC49502";
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
	setAttr ".rst" -type "double3" -16 0 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef13_aimCst" -p "fgrRef13";
	rename -uid "B7E70CCD-4BE1-8A8F-71E6-9FB33928B93C";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef14" -p "null4";
	rename -uid "2C584F36-454E-03F2-9E0B-64B455BE25D9";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999523 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef14_poiCst" -p "fgrRef14";
	rename -uid "3ABF1935-418D-50FB-63D6-7E94EEA5B874";
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
	setAttr ".rst" -type "double3" -15.999999999999996 4.2862637970157361e-16 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef14_aimCst" -p "fgrRef14";
	rename -uid "863A9AF2-4D5A-161C-FD6D-2A84A3978858";
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
	setAttr ".rsrr" -type "double3" -180 89.99999999999973 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef15" -p "null4";
	rename -uid "0C18E457-40F3-B18D-CAA4-D1BF1F0B3B33";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999767 2.4651903288156619e-32 0.99999999999999989 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef15_poiCst" -p "fgrRef15";
	rename -uid "4EDDAA2C-4B08-1349-25ED-3890E8D0C5A5";
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
	setAttr ".rst" -type "double3" -16.000000000000004 6.1232538579411479e-16 18.000016218720692 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef15_aimCst" -p "fgrRef15";
	rename -uid "B02200F0-4341-DCFE-44FF-91BC69D10BB8";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999858 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null4_scaleConstraint1" -p "null4";
	rename -uid "2EE6D8B5-4F78-FCA0-12AA-AD9EA58D2FAD";
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
	rename -uid "BB1FFF36-4191-65F3-C32A-E399D59C8417";
	setAttr ".t" -type "double3" -19 0 13 ;
createNode transform -n "fgrRef16" -p "null5";
	rename -uid "A3ED8AD3-4FF7-8743-176A-92855322A51D";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999956 4.9303806576313238e-32 1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef16_poiCst" -p "fgrRef16";
	rename -uid "AEA7DA4A-43D7-B2FB-553C-6C825682194A";
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
	setAttr ".rst" -type "double3" -17.999999999999996 -9.7971743931788276e-16 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef16_aimCst" -p "fgrRef16";
	rename -uid "4637842F-4251-E037-1A55-C28604E80896";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -180 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef17" -p "null5";
	rename -uid "3D7D5FBD-424D-5702-5264-7BAA1A4DC308";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef17_poiCst" -p "fgrRef17";
	rename -uid "0360D002-4EDD-899E-75D6-65A58B4CC870";
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
	setAttr ".rst" -type "double3" -18 0 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef17_aimCst" -p "fgrRef17";
	rename -uid "68CDB965-4E1E-8103-2F37-00832C316F5D";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef18" -p "null5";
	rename -uid "A259D5E5-453B-87C9-8945-4B9DAC430A20";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999523 0 0.99999999999999978 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef18_poiCst" -p "fgrRef18";
	rename -uid "C088A5B1-4E53-0DF0-81F6-A0AAC3C24207";
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
	setAttr ".rst" -type "double3" -17.999999999999996 4.2862637970157361e-16 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef18_aimCst" -p "fgrRef18";
	rename -uid "E39D7DDF-4A82-29AB-2538-B0BA8EB67117";
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
	setAttr ".rsrr" -type "double3" -180 89.99999999999973 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef19" -p "null5";
	rename -uid "9E0270C0-4122-13F2-BFC8-D8B5F4FE1EC1";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999767 2.4651903288156619e-32 0.99999999999999989 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef19_poiCst" -p "fgrRef19";
	rename -uid "91CEBD2F-4406-0018-E75A-6298FE7D064C";
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
	setAttr ".rst" -type "double3" -18.000000000000004 6.1232538579411479e-16 18.000016218720692 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef19_aimCst" -p "fgrRef19";
	rename -uid "94B9EF91-4E13-ACEA-274F-0C816179DA7B";
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
	setAttr ".rsrr" -type "double3" -180 89.999999999999858 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null5_scaleConstraint1" -p "null5";
	rename -uid "882EF4FC-465A-9CC7-3EEC-598B491E4925";
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
createNode transform -n "pole_normal_grp" -p "module_grp";
	rename -uid "863ADEFE-4E57-FED9-C157-13A30730F73F";
	setAttr ".v" no;
createNode transform -n "pPlane1" -p "pole_normal_grp";
	rename -uid "2B9AC434-47BE-E28C-6E64-95AF0A8D9B99";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "30A01DAC-48A8-163E-3784-B1AD489D2119";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pPlaneShape1Orig" -p "pPlane1";
	rename -uid "1C590ECB-4CA7-B99F-292D-A8A7616F3806";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cluster1Handle" -p "pole_normal_grp";
	rename -uid "A1240D72-455E-639E-DEA7-EC886E999D4E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -0.5 0 -0.5 ;
	setAttr ".sp" -type "double3" -0.5 0 -0.5 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "AF5B78D4-4D0E-CCB0-44B4-099E8776A3B2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 -0.5 ;
createNode pointConstraint -n "cluster1Handle_pointConstraint1" -p "cluster1Handle";
	rename -uid "04429A78-40C9-0318-6EFA-9495802827A3";
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
	setAttr ".rst" -type "double3" -14.5 91.900001525878906 0.50000000000000089 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2Handle" -p "pole_normal_grp";
	rename -uid "35E7F8CD-4654-FA93-72EA-888A5ACE264C";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -0.5 0 0.5 ;
	setAttr ".sp" -type "double3" -0.5 0 0.5 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "5D85246A-4D1B-5233-F61D-85A96B821BCE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 0.5 ;
createNode pointConstraint -n "cluster2Handle_pointConstraint1" -p "cluster2Handle";
	rename -uid "AC7F49D3-4976-D19F-A837-E0B37925F929";
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
	setAttr ".rst" -type "double3" -14.500000000000002 49.800000667572014 18.75094553126646 ;
	setAttr -k on ".w0";
createNode transform -n "cluster3Handle" -p "pole_normal_grp";
	rename -uid "5F517245-4530-2353-78ED-B890D5C17201";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0.5 0 0.5 ;
	setAttr ".sp" -type "double3" 0.5 0 0.5 ;
createNode clusterHandle -n "cluster3HandleShape" -p "cluster3Handle";
	rename -uid "F5DFE8EB-444E-86AC-925C-B4B5FCC92EEE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0.5 0 0.5 ;
createNode pointConstraint -n "cluster3Handle_pointConstraint1" -p "cluster3Handle";
	rename -uid "B636D0A2-42B4-59D0-6F67-24A6150D9914";
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
	setAttr ".rst" -type "double3" -15.5 7.6999998092651367 -0.49999999999999911 ;
	setAttr -k on ".w0";
createNode transform -n "pole_normal_loc" -p "pole_normal_grp";
	rename -uid "91C98ED9-4ED2-F767-598B-41B8A6632CFF";
	setAttr ".t" -type "double3" -15 91.900001525878906 8.8817841970012582e-16 ;
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".dla" yes;
createNode locator -n "pole_normal_locShape" -p "pole_normal_loc";
	rename -uid "2B220F20-449E-126F-DC23-BD8E42824AD7";
	setAttr -k off ".v";
createNode normalConstraint -n "pole_normal_loc_normalConstraint1" -p "pole_normal_loc";
	rename -uid "5198F9E6-47E0-BC3B-E8D5-7CAB6492F5C1";
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
	setAttr -k on ".w0";
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 243.56442049360564 228.16829255811669 293.86113805795577 ;
	setAttr ".r" -type "double3" -24.938352729039494 41.800000000009341 2.133237477005994e-15 ;
	setAttr ".rp" -type "double3" -4.4728665216098307e-12 3.694822225952521e-12 0 ;
	setAttr ".rpt" -type "double3" 2.9844577327446428e-13 -2.972164209873133e-13 2.1653481039926788e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 430.42943359197614;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -15.000000000000004 49.800000667572021 -2.1093749832945541e-07 ;
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
	setAttr ".t" -type "double3" 0 0 1000.1 ;
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
	setAttr ".t" -type "double3" 1002.5343167264481 4.515921619592814 14.15015236407857 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35324118-40AF-2D58-3D90-F6B12F0BE94B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1017.5343167264481;
	setAttr ".ow" 12.695719480012135;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -15.000000000000007 2.7295373222628871 7.3977498776093498 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "upr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "palm_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "ball_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "tip_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide_ofs1|lwr_guide|patella_guide|radius_guideShape" "radius_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide_ofs1|lwr_guide|patella_guide|radius_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide_ofs1|lwr_guide|patella_guide|radius_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide_ofs1|lwr_guide|patella_guide|radius_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe00_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe03_1_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe04_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe02_2_guide" ;
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
	rename -uid "788DB225-4E46-D04A-839E-41B012AAEE6E";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E277C24C-4383-DD16-ADE3-9BA0717317ED";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "54E008E0-499F-DF99-6722-A5BC1A02170D";
createNode displayLayerManager -n "layerManager";
	rename -uid "876616A0-4EF3-BC7E-4C84-97AFEE1A653D";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4C8B56B2-4336-BE46-E3AE-D7A4843E643C";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1327\n            -height 501\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1327\n            -height 501\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1327\\n    -height 501\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1327\\n    -height 501\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr ".rigClass" -type "string" "LegBp";
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
	rename -uid "D11C8FBE-49EF-129E-4D3D-DDAFC3E421B2";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "D553F4A1-4BCF-26A2-4876-10918A1F33CB";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "7020E630-4715-370F-4F36-878E6A8DA5DB";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "F5314E9D-4045-056B-2600-0DB3408CE337";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "9F5FC769-4563-842A-6177-53B83BD4C108";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "F11CE492-45F4-C2CE-8970-42A350037077";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "9D024E16-44CA-AFA3-9E45-C6B856BEDB2B";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "42986D31-4508-5586-E0C9-8EB126C4CB3A";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "39798C1E-4208-7229-E92B-79B9F820E894";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "54E96E6C-4C78-D12A-BDD7-FA9B0C9D0E1E";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "D6B38571-40FA-3640-0697-8A9DA2BA9135";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "4CBBFADA-4823-CA0B-553D-1EACBCD4907B";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "3F29CF19-4EC9-2128-3974-F89FB9747B89";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "080DC059-493C-82AD-00C1-7EBC9AC12022";
createNode decomposeMatrix -n "DCM_26";
	rename -uid "2073A47A-479F-DE05-9B15-0E9243A174C6";
createNode decomposeMatrix -n "DCM_27";
	rename -uid "86435E86-411C-BBB8-216B-8084F0233ED3";
createNode decomposeMatrix -n "DCM_28";
	rename -uid "E3FB64CB-4E80-DB04-B346-FD89A2B28D8C";
createNode decomposeMatrix -n "DCM_29";
	rename -uid "344E9AD6-410B-0A8D-D59B-FC9450A40AF2";
createNode decomposeMatrix -n "DCM_30";
	rename -uid "49C02D5A-46A8-E528-C293-37B548D15277";
createNode decomposeMatrix -n "DCM_31";
	rename -uid "3C6CDD9B-4516-963A-B1E9-27B54E9E37D5";
createNode decomposeMatrix -n "DCM_32";
	rename -uid "E0459446-4D69-9BF0-46AE-6BB0BEFBEF74";
createNode decomposeMatrix -n "DCM_33";
	rename -uid "30F34B3A-4B10-9F28-D154-339EA472A0BB";
createNode decomposeMatrix -n "DCM_34";
	rename -uid "2FB3D5A1-4646-6CBF-E487-909A6D6E66FE";
createNode decomposeMatrix -n "DCM_35";
	rename -uid "F9C9EF59-4114-3796-A84B-919694A7E413";
createNode condition -n "condition1";
	rename -uid "BCFC477D-4989-AC24-04EE-A798ADA9B993";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multDoubleLinear -n "multDoubleLinear1";
	rename -uid "97125DC8-4419-FE3F-6C52-0CAF4D4DFA87";
	setAttr ".i2" 1;
createNode lambert -n "lambert2";
	rename -uid "EEC16049-4854-5F16-96C8-B195075E8FA0";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "5EEB8AC3-4D80-FE95-28C5-7A99E14A4E89";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "43E6717F-4348-49F2-E9C8-39AA8005C016";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "35D0CA57-444A-A288-8703-4BBFE2A25140";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 711874.97171263013 -33595.062544262371 ;
	setAttr ".tgi[0].vh" -type "double2" 728324.97105896589 32873.634001500803 ;
createNode polyPlane -n "polyPlane1";
	rename -uid "24A2E1AB-48D6-FF55-FA2E-C58B352872F0";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "E86545B9-4646-6165-388A-E7B071F03E40";
	setAttr ".dc" -type "componentList" 1 "vtx[3]";
createNode cluster -n "cluster1";
	rename -uid "B05B73AE-4287-0317-5370-A897BF464198";
	setAttr ".ip[0].gtg" -type "string" "cluster1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2";
	rename -uid "AC9B35F5-43D6-8423-17BC-768F0A5BA4D5";
	setAttr ".ip[0].gtg" -type "string" "cluster2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster3";
	rename -uid "57D578DE-408D-6E2B-B0F4-9893A2492C85";
	setAttr ".ip[0].gtg" -type "string" "cluster3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode condition -n "condition_tz";
	rename -uid "287E2806-4AF3-32CC-DD7E-46865227C424";
	setAttr ".op" 4;
	setAttr ".st" 0.0010000000474974513;
	setAttr ".ct" -type "float3" 5 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode ik2Bsolver -s -n "ik2Bsolver";
	rename -uid "C903E2F5-4005-6A4A-8B7A-13A119A63319";
createNode condition -n "condition_ty";
	rename -uid "614F969B-4A99-B4D7-D673-5D8A92A6F964";
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multDoubleLinear -n "multDoubleLinear2";
	rename -uid "5D179C27-4ECE-1CE6-62E0-439899E0F95E";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "74058647-4572-7087-2642-7AA481173F32";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -718.59206221542956 -847.9666069859868 ;
	setAttr ".tgi[0].vh" -type "double2" 614.44054180696548 194.82291376164946 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -309.07177734375;
	setAttr ".tgi[0].ni[0].y" 12.857142448425293;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -633.6502685546875;
	setAttr ".tgi[0].ni[1].y" 156.62689208984375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -368.63638305664062;
	setAttr ".tgi[0].ni[2].y" -683.335205078125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -7.1428570747375488;
	setAttr ".tgi[0].ni[3].y" 12.857142448425293;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -648.79193115234375;
	setAttr ".tgi[0].ni[4].y" 78.22076416015625;
	setAttr ".tgi[0].ni[4].nvs" 18306;
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
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".u";
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
	setAttr -s 18 ".hyp";
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
	setAttr ".hyp[85282].isc" yes;
	setAttr ".hyp[85283].isc" yes;
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
connectAttr "lwr_guide_ofs_aimConstraint1.crx" "lwr_guide_ofs.rx";
connectAttr "lwr_guide_ofs_aimConstraint1.cry" "lwr_guide_ofs.ry";
connectAttr "lwr_guide_ofs_aimConstraint1.crz" "lwr_guide_ofs.rz";
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
connectAttr "multDoubleLinear1.o" "radius_guide_ZRO.v";
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
connectAttr "multDoubleLinear1.o" "ulna_guide_ZRO.v";
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
connectAttr "multDoubleLinear1.o" "radiusEnd_guide_ZRO.v";
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
connectAttr "multDoubleLinear1.o" "ulnaEnd_guide_ZRO.v";
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
connectAttr "ball_guide_ofs_aimConstraint1.crx" "ball_guide_ofs.rx";
connectAttr "ball_guide_ofs_aimConstraint1.cry" "ball_guide_ofs.ry";
connectAttr "ball_guide_ofs_aimConstraint1.crz" "ball_guide_ofs.rz";
connectAttr "ball_guide_ofs_pointConstraint1.ctx" "ball_guide_ofs.tx";
connectAttr "ball_guide_ofs_pointConstraint1.cty" "ball_guide_ofs.ty";
connectAttr "ball_guide_ofs_pointConstraint1.ctz" "ball_guide_ofs.tz";
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
connectAttr "ball_guide_ofs.pim" "ball_guide_ofs_aimConstraint1.cpim";
connectAttr "ball_guide_ofs.t" "ball_guide_ofs_aimConstraint1.ct";
connectAttr "ball_guide_ofs.rp" "ball_guide_ofs_aimConstraint1.crp";
connectAttr "ball_guide_ofs.rpt" "ball_guide_ofs_aimConstraint1.crt";
connectAttr "ball_guide_ofs.ro" "ball_guide_ofs_aimConstraint1.cro";
connectAttr "tip_guide.t" "ball_guide_ofs_aimConstraint1.tg[0].tt";
connectAttr "tip_guide.rp" "ball_guide_ofs_aimConstraint1.tg[0].trp";
connectAttr "tip_guide.rpt" "ball_guide_ofs_aimConstraint1.tg[0].trt";
connectAttr "tip_guide.pm" "ball_guide_ofs_aimConstraint1.tg[0].tpm";
connectAttr "ball_guide_ofs_aimConstraint1.w0" "ball_guide_ofs_aimConstraint1.tg[0].tw"
		;
connectAttr "ball_guide_ofs.pim" "ball_guide_ofs_pointConstraint1.cpim";
connectAttr "ball_guide_ofs.rp" "ball_guide_ofs_pointConstraint1.crp";
connectAttr "ball_guide_ofs.rpt" "ball_guide_ofs_pointConstraint1.crt";
connectAttr "palm_guide.t" "ball_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "ball_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "ball_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "ball_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "ball_guide_ofs_pointConstraint1.w0" "ball_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "tip_guide.t" "ball_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "tip_guide.rp" "ball_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "tip_guide.rpt" "ball_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "tip_guide.pm" "ball_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "ball_guide_ofs_pointConstraint1.w1" "ball_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "pv_loc_ofs_pointConstraint1.ctz" "pv_loc_ofs.tz";
connectAttr "pv_loc_ofs_pointConstraint1.ctx" "pv_loc_ofs.tx";
connectAttr "pv_loc_ofs_pointConstraint1.cty" "pv_loc_ofs.ty";
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
connectAttr "pv_loc_ofs.pim" "pv_loc_ofs_aimConstraint1.cpim";
connectAttr "pv_loc_ofs.t" "pv_loc_ofs_aimConstraint1.ct";
connectAttr "pv_loc_ofs.rp" "pv_loc_ofs_aimConstraint1.crp";
connectAttr "pv_loc_ofs.rpt" "pv_loc_ofs_aimConstraint1.crt";
connectAttr "pv_loc_ofs.ro" "pv_loc_ofs_aimConstraint1.cro";
connectAttr "upr_guide.t" "pv_loc_ofs_aimConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "pv_loc_ofs_aimConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "pv_loc_ofs_aimConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "pv_loc_ofs_aimConstraint1.tg[0].tpm";
connectAttr "pv_loc_ofs_aimConstraint1.w0" "pv_loc_ofs_aimConstraint1.tg[0].tw";
connectAttr "pole_normal_loc.wm" "pv_loc_ofs_aimConstraint1.wum";
connectAttr "master_guide.toeBones" "toe_guide_grp.v";
connectAttr "master_guide.toeBones" "toesRoot_guide.v" -l on;
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
connectAttr "toe01_2_guide_ofs_parentConstraint1.ctx" "toe01_2_guide_ofs.tx";
connectAttr "toe01_2_guide_ofs_parentConstraint1.cty" "toe01_2_guide_ofs.ty";
connectAttr "toe01_2_guide_ofs_parentConstraint1.ctz" "toe01_2_guide_ofs.tz";
connectAttr "toe01_2_guide_ofs_parentConstraint1.crx" "toe01_2_guide_ofs.rx";
connectAttr "toe01_2_guide_ofs_parentConstraint1.cry" "toe01_2_guide_ofs.ry";
connectAttr "toe01_2_guide_ofs_parentConstraint1.crz" "toe01_2_guide_ofs.rz";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.csx" "toe01_2_guide_ofs.sx";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.csy" "toe01_2_guide_ofs.sy";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.csz" "toe01_2_guide_ofs.sz";
connectAttr "toe01_1_guide_ofs_pointConstraint1.ctx" "toe01_1_guide_ofs.tx";
connectAttr "toe01_1_guide_ofs_pointConstraint1.cty" "toe01_1_guide_ofs.ty";
connectAttr "toe01_1_guide_ofs_pointConstraint1.ctz" "toe01_1_guide_ofs.tz";
connectAttr "toe01_1_guide_ofs.pim" "toe01_1_guide_ofs_pointConstraint1.cpim";
connectAttr "toe01_1_guide_ofs.rp" "toe01_1_guide_ofs_pointConstraint1.crp";
connectAttr "toe01_1_guide_ofs.rpt" "toe01_1_guide_ofs_pointConstraint1.crt";
connectAttr "toe04_1_guide.t" "toe01_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toe04_1_guide.rp" "toe01_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toe04_1_guide.rpt" "toe01_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toe04_1_guide.pm" "toe01_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe01_1_guide_ofs_pointConstraint1.w0" "toe01_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe00_1_guide.t" "toe01_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toe00_1_guide.rp" "toe01_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toe00_1_guide.rpt" "toe01_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toe00_1_guide.pm" "toe01_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe01_1_guide_ofs_pointConstraint1.w1" "toe01_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs.ro" "toe01_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe01_2_guide_ofs.pim" "toe01_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe01_2_guide_ofs.rp" "toe01_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe01_2_guide_ofs.rpt" "toe01_2_guide_ofs_parentConstraint1.crt";
connectAttr "toe04_2_guide.t" "toe01_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toe04_2_guide.rp" "toe01_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toe04_2_guide.rpt" "toe01_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toe04_2_guide.r" "toe01_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toe04_2_guide.ro" "toe01_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toe04_2_guide.s" "toe01_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "toe01_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_parentConstraint1.w0" "toe01_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide.t" "toe01_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toe00_2_guide.rp" "toe01_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toe00_2_guide.rpt" "toe01_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toe00_2_guide.r" "toe01_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toe00_2_guide.ro" "toe01_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toe00_2_guide.s" "toe01_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toe00_2_guide.pm" "toe01_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe01_2_guide_ofs_parentConstraint1.w1" "toe01_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs.pim" "toe01_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toe04_2_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.w0" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toe00_2_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[1].tpm";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.w1" "toe01_2_guide_ofs_scaleConstraint1.tg[1].tw"
		;
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
connectAttr "toe04_1_guide.t" "toe02_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toe04_1_guide.rp" "toe02_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toe04_1_guide.rpt" "toe02_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toe04_1_guide.pm" "toe02_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe02_1_guide_ofs_pointConstraint1.w0" "toe02_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe00_1_guide.t" "toe02_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toe00_1_guide.rp" "toe02_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toe00_1_guide.rpt" "toe02_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toe00_1_guide.pm" "toe02_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe02_1_guide_ofs_pointConstraint1.w1" "toe02_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe02_2_guide_ofs.ro" "toe02_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe02_2_guide_ofs.pim" "toe02_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe02_2_guide_ofs.rp" "toe02_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe02_2_guide_ofs.rpt" "toe02_2_guide_ofs_parentConstraint1.crt";
connectAttr "toe04_2_guide.t" "toe02_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toe04_2_guide.rp" "toe02_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toe04_2_guide.rpt" "toe02_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toe04_2_guide.r" "toe02_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toe04_2_guide.ro" "toe02_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toe04_2_guide.s" "toe02_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "toe02_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_parentConstraint1.w0" "toe02_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide.t" "toe02_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toe00_2_guide.rp" "toe02_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toe00_2_guide.rpt" "toe02_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toe00_2_guide.r" "toe02_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toe00_2_guide.ro" "toe02_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toe00_2_guide.s" "toe02_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toe00_2_guide.pm" "toe02_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe02_2_guide_ofs_parentConstraint1.w1" "toe02_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe02_2_guide_ofs.pim" "toe02_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toe04_2_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.w0" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toe00_2_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[1].tpm";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.w1" "toe02_2_guide_ofs_scaleConstraint1.tg[1].tw"
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
connectAttr "toe04_1_guide.t" "toe03_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toe04_1_guide.rp" "toe03_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toe04_1_guide.rpt" "toe03_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toe04_1_guide.pm" "toe03_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe03_1_guide_ofs_pointConstraint1.w0" "toe03_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe00_1_guide.t" "toe03_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toe00_1_guide.rp" "toe03_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toe00_1_guide.rpt" "toe03_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toe00_1_guide.pm" "toe03_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe03_1_guide_ofs_pointConstraint1.w1" "toe03_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe03_2_guide_ofs.ro" "toe03_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe03_2_guide_ofs.pim" "toe03_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe03_2_guide_ofs.rp" "toe03_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe03_2_guide_ofs.rpt" "toe03_2_guide_ofs_parentConstraint1.crt";
connectAttr "toe04_2_guide.t" "toe03_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toe04_2_guide.rp" "toe03_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toe04_2_guide.rpt" "toe03_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toe04_2_guide.r" "toe03_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toe04_2_guide.ro" "toe03_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toe04_2_guide.s" "toe03_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "toe03_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_parentConstraint1.w0" "toe03_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide.t" "toe03_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toe00_2_guide.rp" "toe03_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toe00_2_guide.rpt" "toe03_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toe00_2_guide.r" "toe03_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toe00_2_guide.ro" "toe03_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toe00_2_guide.s" "toe03_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toe00_2_guide.pm" "toe03_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe03_2_guide_ofs_parentConstraint1.w1" "toe03_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe03_2_guide_ofs.pim" "toe03_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toe04_2_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.w0" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe00_2_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toe00_2_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[1].tpm";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.w1" "toe03_2_guide_ofs_scaleConstraint1.tg[1].tw"
		;
connectAttr "DCM_1.ot" "line_01Shape.cp[0]";
connectAttr "DCM_2.ot" "line_01Shape.cp[1]";
connectAttr "DCM_2.ot" "line_02Shape.cp[0]";
connectAttr "DCM_3.ot" "line_02Shape.cp[1]";
connectAttr "DCM_3.ot" "line_03Shape.cp[0]";
connectAttr "DCM_4.ot" "line_03Shape.cp[1]";
connectAttr "DCM_4.ot" "line_04Shape.cp[0]";
connectAttr "DCM_5.ot" "line_04Shape.cp[1]";
connectAttr "DCM_5.ot" "line_05Shape.cp[0]";
connectAttr "DCM_6.ot" "line_05Shape.cp[1]";
connectAttr "DCM_7.ot" "line_06Shape.cp[0]";
connectAttr "DCM_3.ot" "line_06Shape.cp[1]";
connectAttr "master_guide.toeBones" "line_grp2.v";
connectAttr "DCM_12.ot" "curveShape1.cp[0]";
connectAttr "DCM_13.ot" "curveShape1.cp[1]";
connectAttr "DCM_13.ot" "curveShape2.cp[0]";
connectAttr "DCM_14.ot" "curveShape2.cp[1]";
connectAttr "DCM_14.ot" "curveShape3.cp[0]";
connectAttr "DCM_15.ot" "curveShape3.cp[1]";
connectAttr "DCM_16.ot" "curveShape4.cp[0]";
connectAttr "DCM_17.ot" "curveShape4.cp[1]";
connectAttr "DCM_17.ot" "curveShape5.cp[0]";
connectAttr "DCM_18.ot" "curveShape5.cp[1]";
connectAttr "DCM_18.ot" "curveShape6.cp[0]";
connectAttr "DCM_19.ot" "curveShape6.cp[1]";
connectAttr "DCM_19.ot" "curveShape7.cp[0]";
connectAttr "DCM_20.ot" "curveShape7.cp[1]";
connectAttr "DCM_21.ot" "curveShape8.cp[0]";
connectAttr "DCM_22.ot" "curveShape8.cp[1]";
connectAttr "DCM_22.ot" "curveShape9.cp[0]";
connectAttr "DCM_23.ot" "curveShape9.cp[1]";
connectAttr "DCM_23.ot" "curveShape10.cp[0]";
connectAttr "DCM_24.ot" "curveShape10.cp[1]";
connectAttr "DCM_24.ot" "curveShape11.cp[0]";
connectAttr "DCM_25.ot" "curveShape11.cp[1]";
connectAttr "DCM_26.ot" "curveShape12.cp[0]";
connectAttr "DCM_27.ot" "curveShape12.cp[1]";
connectAttr "DCM_27.ot" "curveShape13.cp[0]";
connectAttr "DCM_28.ot" "curveShape13.cp[1]";
connectAttr "DCM_28.ot" "curveShape14.cp[0]";
connectAttr "DCM_29.ot" "curveShape14.cp[1]";
connectAttr "DCM_29.ot" "curveShape15.cp[0]";
connectAttr "DCM_30.ot" "curveShape15.cp[1]";
connectAttr "DCM_31.ot" "curveShape16.cp[0]";
connectAttr "DCM_32.ot" "curveShape16.cp[1]";
connectAttr "DCM_32.ot" "curveShape17.cp[0]";
connectAttr "DCM_33.ot" "curveShape17.cp[1]";
connectAttr "DCM_33.ot" "curveShape18.cp[0]";
connectAttr "DCM_34.ot" "curveShape18.cp[1]";
connectAttr "DCM_34.ot" "curveShape19.cp[0]";
connectAttr "DCM_35.ot" "curveShape19.cp[1]";
connectAttr "multDoubleLinear1.o" "line_grp3.v";
connectAttr "DCM_8.ot" "line_07Shape.cp[0]";
connectAttr "DCM_9.ot" "line_07Shape.cp[1]";
connectAttr "DCM_10.ot" "line_08Shape.cp[0]";
connectAttr "DCM_11.ot" "line_08Shape.cp[1]";
connectAttr "master_guide.toeBones" "fgrRef_grp.v";
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
connectAttr "cluster3.og[0]" "pPlaneShape1.i";
connectAttr "deleteComponent1.og" "pPlaneShape1Orig.i";
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
connectAttr "multDoubleLinear2.o" "cluster2Handle_pointConstraint1.oz";
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
connectAttr "pole_normal_loc_normalConstraint1.crx" "pole_normal_loc.rx";
connectAttr "pole_normal_loc_normalConstraint1.cry" "pole_normal_loc.ry";
connectAttr "pole_normal_loc_normalConstraint1.crz" "pole_normal_loc.rz";
connectAttr "pole_normal_loc.pim" "pole_normal_loc_normalConstraint1.cpim";
connectAttr "pole_normal_loc.t" "pole_normal_loc_normalConstraint1.ct";
connectAttr "pole_normal_loc.rp" "pole_normal_loc_normalConstraint1.crp";
connectAttr "pole_normal_loc.rpt" "pole_normal_loc_normalConstraint1.crt";
connectAttr "pole_normal_loc.ro" "pole_normal_loc_normalConstraint1.cro";
connectAttr "pPlaneShape1.w" "pole_normal_loc_normalConstraint1.tg[0].tgm";
connectAttr "pole_normal_loc_normalConstraint1.w0" "pole_normal_loc_normalConstraint1.tg[0].tw"
		;
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
connectAttr "toe00_4_guide.wm" "DCM_12.imat";
connectAttr "toe00_3_guide.wm" "DCM_13.imat";
connectAttr "toe00_2_guide.wm" "DCM_14.imat";
connectAttr "toe00_1_guide.wm" "DCM_15.imat";
connectAttr "toe01_5_guide.wm" "DCM_16.imat";
connectAttr "toe01_4_guide.wm" "DCM_17.imat";
connectAttr "toe01_3_guide.wm" "DCM_18.imat";
connectAttr "toe01_2_guide.wm" "DCM_19.imat";
connectAttr "toe01_1_guide.wm" "DCM_20.imat";
connectAttr "toe02_5_guide.wm" "DCM_21.imat";
connectAttr "toe02_4_guide.wm" "DCM_22.imat";
connectAttr "toe02_3_guide.wm" "DCM_23.imat";
connectAttr "toe02_2_guide.wm" "DCM_24.imat";
connectAttr "toe02_1_guide.wm" "DCM_25.imat";
connectAttr "toe03_5_guide.wm" "DCM_26.imat";
connectAttr "toe03_4_guide.wm" "DCM_27.imat";
connectAttr "toe03_3_guide.wm" "DCM_28.imat";
connectAttr "toe03_2_guide.wm" "DCM_29.imat";
connectAttr "toe03_1_guide.wm" "DCM_30.imat";
connectAttr "toe04_5_guide.wm" "DCM_31.imat";
connectAttr "toe04_4_guide.wm" "DCM_32.imat";
connectAttr "toe04_3_guide.wm" "DCM_33.imat";
connectAttr "toe04_2_guide.wm" "DCM_34.imat";
connectAttr "toe04_1_guide.wm" "DCM_35.imat";
connectAttr "master_guide.limbType" "condition1.ft";
connectAttr "condition1.ocr" "multDoubleLinear1.i1";
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
connectAttr "polyPlane1.out" "deleteComponent1.ig";
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
connectAttr "lwr_guide.tz" "condition_tz.ft";
connectAttr "lwr_guide.ty" "condition_ty.ft";
connectAttr "condition_tz.ocr" "multDoubleLinear2.i1";
connectAttr "condition_ty.ocr" "multDoubleLinear2.i2";
connectAttr "multDoubleLinear1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "foot_guideShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "condition1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "line_grp3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition_tz.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition_ty.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multDoubleLinear2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "line_grp3.msg" ":hyperGraphLayout.hyp[85282].dn";
connectAttr "line_grp2.msg" ":hyperGraphLayout.hyp[85283].dn";
// End of rtLegBp.ma
