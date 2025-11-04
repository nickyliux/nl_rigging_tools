//Maya ASCII 2023 scene
//Name: lfLegBp.ma
//Last modified: Sat, Oct 11, 2025 05:23:57 PM
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
fileInfo "UUID" "D5808E5E-49A2-981C-969B-33B326916E29";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "E66F8CE8-4304-FEB2-4988-D6851FD4AAC0";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 3 -en "basic:robot:ribbon:skeleton" 
		-at "enum";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -nn "Ws Mirror" -at "float";
	addAttr -ci true -sn "rbnJntNum" -ln "rbnJntNum" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "rollJntNum" -ln "rollJntNum" -dv 2 -min 2 -at "long";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeFix" -ln "kneeFix" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "scapularExtra" -ln "scapularExtra" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "mirrorable" -ln "mirrorable" -min 0 -max 1 -at "bool";
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".limbType";
	setAttr -l on ".wsMirror";
	setAttr -cb on ".rbnJntNum" 4;
	setAttr -cb on ".rollJntNum";
	setAttr -cb on ".patellaBone";
	setAttr -cb on ".toeBones";
	setAttr -cb on ".kneeFix";
	setAttr -cb on ".scapularExtra";
	setAttr -k on ".parentNameMatch" -type "string" "spine*";
	setAttr -cb on ".mirrorable" yes;
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "1B251669-4809-99CF-2AA5-B291D2C0C8FF";
	setAttr ".t" -type "double3" 0 108 6.9363883474575228e-18 ;
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
		0.31484003591409931 3.3306690738754696e-16 -8.8436202805297626e-15
		0.29232119238928778 0.12108339722666633 -8.8436202805297626e-15
		0.22373296651267008 0.22373296651267063 -8.8436202805297626e-15
		0.12108339722666578 0.29232119238928833 -8.8436202805297626e-15
		-2.2204460492503131e-16 0.31483265310167374 -8.8436202805297626e-15
		-0.12108339722666622 0.29232119238928833 -8.8436202805297626e-15
		-0.22373296651267052 0.22373296651267063 -8.8436202805297626e-15
		-0.29232119238928822 0.12108339722666633 -8.8436202805297626e-15
		-0.31484003591409976 -1.491688779901421e-08 -8.8436202805297626e-15
		-0.29232119238928822 -0.12108339722666567 -8.8436202805297626e-15
		-0.22373296651267052 -0.22373296651266997 -8.8436202805297626e-15
		-0.12108339722666622 -0.29232119238928767 -8.8436202805297626e-15
		1.2572844964726944e-08 -0.31483265310167308 -0.0021408046661007974
		0.12108339722666578 -0.29232119238928767 -8.8436202805297626e-15
		0.22373296651267008 -0.22373296651266997 -8.8436202805297626e-15
		0.29232119238928778 -0.12108339722666567 -8.8436202805297626e-15
		0.31484003591409931 3.3306690738754696e-16 -8.8436202805297626e-15
		0.29087416115375808 0.00081927280430760512 -0.12048138160769503
		0.22262554464874434 0.0015138309223620239 -0.22262069308630189
		0.12048412379515852 0.0019779187302211457 -0.29086783302883051
		1.2572844964726944e-08 0.0021408890410914419 -0.31483307497667812
		-0.12048412379515896 0.0019779187302211457 -0.29086783302883051
		-0.22262554464874479 0.0015138309223620239 -0.22262069308630189
		-0.29087416115375853 0.00081927280430760512 -0.12048138160769503
		-0.31484003591409976 -1.491688779901421e-08 -8.8436202805297626e-15
		-0.29087416115375853 -0.0008193023355566435 0.12048095973268155
		-0.22262554464874479 -0.0015138604536110625 0.2226204821487863
		-0.12048412379515896 -0.0019779482614701847 0.29086741115381703
		1.2572844964726944e-08 -0.002140910134840566 0.31483265310166458
		0.12048412379515852 -0.0019779482614701847 0.29086741115381703
		0.22262554464874434 -0.0015138604536110625 0.2226204821487863
		0.29087416115375808 -0.0008193023355566435 0.12048095973268155
		0.31484003591409931 3.3306690738754696e-16 -8.8436202805297626e-15
		0.29087416115375808 0.00081927280430760512 -0.12048138160769503
		0.22262554464874434 0.0015138309223620239 -0.22262069308630189
		0.12048412379515852 0.0019779187302211457 -0.29086783302883051
		1.2572844964726944e-08 0.0021408890410914419 -0.31483307497667812
		1.2572844964726944e-08 0.12245913158790903 -0.29004834084952535
		1.2572844964726944e-08 0.22413416963365859 -0.2211067946639409
		1.2572844964726944e-08 0.29168669239563338 -0.11850342068997462
		-2.2204460492503131e-16 0.31483265310167374 -8.8436202805297626e-15
		1.2572844964726944e-08 0.29004812991201906 0.12245913158789984
		1.2572844964726944e-08 0.22110658372643441 0.22413395869615155
		1.2572844964726944e-08 0.11850342068996611 0.29168669239562423
		1.2572844964726944e-08 -0.002140910134840566 0.31483265310166458
		1.2572844964726944e-08 -0.12245913158790836 0.29004791897451193
		1.2572844964726944e-08 -0.22413416963365793 0.22110637278892742
		1.2572844964726944e-08 -0.29168669239563272 0.11850299881496114
		1.2572844964726944e-08 -0.31483265310167308 -0.0021408046661007974
		1.2572844964726944e-08 -0.29004812991201839 -0.12245955346291329
		1.2572844964726944e-08 -0.22110658372643374 -0.224134380571165
		1.2572844964726944e-08 -0.11850342068996544 -0.29168711427063765
		1.2572844964726944e-08 0.0021408890410914419 -0.31483307497667812
		;
	setAttr ".adot" yes;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "FDBB4D88-4CFD-F00D-82C0-DC86D56796A9";
	setAttr ".t" -type "double3" 0 91.9 0 ;
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
createNode transform -n "lwr_guide_ofs" -p "master_guide";
	rename -uid "1306F83F-4E01-4A38-0ADD-DC910ADDB46F";
	setAttr -l on ".v";
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
createNode nurbsCurve -n "ulnaEnd_guideShape" -p "patella_guide";
	rename -uid "86AF8383-4628-B1F9-F0E1-CDB8095E3821";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.20989335727606637 2.0539125955565396e-15 4.6864638905685929e-16
		0.19488079492619201 0.080722264817779388 4.6864638905685929e-16
		0.14915531100844687 0.14915531100844892 4.6864638905685929e-16
		0.080722264817777334 0.19488079492619406 4.6864638905685929e-16
		0 0.20988843540111765 4.6864638905685929e-16
		-0.080722264817777334 0.19488079492619406 4.6864638905685929e-16
		-0.14915531100844687 0.14915531100844892 4.6864638905685929e-16
		-0.19488079492619201 0.080722264817779388 4.6864638905685929e-16
		-0.20989335727606637 -9.9445900341414834e-09 4.6864638905685929e-16
		-0.19488079492619201 -0.08072226481777528 4.6864638905685929e-16
		-0.14915531100844687 -0.14915531100844481 4.6864638905685929e-16
		-0.080722264817777334 -0.19488079492618995 4.6864638905685929e-16
		8.3818967911810325e-09 -0.20988843540111354 -0.0014272031107275002
		0.080722264817777334 -0.19488079492618995 4.6864638905685929e-16
		0.14915531100844687 -0.14915531100844481 4.6864638905685929e-16
		0.19488079492619201 -0.08072226481777528 4.6864638905685929e-16
		0.20989335727606637 2.0539125955565396e-15 4.6864638905685929e-16
		0.19391610743583887 0.00054618186954023525 -0.080320921071790313
		0.14841702976582971 0.0010092206149098478 -0.14841379539086155
		0.0803227491967725 0.001318612486815929 -0.19391188868588061
		8.3818967911810325e-09 0.0014272593607294599 -0.20988871665111236
		-0.0803227491967725 0.001318612486815929 -0.19391188868588061
		-0.14841702976582971 0.0010092206149098478 -0.14841379539086155
		-0.19391610743583887 0.00054618186954023525 -0.080320921071790313
		-0.20989335727606637 -9.9445900341414834e-09 4.6864638905685929e-16
		-0.19391610743583887 -0.00054620155703593047 0.080320639821794076
		-0.14841702976582971 -0.0010092403024055431 0.14841365476586388
		-0.0803227491967725 -0.0013186321743116245 0.1939116074358844
		8.3818967911810325e-09 -0.001427273423225212 0.20988843540111607
		0.0803227491967725 -0.0013186321743116245 0.1939116074358844
		0.14841702976582971 -0.0010092403024055431 0.14841365476586388
		0.19391610743583887 -0.00054620155703593047 0.080320639821794076
		0.20989335727606637 2.0539125955565396e-15 4.6864638905685929e-16
		0.19391610743583887 0.00054618186954023525 -0.080320921071790313
		0.14841702976582971 0.0010092206149098478 -0.14841379539086155
		0.0803227491967725 0.001318612486815929 -0.19391188868588061
		8.3818967911810325e-09 0.0014272593607294599 -0.20988871665111236
		8.3818967911810325e-09 0.081639421058607844 -0.19336556056634385
		8.3818967911810325e-09 0.14942277975577423 -0.14740452977595425
		8.3818967911810325e-09 0.19445779493042409 -0.079002280459976704
		0 0.20988843540111765 4.6864638905685929e-16
		8.3818967911810325e-09 0.19336541994134787 0.081639421058606235
		8.3818967911810325e-09 0.1474043891509581 0.14942263913077408
		8.3818967911810325e-09 0.079002280459979243 0.19445779493042251
		8.3818967911810325e-09 -0.001427273423225212 0.20988843540111607
		8.3818967911810325e-09 -0.081639421058603737 0.19336527931634764
		8.3818967911810325e-09 -0.14942277975577012 0.14740424852595796
		8.3818967911810325e-09 -0.19445779493041998 0.079001999209980453
		8.3818967911810325e-09 -0.20988843540111354 -0.0014272031107275002
		8.3818967911810325e-09 -0.19336541994134376 -0.081639702308602499
		8.3818967911810325e-09 -0.147404389150954 -0.14942292038077029
		8.3818967911810325e-09 -0.079002280459975135 -0.19445807618041877
		8.3818967911810325e-09 0.0014272593607294599 -0.20988871665111236
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
createNode aimConstraint -n "lwr_guide_ofs_aimConstraint1" -p "lwr_guide_ofs";
	rename -uid "5C0C6FFB-4835-E330-D745-7CAED649A0E2";
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
	setAttr ".wu" -type "double3" -1 0 0 ;
	setAttr ".rsrr" -type "double3" 180 -2.5729319590941201e-15 111.51140430969974 ;
	setAttr -k on ".w0";
createNode transform -n "palm_guide_ofs" -p "master_guide";
	rename -uid "6692DE7F-4686-BE5A-3FE7-1E9F5E0D39F5";
	setAttr ".t" -type "double3" 0 7.7 0 ;
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
createNode transform -n "ball_guide_ofs" -p "master_guide";
	rename -uid "AFC6ACE8-49C2-6343-D10B-D995FB21F46F";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 0.99999999999999944 ;
createNode transform -n "ball_guide" -p "ball_guide_ofs";
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
createNode aimConstraint -n "ball_guide_aimConstraint1" -p "ball_guide";
	rename -uid "CF46EA35-498E-84F3-6512-20BDA9DA64ED";
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
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -4.0096481020829735e-09 2.4391294773851809e-07 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ball_guide_ofs_pointConstraint1" -p "ball_guide_ofs";
	rename -uid "56644B2B-417E-9B8E-9D61-BEBE64F801D0";
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
	setAttr ".rst" -type "double3" 0 4.85 9.5 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode aimConstraint -n "ball_guide_ofs_aimConstraint1" -p "ball_guide_ofs";
	rename -uid "7282CB85-4469-4A30-67EE-6193895000FF";
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
	setAttr ".wut" 0;
	setAttr -k on ".w0";
createNode transform -n "tip_guide_ofs" -p "master_guide";
	rename -uid "9DF21705-4F6C-197D-1814-B7B800AA61B4";
	setAttr ".t" -type "double3" 0 2 19 ;
	setAttr ".r" -type "double3" 180 -90 -90.000000000016229 ;
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
	rename -uid "254E1ABA-4993-EFAA-A2B9-BCA39A6DB9B7";
createNode transform -n "palm_inPos_guide" -p "palm_inPos_ofs";
	rename -uid "D4E600EC-46C0-7F63-B923-98859A463209";
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
createNode nurbsCurve -n "palm_toePos_guideShape" -p "palm_inPos_guide";
	rename -uid "87A13CEA-46AC-7B80-6767-668F4FE9EDDE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.27985780970142182 1.5543122344752192e-15 3.2764589652511944e-16
		0.25984105990158934 0.10762968642370467 3.2764589652511944e-16
		0.19887374801126248 0.19887374801126403 3.2764589652511944e-16
		0.10762968642370312 0.2598410599015909 3.2764589652511944e-16
		0 0.27985124720148902 3.2764589652511944e-16
		-0.10762968642370312 0.2598410599015909 3.2764589652511944e-16
		-0.19887374801126248 0.19887374801126403 3.2764589652511944e-16
		-0.25984105990158934 0.10762968642370467 3.2764589652511944e-16
		-0.27985780970142182 -1.3259454563093204e-08 3.2764589652511944e-16
		-0.25984105990158934 -0.10762968642370156 3.2764589652511944e-16
		-0.19887374801126248 -0.19887374801126093 3.2764589652511944e-16
		-0.10762968642370312 -0.25984105990158779 3.2764589652511944e-16
		1.1175862388241376e-08 -0.27985124720148591 -0.0019029374809702976
		0.10762968642370312 -0.25984105990158779 3.2764589652511944e-16
		0.19887374801126248 -0.19887374801126093 3.2764589652511944e-16
		0.25984105990158934 -0.10762968642370156 3.2764589652511944e-16
		0.27985780970142182 1.5543122344752192e-15 3.2764589652511944e-16
		0.25855480991445184 0.00072824249271912942 -0.10709456142905405
		0.19788937302110626 0.0013456274865452794 -0.19788506052114904
		0.10709699892903 0.0017581499824200545 -0.25854918491450779
		1.1175862388241376e-08 0.0019030124809714291 -0.27985162220148346
		-0.10709699892903 0.0017581499824200545 -0.25854918491450779
		-0.19788937302110626 0.0013456274865452794 -0.19788506052114904
		-0.25855480991445184 0.00072824249271912942 -0.10709456142905405
		-0.27985780970142182 -1.3259454563093204e-08 3.2764589652511944e-16
		-0.25855480991445184 -0.00072826874271575816 0.10709418642905846
		-0.19788937302110626 -0.0013456537365419082 0.19788487302115154
		-0.10709699892903 -0.0017581762324166835 0.25854880991451223
		1.1175862388241376e-08 -0.0019030312309681336 0.2798512472014878
		0.10709699892903 -0.0017581762324166835 0.25854880991451223
		0.19788937302110626 -0.0013456537365419082 0.19788487302115154
		0.25855480991445184 -0.00072826874271575816 0.10709418642905846
		0.27985780970142182 1.5543122344752192e-15 3.2764589652511944e-16
		0.25855480991445184 0.00072824249271912942 -0.10709456142905405
		0.19788937302110626 0.0013456274865452794 -0.19788506052114904
		0.10709699892903 0.0017581499824200545 -0.25854918491450779
		1.1175862388241376e-08 0.0019030124809714291 -0.27985162220148346
		1.1175862388241376e-08 0.10885256141147594 -0.25782074742179212
		1.1175862388241376e-08 0.1992303730076978 -0.19653937303460595
		1.1175862388241376e-08 0.25927705990723093 -0.10533637394663591
		0 0.27985124720148902 3.2764589652511944e-16
		1.1175862388241376e-08 0.25782055992179598 0.10885256141147469
		1.1175862388241376e-08 0.19653918553460964 0.1992301855076985
		1.1175862388241376e-08 0.10533637394663781 0.25927705990722971
		1.1175862388241376e-08 -0.0019030312309681336 0.2798512472014878
		1.1175862388241376e-08 -0.10885256141147283 0.25782037242179656
		1.1175862388241376e-08 -0.19923037300769469 0.19653899803461033
		1.1175862388241376e-08 -0.25927705990722782 0.10533599894664031
		1.1175862388241376e-08 -0.27985124720148591 -0.0019029374809702976
		1.1175862388241376e-08 -0.25782055992179287 -0.1088529364114703
		1.1175862388241376e-08 -0.19653918553460653 -0.19923056050769403
		1.1175862388241376e-08 -0.1053363739466347 -0.25927743490722532
		1.1175862388241376e-08 0.0019030124809714291 -0.27985162220148346
		;
	setAttr ".adot" yes;
createNode transform -n "palm_outPos_ofs" -p "master_guide";
	rename -uid "5FC88CCD-48EE-A138-ED19-7C9CCD2BC9BD";
createNode transform -n "palm_outPos_guide" -p "palm_outPos_ofs";
	rename -uid "707287C7-4DF1-1788-6421-3C80E533D052";
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
createNode transform -n "palm_heelPos_ofs" -p "master_guide";
	rename -uid "830B1EA8-46DF-8A2A-5035-F08531437448";
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
	rename -uid "A1C0A36A-4FCA-48D9-3D84-CA976A59E454";
createNode transform -n "palm_toePos_guide" -p "palm_toePos_guide_ofs";
	rename -uid "D0C1A22D-4BCC-3A74-889C-209DD6F8C00D";
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
createNode transform -n "pv_loc_ofs1" -p "pv_loc_ofs";
	rename -uid "7BBB0D6B-4133-F8D8-7563-83B0F9640D22";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.1054273576010019e-15 5 ;
createNode transform -n "pv_loc" -p "pv_loc_ofs1";
	rename -uid "F8A93BBD-4B6E-CC7B-681C-51AB49E04C59";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "E33105AB-4091-266F-273B-BEA58B6C2A1D";
	setAttr -k off ".v" no;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3 3 3 ;
createNode transform -n "pvc_guide_ofs" -p "pv_loc";
	rename -uid "E4A29159-4D4E-006E-EBF5-419FFB49E893";
	setAttr ".t" -type "double3" 70 7.1054273576010019e-15 1.0978271331186208e-15 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "590BE755-43EF-4EE4-2A1E-889DF055B47A";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "float";
	addAttr -ci true -sn "posRatio" -ln "posRatio" -dv 1 -min 0.5 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 -2.4018926922722371e-14 ;
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
createNode aimConstraint -n "pv_loc_ofs_aimConstraint1" -p "pv_loc_ofs";
	rename -uid "597B004F-489D-1D03-6356-C7BBCD3669BC";
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
	setAttr ".wu" -type "double3" -1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -2.1004547358055279e-15 -1.6523019585180766e-15 
		103.619979749302 ;
	setAttr -k on ".w0";
createNode transform -n "toesRoot_guide" -p "master_guide";
	rename -uid "1AC7258D-4FE3-C4A6-024B-EB8436CA7556";
	setAttr -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
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
	rename -uid "149BFF17-49FC-7EE8-9382-76967859318B";
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
createNode nurbsCurve -n "foot_guideShape1" -p "master_guide";
	rename -uid "07DC06EC-401D-17B5-2085-C6A6A70E4688";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.26773676203117 8.2535382583711187e-16 -19.703581978092036
		-8.1660387114908776e-15 8.0595107077863571e-16 -20.498878453253521
		-11.267736762031188 8.2535382583711157e-16 -19.703581978092036
		-11.689010839838973 1.2470934284616338e-31 10.020851653879564
		-11.267736762031188 -8.2535382583711157e-16 35.552
		-1.0052680407308491e-14 -8.059510707786362e-16 35.552
		11.26773676203117 -8.2535382583711157e-16 35.552
		11.689010839838955 -2.6978565941924595e-32 10.020851653879571
		11.26773676203117 8.2535382583711187e-16 -19.703581978092036
		-8.1660387114908776e-15 8.0595107077863571e-16 -20.498878453253521
		-11.267736762031188 8.2535382583711157e-16 -19.703581978092036
		;
	setAttr ".adot" yes;
createNode transform -n "toe_guide_grp" -p "master_guide";
	rename -uid "E9434EB4-47B9-2E0C-601D-74951C1D5714";
createNode transform -n "toe00_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "AB95BD19-436B-79D7-1EAE-E28C4A2DD642";
	setAttr ".t" -type "double3" -4.0000000000000018 2.6874529845954953e-07 13 ;
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ofs";
	rename -uid "CF5B9636-43E3-1F31-FDA4-2CB6286064F7";
	setAttr ".t" -type "double3" 0 3.9 -0.33 ;
	setAttr ".r" -type "double3" 16.75 0 0 ;
createNode transform -n "toe00_3_guide_ofs" -p "toe00_2_guide";
	rename -uid "374AE08A-484D-2DC8-2BA1-F5856ADCC330";
	setAttr ".t" -type "double3" 9.3312646498588947e-09 0 3.5 ;
createNode transform -n "toe00_3_guide" -p "toe00_3_guide_ofs";
	rename -uid "B338CF4A-4558-72AC-CD52-478B914BFA03";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe00_4_guide_ofs" -p "toe00_3_guide";
	rename -uid "AD86AE9E-4044-FBF3-96E9-C784A0365DC8";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 2.8000000000000007 ;
createNode transform -n "toe00_4_guide" -p "toe00_4_guide_ofs";
	rename -uid "E56B63CC-4459-E226-A753-8EA87FF804E9";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe02_1_guideShape" -p "toe00_4_guide";
	rename -uid "2FEB789C-43BF-2F50-AB30-51A4632D6B85";
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
createNode transform -n "toe00_1_guide_ofs" -p "toe00_2_guide";
	rename -uid "0BFDE420-4FA2-1E9A-FDAE-45B7BA1EE9BC";
	setAttr ".t" -type "double3" 9.3312610971452159e-09 0 -8 ;
createNode transform -n "toe00_1_guide" -p "toe00_1_guide_ofs";
	rename -uid "13138FAF-4EAD-1F3E-30CD-3C9A4A1BDEC7";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "2B7256FE-44E4-17D0-A13E-13BCB9470806";
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
	rename -uid "86844B53-4356-C477-6F66-918484813F12";
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
createNode transform -n "toe01_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "99782F6D-470E-3E3C-E26B-1EA0AB41A0B7";
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ofs";
	rename -uid "3127B792-499F-272C-1F9B-CDB63D4AA21B";
createNode transform -n "toe01_3_guide_ofs" -p "toe01_2_guide";
	rename -uid "4D9BC87D-4EED-C503-53D1-C3A5C6CA375D";
	setAttr ".t" -type "double3" 9.3312699789294129e-09 0 3.5 ;
createNode transform -n "toe01_3_guide" -p "toe01_3_guide_ofs";
	rename -uid "07791CFE-49A2-9766-DA7E-20A9E6B8F152";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe01_4_guide_ofs" -p "toe01_3_guide";
	rename -uid "1A957D6C-4486-5930-3C00-3B818379B840";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 1.4999837812793082 ;
createNode transform -n "toe01_4_guide" -p "toe01_4_guide_ofs";
	rename -uid "36DAC40F-4285-CA07-ED62-B68C7D57E9EB";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe01_5_guide_ofs" -p "toe01_4_guide";
	rename -uid "EBA33A42-44EC-2D03-EC14-6B8EE5022E3E";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 1.3000000000000078 ;
createNode transform -n "toe01_5_guide" -p "toe01_5_guide_ofs";
	rename -uid "C0F55889-44A8-FFB6-1199-9A8110291009";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe01_1_guide_ofs" -p "toe01_2_guide";
	rename -uid "C0107579-40B2-F101-EE14-2593DA0AB72F";
createNode transform -n "toe01_1_guide" -p "toe01_1_guide_ofs";
	rename -uid "531B5FB9-467F-9842-391B-BCA7EA451D18";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe01_1_guide_ofs_pointConstraint1" -p "toe01_1_guide_ofs";
	rename -uid "6A636D70-4600-EF80-2BD2-01A712F084CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_1_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_1_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	setAttr ".rst" -type "double3" 2.0000000093312593 0 -9 ;
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode parentConstraint -n "toe01_2_guide_ofs_parentConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "9995851B-43E9-848B-390C-14AD967712E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_2_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	setAttr ".rst" -type "double3" 0 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0" 3;
	setAttr -k on ".w1";
createNode scaleConstraint -n "toe01_2_guide_ofs_scaleConstraint1" -p "toe01_2_guide_ofs";
	rename -uid "B09EBFE4-472E-6A06-7E33-D9A91AF30EEB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_2_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
createNode transform -n "toe02_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "17C6BDAB-4CA0-CBAF-4F19-1A9F545F8698";
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ofs";
	rename -uid "D9760D92-450E-E6A7-C955-47B9A5C858EB";
createNode transform -n "toe02_3_guide_ofs" -p "toe02_2_guide";
	rename -uid "993F4F94-4A73-1D8E-D3EE-8AA2581528F1";
	setAttr ".t" -type "double3" 9.3312664262157341e-09 0 3.5 ;
createNode transform -n "toe02_3_guide" -p "toe02_3_guide_ofs";
	rename -uid "425ABFCC-4D33-C627-8300-E5BE4202491E";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe02_4_guide_ofs" -p "toe02_3_guide";
	rename -uid "467BC17A-4381-FB62-9C4D-D0AF493BAB8F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 1.5 ;
createNode transform -n "toe02_4_guide" -p "toe02_4_guide_ofs";
	rename -uid "4D805001-4C7F-2014-06E9-90A29914D0E1";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe02_5_guide_ofs" -p "toe02_4_guide";
	rename -uid "00B6FC32-4C3D-65E9-7987-9B8A00F5C3CE";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 1.3000000000000043 ;
createNode transform -n "toe02_5_guide" -p "toe02_5_guide_ofs";
	rename -uid "CF66827F-4A09-CDE3-954B-4292445E9C60";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe02_1_guide_ofs" -p "toe02_2_guide";
	rename -uid "878F183E-4D6E-6973-1A27-49B5DB4C8C5A";
createNode transform -n "toe02_1_guide" -p "toe02_1_guide_ofs";
	rename -uid "B8A05C5F-4AA4-724F-511D-7D8388FFD1AE";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe02_1_guide_ofs_pointConstraint1" -p "toe02_1_guide_ofs";
	rename -uid "B3A55B9C-4D3E-6A13-E91A-F699853982AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_1_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_1_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	setAttr ".rst" -type "double3" 9.3312575444315371e-09 0 -9 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "toe02_2_guide_ofs_parentConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "1303F221-488D-D62A-9FCE-6C8A240305DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_2_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	setAttr ".rst" -type "double3" 0 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "toe02_2_guide_ofs_scaleConstraint1" -p "toe02_2_guide_ofs";
	rename -uid "F4B0514B-4DB2-5E5F-F1E9-CAB658AA21D5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_2_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	rename -uid "C9984894-4372-9BF2-7C22-CA8C527DDA8B";
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ofs";
	rename -uid "53CEB324-49E7-1DAF-D0B5-6295561E8A5C";
createNode transform -n "toe03_3_guide_ofs" -p "toe03_2_guide";
	rename -uid "5881B009-45D4-DEAE-ACD4-73A55633415C";
	setAttr ".t" -type "double3" 9.3312628735020553e-09 0 3.5 ;
createNode transform -n "toe03_3_guide" -p "toe03_3_guide_ofs";
	rename -uid "2F955085-49A8-20D2-0151-F481153FFAA7";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe03_4_guide_ofs" -p "toe03_3_guide";
	rename -uid "6264ED54-4E83-FAAB-7E04-EA83397D6052";
	setAttr ".t" -type "double3" 0 0 1.4999837812793082 ;
createNode transform -n "toe03_4_guide" -p "toe03_4_guide_ofs";
	rename -uid "FFA798B3-4E9D-59EC-2EA9-38AB56A386E6";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe03_5_guide_ofs" -p "toe03_4_guide";
	rename -uid "DD3F245C-4142-B26E-222F-0FAB14CF3F67";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 0 1.3000000000000078 ;
createNode transform -n "toe03_5_guide" -p "toe03_5_guide_ofs";
	rename -uid "ACEF7A86-4979-3175-BADA-C4AA176C1D92";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe03_1_guide_ofs" -p "toe03_2_guide";
	rename -uid "4EA44FCF-44A0-0039-D722-2AB93D6D7806";
createNode transform -n "toe03_1_guide" -p "toe03_1_guide_ofs";
	rename -uid "949EFD49-4D26-4102-110C-FF92D96A6524";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode pointConstraint -n "toe03_1_guide_ofs_pointConstraint1" -p "toe03_1_guide_ofs";
	rename -uid "56616026-4284-E806-8844-B38D7D29588B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_1_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_1_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	setAttr ".rst" -type "double3" -1.9999999906687425 0 -9 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode parentConstraint -n "toe03_2_guide_ofs_parentConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "39EC33C2-4717-62C2-1E11-D99DDBF3958B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_2_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
	setAttr ".rst" -type "double3" 0 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 3;
createNode scaleConstraint -n "toe03_2_guide_ofs_scaleConstraint1" -p "toe03_2_guide_ofs";
	rename -uid "84BD7E23-41B8-1972-ABFC-4EA386E46B03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "toe00_2_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "toe04_2_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
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
createNode transform -n "toe04_2_guide_ofs" -p "toe_guide_grp";
	rename -uid "CDDD9D4B-4909-1517-3031-E5A0B692B87A";
	setAttr ".t" -type "double3" 4 2.6874529845954953e-07 13 ;
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ofs";
	rename -uid "CED9F83D-4C1D-EEB0-CC10-9F860F4BE903";
	setAttr ".t" -type "double3" 0 3.9 -0.33 ;
	setAttr ".r" -type "double3" 16.75 0 0 ;
createNode transform -n "toe04_3_guide_ofs" -p "toe04_2_guide";
	rename -uid "F0283FAB-404E-5153-112F-14A61C3E113A";
	setAttr ".t" -type "double3" 9.3312664262157341e-09 0 3.5 ;
createNode transform -n "toe04_3_guide" -p "toe04_3_guide_ofs";
	rename -uid "E827C2C8-4270-2C53-5E62-E398D014D8EC";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe04_4_guide_ofs" -p "toe04_3_guide";
	rename -uid "AFB41F47-4B65-800A-EB63-F1AD582EC59D";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 0 1.4999837812793082 ;
createNode transform -n "toe04_4_guide" -p "toe04_4_guide_ofs";
	rename -uid "90F76AD1-47B8-F698-B4EF-58A3CD9D9BF0";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe04_5_guide_ofs" -p "toe04_4_guide";
	rename -uid "37771C4E-48C6-5E4C-73C9-8892A10BA22D";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 0 1.3000000000000078 ;
createNode transform -n "toe04_5_guide" -p "toe04_5_guide_ofs";
	rename -uid "3C890558-45A2-A042-BE5B-99B5DCE421BE";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "toe04_1_guide_ofs" -p "toe04_2_guide";
	rename -uid "BAD030EB-4CF2-2A9D-CA95-CCAD62919AEF";
	setAttr ".t" -type "double3" 9.3312557680746977e-09 0 -8 ;
createNode transform -n "toe04_1_guide" -p "toe04_1_guide_ofs";
	rename -uid "7B986E76-4074-7CE4-5DCD-19A5D2EEEAC6";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "C1C645A4-473E-9C60-6EA4-818974A44B4E";
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
	rename -uid "364440FF-4F2C-4A41-21F1-41AE2CA57C86";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".it" no;
createNode transform -n "line_01" -p "line_grp";
	rename -uid "D1E8B092-497F-C8FE-8CDE-888F697DF151";
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
	rename -uid "D1D3B575-492C-899B-DA55-2AA7179BFE83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15 108 6.9363883474575228e-18
		15 91.900000000000006 -1.9721522630525293e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_02" -p "line_grp";
	rename -uid "C16F78DE-40DB-75D9-D219-F59FF5545AE3";
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
	rename -uid "20C12C43-47CE-BD7E-C433-16BF890B4C43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15 91.900000000000006 -1.9721522630525293e-31
		15 49.800000000000004 -8.8817841970012543e-16
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp";
	rename -uid "15E73A22-4153-F23F-5D11-FEACE30456AC";
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
	rename -uid "D89D0ED0-45BE-B506-A042-7E85FDAC4796";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15 49.800000000000004 -8.8817841970012543e-16
		15 7.7000000000000002 1.97215226305253e-31
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "3B6924D3-4E02-4BBE-8529-DF89426235C8";
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
	rename -uid "C7AE8754-40AE-18F1-6E2D-08BB2A26F283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15 7.7000000000000002 1.97215226305253e-31
		14.999999990668735 3.8999999219895667 12.66666692670146
		;
	setAttr ".adot" yes;
createNode transform -n "line_05" -p "line_grp";
	rename -uid "5896F44A-4588-4CE5-1D21-CDADD52FD2AD";
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
	rename -uid "4AC1F272-4EB3-C005-18C0-579441BB05EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14.999999990668735 3.8999999219895667 12.66666692670146
		15 2 19
		;
	setAttr ".adot" yes;
createNode transform -n "line_06" -p "line_grp";
	rename -uid "1D7D71A9-483D-B2DD-831D-87A98DB4941B";
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
	rename -uid "449A1ECD-40A3-EEF2-8FF1-D78386BFE630";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15 49.800000000000004 -8.8817841970012543e-16
		14.999999999999979 49.799999999999926 64.999999999999986
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp2" -p "module_grp";
	rename -uid "E43B9078-4C20-698A-43A5-B0A93EDDCE36";
createNode transform -n "line_09" -p "line_grp2";
	rename -uid "0B117ECF-406D-BC99-9D15-0F8902428F83";
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
	rename -uid "054BF5EA-4511-3453-0EA7-A4AB66EA4301";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		19.000000009331298 2.0843684536753102 18.702684042487896
		19.000000009331277 2.4590236022496286 17.45784127344163
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp2";
	rename -uid "EA12A06C-4E7A-53F5-B32D-C1A0171CE350";
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
	rename -uid "60670E39-4D33-020B-7619-2F8A6D7C5F4B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		19.000000009331277 2.4590236022496286 17.45784127344163
		19.000000009331266 2.8913133302759855 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "line_grp2";
	rename -uid "3DBB491C-40B4-98CF-5B0B-87B644C4FB5E";
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
	rename -uid "913ABFFF-49E9-BAB7-13D4-0B89F7807E33";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		19.000000009331266 2.8913133302759855 16.021499762816852
		19 3.9000002687452984 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp2";
	rename -uid "7892A0F1-484E-96C0-2474-0EA0D6681F8F";
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
	rename -uid "FD343F5F-44B5-0822-68AF-4B834CB286AA";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		19 3.9000002687452984 12.67
		19.000000009331256 6.2055704138180134 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp2";
	rename -uid "6C26F7DC-4F27-26B6-463A-65B653219ECB";
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
	rename -uid "B27F263B-486D-2B73-75D1-4AAA31AC2D0B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		17.000000009331281 2.0843684536753102 18.702684042487896
		17.000000009331263 2.4590236022496286 17.45784127344163
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp2";
	rename -uid "D324C3D4-4630-D093-8886-BEA096B01CF4";
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
	rename -uid "FCDC4624-42E9-0871-5745-40B910F77E02";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		17.000000009331263 2.4590236022496286 17.45784127344163
		17.000000009331263 2.8913133302759855 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp2";
	rename -uid "376956C2-4EF3-446E-C061-78BF5CF43E2E";
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
	rename -uid "A32A3358-4DA8-C5FF-5B54-BBB3F60ADE00";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		17.000000009331263 2.8913133302759855 16.021499762816852
		17 3.9000002687452984 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "line_grp2";
	rename -uid "F83D6A89-434E-32FA-702C-F5A6DCFBBCD8";
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
	rename -uid "84338555-4BE7-736A-414C-05A4679D848F";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		17 3.9000002687452984 12.67
		17.000000009331256 6.2055704138180134 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp2";
	rename -uid "B38E829A-41B8-4B10-5710-C18931BC7F13";
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
	rename -uid "D2B270E8-4EE5-C54B-7156-F783BFBBB003";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15.000000009331263 2.0843637795005341 18.702699573070337
		15.000000009331268 2.4590189280748516 17.457856804024075
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp2";
	rename -uid "6DB74DE8-4F58-BD36-0E25-7191ED54456B";
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
	rename -uid "164AFE2E-45D1-E8EF-2922-2D9876984F78";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15.000000009331268 2.4590189280748516 17.457856804024075
		15.000000009331266 2.8913133302759855 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp2";
	rename -uid "94A48BB8-4609-999B-6795-95B435112AF2";
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
	rename -uid "A8985E51-4D17-6278-ADC4-27906B09AF46";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15.000000009331266 2.8913133302759855 16.021499762816852
		15 3.9000002687452984 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp2";
	rename -uid "8ED07188-4A0B-5C59-DCB8-D4A547E1E804";
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
	rename -uid "A3A428EA-47B3-722C-B7F9-119426A21895";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		15 3.9000002687452984 12.67
		15.000000009331259 6.2055704138180134 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_21" -p "line_grp2";
	rename -uid "483F9C99-43C0-B27D-89E3-728F5BB295E4";
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
	rename -uid "26D05EC2-481A-27BB-6107-D2B7363B915B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		13.000000009331272 2.0843684536753093 18.702684042487896
		13.00000000933127 2.4590236022496286 17.45784127344163
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp2";
	rename -uid "C6A912E4-4DCF-0DAA-5A9F-EFB91A050D0E";
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
	rename -uid "656710FF-4464-1F5A-B6DC-D9A94CE66A99";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		13.00000000933127 2.4590236022496286 17.45784127344163
		13.000000009331268 2.8913133302759855 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp2";
	rename -uid "EFEC2193-4747-22DE-9A16-BF8D8482355A";
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
	rename -uid "E967F407-43CB-F491-6723-F2A6EC50DF96";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		13.000000009331268 2.8913133302759855 16.021499762816852
		12.999999999999998 3.9000002687452984 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp2";
	rename -uid "573F2844-4377-9A39-BFFA-85A33D496970";
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
	rename -uid "DC7C6F96-4DE7-563A-3223-F7BEF2902AB0";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		12.999999999999998 3.9000002687452984 12.67
		13.000000009331259 6.2055704138180134 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_25" -p "line_grp2";
	rename -uid "A6560276-4CAF-8B8D-576D-8EAFD58F7AB0";
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
	rename -uid "8D5BCB18-4D3E-E256-129A-BFAEE0E0CB83";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		11.000000009331265 2.084363779500535 18.702699573070333
		11.000000009331263 2.8913133302759855 16.021499762816852
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "line_grp2";
	rename -uid "0B406C2A-4919-B408-B835-C4842642A380";
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
	rename -uid "17DA4C7D-40B2-2770-A80A-61809984711D";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		11.000000009331263 2.8913133302759855 16.021499762816852
		10.999999999999998 3.9000002687452984 12.67
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "line_grp2";
	rename -uid "2C525892-4491-16CE-2233-FAAAE3C5902A";
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
	rename -uid "FFE738CD-4AE8-8C28-25FE-45B5EF7FBB67";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10.999999999999998 3.9000002687452984 12.67
		11.000000009331259 6.2055704138180134 5.0094291135614846
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp3" -p "module_grp";
	rename -uid "44F7064C-43EF-54EF-6928-7493A8C4DC1E";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
createNode transform -n "line_07" -p "line_grp3";
	rename -uid "B38FFBF6-454B-A2FF-606E-27B543033110";
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
	rename -uid "B0A51DE0-4616-CA01-B1F8-62AB8B20C10B";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20 44.800000000000004 -7.4769980559214023e-16
		20 7.7000000000000002 1.5005018192738022e-15
		;
	setAttr ".adot" yes;
createNode transform -n "line_08" -p "line_grp3";
	rename -uid "1BF4928C-44E3-F27F-843F-939A0AB7C457";
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
	rename -uid "52C3E090-414B-83C1-61CC-D7A735AB5E28";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		10 7.7000000000000002 -6.1232339957367663e-16
		10 44.800000000000004 -1.9723466047394937e-15
		;
	setAttr ".adot" yes;
createNode transform -n "fgrRef_grp" -p "module_grp";
	rename -uid "CFAED80F-4D60-5C53-A39F-A28806EA0ECA";
createNode transform -n "null1" -p "fgrRef_grp";
	rename -uid "C47DE137-4CD7-5C1E-2885-7D82C0921DCE";
	setAttr ".t" -type "double3" 19 2.6874529845954953e-07 13 ;
createNode transform -n "fgrRef16" -p "null1";
	rename -uid "D1400EDF-4E80-5347-29F2-ECB4ED557DB4";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999883359292 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef16_poiCst" -p "fgrRef16";
	rename -uid "03A0EB5E-4DD2-4445-DB18-42BBB474BC94";
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
	setAttr ".rst" -type "double3" 20.000000009331256 2.6874529845954953e-07 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef16_aimCst" -p "fgrRef16";
	rename -uid "56DA5064-4BB0-FA37-A086-BCAF5B07F456";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -89.999999933169804 0 ;
	setAttr -k on ".w0";
createNode mesh -n "fgrRefShape" -p "fgrRef16";
	rename -uid "958BEF28-4510-998F-2DE3-B8ABA3C3BC28";
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
createNode transform -n "fgrRef17" -p "null1";
	rename -uid "202A282F-4A68-0A28-18D9-59AB9E72584C";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999733392375 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef17_poiCst" -p "fgrRef17";
	rename -uid "B1AFE2E5-4905-17C8-2977-33AFDCC242F0";
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
	setAttr ".rst" -type "double3" 20 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef17_aimCst" -p "fgrRef17";
	rename -uid "AF64AC2D-4C88-9AB8-E921-D8A7BF077362";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999847245078 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef18" -p "null1";
	rename -uid "92FDDEB9-4FA9-C698-0EE9-FEAF968AD181";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999289 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef18_poiCst" -p "fgrRef18";
	rename -uid "0F02EFF1-4BAF-5565-A381-87B43E7DDFCB";
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
	setAttr ".rst" -type "double3" 20.000000009331266 2.6874529845954953e-07 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef18_aimCst" -p "fgrRef18";
	rename -uid "30DBCFC7-46B8-EDD7-F0A4-449EE445C9C0";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999588 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef19" -p "null1";
	rename -uid "E9726308-4545-9FC4-938E-3790C1EA8EE7";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999998346 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef19_poiCst" -p "fgrRef19";
	rename -uid "DA8E05BE-4F47-16E7-F4D6-3BBF47B66C06";
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
	setAttr ".rst" -type "double3" 20.000000009331277 2.6874529845954953e-07 17.999983781279308 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef19_aimCst" -p "fgrRef19";
	rename -uid "562B50C6-48F9-7DCF-8F09-819C539178D7";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999062 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null1_scaleConstraint1" -p "null1";
	rename -uid "12C1D926-4D13-5078-3B7C-62B6DB311A7A";
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
createNode transform -n "null2" -p "fgrRef_grp";
	rename -uid "5D60306A-4527-A767-75EF-3DA39F3BE172";
	setAttr ".t" -type "double3" 17 2.6874529845954953e-07 13 ;
createNode transform -n "fgrRef15" -p "null2";
	rename -uid "22C1037A-4957-76B5-F226-9485915E6099";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999998634 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef15_poiCst" -p "fgrRef15";
	rename -uid "064E9E56-47B9-1B6A-1ED1-269AEF9583D6";
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
	setAttr ".rst" -type "double3" 18.000000009331263 2.6874529845954953e-07 17.999983781279308 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef15_aimCst" -p "fgrRef15";
	rename -uid "9EC3CD3C-4E35-13C0-A160-22A73577255F";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999218 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef14" -p "null2";
	rename -uid "F8B8992B-4FA5-3787-929C-1987C4876099";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef14_poiCst" -p "fgrRef14";
	rename -uid "CAC0633A-42CE-60CC-F886-01ABEDCD08BE";
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
	setAttr ".rst" -type "double3" 18.000000009331263 2.6874529845954953e-07 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef14_aimCst" -p "fgrRef14";
	rename -uid "32126DD2-4FC0-B1F6-AE2B-E68CA2ED0D0F";
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
	setAttr ".rsrr" -type "double3" 0 -90 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef13" -p "null2";
	rename -uid "A4B3796E-40BC-5818-1F8E-B4A18B21E9D5";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999733392475 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef13_poiCst" -p "fgrRef13";
	rename -uid "9B20B3AA-44A1-AAA1-F01D-B9A5C14F6DEE";
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
	setAttr ".rst" -type "double3" 18 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef13_aimCst" -p "fgrRef13";
	rename -uid "0028F480-4CBE-9E0F-2C3F-2CA48FD93841";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999847245149 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef12" -p "null2";
	rename -uid "6A9DAD9C-462D-5F24-08A1-AA865EAD5086";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999883359292 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef12_poiCst" -p "fgrRef12";
	rename -uid "0DF6572D-40A6-F50A-816E-94BD40EFC6C1";
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
	setAttr ".rst" -type "double3" 18.000000009331256 2.6874529845954953e-07 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef12_aimCst" -p "fgrRef12";
	rename -uid "D47CBA05-4C01-CD90-AC06-71AD88094676";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -89.999999933169804 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null2_scaleConstraint1" -p "null2";
	rename -uid "9A5E97CC-471C-070C-87BE-7D8E1B914882";
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
createNode transform -n "null3" -p "fgrRef_grp";
	rename -uid "7AC3D4D9-419F-8FA5-4D01-398608B52BE9";
	setAttr ".t" -type "double3" 15 2.6874529845954953e-07 13 ;
createNode transform -n "fgrRef8" -p "null3";
	rename -uid "09175B5B-4FFC-525C-DC13-5E98BC8B0A76";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999883359258 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef8_poiCst" -p "fgrRef8";
	rename -uid "EA96A473-4E33-0053-3123-E68C9C8370CA";
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
	setAttr ".rst" -type "double3" 16.000000009331259 2.6874529845954953e-07 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef8_aimCst" -p "fgrRef8";
	rename -uid "FB6D9155-40FC-449A-F617-0FBFF112A2C0";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -89.999999933169775 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef9" -p "null3";
	rename -uid "911DBB4C-40FC-206D-7DC7-CAA4448406CF";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999733392375 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef9_poiCst" -p "fgrRef9";
	rename -uid "B29807DD-4238-4176-3BED-088CB8027302";
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
	setAttr ".rst" -type "double3" 16 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef9_aimCst" -p "fgrRef9";
	rename -uid "A5448896-448E-0855-0961-A79098CD7519";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999847245078 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef10" -p "null3";
	rename -uid "9A0B1CEA-48C6-5AB6-4867-2EABE3FA7E1E";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999889 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef10_poiCst" -p "fgrRef10";
	rename -uid "BA4F7130-4FFB-5980-DE5E-89B4AA4B386B";
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
	setAttr ".rst" -type "double3" 16.000000009331266 2.6874529845954953e-07 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef10_aimCst" -p "fgrRef10";
	rename -uid "6BCC04FD-4963-1F68-1795-A88919D0FF39";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999929 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef11" -p "null3";
	rename -uid "A7294B1B-4250-920E-21F3-86ABF026C61F";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.999999999999997 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef11_poiCst" -p "fgrRef11";
	rename -uid "4D2C8D4F-461F-DA3F-DF9C-2F8605408902";
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
	setAttr ".rst" -type "double3" 16.000000009331266 2.6874529845954953e-07 18 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef11_aimCst" -p "fgrRef11";
	rename -uid "DE70E1BB-4640-6000-214A-A190AC1CB5CF";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999829 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null3_scaleConstraint1" -p "null3";
	rename -uid "7EC198D8-4583-4958-DFBA-4486D0BF6D39";
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
	rename -uid "8C8C8814-4D5B-E0B3-6602-22B53E6742B8";
	setAttr ".t" -type "double3" 12.999999999999998 2.6874529845954953e-07 13 ;
createNode transform -n "fgrRef4" -p "null4";
	rename -uid "C7D81AE2-488A-2E98-CB53-F4B227792F7E";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999883359258 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef4_poiCst" -p "fgrRef4";
	rename -uid "E457E5C9-489A-7ED8-194B-D6A5830B4DA0";
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
	setAttr ".rst" -type "double3" 14.000000009331259 2.6874529845954953e-07 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef4_aimCst" -p "fgrRef4";
	rename -uid "C66484E9-430F-232C-02CE-518009DB616D";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -89.999999933169775 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef5" -p "null4";
	rename -uid "CD1540A7-4DA0-F2AE-D863-648A001EC7BD";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999733392286 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef5_poiCst" -p "fgrRef5";
	rename -uid "1596780D-4A5E-3465-4FCF-01AE07D59C49";
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
	setAttr ".rst" -type "double3" 13.999999999999998 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef5_aimCst" -p "fgrRef5";
	rename -uid "F9183270-45DA-D302-6653-62BFEE5A2E6B";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999847245036 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef6" -p "null4";
	rename -uid "0B418AA0-40BD-313C-EE67-AA9CF38B52BB";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999889 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef6_poiCst" -p "fgrRef6";
	rename -uid "1ABD06F7-42D7-9C55-38C3-C099329345A0";
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
	setAttr ".rst" -type "double3" 14.000000009331268 2.6874529845954953e-07 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef6_aimCst" -p "fgrRef6";
	rename -uid "920DA55B-44FB-1170-6EB4-2693590A4397";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999929 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef7" -p "null4";
	rename -uid "BFA23818-4DED-D5A5-676F-FCAEF83454FE";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999867 0 -1.0000000000000002 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef7_poiCst" -p "fgrRef7";
	rename -uid "E1D3E367-4E39-DF4F-6902-B2AED0ADC62E";
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
	setAttr ".rst" -type "double3" 14.00000000933127 2.6874529845954953e-07 17.999983781279308 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef7_aimCst" -p "fgrRef7";
	rename -uid "F13699BA-4E9F-6978-DEE8-74A17679A357";
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
	setAttr ".rsrr" -type "double3" -3.9145288387242988e-14 -89.999999999999915 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null4_scaleConstraint1" -p "null4";
	rename -uid "E8360D7C-4129-48D3-F410-7489C3249279";
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
createNode transform -n "null5" -p "fgrRef_grp";
	rename -uid "91F4FE1B-40B4-5E24-A85E-A0AC0C7A02A9";
	setAttr ".t" -type "double3" 10.999999999999998 2.6874529845954953e-07 13 ;
createNode transform -n "fgrRef1" -p "null5";
	rename -uid "E8F20D84-4921-E8E9-7ADF-02A470DF3149";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999883359258 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef1_poiCst" -p "fgrRef1";
	rename -uid "C8339034-4861-8AE5-D014-9981FCC92A95";
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
	setAttr ".rst" -type "double3" 12.000000009331259 2.6874529845954953e-07 5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef1_aimCst" -p "fgrRef1";
	rename -uid "B323E62C-4B83-1BFF-20D1-EDAC9DDD6C9C";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -89.999999933169775 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef2" -p "null5";
	rename -uid "CBE74877-4E04-2E61-6E59-39A20CDE57BC";
	setAttr ".s" -type "double3" 1.0000000000000002 2 2 ;
	setAttr ".rp" -type "double3" -1.0000000000000002 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999733392553 0 -1.0000000000000004 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" -2.2204460492503141e-16 0 0 ;
createNode pointConstraint -n "fgrRef2_poiCst" -p "fgrRef2";
	rename -uid "DE3FD3CB-4E90-806A-DB78-A69001361B92";
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
	setAttr ".rst" -type "double3" 11.999999999999998 2.6874529845954953e-07 13 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef2_aimCst" -p "fgrRef2";
	rename -uid "5888C826-42BF-FCE9-B352-0EA54834474E";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999847245121 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef3" -p "null5";
	rename -uid "3A33FF3C-4EDF-B17F-9548-AF9C58535AE1";
	setAttr ".s" -type "double3" 1 2 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.99999999999999922 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef3_poiCst" -p "fgrRef3";
	rename -uid "E615E644-4D52-E2B4-A04D-D6834E5A83B5";
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
	setAttr ".rst" -type "double3" 12.000000009331263 2.6874529845954953e-07 16.5 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef3_aimCst" -p "fgrRef3";
	rename -uid "7FCA7ACE-4A17-C995-97DE-EAAD6A25F05D";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null5_scaleConstraint1" -p "null5";
	rename -uid "801A767B-4DEA-373D-BA92-3696FFAF9399";
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
createNode transform -n "plane_normal_grp" -p "module_grp";
	rename -uid "E6C402B6-4EDD-0520-1821-94B05084F46F";
	setAttr ".v" no;
createNode transform -n "pPlane1" -p "plane_normal_grp";
	rename -uid "5952DD5D-4396-4241-8329-36B825AC554F";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "C4631DF5-4DF1-7A94-8F87-9E83598C20DC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pPlaneShape1Orig" -p "pPlane1";
	rename -uid "AE88DA2D-4239-1CF8-21A9-1CBFDBB48250";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 8 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:2]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[2]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0 0 1 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5;
	setAttr -s 3 ".ed[0:2]"  0 1 0 0 2 0 2 1 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 0 -3 -2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cluster1Handle" -p "plane_normal_grp";
	rename -uid "5DB24147-4978-C6B4-48D1-5C9BE5D706D0";
	setAttr ".rp" -type "double3" -0.5 0 -0.5 ;
	setAttr ".sp" -type "double3" -0.5 0 -0.5 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "A61C8289-4BB9-038A-CA21-E4ACBB10D0E2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 -0.5 ;
createNode pointConstraint -n "cluster1Handle_pointConstraint1" -p "cluster1Handle";
	rename -uid "D23C012F-4A5C-12CF-A229-338C5330DEBF";
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
	setAttr ".rst" -type "double3" 15.5 91.9 0.49999999999999911 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2Handle" -p "plane_normal_grp";
	rename -uid "6C80512C-40D7-12B1-5F33-A58C6162B35C";
	setAttr ".rp" -type "double3" -0.5 0 0.5 ;
	setAttr ".sp" -type "double3" -0.5 0 0.5 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "18D18710-4219-3B06-3819-10A1FD582B41";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 0.5 ;
createNode pointConstraint -n "cluster2Handle_pointConstraint1" -p "cluster2Handle";
	rename -uid "B126C125-4186-87B1-29B5-57A0BE14DAAA";
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
	setAttr ".rst" -type "double3" 15.5 45.883275791746748 17.715625753524648 ;
	setAttr -k on ".w0";
createNode transform -n "cluster3Handle" -p "plane_normal_grp";
	rename -uid "CBA5A0D4-4E0B-0421-6F79-4E9D1AB97183";
	setAttr ".rp" -type "double3" 0.5 0 0.5 ;
	setAttr ".sp" -type "double3" 0.5 0 0.5 ;
createNode clusterHandle -n "cluster3HandleShape" -p "cluster3Handle";
	rename -uid "F878B459-4DD1-5EC2-423E-0DA9B98E44D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0.5 0 0.5 ;
createNode pointConstraint -n "cluster3Handle_pointConstraint1" -p "cluster3Handle";
	rename -uid "7836D82D-46FF-7D96-9939-1FB6B9E96A18";
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
	setAttr ".rst" -type "double3" 14.5 7.7 -0.50000000000000089 ;
	setAttr -k on ".w0";
createNode transform -n "pole_normal_loc" -p "plane_normal_grp";
	rename -uid "2522719D-4633-2F50-D575-6680E7EC9F51";
	setAttr ".t" -type "double3" 15 91.9 -8.8817841970012563e-16 ;
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".dla" yes;
createNode locator -n "pole_normal_locShape" -p "pole_normal_loc";
	rename -uid "F38713BF-4DFB-838B-6E56-1397C2E216C8";
	setAttr -k off ".v";
createNode normalConstraint -n "locator1_normalConstraint1" -p "pole_normal_loc";
	rename -uid "948D5CE2-4BAE-B04E-FECB-1182BCF502F3";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".t" -type "double3" 189.12004590896149 170.28675445973249 245.88600359950655 ;
	setAttr ".r" -type "double3" -21.938352733024367 397.79999999884433 0 ;
	setAttr ".rp" -type "double3" 9.0523144535836764e-12 -9.5923269327613525e-13 -1.4551915228366852e-11 ;
	setAttr ".rpt" -type "double3" -9.0526132061662243e-12 -3.9591234438924834e-12 -1.892917819089332e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 322.05074372729365;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 14.999999999999993 54.017494394356305 22.407977099924061 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C26C709E-427B-9FAF-006E-479957AA5F62";
	setAttr ".t" -type "double3" 0 1000.3279848667366 -0.50203763068761464 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A557BBCA-4E3F-918D-EA2B-D0824D7F4CBC";
	setAttr -k off ".v";
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
	setAttr ".t" -type "double3" -0.52536408132029599 0 1000.1014067882137 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EBE1F472-4B19-95B5-7032-02B7F660A422";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 959.13597945836193;
	setAttr ".ow" 10.526315789473689;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.52536408132029599 0 40.965427329851778 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "998302DF-4A25-D2FE-09B0-24A5C61EAE93";
	setAttr ".t" -type "double3" 1008.662117575169 3.9128615746203534 13.14149657137577 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35324118-40AF-2D58-3D90-F6B12F0BE94B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 993.662117668919;
	setAttr ".ow" 4.81070509588635;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 14.999999906249995 4.4351960376308863 12.848765991031211 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "upr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "lwr_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "palm_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "ball_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "tip_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|hip_guide_ofs|hip_guide|hip_guideShape" "pvc_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|ulnaEnd_guideShape" "ulnaEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|ulnaEnd_guideShape" "radius_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|ulnaEnd_guideShape" "ulna_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|lwr_guide_ofs|lwr_guide|patella_guide|ulnaEnd_guideShape" "radiusEnd_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_toePos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_heelPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|palm_inPos_ofs|palm_inPos_guide|palm_toePos_guideShape" "palm_outPos_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|toe00_3_guide_ofs|toe00_3_guide|toe00_4_guide_ofs|toe00_4_guide|toe02_1_guideShape" "toe01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe02_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|toe_guide_grp|toe00_2_guide_ofs|toe00_2_guide|dotLineShape1" "toe04_2_guide" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef1" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef2" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef3" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef4" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef5" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef6" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef7" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef8" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef9" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef10" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef11" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef12" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef13" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef14" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef15" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef17" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef18" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape" "fgrRef19" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "568529A2-4AED-8BF8-A06C-8E9890B37693";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3A65F126-49FC-C3D3-F7ED-468066C2F152";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DADD2DBF-43D9-B3D8-987D-C6B3319B1824";
createNode displayLayerManager -n "layerManager";
	rename -uid "E41B85DB-40C8-E2D0-78D1-D5860AD581EC";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8A4B34AA-439F-FDC0-775D-53B5CE5618C9";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 941\n            -height 477\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 941\n            -height 477\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 941\\n    -height 477\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 941\\n    -height 477\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode groupId -n "groupId4037";
	rename -uid "5C1DE2B4-461D-5ADC-0B5A-218E194E9069";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4044";
	rename -uid "32F1B97B-43C8-1C03-2AF2-42AB63033C7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4051";
	rename -uid "85C0C984-4E92-FA5D-09C7-298FB5DEB330";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4058";
	rename -uid "CA0ACB2E-438E-A44C-AB0D-AB8B2B9517F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4065";
	rename -uid "7CC59408-49D7-3750-C9EF-22AC2C0E817F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4072";
	rename -uid "D1D4C297-4514-8EE2-9A41-A690D7BC5FF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4086";
	rename -uid "BA794686-4C22-5AAF-D09E-778248E62C68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4093";
	rename -uid "E6642010-4CA5-B686-2595-C68DA6D4E76F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4100";
	rename -uid "9512033D-448C-1210-E0E3-3ABBB57908D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4107";
	rename -uid "9606F48B-44EC-F25E-54D7-F5AE96DDFCAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4121";
	rename -uid "DAB504BA-4C45-187A-068D-2A9B249CA31B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4128";
	rename -uid "5D8147F8-4EBB-0F89-BD1A-86B5FA18542D";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "DCM_1";
	rename -uid "950BD334-4606-8DA6-90E8-75BC5C827661";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "20326255-419E-02F5-82FA-429D556532B4";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "10C86382-4B89-EAF5-1BA8-588A5322F8BB";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "FBFE1AC0-4A05-15A8-0AA8-2EA7EE24B403";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "993F568A-4DE6-D067-BF9A-608F75C224D5";
createNode decomposeMatrix -n "DCM_6";
	rename -uid "ED91D955-4606-74C6-1157-99B8CB4904BA";
createNode decomposeMatrix -n "DCM_7";
	rename -uid "B81E8A19-431A-64B3-DEC5-C58C468AD23B";
createNode nodeGraphEditorInfo -n "lf_toes_lf_leg_guide_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F08B6309-46FD-5ED2-EDBE-54B34FE18CDE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 1095.2380517172453 44.047617297323995 ;
createNode groupId -n "lf_toes_groupId4037";
	rename -uid "14E50360-4433-931B-0C04-A5AB6D9383DE";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4044";
	rename -uid "9DF95F52-422F-4704-1564-B89EECF07F62";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4051";
	rename -uid "0D58EA8C-4DD9-4A19-0774-4EAE85934A52";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4058";
	rename -uid "DC17F00F-40A5-9429-367F-3A96DB33D9EB";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4065";
	rename -uid "925A1B75-49EF-31AE-C790-D9AFFD0BB701";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4072";
	rename -uid "AAE14BF1-4542-AE34-6F3A-4ABD32506430";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4086";
	rename -uid "1EBFE5F5-4439-C644-4702-62BBE2FE5BA3";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4093";
	rename -uid "05618D71-4846-BAF6-B149-0EA9B8AA77D9";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4100";
	rename -uid "7D08D613-49EB-E701-8499-8DB010B66A88";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4107";
	rename -uid "EDAE4779-4B44-7C02-F920-5D85DBBFF186";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4121";
	rename -uid "EC5436F5-4A1E-1A6C-CED6-B3B345F0E278";
	setAttr ".ihi" 0;
createNode groupId -n "lf_toes_groupId4128";
	rename -uid "3D61C2B7-4265-6823-EDD7-42B96667DCDE";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B5690400-4026-D517-3379-648E268F884A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "FD376379-4555-5BB5-ADC3-DBB50DB8A6AE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "lf_toes_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A32A8B32-4DE6-4086-621A-9C87887035C3";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -4538952.8537142342 -1211.7321493162331 ;
	setAttr ".tgi[0].vh" -type "double2" -4532457.8801846411 2561.732095672055 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "3B3EB99C-4025-3D97-F88E-FC80725EC6DB";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "DCM_8";
	rename -uid "26F3A6AB-4464-0ACB-D3B7-ECBEB022ACDF";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "75B1242A-47F3-4971-84DE-5986B4C4DB01";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "B6D3AE75-4F48-E8FE-B631-2EB17DC85E83";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "E5D64B72-4E33-A90A-0271-9F871F6E0F16";
createNode condition -n "condition1";
	rename -uid "F9809A50-4008-1956-DDB9-7C8385875661";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multDoubleLinear -n "multDoubleLinear1";
	rename -uid "2A8FE552-4561-39E3-8BBF-719EFE1C9836";
	setAttr ".i2" 1;
createNode decomposeMatrix -n "DCM_12";
	rename -uid "C457917C-454D-45BA-E960-098A41B14CA5";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "19DB831D-429F-3624-83D5-C2B76C0D4EDD";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "916ED633-49CA-6626-9A7D-CEAA1B1F4B1D";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "9A3D2BED-4097-0AE2-EE4A-0981AC6A3998";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "CFA8EEF5-48BE-AA60-F735-56A39C5FB552";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "1E9F689F-4ECA-53CB-A978-69B36A496A62";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "88A6BD1F-427E-AB1A-685E-669BA8021CB0";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "AE275509-4786-F640-FACC-35BC3E794FD7";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "918B69CF-481D-EF1A-AF54-0692FA9F61BA";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "8F4663F0-49A7-5423-77AB-94A3996FF9C6";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "B8AB7B79-4BA9-D385-E381-97A41D3DE42E";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "52B514E7-4F14-902A-8DDE-A089708723DB";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "2777908D-4AA3-5C05-1864-1EB22F8341AA";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "1C3F4212-479C-09B2-9992-D081E587D056";
createNode decomposeMatrix -n "DCM_26";
	rename -uid "F03A9FF8-4626-8A81-C84A-569CAECB0E38";
createNode decomposeMatrix -n "DCM_27";
	rename -uid "43F2CBA3-4E0A-3EF3-92FB-E39BF084C968";
createNode decomposeMatrix -n "DCM_28";
	rename -uid "B56D635A-4381-3725-3F68-77BC51FDDF5A";
createNode decomposeMatrix -n "DCM_29";
	rename -uid "9A3035DB-4DC7-81B8-CDDF-0199C5DE0A8D";
createNode decomposeMatrix -n "DCM_30";
	rename -uid "B72E8EDA-485B-8C8E-A466-C1A97553104F";
createNode decomposeMatrix -n "DCM_31";
	rename -uid "3AAE5F80-412E-0448-5094-568D8DF2AB3C";
createNode decomposeMatrix -n "DCM_32";
	rename -uid "89714407-4CFF-9213-5908-FC82ADE7AE76";
createNode decomposeMatrix -n "DCM_33";
	rename -uid "6275C520-4252-73CB-6132-76ACE5F7804B";
createNode decomposeMatrix -n "DCM_34";
	rename -uid "D183A12A-45E2-2824-0162-24910DC07777";
createNode decomposeMatrix -n "DCM_35";
	rename -uid "879BB82B-47C0-5AAD-E862-8AB4A92D643E";
createNode lambert -n "lambert2";
	rename -uid "5625579C-4B10-6655-84B2-27825E5780AC";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "C032F0DE-460A-E222-11FB-73AD22B0FDF0";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "9C5ECB40-42BA-2243-D625-D3A2261C13BC";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B17A2A72-4719-EC58-BFC6-468F817A4400";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1472058.2748389931 -3585.1140658253066 ;
	setAttr ".tgi[0].vh" -type "double2" -1469949.9415894372 4933.9235360379571 ;
createNode cluster -n "cluster1";
	rename -uid "AAA5FC15-40BA-F456-A79A-EBA74CA536ED";
	setAttr ".ip[0].gtg" -type "string" "cluster1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster2";
	rename -uid "B2127200-4EBE-5635-F2CA-C39E4C8413C6";
	setAttr ".ip[0].gtg" -type "string" "cluster2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode cluster -n "cluster3";
	rename -uid "102E82F4-4150-C7D6-4D28-CC958A778375";
	setAttr ".ip[0].gtg" -type "string" "cluster3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode condition -n "condition_tz";
	rename -uid "89F6B5B8-4896-77E8-B6DC-F99A573D7FC0";
	setAttr ".op" 2;
	setAttr ".st" -0.0010000000474974513;
	setAttr ".ct" -type "float3" 5 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "condition_ty";
	rename -uid "4517BA1C-4FE6-A4D7-67C1-5E90C2987383";
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multDoubleLinear -n "multDoubleLinear2";
	rename -uid "5C33B03C-4985-8D09-5C31-90A3097DA54B";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "8671A70E-4C4D-CC01-EC1D-BE80E596118C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 256.04680400287117 -1256.5972327291408 ;
	setAttr ".tgi[0].vh" -type "double2" 1921.734109136172 46.417608313858629 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 252.47541809082031;
	setAttr ".tgi[0].ni[0].y" -203.41737365722656;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 451.63272094726562;
	setAttr ".tgi[0].ni[1].y" -0.56245028972625732;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1107.142822265625;
	setAttr ".tgi[0].ni[2].y" -12.857142448425293;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 797.82830810546875;
	setAttr ".tgi[0].ni[3].y" -226.45741271972656;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1107.142822265625;
	setAttr ".tgi[0].ni[4].y" -118.57142639160156;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 488.12811279296875;
	setAttr ".tgi[0].ni[5].y" -997.7423095703125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1107.142822265625;
	setAttr ".tgi[0].ni[6].y" -224.28572082519531;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1107.142822265625;
	setAttr ".tgi[0].ni[7].y" -330;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1107.142822265625;
	setAttr ".tgi[0].ni[8].y" -435.71429443359375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
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
	setAttr -s 20 ".hyp";
	setAttr ".hyp[83146].isc" yes;
	setAttr ".hyp[83147].isc" yes;
	setAttr ".hyp[83148].isc" yes;
	setAttr ".hyp[83149].isc" yes;
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
	setAttr ".hyp[85285].isc" yes;
	setAttr ".hyp[85286].isc" yes;
	setAttr ".hyp[85287].isc" yes;
	setAttr ".hyp[85288].isc" yes;
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
connectAttr "ball_guide_ofs_pointConstraint1.ctx" "ball_guide_ofs.tx";
connectAttr "ball_guide_ofs_pointConstraint1.cty" "ball_guide_ofs.ty";
connectAttr "ball_guide_ofs_pointConstraint1.ctz" "ball_guide_ofs.tz";
connectAttr "ball_guide_ofs_aimConstraint1.crx" "ball_guide_ofs.rx";
connectAttr "ball_guide_ofs_aimConstraint1.cry" "ball_guide_ofs.ry";
connectAttr "ball_guide_ofs_aimConstraint1.crz" "ball_guide_ofs.rz";
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
connectAttr "master_guide.toeBones" "toesRoot_guide.v" -l on;
connectAttr "toesRoot_guide_pointConstraint1.ctx" "toesRoot_guide.tx";
connectAttr "toesRoot_guide_pointConstraint1.cty" "toesRoot_guide.ty";
connectAttr "toesRoot_guide_pointConstraint1.ctz" "toesRoot_guide.tz";
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
connectAttr "toe00_1_guide.t" "toe01_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toe00_1_guide.rp" "toe01_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toe00_1_guide.rpt" "toe01_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toe00_1_guide.pm" "toe01_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe01_1_guide_ofs_pointConstraint1.w0" "toe01_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe04_1_guide.t" "toe01_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toe04_1_guide.rp" "toe01_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toe04_1_guide.rpt" "toe01_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toe04_1_guide.pm" "toe01_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe01_1_guide_ofs_pointConstraint1.w1" "toe01_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs.ro" "toe01_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe01_2_guide_ofs.pim" "toe01_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe01_2_guide_ofs.rp" "toe01_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe01_2_guide_ofs.rpt" "toe01_2_guide_ofs_parentConstraint1.crt";
connectAttr "toe00_2_guide.t" "toe01_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toe00_2_guide.rp" "toe01_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toe00_2_guide.rpt" "toe01_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toe00_2_guide.r" "toe01_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toe00_2_guide.ro" "toe01_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toe00_2_guide.s" "toe01_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "toe01_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_parentConstraint1.w0" "toe01_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide.t" "toe01_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toe04_2_guide.rp" "toe01_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toe04_2_guide.rpt" "toe01_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toe04_2_guide.r" "toe01_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toe04_2_guide.ro" "toe01_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toe04_2_guide.s" "toe01_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toe04_2_guide.pm" "toe01_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe01_2_guide_ofs_parentConstraint1.w1" "toe01_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe01_2_guide_ofs.pim" "toe01_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toe00_2_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe01_2_guide_ofs_scaleConstraint1.w0" "toe01_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide.s" "toe01_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toe04_2_guide.pm" "toe01_2_guide_ofs_scaleConstraint1.tg[1].tpm";
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
connectAttr "toe00_1_guide.t" "toe02_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toe00_1_guide.rp" "toe02_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toe00_1_guide.rpt" "toe02_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toe00_1_guide.pm" "toe02_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe02_1_guide_ofs_pointConstraint1.w0" "toe02_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe04_1_guide.t" "toe02_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toe04_1_guide.rp" "toe02_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toe04_1_guide.rpt" "toe02_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toe04_1_guide.pm" "toe02_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe02_1_guide_ofs_pointConstraint1.w1" "toe02_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe02_2_guide_ofs.ro" "toe02_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe02_2_guide_ofs.pim" "toe02_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe02_2_guide_ofs.rp" "toe02_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe02_2_guide_ofs.rpt" "toe02_2_guide_ofs_parentConstraint1.crt";
connectAttr "toe00_2_guide.t" "toe02_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toe00_2_guide.rp" "toe02_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toe00_2_guide.rpt" "toe02_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toe00_2_guide.r" "toe02_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toe00_2_guide.ro" "toe02_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toe00_2_guide.s" "toe02_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "toe02_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_parentConstraint1.w0" "toe02_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide.t" "toe02_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toe04_2_guide.rp" "toe02_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toe04_2_guide.rpt" "toe02_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toe04_2_guide.r" "toe02_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toe04_2_guide.ro" "toe02_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toe04_2_guide.s" "toe02_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toe04_2_guide.pm" "toe02_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe02_2_guide_ofs_parentConstraint1.w1" "toe02_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe02_2_guide_ofs.pim" "toe02_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toe00_2_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe02_2_guide_ofs_scaleConstraint1.w0" "toe02_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide.s" "toe02_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toe04_2_guide.pm" "toe02_2_guide_ofs_scaleConstraint1.tg[1].tpm";
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
connectAttr "toe00_1_guide.t" "toe03_1_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "toe00_1_guide.rp" "toe03_1_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "toe00_1_guide.rpt" "toe03_1_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "toe00_1_guide.pm" "toe03_1_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "toe03_1_guide_ofs_pointConstraint1.w0" "toe03_1_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "toe04_1_guide.t" "toe03_1_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "toe04_1_guide.rp" "toe03_1_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "toe04_1_guide.rpt" "toe03_1_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "toe04_1_guide.pm" "toe03_1_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "toe03_1_guide_ofs_pointConstraint1.w1" "toe03_1_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "toe03_2_guide_ofs.ro" "toe03_2_guide_ofs_parentConstraint1.cro";
connectAttr "toe03_2_guide_ofs.pim" "toe03_2_guide_ofs_parentConstraint1.cpim";
connectAttr "toe03_2_guide_ofs.rp" "toe03_2_guide_ofs_parentConstraint1.crp";
connectAttr "toe03_2_guide_ofs.rpt" "toe03_2_guide_ofs_parentConstraint1.crt";
connectAttr "toe00_2_guide.t" "toe03_2_guide_ofs_parentConstraint1.tg[0].tt";
connectAttr "toe00_2_guide.rp" "toe03_2_guide_ofs_parentConstraint1.tg[0].trp";
connectAttr "toe00_2_guide.rpt" "toe03_2_guide_ofs_parentConstraint1.tg[0].trt";
connectAttr "toe00_2_guide.r" "toe03_2_guide_ofs_parentConstraint1.tg[0].tr";
connectAttr "toe00_2_guide.ro" "toe03_2_guide_ofs_parentConstraint1.tg[0].tro";
connectAttr "toe00_2_guide.s" "toe03_2_guide_ofs_parentConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "toe03_2_guide_ofs_parentConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_parentConstraint1.w0" "toe03_2_guide_ofs_parentConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide.t" "toe03_2_guide_ofs_parentConstraint1.tg[1].tt";
connectAttr "toe04_2_guide.rp" "toe03_2_guide_ofs_parentConstraint1.tg[1].trp";
connectAttr "toe04_2_guide.rpt" "toe03_2_guide_ofs_parentConstraint1.tg[1].trt";
connectAttr "toe04_2_guide.r" "toe03_2_guide_ofs_parentConstraint1.tg[1].tr";
connectAttr "toe04_2_guide.ro" "toe03_2_guide_ofs_parentConstraint1.tg[1].tro";
connectAttr "toe04_2_guide.s" "toe03_2_guide_ofs_parentConstraint1.tg[1].ts";
connectAttr "toe04_2_guide.pm" "toe03_2_guide_ofs_parentConstraint1.tg[1].tpm";
connectAttr "toe03_2_guide_ofs_parentConstraint1.w1" "toe03_2_guide_ofs_parentConstraint1.tg[1].tw"
		;
connectAttr "toe03_2_guide_ofs.pim" "toe03_2_guide_ofs_scaleConstraint1.cpim";
connectAttr "toe00_2_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tpm";
connectAttr "toe03_2_guide_ofs_scaleConstraint1.w0" "toe03_2_guide_ofs_scaleConstraint1.tg[0].tw"
		;
connectAttr "toe04_2_guide.s" "toe03_2_guide_ofs_scaleConstraint1.tg[1].ts";
connectAttr "toe04_2_guide.pm" "toe03_2_guide_ofs_scaleConstraint1.tg[1].tpm";
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
connectAttr "DCM_3.ot" "line_06Shape.cp[0]";
connectAttr "DCM_7.ot" "line_06Shape.cp[1]";
connectAttr "master_guide.toeBones" "line_grp2.v";
connectAttr "DCM_12.ot" "curveShape1.cp[0]";
connectAttr "DCM_13.ot" "curveShape1.cp[1]";
connectAttr "DCM_13.ot" "curveShape2.cp[0]";
connectAttr "DCM_14.ot" "curveShape2.cp[1]";
connectAttr "DCM_14.ot" "curveShape3.cp[0]";
connectAttr "DCM_15.ot" "curveShape3.cp[1]";
connectAttr "DCM_15.ot" "curveShape4.cp[0]";
connectAttr "DCM_16.ot" "curveShape4.cp[1]";
connectAttr "DCM_17.ot" "curveShape5.cp[0]";
connectAttr "DCM_18.ot" "curveShape5.cp[1]";
connectAttr "DCM_18.ot" "curveShape6.cp[0]";
connectAttr "DCM_19.ot" "curveShape6.cp[1]";
connectAttr "DCM_19.ot" "curveShape7.cp[0]";
connectAttr "DCM_20.ot" "curveShape7.cp[1]";
connectAttr "DCM_20.ot" "curveShape8.cp[0]";
connectAttr "DCM_21.ot" "curveShape8.cp[1]";
connectAttr "DCM_22.ot" "curveShape9.cp[0]";
connectAttr "DCM_23.ot" "curveShape9.cp[1]";
connectAttr "DCM_23.ot" "curveShape10.cp[0]";
connectAttr "DCM_24.ot" "curveShape10.cp[1]";
connectAttr "DCM_24.ot" "curveShape11.cp[0]";
connectAttr "DCM_25.ot" "curveShape11.cp[1]";
connectAttr "DCM_25.ot" "curveShape12.cp[0]";
connectAttr "DCM_26.ot" "curveShape12.cp[1]";
connectAttr "DCM_27.ot" "curveShape13.cp[0]";
connectAttr "DCM_28.ot" "curveShape13.cp[1]";
connectAttr "DCM_28.ot" "curveShape14.cp[0]";
connectAttr "DCM_29.ot" "curveShape14.cp[1]";
connectAttr "DCM_29.ot" "curveShape15.cp[0]";
connectAttr "DCM_30.ot" "curveShape15.cp[1]";
connectAttr "DCM_30.ot" "curveShape16.cp[0]";
connectAttr "DCM_31.ot" "curveShape16.cp[1]";
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
connectAttr "null1.pim" "null1_scaleConstraint1.cpim";
connectAttr "toe04_2_guide.s" "null1_scaleConstraint1.tg[0].ts";
connectAttr "toe04_2_guide.pm" "null1_scaleConstraint1.tg[0].tpm";
connectAttr "null1_scaleConstraint1.w0" "null1_scaleConstraint1.tg[0].tw";
connectAttr "null2_scaleConstraint1.csx" "null2.sx";
connectAttr "null2_scaleConstraint1.csy" "null2.sy";
connectAttr "null2_scaleConstraint1.csz" "null2.sz";
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
connectAttr "null2.pim" "null2_scaleConstraint1.cpim";
connectAttr "toe03_2_guide.s" "null2_scaleConstraint1.tg[0].ts";
connectAttr "toe03_2_guide.pm" "null2_scaleConstraint1.tg[0].tpm";
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
connectAttr "null4.pim" "null4_scaleConstraint1.cpim";
connectAttr "toe01_2_guide.s" "null4_scaleConstraint1.tg[0].ts";
connectAttr "toe01_2_guide.pm" "null4_scaleConstraint1.tg[0].tpm";
connectAttr "null4_scaleConstraint1.w0" "null4_scaleConstraint1.tg[0].tw";
connectAttr "null5_scaleConstraint1.csx" "null5.sx";
connectAttr "null5_scaleConstraint1.csy" "null5.sy";
connectAttr "null5_scaleConstraint1.csz" "null5.sz";
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
connectAttr "null5.pim" "null5_scaleConstraint1.cpim";
connectAttr "toe00_2_guide.s" "null5_scaleConstraint1.tg[0].ts";
connectAttr "toe00_2_guide.pm" "null5_scaleConstraint1.tg[0].tpm";
connectAttr "null5_scaleConstraint1.w0" "null5_scaleConstraint1.tg[0].tw";
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
connectAttr "locator1_normalConstraint1.crx" "pole_normal_loc.rx";
connectAttr "locator1_normalConstraint1.cry" "pole_normal_loc.ry";
connectAttr "locator1_normalConstraint1.crz" "pole_normal_loc.rz";
connectAttr "pole_normal_loc.pim" "locator1_normalConstraint1.cpim";
connectAttr "pole_normal_loc.t" "locator1_normalConstraint1.ct";
connectAttr "pole_normal_loc.rp" "locator1_normalConstraint1.crp";
connectAttr "pole_normal_loc.rpt" "locator1_normalConstraint1.crt";
connectAttr "pole_normal_loc.ro" "locator1_normalConstraint1.cro";
connectAttr "pPlaneShape1.w" "locator1_normalConstraint1.tg[0].tgm";
connectAttr "locator1_normalConstraint1.w0" "locator1_normalConstraint1.tg[0].tw"
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
connectAttr "ulna_guide.wm" "DCM_8.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_9.imat";
connectAttr "radiusEnd_guide.wm" "DCM_10.imat";
connectAttr "radius_guide.wm" "DCM_11.imat";
connectAttr "master_guide.limbType" "condition1.ft";
connectAttr "condition1.ocr" "multDoubleLinear1.i1";
connectAttr "toe04_5_guide.wm" "DCM_12.imat";
connectAttr "toe04_4_guide.wm" "DCM_13.imat";
connectAttr "toe04_3_guide.wm" "DCM_14.imat";
connectAttr "toe04_2_guide.wm" "DCM_15.imat";
connectAttr "toe04_1_guide.wm" "DCM_16.imat";
connectAttr "toe03_5_guide.wm" "DCM_17.imat";
connectAttr "toe03_4_guide.wm" "DCM_18.imat";
connectAttr "toe03_3_guide.wm" "DCM_19.imat";
connectAttr "toe03_2_guide.wm" "DCM_20.imat";
connectAttr "toe03_1_guide.wm" "DCM_21.imat";
connectAttr "toe02_5_guide.wm" "DCM_22.imat";
connectAttr "toe02_4_guide.wm" "DCM_23.imat";
connectAttr "toe02_3_guide.wm" "DCM_24.imat";
connectAttr "toe02_2_guide.wm" "DCM_25.imat";
connectAttr "toe02_1_guide.wm" "DCM_26.imat";
connectAttr "toe01_5_guide.wm" "DCM_27.imat";
connectAttr "toe01_4_guide.wm" "DCM_28.imat";
connectAttr "toe01_3_guide.wm" "DCM_29.imat";
connectAttr "toe01_2_guide.wm" "DCM_30.imat";
connectAttr "toe01_1_guide.wm" "DCM_31.imat";
connectAttr "toe00_4_guide.wm" "DCM_32.imat";
connectAttr "toe00_3_guide.wm" "DCM_33.imat";
connectAttr "toe00_2_guide.wm" "DCM_34.imat";
connectAttr "toe00_1_guide.wm" "DCM_35.imat";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef1|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef2|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null5|fgrRef3|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef4|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef5|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef6|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null4|fgrRef7|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef8|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef9|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef10|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null3|fgrRef11|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef12|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef13|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef14|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null2|fgrRef15|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef16|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef17|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef18|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|module_grp|fgrRef_grp|null1|fgrRef19|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
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
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "foot_guideShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "line_grp3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "multDoubleLinear1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "radius_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "condition1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "ulna_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "ulnaEnd_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "radiusEnd_guide_ZRO.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
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
connectAttr "palm_guide_ofs.msg" ":hyperGraphLayout.hyp[83146].dn";
connectAttr "lwr_guide_ofs.msg" ":hyperGraphLayout.hyp[83147].dn";
connectAttr "tip_guide_ofs.msg" ":hyperGraphLayout.hyp[83148].dn";
connectAttr "ball_guide_ofs.msg" ":hyperGraphLayout.hyp[83149].dn";
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
connectAttr "master_guide.msg" ":hyperGraphLayout.hyp[85285].dn";
connectAttr "line_grp.msg" ":hyperGraphLayout.hyp[85286].dn";
connectAttr "line_grp3.msg" ":hyperGraphLayout.hyp[85287].dn";
connectAttr "line_grp2.msg" ":hyperGraphLayout.hyp[85288].dn";
// End of lfLegBp.ma
