//Maya ASCII 2023 scene
//Name: rt_toes.ma
//Last modified: Tue, Jun 25, 2024 06:48:32 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "ik2Bsolver" "ik2Bsolver" "2.5";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "960C025C-41B0-6094-0BEE-9DB982111747";
createNode transform -n "module_grp";
	rename -uid "3F6958F6-4253-676A-51E6-CA9FE9573FBE";
	addAttr -ci true -sn "mirrorCode" -ln "mirrorCode" -dt "string";
	setAttr -cb on ".ro";
	setAttr ".mirrorCode" -type "string" "100011";
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "387C8921-4CD0-9D0D-ECBC-3E8A3C48EB6E";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode transform -n "line_4" -p "line_grp";
	rename -uid "3B6924D3-4E02-4BBE-8529-DF89426235C8";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_4Shape" -p "line_4";
	rename -uid "C7AE8754-40AE-18F1-6E2D-08BB2A26F283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-28.999999999999996 1.9720527350091907e-15 7.3999999999999995
		-28.999999999999989 1.8369701987210288e-15 15
		;
createNode transform -n "line_5" -p "line_grp";
	rename -uid "5896F44A-4588-4CE5-1D21-CDADD52FD2AD";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_5Shape" -p "line_5";
	rename -uid "4AC1F272-4EB3-C005-18C0-579441BB05EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-28.999999999999989 1.8369701987210288e-15 15
		-28.999999999999986 3.3436571500542264e-15 18.600000000000001
		;
createNode transform -n "line_7" -p "line_grp";
	rename -uid "4E650F5E-4DAC-34EA-70E9-459F80F3E3B8";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_7Shape" -p "line_7";
	rename -uid "862524A2-4EA4-A783-AFE5-0B8C85D282C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-26.999999999999993 3.3436571500542268e-15 18.600000000000005
		-26.999999999999989 3.2211924701394913e-15 17.600000000000001
		;
createNode transform -n "line_8" -p "line_grp";
	rename -uid "6228155C-4966-79A0-FDAD-42BE05BBF575";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_8Shape" -p "line_8";
	rename -uid "4AA5BD8F-4BDA-FB3E-690E-279E7AE69923";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-26.999999999999989 3.2211924701394913e-15 17.600000000000001
		-26.999999999999986 1.8369701987210288e-15 15
		;
createNode transform -n "line_9" -p "line_grp";
	rename -uid "8D429F13-4BB8-1B63-8D1C-268F221DF13B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_9Shape" -p "line_9";
	rename -uid "F3A55CEE-4AC1-22B9-90AC-FC8F451384DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-26.999999999999986 1.8369701987210288e-15 15
		-26.999999999999993 1.9720527350091907e-15 7.3999999999999995
		;
createNode transform -n "line_10" -p "line_grp";
	rename -uid "04D7876D-478A-CF17-7696-90ACD630AE3D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_10Shape" -p "line_10";
	rename -uid "92EA2453-44CF-7639-B00D-8D9DF1CBD139";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-24.999999999999989 3.3436571500542268e-15 18.600000000000005
		-24.999999999999989 3.2211924701394913e-15 17.600000000000001
		;
createNode transform -n "line_11" -p "line_grp";
	rename -uid "4DCCC03A-4051-A8E4-C930-6DA513E4FC96";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_11Shape" -p "line_11";
	rename -uid "A63C9F10-4DEA-52BC-64A8-E8AD5BD989BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-24.999999999999989 3.2211924701394913e-15 17.600000000000001
		-24.999999999999989 1.8369701987210288e-15 15
		;
createNode transform -n "line_12" -p "line_grp";
	rename -uid "B41347D9-4D31-350A-EF13-AD9F4190E5AD";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_12Shape" -p "line_12";
	rename -uid "20C21BEE-49E0-B665-2768-81B20B58DFF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-24.999999999999989 1.8369701987210288e-15 15
		-25 1.9720527350091907e-15 7.3999999999999995
		;
createNode transform -n "line_13" -p "line_grp";
	rename -uid "541B31B6-4F18-E037-426C-16B8CA2428F8";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_13Shape" -p "line_13";
	rename -uid "7E1B2AC8-4B6E-A1E4-534D-FD93FFE1DCEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-22.999999999999989 3.3436571500542268e-15 18.600000000000005
		-22.999999999999989 3.2211924701394913e-15 17.600000000000001
		;
createNode transform -n "line_14" -p "line_grp";
	rename -uid "81C25A5B-4980-D2D5-8EAD-C58053F3E346";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_14Shape" -p "line_14";
	rename -uid "0AB937C7-43D2-58C6-4384-E88006194656";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-22.999999999999989 3.2211924701394913e-15 17.600000000000001
		-22.999999999999993 1.8369701987210288e-15 15
		;
createNode transform -n "line_15" -p "line_grp";
	rename -uid "4501BDE0-43C5-672C-F345-CCA9A11D154A";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_15Shape" -p "line_15";
	rename -uid "59325BBB-47BD-87BC-1E78-9585792168F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-22.999999999999993 1.8369701987210288e-15 15
		-23.000000000000004 1.9720527350091907e-15 7.3999999999999995
		;
createNode transform -n "line_16" -p "line_grp";
	rename -uid "D5C37CF4-4D4D-51D8-3F99-E8934A327E37";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_16Shape" -p "line_16";
	rename -uid "4A13180A-4B4E-0143-BDA2-C3B47BFAB2F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20.999999999999993 3.3436571500542268e-15 18.600000000000005
		-20.999999999999989 3.2211924701394913e-15 17.600000000000001
		;
createNode transform -n "line_17" -p "line_grp";
	rename -uid "781A7122-41A1-5A93-12AA-5982BEC62B3D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_17Shape" -p "line_17";
	rename -uid "470EF873-4E14-D7C7-A3D8-DBB1BA0E1C20";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20.999999999999989 3.2211924701394913e-15 17.600000000000001
		-20.999999999999986 1.8369701987210288e-15 15
		;
createNode transform -n "line_18" -p "line_grp";
	rename -uid "85DE579A-4451-64F3-B97A-E9BF8CE4EFA2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_18Shape" -p "line_18";
	rename -uid "149EE42C-4626-C418-F5E1-5C9E1C466775";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20.999999999999986 1.8369701987210288e-15 15
		-20.999999999999989 1.9720527350091907e-15 7.3999999999999995
		;
createNode transform -n "line_19" -p "line_grp";
	rename -uid "2678F197-458D-FECF-EA85-DB9DE1D12FA2";
createNode nurbsCurve -n "line_19Shape" -p "line_19";
	rename -uid "57298E4A-40AB-C751-57F4-56809A1F910C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20.999999999999993 3.4661218299689619e-15 19.600000000000005
		-20.999999999999993 3.3436571500542268e-15 18.600000000000005
		;
createNode transform -n "line_20" -p "line_grp";
	rename -uid "01F4EBE0-4460-18FB-FEED-E7935A9F5896";
createNode nurbsCurve -n "line_20Shape" -p "line_20";
	rename -uid "7AFBE1C5-4142-F806-0109-94A3A94B0204";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-22.999999999999989 3.4661218299689619e-15 19.600000000000005
		-22.999999999999989 3.3436571500542268e-15 18.600000000000005
		;
createNode transform -n "line_21" -p "line_grp";
	rename -uid "8D26F056-4496-90E0-D10B-0087A7F2C221";
createNode nurbsCurve -n "line_21Shape" -p "line_21";
	rename -uid "58B9D698-4F52-2805-2D05-719D0692D9B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-24.999999999999989 3.4661218299689619e-15 19.600000000000005
		-24.999999999999989 3.3436571500542268e-15 18.600000000000005
		;
createNode transform -n "line_22" -p "line_grp";
	rename -uid "95C44AC2-4759-BF94-0BAC-589C63C3BE9B";
createNode nurbsCurve -n "line_22Shape" -p "line_22";
	rename -uid "CAB66C7A-49A0-88A3-1AB4-F9BFAEDBDF50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-26.999999999999996 3.4661218299689619e-15 19.600000000000005
		-26.999999999999993 3.3436571500542268e-15 18.600000000000005
		;
createNode transform -n "line_23" -p "line_grp";
	rename -uid "BA8E4700-4C1A-045B-580C-39B31DF9208B";
createNode nurbsCurve -n "line_23Shape" -p "line_23";
	rename -uid "586F1BB5-408A-18EF-7BEF-0E9D459BDC4D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-28.999999999999996 3.4661218299689619e-15 19.600000000000001
		-28.999999999999986 3.3436571500542264e-15 18.600000000000001
		;
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "E66F8CE8-4304-FEB2-4988-D6851FD4AAC0";
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -25 0 0 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "76BD6954-44C0-FAAD-5C15-34889CD5DEF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.9099101641120022 5.2242859772312945e-16 -26.525497140233597
		-1.0910975145422053e-14 5.1014713273218015e-16 -26.575339127253464
		-4.90991016411202 5.2242859772312935e-16 -26.525497140233597
		-5.0934801143326549 1.3322507781026136e-31 -25.192383096381331
		-4.90991016411202 -5.2242859772312935e-16 -23.859269052529061
		-1.1733078237992226e-14 -5.1014713273218044e-16 -23.80942706550919
		4.9099101641120022 -5.2242859772312935e-16 -23.859269052529061
		5.0934801143326425 3.7210375995146095e-32 -25.192383096381331
		4.9099101641120022 5.2242859772312945e-16 -26.525497140233597
		-1.0910975145422053e-14 5.1014713273218015e-16 -26.575339127253464
		-4.90991016411202 5.2242859772312935e-16 -26.525497140233597
		;
createNode transform -n "toe00_2_guide_ofs" -p "master_guide";
	rename -uid "AFC6ACE8-49C2-6343-D10B-D995FB21F46F";
	setAttr ".t" -type "double3" -3.9999999999999898 1.1832913578315177e-30 -15 ;
	setAttr ".r" -type "double3" 90 -270.00000000000011 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe00_2_guide" -p "toe00_2_guide_ofs";
	rename -uid "4881E75D-4BDC-BA9A-2224-299C5DB2B52F";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -9.8607613152626476e-32 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 0 0 1.7763568394002513e-16 ;
	setAttr ".sp" -type "double3" 0 0 1.7763568394002501e-16 ;
createNode transform -n "toe00_3_guide_ofs" -p "toe00_2_guide";
	rename -uid "9DF21705-4F6C-197D-1814-B7B800AA61B4";
	setAttr ".t" -type "double3" 3.5999999999999996 -3.5527136788005009e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe00_3_guide" -p "toe00_3_guide_ofs";
	rename -uid "05FF854B-48FD-8CFD-1BE2-1298CB99257E";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe00_4_guide_ofs" -p "toe00_3_guide";
	rename -uid "25E14BA4-4AA2-B33A-6D62-32BA34AA5E33";
	setAttr ".t" -type "double3" 5 -5.6843418860808015e-14 7.8886090522101181e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe00_4_guide" -p "toe00_4_guide_ofs";
	rename -uid "69AF5826-48E5-CBF3-C583-0195B0A3700C";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode locator -n "toe00_4_guideShape" -p "toe00_4_guide";
	rename -uid "21F650FE-4C04-F2D8-D818-3DB964BA6B24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe00_3_guideShape" -p "toe00_3_guide";
	rename -uid "F1C3A069-4E66-476B-3EB9-8581AEAA9943";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "toe00_1_guide_ofs" -p "toe00_2_guide";
	rename -uid "6692DE7F-4686-BE5A-3FE7-1E9F5E0D39F5";
	setAttr ".t" -type "double3" -7.6000000000000005 3.5527136788005009e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe00_1_guide" -p "toe00_1_guide_ofs";
	rename -uid "2777BD87-4148-276D-9AEA-CDA4ABC15F94";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode locator -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "6A4DECBF-4C0B-5C5C-F22E-6781453517A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe00_2_guideShape" -p "toe00_2_guide";
	rename -uid "0AE07EA1-4A16-B3E1-9E46-D5AD42C3321A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "toe01_2_guide_ofs" -p "master_guide";
	rename -uid "9DFC8B64-414D-B2C4-6C06-BB97736F40EA";
	setAttr ".t" -type "double3" -1.9999999999999865 1.1832913578315177e-30 -15 ;
	setAttr ".r" -type "double3" 90 -270.00000000000011 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe01_2_guide" -p "toe01_2_guide_ofs";
	rename -uid "AC0F0590-4C48-36E6-316A-DDB986F23684";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -9.8607613152626476e-32 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 0 0 1.7763568394002513e-16 ;
	setAttr ".sp" -type "double3" 0 0 1.7763568394002501e-16 ;
createNode transform -n "toe01_3_guide_ofs" -p "toe01_2_guide";
	rename -uid "AB91123B-4551-2B2A-7427-B6BB0D2E90C7";
	setAttr ".t" -type "double3" 2.5999999999999996 -7.1054273576010019e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe01_3_guide" -p "toe01_3_guide_ofs";
	rename -uid "C9E425CA-4B2D-E584-12E3-1599613CD031";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe01_4_guide_ofs" -p "toe01_3_guide";
	rename -uid "EEE0954A-4666-5B65-24B8-F5919481017F";
	setAttr ".t" -type "double3" 5.0000000000000142 -2.8421709430404007e-14 1.9721522630525295e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe01_4_guide" -p "toe01_4_guide_ofs";
	rename -uid "B27D3AA1-4953-63EB-B669-D4ABD6FEF1E1";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe01_5_guide_ofs" -p "toe01_4_guide";
	rename -uid "F6B26BC9-4F4F-7595-45CE-59B2757B0C75";
	setAttr ".t" -type "double3" 5 -2.8421709430404007e-14 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe01_5_guide" -p "toe01_5_guide_ofs";
	rename -uid "103E6B66-4CEC-61C8-6582-948DF6DF5995";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode locator -n "toe01_5_guideShape" -p "toe01_5_guide";
	rename -uid "0B384D7A-4E15-E684-8812-2E8BB2AE119B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe01_4_guideShape" -p "toe01_4_guide";
	rename -uid "97D1940E-4CC8-D9A6-CECC-7485D9401189";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe01_3_guideShape" -p "toe01_3_guide";
	rename -uid "62836ED8-4892-0A1E-26E0-E0ADEEAC7BDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "toe01_1_guide_ofs" -p "toe01_2_guide";
	rename -uid "304A90AE-45CD-D9F3-B5BD-FBB70C824AE5";
	setAttr ".t" -type "double3" -7.6000000000000005 3.5527136788005009e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe01_1_guide" -p "toe01_1_guide_ofs";
	rename -uid "20E24D54-4201-540A-BF07-7E9E0933D813";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode locator -n "toe01_1_guideShape" -p "toe01_1_guide";
	rename -uid "1CC3C6E9-45F9-BE00-C242-2D9723A1E938";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe01_2_guideShape" -p "toe01_2_guide";
	rename -uid "30783371-445B-D256-C72B-AA8A68674486";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "toe02_2_guide_ofs" -p "master_guide";
	rename -uid "F34B4189-4650-FE68-EBA2-F6AED66DBD0F";
	setAttr ".t" -type "double3" 1.009619932512549e-14 1.1832913578315177e-30 -15 ;
	setAttr ".r" -type "double3" 90 -270.00000000000011 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe02_2_guide" -p "toe02_2_guide_ofs";
	rename -uid "8680BE08-49E0-272A-438C-9E8FC7FC808D";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -9.8607613152626476e-32 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 0 0 1.7763568394002513e-16 ;
	setAttr ".sp" -type "double3" 0 0 1.7763568394002501e-16 ;
createNode transform -n "toe02_3_guide_ofs" -p "toe02_2_guide";
	rename -uid "A5C3BC22-481E-EAA6-64E9-119A6DAD255C";
	setAttr ".t" -type "double3" 2.5999999999999996 -3.5527136788005009e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe02_3_guide" -p "toe02_3_guide_ofs";
	rename -uid "E920D7C2-4FCA-B78A-454C-04A96E53D59E";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe02_4_guide_ofs" -p "toe02_3_guide";
	rename -uid "C23CA4C4-4B44-0AFD-E4B5-D9B0540D58A1";
	setAttr ".t" -type "double3" 5.0000000000000142 -1.4210854715202004e-14 1.9721522630525295e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe02_4_guide" -p "toe02_4_guide_ofs";
	rename -uid "967472C5-4C8E-4024-7671-DE8B13381721";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe02_5_guide_ofs" -p "toe02_4_guide";
	rename -uid "D5E61E6A-4D34-215F-60AC-98AAA1EFA900";
	setAttr ".t" -type "double3" 5 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe02_5_guide" -p "toe02_5_guide_ofs";
	rename -uid "A3C6789D-4C61-2308-4364-7E931E7CBDE1";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode locator -n "toe02_5_guideShape" -p "toe02_5_guide";
	rename -uid "98AAC852-4D31-FDC1-2764-1C9AF9A5E8C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe02_4_guideShape" -p "toe02_4_guide";
	rename -uid "BFBB69B9-49F7-9A0B-BE4B-1A973CB0CFCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe02_3_guideShape" -p "toe02_3_guide";
	rename -uid "45D4E5E1-45BE-5DD5-7F2C-ABADF465C612";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "toe02_1_guide_ofs" -p "toe02_2_guide";
	rename -uid "A4C262FA-48C0-58C7-5467-8EB01517FC14";
	setAttr ".t" -type "double3" -7.6000000000000005 0 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe02_1_guide" -p "toe02_1_guide_ofs";
	rename -uid "976CF212-40E0-6050-A3FE-A5A75B60D904";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode locator -n "toe02_1_guideShape" -p "toe02_1_guide";
	rename -uid "229F0EB3-48A6-6634-98DD-BE95A4177B29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe02_2_guideShape" -p "toe02_2_guide";
	rename -uid "95BC4710-4775-9AA5-E4CC-7C8C557F801A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "toe03_2_guide_ofs" -p "master_guide";
	rename -uid "406EF7A0-4483-459B-3B1B-BBBD8355AF2B";
	setAttr ".t" -type "double3" 2.0000000000000058 1.1832913578315177e-30 -15 ;
	setAttr ".r" -type "double3" 90 -270.00000000000011 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe03_2_guide" -p "toe03_2_guide_ofs";
	rename -uid "0FA05A3C-43A5-FC73-F580-7696D44331EF";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -9.8607613152626476e-32 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 0 0 1.7763568394002513e-16 ;
	setAttr ".sp" -type "double3" 0 0 1.7763568394002501e-16 ;
createNode transform -n "toe03_3_guide_ofs" -p "toe03_2_guide";
	rename -uid "A48592B6-47A4-DEAD-40D8-2CA51C50A051";
	setAttr ".t" -type "double3" 2.5999999999999996 0 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe03_3_guide" -p "toe03_3_guide_ofs";
	rename -uid "D3D6315D-48EB-A3A3-5861-C7A940E44FC3";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe03_4_guide_ofs" -p "toe03_3_guide";
	rename -uid "63532C67-4052-C6E6-92D0-ABA29D2D6A0D";
	setAttr ".t" -type "double3" 5.0000000000000142 0 1.9721522630525295e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe03_4_guide" -p "toe03_4_guide_ofs";
	rename -uid "F1947429-462A-B864-D082-4B84428EC458";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe03_5_guide_ofs" -p "toe03_4_guide";
	rename -uid "C303FF0B-42C4-2384-817D-25959B1EF3A6";
	setAttr ".t" -type "double3" 5 -1.4210854715202004e-14 -7.8886090522101181e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe03_5_guide" -p "toe03_5_guide_ofs";
	rename -uid "7A64746F-41AD-F173-749F-82BB9685B590";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode locator -n "toe03_5_guideShape" -p "toe03_5_guide";
	rename -uid "2CC210ED-470A-5DC1-CD52-ECA3E97E9FA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe03_4_guideShape" -p "toe03_4_guide";
	rename -uid "968016BF-4EF9-473B-49D1-36B15144E64B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe03_3_guideShape" -p "toe03_3_guide";
	rename -uid "55248196-4D12-92EA-B26D-93A080FD594A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "toe03_1_guide_ofs" -p "toe03_2_guide";
	rename -uid "9E102F26-4903-A73A-DE07-E18A6295B475";
	setAttr ".t" -type "double3" -7.6000000000000005 0 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe03_1_guide" -p "toe03_1_guide_ofs";
	rename -uid "95E0C6EE-4D92-A35E-40CC-E2B7CB9E336A";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode locator -n "toe03_1_guideShape" -p "toe03_1_guide";
	rename -uid "38C0A086-40A8-46AD-7987-7581109A3F07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe03_2_guideShape" -p "toe03_2_guide";
	rename -uid "426A5724-44C9-41B4-07BE-1AAC00E69059";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "toe04_2_guide_ofs" -p "master_guide";
	rename -uid "1BBE8BBB-4814-D23E-1F8B-02951E7269C8";
	setAttr ".t" -type "double3" 4.0000000000000142 1.1832913578315177e-30 -15 ;
	setAttr ".r" -type "double3" 90 -270.00000000000011 0 ;
	setAttr -cb on ".ro";
createNode transform -n "toe04_2_guide" -p "toe04_2_guide_ofs";
	rename -uid "B96CF8A2-4E06-952E-9BAD-439B8218DC10";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 -9.8607613152626476e-32 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 0 0 1.7763568394002513e-16 ;
	setAttr ".sp" -type "double3" 0 0 1.7763568394002501e-16 ;
createNode transform -n "toe04_3_guide_ofs" -p "toe04_2_guide";
	rename -uid "45AE021F-4167-6D75-5238-E4BBD07333D2";
	setAttr ".t" -type "double3" 2.5999999999999996 -7.1054273576010019e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe04_3_guide" -p "toe04_3_guide_ofs";
	rename -uid "232E032E-4B6D-0FD5-7A2C-A9ADF9FD9647";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe04_4_guide_ofs" -p "toe04_3_guide";
	rename -uid "2AC0B821-4102-2802-ACE8-CE86DA481D36";
	setAttr ".t" -type "double3" 5.0000000000000142 -2.8421709430404007e-14 1.9721522630525295e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe04_4_guide" -p "toe04_4_guide_ofs";
	rename -uid "6FA4FAC1-4E1C-15FB-F3BC-BE83B7C5708B";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode transform -n "toe04_5_guide_ofs" -p "toe04_4_guide";
	rename -uid "4A6B4E66-432D-CBC4-E6A9-2BBF026508B6";
	setAttr ".t" -type "double3" 5 0 -7.8886090522101181e-31 ;
	setAttr -cb on ".ro";
createNode transform -n "toe04_5_guide" -p "toe04_5_guide_ofs";
	rename -uid "72589EF6-4529-DC6E-72DF-C2A22EA63C75";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525289e-31 -1.9721522630525291e-31 ;
createNode locator -n "toe04_5_guideShape" -p "toe04_5_guide";
	rename -uid "123CE011-46B7-96A7-3986-7E99763F98AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe04_4_guideShape" -p "toe04_4_guide";
	rename -uid "99BA6A51-4442-77E0-8CC7-52AE57E28F35";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe04_3_guideShape" -p "toe04_3_guide";
	rename -uid "D1BAEDA8-4E88-D3D9-55ED-69B5CE628A11";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "toe04_1_guide_ofs" -p "toe04_2_guide";
	rename -uid "2F4F09C4-41A5-0E79-2731-B1946DBA4D3B";
	setAttr ".t" -type "double3" -7.6000000000000005 7.1054273576010019e-15 1.0658141036401504e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "toe04_1_guide" -p "toe04_1_guide_ofs";
	rename -uid "EBEBC90E-4069-437D-95D3-928572B0E688";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006237e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 2.4651903288156606e-31 -1.9721522630525293e-31 ;
createNode locator -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "6B5C6924-4E14-6CD7-7A47-C7B538BD2A2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode locator -n "toe04_2_guideShape" -p "toe04_2_guide";
	rename -uid "7439D46A-4581-0C05-9879-1096CE35E603";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode transform -n "root_guide" -p "master_guide";
	rename -uid "70357F83-4457-BDC2-8E4F-BEB48D76E98F";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -8.8817841970012504e-17 1.7763568394002501e-16 ;
	setAttr ".rpt" -type "double3" -4.4408920985006252e-16 -4.4408920985006262e-16 -8.8817841970012582e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 3.5527136788005011e-16 -7.1054273576010023e-16 ;
createNode locator -n "root_guideShape" -p "root_guide";
	rename -uid "3022C8B2-4745-39A5-86D4-39A7AA1B1D45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -s -n "persp";
	rename -uid "2CFF45DD-487A-9CD1-767B-A089B899D93C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.31666782442862762 38.463839584091517 47.461229229290886 ;
	setAttr ".r" -type "double3" -43.538352729651585 33.00000000001728 3.7923766530353704e-15 ;
	setAttr -cb on ".ro";
	setAttr ".rp" -type "double3" 9.0523144535836764e-12 -9.5923269327613525e-13 -1.4551915228366852e-11 ;
	setAttr ".rpt" -type "double3" -9.0526132061662243e-12 -3.9591234438924834e-12 -1.892917819089332e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82C3F9B2-4980-6719-29B8-159665D78FA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 57.986475718975896;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -25.000000000000007 0 9.0000000000000018 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C26C709E-427B-9FAF-006E-479957AA5F62";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.568010577944612 1000.8268644035262 8.6205493647428497 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "topShape" -p "top";
	rename -uid "A557BBCA-4E3F-918D-EA2B-D0824D7F4CBC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.8268644035262;
	setAttr ".ow" 31.046884447200366;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 28.505635162324683 1.0547118733938987e-15 13.127487975161273 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3AC53A90-4787-A00A-10EE-5BB41D967471";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.12479757085020204 1.1247975708502023 1000.1006636070134 ;
	setAttr -cb on ".ro";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EBE1F472-4B19-95B5-7032-02B7F660A422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1006636070134;
	setAttr ".ow" 8.6526315789473696;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 1 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "998302DF-4A25-D2FE-09B0-24A5C61EAE93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.5496055230071 22.950565320167424 -32.99350814814202 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35324118-40AF-2D58-3D90-F6B12F0BE94B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 988.80504775568625;
	setAttr ".ow" 165.71160156462943;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 11.744557767320831 29.377535192170878 8.868646964096655 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A70BA2AE-4BF3-CA8E-4946-359A3380DB0C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AF6EFE33-477A-9E0D-4973-D7BE2685D5BA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C070E0E1-44EC-9268-56AC-ECA906FED408";
createNode displayLayerManager -n "layerManager";
	rename -uid "DC247799-4974-B8CB-7BD4-1196BFB30240";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
	rename -uid "BC19330E-4E8B-4910-BB8A-238FB66CBBA1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F7B30BF3-4407-C643-0E26-729F2F6852F2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "47ABDCF5-4400-C307-437A-E4AF35DAB19B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "93E347DE-4858-8D79-1C7B-559212A19E13";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 390\n            -height 324\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 390\n            -height 324\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 390\n            -height 324\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 787\n            -height 693\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 689\n            -height 694\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n"
		+ "            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 689\\n    -height 694\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 689\\n    -height 694\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	addAttr -s false -ci true -sn "anchorF1" -ln "anchorF1" -at "message";
	addAttr -s false -ci true -sn "setting" -ln "setting" -at "message";
	addAttr -s false -ci true -sn "hip_fkc" -ln "hip_fkc" -at "message";
	addAttr -s false -ci true -sn "upr_fkc" -ln "upr_fkc" -at "message";
	addAttr -s false -ci true -sn "lwr_fkc" -ln "lwr_fkc" -at "message";
	addAttr -s false -ci true -sn "foot_fkc" -ln "foot_fkc" -at "message";
	addAttr -s false -ci true -sn "ball_fkc" -ln "ball_fkc" -at "message";
	addAttr -s false -ci true -sn "ikc" -ln "ikc" -at "message";
	addAttr -s false -ci true -sn "pvc" -ln "pvc" -at "message";
	addAttr -s false -ci true -k true -sn "master_guide" -ln "master_guide" -at "message";
	addAttr -s false -ci true -k true -sn "rootJ" -ln "rootJ" -at "message";
	addAttr -s false -ci true -k true -sn "pvcRota" -ln "pvcRota" -at "message";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "Toes";
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
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "025AE460-46DD-2582-5B9B-928E92A2D443";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -805.40684771225028 1649.1958472585209 ;
	setAttr ".tgi[0].vh" -type "double2" 34.13236251965909 1987.6147537085933 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -317.18780517578125;
	setAttr ".tgi[0].ni[0].y" 1922.7431640625;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -662.44927978515625;
	setAttr ".tgi[0].ni[1].y" 1965.5103759765625;
	setAttr ".tgi[0].ni[1].nvs" 18305;
createNode decomposeMatrix -n "DCM_4";
	rename -uid "FBFE1AC0-4A05-15A8-0AA8-2EA7EE24B403";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "993F568A-4DE6-D067-BF9A-608F75C224D5";
createNode decomposeMatrix -n "DCM_6";
	rename -uid "ED91D955-4606-74C6-1157-99B8CB4904BA";
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "8E13F494-425C-AB1D-F5F0-BFBC405223D4";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode decomposeMatrix -n "DCM_7";
	rename -uid "0F638D9E-4F76-1AC5-E98F-BBA8ECE43727";
createNode decomposeMatrix -n "DCM_8";
	rename -uid "0673C9F7-4A80-061F-A101-A2B7C2570023";
createNode decomposeMatrix -n "DCM_9";
	rename -uid "40B7E9C7-4BA6-6397-A9A6-1D9D234F1CE1";
createNode decomposeMatrix -n "DCM_10";
	rename -uid "C30F97CF-4C1F-030D-400A-55AA31DCB3F5";
createNode decomposeMatrix -n "DCM_11";
	rename -uid "AF331E5F-4531-9CF7-7E99-6493478965D6";
createNode decomposeMatrix -n "DCM_12";
	rename -uid "1EA00A2B-493D-A7D3-75B4-E79DF3D16CFC";
createNode decomposeMatrix -n "DCM_13";
	rename -uid "12F4027B-44D5-9ADC-C898-D6B174E35C14";
createNode decomposeMatrix -n "DCM_14";
	rename -uid "3C905A7F-482B-F824-C53B-27AB8842803E";
createNode decomposeMatrix -n "DCM_15";
	rename -uid "7BDC9F69-475F-B0DA-C86E-F580EF66D491";
createNode decomposeMatrix -n "DCM_16";
	rename -uid "6C090B64-41E3-AF7F-45FA-72A3B2E7B08A";
createNode decomposeMatrix -n "DCM_17";
	rename -uid "232E3840-4C27-F238-A73B-5494207E20EF";
createNode decomposeMatrix -n "DCM_18";
	rename -uid "4C0E22F2-443A-DAF0-7FB8-62B5E7A76D07";
createNode decomposeMatrix -n "DCM_19";
	rename -uid "AE2EC1E5-411B-F38A-4196-E3A6D31C256B";
createNode decomposeMatrix -n "DCM_20";
	rename -uid "263947B2-4B77-161D-69EB-4FBC285EEC3A";
createNode decomposeMatrix -n "DCM_21";
	rename -uid "0D99FC7C-441F-AEAF-86EA-298F9109DB8B";
createNode decomposeMatrix -n "DCM_22";
	rename -uid "56F94644-432E-12D5-20FB-CE8A7BF538CC";
createNode nodeGraphEditorInfo -n "man_low_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "BA739F38-48F3-6E90-10CE-87922077AEB9";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323981 -690.34550102341893 ;
	setAttr ".tgi[0].vh" -type "double2" 1104.6166808451528 391.53598908751837 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "04BA7AF4-4F37-29C5-842F-E9A10A13AE92";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -4538952.8537142342 -1211.7321493162331 ;
	setAttr ".tgi[0].vh" -type "double2" -4532457.8801846411 2561.732095672055 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "AA620E43-4B6C-E360-8EB4-798BEB795AF8";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "9A0DF9BE-4BA2-FE2C-0CBB-3D8B061BE4D9";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2032EDF8-46D0-9D0E-A2F8-40BE01188103";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "31C5B3A9-4D06-4E57-D6BE-6EAB27E7FAB7";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode decomposeMatrix -n "DCM_23";
	rename -uid "B5B534E6-4838-482B-42CD-CF813BB96C2E";
createNode decomposeMatrix -n "DCM_24";
	rename -uid "B3F6B952-48D8-2465-61B1-C5B34BD0C924";
createNode decomposeMatrix -n "DCM_25";
	rename -uid "CC624917-47BA-7B86-BDFE-9CAC01C48691";
createNode decomposeMatrix -n "DCM_26";
	rename -uid "0C5319F5-46B4-7B64-8CBC-A2874E319DEA";
createNode decomposeMatrix -n "DCM_27";
	rename -uid "2114001E-4F79-D27A-37D5-0B963E544C4F";
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
	setAttr -av -k on ".msaa" yes;
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
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
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
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
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
connectAttr "DCM_11.ot" "line_10Shape.cp[0]";
connectAttr "DCM_12.ot" "line_10Shape.cp[1]";
connectAttr "DCM_12.ot" "line_11Shape.cp[0]";
connectAttr "DCM_13.ot" "line_11Shape.cp[1]";
connectAttr "DCM_13.ot" "line_12Shape.cp[0]";
connectAttr "DCM_14.ot" "line_12Shape.cp[1]";
connectAttr "DCM_15.ot" "line_13Shape.cp[0]";
connectAttr "DCM_16.ot" "line_13Shape.cp[1]";
connectAttr "DCM_16.ot" "line_14Shape.cp[0]";
connectAttr "DCM_17.ot" "line_14Shape.cp[1]";
connectAttr "DCM_17.ot" "line_15Shape.cp[0]";
connectAttr "DCM_18.ot" "line_15Shape.cp[1]";
connectAttr "DCM_19.ot" "line_16Shape.cp[0]";
connectAttr "DCM_20.ot" "line_16Shape.cp[1]";
connectAttr "DCM_20.ot" "line_17Shape.cp[0]";
connectAttr "DCM_21.ot" "line_17Shape.cp[1]";
connectAttr "DCM_21.ot" "line_18Shape.cp[0]";
connectAttr "DCM_22.ot" "line_18Shape.cp[1]";
connectAttr "DCM_23.ot" "line_19Shape.cp[0]";
connectAttr "DCM_19.ot" "line_19Shape.cp[1]";
connectAttr "DCM_24.ot" "line_20Shape.cp[0]";
connectAttr "DCM_15.ot" "line_20Shape.cp[1]";
connectAttr "DCM_25.ot" "line_21Shape.cp[0]";
connectAttr "DCM_11.ot" "line_21Shape.cp[1]";
connectAttr "DCM_26.ot" "line_22Shape.cp[0]";
connectAttr "DCM_7.ot" "line_22Shape.cp[1]";
connectAttr "DCM_27.ot" "line_23Shape.cp[0]";
connectAttr "DCM_6.ot" "line_23Shape.cp[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "toe00_1_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "toe00_1_guide.wm" "DCM_4.imat";
connectAttr "toe00_2_guide.wm" "DCM_5.imat";
connectAttr "toe00_3_guide.wm" "DCM_6.imat";
connectAttr "toe01_4_guide.wm" "DCM_7.imat";
connectAttr "toe01_3_guide.wm" "DCM_8.imat";
connectAttr "toe01_2_guide.wm" "DCM_9.imat";
connectAttr "toe01_1_guide.wm" "DCM_10.imat";
connectAttr "toe02_4_guide.wm" "DCM_11.imat";
connectAttr "toe02_3_guide.wm" "DCM_12.imat";
connectAttr "toe02_2_guide.wm" "DCM_13.imat";
connectAttr "toe02_1_guide.wm" "DCM_14.imat";
connectAttr "toe03_4_guide.wm" "DCM_15.imat";
connectAttr "toe03_3_guide.wm" "DCM_16.imat";
connectAttr "toe03_2_guide.wm" "DCM_17.imat";
connectAttr "toe03_1_guide.wm" "DCM_18.imat";
connectAttr "toe04_4_guide.wm" "DCM_19.imat";
connectAttr "toe04_3_guide.wm" "DCM_20.imat";
connectAttr "toe04_2_guide.wm" "DCM_21.imat";
connectAttr "toe04_1_guide.wm" "DCM_22.imat";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "toe04_5_guide.wm" "DCM_23.imat";
connectAttr "toe03_5_guide.wm" "DCM_24.imat";
connectAttr "toe02_5_guide.wm" "DCM_25.imat";
connectAttr "toe01_5_guide.wm" "DCM_26.imat";
connectAttr "toe00_4_guide.wm" "DCM_27.imat";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rt_toes.ma
