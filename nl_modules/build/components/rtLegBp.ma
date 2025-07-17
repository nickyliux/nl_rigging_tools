//Maya ASCII 2023 scene
//Name: rtLegBp.ma
//Last modified: Thu, Jul 17, 2025 07:06:20 PM
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
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "BBAA4282-4428-FCD3-3148-1C827195179D";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr -cb on ".ro";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "F9A81B29-43EB-067F-B3D9-4B8E3C9B1943";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "rbnBones" -ln "rbnBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twistBones" -ln "twistBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeFix" -ln "kneeFix" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "scapularExtra" -ln "scapularExtra" -min 0 -max 1 -at "bool";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -15 0 0 ;
	setAttr -cb on ".ro";
	setAttr -l on -k on ".______________";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".rbnBones" yes;
	setAttr -cb on ".rbnJntNum";
	setAttr -cb on ".patellaBone";
	setAttr -cb on ".toeBones";
	setAttr -cb on ".twistBones";
	setAttr -cb on ".kneeFix";
	setAttr -cb on ".scapularExtra";
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 108 0 ;
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
	setAttr ".t" -type "double3" 0 0 0.1 ;
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
	setAttr ".u" -type "double3" 0 0 -1 ;
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
	setAttr ".t" -type "double3" 0 7.6999998092651367 0 ;
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
	setAttr -cb on ".ro";
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
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
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
	setAttr -cb on ".ro";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_heelPos_ofs" -p "master_guide";
	rename -uid "D90D5744-48AD-1C3E-C8CC-5398D295274A";
	setAttr -cb on ".ro";
createNode transform -n "palm_heelPos_guide" -p "palm_heelPos_ofs";
	rename -uid "787DB076-48C9-B786-C071-BE9CE7005953";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -6 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirror";
createNode transform -n "palm_toePos_guide_ofs" -p "master_guide";
	rename -uid "599ADB09-4770-6B46-8E3A-F1B3BB4CD812";
	setAttr -cb on ".ro";
createNode transform -n "palm_toePos_guide" -p "palm_toePos_guide_ofs";
	rename -uid "CA3FADE3-4772-7BB9-CBD5-2FB8F233B024";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
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
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999815 0 ;
createNode transform -n "pv_loc" -p "pv_loc_ofs1";
	rename -uid "E2799575-486C-9C81-2CD0-55882166B70D";
	setAttr -cb on ".ro";
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
	setAttr ".t" -type "double3" 70 0 1.0122718478325402e-12 ;
	setAttr ".r" -type "double3" 0 89.999999999999588 0 ;
	setAttr -cb on ".ro";
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
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 0 ;
	setAttr -l on ".wsMirror";
	setAttr -cb on ".posRatio";
createNode nurbsCurve -n "foot_guideShape1" -p "master_guide";
	rename -uid "6F492056-4D83-35C3-1AC2-AB9C0DC0C582";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.26773676203117 8.2535382583711187e-16 -13.810722497101398
		-8.1660387114908776e-15 8.0595107077863571e-16 -14.606018972262886
		-11.267736762031188 8.2535382583711157e-16 -13.810722497101398
		-11.689010839838973 1.2470934284616338e-31 10.020851653879564
		-11.267736762031188 -8.2535382583711157e-16 35.552
		-1.0052680407308491e-14 -8.059510707786362e-16 35.552
		11.26773676203117 -8.2535382583711157e-16 35.552
		11.689010839838955 -2.6978565941924595e-32 10.020851653879571
		11.26773676203117 8.2535382583711187e-16 -13.810722497101398
		-8.1660387114908776e-15 8.0595107077863571e-16 -14.606018972262886
		-11.267736762031188 8.2535382583711157e-16 -13.810722497101398
		;
createNode transform -n "toe_guide_grp" -p "master_guide";
	rename -uid "E669C658-4F4A-B12C-D97E-1DA743412B3C";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toe_main_1_guide_ofs" -p "toe_guide_grp";
	rename -uid "C7517900-4F0D-6524-59FC-D98C6B2FF67B";
	setAttr ".t" -type "double3" 0 0 -4 ;
createNode transform -n "toe_main_1_guide" -p "toe_main_1_guide_ofs";
	rename -uid "66AF63BD-4108-EE6B-6B6E-90B6FB631A9D";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -6.7 0 ;
createNode transform -n "toe00_1_guide_ofs" -p "toe_main_1_guide";
	rename -uid "28F189DB-432A-E9DC-2C66-E6AAE4BD8D81";
	setAttr ".t" -type "double3" 4 2.6874529757137111e-07 0.00033307329854004308 ;
createNode transform -n "toe00_1_guide" -p "toe00_1_guide_ofs";
	rename -uid "ACF47DB4-47E7-C2FB-8BA1-599EA3AAB54C";
createNode nurbsCurve -n "toe00_4_guideShape" -p "toe00_1_guide";
	rename -uid "D3A75395-4CAD-E194-05CB-749C65915563";
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
createNode transform -n "toe01_1_guide_ofs" -p "toe_main_1_guide";
	rename -uid "4EE1B67D-4E0F-E25D-E3DF-4D993D07C719";
	setAttr ".t" -type "double3" 2 2.6874529757137111e-07 0.00033307329854004308 ;
createNode transform -n "toe01_1_guide" -p "toe01_1_guide_ofs";
	rename -uid "E1B3661B-45BA-935C-437A-0D8CC2F8F0E8";
createNode transform -n "toe02_1_guide_ofs" -p "toe_main_1_guide";
	rename -uid "7A41DE54-4466-8167-1488-55B8424BF848";
createNode transform -n "toe02_1_guide" -p "toe02_1_guide_ofs";
	rename -uid "80653EC0-4CC0-E840-CEAA-09BE43EDB6D9";
createNode transform -n "toe03_1_guide_ofs" -p "toe_main_1_guide";
	rename -uid "EFEB2AAC-4D8F-DDED-DEA0-E49836ABA55B";
	setAttr ".t" -type "double3" -2 2.6874529757137111e-07 0.00033307329854004308 ;
createNode transform -n "toe03_1_guide" -p "toe03_1_guide_ofs";
	rename -uid "EF932725-41D4-253F-442C-168DA0CA0C36";
createNode transform -n "toe04_1_guide_ofs" -p "toe_main_1_guide";
	rename -uid "5B7BD500-41CB-DB29-F33E-FB8AB89F5913";
	setAttr ".t" -type "double3" -4 2.6874529757137111e-07 0.00033307329854004308 ;
createNode transform -n "toe04_1_guide" -p "toe04_1_guide_ofs";
	rename -uid "2BCA5F41-4F6D-57E3-1E01-49BD26173C18";
createNode nurbsCurve -n "toe_main_5_guideShape" -p "toe_main_1_guide";
	rename -uid "32A82E1C-4AF9-FAC5-0B39-02806E3AF466";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.75084686279296875 0 0.75084686279296875
		0.75084686279296875 0 -0.75084686279296875
		-0.75084686279296875 0 -0.75084686279296875
		-0.75084686279296875 0 0.75084686279296875
		0.75084686279296875 0 0.75084686279296875
		;
	setAttr ".adot" yes;
createNode transform -n "toe_main_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "270E7E9F-4486-240E-C139-72940D092B40";
	setAttr ".t" -type "double3" -9.3312646498588947e-09 0 -13.5 ;
createNode transform -n "toe_main_2_guide" -p "toe_main_2_guide_ofs";
	rename -uid "9D11D52F-45F7-88E3-7C86-A1AFD8C73DD3";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -3.8 0 ;
createNode transform -n "toe00_2_guide_ofs" -p "toe_main_2_guide";
	rename -uid "19F60782-415D-D397-872C-46A3DE60216E";
	setAttr ".t" -type "double3" 4 2.6874529845954953e-07 0.00033307329854004308 ;
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ofs";
	rename -uid "266AFEBF-46A8-B206-63DA-C6AA3764DE07";
createNode transform -n "toe01_2_guide_ofs" -p "toe_main_2_guide";
	rename -uid "89DD842D-4AEE-A2AE-2185-B385964C9CD2";
	setAttr ".t" -type "double3" 2 2.6874529845954953e-07 0.00033307329854004308 ;
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ofs";
	rename -uid "3E072398-482D-EA9A-EA05-64ACB89DB148";
createNode transform -n "toe02_2_guide_ofs" -p "toe_main_2_guide";
	rename -uid "E1AFB79E-4248-1D89-7F39-B1A4F6D9723E";
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ofs";
	rename -uid "C5276411-42DB-B547-0791-37BCBF6D737E";
createNode transform -n "toe03_2_guide_ofs" -p "toe_main_2_guide";
	rename -uid "9590D2E5-4894-4B18-920C-B0BB715FC7C3";
	setAttr ".t" -type "double3" -2 2.6874529845954953e-07 0.00033307329854004308 ;
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ofs";
	rename -uid "B670A773-4A7C-9D2B-5399-0DAE17559C88";
createNode transform -n "toe04_2_guide_ofs" -p "toe_main_2_guide";
	rename -uid "3C0801A5-40AC-7834-1601-7BAC953544E9";
	setAttr ".t" -type "double3" -4 2.6874529845954953e-07 0.00033307329854004308 ;
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ofs";
	rename -uid "7648776C-4276-C717-A58B-A3A80654A5DF";
createNode transform -n "toe_main_3_guide_ofs" -p "toe_guide_grp";
	rename -uid "816D007F-4BA2-76DC-BA84-C78C184EFD25";
	setAttr ".t" -type "double3" 0 0 -16.2 ;
createNode transform -n "toe_main_3_guide" -p "toe_main_3_guide_ofs";
	rename -uid "B30373F5-42F5-D46D-7A67-4D95DD4EFE23";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3 0 ;
createNode transform -n "toe01_3_guide_ofs" -p "toe_main_3_guide";
	rename -uid "6ECF6934-4E6F-1229-5103-5FBE58307447";
	setAttr ".t" -type "double3" 2 2.6874529934772795e-07 0.00033307329854004308 ;
createNode transform -n "toe01_3_guide" -p "toe01_3_guide_ofs";
	rename -uid "DC878DB9-40C5-0627-9C41-DF9A8B49043F";
createNode transform -n "toe00_3_guide_ofs" -p "toe_main_3_guide";
	rename -uid "9298CE29-453B-E224-E66D-099A62A91B6B";
	setAttr ".t" -type "double3" 4 2.6874529934772795e-07 0.00033307329854004308 ;
createNode transform -n "toe00_3_guide" -p "toe00_3_guide_ofs";
	rename -uid "50C0A894-4859-AC9C-9468-8696B79F53E4";
	setAttr ".r" -type "double3" 18 0 0 ;
createNode transform -n "toe00_4_guide_ofs" -p "toe00_3_guide";
	rename -uid "D85B05D9-4CE4-7ECF-1DA0-F8820226CA82";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -3 ;
createNode transform -n "toe00_4_guide" -p "toe00_4_guide_ofs";
	rename -uid "5F340945-4C67-1050-9F49-EB9B6D5196C5";
createNode transform -n "toe02_3_guide_ofs" -p "toe_main_3_guide";
	rename -uid "6876785D-4371-C67D-5787-79B70ADA08C0";
createNode transform -n "toe02_3_guide" -p "toe02_3_guide_ofs";
	rename -uid "FAF3B4A6-4B8E-E8EA-0E3D-338D44678FBB";
createNode transform -n "toe03_3_guide_ofs" -p "toe_main_3_guide";
	rename -uid "E974F05D-4457-4179-BD46-E09C6E2D7086";
	setAttr ".t" -type "double3" -2 2.6874529934772795e-07 0.00033307329854004308 ;
createNode transform -n "toe03_3_guide" -p "toe03_3_guide_ofs";
	rename -uid "E20991DE-42BF-993A-05B1-FB8CF4A4B1DD";
createNode transform -n "toe04_3_guide_ofs" -p "toe_main_3_guide";
	rename -uid "0F9E5CAB-4E5F-767B-E6BE-E2B132EB752B";
	setAttr ".t" -type "double3" -4 2.6874529934772795e-07 0.00033307329854004308 ;
createNode transform -n "toe04_3_guide" -p "toe04_3_guide_ofs";
	rename -uid "723CFD35-473C-811B-A583-4087B64D71CD";
createNode transform -n "toe_main_4_guide_ofs" -p "toe_guide_grp";
	rename -uid "DAF204B9-4C7B-C732-C59B-73BC46BD33C0";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -17.7 ;
createNode transform -n "toe_main_4_guide" -p "toe_main_4_guide_ofs";
	rename -uid "B1448D18-4750-D17C-4B9C-DD9A74FB4E49";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -2.5 0 ;
	setAttr ".r" -type "double3" 18 0 0 ;
createNode transform -n "toe01_4_guide_ofs" -p "toe_main_4_guide";
	rename -uid "DEAD48D0-44D2-CC19-9CA3-9AA8E0E4F37B";
	setAttr ".t" -type "double3" 2 2.6874529845954953e-07 0.00033307329854181944 ;
createNode transform -n "toe01_4_guide" -p "toe01_4_guide_ofs";
	rename -uid "7ECEF137-4751-12E0-1F6B-7FB873D84B06";
createNode transform -n "toe01_5_guide_ofs" -p "toe01_4_guide";
	rename -uid "8A082605-4548-E628-6C54-D99FEBD9523B";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 0 -1.3 ;
createNode transform -n "toe01_5_guide" -p "toe01_5_guide_ofs";
	rename -uid "96BAAB75-4AF6-54DA-D295-4AA92E224255";
createNode transform -n "toe02_4_guide_ofs" -p "toe_main_4_guide";
	rename -uid "784FA9CD-4500-509F-5163-07A5D032DE86";
createNode transform -n "toe02_4_guide" -p "toe02_4_guide_ofs";
	rename -uid "F41EDB05-4036-4AD6-7685-E2AE989A68DA";
createNode transform -n "toe02_5_guide_ofs" -p "toe02_4_guide";
	rename -uid "EFA433A4-4E44-7249-0710-48AB1B548430";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -1.3 ;
createNode transform -n "toe02_5_guide" -p "toe02_5_guide_ofs";
	rename -uid "31F294AA-43F1-63F8-51AB-75A650615696";
createNode transform -n "toe03_4_guide_ofs" -p "toe_main_4_guide";
	rename -uid "4D8B2D57-4B9B-826C-76E9-349B660DCFE7";
	setAttr ".t" -type "double3" -2 2.6874529845954953e-07 0.00033307329854181944 ;
createNode transform -n "toe03_4_guide" -p "toe03_4_guide_ofs";
	rename -uid "D64FC58A-4FD0-AE18-A56A-919F3B7009CF";
createNode transform -n "toe03_5_guide_ofs" -p "toe03_4_guide";
	rename -uid "21D2E7FC-43AE-6E40-DDF4-8FB43015735E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -1.3 ;
createNode transform -n "toe03_5_guide" -p "toe03_5_guide_ofs";
	rename -uid "7C909E84-453A-0562-F247-5696D8930F9F";
createNode transform -n "toe04_4_guide_ofs" -p "toe_main_4_guide";
	rename -uid "5AF84448-4AD7-0E6D-F251-1DABE1B816CE";
	setAttr ".t" -type "double3" -4 2.6874529845954953e-07 0.00033307329854181944 ;
createNode transform -n "toe04_4_guide" -p "toe04_4_guide_ofs";
	rename -uid "F2940094-437A-9AB3-6EAA-EFBA512D58E3";
createNode transform -n "toe04_5_guide_ofs" -p "toe04_4_guide";
	rename -uid "85A79120-4653-2C2A-520E-79820CD41CE2";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 -1.3 ;
createNode transform -n "toe04_5_guide" -p "toe04_5_guide_ofs";
	rename -uid "85C20D6B-4838-2DDF-AFED-F689711BC995";
createNode transform -n "toe_main_5_guide_ofs" -p "toe_guide_grp";
	rename -uid "F876913D-4FED-F280-623B-809D52A43140";
	setAttr ".t" -type "double3" 0 1.4969770483133562 19 ;
createNode transform -n "toesRoot_guide" -p "toe_guide_grp";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 108 0
		-15 91.900001525878906 2.5055563476467083e-21
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 91.900001525878906 2.5055563476467083e-21
		-15 49.800000667572021 0.10000000000000089
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15 49.800000667572021 0.10000000000000089
		-15 7.6999998092651367 -1.9721522630525295e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "41B828D1-4BFD-995D-22EF-22836551D852";
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
		-15.000000000000787 49.800000667572014 70
		-15 49.800000667572021 0.10000000000000089
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp2" -p "module_grp";
	rename -uid "ABBAED65-4150-D22E-E71F-E6A17D275792";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "line_09" -p "line_grp2";
	rename -uid "235BEFAF-4F72-D4CF-6560-9F9E5F75C2B8";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11 2.0729487481298605 19.052836475586922
		-10.999999999999996 2.9999997312547024 16.199666926701461
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp2";
	rename -uid "F2DED0FF-4421-010E-576B-0390FF7FCC2A";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-10.999999999999996 2.9999997312547024 16.199666926701461
		-11.000000009331266 3.7999997312547031 13.49966692670146
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "line_grp2";
	rename -uid "C255F2A1-4034-4DCB-C06E-2480B278DBFC";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11.000000009331266 3.7999997312547031 13.49966692670146
		-10.999999999999996 6.6999997312547031 3.9996669267014591
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp2";
	rename -uid "826EBD14-44A2-538C-4D24-01ACDAB8A874";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12.999999999999998 2.0983805770302255 18.936056616605853
		-13.000000000000004 2.5001026697176569 17.699683145422153
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp2";
	rename -uid "0DC9F951-428E-41CA-8194-2BB2EF938696";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13.000000000000004 2.5001026697176569 17.699683145422153
		-12.999999999999996 2.9999997312547024 16.199666926701461
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp2";
	rename -uid "EE12560C-42EC-787C-AD73-DBAF026F36C8";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-12.999999999999996 2.9999997312547024 16.199666926701461
		-13.000000009331266 3.7999997312547031 13.49966692670146
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp2";
	rename -uid "0AC0C40C-42A4-3293-0D45-589F157E79AD";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-13.000000009331266 3.7999997312547031 13.49966692670146
		-12.999999999999996 6.6999997312547031 3.9996669267014591
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "line_grp2";
	rename -uid "04ADE1F6-4E23-42CF-C139-40B5D8438931";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000000000005 2.0982779073125708 18.9363734711837
		-15.000000000000004 2.5000000000000022 17.699999999999999
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp2";
	rename -uid "36063AD7-43D6-0295-1CA8-199F973073A4";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000000000004 2.5000000000000022 17.699999999999999
		-14.999999999999996 3.0000000000000018 16.199999999999999
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp2";
	rename -uid "2CADF9F5-4C99-4457-E538-0388CE736382";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14.999999999999996 3.0000000000000018 16.199999999999999
		-15.000000009331266 3.8000000000000016 13.5
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp2";
	rename -uid "6A065C22-47E6-E695-4567-2A9656CA0BF7";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-15.000000009331266 3.8000000000000016 13.5
		-14.999999999999996 6.7000000000000011 3.9999999999999991
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp2";
	rename -uid "83E9ADF7-4628-BED1-924A-44824D375F9A";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-16.999999999999996 2.0983805770302255 18.936056616605853
		-17.000000000000004 2.5001026697176569 17.699683145422153
		;
	setAttr ".adot" yes;
createNode transform -n "line_21" -p "line_grp2";
	rename -uid "3579B23D-4897-62E1-170F-53B70C80BB9A";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-17.000000000000004 2.5001026697176569 17.699683145422153
		-16.999999999999996 2.9999997312547024 16.199666926701461
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp2";
	rename -uid "5965D2B6-4CF0-5DEF-3833-53AB572A7C09";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-16.999999999999996 2.9999997312547024 16.199666926701461
		-17.000000009331266 3.7999997312547031 13.49966692670146
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp2";
	rename -uid "EFAE0038-47DF-CD2A-B7BD-279558C1B4B4";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-17.000000009331266 3.7999997312547031 13.49966692670146
		-16.999999999999996 6.6999997312547031 3.9996669267014591
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp2";
	rename -uid "87D8BE38-45E4-C7E7-A0A9-E8AA8973BF96";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-18.999999999999996 2.0983805770302255 18.936056616605853
		-19.000000000000004 2.5001026697176569 17.699683145422153
		;
	setAttr ".adot" yes;
createNode transform -n "line_25" -p "line_grp2";
	rename -uid "F24202E4-4E88-2EB3-E4EE-66B5A1BB8EAE";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.000000000000004 2.5001026697176569 17.699683145422153
		-18.999999999999996 2.9999997312547024 16.199666926701461
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "line_grp2";
	rename -uid "D05F10D6-4E4D-4E1C-10F1-C698A148AFEA";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-18.999999999999996 2.9999997312547024 16.199666926701461
		-19.000000009331266 3.7999997312547031 13.49966692670146
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "line_grp2";
	rename -uid "49F3649F-4739-881F-1D5F-D0AF20C78981";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.000000009331266 3.7999997312547031 13.49966692670146
		-18.999999999999996 6.6999997312547031 3.9996669267014591
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
		-10 44.80001410571839 0.088123574447398337
		-10.000000000000002 7.6999998092651367 2.5055578725148404e-21
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
		-20 44.80001410571839 0.088123574447396116
		-20 7.6999998092651367 6.1232590513154855e-16
		;
	setAttr ".adot" yes;
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 116.65756264849867 118.68636513658814 80.955528281221149 ;
	setAttr ".r" -type "double3" -21.93835272896284 70.200000000006142 9.3894261355838658e-15 ;
	setAttr -cb on ".ro";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 196.49869433114685;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -15.000000000000007 1.4791141972893971e-31 8.3707381346365004 ;
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
	setAttr ".t" -type "double3" 1002.5343167264481 4.8524995485432934 14.028984309656398 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
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
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "upr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "palm_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "ball_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "tip_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|radius_guideShape" "radius_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|radius_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|radius_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|radius_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe00_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe00_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe02_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe04_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe00_1_guide_ofs|toe00_1_guide|toe00_4_guideShape" "toe04_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe_main_5_guideShape" "toe_main_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe_main_5_guideShape" "toe_main_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe_main_1_guide_ofs|toe_main_1_guide|toe_main_5_guideShape" "toe_main_4_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "043B7CAA-4763-9B7A-C9B3-0D836F52F26F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DA4E2C62-44F3-1108-72CF-6A952E96573C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "84738361-4E18-5C97-2600-A58B8F638620";
createNode displayLayerManager -n "layerManager";
	rename -uid "DBD1485E-44A6-95E1-723E-0BA4D8BC61EC";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0533EA4A-48C6-5E3D-7580-13886857521C";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 712\n            -height 684\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 712\n            -height 684\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 712\\n    -height 684\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 712\\n    -height 684\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2D884DF0-4409-A263-E099-4A972229D477";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -197.3789634275378 -550.2538549126507 ;
	setAttr ".tgi[0].vh" -type "double2" 576.18366237665316 -41.885347113114278 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 307.14285278320312;
	setAttr ".tgi[0].ni[0].y" -128.57142639160156;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 328.99160766601562;
	setAttr ".tgi[0].ni[1].y" 74.621849060058594;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -61.428569793701172;
	setAttr ".tgi[0].ni[2].y" -130;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 745.5638427734375;
	setAttr ".tgi[0].ni[3].y" -404.24496459960938;
	setAttr ".tgi[0].ni[3].nvs" 18304;
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
	setAttr -k on ".cch";
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
connectAttr "foot_guideShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "line_grp2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "toe_guide_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
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
connectAttr "line_grp3.msg" ":hyperGraphLayout.hyp[85282].dn";
connectAttr "line_grp2.msg" ":hyperGraphLayout.hyp[85283].dn";
// End of rtLegBp.ma
