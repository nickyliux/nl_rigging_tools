//Maya ASCII 2023 scene
//Name: rtHand.ma
//Last modified: Mon, Apr 14, 2025 07:07:27 PM
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
fileInfo "UUID" "9611D492-4804-4EB7-A836-90B6EFFC7A3A";
createNode transform -n "module_grp";
	rename -uid "A08207E3-49BA-E61C-5646-E09F599D0878";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "50807175-43FF-E7F4-58C3-EABB95B14D6E";
	setAttr ".t" -type "double3" -69 -145 -1.2565537329160082e-29 ;
createNode joint -n "handJ_guide" -p "master_guide";
	rename -uid "31F9BCEB-4ACA-41EF-1510-D9ACACD78C3B";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".radi" 2;
createNode transform -n "fgr01_2_guide" -p "handJ_guide";
	rename -uid "4377702B-43B8-D503-2118-B3A7665B37BD";
	setAttr ".t" -type "double3" -12.460707894736842 -4.4323400000000017 2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "fgr01_3_guide" -p "fgr01_2_guide";
	rename -uid "33DE0476-4D92-3B4B-292A-5C86C7CD2042";
	setAttr ".t" -type "double3" -3.5000000000000142 0 0 ;
createNode transform -n "fgr01_4_guide" -p "fgr01_3_guide";
	rename -uid "C4AAB151-4D4D-FD74-C901-65A2C13163CD";
	setAttr ".t" -type "double3" -2.0999999999999943 0 0 ;
createNode transform -n "fgr01_5_guide" -p "fgr01_4_guide";
	rename -uid "1D098402-43E7-7761-9E19-FFB4707BB7BB";
	setAttr ".t" -type "double3" -1.4000000000000057 0 0 ;
createNode nurbsCurve -n "fgr01_5_guideShape" -p "fgr01_5_guide";
	rename -uid "5014732F-4E38-24D1-E974-D9A6BFE308E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0 -1.1786183215471499e-08 -0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0 -0.095670832376624992 0.23096983102363497
		0 -0.17677666489889998 0.17677666489889998
		0 -0.23096983102363497 0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0 -0.23096983102363497 -0.095670832376624992
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.095670832376624992 -0.23096983102363497
		0 -1.1786183215471499e-08 -0.24876249751237497
		0 0.095670832376624992 -0.23096983102363497
		0 0.17677666489889998 -0.17677666489889998
		0 0.23096983102363497 -0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 0.095670832376624992
		0 0.17677666489889998 0.17677666489889998
		0 0.095670832376624992 0.23096983102363497
		0 0 0.24876250038935477
		0 0 2.3481880983577201
		-0.30362380328455968 0 2.6518119016422812
		0.30362380328455968 0 2.6518119016422812
		0 0 2.3481880983577201
		;
	setAttr ".adot" yes;
createNode transform -n "fgr01_1_guide" -p "fgr01_2_guide";
	rename -uid "B28EC42F-42E9-DB08-28A2-7FB3CA2AD0A4";
	setAttr ".t" -type "double3" 5.5999778947368242 0 -2.8421709430404007e-14 ;
createNode nurbsCurve -n "fgr01_2_guideShape" -p "fgr01_2_guide";
	rename -uid "B37E587E-49B7-D767-AB22-AC83CFC82A0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0 -1.1786183215471499e-08 -0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		0 0 0.24876249751237497
		0 -0.095670832376624992 0.23096983102363497
		0 -0.17677666489889998 0.17677666489889998
		0 -0.23096983102363497 0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 9.9340999006590018e-09
		0 -0.23096983102363497 -0.095670832376624992
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.095670832376624992 -0.23096983102363497
		0 -1.1786183215471499e-08 -0.24876249751237497
		0 0.095670832376624992 -0.23096983102363497
		0 0.17677666489889998 -0.17677666489889998
		0 0.23096983102363497 -0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 0.095670832376624992
		0 0.17677666489889998 0.17677666489889998
		0 0.095670832376624992 0.23096983102363497
		0 0 0.24876250038935477
		0 0 2.3481880983577201
		-0.30362380328455968 0 2.6518119016422812
		0.30362380328455968 0 2.6518119016422812
		0 0 2.3481880983577201
		;
	setAttr ".adot" yes;
createNode transform -n "fgr02_2_guide" -p "handJ_guide";
	rename -uid "CC8E5BAB-491F-F0A8-9AC1-A0ACBA1AA732";
	setAttr ".t" -type "double3" -12.460709000000008 -1.4323400000000002 2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "fgr02_3_guide" -p "fgr02_2_guide";
	rename -uid "1EF57B36-4258-31F8-0E33-E9ADF7404A3F";
	setAttr ".t" -type "double3" -3.5000000000000142 0 0 ;
createNode transform -n "fgr02_4_guide" -p "fgr02_3_guide";
	rename -uid "A0E9B447-46A9-447D-1232-F79CCA01B978";
	setAttr ".t" -type "double3" -2.0999999999999943 0 0 ;
createNode transform -n "fgr02_5_guide" -p "fgr02_4_guide";
	rename -uid "B7776C9D-4982-6280-4806-4FBF9AC5223B";
	setAttr ".t" -type "double3" -1.4000000000000057 0 0 ;
createNode transform -n "fgr02_1_guide" -p "fgr02_2_guide";
	rename -uid "A51DA3AF-43AC-D7F2-408F-8BB884EE8491";
	setAttr ".t" -type "double3" 5.5999789999999905 0 -2.8421709430404007e-14 ;
createNode transform -n "fgr03_2_guide" -p "handJ_guide";
	rename -uid "2CA20DB7-4943-EA9D-C400-0B96C732C502";
	setAttr ".t" -type "double3" -12.460706666666667 1.5676599999999998 2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "fgr03_3_guide" -p "fgr03_2_guide";
	rename -uid "B7F177E6-4641-F2FE-678A-76879D0D4DF0";
	setAttr ".t" -type "double3" -3.5000000000000142 0 0 ;
createNode transform -n "fgr03_4_guide" -p "fgr03_3_guide";
	rename -uid "136F7264-4F0E-EB18-DC0A-FE86AC131A4A";
	setAttr ".t" -type "double3" -2.1000000000000085 0 0 ;
createNode transform -n "fgr03_5_guide" -p "fgr03_4_guide";
	rename -uid "8C870483-4FBE-480B-0182-0EA920A77D2B";
	setAttr ".t" -type "double3" -1.4000000000000057 0 0 ;
createNode transform -n "fgr03_1_guide" -p "fgr03_2_guide";
	rename -uid "F62A356C-475F-7CD9-2CBD-8FAFC3ACC019";
	setAttr ".t" -type "double3" 5.5999766666666488 0 -2.8421709430404007e-14 ;
createNode transform -n "fgr04_2_guide" -p "handJ_guide";
	rename -uid "76FBAD82-43F5-00B2-E016-E78BD7F1181E";
	setAttr ".t" -type "double3" -12.460701999999998 4.56766 2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "fgr04_3_guide" -p "fgr04_2_guide";
	rename -uid "53102425-46F8-933D-1E16-658948F66923";
	setAttr ".t" -type "double3" -3.5000000000000142 -8.8817841970012523e-16 0 ;
createNode transform -n "fgr04_4_guide" -p "fgr04_3_guide";
	rename -uid "1A25E3B4-476C-FB5D-7B39-419773CB3B7C";
	setAttr ".t" -type "double3" -2.0999999999999943 8.8817841970012523e-16 0 ;
createNode transform -n "fgr04_5_guide" -p "fgr04_4_guide";
	rename -uid "00633AAC-4AF0-A31E-7F46-3EBF3C19BB2D";
	setAttr ".t" -type "double3" -1.4000000000000057 -8.8817841970012523e-16 0 ;
createNode transform -n "fgr04_1_guide" -p "fgr04_2_guide";
	rename -uid "2776E281-4936-7FF8-7C17-75A115FC0F13";
	setAttr ".t" -type "double3" 5.5999719999999797 -8.8817841970012523e-16 -2.8421709430404007e-14 ;
createNode transform -n "fgr00_2_guide" -p "handJ_guide";
	rename -uid "0F5AF1FB-439E-D9F9-B199-95AA2F735A93";
	setAttr ".t" -type "double3" -7.9084164705882216 -7.7898100000000099 -4.4442670588235558 ;
	setAttr ".r" -type "double3" 63.897886248013926 -25.65890627325534 33.690067525979885 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "fgr00_3_guide" -p "fgr00_2_guide";
	rename -uid "524770A6-4491-3ECA-1605-EAB62D3DAE63";
	setAttr ".t" -type "double3" -2.4999985914230951 -1.9803696318376751e-06 -6.4205439258557817e-06 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "fgr00_4_guide" -p "fgr00_3_guide";
	rename -uid "F206CFC7-42FD-5658-A404-19A52CB596D0";
	setAttr ".t" -type "double3" -1.4999993912796126 1.1379173940895271e-06 5.5751201699649755e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "fgr00_1_guide" -p "fgr00_2_guide";
	rename -uid "7EDC6519-4A12-5B83-3580-7CBC803DE9CD";
	setAttr ".t" -type "double3" 3.9999807296868233 1.0320747719561041e-05 -9.4775263832502787e-06 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "261E1547-49D8-72EE-ABD9-4F8A9FD8E998";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4872122634540489e-16 7.8984970393166138 -7.8984970393166094
		3.0197725789167168e-32 8.0540166867444647 -4.9316628778504963e-16
		-3.4872122634540489e-16 7.898497039316613 7.8984970393166094
		-4.9316628778504963e-16 4.1752164727360178e-16 8.0540166867444682
		-3.4872122634540489e-16 -7.898497039316613 7.8984970393166094
		-4.9400804339296697e-32 -8.0540166867444718 8.0677635990542606e-16
		3.4872122634540489e-16 -7.898497039316613 -7.8984970393166094
		4.9316628778504963e-16 -1.0983234118766299e-15 -8.0540166867444682
		3.4872122634540489e-16 7.8984970393166138 -7.8984970393166094
		3.0197725789167168e-32 8.0540166867444647 -4.9316628778504963e-16
		-3.4872122634540489e-16 7.898497039316613 7.8984970393166094
		;
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "5C0AB177-445B-37C5-799E-84BF94FB3A0C";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".it" no;
createNode transform -n "line_2" -p "line_grp";
	rename -uid "9879018D-4647-A509-7411-C4962FF6BB1D";
createNode nurbsCurve -n "line_2Shape" -p "line_2";
	rename -uid "19C47D28-4BA2-3D5C-13DE-7CA5D56C0AE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-73.908439999999999 142.28778 5.7898100000000268
		-76.908416470588222 140.55573294117644 7.7898100000000259
		;
	setAttr ".adot" yes;
createNode transform -n "line_3" -p "line_grp";
	rename -uid "E9858D5D-4D7C-42DD-BEE1-A8832409F529";
createNode nurbsCurve -n "line_3Shape" -p "line_3";
	rename -uid "4FA96F90-4CA3-565C-4210-D4B392B024EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-76.908416470588222 140.55573294117644 7.7898100000000259
		-78.783416470588222 139.47319764705881 9.0398041176470816
		;
	setAttr ".adot" yes;
createNode transform -n "line_4" -p "line_grp";
	rename -uid "787521D6-4C4C-BABB-E97F-D1957040C7C9";
createNode nurbsCurve -n "line_4Shape" -p "line_4";
	rename -uid "C922662C-42AC-9569-6AFA-8B865AE85944";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-78.783416470588222 139.47319764705881 9.0398041176470816
		-79.90841647058825 138.82368000000002 9.789804117647078
		;
	setAttr ".adot" yes;
createNode transform -n "line_6" -p "line_grp";
	rename -uid "00F06F3E-4586-8C3C-AEAA-D3B6EBE8AD47";
createNode nurbsCurve -n "line_6Shape" -p "line_6";
	rename -uid "5405694F-45C7-3F69-7F73-DC98680A623B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-75.860730000000018 145 4.4323400000000195
		-81.460707894736842 145.00000000000003 4.4323400000000195
		;
	setAttr ".adot" yes;
createNode transform -n "line_7" -p "line_grp";
	rename -uid "41CA9E22-4076-288B-C1E5-77AAE1531906";
createNode nurbsCurve -n "line_7Shape" -p "line_7";
	rename -uid "5F505877-46CC-B4F6-F8C4-3596C5B2D464";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460707894736842 145.00000000000003 4.4323400000000195
		-84.960707894736856 145.00000000000003 4.4323400000000195
		;
	setAttr ".adot" yes;
createNode transform -n "line_8" -p "line_grp";
	rename -uid "040B09EA-432A-6A28-17A5-338E6494C36E";
createNode nurbsCurve -n "line_8Shape" -p "line_8";
	rename -uid "BBCF8735-4481-795E-9034-1391A9A2FC72";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-84.960707894736856 145.00000000000003 4.4323400000000195
		-87.060707894736851 145.00000000000003 4.4323400000000195
		;
	setAttr ".adot" yes;
createNode transform -n "line_9" -p "line_grp";
	rename -uid "CE3BEC8B-484B-5CC1-1777-96824856CEC0";
createNode nurbsCurve -n "line_9Shape" -p "line_9";
	rename -uid "D7D35659-401C-A73D-E71B-52A31F67A898";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-87.060707894736851 145.00000000000003 4.4323400000000195
		-88.460707894736856 145.00000000000003 4.4323400000000195
		;
	setAttr ".adot" yes;
createNode transform -n "line_11" -p "line_grp";
	rename -uid "E75E08D1-468A-3F4C-6496-6185F1C10FBE";
createNode nurbsCurve -n "line_11Shape" -p "line_11";
	rename -uid "0888ADCC-42F6-C948-57C0-68BF28CDBD5C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-75.860730000000018 145 1.4323400000000179
		-81.460709000000008 145.00000000000003 1.4323400000000179
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp";
	rename -uid "1937073C-4468-360C-6AAB-38AFD1E9A7FA";
createNode nurbsCurve -n "line_12Shape" -p "line_12";
	rename -uid "418C33B7-4B58-8CBF-8514-2A9786421243";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460709000000008 145.00000000000003 1.4323400000000179
		-84.960709000000023 145.00000000000003 1.4323400000000179
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp";
	rename -uid "191B004C-4021-E614-7B36-FC8D0E888AFF";
createNode nurbsCurve -n "line_13Shape" -p "line_13";
	rename -uid "AE02AE6B-427A-04F2-0D15-5CACB6A7B511";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-84.960709000000023 145.00000000000003 1.4323400000000179
		-87.060709000000017 145.00000000000003 1.4323400000000179
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp";
	rename -uid "9D616E2C-489A-4EE6-3656-21A6CFE003C8";
createNode nurbsCurve -n "line_14Shape" -p "line_14";
	rename -uid "6D47FFF4-45C8-E08E-7E0A-65B831822B67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-87.060709000000017 145.00000000000003 1.4323400000000179
		-88.460709000000023 145.00000000000003 1.4323400000000179
		;
	setAttr ".adot" yes;
createNode transform -n "line_16" -p "line_grp";
	rename -uid "2CD996CF-4B47-B6AD-AC4F-07A41A785014";
createNode nurbsCurve -n "line_16Shape" -p "line_16";
	rename -uid "D2236D04-40FF-3A8C-7698-D0AE51EF7129";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-75.860730000000018 145 -1.5676599999999821
		-81.460706666666667 145.00000000000003 -1.5676599999999821
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp";
	rename -uid "349CBD04-41A8-0775-6316-3F9876DD5689";
createNode nurbsCurve -n "line_17Shape" -p "line_17";
	rename -uid "EF582A24-4B20-715D-A8F2-4E9413C87F1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460706666666667 145.00000000000003 -1.5676599999999821
		-84.960706666666681 145.00000000000003 -1.5676599999999821
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp";
	rename -uid "1F54CA75-4655-03E4-0703-299853C6E93F";
createNode nurbsCurve -n "line_18Shape" -p "line_18";
	rename -uid "3EDE3694-4EFD-91CA-AA1C-EE82580CDEAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-84.960706666666681 145.00000000000003 -1.5676599999999821
		-87.06070666666669 145.00000000000003 -1.5676599999999821
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp";
	rename -uid "44DF87A9-4301-41AB-0C70-489FB61DEA46";
createNode nurbsCurve -n "line_19Shape" -p "line_19";
	rename -uid "062F9075-4A8E-6A5F-1639-2D8D49EE2810";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-87.06070666666669 145.00000000000003 -1.5676599999999821
		-88.460706666666695 145.00000000000003 -1.5676599999999821
		;
	setAttr ".adot" yes;
createNode transform -n "line_21" -p "line_grp";
	rename -uid "A30BDC23-49A6-60B8-9987-BD8899141AD0";
createNode nurbsCurve -n "line_21Shape" -p "line_21";
	rename -uid "756E24B8-4DC3-70C8-58B7-64A88C2AB9AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-75.860730000000018 145 -4.5676599999999814
		-81.460701999999998 145.00000000000003 -4.5676599999999823
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp";
	rename -uid "87AB9237-4EB2-E699-42FD-8499737A3439";
createNode nurbsCurve -n "line_22Shape" -p "line_22";
	rename -uid "60663CC7-440F-37B6-4AC5-6FBBD70D0581";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460701999999998 145.00000000000003 -4.5676599999999823
		-84.960702000000012 145.00000000000003 -4.5676599999999814
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp";
	rename -uid "60D5E988-4F2A-44C1-49CB-34BC193D3FB1";
createNode nurbsCurve -n "line_23Shape" -p "line_23";
	rename -uid "7A065194-4A55-1BFE-A5F0-43B422EFF91D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-84.960702000000012 145.00000000000003 -4.5676599999999814
		-87.060702000000006 145.00000000000003 -4.5676599999999823
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp";
	rename -uid "1AF54631-49A0-02D1-3FCB-D59C184DBB38";
createNode nurbsCurve -n "line_24Shape" -p "line_24";
	rename -uid "769766C2-46AF-EA2F-A926-6DAB3A1055E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-87.060702000000006 145.00000000000003 -4.5676599999999823
		-88.460702000000012 145.00000000000003 -4.5676599999999814
		;
	setAttr ".adot" yes;
createNode transform -n "line_25" -p "line_grp";
	rename -uid "F90C4291-4E8D-1D22-D7D1-3EB52E438319";
createNode nurbsCurve -n "line_25Shape" -p "line_25";
	rename -uid "87101A98-4BAA-DE99-BA55-EB826326D664";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-76.908416470588222 140.55573294117644 7.7898100000000259
		-81.460707894736842 145.00000000000003 4.4323400000000195
		;
	setAttr ".adot" yes;
createNode transform -n "line_26" -p "line_grp";
	rename -uid "B7A4D020-4AC6-61A5-9525-BDBFFCEA5C8A";
createNode nurbsCurve -n "line_26Shape" -p "line_26";
	rename -uid "CB082896-4915-E0EB-5603-FFAFDC1B8942";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460707894736842 145.00000000000003 4.4323400000000195
		-81.460709000000008 145.00000000000003 1.4323400000000179
		;
	setAttr ".adot" yes;
createNode transform -n "line_27" -p "line_grp";
	rename -uid "39BC5F7B-4874-7BF5-CC0E-AAB48091FFF3";
createNode nurbsCurve -n "line_27Shape" -p "line_27";
	rename -uid "C2C9CA98-46A7-3DF5-0006-5EAFA88E7E79";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460709000000008 145.00000000000003 1.4323400000000179
		-81.460706666666667 145.00000000000003 -1.5676599999999821
		;
	setAttr ".adot" yes;
createNode transform -n "line_28" -p "line_grp";
	rename -uid "D8257BFE-4230-C6CF-54FE-E79B604D98C2";
createNode nurbsCurve -n "line_28Shape" -p "line_28";
	rename -uid "EECCA52E-475E-63CE-77F1-7D8C4232022D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-81.460706666666667 145.00000000000003 -1.5676599999999821
		-81.460701999999998 145.00000000000003 -4.5676599999999823
		;
	setAttr ".adot" yes;
createNode transform -s -n "persp";
	rename -uid "AB7E52E5-4BC6-549B-1229-4BA904DD5D93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -115.52385235918418 189.95447707450131 79.747060231476112 ;
	setAttr ".r" -type "double3" -36.93835272979063 -35.000000000031328 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19F6DB4F-4918-877A-57DD-5EBBE38E71A5";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 126.3942923618722;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -61.197755824747198 106.97458459871083 1.9682526056314231 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "171F7699-45BC-8AD1-0831-258C9B72CA5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -cb on ".ro";
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
	setAttr ".t" -type "double3" 0 0 1000.1 ;
	setAttr -cb on ".ro";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3A751D4F-4DF6-6C00-16C1-DC8CFC5998C1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "EFA658DE-4B76-8C6D-C386-03B883047C7C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E53ABB81-4149-337F-1000-49B475007B9C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr04_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr00_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr00_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_3_guide|fgr01_4_guide|fgr01_5_guide|fgr01_5_guideShape" "fgr00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_2_guideShape" "fgr04_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_2_guideShape" "fgr03_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_2_guideShape" "fgr02_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr01_2_guide|fgr01_2_guideShape" "fgr00_2_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C8110518-4A77-A67E-0943-ECB739AB61E2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5E45226F-4CE4-8EBC-6703-FFB66BF663A3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C2D4957F-4158-85AB-BFD2-E8A58024DEA4";
createNode displayLayerManager -n "layerManager";
	rename -uid "9F996720-4A5D-8630-BFC3-C5955294941E";
createNode displayLayer -n "defaultLayer";
	rename -uid "4011EB8B-4296-1EB2-2E08-40844F6318E5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3C037BF5-46E5-E2A0-E4AE-E9B3BAB64D04";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BD18B807-4968-E110-0D94-B9A28F4760A6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9EAC53FD-4E7F-55B1-0379-C8B5820375D6";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 565\n            -height 696\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
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
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 565\n            -height 696\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 565\\n    -height 696\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 565\\n    -height 696\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 10 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7B057219-4602-0D00-E58B-C797EF200F13";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode controller -n "hand_fkc_tag";
	rename -uid "104177E0-4F96-B29C-A6A7-9AAB94E926CE";
createNode controller -n "lwr_fkce_tag";
	rename -uid "7205819E-4BA9-2240-B41A-C0B504882A4D";
createNode controller -n "upr_fkc_tag";
	rename -uid "C6F182E2-40F2-DA55-23BD-BB85C64016DF";
	setAttr ".cwsb" yes;
createNode controller -n "clavicle_fkc_tag";
	rename -uid "3C9ED4ED-4AC3-8785-3759-5F9B2DF83BD6";
	setAttr -s 4 ".child";
createNode controller -n "ikc_tag";
	rename -uid "94063E82-4031-7AC2-4699-B58A2186F28C";
	setAttr ".cwsb" yes;
createNode controller -n "pvc_tag";
	rename -uid "AB63C437-41B0-43F3-EA05-419F31E6526E";
	setAttr ".cwsb" yes;
createNode controller -n "armsetting_tag";
	rename -uid "38782BF6-49B6-332C-10F9-C0B871DBCB3F";
	setAttr ".cwsb" yes;
createNode script -n "RGN";
	rename -uid "58DB0967-4BE8-F398-0E21-8EAA76AD93C6";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -sn "master_guide" -ln "master_guide" -at "message";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "Hand";
createNode controller -n "ball_FKC_tag";
	rename -uid "C7E58993-42FA-9E82-8195-779C843E714A";
createNode controller -n "foot_FKC_tag";
	rename -uid "7BA951C7-439E-E7C4-F3FC-3FBA6E525450";
createNode controller -n "calf_FKC_tag";
	rename -uid "68AB48B8-4E6B-6623-4467-B585D96BB745";
createNode controller -n "thigh_FKC_tag";
	rename -uid "AB495A64-4314-36EE-46D9-479C4C8AD144";
	setAttr ".cwsb" yes;
createNode controller -n "upThigh_FKC_tag";
	rename -uid "6DD4AB2A-4C07-9796-3E20-52A6319C73BD";
	setAttr -s 4 ".child";
createNode controller -n "lf_leg_ikc_tag";
	rename -uid "5876C344-4650-EF8E-593B-4C991077D967";
	setAttr ".cwsb" yes;
createNode controller -n "lf_leg_pvc_tag";
	rename -uid "C17FAC20-47FC-2736-EAF9-D69918FC4F26";
	setAttr ".cwsb" yes;
createNode controller -n "legHolder_CON_tag";
	rename -uid "11F66AA3-48D6-A426-2B6B-FBB7B49083FF";
	setAttr ".cwsb" yes;
createNode nodeGraphEditorInfo -n "lf_leg_guide_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4374FF9F-49A9-BC14-D246-B2A95A6F6230";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 1095.2380517172453 44.047617297323995 ;
createNode groupId -n "groupId4037";
	rename -uid "976322A3-4ED9-5346-6688-4081957B4A29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4044";
	rename -uid "AF3E798F-4D44-B6A6-26C3-F39C8FC7DD46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4051";
	rename -uid "694714D6-4BBE-F7E3-AA24-1E959375A9B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4058";
	rename -uid "3367CAFB-4A6C-93CD-96D7-7FA3B7D02E6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4065";
	rename -uid "9E63E106-4550-A916-600D-53957BC84C32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4072";
	rename -uid "F08C0096-4F4B-542B-DECD-B295BA1C911C";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "lf_leg_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "73367977-4A24-3F9E-14BF-B3A04BBF62D7";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -9264.5950635266709 -3776.814600213233 ;
	setAttr ".tgi[0].vh" -type "double2" 1612.6499552763848 5941.1002284979622 ;
createNode groupId -n "groupId4128";
	rename -uid "21E0464F-41FF-63DB-2FA0-0BA2B08B3380";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4135";
	rename -uid "D0EF1DA9-4954-B0AC-B9FA-43B420482117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4142";
	rename -uid "8ADCEC74-4C7A-3D5D-CF90-A6802E931949";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4149";
	rename -uid "60E90441-4128-7DFA-1F72-188FCD6908A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4156";
	rename -uid "853006FF-477B-1770-A702-6C8001A215FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4163";
	rename -uid "C573BCCB-44CB-77DA-BDE4-4BBECF3951C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4170";
	rename -uid "3E9002A4-42AB-6545-103A-A5B7F6A9F1DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4177";
	rename -uid "E7687CA1-40D5-CB21-2138-00BD83429C3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4184";
	rename -uid "9A481343-4C18-2468-69F4-E68D5C49AAC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4191";
	rename -uid "36F80B24-4E4B-6BD1-9BC4-06BE308554CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4198";
	rename -uid "8714E8D4-4D52-D21E-5EAA-DDBDFA27CE36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4205";
	rename -uid "3DA0BAE3-4CB0-7DF1-8A4E-7CA32BE4B927";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4212";
	rename -uid "8CF48677-4421-9CC7-7B86-65B8CEDCA6C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4219";
	rename -uid "63652038-4AAA-DF62-B3FC-9980FDFD13C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4226";
	rename -uid "15ABB8E5-495F-B8D4-AFB5-D2AF14C6BE42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4233";
	rename -uid "BAF28F67-4FB6-4DC0-E718-5BA4BC4E5164";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4240";
	rename -uid "4DD2822B-4CDF-719B-E42F-D38AE8DE008B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4247";
	rename -uid "4A0E9AD4-4459-D3A1-DC27-4993D6FA94C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4254";
	rename -uid "C0CB614D-4AFD-C635-20B0-918E41401A0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4261";
	rename -uid "D01A439B-4FE1-FF75-7F1A-EE9CA92441C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4268";
	rename -uid "ECADF005-414E-6F7D-97AD-A0BAF19C25B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4275";
	rename -uid "F728D728-4C24-A9F6-439B-5AABA6EB6A5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4282";
	rename -uid "B19C6ADD-4A2F-A10F-D2AE-9DB548BDC346";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4289";
	rename -uid "08BFFC3C-46A5-EBA5-CE84-D98EF640BC75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4296";
	rename -uid "E433CBA2-40E1-7AF9-4B86-B5A7CB9E6881";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4303";
	rename -uid "27E82F55-45AA-7D57-D592-9DBBF8CB2020";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "5C23868F-4707-8E0A-B6BA-62A09C809FFE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2039.4787265672314 -1653.5713628644062 ;
	setAttr ".tgi[0].vh" -type "double2" 2538.2882305558464 324.99998708566113 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "616B673E-41AB-A6C6-7453-E38114331500";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -22686.31007253889 -23247.024322667778 ;
	setAttr ".tgi[0].vh" -type "double2" 26456.548168746733 23038.690997612866 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 48.571430206298828;
	setAttr ".tgi[0].ni[0].y" 212.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 2083;
	setAttr ".tgi[0].ni[1].x" 48.571430206298828;
	setAttr ".tgi[0].ni[1].y" 17.142856597900391;
	setAttr ".tgi[0].ni[1].nvs" 2083;
	setAttr ".tgi[0].ni[2].x" -258.57144165039062;
	setAttr ".tgi[0].ni[2].y" 115.71428680419922;
	setAttr ".tgi[0].ni[2].nvs" 1923;
createNode decomposeMatrix -n "DCM_2";
	rename -uid "519DA13A-4385-44B7-467A-3AA4F2781C92";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "921783C0-4612-0F3C-9CF0-55BC29033076";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "B856A0EE-4AB9-B42D-152B-BCA68154A609";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "0C3EDB52-4A7B-6326-DCC6-44AD7AE2DA60";
createNode decomposeMatrix -n "DCM_6";
	rename -uid "7A7AF94A-4D0A-4188-C3A1-E9924DD10C70";
createNode decomposeMatrix -n "DCM_7";
	rename -uid "8414AC6C-4D87-1F1B-C4B5-CEBD1172A640";
createNode decomposeMatrix -n "DCM_8";
	rename -uid "617BAB9F-4C3E-DE63-4C28-36AB2ED20A79";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "01B6D4BE-4906-3402-6165-A89252E09DC8";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "8B8E9BCC-4530-3277-0223-ECA9BEEC3672";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "3BDFC6A3-4BCC-670E-93EB-69ACB2B3503E";
createNode decomposeMatrix -n "DCM_12";
	rename -uid "6EDAF16E-4877-8586-3924-AD836F6F73AB";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "B3BB460F-45A7-05F6-2B28-0AADCCA2FEC4";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "F933DECF-4F92-2DAC-EB31-B5BDEAD79306";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "EFB3802D-4F09-4009-2007-3C901B10EE7E";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "CBFFEC10-4B43-C314-7F88-71A8B7E54868";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "EADEA78F-4199-C64F-8C84-A59FC1530F2B";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "D1691D62-45D8-A6B5-676A-06847903F5EC";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "CF613071-4E79-EB77-EA60-1FB6066B376C";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "9FB1D946-4AC2-64D5-F5CB-F7BA1CBCACB1";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "5B9F58F5-49D6-CBA6-5D0A-BFBA80134B1D";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "1A90CD3F-47CF-430B-8D8B-099CDA5490A2";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "EB655AA8-4ECF-ECC4-794B-068732922815";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "C6CC2465-4553-8E98-293D-23A572E4A17E";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "663E99EB-43D2-92DB-CA95-C583D449B96D";
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
	setAttr -s 2 ".st";
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
	setAttr -s 5 ".s";
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
	setAttr -k on ".rv";
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
connectAttr "DCM_2.ot" "line_2Shape.cp[0]";
connectAttr "DCM_3.ot" "line_2Shape.cp[1]";
connectAttr "DCM_3.ot" "line_3Shape.cp[0]";
connectAttr "DCM_4.ot" "line_3Shape.cp[1]";
connectAttr "DCM_4.ot" "line_4Shape.cp[0]";
connectAttr "DCM_5.ot" "line_4Shape.cp[1]";
connectAttr "DCM_6.ot" "line_6Shape.cp[0]";
connectAttr "DCM_7.ot" "line_6Shape.cp[1]";
connectAttr "DCM_7.ot" "line_7Shape.cp[0]";
connectAttr "DCM_8.ot" "line_7Shape.cp[1]";
connectAttr "DCM_8.ot" "line_8Shape.cp[0]";
connectAttr "DCM_9.ot" "line_8Shape.cp[1]";
connectAttr "DCM_9.ot" "line_9Shape.cp[0]";
connectAttr "DCM_10.ot" "line_9Shape.cp[1]";
connectAttr "DCM_11.ot" "line_11Shape.cp[0]";
connectAttr "DCM_12.ot" "line_11Shape.cp[1]";
connectAttr "DCM_12.ot" "line_12Shape.cp[0]";
connectAttr "DCM_13.ot" "line_12Shape.cp[1]";
connectAttr "DCM_13.ot" "line_13Shape.cp[0]";
connectAttr "DCM_14.ot" "line_13Shape.cp[1]";
connectAttr "DCM_14.ot" "line_14Shape.cp[0]";
connectAttr "DCM_15.ot" "line_14Shape.cp[1]";
connectAttr "DCM_16.ot" "line_16Shape.cp[0]";
connectAttr "DCM_17.ot" "line_16Shape.cp[1]";
connectAttr "DCM_17.ot" "line_17Shape.cp[0]";
connectAttr "DCM_18.ot" "line_17Shape.cp[1]";
connectAttr "DCM_18.ot" "line_18Shape.cp[0]";
connectAttr "DCM_19.ot" "line_18Shape.cp[1]";
connectAttr "DCM_19.ot" "line_19Shape.cp[0]";
connectAttr "DCM_20.ot" "line_19Shape.cp[1]";
connectAttr "DCM_21.ot" "line_21Shape.cp[0]";
connectAttr "DCM_22.ot" "line_21Shape.cp[1]";
connectAttr "DCM_22.ot" "line_22Shape.cp[0]";
connectAttr "DCM_23.ot" "line_22Shape.cp[1]";
connectAttr "DCM_23.ot" "line_23Shape.cp[0]";
connectAttr "DCM_24.ot" "line_23Shape.cp[1]";
connectAttr "DCM_24.ot" "line_24Shape.cp[0]";
connectAttr "DCM_25.ot" "line_24Shape.cp[1]";
connectAttr "DCM_3.ot" "line_25Shape.cp[0]";
connectAttr "DCM_7.ot" "line_25Shape.cp[1]";
connectAttr "DCM_7.ot" "line_26Shape.cp[0]";
connectAttr "DCM_12.ot" "line_26Shape.cp[1]";
connectAttr "DCM_12.ot" "line_27Shape.cp[0]";
connectAttr "DCM_17.ot" "line_27Shape.cp[1]";
connectAttr "DCM_17.ot" "line_28Shape.cp[0]";
connectAttr "DCM_22.ot" "line_28Shape.cp[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lwr_fkce_tag.prep" "hand_fkc_tag.prep";
connectAttr "upr_fkc_tag.prep" "lwr_fkce_tag.prep";
connectAttr "hand_fkc_tag.pare" "lwr_fkce_tag.child[0]";
connectAttr "clavicle_fkc_tag.prep" "upr_fkc_tag.prep";
connectAttr "lwr_fkce_tag.pare" "upr_fkc_tag.child[0]";
connectAttr "upr_fkc_tag.pare" "clavicle_fkc_tag.child[0]";
connectAttr "ikc_tag.pare" "clavicle_fkc_tag.child[1]";
connectAttr "pvc_tag.pare" "clavicle_fkc_tag.child[2]";
connectAttr "armsetting_tag.pare" "clavicle_fkc_tag.child[3]";
connectAttr "clavicle_fkc_tag.prep" "ikc_tag.prep";
connectAttr "clavicle_fkc_tag.prep" "pvc_tag.prep";
connectAttr "clavicle_fkc_tag.prep" "armsetting_tag.prep";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "foot_FKC_tag.prep" "ball_FKC_tag.prep";
connectAttr "calf_FKC_tag.prep" "foot_FKC_tag.prep";
connectAttr "ball_FKC_tag.pare" "foot_FKC_tag.child[0]";
connectAttr "thigh_FKC_tag.prep" "calf_FKC_tag.prep";
connectAttr "foot_FKC_tag.pare" "calf_FKC_tag.child[0]";
connectAttr "upThigh_FKC_tag.prep" "thigh_FKC_tag.prep";
connectAttr "calf_FKC_tag.pare" "thigh_FKC_tag.child[0]";
connectAttr "thigh_FKC_tag.pare" "upThigh_FKC_tag.child[0]";
connectAttr "lf_leg_ikc_tag.pare" "upThigh_FKC_tag.child[1]";
connectAttr "lf_leg_pvc_tag.pare" "upThigh_FKC_tag.child[2]";
connectAttr "legHolder_CON_tag.pare" "upThigh_FKC_tag.child[3]";
connectAttr "upThigh_FKC_tag.prep" "lf_leg_ikc_tag.prep";
connectAttr "upThigh_FKC_tag.prep" "lf_leg_pvc_tag.prep";
connectAttr "upThigh_FKC_tag.prep" "legHolder_CON_tag.prep";
connectAttr ":initialShadingGroup.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr ":initialParticleSE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr ":lambert1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "fgr00_1_guide.wm" "DCM_2.imat";
connectAttr "fgr00_2_guide.wm" "DCM_3.imat";
connectAttr "fgr00_3_guide.wm" "DCM_4.imat";
connectAttr "fgr00_4_guide.wm" "DCM_5.imat";
connectAttr "fgr01_1_guide.wm" "DCM_6.imat";
connectAttr "fgr01_2_guide.wm" "DCM_7.imat";
connectAttr "fgr01_3_guide.wm" "DCM_8.imat";
connectAttr "fgr01_4_guide.wm" "DCM_9.imat";
connectAttr "fgr01_5_guide.wm" "DCM_10.imat";
connectAttr "fgr02_1_guide.wm" "DCM_11.imat";
connectAttr "fgr02_2_guide.wm" "DCM_12.imat";
connectAttr "fgr02_3_guide.wm" "DCM_13.imat";
connectAttr "fgr02_4_guide.wm" "DCM_14.imat";
connectAttr "fgr02_5_guide.wm" "DCM_15.imat";
connectAttr "fgr03_1_guide.wm" "DCM_16.imat";
connectAttr "fgr03_2_guide.wm" "DCM_17.imat";
connectAttr "fgr03_3_guide.wm" "DCM_18.imat";
connectAttr "fgr03_4_guide.wm" "DCM_19.imat";
connectAttr "fgr03_5_guide.wm" "DCM_20.imat";
connectAttr "fgr04_1_guide.wm" "DCM_21.imat";
connectAttr "fgr04_2_guide.wm" "DCM_22.imat";
connectAttr "fgr04_3_guide.wm" "DCM_23.imat";
connectAttr "fgr04_4_guide.wm" "DCM_24.imat";
connectAttr "fgr04_5_guide.wm" "DCM_25.imat";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rtHand.ma
