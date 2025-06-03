//Maya ASCII 2023 scene
//Name: lfHand.ma
//Last modified: Mon, Apr 14, 2025 07:06:40 PM
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
fileInfo "UUID" "B733194B-4ECB-5C70-C4E4-B29D6F48EBCA";
createNode transform -n "module_grp";
	rename -uid "A08207E3-49BA-E61C-5646-E09F599D0878";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "50807175-43FF-E7F4-58C3-EABB95B14D6E";
	setAttr ".t" -type "double3" 69 145 0 ;
createNode joint -n "handJ_guide" -p "master_guide";
	rename -uid "9B8E2D0D-4BB1-D0A7-883F-1FA9EF91A0DA";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 0 0 ;
	setAttr ".radi" 2;
createNode transform -n "fgr00_2_guide" -p "handJ_guide";
	rename -uid "3678C5E8-4A0A-9C0C-690F-A8ADB5D5B3F3";
	setAttr ".t" -type "double3" 7.908438528481625 7.7898083035745493 4.4442686867461987 ;
	setAttr ".r" -type "double3" 63.897886248013926 -25.658906273255344 33.690067525979899 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "fgr00_3_guide" -p "fgr00_2_guide";
	rename -uid "1CF5A0ED-4599-97A4-9316-0D90D7BB8AF2";
	setAttr ".t" -type "double3" 2.4999999999999911 -2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "fgr00_4_guide" -p "fgr00_3_guide";
	rename -uid "BA6A09DD-47E6-DCAC-5FF5-5FB7DBD58ED3";
	setAttr ".t" -type "double3" 1.5000000000000049 2.8421709430404007e-14 2.1316282072803006e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode nurbsCurve -n "fgr00_4_guideShape" -p "fgr00_4_guide";
	rename -uid "16B9734B-4DA2-37D1-5DB2-27A881ED5666";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 -9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 -9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 -9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 -9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 -9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 -9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 -9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 -9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 -9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 -9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 -9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 -9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0 -1.1786183215471499e-08 0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0 -0.095670832376624992 -0.23096983102363497
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.23096983102363497 -0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0 -0.23096983102363497 0.095670832376624992
		0 -0.17677666489889998 0.17677666489889998
		0 -0.095670832376624992 0.23096983102363497
		0 -1.1786183215471499e-08 0.24876249751237497
		0 0.095670832376624992 0.23096983102363497
		0 0.17677666489889998 0.17677666489889998
		0 0.23096983102363497 0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 -0.095670832376624992
		0 0.17677666489889998 -0.17677666489889998
		0 0.095670832376624992 -0.23096983102363497
		0 0 -0.24876250038935477
		0 0 -2.3481880983577201
		-0.30362380328455968 0 -2.6518119016422812
		0.30362380328455968 0 -2.6518119016422812
		0 0 -2.3481880983577201
		;
	setAttr ".adot" yes;
createNode transform -n "fgr00_1_guide" -p "fgr00_2_guide";
	rename -uid "9B4EA223-44D3-B220-E1A1-2DA3134393AA";
	setAttr ".t" -type "double3" -4.0000000000000195 2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode nurbsCurve -n "fgr00_2_guideShape" -p "fgr00_2_guide";
	rename -uid "2A9843A0-4463-7788-F84C-D5ADCC4FBBAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 56 0 no 3
		57 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.496473880000003
		 53 54 55
		57
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.23046883102864502 -0.093632332397009993 -9.9340999006590018e-09
		-0.177093831562395 -0.17470149825298498 -9.9340999006590018e-09
		-0.096758165699085005 -0.229173831041595 -9.9340999006590018e-09
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0.093631999063679985 -0.23046849769531499 -9.9340999006590018e-09
		0.17470133158632001 -0.17709366489573 -9.9340999006590018e-09
		0.22917366437493 -0.096757832365754998 -9.9340999006590018e-09
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.23046849769531499 0.093632332397009993 -9.9340999006590018e-09
		0.17709349822906503 0.17470149825298498 -9.9340999006590018e-09
		0.096757832365754998 0.229173831041595 -9.9340999006590018e-09
		0 0.24875666417909997 0
		-0.093632332397009993 0.23046849769531499 -9.9340999006590018e-09
		-0.17470166491965 0.17709366489573 -9.9340999006590018e-09
		-0.22917399770825997 0.096757832365754998 -9.9340999006590018e-09
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0.095194832381385 -0.00064734999352649997 -0.22982649770173499
		0.17589766490768999 -0.0011961366547052999 -0.17590166490765002
		0.22982116436845501 -0.0015628233177051002 -0.095197332381359995
		0.24875666417909997 -0.0016915833164175002 -9.9340999006590018e-09
		0.22982116436845501 -0.0015628233177051002 0.095197332381359995
		0.17589766490768999 -0.0011961366547052999 0.17590166490765002
		0.095194832381385 -0.00064734999352649997 0.22982649770173499
		0 -1.1786183215471499e-08 0.24876249751237497
		-0.095195165714714994 0.0006473266601934001 0.22982649770173499
		-0.17589783157435501 0.0011961133213722001 0.17590166490765002
		-0.229821497701785 0.0015627999843720001 0.095197332381359995
		-0.24875699751243002 0.0016915666497509998 -9.9340999006590018e-09
		-0.229821497701785 0.0015627999843720001 -0.095197332381359995
		-0.17589783157435501 0.0011961133213722001 -0.17590166490765002
		-0.095195165714714994 0.0006473266601934001 -0.22982649770173499
		0 0 -0.24876249751237497
		0 -0.095670832376624992 -0.23096983102363497
		0 -0.17677666489889998 -0.17677666489889998
		0 -0.23096983102363497 -0.095670832376624992
		-0.0016914999830850001 -0.24875666417909997 -9.9340999006590018e-09
		0 -0.23096983102363497 0.095670832376624992
		0 -0.17677666489889998 0.17677666489889998
		0 -0.095670832376624992 0.23096983102363497
		0 -1.1786183215471499e-08 0.24876249751237497
		0 0.095670832376624992 0.23096983102363497
		0 0.17677666489889998 0.17677666489889998
		0 0.23096983102363497 0.095670832376624992
		0 0.24875666417909997 0
		0 0.23096983102363497 -0.095670832376624992
		0 0.17677666489889998 -0.17677666489889998
		0 0.095670832376624992 -0.23096983102363497
		0 0 -0.24876250038935477
		0 0 -2.3481880983577201
		-0.30362380328455968 0 -2.6518119016422812
		0.30362380328455968 0 -2.6518119016422812
		0 0 -2.3481880983577201
		;
	setAttr ".adot" yes;
createNode transform -n "fgr01_2_guide" -p "handJ_guide";
	rename -uid "F2E2E732-47C1-2978-7C33-82BF854E0349";
	setAttr ".t" -type "double3" 12.46072688082856 4.4323424837946614 -2.8421709430404007e-14 ;
createNode transform -n "fgr01_3_guide" -p "fgr01_2_guide";
	rename -uid "66E5AAAC-4557-FA5C-EEC8-BBACA0056447";
	setAttr ".t" -type "double3" 3.5 -1.0658141036401503e-14 0 ;
createNode transform -n "fgr01_4_guide" -p "fgr01_3_guide";
	rename -uid "CB899F28-494D-EE1D-44EB-B8B6CE5A0022";
	setAttr ".t" -type "double3" 2.0999999999999943 -8.8817841970012523e-16 0 ;
createNode transform -n "fgr01_5_guide" -p "fgr01_4_guide";
	rename -uid "35FBC839-412A-2D97-01B5-04B16DC8AA21";
	setAttr ".t" -type "double3" 1.4000000000000057 8.8817841970012523e-15 0 ;
createNode transform -n "fgr01_1_guide" -p "fgr01_2_guide";
	rename -uid "F03CB21B-471E-302F-B785-7FA252B9F314";
	setAttr ".t" -type "double3" -5.5999999999999943 -1.7763568394002505e-15 2.8421709430404007e-14 ;
createNode transform -n "fgr02_2_guide" -p "handJ_guide";
	rename -uid "5F7655F9-488F-340A-B14B-5D90B9A1FBA4";
	setAttr ".t" -type "double3" 12.46072688082856 1.4323424837946612 -2.8421709430404007e-14 ;
createNode transform -n "fgr02_3_guide" -p "fgr02_2_guide";
	rename -uid "AFB1C47C-4441-17F3-DC2A-7F82A54F9A06";
	setAttr ".t" -type "double3" 3.5 -1.021405182655144e-14 0 ;
createNode transform -n "fgr02_4_guide" -p "fgr02_3_guide";
	rename -uid "3E9796E7-43E7-0AF8-3479-3C838C6D0E72";
	setAttr ".t" -type "double3" 2.0999999999999943 1.9539925233402755e-14 0 ;
createNode transform -n "fgr02_5_guide" -p "fgr02_4_guide";
	rename -uid "AAA207A6-4CE2-95AA-8CA7-6DBC75E8A631";
	setAttr ".t" -type "double3" 1.4000000000000057 -1.021405182655144e-14 0 ;
createNode transform -n "fgr02_1_guide" -p "fgr02_2_guide";
	rename -uid "07F7F36E-4E0F-63CB-37DE-3C89D9337AA1";
	setAttr ".t" -type "double3" -5.5999999999999943 -1.5543122344752192e-15 2.8421709430404007e-14 ;
createNode transform -n "fgr03_2_guide" -p "handJ_guide";
	rename -uid "8A7C7F9F-47AF-8C33-0EF6-3194B2FF3C7E";
	setAttr ".t" -type "double3" 12.46072688082856 -1.5676575162053386 -2.8421709430404007e-14 ;
createNode transform -n "fgr03_3_guide" -p "fgr03_2_guide";
	rename -uid "3A403DCF-4867-98A6-B929-CEB466BE575B";
	setAttr ".t" -type "double3" 3.5 -1.021405182655144e-14 0 ;
createNode transform -n "fgr03_4_guide" -p "fgr03_3_guide";
	rename -uid "5927FA8A-405C-3865-CEB6-6C8A63535ACD";
	setAttr ".t" -type "double3" 2.0999999999999943 1.9539925233402755e-14 0 ;
createNode transform -n "fgr03_5_guide" -p "fgr03_4_guide";
	rename -uid "1BCDE36A-4B58-01D6-96C4-CF8CB8A59AEA";
	setAttr ".t" -type "double3" 1.4000000000000057 -1.021405182655144e-14 0 ;
createNode transform -n "fgr03_1_guide" -p "fgr03_2_guide";
	rename -uid "ACF93070-456A-FB43-692E-19B6CEE352E5";
	setAttr ".t" -type "double3" -5.5999999999999943 -1.7763568394002505e-15 2.8421709430404007e-14 ;
createNode transform -n "fgr04_2_guide" -p "handJ_guide";
	rename -uid "5E7C14F1-48C2-B725-F8C0-52ADF0A6956D";
	setAttr ".t" -type "double3" 12.46072688082856 -4.5676575162053368 -2.8421709430404007e-14 ;
createNode transform -n "fgr04_3_guide" -p "fgr04_2_guide";
	rename -uid "97A1F794-463C-9CC5-23AE-75B2C27B4462";
	setAttr ".t" -type "double3" 3.5 -1.0658141036401503e-14 0 ;
createNode transform -n "fgr04_4_guide" -p "fgr04_3_guide";
	rename -uid "3C3909B4-49EB-964A-138F-04B32B8CC8DE";
	setAttr ".t" -type "double3" 2.0999999999999943 1.9539925233402755e-14 0 ;
createNode transform -n "fgr04_5_guide" -p "fgr04_4_guide";
	rename -uid "9F46FE35-4EE1-8820-6E66-7ABCA4821059";
	setAttr ".t" -type "double3" 1.4000000000000057 -1.0658141036401503e-14 0 ;
createNode transform -n "fgr04_1_guide" -p "fgr04_2_guide";
	rename -uid "2C2502D3-4DB2-E0F2-3634-6E84A707E65C";
	setAttr ".t" -type "double3" -5.5999999999999943 -1.7763568394002505e-15 2.8421709430404007e-14 ;
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "C6208450-45F6-5896-8B4D-4C90CDC09D5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.8413523889570752e-16 7.9065284657222206 -7.9065284657222206
		2.9394099917617857e-32 7.839682129746822 -5.3620153513726223e-16
		-4.8413523889570752e-16 7.9065284657222197 7.9065284657222206
		-4.8004208132635752e-16 4.0641050599019743e-16 7.8396821297468238
		-4.8413523889570752e-16 -7.9065284657222206 7.9065284657222206
		-4.8086143602273706e-32 -7.8396821297468255 7.2914686692995234e-16
		4.8413523889570752e-16 -7.9065284657222197 -7.9065284657222206
		4.8004208132635752e-16 -1.0690946840156421e-15 -7.8396821297468238
		4.8413523889570752e-16 7.9065284657222206 -7.9065284657222206
		2.9394099917617857e-32 7.839682129746822 -5.3620153513726223e-16
		-4.8413523889570752e-16 7.9065284657222197 7.9065284657222206
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "71D30D7F-4719-E829-E3ED-DA99891C6E72";
	setAttr ".it" no;
createNode transform -n "line_2" -p "line_grp";
	rename -uid "E3F49ED7-481C-AFA1-17E6-D294B0BA16D1";
createNode nurbsCurve -n "line_2Shape" -p "line_2";
	rename -uid "8E81E978-4F1B-8D34-3F7B-10888BC0DDC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		75.860726880828565 145 -4.5676575162053386
		81.46072688082856 145.00000000000003 -4.5676575162053368
		;
	setAttr ".adot" yes;
createNode transform -n "line_3" -p "line_grp";
	rename -uid "47ACFE0C-4391-C33B-1BE4-EEB0A114F8C0";
createNode nurbsCurve -n "line_3Shape" -p "line_3";
	rename -uid "E0EADF59-4739-F09E-10C9-3F9F9F55D736";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 -4.5676575162053368
		84.96072688082856 145.00000000000003 -4.5676575162053474
		;
	setAttr ".adot" yes;
createNode transform -n "line_4" -p "line_grp";
	rename -uid "48643509-4677-07AA-4013-158C842CA94D";
createNode nurbsCurve -n "line_4Shape" -p "line_4";
	rename -uid "40407BDA-4145-3D08-E65B-CCAA90379283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.96072688082856 145.00000000000003 -4.5676575162053474
		87.060726880828554 145.00000000000003 -4.5676575162053279
		;
	setAttr ".adot" yes;
createNode transform -n "line_5" -p "line_grp";
	rename -uid "9889F57A-4C6D-148A-3F62-34968BCDC561";
createNode nurbsCurve -n "line_5Shape" -p "line_5";
	rename -uid "784337C9-4EDB-D202-E867-97A9622C696F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.060726880828554 145.00000000000003 -4.5676575162053279
		88.46072688082856 145.00000000000003 -4.5676575162053386
		;
	setAttr ".adot" yes;
createNode transform -n "line_7" -p "line_grp";
	rename -uid "059676C7-4D7D-D7A2-BA20-EBA608892634";
createNode nurbsCurve -n "line_7Shape" -p "line_7";
	rename -uid "30E82451-4219-947E-8E1C-5F86EC151283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		75.860726880828565 145 -1.5676575162053408
		81.46072688082856 145.00000000000003 -1.567657516205339
		;
	setAttr ".adot" yes;
createNode transform -n "line_8" -p "line_grp";
	rename -uid "79A48CEA-440C-CF48-6137-D28FAC329356";
createNode nurbsCurve -n "line_8Shape" -p "line_8";
	rename -uid "362CF81C-467C-2C54-2210-77B56BF32677";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 -1.567657516205339
		84.96072688082856 145.00000000000003 -1.5676575162053492
		;
	setAttr ".adot" yes;
createNode transform -n "line_9" -p "line_grp";
	rename -uid "0FD6D5BC-4D58-9A55-9AE6-22AD32E5A791";
createNode nurbsCurve -n "line_9Shape" -p "line_9";
	rename -uid "CA36DBCF-46D5-E9A9-5B20-8BBAEB0A666A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.96072688082856 145.00000000000003 -1.5676575162053492
		87.060726880828554 145.00000000000003 -1.5676575162053297
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp";
	rename -uid "07DFDB7C-4449-E71D-8CC2-059D4721439A";
createNode nurbsCurve -n "line_10Shape" -p "line_10";
	rename -uid "FE6B5ED6-40C5-69D3-107D-68BF9DDA2ABE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.060726880828554 145.00000000000003 -1.5676575162053297
		88.46072688082856 145.00000000000003 -1.5676575162053399
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp";
	rename -uid "74270338-4CBC-4CDC-1F4C-0FAC3EDCA64C";
createNode nurbsCurve -n "line_12Shape" -p "line_12";
	rename -uid "39684501-49BE-74CF-D9DD-49A0161CC8D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		75.860726880828565 145 1.4323424837946592
		81.46072688082856 145.00000000000003 1.4323424837946608
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp";
	rename -uid "55BFFE5D-4C54-6C8E-AA91-EDA59FB000BA";
createNode nurbsCurve -n "line_13Shape" -p "line_13";
	rename -uid "FADEFA43-4842-8304-E413-6C81E4D91CE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 1.4323424837946608
		84.96072688082856 145.00000000000003 1.4323424837946506
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp";
	rename -uid "D9C63A5D-4230-2E82-58EA-A48FFFB23131";
createNode nurbsCurve -n "line_14Shape" -p "line_14";
	rename -uid "890283DE-4612-6514-FBE4-879938673047";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.96072688082856 145.00000000000003 1.4323424837946506
		87.060726880828554 145.00000000000003 1.4323424837946701
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp";
	rename -uid "0590B4B2-4860-A126-E6DE-8CAF52E99137";
createNode nurbsCurve -n "line_15Shape" -p "line_15";
	rename -uid "19710904-43E9-F6F7-CA5F-C18852AF1A81";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.060726880828554 145.00000000000003 1.4323424837946701
		88.46072688082856 145.00000000000003 1.4323424837946599
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp";
	rename -uid "6774F0A0-4CE9-1CB6-11EF-BCB79B735181";
createNode nurbsCurve -n "line_17Shape" -p "line_17";
	rename -uid "B6AA7557-44BD-E83C-0517-E5A1D10E524C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		75.860726880828565 145 4.4323424837946597
		81.46072688082856 145.00000000000003 4.4323424837946614
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp";
	rename -uid "774804C2-4356-3F6A-68F6-6D9935BDDE7B";
createNode nurbsCurve -n "line_18Shape" -p "line_18";
	rename -uid "5830B148-40E7-3972-FCD6-10AEA3CEBCD8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 4.4323424837946614
		84.96072688082856 145.00000000000003 4.4323424837946508
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp";
	rename -uid "89822152-4255-E389-CDFE-1BAFFEE3D59F";
createNode nurbsCurve -n "line_19Shape" -p "line_19";
	rename -uid "88BD4962-4013-AEDF-14B1-27BAC22C9042";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.96072688082856 145.00000000000003 4.4323424837946508
		87.060726880828554 145.00000000000003 4.4323424837946499
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp";
	rename -uid "A428497D-4FE7-D947-D51A-8C95DFE7588F";
createNode nurbsCurve -n "line_20Shape" -p "line_20";
	rename -uid "3E2DF6AE-44E6-137B-C6F8-50B80D604A01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.060726880828554 145.00000000000003 4.4323424837946499
		88.46072688082856 145.00000000000003 4.4323424837946588
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp";
	rename -uid "5A3F41E8-45D1-78A8-C635-1887EC805321";
createNode nurbsCurve -n "line_22Shape" -p "line_22";
	rename -uid "364C8450-4B7D-D1EC-6CDC-D4B0264ED79B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		73.908438528481597 142.28778212082267 5.7898083035745636
		76.908438528481625 140.5557313132538 7.7898083035745493
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp";
	rename -uid "E07BE230-4952-A584-CD0A-8FB63E9ACB9C";
createNode nurbsCurve -n "line_23Shape" -p "line_23";
	rename -uid "DF4D442E-44D6-4D1F-C20A-7BA27C85C986";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		76.908438528481625 140.5557313132538 7.7898083035745493
		78.783438528481625 139.47319955852328 9.0398083035745493
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp";
	rename -uid "9A6A523A-4237-125E-2B7E-1A827BCCA305";
createNode nurbsCurve -n "line_24Shape" -p "line_24";
	rename -uid "94B16B61-4A02-8D03-6910-33B76F8B5216";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		78.783438528481625 139.47319955852328 9.0398083035745493
		79.908438528481611 138.82368050568491 9.7898083035745405
		;
	setAttr ".adot" yes;
createNode transform -n "line_29" -p "line_grp";
	rename -uid "39A2B488-46FD-F2A9-412C-34ABDAD8C43D";
createNode nurbsCurve -n "line_29Shape" -p "line_29";
	rename -uid "C81DC618-4C24-052C-D569-ED816909700E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 4.4323424837946614
		81.46072688082856 145.00000000000003 1.4323424837946608
		;
	setAttr ".adot" yes;
createNode transform -n "line_30" -p "line_grp";
	rename -uid "C8C70661-406E-FF7B-4E39-3D9DBBB59DD9";
createNode nurbsCurve -n "line_30Shape" -p "line_30";
	rename -uid "802940C7-4F39-9EC4-A1AA-C3844227B735";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 1.4323424837946608
		81.46072688082856 145.00000000000003 -1.567657516205339
		;
	setAttr ".adot" yes;
createNode transform -n "line_31" -p "line_grp";
	rename -uid "EA3A3974-48BC-3742-6B80-78870A9091FB";
createNode nurbsCurve -n "line_31Shape" -p "line_31";
	rename -uid "EC0452B9-48F6-9107-E636-43B5BE37FF30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 -1.567657516205339
		81.46072688082856 145.00000000000003 -4.5676575162053368
		;
	setAttr ".adot" yes;
createNode transform -n "line_32" -p "line_grp";
	rename -uid "4DF34594-4E06-9AE4-F385-38A6A195B571";
createNode nurbsCurve -n "line_32Shape" -p "line_32";
	rename -uid "D494AE42-4444-4B95-E53D-DD8910BEA63D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		81.46072688082856 145.00000000000003 4.4323424837946614
		76.908438528481625 140.5557313132538 7.7898083035745493
		;
	setAttr ".adot" yes;
createNode transform -s -n "persp";
	rename -uid "AB7E52E5-4BC6-549B-1229-4BA904DD5D93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 181.457744173636 223.11204457745126 105.05462501205923 ;
	setAttr ".r" -type "double3" -33.93835272983268 46.599999999952765 -2.3145193526637077e-15 ;
	setAttr -cb on ".ro";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19F6DB4F-4918-877A-57DD-5EBBE38E71A5";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 167.6529652157935;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 78.88217534205657 145 2.1670738094375364 ;
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
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr03_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr03_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr04_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr04_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr04_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr01_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr01_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr02_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr02_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr03_5_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr01_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr02_4_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr04_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr03_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr02_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr01_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr00_1_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_3_guide|fgr00_4_guide|fgr00_4_guideShape" "fgr00_3_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_2_guideShape" "fgr01_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_2_guideShape" "fgr04_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_2_guideShape" "fgr02_2_guide" ;
parent -s -nc -r -add "|module_grp|master_guide|handJ_guide|fgr00_2_guide|fgr00_2_guideShape" "fgr03_2_guide" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6CED81B9-4CED-8C96-3317-589CB21169FB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5839D1B9-4A71-33C8-20ED-89B575736325";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F4889455-449A-7D08-3BEC-B3AF0F2DED2D";
createNode displayLayerManager -n "layerManager";
	rename -uid "03F42CBE-4DED-CF07-1ACE-88BE969925AB";
createNode displayLayer -n "defaultLayer";
	rename -uid "4011EB8B-4296-1EB2-2E08-40844F6318E5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8FC98B04-4B0E-53E5-E441-F2A8E7ED7B28";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BD18B807-4968-E110-0D94-B9A28F4760A6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9EAC53FD-4E7F-55B1-0379-C8B5820375D6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
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
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 565\n            -height 696\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 565\\n    -height 696\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 565\\n    -height 696\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 10 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
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
	setAttr ".rigClass" -type "string" "Hand";
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
	rename -uid "D3C0F7A4-45FD-C791-68D2-BF9B28F7F700";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2039.4787265672314 -1653.5713628644062 ;
	setAttr ".tgi[0].vh" -type "double2" 2538.2882305558464 324.99998708566113 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "CC4FE9B8-4BB3-782D-9F12-B2BAA0BD199E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -22686.31007253889 -23247.024322667778 ;
	setAttr ".tgi[0].vh" -type "double2" 26456.548168746733 23038.690997612866 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -258.57144165039062;
	setAttr ".tgi[0].ni[0].y" 115.71428680419922;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 48.571430206298828;
	setAttr ".tgi[0].ni[1].y" 212.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 2083;
	setAttr ".tgi[0].ni[2].x" 48.571430206298828;
	setAttr ".tgi[0].ni[2].y" 17.142856597900391;
	setAttr ".tgi[0].ni[2].nvs" 2083;
createNode decomposeMatrix -n "DCM_2";
	rename -uid "BEBCD960-4350-BB66-8994-F09A45601EBE";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "B2968570-4427-B9F3-5520-5B88BBAFBCE4";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "BFEA0B0B-45C2-5D1D-4C99-14B4B95B457D";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "392B3FC6-4B97-2520-4A4D-2D94CB6B4BCF";
createNode decomposeMatrix -n "DCM_6";
	rename -uid "BAB4115D-49BE-1AC8-BAAF-CA9D1965E776";
createNode decomposeMatrix -n "DCM_7";
	rename -uid "A9EE30D5-44FA-FF62-5080-3BA17B1A5EB2";
createNode decomposeMatrix -n "DCM_8";
	rename -uid "FA226AB7-4E10-61B5-616E-6B9CDF2800B7";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "6295D1A6-4BCA-3E3B-0766-BEAE928AEE9B";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "70955C4A-49BE-E6A3-0FCE-0C8083184E9F";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "B6B98122-4E92-2603-7849-BF86FB5F6CD0";
createNode decomposeMatrix -n "DCM_12";
	rename -uid "7AE7B67A-4DBD-E154-E180-DC8F51996E58";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "549BCB4B-453A-251F-F970-37AA5C5FC8C0";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "C84E22EF-4DB1-31CA-9156-93947EA8707E";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "24A99819-4D14-4E89-5DE3-5D83CE0627C0";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "BDEE58E1-4C1A-6EFC-FEEF-78A296F874E5";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "02D88D76-45F7-6B7F-90E6-A98649E92C14";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "80A86F6A-47DD-9ABA-F3B1-B8A9C9EE2837";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "6C9B2E93-4E56-88BF-30B5-F8947BC34186";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "9ECA9EBF-42A0-6E4A-BBD1-668759CB5379";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "BD721984-427D-06A6-09CC-5A84E576A2FD";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "AA052830-4709-5376-55A9-B39B6979976C";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "75CF54E9-4B21-7793-76FD-B288E605E44E";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "011CB711-4B14-63C3-B2FF-DEA26624F89E";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "28B112B6-4715-CC03-9FB3-D1A3477A634E";
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
	setAttr -av -k on ".aoon" yes;
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
connectAttr "DCM_5.ot" "line_5Shape.cp[0]";
connectAttr "DCM_6.ot" "line_5Shape.cp[1]";
connectAttr "DCM_7.ot" "line_7Shape.cp[0]";
connectAttr "DCM_8.ot" "line_7Shape.cp[1]";
connectAttr "DCM_8.ot" "line_8Shape.cp[0]";
connectAttr "DCM_9.ot" "line_8Shape.cp[1]";
connectAttr "DCM_9.ot" "line_9Shape.cp[0]";
connectAttr "DCM_10.ot" "line_9Shape.cp[1]";
connectAttr "DCM_10.ot" "line_10Shape.cp[0]";
connectAttr "DCM_11.ot" "line_10Shape.cp[1]";
connectAttr "DCM_12.ot" "line_12Shape.cp[0]";
connectAttr "DCM_13.ot" "line_12Shape.cp[1]";
connectAttr "DCM_13.ot" "line_13Shape.cp[0]";
connectAttr "DCM_14.ot" "line_13Shape.cp[1]";
connectAttr "DCM_14.ot" "line_14Shape.cp[0]";
connectAttr "DCM_15.ot" "line_14Shape.cp[1]";
connectAttr "DCM_15.ot" "line_15Shape.cp[0]";
connectAttr "DCM_16.ot" "line_15Shape.cp[1]";
connectAttr "DCM_17.ot" "line_17Shape.cp[0]";
connectAttr "DCM_18.ot" "line_17Shape.cp[1]";
connectAttr "DCM_18.ot" "line_18Shape.cp[0]";
connectAttr "DCM_19.ot" "line_18Shape.cp[1]";
connectAttr "DCM_19.ot" "line_19Shape.cp[0]";
connectAttr "DCM_20.ot" "line_19Shape.cp[1]";
connectAttr "DCM_20.ot" "line_20Shape.cp[0]";
connectAttr "DCM_21.ot" "line_20Shape.cp[1]";
connectAttr "DCM_22.ot" "line_22Shape.cp[0]";
connectAttr "DCM_23.ot" "line_22Shape.cp[1]";
connectAttr "DCM_23.ot" "line_23Shape.cp[0]";
connectAttr "DCM_24.ot" "line_23Shape.cp[1]";
connectAttr "DCM_24.ot" "line_24Shape.cp[0]";
connectAttr "DCM_25.ot" "line_24Shape.cp[1]";
connectAttr "DCM_18.ot" "line_29Shape.cp[0]";
connectAttr "DCM_13.ot" "line_29Shape.cp[1]";
connectAttr "DCM_13.ot" "line_30Shape.cp[0]";
connectAttr "DCM_8.ot" "line_30Shape.cp[1]";
connectAttr "DCM_8.ot" "line_31Shape.cp[0]";
connectAttr "DCM_3.ot" "line_31Shape.cp[1]";
connectAttr "DCM_18.ot" "line_32Shape.cp[0]";
connectAttr "DCM_23.ot" "line_32Shape.cp[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr ":lambert1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr ":initialShadingGroup.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr ":initialParticleSE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "fgr04_1_guide.wm" "DCM_2.imat";
connectAttr "fgr04_2_guide.wm" "DCM_3.imat";
connectAttr "fgr04_3_guide.wm" "DCM_4.imat";
connectAttr "fgr04_4_guide.wm" "DCM_5.imat";
connectAttr "fgr04_5_guide.wm" "DCM_6.imat";
connectAttr "fgr03_1_guide.wm" "DCM_7.imat";
connectAttr "fgr03_2_guide.wm" "DCM_8.imat";
connectAttr "fgr03_3_guide.wm" "DCM_9.imat";
connectAttr "fgr03_4_guide.wm" "DCM_10.imat";
connectAttr "fgr03_5_guide.wm" "DCM_11.imat";
connectAttr "fgr02_1_guide.wm" "DCM_12.imat";
connectAttr "fgr02_2_guide.wm" "DCM_13.imat";
connectAttr "fgr02_3_guide.wm" "DCM_14.imat";
connectAttr "fgr02_4_guide.wm" "DCM_15.imat";
connectAttr "fgr02_5_guide.wm" "DCM_16.imat";
connectAttr "fgr01_1_guide.wm" "DCM_17.imat";
connectAttr "fgr01_2_guide.wm" "DCM_18.imat";
connectAttr "fgr01_3_guide.wm" "DCM_19.imat";
connectAttr "fgr01_4_guide.wm" "DCM_20.imat";
connectAttr "fgr01_5_guide.wm" "DCM_21.imat";
connectAttr "fgr00_1_guide.wm" "DCM_22.imat";
connectAttr "fgr00_2_guide.wm" "DCM_23.imat";
connectAttr "fgr00_3_guide.wm" "DCM_24.imat";
connectAttr "fgr00_4_guide.wm" "DCM_25.imat";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of lfHand.ma
