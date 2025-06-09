//Maya ASCII 2023 scene
//Name: crvX.ma
//Last modified: Mon, Jun 09, 2025 03:51:14 PM
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
fileInfo "UUID" "762042BC-4751-B0AF-8762-ED87B15D4DF2";
createNode transform -n "CHR";
	rename -uid "B09D543C-4A44-54BA-8087-0794A47C10DB";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "A6F33C54-4042-A8BD-30CC-3CB7F9A021A2";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "9266516C-4085-4735-E8AE-A18DAE883F5E";
	addAttr -ci true -sn "size" -ln "size" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".size";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "7EBD83B4-4F06-C6F9-DC21-1997A7C04B7B";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "EE3EC103-400E-6338-0FD1-46BBC56BDF6B";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode transform -n "head0_ctl_data" -p "master_ctl";
	rename -uid "D71DB838-400C-85C5-1311-5A9F5ED0729B";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "CC85E854-4B67-13CA-C71F-329137EBD194";
	setAttr ".t" -type "double3" 0 229.41483221420799 193.21695607158355 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "1BBF4A92-49F9-E690-F72C-299DB1D89CC1";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "EF0246D1-42C2-181C-3551-44A964932DB8";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "A528A530-4ACF-B0DB-A40C-99B10E54EF65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.8589243937795823 18.360576039804215 -5.8589243937795175
		3.2438843754440189e-16 18.360576039804215 -5.2976652169465979
		-5.8589243937795823 18.360576039804215 -5.858924393779489
		-5.2976652169467053 18.360576039804215 8.5265128291212022e-14
		-5.8589243937795823 18.360576039804215 5.8589243937796596
		-5.306707480206953e-16 18.360576039804215 5.2976652169467684
		5.8589243937795823 18.360576039804215 5.8589243937796596
		5.2976652169467053 18.360576039804215 8.5265128291212022e-14
		5.8589243937795823 18.360576039804215 -5.8589243937795175
		3.2438843754440189e-16 18.360576039804215 -5.2976652169465979
		-5.8589243937795823 18.360576039804215 -5.858924393779489
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "437295E5-4974-0457-57A0-7692887E3DA8";
	setAttr ".t" -type "double3" -1.0376074531262371e-13 -2.6921443802082763 2.2337088712889113 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "605B2A38-46B9-D214-567C-54B16FAA4788";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "D613A3A8-402D-5E6D-68B5-4F94E2514906";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.434917988701442 -20.14908726157006 32.479219300806562
		1.0414473370708376e-13 -20.14908726157006 30.642216121874043
		-4.4349179887012342 -20.14908726157006 32.479219300806562
		-6.2719211676337379 -20.14908726157006 36.914137289507892
		-4.4349179887012342 -20.14908726157006 41.349055278209221
		1.0313242666503621e-13 -20.14908726157006 43.186058457141741
		4.434917988701442 -20.14908726157006 41.349055278209221
		6.2719211676339457 -20.14908726157006 36.914137289507892
		4.434917988701442 -20.14908726157006 32.479219300806562
		1.0414473370708376e-13 -20.14908726157006 30.642216121874043
		-4.4349179887012342 -20.14908726157006 32.479219300806562
		;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "2C6D0A51-4A01-446F-90F8-89A1C3451F1C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "0582B8A0-4F6F-AFEB-7899-60A094547408";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "F75A0E7D-49CB-1771-93E8-E4840514C05A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "7114E959-4931-6B82-1F74-EF8DA5302C62";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "3561BABE-45DE-CB44-F689-A5920C3F6D31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "11852ECA-40A9-9F98-4B42-03B689DF6DA5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "328FA52D-4DC0-45ED-5A6E-EEA0BC02728B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "0E282C38-47A1-D4E3-D8B2-38B3B984B030";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "336FC002-420D-3930-F3BD-01BE758A17B4";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "57AF1B62-45DD-9EA1-FDF4-D8B7509DC814";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_palm_fkcShape1" -p "lfLegQd0_palm_fkc";
	rename -uid "09DB8291-4FC9-B92F-E4CE-BE91F9711C0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "1EDBB339-4FEF-6A74-52B3-72B233ECBAE2";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "392C1690-45DD-41F5-C4C4-1199BFFA0FA1";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "AE56477A-4BE9-B47C-65A7-34829EE119C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "BD59AF57-4B31-1124-92F8-149FBB54260C";
	setAttr ".t" -type "double3" -5.6843418860808015e-14 -3.5527136788005009e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -141.46551246841821 -3.1805546814635168e-15 -90.000000000000057 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "BEC73EA4-4EC2-6C0D-E4DE-22A4541BBF4B";
	setAttr ".t" -type "double3" 15.149058493609704 175.73314705891548 -53.377574963762996 ;
	setAttr ".r" -type "double3" -1.1939332069915487 156.11495079082039 84.359503544703927 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "AEE1AE6D-49C4-C8D4-734E-18A691462B9C";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -1.7208456881689926e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -3.7421213674094193e-15 3.419096282573281e-15 -8.1899283047685581e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "2B989ED7-4569-A494-7234-AE8B9CA80E0F";
	setAttr ".t" -type "double3" 0 3.1641356201816961e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "CD24216D-406E-09C8-6EE6-F2B1CBDC1F83";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "DE22CA6E-4F57-7D0C-5249-AFA7861ED9D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.3972106567681433 -36.309961062593928 -9.3972106567681539
		5.2029114515644691e-16 -36.309961062593928 -8.4969992248980439
		-9.3972106567681433 -36.309961062593928 -9.3972106567681486
		-8.496999224898067 -36.309961062593928 -3.2993617553437317e-15
		-9.3972106567681433 -36.309961062593928 9.3972106567681433
		-8.5115022372190185e-16 -36.309961062593928 8.496999224898051
		9.3972106567681433 -36.309961062593928 9.3972106567681486
		8.496999224898067 -36.309961062593928 -1.7001430308700602e-15
		9.3972106567681433 -36.309961062593928 -9.3972106567681539
		5.2029114515644691e-16 -36.309961062593928 -8.4969992248980439
		-9.3972106567681433 -36.309961062593928 -9.3972106567681486
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "D64F4862-4DAC-DE52-A58E-E8BC0E0CCE66";
	setAttr ".t" -type "double3" 16.151868480483056 13.107840026843547 -101.71636307327825 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "6CC6AF23-4099-BFD7-EDE8-88AB491C7FD7";
	setAttr ".t" -type "double3" 8.2514829102819931e-07 -9.0345997721127222 7.1953255395087439 ;
	setAttr ".r" -type "double3" 0 243.45029926183025 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "2E098771-4350-FB24-D9BD-FD953C79ABA8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "D4FED7B1-42D3-0416-B19E-AAA9CD72C32D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "33DD48FE-4528-F1E8-4074-70812ABBF283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.928779587700236e-16 -9.3972106567681433 -9.3972106567681539
		2.7277062517540631e-16 -5.2029114515644691e-16 -8.4969992248980439
		1.9287795877002347e-16 9.3972106567681433 -9.3972106567681486
		-1.1132659510950913e-31 8.496999224898067 -3.2993617553437317e-15
		-1.9287795877002355e-16 9.3972106567681433 9.3972106567681433
		-2.727706251754066e-16 8.5115022372190185e-16 8.496999224898051
		-1.9287795877002347e-16 -9.3972106567681433 9.3972106567681486
		-1.6266470633219585e-31 -8.496999224898067 -1.7001430308700602e-15
		1.928779587700236e-16 -9.3972106567681433 -9.3972106567681539
		2.7277062517540631e-16 -5.2029114515644691e-16 -8.4969992248980439
		1.9287795877002347e-16 9.3972106567681433 -9.3972106567681486
		;
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "841F721E-474E-29A9-2967-F0A7673E9972";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1148823042489227 4.0145664570445661e-13 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176223 4.935803294069066e-17 -0.44697394836510224 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "CFA46EF3-4990-B984-631B-A1A8F44A6D85";
	setAttr ".t" -type "double3" 5.6843418860808015e-14 -3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "D2F623FC-474E-DDB9-524B-18963C84274D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode ikHandle -n "lfLegQd0_toe02_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "26C35181-499B-2CC4-0BF1-989728CB2CEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.6728598464324023e-09 2.3189641828631196 -4.8332182700505655e-09 ;
	setAttr ".r" -type "double3" -1.427265494111303 -24.902593744323799 -1.9910527604184642 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176245 2.4545994496563139e-17 -0.44697394836510229 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe03_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "99E4FE06-4740-B12A-5941-41B1D23AA3A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6056341084768064e-08 -3.8603558199760784 1.3019416655879468e-08 ;
	setAttr ".r" -type "double3" -4.1024362248802522 -24.805184379144048 -5.7599828703204929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176245 2.4545994496563139e-17 -0.44697394836510229 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "8A9864C8-4F27-E8A7-7F30-8BA0D57E52F2";
	setAttr ".t" -type "double3" 9.6728740572871175e-09 2.3189641828631213 -4.8332111646232079e-09 ;
	setAttr ".r" -type "double3" -2.5931194048646433 -2.5467071053483208 -5.0799363355934979 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs1" -p "lfLegQd0_toe02_3_ikc_ofs";
	rename -uid "DCC775BF-4D4F-2FB1-D812-6AA5EBE3335F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe02_3_ikc" -p "lfLegQd0_toe02_3_ikc_ofs1";
	rename -uid "D1A796E4-42A3-2BA5-CC54-20932F7ACB29";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_3_ikcShape1" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "F419809B-421A-00AA-AE21-B0BDDA749D83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -3.5527136788005009e-15 -8.0624309589869381e-16
		0 -3.5527136788005009e-15 -6.1028266285751913
		0.70474085921696783 -3.5527136788005009e-15 -6.1028266285751913
		0.70474085921696783 -3.5527136788005009e-15 -7.5123083470091299
		-0.70474085921696783 -3.5527136788005009e-15 -7.5123083470091299
		-0.70474085921696783 -3.5527136788005009e-15 -6.1028266285751913
		0 -3.5527136788005009e-15 -6.1028266285751913
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe02_3_1_ikj_ikh" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "F5D14EBF-4102-C971-C222-E6A774439B93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.866022645092869 0.28747024394219167 -0.31881228554516383 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.87029252095760035 0.10112074191328808 -0.48204307226654652 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "3694D99A-4262-6A5B-971E-77AA1D8945B5";
	setAttr ".t" -type "double3" -2.6056326873913349e-08 -3.8603558199760784 1.3019423761306825e-08 ;
	setAttr ".r" -type "double3" -1.969817667527902 -2.5509581648197779 -3.8553212899676295 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs1" -p "lfLegQd0_toe03_3_ikc_ofs";
	rename -uid "F8DF04BC-4605-FD2A-F699-059E9CE77A76";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_toe03_3_ikc" -p "lfLegQd0_toe03_3_ikc_ofs1";
	rename -uid "6A979DE4-49E8-16A6-2C24-99ACB41633F7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_3_ikcShape1" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "06B4A9DE-4EF9-2BC7-D1E2-309B91E73685";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -7.1054273576010019e-15 -1.6124861917973876e-15
		0 -7.1054273576010019e-15 -6.1028266285751922
		0.70474085921696783 -7.1054273576010019e-15 -6.1028266285751922
		0.70474085921696783 -7.1054273576010019e-15 -7.5123083470091316
		-0.70474085921696783 -7.1054273576010019e-15 -7.5123083470091316
		-0.70474085921696783 -7.1054273576010019e-15 -6.1028266285751922
		0 -7.1054273576010019e-15 -6.1028266285751922
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe03_3_1_ikj_ikh" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "AFE40997-4A99-6D2B-EB64-83A4A7A5FF72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8647772447351088 0.2184025392855915 -0.32463155913626451 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.87174428816058658 0.076825437490923576 -0.48390055612049088 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "928B0F08-4033-35C2-0562-9B9FDA37CE74";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "C52B7729-44FB-CF02-09BE-18A06CE938CC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "99DB0A50-4E11-E21E-F071-DA8389A77F3E";
	setAttr ".t" -type "double3" 0.6460533444892107 57.699592783716419 3.7007050737356337 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "629664F7-4C0A-972F-328E-3F80E956F36A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "3D852173-4FF6-F948-C7C1-C5B8F62FCD00";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.1955748164992725e-15 -9.7626092464511203 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "368F485D-4E09-A62F-C5F0-D6ABCC5A42BF";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "59BCF752-4436-7FD4-F57C-53BF60E33D9A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "86D0AE2F-41E7-E28C-4A54-4BABA96207DF";
	setAttr ".t" -type "double3" 6.4789536574601776 -6.3805946047514518e-16 5.2101508852951497 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "CB42F250-44C7-848D-DE85-37A018CF0574";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "C70C500F-46AE-88A3-43AA-68A032E36EC5";
	setAttr ".t" -type "double3" -10.96317448284562 1.6524144085077311e-17 -0.13492987608006501 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "A790126B-479E-316A-6DFB-5C8BF3818C79";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "78D1F8EE-4D6C-A46A-A98D-119B1DA40942";
	setAttr ".t" -type "double3" 4.4842208253851084 -4.0732402547308517 2.0315011575437723 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "8FD520B3-48BB-9824-02B6-1FB34DC31586";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "13C26F12-4D00-93C9-0930-A38306B9FAB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		1.1244434667727538e-16 -16.318624953409849 -9.9262758140882192e-16
		1.0861289513211103e-16 -16.381197527682104 -0.4752837755514121
		9.7379659876341891e-17 -16.564650250278699 -0.91817771680214677
		7.9510154316361978e-17 -16.856481303233519 -1.2984993723462674
		5.6222173338637691e-17 -17.236802742353404 -1.5903305695839083
		2.9102736811096271e-17 -17.67969675574555 -1.7737831478976795
		-3.4433344095271897e-32 -18.154980531296964 -1.8363554336042935
		-2.9102736811096271e-17 -18.630264306848375 -1.7737831478976795
		-5.6222173338637691e-17 -19.07315832024052 -1.5903305695839083
		-7.9510154316361978e-17 -19.453479759360409 -1.2984993723462674
		-9.7379659876341891e-17 -19.745311966577802 -0.91817771680214677
		-1.0861289513211103e-16 -19.92876353491182 -0.4752837755514121
		-1.1244434667727538e-16 -19.991336109184079 -5.4262814471249663e-16
		-1.0861289513211103e-16 -19.92876353491182 0.4752837755514121
		-9.7379659876341891e-17 -19.745311966577802 0.91817771680214677
		-7.9510154316361978e-17 -19.453479759360409 1.2984993723462674
		-5.6222173338637691e-17 -19.07315832024052 1.5903305695839083
		-2.9102736811096271e-17 -18.630264306848375 1.7737831478976795
		8.4127215774348806e-32 -18.154980531296964 1.8363554336042935
		2.9102736811096271e-17 -17.67969675574555 1.7737831478976795
		5.6222173338637691e-17 -17.236802742353404 1.5903305695839083
		7.9510154316361978e-17 -16.856481303233519 1.2984993723462674
		9.7379659876341891e-17 -16.564650250278699 0.91817771680214677
		1.0861289513211103e-16 -16.381197527682104 0.4752837755514121
		1.1244434667727538e-16 -16.318624953409849 -9.9262758140882192e-16
		0 0 0
		;
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "11F1876F-4192-BC39-F5B7-9BB81CEBE998";
	setAttr ".t" -type "double3" -1.6797571333881933e-08 -9.034597003130461 7.1953261104891055 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "70E821B1-4740-4AE4-0FFE-92B6FB28BD83";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -15.140367018426687 0 91.388142892667332 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "7914C981-411D-F79F-7EF3-04968066F560";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "C5ED484F-4E39-2623-D3E6-32867D13F01D";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "5A988964-49F8-57E7-C220-7CB3335B6963";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		10.839067918209544 -18.154980531296964 0
		10.063806685322501 -13.986415493191519 0
		7.7025045831051271 -10.452475948191836 0
		4.1685650381054442 -8.0911738459744633 0
		0 -7.3161667828123154 0
		-4.1685650381054442 -8.0911738459744633 0
		-7.7025045831051271 -10.452475948191836 0
		-10.063806685322501 -13.986415493191519 0
		-10.839067918209544 -18.154981044843989 0
		-10.063806685322501 -22.323545569402409 0
		-7.7025045831051271 -25.857485114402092 0
		-4.1685650381054442 -28.218787216619464 0
		4.3284813670181585e-07 -28.993794279781611 -0.073701958227833569
		4.1685650381054442 -28.218787216619464 0
		7.7025045831051271 -25.857485114402092 0
		10.063806685322501 -22.323545569402409 0
		10.839067918209544 -18.154980531296964 0
		10.013989419242796 -18.126775244305282 -4.1478393125381734
		7.6643791243706598 -18.102863537546394 -7.6642120985514417
		4.1479337184359917 -18.086886283399561 -10.013771559478601
		4.3284813670181585e-07 -18.081275668272273 -10.83882827246893
		-4.1479337184359917 -18.086886283399561 -10.013771559478601
		-7.6643791243706598 -18.102863537546394 -7.6642120985514417
		-10.013989419242796 -18.126775244305282 -4.1478393125381734
		-10.839067918209544 -18.154981044843989 0
		-10.013989419242796 -18.183186834967547 4.1478247885538941
		-7.6643791243706598 -18.207098541726435 7.6642048365593007
		-4.1479337184359917 -18.223075795873267 10.01375703549432
		4.3284813670181585e-07 -18.228686120520866 10.838813748484649
		4.1479337184359917 -18.223075795873267 10.01375703549432
		7.6643791243706598 -18.207098541726435 7.6642048365593007
		10.013989419242796 -18.183186834967547 4.1478247885538941
		10.839067918209544 -18.154980531296964 0
		10.013989419242796 -18.126775244305282 -4.1478393125381734
		7.6643791243706598 -18.102863537546394 -7.6642120985514417
		4.1479337184359917 -18.086886283399561 -10.013771559478601
		4.3284813670181585e-07 -18.081275668272273 -10.83882827246893
		4.3284813670181585e-07 -13.9390527804551 -9.9855587200150904
		4.3284813670181585e-07 -10.438663639141748 -7.6120927809633878
		4.3284813670181585e-07 -8.1130179183312769 -4.0797436122423418
		0 -7.3161667828123154 0
		4.3284813670181585e-07 -8.1694290732740118 4.2159277508418649
		4.3284813670181585e-07 -10.542895012325717 7.7163096301630771
		4.3284813670181585e-07 -14.075236919054621 10.041962612965687
		4.3284813670181585e-07 -18.228686120520866 10.838813748484649
		4.3284813670181585e-07 -22.370908282138828 9.985544196030812
		4.3284813670181585e-07 -25.87129742345218 7.6120782569791077
		4.3284813670181585e-07 -28.196943144262651 4.0797290882580617
		4.3284813670181585e-07 -28.993794279781611 -0.073701958227833569
		4.3284813670181585e-07 -28.140531989319918 -4.215942274826145
		4.3284813670181585e-07 -25.767066050268213 -7.7163241541473555
		4.3284813670181585e-07 -22.234724143539307 -10.041977136949967
		4.3284813670181585e-07 -18.081275668272273 -10.83882827246893
		;
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "E50A34D5-4B1D-B555-0071-7A8577CF10AC";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "3E27549A-4D56-E0C0-047D-5CA8CF562865";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "B808630A-4B28-7D1F-86D6-2888138ACD33";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.6460533276913214 -44.591755525855106 -8.2401441045324759 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "1729AD80-4A36-C9ED-A8CD-C8ABC59AD9F8";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "A1780268-4A35-2090-05E7-8F89B4E2D88C";
	setAttr ".t" -type "double3" -0.64605332769132495 -44.591755525855113 -8.2401441045324759 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "41F368E2-455A-2B53-FB0C-1EBE6FB493E3";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "68A725FA-4963-AFB9-6146-B49FFE116739";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "60AE79E0-45EE-DE4E-1771-E6986354A780";
	setAttr ".t" -type "double3" 4.4842208253851084 -4.0732402547308517 2.0315011575437723 ;
	setAttr ".r" -type "double3" 179.99999999999997 63.450299261830239 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "F54C43D0-4818-8B00-2C7A-8AB28A56CD05";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 179.99999999999997 24.915811730248453 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176257 -2.4812038444127611e-16 0.44697394836510218 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "4F64CE31-4C21-066D-F73D-5698ACD28586";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -4.2632564145606011e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "439977CB-4E93-0EA8-92B1-64B4FD8E5BE8";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode nurbsCurve -n "diamondShape2" -p "lfLegQd0_inRollG_ctl";
	rename -uid "D33A052B-4104-823C-EC19-2A8563AEEE6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode nurbsCurve -n "diamondShape3" -p "lfLegQd0_outRollG_ctl";
	rename -uid "B00A52CA-46A1-866E-8E6E-B9901702DED2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode nurbsCurve -n "diamondShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "30B4D3E2-4762-D1E7-49F2-CCB6B6B4C8D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode nurbsCurve -n "diamondShape4" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "DDF746AE-4316-E51C-DEF8-97AE11EF02DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "E19F2B73-44AA-D86D-D346-5AAB1565AD8F";
	setAttr ".t" -type "double3" 16.151869288833815 13.107837257861313 -101.71636364425859 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "0665D6CA-4DFD-7E45-47E9-EB8D2326B85F";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "4BA2D679-44C0-A233-4CC0-D2B87EBA50DE";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd0_ikcShape1" -p "lfLegQd0_ikc";
	rename -uid "70045BD7-4574-2900-103F-C9AE946F1D4D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		13.61623539847271 -13.107837257861309 13.616235398472725
		13.354603253327449 -13.107837257861309 16.27263114700817
		12.579761194504602 -13.107837257861309 18.826943096651299
		11.321485967788298 -13.107837257861309 21.181010471651966
		9.6281323844923676 -13.107837257861309 23.244367782965089
		7.5647750731792405 -13.107837257861309 24.937721366261027
		5.210707698178572 -13.107837257861309 26.195996592977327
		2.6563957485354446 -13.107837257861309 26.970838651800179
		-1.5896068572638501e-15 -13.107837257861309 27.232470796945435
		-2.6563957485354477 -13.107837257861309 26.970838651800179
		-5.2107076981785756 -13.107837257861309 26.195996592977327
		-7.5647750731792449 -13.107837257861309 24.937721366261027
		-9.628132384492373 -13.107837257861309 23.244367782965092
		-11.321485967788306 -13.107837257861309 21.18101047165197
		-12.579761194504609 -13.107837257861309 18.826943096651299
		-13.354603253327459 -13.107837257861309 16.27263114700817
		-13.616235398472719 -13.107837257861309 13.616235398472719
		-13.354603173024143 -9.030308359209565 13.616235398472723
		-12.57976113369951 -5.0599195328662709 13.616235398472723
		-11.321486225033349 -1.6218055694027225 13.616235398472723
		-9.6281323820320832 1.1139632775683435 13.616235398472723
		-7.5647749087994702 3.1740869607905822 13.616235398472723
		-5.2107075322808791 4.432361869456745 13.616235398472723
		-2.6563956901218937 5.2072039087813771 13.616235398472723
		8.337539551980434e-16 5.468836134229953 13.616235398472723
		2.6563956901218937 5.2072039087813771 13.616235398472723
		5.2107075322808791 4.432361869456745 13.616235398472723
		7.5647749087994702 3.1740869607905822 13.616235398472723
		9.6281323820320832 1.1139632775683435 13.616235398472723
		11.321486225033349 -1.6218055694027225 13.616235398472723
		12.57976113369951 -5.0599195328662709 13.616235398472723
		13.354603173024143 -9.030308359209565 13.616235398472723
		13.616235398472723 -13.107837257861309 13.616235398472723
		13.616235398472723 -13.107837257861313 -12.799261274564357
		13.616235398472723 -12.290863133952946 -13.616235398472723
		13.354603173024143 -9.030308359209565 -13.616235398472723
		12.57976113369951 -5.0599195328662709 -13.616235398472723
		11.321486225033349 -1.6218055694027225 -13.616235398472723
		9.6281323820320832 1.1139632775683435 -13.616235398472723
		7.5647749087994702 3.1740869607905822 -13.616235398472723
		5.2107075322808791 4.432361869456745 -13.616235398472723
		2.6563956901218937 5.2072039087813771 -13.616235398472723
		8.337539551980434e-16 5.468836134229953 -13.616235398472723
		-2.6563956901218937 5.2072039087813771 -13.616235398472723
		-5.2107075322808791 4.432361869456745 -13.616235398472723
		-7.5647749087994702 3.1740869607905822 -13.616235398472723
		-9.6281323820320832 1.1139632775683435 -13.616235398472723
		-11.321486225033349 -1.6218055694027225 -13.616235398472723
		-12.57976113369951 -5.0599195328662709 -13.616235398472723
		-13.354603173024143 -9.030308359209565 -13.616235398472723
		-13.616235398472723 -12.290863133952946 -13.616235398472723
		-13.616235398472723 -13.107837257861307 -12.799261274564357
		-13.616235398472723 -13.107837257861309 13.616235398472723
		;
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "9173F0E2-46F9-0D3C-588C-69ADB3C1CED7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShape" -p "lfLegQd0_ikc_gmb";
	rename -uid "9139C615-4D35-378D-15ED-0F93795012A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.7232470796945414 1.8576673146246296 
		-1.3616235063913216 -2.6709206506654883 1.8576673146246296 -1.8929026560984106 -2.515952238900919 
		1.8576673146246296 -2.4037650460270363 -2.2642971935576597 1.8576673146246296 -2.8745785210271677 
		-1.925626476898473 1.8576673146246296 -3.2872499832897937 -1.5129550146358479 1.8576673146246296 
		-3.6259206999489813 -1.0421415396357139 1.8576673146246296 -3.8775757452922406 -0.531279149707089 
		1.8576673146246296 -4.0325441570568117 3.1792137145276999e-16 1.8576673146246296 
		-4.084870586085863 0.53127914970708945 1.8576673146246296 -4.0325441570568117 1.0421415396357148 
		1.8576673146246296 -3.8775757452922406 1.5129550146358488 1.8576673146246296 -3.6259206999489813 
		1.9256264768984739 1.8576673146246296 -3.2872499832897937 2.2642971935576615 1.8576673146246296 
		-2.8745785210271713 2.5159522389009208 1.8576673146246296 -2.4037650460270363 2.6709206506654919 
		1.8576673146246296 -1.8929026560984106 2.7232470796945432 1.8576673146246296 -1.3616235063913198 
		2.670920634604828 1.042161534894281 -1.3616235063913198 2.5159522267399019 0.24808376962562217 
		-1.3616235063913198 2.2642972450066701 -0.43953902306708681 -1.3616235063913198 1.9256264764064159 
		-0.98669279246130015 -1.3616235063913198 1.5129549817598935 -1.3987175291057476 -1.3616235063913198 
		1.0421415064561756 -1.6503725108389804 -1.3616235063913198 0.53127913802437865 -1.8053409187039069 
		-1.3616235063913198 -1.6675079103960868e-16 -1.8576673637936221 -1.3616235063913198 
		-0.53127913802437865 -1.8053409187039069 -1.3616235063913198 -1.0421415064561756 
		-1.6503725108389804 -1.3616235063913198 -1.5129549817598935 -1.3987175291057476 -1.3616235063913198 
		-1.9256264764064159 -0.98669279246130015 -1.3616235063913198 -2.2642972450066701 
		-0.43953902306708681 -1.3616235063913198 -2.5159522267399019 0.24808376962562217 
		-1.3616235063913198 -2.670920634604828 1.042161534894281 -1.3616235063913198 -2.7232470796945432 
		1.8576673146246296 -1.3616235063913198 -2.7232470796945432 1.8576673146246296 3.921475828216094 
		-2.7232470796945432 1.6942724898429571 4.0848706529977665 -2.670920634604828 1.042161534894281 
		4.0848706529977665 -2.5159522267399019 0.24808376962562217 4.0848706529977665 -2.2642972450066701 
		-0.43953902306708681 4.0848706529977665 -1.9256264764064159 -0.98669279246130015 
		4.0848706529977665 -1.5129549817598935 -1.3987175291057476 4.0848706529977665 -1.0421415064561756 
		-1.6503725108389804 4.0848706529977665 -0.53127913802437865 -1.8053409187039069 4.0848706529977665 
		-1.6675079103960868e-16 -1.8576673637936221 4.0848706529977665 0.53127913802437865 
		-1.8053409187039069 4.0848706529977665 1.0421415064561756 -1.6503725108389804 4.0848706529977665 
		1.5129549817598935 -1.3987175291057476 4.0848706529977665 1.9256264764064159 -0.98669279246130015 
		4.0848706529977665 2.2642972450066701 -0.43953902306708681 4.0848706529977665 2.5159522267399019 
		0.24808376962562217 4.0848706529977665 2.670920634604828 1.042161534894281 4.0848706529977665 
		2.7232470796945432 1.6942724898429571 4.0848706529977665 2.7232470796945432 1.8576673146246296 
		3.921475828216094 2.7232470796945432 1.8576673146246296 -1.3616235063913198;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "6C05095A-40BC-4ABF-CDC2-68B4F0A6EB9C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		13.61623539847271 -13.107837257861309 13.616235398472725
		13.354603253327449 -13.107837257861309 16.27263114700817
		12.579761194504602 -13.107837257861309 18.826943096651299
		11.321485967788298 -13.107837257861309 21.181010471651966
		9.6281323844923676 -13.107837257861309 23.244367782965089
		7.5647750731792405 -13.107837257861309 24.937721366261027
		5.210707698178572 -13.107837257861309 26.195996592977327
		2.6563957485354446 -13.107837257861309 26.970838651800179
		-1.5896068572638501e-15 -13.107837257861309 27.232470796945435
		-2.6563957485354477 -13.107837257861309 26.970838651800179
		-5.2107076981785756 -13.107837257861309 26.195996592977327
		-7.5647750731792449 -13.107837257861309 24.937721366261027
		-9.628132384492373 -13.107837257861309 23.244367782965092
		-11.321485967788306 -13.107837257861309 21.18101047165197
		-12.579761194504609 -13.107837257861309 18.826943096651299
		-13.354603253327459 -13.107837257861309 16.27263114700817
		-13.616235398472719 -13.107837257861309 13.616235398472719
		-13.354603173024143 -9.030308359209565 13.616235398472723
		-12.57976113369951 -5.0599195328662709 13.616235398472723
		-11.321486225033349 -1.6218055694027225 13.616235398472723
		-9.6281323820320832 1.1139632775683435 13.616235398472723
		-7.5647749087994702 3.1740869607905822 13.616235398472723
		-5.2107075322808791 4.432361869456745 13.616235398472723
		-2.6563956901218937 5.2072039087813771 13.616235398472723
		8.337539551980434e-16 5.468836134229953 13.616235398472723
		2.6563956901218937 5.2072039087813771 13.616235398472723
		5.2107075322808791 4.432361869456745 13.616235398472723
		7.5647749087994702 3.1740869607905822 13.616235398472723
		9.6281323820320832 1.1139632775683435 13.616235398472723
		11.321486225033349 -1.6218055694027225 13.616235398472723
		12.57976113369951 -5.0599195328662709 13.616235398472723
		13.354603173024143 -9.030308359209565 13.616235398472723
		13.616235398472723 -13.107837257861309 13.616235398472723
		13.616235398472723 -13.107837257861313 -12.799261274564357
		13.616235398472723 -12.290863133952946 -13.616235398472723
		13.354603173024143 -9.030308359209565 -13.616235398472723
		12.57976113369951 -5.0599195328662709 -13.616235398472723
		11.321486225033349 -1.6218055694027225 -13.616235398472723
		9.6281323820320832 1.1139632775683435 -13.616235398472723
		7.5647749087994702 3.1740869607905822 -13.616235398472723
		5.2107075322808791 4.432361869456745 -13.616235398472723
		2.6563956901218937 5.2072039087813771 -13.616235398472723
		8.337539551980434e-16 5.468836134229953 -13.616235398472723
		-2.6563956901218937 5.2072039087813771 -13.616235398472723
		-5.2107075322808791 4.432361869456745 -13.616235398472723
		-7.5647749087994702 3.1740869607905822 -13.616235398472723
		-9.6281323820320832 1.1139632775683435 -13.616235398472723
		-11.321486225033349 -1.6218055694027225 -13.616235398472723
		-12.57976113369951 -5.0599195328662709 -13.616235398472723
		-13.354603173024143 -9.030308359209565 -13.616235398472723
		-13.616235398472723 -12.290863133952946 -13.616235398472723
		-13.616235398472723 -13.107837257861307 -12.799261274564357
		-13.616235398472723 -13.107837257861309 13.616235398472723
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd0_smart_ctl_ofs" -p "lfLegQd0_ikc_gmb";
	rename -uid "FF320648-48E9-D507-0C1B-9E96C72DA6C1";
	setAttr ".t" -type "double3" 1.679790528896774e-08 -13.107837257861313 14.302048277247962 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "40BACEE7-4042-62B8-1982-4B88D3FE99E2";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd0_smart_ctlShape1" -p "lfLegQd0_smart_ctl";
	rename -uid "006369CD-4DCA-6B69-370A-759B4860A1FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.2648071045120952 1.2858530584668238e-16 -6.2648071045121032
		3.4686076343763129e-16 1.8184708345027089e-16 -5.664666149932029
		-6.2648071045120952 1.2858530584668231e-16 -6.2648071045120988
		-5.664666149932045 -7.4217730073006089e-32 -2.1995745035624879e-15
		-6.2648071045120952 -1.2858530584668236e-16 6.2648071045120952
		-5.674334824812679e-16 -1.8184708345027106e-16 5.6646661499320343
		6.2648071045120952 -1.2858530584668231e-16 6.2648071045120988
		5.664666149932045 -1.0844313755479723e-31 -1.1334286872467068e-15
		6.2648071045120952 1.2858530584668238e-16 -6.2648071045121032
		3.4686076343763129e-16 1.8184708345027089e-16 -5.664666149932029
		-6.2648071045120952 1.2858530584668231e-16 -6.2648071045120988
		;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "67A7A4C4-40EC-9ED1-B4D7-7C96ACF3A925";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.1316282072803006e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -88.760146695944243 16.55377100166724 -89.646696457945538 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "598E1786-4354-1D70-09F7-7391F78B8587";
	setAttr ".t" -type "double3" 30.631906770730584 99.999085810922679 -16.022525009026403 ;
	setAttr ".r" -type "double3" -0.76587931236154771 14.235497131107536 7.1036069008248806e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "D2EB4617-492A-E8DF-2EDF-4B92AB1A1EB2";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "37DA0C55-4B20-FFC5-7B8A-C0AA12A7318A";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 4.2632564145606011e-14 -2.7533531010703882e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd0_pvcShape1" -p "lfLegQd0_pvc";
	rename -uid "5015EA40-4290-606A-61D9-58A74CA96CD8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 4.4933576814959988
		-4.4933576814959988 0 0
		0 0 -4.4933576814959988
		4.4933576814959988 0 0
		0 0 4.4933576814959988
		0 4.4933576814959988 0
		4.4933576814959988 0 0
		0 0 -4.4933576814959988
		0 4.4933576814959988 0
		-4.4933576814959988 0 0
		0 -4.4933576814959988 0
		4.4933576814959988 0 0
		0 0 4.4933576814959988
		0 -4.4933576814959988 0
		0 0 -4.4933576814959988
		;
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "A2505C1A-4492-D216-FDF5-A1A23F9A56E4";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_settingShape1" -p "lfLegQd0_setting";
	rename -uid "CCA85D6C-4DAE-7F90-075D-39AC36508902";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.0774902656484819 -1.3837526351538565e-32 2.2598394987066917e-16
		-8.9030687820160956 1.0843821618259597e-16 -1.7709304600812621
		-8.3865074224663392 2.1270922272183092e-16 -3.473805237944819
		-7.5476574833555654 3.0880591999705314e-16 -5.0431832725329793
		-6.4187549213547213 3.9303537339802985e-16 -6.4187549213547213
		-5.0431832725329793 4.6216073421473942e-16 -7.5476574833555654
		-3.473805237944819 5.1352550000841429e-16 -8.3865074224663392
		-1.7709304600812621 5.4515575339695787e-16 -8.9030687820160956
		5.558359701320289e-16 5.558359701320289e-16 -9.0774902656484819
		1.7709304600812621 5.4515575339695787e-16 -8.9030687820160956
		3.473805237944819 5.1352550000841429e-16 -8.3865074224663392
		5.0431832725329793 4.6216073421473942e-16 -7.5476574833555654
		6.4187549213547213 3.9303537339802985e-16 -6.4187549213547213
		7.5476574833555654 3.0880591999705314e-16 -5.0431832725329793
		8.3865074224663392 2.1270922272183092e-16 -3.473805237944819
		8.9030687820160956 1.0843821618259597e-16 -1.7709304600812621
		9.0774902656484819 6.0120166914379204e-32 -9.8183680421986131e-16
		8.7319992769058761 1.0635461136091546e-16 -1.7369025107602931
		7.7481225935016012 1.9651769871297327e-16 -3.2093774606773606
		6.2756474271603002 2.5676275000420715e-16 -4.1932537112331696
		4.538745132824241 2.7791798506601445e-16 -4.538745132824241
		2.8018426220639476 2.5676275000420715e-16 -4.1932537112331696
		1.3293676721468801 1.9651769871297327e-16 -3.2093774606773606
		0.34549142159107066 1.0635461136091546e-16 -1.7369025107602931
		0 6.0120166914379204e-32 -9.8183680421986131e-16
		-0.34549142159107066 -1.0635461136091546e-16 1.7369025107602931
		-1.3293676721468801 -1.9651769871297327e-16 3.2093774606773606
		-2.8018426220639476 -2.5676275000420715e-16 4.1932537112331696
		-4.538745132824241 -2.7791798506601445e-16 4.538745132824241
		-6.2756474271603002 -2.5676275000420715e-16 4.1932537112331696
		-7.7481225935016012 -1.9651769871297327e-16 3.2093774606773606
		-8.7319992769058761 -1.0635461136091546e-16 1.7369025107602931
		-9.0774902656484819 -1.3837526351538565e-32 2.2598394987066917e-16
		-8.9030687820160956 -1.0843821618259597e-16 1.7709304600812621
		-8.3865074224663392 -2.1270922272183092e-16 3.473805237944819
		-7.5476574833555654 -3.0880591999705314e-16 5.0431832725329793
		-6.4187549213547213 -3.9303537339802985e-16 6.4187549213547213
		-5.0431832725329793 -4.6216073421473942e-16 7.5476574833555654
		-3.473805237944819 -5.1352550000841429e-16 8.3865074224663392
		-1.7709304600812621 -5.4515575339695787e-16 8.9030687820160956
		-1.0597379050687125e-15 -5.558359701320289e-16 9.0774902656484819
		1.7709304600812621 -5.4515575339695787e-16 8.9030687820160956
		3.473805237944819 -5.1352550000841429e-16 8.3865074224663392
		5.0431832725329793 -4.6216073421473942e-16 7.5476574833555654
		6.4187549213547213 -3.9303537339802985e-16 6.4187549213547213
		7.5476574833555654 -3.0880591999705314e-16 5.0431832725329793
		8.3865074224663392 -2.1270922272183092e-16 3.473805237944819
		8.9030687820160956 -1.0843821618259597e-16 1.7709304600812621
		9.0774902656484819 6.0120166914379204e-32 -9.8183680421986131e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe02_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "C393947C-4B77-2C85-F8B5-1D8E2991BF12";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe02_4_ctl" -p "lfLegQd0_toe02_4_ctl_ofs";
	rename -uid "B08CC077-4448-7A38-4D12-58B8B5A336E4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_4_ctlShape1" -p "lfLegQd0_toe02_4_ctl";
	rename -uid "006BB279-4C78-F945-FCC1-59A6DF2AABC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8873050468045861e-14 -2.3493026641920309 -2.3493026641920385
		2.8893023634647208e-14 4.543515141500188e-15 -2.124249806224511
		2.8873050468045861e-14 2.3493026641920407 -2.3493026641920371
		2.8824830978353359e-14 2.1242498062245216 -8.2484043883593291e-16
		2.877661148866085e-14 2.3493026641920407 2.3493026641920358
		2.8756638322059503e-14 4.8863754837197753e-15 2.1242498062245128
		2.877661148866085e-14 -2.3493026641920309 2.3493026641920371
		2.8824830978353359e-14 -2.1242498062245123 -4.2503575771751506e-16
		2.8873050468045861e-14 -2.3493026641920309 -2.3493026641920385
		2.8893023634647208e-14 4.543515141500188e-15 -2.124249806224511
		2.8873050468045861e-14 2.3493026641920407 -2.3493026641920371
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe03_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "5E3667D0-4783-ABD6-0D3D-148A1A907AA9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe03_4_ctl" -p "lfLegQd0_toe03_4_ctl_ofs";
	rename -uid "521BC375-4916-7361-7A34-7A859DBC26B0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_4_ctlShape1" -p "lfLegQd0_toe03_4_ctl";
	rename -uid "45DF935B-4555-F78E-FB80-FCB4F46018DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.8219489692505899e-17 -2.3493026641920358 -2.3493026641920385
		6.8192656293851577e-17 -1.3007278628911173e-16 -2.124249806224511
		4.8219489692505868e-17 2.3493026641920358 -2.3493026641920371
		-2.7831648777377282e-32 2.1242498062245168 -8.2484043883593291e-16
		-4.8219489692505887e-17 2.3493026641920358 2.3493026641920358
		-6.8192656293851651e-17 2.1278755593047546e-16 2.1242498062245128
		-4.8219489692505868e-17 -2.3493026641920358 2.3493026641920371
		-4.0666176583048961e-32 -2.1242498062245168 -4.2503575771751506e-16
		4.8219489692505899e-17 -2.3493026641920358 -2.3493026641920385
		6.8192656293851577e-17 -1.3007278628911173e-16 -2.124249806224511
		4.8219489692505868e-17 2.3493026641920358 -2.3493026641920371
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "81AA1B47-4919-2F9B-A269-DF8CDF3DEBA9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "BF3348F5-4D95-964C-E126-9E90F7A8A50F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "897DCD09-4A67-B1C3-A1E2-1795C2F31A89";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "FEADA0E0-4EB6-B02E-0C6E-85889B3AFD7C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "46D20BB5-4266-765F-9256-E39579FA5180";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		-2.315492851400432e-31 17.672992643180134 -6.8623751145604193e-15
		-4.0116877219264662e-16 19.545351294941383 19.545351294941383
		-5.6733831843540471e-16 1.7703157601804712e-15 17.672992643180102
		-4.0116877219264647e-16 -19.545351294941383 19.545351294941391
		-3.3832792992262993e-31 -17.672992643180134 -3.5361442883126777e-15
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		;
createNode transform -n "lfLegQd1_lwr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "A25D63AA-424A-CA2F-39C2-9EA08D11DF50";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "C3B7A110-4D33-157D-D67E-7C9634B6B599";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "B794D89F-4D62-1CA7-3942-9EBC2893F9B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		-2.315492851400432e-31 17.672992643180134 -6.8623751145604193e-15
		-4.0116877219264662e-16 19.545351294941383 19.545351294941383
		-5.6733831843540471e-16 1.7703157601804712e-15 17.672992643180102
		-4.0116877219264647e-16 -19.545351294941383 19.545351294941391
		-3.3832792992262993e-31 -17.672992643180134 -3.5361442883126777e-15
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		;
createNode transform -n "lfLegQd1_palm_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "B5F707EB-40A4-36C6-1386-B7AF5EA0959C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "B7880C41-4D97-B748-3A65-24812F1542EC";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_palm_fkcShape1" -p "lfLegQd1_palm_fkc";
	rename -uid "0E59A8AD-4A2C-C2C9-E08F-4D948432D6B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		-2.315492851400432e-31 17.672992643180134 -6.8623751145604193e-15
		-4.0116877219264662e-16 19.545351294941383 19.545351294941383
		-5.6733831843540471e-16 1.7703157601804712e-15 17.672992643180102
		-4.0116877219264647e-16 -19.545351294941383 19.545351294941391
		-3.3832792992262993e-31 -17.672992643180134 -3.5361442883126777e-15
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		;
createNode transform -n "lfLegQd1_digit_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "C9FBCD84-49D9-FC8D-6DA8-1CB03B24C364";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "62864FB4-4B11-23FD-1FDF-7A8DBDB21C7C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "936F1063-4B60-674D-9E30-C8A114465854";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		-2.315492851400432e-31 17.672992643180134 -6.8623751145604193e-15
		-4.0116877219264662e-16 19.545351294941383 19.545351294941383
		-5.6733831843540471e-16 1.7703157601804712e-15 17.672992643180102
		-4.0116877219264647e-16 -19.545351294941383 19.545351294941391
		-3.3832792992262993e-31 -17.672992643180134 -3.5361442883126777e-15
		4.0116877219264672e-16 -19.545351294941383 -19.545351294941405
		5.6733831843540422e-16 -1.0821586935912615e-15 -17.672992643180084
		4.0116877219264647e-16 19.545351294941383 -19.545351294941391
		;
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "7E2370EB-42A0-129A-FE1F-ECBCF24E4511";
	setAttr ".t" -type "double3" 9.2370555648813024e-14 6.3948846218409017e-14 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -125.59095477424601 5.0283456426573991 -83.017921108855589 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "BE918F5A-49C6-6ECB-34E2-B8990562C8D5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "E4165A38-43A7-9C7F-687D-D68BD741A673";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "9CC322F9-4C4E-51E6-6FF2-18AABE7E846B";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999933 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "E53B1D6C-4AD1-A410-8FF5-0A8297859685";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "5C1BDA6A-46A2-0BBB-FBD1-0085C4061821";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.7726756474706917 -37.760723388854828 -9.7726756474707024
		5.4107934679563076e-16 -37.760723388854828 -8.8364963215900421
		-9.7726756474706917 -37.760723388854828 -9.7726756474706953
		-8.8364963215900669 -37.760723388854828 -3.4311875572802096e-15
		-9.7726756474706917 -37.760723388854828 9.7726756474706917
		-8.8515788009023559e-16 -37.760723388854828 8.8364963215900509
		9.7726756474706917 -37.760723388854828 9.7726756474706953
		8.8364963215900669 -37.760723388854828 -1.7680721441563389e-15
		9.7726756474706917 -37.760723388854828 -9.7726756474707024
		5.4107934679563076e-16 -37.760723388854828 -8.8364963215900421
		-9.7726756474706917 -37.760723388854828 -9.7726756474706953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "FA922104-4B81-2AA1-F440-6CAAB0A197C8";
	setAttr ".t" -type "double3" 52.620070316650768 3.5527136788005009e-14 -1.2789769243681803e-13 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "BD6C2E31-4C32-F3C1-5E92-21B16DD670C7";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "D48274C9-451D-0CF6-227C-1BAF9553803D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		-61.36117550688909 0 4.7200904236068544
		-61.36117550688909 0 -4.7200904236068526
		-66.081265930495945 0 -7.0801356354102802
		-70.801356354102793 0 -4.7200904236068544
		-70.801356354102793 0 4.7200904236068526
		-61.36117550688909 0 4.7200904236068544
		-70.801356354102793 0 4.7200904236068526
		-70.801356354102793 0 -4.7200904236068544
		-66.081265930495945 0 -7.0801356354102802
		-61.36117550688909 0 -4.7200904236068526
		;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "FFACF781-493D-6D65-5C5C-1ABAB7E6CAF6";
	setAttr ".t" -type "double3" 30.744220498529863 8.6697456826984407 57.470578649982656 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "B2055B61-41F6-8469-8CCF-AAB0A4C1F8FF";
	setAttr ".t" -type "double3" 1.1926103551209479 -5.7748154296870045 7.8885655152199519 ;
	setAttr ".r" -type "double3" 138.88211706729845 -74.955955973488159 -49.869515286968785 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "34871A7C-4921-7A08-77AD-46ADF066E6FB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "7CFAE742-4302-45E5-B477-6E90F486799D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "B7298728-438A-80F3-FE1E-C6BA09CE1851";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0058438609632336e-16 -9.7726756474706917 -9.7726756474707024
		2.8366915921770211e-16 -5.4107934679563076e-16 -8.8364963215900421
		2.0058438609632324e-16 9.7726756474706917 -9.7726756474706953
		-1.157746425700216e-31 8.8364963215900669 -3.4311875572802096e-15
		-2.0058438609632331e-16 9.7726756474706917 9.7726756474706917
		-2.8366915921770235e-16 8.8515788009023559e-16 8.8364963215900509
		-2.0058438609632324e-16 -9.7726756474706917 9.7726756474706953
		-1.6916396496131496e-31 -8.8364963215900669 -1.7680721441563389e-15
		2.0058438609632336e-16 -9.7726756474706917 -9.7726756474707024
		2.8366915921770211e-16 -5.4107934679563076e-16 -8.8364963215900421
		2.0058438609632324e-16 9.7726756474706917 -9.7726756474706953
		;
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "0BB248FA-423F-4472-6C45-648AF4E9C900";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7955392884335311 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96572658327949124 0.17069033769681696 -0.19554277016618624 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "87A0A4BA-408C-2F45-6CD0-83A2B7ABDE12";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000007 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "31CE638A-474F-8ADD-8B52-34B0CF666E68";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 0.99999999999999944 ;
createNode ikHandle -n "lfLegQd1_toe02_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "7C7FF6DA-4447-0891-FCC8-AF85F4F603B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45879537505125256 2.7021824336404947 0.092898052233699957 ;
	setAttr ".r" -type "double3" 0.65362899995622581 -24.578774550738842 2.665078297517113 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96572658327949135 0.17069033769681691 -0.19554277016618685 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe03_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "E0015119-40F8-E5E8-64DA-C2B4D143E9CB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45304537352490115 -2.6683164556144625 -0.09173377732772181 ;
	setAttr ".r" -type "double3" -0.49116293621194024 -24.157105835919783 -2.0128620446227874 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96572658327949135 0.17069033769681691 -0.19554277016618685 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "3DBAD470-4E85-6035-E782-C1B43D899BF3";
	setAttr ".t" -type "double3" -0.45879537505125256 2.7021824336404876 0.092898052233699957 ;
	setAttr ".r" -type "double3" -0.47113511803319219 3.5428128566666599 -2.3521496790547105 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000004 ;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs1" -p "lfLegQd1_toe02_3_ikc_ofs";
	rename -uid "135A31AA-4977-BBB5-519A-CFA3F53F5A88";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe02_3_ikc" -p "lfLegQd1_toe02_3_ikc_ofs1";
	rename -uid "AD14CC66-4781-237B-20BD-6FB35AA8B005";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_3_ikcShape1" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "E9FFEB6D-4F24-38C1-93A1-12B83304AA04";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-1.085702875257734e-14 1.7763568394002505e-15 4.1922824532808299e-16
		-1.085702875257734e-14 1.7763568394002505e-15 -6.346664702132359
		0.73289873816830597 1.7763568394002505e-15 -6.346664702132359
		0.73289873816830597 1.7763568394002505e-15 -7.8124621784689978
		-0.73289873816832773 1.7763568394002505e-15 -7.8124621784689978
		-0.73289873816832773 1.7763568394002505e-15 -6.346664702132359
		-1.085702875257734e-14 1.7763568394002505e-15 -6.346664702132359
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe02_3_1_ikj_ikh" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "40EDABCB-47D5-C01A-D3C4-0A85FF7C61B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8219693906679453 0.52983626634913428 0.47129462223770702 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.999999999999999 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96816035804292921 0.21129211776198284 -0.1342429219208347 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "2477A10A-490B-6710-B520-7DAFE902D631";
	setAttr ".t" -type "double3" 0.45304537352490115 -2.6683164556144767 -0.09173377732772181 ;
	setAttr ".r" -type "double3" 0.77718659404302604 3.388652674942771 3.8806156228207889 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs1" -p "lfLegQd1_toe03_3_ikc_ofs";
	rename -uid "8091AB40-4986-65B1-5BCC-CAA918D6694B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_toe03_3_ikc" -p "lfLegQd1_toe03_3_ikc_ofs1";
	rename -uid "42843FBE-4F1A-6B26-7FED-B1BE7869DB15";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_3_ikcShape1" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "DEE9D113-41AE-1FBD-BDB2-8EABA934608A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		1.085702875257734e-14 -7.524655602929085e-15 -3.4532698207125822e-15
		1.085702875257734e-14 -7.524655602929085e-15 -6.3466647021323626
		0.73289873816832773 -7.524655602929085e-15 -6.3466647021323626
		0.73289873816832773 -7.524655602929085e-15 -7.8124621784690023
		-0.73289873816830597 -7.524655602929085e-15 -7.8124621784690023
		-0.73289873816830597 -7.524655602929085e-15 -6.3466647021323626
		1.085702875257734e-14 -7.524655602929085e-15 -6.3466647021323626
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe03_3_1_ikj_ikh" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "9FACFA75-4ECE-337E-6305-0D8CEB0F65A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7930720948510128 0.25844630836538229 0.45915251432871784 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.98491776099525585 0.10306517548719873 -0.13897688181091575 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "95646258-4A80-0B7C-B888-90B328CEFFEA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "6315A673-4627-B3FC-D434-0CBBABA8A4CF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "EDC91D00-4B52-C42C-5CAE-54905639B20E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 49.550001881883212 -4.4173370618726722 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "718784C6-4C96-89BE-B326-E5A6F997C683";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "A8A7EFFF-4F5B-19D3-BC6F-669C56974233";
	setAttr ".t" -type "double3" 2.0217887614951131 1.1102230246251565e-15 -8.393702115667395 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "CE9C7ACA-45E2-9F33-3754-14BCAB88F56D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "DAE20759-41AB-7080-76DF-B8806FF7216C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "7166906D-4DAD-DDB0-A7D5-8596B3269A83";
	setAttr ".t" -type "double3" 3.9909575445434342 -6.6613381477509392e-16 5.0602270072448903 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "CC444AE6-476C-B93D-5073-F2815B89C806";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "D1FC068E-44EC-211F-E1D8-F98F4DA938BC";
	setAttr ".t" -type "double3" -10.508384412859932 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "A39A5DD4-4072-9640-FA35-F6BF47A9DF90";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "4A832463-4D1F-7A7F-DDA5-A9ADA6C23661";
	setAttr ".t" -type "double3" 5.4643676848220935 -1.5439952492278819 2.0740766745503265 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "CD824E75-4F29-A1B4-95AB-609F6F557F22";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape2" -p "lfLegQd1_ballG_ikc";
	rename -uid "0FB36C4E-4A4C-7DC6-1388-4FA684EB142A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		1.1693705383493924e-16 -16.970634639070934 -1.032287957156207e-15
		1.1295251687205613e-16 -17.035707296812156 -0.49427371042532664
		1.0127045837235672e-16 -17.226489861986501 -0.9548634526544244
		8.2686977784680187e-17 -17.529981007237481 -1.3503808372375663
		5.8468526917469619e-17 -17.925498166749172 -1.6538721325361809
		3.0265534922717509e-17 -18.386087984002089 -1.8446545476628931
		-3.5809126302652493e-32 -18.880361694427414 -1.9097269053088488
		-3.0265534922717509e-17 -19.374635404852739 -1.8446545476628931
		-5.8468526917469619e-17 -19.835225222105656 -1.6538721325361809
		-8.2686977784680187e-17 -20.230742381617347 -1.3503808372375663
		-1.0127045837235672e-16 -20.534234727249398 -0.9548634526544244
		-1.1295251687205613e-16 -20.725016092042672 -0.49427371042532664
		-1.1693705383493924e-16 -20.790088749783898 -5.6430881983524493e-16
		-1.1295251687205613e-16 -20.725016092042672 0.49427371042532664
		-1.0127045837235672e-16 -20.534234727249398 0.9548634526544244
		-8.2686977784680187e-17 -20.230742381617347 1.3503808372375663
		-5.8468526917469619e-17 -19.835225222105656 1.6538721325361809
		-3.0265534922717509e-17 -19.374635404852739 1.8446545476628931
		8.7488513657545389e-32 -18.880361694427414 1.9097269053088488
		3.0265534922717509e-17 -18.386087984002089 1.8446545476628931
		5.8468526917469619e-17 -17.925498166749172 1.6538721325361809
		8.2686977784680187e-17 -17.529981007237481 1.3503808372375663
		1.0127045837235672e-16 -17.226489861986501 0.9548634526544244
		1.1295251687205613e-16 -17.035707296812156 0.49427371042532664
		1.1693705383493924e-16 -16.970634639070934 -1.032287957156207e-15
		0 0 0
		;
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "3566579E-4FFB-ED54-1469-E0B2F85BC344";
	setAttr ".t" -type "double3" -1.1926102434301917 -5.7748144484097912 7.8885650084221339 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "1ADEF8EF-4F86-B6FC-6C49-D48CE5990FAC";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -13.418399525302016 1.5902773407317588e-15 93.102233822815421 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "D3C43106-4E3E-D200-ED86-44A56C0B37E7";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "4507D1E8-42CF-3F3B-963F-F78256B64E8C";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "33E27DC3-49F5-7785-668C-8D8B84B16D2D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		11.272142229702576 -18.880361694427414 0
		10.465905480544825 -14.545241889121133 0
		8.0102576938219752 -10.870104000605439 0
		4.33511980530628 -8.4144562138825894 0
		0 -7.6084837897859181 0
		-4.33511980530628 -8.4144562138825894 0
		-8.0102576938219752 -10.870104000605439 0
		-10.465905480544825 -14.545241889121133 0
		-11.272142229702576 -18.88036222849318 0
		-10.465905480544825 -23.215481499733695 0
		-8.0102576938219752 -26.890619388249391 0
		-4.33511980530628 -29.34626717497224 0
		4.5014255815924176e-07 -30.15223959906891 -0.07664671556823037
		4.33511980530628 -29.34626717497224 0
		8.0102576938219752 -26.890619388249391 0
		10.465905480544825 -23.215481499733695 0
		11.272142229702576 -18.880361694427414 0
		10.414097768573395 -18.85102946687806 -4.3135659846114596
		7.9706089346601665 -18.826162369303344 -7.970435235334314
		4.313664162491289 -18.80954674492104 -10.413871204235328
		4.5014255815924176e-07 -18.803711958001344 -11.271893008930704
		-4.313664162491289 -18.80954674492104 -10.413871204235328
		-7.9706089346601665 -18.826162369303344 -7.970435235334314
		-10.414097768573395 -18.85102946687806 -4.3135659846114596
		-11.272142229702576 -18.88036222849318 0
		-10.414097768573395 -18.90969497927701 4.3135508803222553
		-7.9706089346601665 -18.93456207685173 7.970427683189711
		-4.313664162491289 -18.95117770123403 10.413856099946123
		4.5014255815924176e-07 -18.957012186067946 11.271877904641496
		4.313664162491289 -18.95117770123403 10.413856099946123
		7.9706089346601665 -18.93456207685173 7.970427683189711
		10.414097768573395 -18.90969497927701 4.3135508803222553
		11.272142229702576 -18.880361694427414 0
		10.414097768573395 -18.85102946687806 -4.3135659846114596
		7.9706089346601665 -18.826162369303344 -7.970435235334314
		4.313664162491289 -18.80954674492104 -10.413871204235328
		4.5014255815924176e-07 -18.803711958001344 -11.271893008930704
		4.5014255815924176e-07 -14.495986802025262 -10.384531122455586
		4.5014255815924176e-07 -10.85573982157196 -7.9162334935239684
		4.5014255815924176e-07 -8.4371730648461547 -4.2427495246761664
		0 -7.6084837897859181 0
		4.5014255815924176e-07 -8.4958381241164282 4.3843748924021515
		4.5014255815924176e-07 -10.964135753048048 8.0246143207108531
		4.5014255815924176e-07 -14.637612169751247 10.443188629581259
		4.5014255815924176e-07 -18.957012186067946 11.271877904641496
		4.5014255815924176e-07 -23.264736586829564 10.384516018166384
		4.5014255815924176e-07 -26.904983567282869 7.9162183892347642
		4.5014255815924176e-07 -29.323550324008671 4.2427344203869612
		4.5014255815924176e-07 -30.15223959906891 -0.07664671556823037
		4.5014255815924176e-07 -29.2648852647384 -4.3843899966913567
		4.5014255815924176e-07 -26.79658763580678 -8.0246294250000556
		4.5014255815924176e-07 -23.123111219103581 -10.443203733870465
		4.5014255815924176e-07 -18.803711958001344 -11.271893008930704
		;
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "7406A2C1-4318-568E-5307-DABDB3946FCD";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "BB82F2D3-4BD3-4386-FFEB-47BA4D92B227";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6843418860808015e-14 -1.4210854715202004e-14 4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999886 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "C4A96D09-4E1B-1281-19AD-78905C49EEEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.2238806654295189 -42.231192184245543 -2.211829512677248 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "8CD8EBEB-462A-CEA7-FC37-E582B6C36EF7";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "3DC388BF-4410-3C0E-9E80-D8865047C271";
	setAttr ".t" -type "double3" 0.22388066542951535 -42.231192184245572 -2.211829512677248 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "358D4B89-478B-3274-33BF-389D6A3B09DB";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "9607BE6D-40A3-CBEF-5522-C79EB83A96B6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "7278E3E6-4AF1-8BE6-D797-4A9351B0F2D7";
	setAttr ".t" -type "double3" 5.4643676848220935 -1.5439952492278819 2.0740766745503265 ;
	setAttr ".r" -type "double3" 138.88211706729851 74.955955973488159 49.869515286968841 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "9CEFF0BF-4083-D13A-7002-D08851517AF5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 6.3948846218409017e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -179.73165555149185 24.453608497329544 -1.0954029858575798 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96572658327949146 -0.1706903376968171 0.19554277016618637 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "B6D3BBC6-4894-30C7-B5CB-95BB29EC8458";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 4.6185277824406512e-14 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "AAC85FE0-4744-DF89-DDB7-BFB349327967";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode nurbsCurve -n "diamondShape6" -p "lfLegQd1_inRollG_ctl";
	rename -uid "22CF79D9-43F6-1817-6C73-82ADA1FE0486";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426963
		-1.1682223798426963 0 0
		0 0 -1.1682223798426963
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 -1.1682223798426963
		0 1.1682223798426963 0
		-1.1682223798426963 0 0
		0 -1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 -1.1682223798426963 0
		0 0 -1.1682223798426963
		;
createNode nurbsCurve -n "diamondShape7" -p "lfLegQd1_outRollG_ctl";
	rename -uid "A5B09AE6-4AA5-3091-CC92-37AB621F5D9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426963
		-1.1682223798426963 0 0
		0 0 -1.1682223798426963
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 -1.1682223798426963
		0 1.1682223798426963 0
		-1.1682223798426963 0 0
		0 -1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 -1.1682223798426963 0
		0 0 -1.1682223798426963
		;
createNode nurbsCurve -n "diamondShape5" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "529872C8-429A-D423-350E-029E6C6FC402";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426963
		-1.1682223798426963 0 0
		0 0 -1.1682223798426963
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 -1.1682223798426963
		0 1.1682223798426963 0
		-1.1682223798426963 0 0
		0 -1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 -1.1682223798426963 0
		0 0 -1.1682223798426963
		;
createNode nurbsCurve -n "diamondShape8" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "50767B69-4827-04A9-D4ED-7781131EAA02";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426963
		-1.1682223798426963 0 0
		0 0 -1.1682223798426963
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 -1.1682223798426963
		0 1.1682223798426963 0
		-1.1682223798426963 0 0
		0 -1.1682223798426963 0
		1.1682223798426963 0 0
		0 0 1.1682223798426963
		0 -1.1682223798426963 0
		0 0 -1.1682223798426963
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "33EB804E-4372-4130-26B1-B680FB15811D";
	setAttr ".t" -type "double3" 30.744220610220577 8.6697447014212088 57.470579156780545 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "981B3F4B-43C0-3117-BAB6-52A331B220D0";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "25DA8ABA-4858-AEE6-BE99-7F8FA8BB65E6";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "legLock" -ln "legLock" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "legLockLen" -ln "legLockLen" -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".legLock";
	setAttr -k on ".legLockLen";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_ikcShape1" -p "lfLegQd1_ikc";
	rename -uid "0FD73E93-487B-9CB4-86D9-B6A01B3BD3A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		14.160271270820548 -8.6697447014212052 14.160271270820564
		13.88818562893754 -8.6697447014212052 16.922803152880675
		13.082384801918693 -8.6697447014212052 19.579172483958942
		11.773835263648031 -8.6697447014212052 22.027296480371117
		10.012823839038262 -8.6697447014212052 24.173095109858821
		7.8670252095505511 -8.6697447014212052 25.934106534468597
		5.4189012131383789 -8.6697447014212052 27.242656072739255
		2.7625318820601095 -8.6697447014212052 28.048456899758108
		-1.6531195043335861e-15 -8.6697447014212052 28.320542541641114
		-2.7625318820601126 -8.6697447014212052 28.048456899758108
		-5.4189012131383825 -8.6697447014212052 27.242656072739255
		-7.8670252095505564 -8.6697447014212052 25.934106534468597
		-10.012823839038269 -8.6697447014212052 24.173095109858828
		-11.77383526364804 -8.6697447014212052 22.02729648037112
		-13.0823848019187 -8.6697447014212052 19.579172483958942
		-13.888185628937549 -8.6697447014212052 16.922803152880672
		-14.160271270820559 -8.6697447014212052 14.160271270820559
		-13.888185545425721 -4.429298379084913 14.160271270820562
		-13.082384738684137 -0.30027290424903441 14.160271270820562
		-11.773835531171294 3.2752106973418016 14.160271270820562
		-10.012823836479678 6.12028702524632 14.160271270820562
		-7.8670250386029972 8.2627228272258435 14.160271270820562
		-5.4189010406122531 9.571272034738687 14.160271270820562
		-2.7625318213126486 10.37707284148027 14.160271270820562
		8.670665446962028e-16 10.649158566875109 14.160271270820562
		2.7625318213126486 10.37707284148027 14.160271270820562
		5.4189010406122531 9.571272034738687 14.160271270820562
		7.8670250386029972 8.2627228272258435 14.160271270820562
		10.012823836479678 6.12028702524632 14.160271270820562
		11.773835531171294 3.2752106973418016 14.160271270820562
		13.082384738684137 -0.30027290424903441 14.160271270820562
		13.888185545425721 -4.429298379084913 14.160271270820562
		14.160271270820562 -8.6697447014212052 14.160271270820562
		14.160271270820562 -8.6697447014212088 -13.310654994571326
		14.160271270820562 -7.8201284251719718 -14.160271270820562
		13.888185545425721 -4.429298379084913 -14.160271270820562
		13.082384738684137 -0.30027290424903441 -14.160271270820562
		11.773835531171294 3.2752106973418016 -14.160271270820562
		10.012823836479678 6.12028702524632 -14.160271270820562
		7.8670250386029972 8.2627228272258435 -14.160271270820562
		5.4189010406122531 9.571272034738687 -14.160271270820562
		2.7625318213126486 10.37707284148027 -14.160271270820562
		8.670665446962028e-16 10.649158566875109 -14.160271270820562
		-2.7625318213126486 10.37707284148027 -14.160271270820562
		-5.4189010406122531 9.571272034738687 -14.160271270820562
		-7.8670250386029972 8.2627228272258435 -14.160271270820562
		-10.012823836479678 6.12028702524632 -14.160271270820562
		-11.773835531171294 3.2752106973418016 -14.160271270820562
		-13.082384738684137 -0.30027290424903441 -14.160271270820562
		-13.888185545425721 -4.429298379084913 -14.160271270820562
		-14.160271270820562 -7.8201284251719718 -14.160271270820562
		-14.160271270820562 -8.6697447014212035 -13.310654994571326
		-14.160271270820562 -8.6697447014212052 14.160271270820562
		;
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "250D9ED1-4F6B-D86C-09F0-82A8B9C9C43C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShape" -p "lfLegQd1_ikc_gmb";
	rename -uid "7811DE00-4AEB-654D-FAB7-679D080F7949";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.8320542541641096 1.9318903389048456 
		-1.4160270897048832 -2.777637125787507 1.9318903389048456 -1.9685334661169058 -2.6164769603837374 
		1.9318903389048456 -2.4998073323325585 -2.3547670527296063 1.9318903389048456 -2.9894321316149934 
		-2.0025647678076517 1.9318903389048456 -3.4185918575125314 -1.5734050419101093 1.9318903389048456 
		-3.7707941424344895 -1.0837802426276744 1.9318903389048456 -4.0325040500886224 -0.55250637641202083 
		1.9318903389048456 -4.1936642154923902 1.0411666366268171e-15 1.9318903389048456 
		-4.2480813438689928 0.55250637641202349 1.9318903389048456 -4.1936642154923902 1.083780242627677 
		1.9318903389048456 -4.0325040500886224 1.573405041910112 1.9318903389048456 -3.7707941424344895 
		2.0025647678076535 1.9318903389048456 -3.4185918575125385 2.3547670527296081 1.9318903389048456 
		-2.989432131614997 2.6164769603837392 1.9318903389048456 -2.4998073323325585 2.7776371257875088 
		1.9318903389048456 -1.9685334661169058 2.8320542541641114 1.9318903389048456 -1.4160270897048832 
		2.7776371090851431 1.0838010744375879 -1.4160270897048832 2.6164769477368264 0.25799597947041231 
		-1.4160270897048832 2.3547671062342577 -0.45710074084775476 -1.4160270897048832 2.0025647672959348 
		-1.0261160064286585 -1.4160270897048832 1.5734050077206003 -1.4546031668245636 -1.4160270897048832 
		1.0837802081224517 -1.7163130083271323 -1.4160270897048832 0.55250636426253052 -1.877473169675449 
		-1.4160270897048832 5.3712942682085951e-16 -1.9318903147544155 -1.4160270897048832 
		-0.55250636426252875 -1.877473169675449 -1.4160270897048832 -1.0837802081224499 -1.7163130083271323 
		-1.4160270897048832 -1.5734050077205985 -1.4546031668245636 -1.4160270897048832 -2.0025647672959348 
		-1.0261160064286585 -1.4160270897048832 -2.3547671062342577 -0.45710074084775476 
		-1.4160270897048832 -2.6164769477368264 0.25799597947041231 -1.4160270897048832 -2.7776371090851431 
		1.0838010744375879 -1.4160270897048832 -2.8320542541641114 1.9318903389048456 -1.4160270897048832 
		-2.8320542541641114 1.9318903389048465 4.0781581633734927 -2.8320542541641114 1.7619670836549988 
		4.2480814186233395 -2.7776371090851431 1.0838010744375879 4.2480814186233395 -2.6164769477368264 
		0.25799597947041231 4.2480814186233395 -2.3547671062342577 -0.45710074084775476 4.2480814186233395 
		-2.0025647672959348 -1.0261160064286585 4.2480814186233395 -1.5734050077205985 -1.4546031668245636 
		4.2480814186233395 -1.0837802081224499 -1.7163130083271323 4.2480814186233395 -0.55250636426252875 
		-1.877473169675449 4.2480814186233395 5.3712942682085951e-16 -1.9318903147544155 
		4.2480814186233395 0.55250636426253052 -1.877473169675449 4.2480814186233395 1.0837802081224517 
		-1.7163130083271323 4.2480814186233395 1.5734050077206003 -1.4546031668245636 4.2480814186233395 
		2.0025647672959348 -1.0261160064286585 4.2480814186233395 2.3547671062342577 -0.45710074084775476 
		4.2480814186233395 2.6164769477368264 0.25799597947041231 4.2480814186233395 2.7776371090851431 
		1.0838010744375879 4.2480814186233395 2.8320542541641114 1.7619670836549988 4.2480814186233395 
		2.8320542541641114 1.9318903389048456 4.0781581633734927 2.8320542541641114 1.9318903389048456 
		-1.4160270897048832;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "B7F9C822-4FF5-FC0A-F0C2-7799FF8D891E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		14.160271270820548 -8.6697447014212052 14.160271270820564
		13.88818562893754 -8.6697447014212052 16.922803152880675
		13.082384801918693 -8.6697447014212052 19.579172483958942
		11.773835263648031 -8.6697447014212052 22.027296480371117
		10.012823839038262 -8.6697447014212052 24.173095109858821
		7.8670252095505511 -8.6697447014212052 25.934106534468597
		5.4189012131383789 -8.6697447014212052 27.242656072739255
		2.7625318820601095 -8.6697447014212052 28.048456899758108
		-1.6531195043335861e-15 -8.6697447014212052 28.320542541641114
		-2.7625318820601126 -8.6697447014212052 28.048456899758108
		-5.4189012131383825 -8.6697447014212052 27.242656072739255
		-7.8670252095505564 -8.6697447014212052 25.934106534468597
		-10.012823839038269 -8.6697447014212052 24.173095109858828
		-11.77383526364804 -8.6697447014212052 22.02729648037112
		-13.0823848019187 -8.6697447014212052 19.579172483958942
		-13.888185628937549 -8.6697447014212052 16.922803152880672
		-14.160271270820559 -8.6697447014212052 14.160271270820559
		-13.888185545425721 -4.429298379084913 14.160271270820562
		-13.082384738684137 -0.30027290424903441 14.160271270820562
		-11.773835531171294 3.2752106973418016 14.160271270820562
		-10.012823836479678 6.12028702524632 14.160271270820562
		-7.8670250386029972 8.2627228272258435 14.160271270820562
		-5.4189010406122531 9.571272034738687 14.160271270820562
		-2.7625318213126486 10.37707284148027 14.160271270820562
		8.670665446962028e-16 10.649158566875109 14.160271270820562
		2.7625318213126486 10.37707284148027 14.160271270820562
		5.4189010406122531 9.571272034738687 14.160271270820562
		7.8670250386029972 8.2627228272258435 14.160271270820562
		10.012823836479678 6.12028702524632 14.160271270820562
		11.773835531171294 3.2752106973418016 14.160271270820562
		13.082384738684137 -0.30027290424903441 14.160271270820562
		13.888185545425721 -4.429298379084913 14.160271270820562
		14.160271270820562 -8.6697447014212052 14.160271270820562
		14.160271270820562 -8.6697447014212088 -13.310654994571326
		14.160271270820562 -7.8201284251719718 -14.160271270820562
		13.888185545425721 -4.429298379084913 -14.160271270820562
		13.082384738684137 -0.30027290424903441 -14.160271270820562
		11.773835531171294 3.2752106973418016 -14.160271270820562
		10.012823836479678 6.12028702524632 -14.160271270820562
		7.8670250386029972 8.2627228272258435 -14.160271270820562
		5.4189010406122531 9.571272034738687 -14.160271270820562
		2.7625318213126486 10.37707284148027 -14.160271270820562
		8.670665446962028e-16 10.649158566875109 -14.160271270820562
		-2.7625318213126486 10.37707284148027 -14.160271270820562
		-5.4189010406122531 9.571272034738687 -14.160271270820562
		-7.8670250386029972 8.2627228272258435 -14.160271270820562
		-10.012823836479678 6.12028702524632 -14.160271270820562
		-11.773835531171294 3.2752106973418016 -14.160271270820562
		-13.082384738684137 -0.30027290424903441 -14.160271270820562
		-13.888185545425721 -4.429298379084913 -14.160271270820562
		-14.160271270820562 -7.8201284251719718 -14.160271270820562
		-14.160271270820562 -8.6697447014212035 -13.310654994571326
		-14.160271270820562 -8.6697447014212052 14.160271270820562
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd1_smart_ctl_ofs" -p "lfLegQd1_ikc_gmb";
	rename -uid "7C39DF70-4C7F-E87D-4A44-47837E331CE6";
	setAttr ".t" -type "double3" 2.2456694269245965 -7.3188096976376755 15.022868690217351 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "1E1B00F4-41A8-AE88-CBBF-B392E6341885";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd1_smart_ctlShape1" -p "lfLegQd1_smart_ctl";
	rename -uid "D82D28CA-4346-ECDC-F02E-9FAADD940B04";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.5151170983137936 1.3372292406421557e-16 -6.5151170983138016
		3.6071956453042054e-16 1.8911277281180139e-16 -5.8909975477266947
		-6.5151170983137936 1.337229240642155e-16 -6.5151170983137972
		-5.8909975477267116 -7.718309504668106e-32 -2.2874583715201395e-15
		-6.5151170983137936 -1.3372292406421552e-16 6.5151170983137936
		-5.9010525339349039e-16 -1.8911277281180159e-16 5.8909975477267009
		6.5151170983137936 -1.337229240642155e-16 6.5151170983137972
		5.8909975477267116 -1.1277597664087666e-31 -1.1787147627708926e-15
		6.5151170983137936 1.3372292406421557e-16 -6.5151170983138016
		3.6071956453042054e-16 1.8911277281180139e-16 -5.8909975477266947
		-6.5151170983137936 1.337229240642155e-16 -6.5151170983137972
		;
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "FFDDD6BC-46EE-97FE-10AD-BEB0BD937DCE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -4.2632564145606011e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -38.678440648635174 4.5511212140659172 -84.339355611341176 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "FD61D480-4D43-3F6E-D6D0-5F965EDD485F";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -141.32155935136484 -4.5511212140658914 95.660644388658781 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "D952E9F8-41F9-1253-DA96-4B9F6AC6E265";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 179.14059643317793 -7.460698725481052e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.7760723388854829;
createNode ikEffector -n "effector17" -p "lfLegQd1_legLock";
	rename -uid "3D74CA0C-4E42-3F7E-961E-7BB2912F3918";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "8F5E68E7-4861-3BAB-4F65-9DAFEA5B384B";
	setAttr ".t" -type "double3" 23.614142280088664 109.62577292424098 9.3718736253704247 ;
	setAttr ".r" -type "double3" 4.9707107929418282 -178.56075191342103 -6.8623601498380678e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "2E8C6D04-4979-AA50-AEF4-3884A309FBF9";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "DD8FCA45-4E3A-413F-9E23-BEBFF32D6754";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 1.0658141036401503e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "12F2F89F-48AA-7783-53D2-4F8193BD7880";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 4.6728895193707851
		-4.6728895193707851 0 0
		0 0 -4.6728895193707851
		4.6728895193707851 0 0
		0 0 4.6728895193707851
		0 4.6728895193707851 0
		4.6728895193707851 0 0
		0 0 -4.6728895193707851
		0 4.6728895193707851 0
		-4.6728895193707851 0 0
		0 -4.6728895193707851 0
		4.6728895193707851 0 0
		0 0 4.6728895193707851
		0 -4.6728895193707851 0
		0 0 -4.6728895193707851
		;
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "B42CC390-4554-D978-9020-288564636306";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_settingShape1" -p "lfLegQd1_setting";
	rename -uid "03F5FC00-4DA8-FB50-3E35-6A93A2811F7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.440180847213707 -1.4390403890703308e-32 2.3501312509470283e-16
		-9.2587903636171465 1.1277085863554294e-16 -1.8416878808750987
		-8.7215898257894242 2.2120800701524008e-16 -3.6126009188129524
		-7.8492236874475294 3.2114424209235258e-16 -5.2446833590686648
		-6.6752158909864505 4.0873907827479333e-16 -6.6752158909864505
		-5.2446833590686648 4.8062633875559771e-16 -7.8492236874475294
		-3.6126009188129524 5.3404338069967158e-16 -8.7215898257894242
		-1.8416878808750987 5.6693741897377545e-16 -9.2587903636171465
		5.780443631308019e-16 5.780443631308019e-16 -9.440180847213707
		1.8416878808750987 5.6693741897377545e-16 -9.2587903636171465
		3.6126009188129524 5.3404338069967158e-16 -8.7215898257894242
		5.2446833590686648 4.8062633875559771e-16 -7.8492236874475294
		6.6752158909864505 4.0873907827479333e-16 -6.6752158909864505
		7.8492236874475294 3.2114424209235258e-16 -5.2446833590686648
		8.7215898257894242 2.2120800701524008e-16 -3.6126009188129524
		9.2587903636171465 1.1277085863554294e-16 -1.8416878808750987
		9.440180847213707 6.2522264593788494e-32 -1.021066035108957e-15
		9.0808857866444672 1.1060400350762004e-16 -1.806300346870751
		8.0576983691000788 2.0436955163137198e-16 -3.3376079454932253
		6.5263905454061542 2.6702169034983579e-16 -4.3607949128947121
		4.7200904236068535 2.8902218156540095e-16 -4.7200904236068535
		2.9137900767361025 2.6702169034983579e-16 -4.3607949128947121
		1.3824824781136282 2.0436955163137198e-16 -3.3376079454932253
		0.35929551071214122 1.1060400350762004e-16 -1.806300346870751
		0 6.2522264593788494e-32 -1.021066035108957e-15
		-0.35929551071214122 -1.1060400350762004e-16 1.806300346870751
		-1.3824824781136282 -2.0436955163137198e-16 3.3376079454932253
		-2.9137900767361025 -2.6702169034983579e-16 4.3607949128947121
		-4.7200904236068535 -2.8902218156540095e-16 4.7200904236068535
		-6.5263905454061542 -2.6702169034983579e-16 4.3607949128947121
		-8.0576983691000788 -2.0436955163137198e-16 3.3376079454932253
		-9.0808857866444672 -1.1060400350762004e-16 1.806300346870751
		-9.440180847213707 -1.4390403890703308e-32 2.3501312509470283e-16
		-9.2587903636171465 -1.1277085863554294e-16 1.8416878808750987
		-8.7215898257894242 -2.2120800701524008e-16 3.6126009188129524
		-7.8492236874475294 -3.2114424209235258e-16 5.2446833590686648
		-6.6752158909864505 -4.0873907827479333e-16 6.6752158909864505
		-5.2446833590686648 -4.8062633875559771e-16 7.8492236874475294
		-3.6126009188129524 -5.3404338069967158e-16 8.7215898257894242
		-1.8416878808750987 -5.6693741897377545e-16 9.2587903636171465
		-1.1020796697909055e-15 -5.780443631308019e-16 9.440180847213707
		1.8416878808750987 -5.6693741897377545e-16 9.2587903636171465
		3.6126009188129524 -5.3404338069967158e-16 8.7215898257894242
		5.2446833590686648 -4.8062633875559771e-16 7.8492236874475294
		6.6752158909864505 -4.0873907827479333e-16 6.6752158909864505
		7.8492236874475294 -3.2114424209235258e-16 5.2446833590686648
		8.7215898257894242 -2.2120800701524008e-16 3.6126009188129524
		9.2587903636171465 -1.1277085863554294e-16 1.8416878808750987
		9.440180847213707 6.2522264593788494e-32 -1.021066035108957e-15
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe02_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "EAF67BA5-4159-E1D9-12CC-E0B003A80A77";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe02_4_ctl" -p "lfLegQd1_toe02_4_ctl_ofs";
	rename -uid "E0B735BF-4BD2-FB8A-3903-93946FD0DDD3";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_4_ctlShape1" -p "lfLegQd1_toe02_4_ctl";
	rename -uid "0C606AB3-419A-B976-8435-7D8E90DBF2AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.342254432106992e-14 -2.4431689118676658 -2.4431689118676756
		1.3443315514350264e-14 6.7712698047262575e-15 -2.2091240803975105
		1.3422544321069918e-14 2.4431689118676796 -2.4431689118676738
		1.3372398224545837e-14 2.2091240803975238 -8.5779688932005241e-16
		1.3322252128021758e-14 2.4431689118676796 2.4431689118676729
		1.3301480934741413e-14 7.1278291114477237e-15 2.2091240803975127
		1.3322252128021758e-14 -2.4431689118676658 2.4431689118676738
		1.3372398224545837e-14 -2.2091240803975101 -4.4201803603908472e-16
		1.342254432106992e-14 -2.4431689118676658 -2.4431689118676756
		1.3443315514350264e-14 6.7712698047262575e-15 -2.2091240803975105
		1.3422544321069918e-14 2.4431689118676796 -2.4431689118676738
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe03_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "3EA7E85A-4E7B-3F36-2D7F-84A1B8AA9585";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe03_4_ctl" -p "lfLegQd1_toe03_4_ctl_ofs";
	rename -uid "5AD9FC20-46D2-6181-9BF2-1EA262197856";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_4_ctlShape1" -p "lfLegQd1_toe03_4_ctl";
	rename -uid "9455CA51-4CC0-CFAD-CA23-18ABC5B9C435";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.014609652408084e-17 -2.4431689118676729 -2.4431689118676756
		7.0917289804425527e-17 -1.3526983669890769e-16 -2.2091240803975105
		5.0146096524080809e-17 2.4431689118676729 -2.4431689118676738
		-2.89436606425054e-32 2.2091240803975167 -8.5779688932005241e-16
		-5.0146096524080828e-17 2.4431689118676729 2.4431689118676729
		-7.0917289804425589e-17 2.212894700225589e-16 2.2091240803975127
		-5.0146096524080809e-17 -2.4431689118676729 2.4431689118676738
		-4.2290991240328741e-32 -2.2091240803975167 -4.4201803603908472e-16
		5.014609652408084e-17 -2.4431689118676729 -2.4431689118676756
		7.0917289804425527e-17 -1.3526983669890769e-16 -2.2091240803975105
		5.0146096524080809e-17 2.4431689118676729 -2.4431689118676738
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "CE4D439C-4D84-DDF7-F524-73AA92DAB7E2";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "910FB0AA-4653-8A54-5B7C-B8BF82C9791F";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 155.69550093653302 108.58159012728576 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "19FBFAFF-4F9E-070E-C634-4380F3703BE2";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "B35DB4FC-4823-7F5E-7D42-A6BF84374FE6";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 0 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "EBFC6E88-4D1B-C156-C48B-438E4FE93EC7";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "chest:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".space";
createNode nurbsCurve -n "squRShape1" -p "neckQd0_cog_ctl";
	rename -uid "3008EDC5-4CA0-CE94-9178-8CBD48E638A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		59.67381649353544 59.673816493535512 1.2248064173170808e-15
		3.3039334174035706e-15 126.28561462456273 -1.2478716868550585e-14
		-59.67381649353544 59.673816493535469 1.2248064173170802e-15
		-53.957327446638566 2.0951483916386206e-14 -7.0694199056081426e-31
		-59.67381649353544 -59.67381649353544 -1.2248064173170806e-15
		-5.4049423934357569e-15 -53.957327446638466 -1.7321378466514205e-15
		59.67381649353544 -59.673816493535469 -1.2248064173170802e-15
		53.957327446638566 1.0796184840640239e-14 -1.0329473489722347e-30
		59.67381649353544 59.673816493535512 1.2248064173170808e-15
		3.3039334174035706e-15 126.28561462456273 -1.2478716868550585e-14
		-59.67381649353544 59.673816493535469 1.2248064173170802e-15
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "E3E7207E-4B7D-44DF-12E6-809A5CB98B4A";
	setAttr ".t" -type "double3" 2.4015078120560234e-17 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "410DC43A-479D-3057-F8A6-239ECF07A648";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "945F8C9F-434D-AD75-A6FA-AF97D0774D45";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.102088823943873 27.102088823943877 1.6595243164225061e-15
		2.3469217953726464e-15 38.328141583461694 2.3469217953726464e-15
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		-38.328141583461715 1.9869376279292637e-15 1.2166484030745036e-31
		-27.102088823943873 -27.102088823943873 -1.6595243164225057e-15
		-3.839356156231677e-15 -38.328141583461722 -2.3469217953726484e-15
		27.102088823943873 -27.10208882394387 -1.6595243164225057e-15
		38.328141583461715 -5.2267951349197174e-15 -3.2004889658891948e-31
		27.102088823943873 27.102088823943877 1.6595243164225061e-15
		2.3469217953726464e-15 38.328141583461694 2.3469217953726464e-15
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "9D918308-45DD-9D2C-D3C9-75BDBE654305";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "E14E6DB5-4A47-32EE-98B7-2DBCBFF5F89C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "14E4D3B9-4D5B-9FD4-0FFC-AC88D4BA30FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-8.1997705758740229e-07 5.5097519569280919 -1.1789590312838447
		-9.999772176134994e-07 5.8874144087621225 -2.1656646426270862
		-1.0544042662053035e-06 5.4193481911390808 -2.8867802763182531
		-9.7308707604724344e-07 4.8716809544560471 -3.0956211734727455
		-8.5852108201376158e-07 4.100084674558774 -3.1031803476184954
		3.554842365498739e-07 -4.0761815774114245 -3.1832826494925883
		4.7005023058537848e-07 -4.8477778573086407 -3.1908418236382796
		5.5136742061418974e-07 -5.3954450939917002 -2.992731698841963
		7.483397716370097e-07 -5.8874144087621225 -2.2592317427162381
		8.1973901106380691e-07 -5.5336550540754548 -1.266714039346722
		1.054404266452874e-06 -1.0131098676269668 4.9083533355405002
		1.004098958887946e-06 -0.50784449738345494 5.4191827198707552
		9.4372180946340144e-07 -0.0017917404765652126 5.6287770616906672
		8.2044208547841162e-07 0.50917855271936785 5.4313005764902149
		6.8709051964107929e-07 1.0209362325787603 4.9325890487794526
		-8.1997705758740229e-07 5.5097519569280919 -1.1789590312838447
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "2488E995-48F8-93F5-3AF2-C29D5BD6317F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4561850914083838e-14 155.69550093653302 108.58159012728578 1;
	setAttr ".radi" 4.611483199594101;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "A087C9AB-42D7-C39A-9D06-258A5A49D095";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.4015078120560234e-17 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 23.057415997970505;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "04222E3E-468C-C47B-9242-8893BC0FC789";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.4537835835963278e-14 71.194841398891583 77.739251648408626 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 23.057415997970505;
createNode ikEffector -n "effector23" -p "neckQd0_two_ikj";
	rename -uid "20DDB506-4986-5339-C817-65BBCB5132F6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "0F81EA65-49D0-CA1E-09CB-B69CD0A3F181";
	setAttr ".t" -type "double3" -5.4561850914083831e-14 71.194841398891555 77.739251648408569 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "500C15FF-471E-A425-3EED-94AF95FD5D51";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "F2EE8976-4F14-E2AB-53EA-37A2C78266BC";
	setAttr ".t" -type "double3" -2.7353911981876799e-14 13.81800700582383 42.964381718939975 ;
	setAttr ".r" -type "double3" -41.571996761172095 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "5E28C8C2-42A7-F6E2-A55E-4B8235AD22A7";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "F9F31149-457C-FE07-B203-64A9A1A87CC1";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "06BFBEA5-4896-F792-625A-3597CE8A7D38";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "FD47E361-4C1E-5BBF-F4C5-8FAD8C5EC1FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.102088823943873 27.102088823943877 1.6595243164225061e-15
		2.3469217953726464e-15 38.328141583461694 2.3469217953726464e-15
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		-38.328141583461715 1.9869376279292637e-15 1.2166484030745036e-31
		-27.102088823943873 -27.102088823943873 -1.6595243164225057e-15
		-3.839356156231677e-15 -38.328141583461722 -2.3469217953726484e-15
		27.102088823943873 -27.10208882394387 -1.6595243164225057e-15
		38.328141583461715 -5.2267951349197174e-15 -3.2004889658891948e-31
		27.102088823943873 27.102088823943877 1.6595243164225061e-15
		2.3469217953726464e-15 38.328141583461694 2.3469217953726464e-15
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "0FCE5D10-4F81-6431-307A-618DE1DA2BD7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -41.571996761172095 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 41.571996761172095 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.74812249425615551 -0.66356064801037484 0
		 0 0.66356064801037484 0.74812249425615551 0 2.7183923854086479e-14 169.51350794235685 151.54597184622574 1;
	setAttr ".radi" 4.611483199594101;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "465BDBE5-4C83-94EB-7204-27BF2C8B320D";
	setAttr ".t" -type "double3" -5.4537835835963271e-14 71.194841398891555 77.739251648408597 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "1A3D8DC9-4940-A082-999D-C4A0F5A2619E";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "06A90DBE-43D5-6A1F-8CAC-038116BFA43B";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 2 -at "double";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neckBase:COG:master" 
		-at "enum";
	addAttr -ci true -sn "posSpace" -ln "posSpace" -min 0 -max 2 -en "neckBase:COG:master" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
	setAttr -k on ".space";
	setAttr -k on ".posSpace";
createNode nurbsCurve -n "neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "460FBC2F-4CC1-9EB1-0DD2-62BCFE3E38CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.102088823943873 27.102088823943877 1.6595243164225061e-15
		2.3469217953726464e-15 76.429202154409353 2.3469217953726464e-15
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		-38.328141583461715 1.9869376279292637e-15 1.2166484030745036e-31
		-27.102088823943873 -27.102088823943873 -1.6595243164225057e-15
		-3.839356156231677e-15 -38.328141583461722 -2.3469217953726484e-15
		27.102088823943873 -27.10208882394387 -1.6595243164225057e-15
		38.328141583461715 -5.2267951349197174e-15 -3.2004889658891948e-31
		27.102088823943873 27.102088823943877 1.6595243164225061e-15
		2.3469217953726464e-15 76.429202154409353 2.3469217953726464e-15
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "D0F15796-45C5-F508-E6FE-6F851812D079";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "BCC208E3-4CE0-9910-5F24-77911BB4A14E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "F28477B7-4E0A-E7FD-022B-65B48EC35312";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-8.1997705758740229e-07 -5.5097519569280919 1.1789590312838454
		-9.999772176134994e-07 -5.8874144087621225 2.1656646426270871
		-1.0544042662053035e-06 -5.4193481911390808 2.8867802763182535
		-9.7308707604724344e-07 -4.8716809544560471 3.0956211734727459
		-8.5852108201376158e-07 -4.100084674558774 3.1031803476184958
		3.554842365498739e-07 4.0761815774114245 3.1832826494925879
		4.7005023058537848e-07 4.8477778573086407 3.1908418236382787
		5.5136742061418974e-07 5.3954450939917002 2.9927316988419626
		7.483397716370097e-07 5.8874144087621225 2.2592317427162372
		8.1973901106380691e-07 5.5336550540754548 1.2667140393467211
		1.054404266452874e-06 1.0131098676269661 -4.9083533355405002
		1.004098958887946e-06 0.50784449738345439 -5.4191827198707552
		9.4372180946340144e-07 0.0017917404765645233 -5.6287770616906672
		8.2044208547841162e-07 -0.5091785527193684 -5.4313005764902149
		6.8709051964107929e-07 -1.0209362325787608 -4.9325890487794526
		-8.1997705758740229e-07 -5.5097519569280919 1.1789590312838454
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "AC19A251-47FC-CB84-1377-8290860869B2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 226.89034233542458 186.32084177569436 1;
	setAttr ".radi" 4.611483199594101;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "33721290-452D-0662-E542-70B322227EB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "FFCA6742-411B-C488-F18B-008F400491B4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "3FFFD171-4437-C803-5EB7-87864FC0715F";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "AE2C967F-4689-9CD5-840A-61A424543D7C";
	setAttr ".t" -type "double3" 0 2.5244898787833847 6.8961142958891912 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "EA74CC8F-44B9-8A31-87D4-C89CD534B4A2";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "9B755DA4-46EF-64B3-9B0F-46892177826A";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "volumeScale" -ln "volumeScale" -dv 1 -at "double";
	addAttr -ci true -sn "volumeGraph" -ln "volumeGraph" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".stretchy";
	setAttr -k on ".moduleScale";
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "neckQd0_settingShape1" -p "neckQd0_setting";
	rename -uid "D89FF366-426F-DAC1-8AA4-CFAE6418764A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-8.646530999238939 11.528707998985253 2.1525522701814879e-16
		-8.4803902796098747 11.528707998985253 -1.6868544798704024
		-7.9883529788089911 11.528707998985253 -3.3088842616415333
		-7.1893279410539268 11.528707998985253 -4.8037551376745586
		-6.1140207017392232 11.528707998985253 -6.1140207017392232
		-4.8037551376745586 11.528707998985253 -7.1893279410539268
		-3.3088842616415333 11.528707998985253 -7.9883529788089911
		-1.6868544798704024 11.528707998985253 -8.4803902796098747
		5.2944732581272567e-16 11.528707998985253 -8.646530999238939
		1.6868544798704024 11.528707998985253 -8.4803902796098747
		3.3088842616415333 11.528707998985253 -7.9883529788089911
		4.8037551376745586 11.528707998985253 -7.1893279410539268
		6.1140207017392232 11.528707998985253 -6.1140207017392232
		7.1893279410539268 11.528707998985253 -4.8037551376745586
		7.9883529788089911 11.528707998985253 -3.3088842616415333
		8.4803902796098747 11.528707998985253 -1.6868544798704024
		8.646530999238939 11.528707998985253 -9.3522351613056231e-16
		8.3174424013226922 11.528707998985253 -1.6544420277460847
		7.3802758504890811 11.528707998985253 -3.0570103508696116
		5.9777073212161911 11.528707998985253 -3.9941764894044955
		4.3232654996194695 11.528707998985253 -4.3232654996194695
		2.668823471873385 11.528707998985253 -3.9941764894044955
		1.2662551487498581 11.528707998985253 -3.0570103508696116
		0.32908901021497422 11.528707998985253 -1.6544420277460847
		0 11.528707998985253 -9.3522351613056231e-16
		-0.32908901021497422 11.528707998985253 1.6544420277460847
		-1.2662551487498581 11.528707998985253 3.0570103508696116
		-2.668823471873385 11.528707998985253 3.9941764894044955
		-4.3232654996194695 11.528707998985253 4.3232654996194695
		-5.9777073212161911 11.528707998985253 3.9941764894044955
		-7.3802758504890811 11.528707998985253 3.0570103508696116
		-8.3174424013226922 11.528707998985253 1.6544420277460847
		-8.646530999238939 11.528707998985253 2.1525522701814879e-16
		-8.4803902796098747 11.528707998985253 1.6868544798704024
		-7.9883529788089911 11.528707998985253 3.3088842616415333
		-7.1893279410539268 11.528707998985253 4.8037551376745586
		-6.1140207017392232 11.528707998985253 6.1140207017392232
		-4.8037551376745586 11.528707998985253 7.1893279410539268
		-3.3088842616415333 11.528707998985253 7.9883529788089911
		-1.6868544798704024 11.528707998985253 8.4803902796098747
		-1.0094262157372373e-15 11.528707998985253 8.646530999238939
		1.6868544798704024 11.528707998985253 8.4803902796098747
		3.3088842616415333 11.528707998985253 7.9883529788089911
		4.8037551376745586 11.528707998985253 7.1893279410539268
		6.1140207017392232 11.528707998985253 6.1140207017392232
		7.1893279410539268 11.528707998985253 4.8037551376745586
		7.9883529788089911 11.528707998985253 3.3088842616415333
		8.4803902796098747 11.528707998985253 1.6868544798704024
		8.646530999238939 11.528707998985253 -9.3522351613056231e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "DA78EE90-4B04-8E4B-A48A-9585B1FD3E22";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "4DE52458-4BED-F4E2-A86B-7FB0B8DD883C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "4BBBA287-405F-3583-9EF2-46BD383C92AB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "E8EF117B-495D-7C14-EDF2-FD8D6E2D66D1";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_upr_fkcShape1" -p "rtLegQd0_upr_fkc";
	rename -uid "E9F1FDFF-4657-2BC5-2A40-27BBE579FA6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "D221EECA-4843-8CB9-516E-2790C3D15A08";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "6314C9EA-437E-D7CA-4C93-0A97DF2645BE";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "47AB35F1-4306-BC6A-32DD-C496B4809911";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "E614940E-4843-883C-4EE6-848C90C1E460";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "C90FEA5E-4B70-3697-2F00-69BB016B1F7D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_palm_fkcShape1" -p "rtLegQd0_palm_fkc";
	rename -uid "4D778A03-4BB3-0FF0-3317-E6B2B67FE2A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "604B831B-4252-F7EB-C6EB-9AAA7BBBFD24";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "C1FC8A7A-44C9-CD0D-090F-3B901DBF1E98";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "298D5E38-4C1E-ECD6-25A9-AA9A849B7173";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		-2.2265319021901826e-31 16.993998449796134 -6.5987235106874633e-15
		-3.8575591754004709e-16 18.794421313536287 18.794421313536287
		-5.4554125035081321e-16 1.7023004474438037e-15 16.993998449796102
		-3.8575591754004694e-16 -18.794421313536287 18.794421313536297
		-3.2532941266439169e-31 -16.993998449796134 -3.4002860617401205e-15
		3.8575591754004719e-16 -18.794421313536287 -18.794421313536308
		5.4554125035081262e-16 -1.0405822903128938e-15 -16.993998449796088
		3.8575591754004694e-16 18.794421313536287 -18.794421313536297
		;
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "AD7AA819-4484-4461-7634-22A5C1DF5ECE";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 2.4868995751603507e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 38.534487531581881 0 -90.000000000000028 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "AF6D11FB-45ED-2090-424D-4F82636A5297";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "B0E8701B-4F81-D579-BB50-4A98E3F6D592";
	setAttr ".t" -type "double3" 0 -1.0547118733938987e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "92B3E345-4FB4-B54B-D7BD-74A274C269B6";
	setAttr ".t" -type "double3" 0 2.9420910152566648e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "01DDF395-4FA9-DB7E-CD4D-B2A0781B38F2";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "6FA36057-44DF-5CB6-7780-129CD520B182";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.3972106567681433 36.309961062593928 9.3972106567681539
		-5.2029114515644691e-16 36.309961062593928 8.4969992248980439
		9.3972106567681433 36.309961062593928 9.3972106567681486
		8.496999224898067 36.309961062593928 3.2993617553437317e-15
		9.3972106567681433 36.309961062593928 -9.3972106567681433
		8.5115022372190185e-16 36.309961062593928 -8.496999224898051
		-9.3972106567681433 36.309961062593928 -9.3972106567681486
		-8.496999224898067 36.309961062593928 1.7001430308700602e-15
		-9.3972106567681433 36.309961062593928 9.3972106567681539
		-5.2029114515644691e-16 36.309961062593928 8.4969992248980439
		9.3972106567681433 36.309961062593928 9.3972106567681486
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "9CFA7ECC-4B65-53CC-676A-E6B09672D99B";
	setAttr ".t" -type "double3" -16.151868606524889 13.107840017779736 -101.71636321305479 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "11F12E13-461B-FCD9-67DC-5B88726B8D60";
	setAttr ".t" -type "double3" -6.9910681688156728e-07 -9.0345997630489148 7.195325679285304 ;
	setAttr ".r" -type "double3" 0 63.450299261830345 90.000000000000057 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "7EFF5D1B-44F0-D998-A535-9DA8138FBF9A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "36A61836-4584-8DC1-52E5-B79E165AD4AC";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "4824771D-4A89-6C15-E552-2A95499F390B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.928779587700236e-16 -9.3972106567681433 -9.3972106567681539
		2.7277062517540631e-16 -5.2029114515644691e-16 -8.4969992248980439
		1.9287795877002347e-16 9.3972106567681433 -9.3972106567681486
		-1.1132659510950913e-31 8.496999224898067 -3.2993617553437317e-15
		-1.9287795877002355e-16 9.3972106567681433 9.3972106567681433
		-2.727706251754066e-16 8.5115022372190185e-16 8.496999224898051
		-1.9287795877002347e-16 -9.3972106567681433 9.3972106567681486
		-1.6266470633219585e-31 -8.496999224898067 -1.7001430308700602e-15
		1.928779587700236e-16 -9.3972106567681433 -9.3972106567681539
		2.7277062517540631e-16 -5.2029114515644691e-16 -8.4969992248980439
		1.9287795877002347e-16 9.3972106567681433 -9.3972106567681486
		;
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "CCEE06D5-49FC-2E95-BFF0-3681C663D039";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1148823042488942 -5.3645976549887564e-13 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176279 2.4825340641505787e-16 0.44697394836510046 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "5D9CA277-4C4A-0256-2916-D8A35E6E18A8";
	setAttr ".t" -type "double3" 5.6843418860808015e-14 3.5527136788005009e-15 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999956 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "161D344F-40A1-B54C-C014-D39770F79F54";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 0.99999999999999967 ;
createNode ikHandle -n "rtLegQd0_toe02_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "7FF28A7F-48F0-439B-B747-78B3CDE4AB54";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.1454666062418255e-09 -2.318964182495364 4.5697561290580779e-09 ;
	setAttr ".r" -type "double3" -1.4272654841689323 -24.902593744010499 -1.9910527465457164 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176279 4.975709886203824e-17 0.44697394836510035 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe03_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "66F3784B-4FE8-F42A-0A36-FF8D7942B3B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.4635994577693054e-08 3.860355820343834 -1.2309698149692849e-08 ;
	setAttr ".r" -type "double3" -4.1024362149898632 -24.805184378238568 -5.7599828564106819 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176279 4.975709886203824e-17 0.44697394836510035 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "6EB0ADDE-4ABF-A3F8-3F58-0BA7524C7C98";
	setAttr ".t" -type "double3" -9.1454808170965407e-09 -2.3189641824953604 4.5697348127760051e-09 ;
	setAttr ".r" -type "double3" -2.5931193958752243 -2.5467071045496801 -5.07993631794817 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs1" -p "rtLegQd0_toe02_3_ikc_ofs";
	rename -uid "DA6888B3-4CAB-A50A-764E-3184EA0ACA72";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_3_ikc" -p "rtLegQd0_toe02_3_ikc_ofs1";
	rename -uid "0C866AF9-4C1F-18E0-B074-358AB89E3004";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_3_ikcShape1" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "54DBCA3C-4692-733E-802C-53A3F92D0354";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -3.5527136788005009e-15 8.0624309589869381e-16
		0 -3.5527136788005009e-15 6.1028266285751913
		-0.70474085921696783 -3.5527136788005009e-15 6.1028266285751913
		-0.70474085921696783 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921696783 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921696783 -3.5527136788005009e-15 6.1028266285751913
		0 -3.5527136788005009e-15 6.1028266285751913
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe02_3_1_ikj_ikh" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "460AACC5-4B3A-79D6-76B7-628DFCAACC56";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.8660226450928974 -0.28747024394299103 0.3188122855451212 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.87029252098874677 -0.10112074156302839 0.48204307228378951 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "F1314659-4621-5F98-535B-488413E53FD5";
	setAttr ".t" -type "double3" 2.4635994577693054e-08 3.8603558203438411 -1.2309705255120207e-08 ;
	setAttr ".r" -type "double3" -1.9698176585234082 -2.5509581642132955 -3.8553212723236889 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs1" -p "rtLegQd0_toe03_3_ikc_ofs";
	rename -uid "6C0D4DB4-4FFA-16A7-D0C5-BB974183ADEB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd0_toe03_3_ikc" -p "rtLegQd0_toe03_3_ikc_ofs1";
	rename -uid "FA55986E-4180-C9FC-4261-16A1A1564FF2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_3_ikcShape1" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "6B835D9A-4CA6-39F0-DD48-9EA8318E3304";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -3.5527136788005009e-15 8.0624309589869381e-16
		0 -3.5527136788005009e-15 6.1028266285751913
		-0.70474085921696783 -3.5527136788005009e-15 6.1028266285751913
		-0.70474085921696783 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921696783 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921696783 -3.5527136788005009e-15 6.1028266285751913
		0 -3.5527136788005009e-15 6.1028266285751913
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe03_3_1_ikj_ikh" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "16A45284-400A-CD72-D4EA-5C8F61180FEE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.864777244735194 -0.21840253928637665 0.32463155913622188 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.87174428818423844 -0.076825437139900449 0.48390055613361233 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "5385C9CC-449B-0B71-ECA9-55B58D325A46";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "01646E63-4D1F-01E1-3443-A08A95762B2C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "AC938251-4ABC-46BB-D9D1-3C82812F8BAA";
	setAttr ".t" -type "double3" -0.64605334448920892 -57.699592783716419 -3.7007050737356764 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "F22CDB4F-448D-B0A3-065B-11B16F1C60DB";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "146A7507-4EA8-F2CA-EAB4-F5AE5B2E10A0";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 9.7626092464511203 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "B8DF0D18-49DD-8D8A-2897-AE83E92963EB";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "A277ABDD-4FEC-39A6-2936-A1A5EF674A7E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "8EDABEDC-43AE-BDAA-E3BB-A0970297EC64";
	setAttr ".t" -type "double3" -6.4789536574601776 0 -5.2101508852951497 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "2C338617-48CB-1408-5E4F-5EB4BD236ED8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "A5616974-4957-BDA7-1AC1-64BC93C3D70C";
	setAttr ".t" -type "double3" 10.96317448284562 0 0.13492987608006501 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "83553147-4197-3131-1139-538BBC1DB2E4";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "60A6AEB5-449B-B843-5A5A-5E8ED7EB8DA0";
	setAttr ".t" -type "double3" -4.4842208253854672 4.0732402547308588 -2.031501157543758 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "E582B453-499A-7809-E0D9-B8A769475274";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape3" -p "rtLegQd0_ballG_ikc";
	rename -uid "AD461725-4510-A962-0454-4C9A7EBCAF22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-1.1244434667727538e-16 16.318624953409849 9.9262758140882192e-16
		-1.0861289513211103e-16 16.381197527682104 0.4752837755514121
		-9.7379659876341891e-17 16.564650250278699 0.91817771680214677
		-7.9510154316361978e-17 16.856481303233519 1.2984993723462674
		-5.6222173338637691e-17 17.236802742353404 1.5903305695839083
		-2.9102736811096271e-17 17.67969675574555 1.7737831478976795
		3.4433344095271897e-32 18.154980531296964 1.8363554336042935
		2.9102736811096271e-17 18.630264306848375 1.7737831478976795
		5.6222173338637691e-17 19.07315832024052 1.5903305695839083
		7.9510154316361978e-17 19.453479759360409 1.2984993723462674
		9.7379659876341891e-17 19.745311966577802 0.91817771680214677
		1.0861289513211103e-16 19.92876353491182 0.4752837755514121
		1.1244434667727538e-16 19.991336109184079 5.4262814471249663e-16
		1.0861289513211103e-16 19.92876353491182 -0.4752837755514121
		9.7379659876341891e-17 19.745311966577802 -0.91817771680214677
		7.9510154316361978e-17 19.453479759360409 -1.2984993723462674
		5.6222173338637691e-17 19.07315832024052 -1.5903305695839083
		2.9102736811096271e-17 18.630264306848375 -1.7737831478976795
		-8.4127215774348806e-32 18.154980531296964 -1.8363554336042935
		-2.9102736811096271e-17 17.67969675574555 -1.7737831478976795
		-5.6222173338637691e-17 17.236802742353404 -1.5903305695839083
		-7.9510154316361978e-17 16.856481303233519 -1.2984993723462674
		-9.7379659876341891e-17 16.564650250278699 -0.91817771680214677
		-1.0861289513211103e-16 16.381197527682104 -0.4752837755514121
		-1.1244434667727538e-16 16.318624953409849 9.9262758140882192e-16
		0 0 0
		;
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "D2894C53-4F5C-C8CA-710F-9FA39E772EF8";
	setAttr ".t" -type "double3" 1.6799308610870867e-08 9.0345970031304823 -7.1953261104890913 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "38D40394-4529-75B5-9CA4-EAB82735FC54";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 164.85963298157333 0 88.611857107333236 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "CD6F9F99-4A23-C2AC-8ED1-0BA38286856A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "B74F06C9-43E7-C27A-6FDD-D59DE2D3A13C";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "C2FCBE61-4E5F-6DE6-0385-028941707D99";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		10.839067918209544 18.154980531296964 0
		10.063806685322501 22.323545569402409 0
		7.7025045831051271 25.857485114402092 0
		4.1685650381054442 28.218787216619464 0
		0 28.993794279781611 0
		-4.1685650381054442 28.218787216619464 0
		-7.7025045831051271 25.857485114402092 0
		-10.063806685322501 22.323545569402409 0
		-10.839067918209544 18.154980017749939 0
		-10.063806685322501 13.986415493191519 0
		-7.7025045831051271 10.452475948191836 0
		-4.1685650381054442 8.0911738459744633 0
		4.3284813670181585e-07 7.3161667828123154 -0.073701958227833569
		4.1685650381054442 8.0911738459744633 0
		7.7025045831051271 10.452475948191836 0
		10.063806685322501 13.986415493191519 0
		10.839067918209544 18.154980531296964 0
		10.013989419242796 18.183185818288646 -4.1478393125381734
		7.6643791243706598 18.207097525047534 -7.6642120985514417
		4.1479337184359917 18.223074779194366 -10.013771559478601
		4.3284813670181585e-07 18.228685394321655 -10.83882827246893
		-4.1479337184359917 18.223074779194366 -10.013771559478601
		-7.6643791243706598 18.207097525047534 -7.6642120985514417
		-10.013989419242796 18.183185818288646 -4.1478393125381734
		-10.839067918209544 18.154980017749939 0
		-10.013989419242796 18.126774227626381 4.1478247885538941
		-7.6643791243706598 18.102862520867493 7.6642048365593007
		-4.1479337184359917 18.08688526672066 10.01375703549432
		4.3284813670181585e-07 18.081274942073062 10.838813748484649
		4.1479337184359917 18.08688526672066 10.01375703549432
		7.6643791243706598 18.102862520867493 7.6642048365593007
		10.013989419242796 18.126774227626381 4.1478247885538941
		10.839067918209544 18.154980531296964 0
		10.013989419242796 18.183185818288646 -4.1478393125381734
		7.6643791243706598 18.207097525047534 -7.6642120985514417
		4.1479337184359917 18.223074779194366 -10.013771559478601
		4.3284813670181585e-07 18.228685394321655 -10.83882827246893
		4.3284813670181585e-07 22.370908282138828 -9.9855587200150904
		4.3284813670181585e-07 25.87129742345218 -7.6120927809633878
		4.3284813670181585e-07 28.196943144262651 -4.0797436122423418
		0 28.993794279781611 0
		4.3284813670181585e-07 28.140531989319918 4.2159277508418649
		4.3284813670181585e-07 25.767066050268213 7.7163096301630771
		4.3284813670181585e-07 22.234724143539307 10.041962612965687
		4.3284813670181585e-07 18.081274942073062 10.838813748484649
		4.3284813670181585e-07 13.9390527804551 9.985544196030812
		4.3284813670181585e-07 10.438663639141748 7.6120782569791077
		4.3284813670181585e-07 8.1130179183312769 4.0797290882580617
		4.3284813670181585e-07 7.3161667828123154 -0.073701958227833569
		4.3284813670181585e-07 8.1694290732740118 -4.215942274826145
		4.3284813670181585e-07 10.542895012325717 -7.7163241541473555
		4.3284813670181585e-07 14.075236919054621 -10.041977136949967
		4.3284813670181585e-07 18.228685394321655 -10.83882827246893
		;
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "99A2AE91-4382-CD90-5D20-67AD73E6CAD8";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "3293E1C6-431A-99A5-FF41-B38F1F81A00A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "B02A0E79-403D-F0AA-2174-1CB4EE0C12B3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.64605332768992518 44.591755525855078 8.2401441045324759 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "EE3FA423-4722-2082-A8C7-47B046863115";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "81021D8F-458A-FD6C-FDC7-8299786C86BB";
	setAttr ".t" -type "double3" 0.64605332768992163 44.591755525855064 8.2401441045324759 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "21392F89-4271-2E5F-0A39-09AF645A6B66";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "87464A8B-4863-F188-2DBD-CEB977D6817D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "7BE2BE2F-4710-C63F-200E-D0A4D4A2C651";
	setAttr ".t" -type "double3" -4.4842208253854672 4.0732402547308588 -2.031501157543758 ;
	setAttr ".r" -type "double3" 0 63.450299261830345 90.000000000000085 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "D5221F43-49CF-7274-3465-289119CCA4BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 -24.915811730248475 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176301 1.492712965861144e-16 0.44697394836510063 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "0F24815E-4411-369E-7008-BE962D236535";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -3.5527136788005009e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "AC4DA09C-4F57-4909-4D16-918986008F38";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "diamondShape10" -p "rtLegQd0_inRollG_ctl";
	rename -uid "B0083B79-4B34-9E8B-8F4B-F4BEC8E5612D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode nurbsCurve -n "diamondShape11" -p "rtLegQd0_outRollG_ctl";
	rename -uid "1E5A1C6C-4275-6BAF-507E-D8A3BA921BED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode nurbsCurve -n "diamondShape9" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "4ED904E6-49E1-A77D-8AC4-EBA5EFCD5CCC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode nurbsCurve -n "diamondShape12" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "62300BA9-4333-23C5-6148-928DB8A5CB44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1233394203739997
		-1.1233394203739997 0 0
		0 0 -1.1233394203739997
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 -1.1233394203739997
		0 1.1233394203739997 0
		-1.1233394203739997 0 0
		0 -1.1233394203739997 0
		1.1233394203739997 0 0
		0 0 1.1233394203739997
		0 -1.1233394203739997 0
		0 0 -1.1233394203739997
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "46D0512E-4476-FF73-D0BA-61933FE1ABEF";
	setAttr ".t" -type "double3" -16.151869288832437 13.107837257861341 -101.71636364425856 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "781D13C7-46C2-7FDB-018F-42B2BFF37A21";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "0DBEA631-400F-0932-FDBC-79BA3841575A";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_ikcShape1" -p "rtLegQd0_ikc";
	rename -uid "DDCD97A4-4F93-5345-4526-60A695BBEE8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		13.61623539847271 -13.107837257861338 13.616235398472725
		13.354603253327449 -13.107837257861338 16.27263114700817
		12.579761194504602 -13.107837257861338 18.826943096651299
		11.321485967788298 -13.107837257861338 21.181010471651966
		9.6281323844923676 -13.107837257861338 23.244367782965089
		7.5647750731792405 -13.107837257861338 24.937721366261027
		5.210707698178572 -13.107837257861338 26.195996592977327
		2.6563957485354446 -13.107837257861338 26.970838651800179
		-1.5896068572638501e-15 -13.107837257861338 27.232470796945435
		-2.6563957485354477 -13.107837257861338 26.970838651800179
		-5.2107076981785756 -13.107837257861338 26.195996592977327
		-7.5647750731792449 -13.107837257861338 24.937721366261027
		-9.628132384492373 -13.107837257861338 23.244367782965092
		-11.321485967788306 -13.107837257861338 21.18101047165197
		-12.579761194504609 -13.107837257861338 18.826943096651299
		-13.354603253327459 -13.107837257861338 16.27263114700817
		-13.616235398472719 -13.107837257861338 13.616235398472719
		-13.354603173024143 -9.0303083592095934 13.616235398472723
		-12.57976113369951 -5.0599195328662994 13.616235398472723
		-11.321486225033349 -1.6218055694027509 13.616235398472723
		-9.6281323820320832 1.113963277568315 13.616235398472723
		-7.5647749087994702 3.1740869607905537 13.616235398472723
		-5.2107075322808791 4.4323618694567166 13.616235398472723
		-2.6563956901218937 5.2072039087813486 13.616235398472723
		8.337539551980434e-16 5.4688361342299245 13.616235398472723
		2.6563956901218937 5.2072039087813486 13.616235398472723
		5.2107075322808791 4.4323618694567166 13.616235398472723
		7.5647749087994702 3.1740869607905537 13.616235398472723
		9.6281323820320832 1.113963277568315 13.616235398472723
		11.321486225033349 -1.6218055694027509 13.616235398472723
		12.57976113369951 -5.0599195328662994 13.616235398472723
		13.354603173024143 -9.0303083592095934 13.616235398472723
		13.616235398472723 -13.107837257861338 13.616235398472723
		13.616235398472723 -13.107837257861341 -12.799261274564357
		13.616235398472723 -12.290863133952975 -13.616235398472723
		13.354603173024143 -9.0303083592095934 -13.616235398472723
		12.57976113369951 -5.0599195328662994 -13.616235398472723
		11.321486225033349 -1.6218055694027509 -13.616235398472723
		9.6281323820320832 1.113963277568315 -13.616235398472723
		7.5647749087994702 3.1740869607905537 -13.616235398472723
		5.2107075322808791 4.4323618694567166 -13.616235398472723
		2.6563956901218937 5.2072039087813486 -13.616235398472723
		8.337539551980434e-16 5.4688361342299245 -13.616235398472723
		-2.6563956901218937 5.2072039087813486 -13.616235398472723
		-5.2107075322808791 4.4323618694567166 -13.616235398472723
		-7.5647749087994702 3.1740869607905537 -13.616235398472723
		-9.6281323820320832 1.113963277568315 -13.616235398472723
		-11.321486225033349 -1.6218055694027509 -13.616235398472723
		-12.57976113369951 -5.0599195328662994 -13.616235398472723
		-13.354603173024143 -9.0303083592095934 -13.616235398472723
		-13.616235398472723 -12.290863133952975 -13.616235398472723
		-13.616235398472723 -13.107837257861336 -12.799261274564357
		-13.616235398472723 -13.107837257861338 13.616235398472723
		;
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "EAD646E8-4B95-E4B6-0244-16A2E3287FE3";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShape" -p "rtLegQd0_ikc_gmb";
	rename -uid "D726D522-4321-D607-B72A-CFB3BC664937";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.7232470796945414 1.857667314624635 
		-1.3616235063913216 -2.6709206506654883 1.857667314624635 -1.8929026560984106 -2.515952238900919 
		1.857667314624635 -2.4037650460270363 -2.2642971935576597 1.857667314624635 -2.8745785210271677 
		-1.925626476898473 1.857667314624635 -3.2872499832897937 -1.5129550146358479 1.857667314624635 
		-3.6259206999489813 -1.0421415396357139 1.857667314624635 -3.8775757452922406 -0.531279149707089 
		1.857667314624635 -4.0325441570568117 3.1792137145276999e-16 1.857667314624635 -4.084870586085863 
		0.53127914970708945 1.857667314624635 -4.0325441570568117 1.0421415396357148 1.857667314624635 
		-3.8775757452922406 1.5129550146358488 1.857667314624635 -3.6259206999489813 1.9256264768984739 
		1.857667314624635 -3.2872499832897937 2.2642971935576615 1.857667314624635 -2.8745785210271713 
		2.5159522389009208 1.857667314624635 -2.4037650460270363 2.6709206506654919 1.857667314624635 
		-1.8929026560984106 2.7232470796945432 1.857667314624635 -1.3616235063913198 2.670920634604828 
		1.0421615348942872 -1.3616235063913198 2.5159522267399019 0.24808376962562839 -1.3616235063913198 
		2.2642972450066701 -0.43953902306708148 -1.3616235063913198 1.9256264764064159 -0.98669279246129449 
		-1.3616235063913198 1.5129549817598935 -1.3987175291057419 -1.3616235063913198 1.0421415064561756 
		-1.6503725108389746 -1.3616235063913198 0.53127913802437865 -1.8053409187039007 -1.3616235063913198 
		-1.6675079103960868e-16 -1.8576673637936159 -1.3616235063913198 -0.53127913802437865 
		-1.8053409187039007 -1.3616235063913198 -1.0421415064561756 -1.6503725108389746 -1.3616235063913198 
		-1.5129549817598935 -1.3987175291057419 -1.3616235063913198 -1.9256264764064159 -0.98669279246129449 
		-1.3616235063913198 -2.2642972450066701 -0.43953902306708148 -1.3616235063913198 
		-2.5159522267399019 0.24808376962562839 -1.3616235063913198 -2.670920634604828 1.0421615348942872 
		-1.3616235063913198 -2.7232470796945432 1.857667314624635 -1.3616235063913198 -2.7232470796945432 
		1.8576673146246367 3.921475828216094 -2.7232470796945432 1.6942724898429624 4.0848706529977665 
		-2.670920634604828 1.0421615348942872 4.0848706529977665 -2.5159522267399019 0.24808376962562839 
		4.0848706529977665 -2.2642972450066701 -0.43953902306708148 4.0848706529977665 -1.9256264764064159 
		-0.98669279246129449 4.0848706529977665 -1.5129549817598935 -1.3987175291057419 4.0848706529977665 
		-1.0421415064561756 -1.6503725108389746 4.0848706529977665 -0.53127913802437865 -1.8053409187039007 
		4.0848706529977665 -1.6675079103960868e-16 -1.8576673637936159 4.0848706529977665 
		0.53127913802437865 -1.8053409187039007 4.0848706529977665 1.0421415064561756 -1.6503725108389746 
		4.0848706529977665 1.5129549817598935 -1.3987175291057419 4.0848706529977665 1.9256264764064159 
		-0.98669279246129449 4.0848706529977665 2.2642972450066701 -0.43953902306708148 4.0848706529977665 
		2.5159522267399019 0.24808376962562839 4.0848706529977665 2.670920634604828 1.0421615348942872 
		4.0848706529977665 2.7232470796945432 1.6942724898429624 4.0848706529977665 2.7232470796945432 
		1.857667314624635 3.921475828216094 2.7232470796945432 1.857667314624635 -1.3616235063913198;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "F6759E42-40D9-3B41-EF5F-2F815FE59E11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		13.61623539847271 -13.107837257861338 13.616235398472725
		13.354603253327449 -13.107837257861338 16.27263114700817
		12.579761194504602 -13.107837257861338 18.826943096651299
		11.321485967788298 -13.107837257861338 21.181010471651966
		9.6281323844923676 -13.107837257861338 23.244367782965089
		7.5647750731792405 -13.107837257861338 24.937721366261027
		5.210707698178572 -13.107837257861338 26.195996592977327
		2.6563957485354446 -13.107837257861338 26.970838651800179
		-1.5896068572638501e-15 -13.107837257861338 27.232470796945435
		-2.6563957485354477 -13.107837257861338 26.970838651800179
		-5.2107076981785756 -13.107837257861338 26.195996592977327
		-7.5647750731792449 -13.107837257861338 24.937721366261027
		-9.628132384492373 -13.107837257861338 23.244367782965092
		-11.321485967788306 -13.107837257861338 21.18101047165197
		-12.579761194504609 -13.107837257861338 18.826943096651299
		-13.354603253327459 -13.107837257861338 16.27263114700817
		-13.616235398472719 -13.107837257861338 13.616235398472719
		-13.354603173024143 -9.0303083592095934 13.616235398472723
		-12.57976113369951 -5.0599195328662994 13.616235398472723
		-11.321486225033349 -1.6218055694027509 13.616235398472723
		-9.6281323820320832 1.113963277568315 13.616235398472723
		-7.5647749087994702 3.1740869607905537 13.616235398472723
		-5.2107075322808791 4.4323618694567166 13.616235398472723
		-2.6563956901218937 5.2072039087813486 13.616235398472723
		8.337539551980434e-16 5.4688361342299245 13.616235398472723
		2.6563956901218937 5.2072039087813486 13.616235398472723
		5.2107075322808791 4.4323618694567166 13.616235398472723
		7.5647749087994702 3.1740869607905537 13.616235398472723
		9.6281323820320832 1.113963277568315 13.616235398472723
		11.321486225033349 -1.6218055694027509 13.616235398472723
		12.57976113369951 -5.0599195328662994 13.616235398472723
		13.354603173024143 -9.0303083592095934 13.616235398472723
		13.616235398472723 -13.107837257861338 13.616235398472723
		13.616235398472723 -13.107837257861341 -12.799261274564357
		13.616235398472723 -12.290863133952975 -13.616235398472723
		13.354603173024143 -9.0303083592095934 -13.616235398472723
		12.57976113369951 -5.0599195328662994 -13.616235398472723
		11.321486225033349 -1.6218055694027509 -13.616235398472723
		9.6281323820320832 1.113963277568315 -13.616235398472723
		7.5647749087994702 3.1740869607905537 -13.616235398472723
		5.2107075322808791 4.4323618694567166 -13.616235398472723
		2.6563956901218937 5.2072039087813486 -13.616235398472723
		8.337539551980434e-16 5.4688361342299245 -13.616235398472723
		-2.6563956901218937 5.2072039087813486 -13.616235398472723
		-5.2107075322808791 4.4323618694567166 -13.616235398472723
		-7.5647749087994702 3.1740869607905537 -13.616235398472723
		-9.6281323820320832 1.113963277568315 -13.616235398472723
		-11.321486225033349 -1.6218055694027509 -13.616235398472723
		-12.57976113369951 -5.0599195328662994 -13.616235398472723
		-13.354603173024143 -9.0303083592095934 -13.616235398472723
		-13.616235398472723 -12.290863133952975 -13.616235398472723
		-13.616235398472723 -13.107837257861336 -12.799261274564357
		-13.616235398472723 -13.107837257861338 13.616235398472723
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd0_smart_ctl_ofs" -p "rtLegQd0_ikc_gmb";
	rename -uid "EA64A7E1-45CB-FF67-B357-40BB14F2A23F";
	setAttr ".t" -type "double3" -1.6799280189161436e-08 -13.107837257861341 14.302048277247934 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "3EB32178-402A-C69C-8486-B7AD99516EBD";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd0_smart_ctlShape1" -p "rtLegQd0_smart_ctl";
	rename -uid "EEADE268-4C6B-94C3-2052-FDBF86BFC90E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.2648071045120952 1.2858530584668238e-16 -6.2648071045121032
		3.4686076343763129e-16 1.8184708345027089e-16 -5.664666149932029
		-6.2648071045120952 1.2858530584668231e-16 -6.2648071045120988
		-5.664666149932045 -7.4217730073006089e-32 -2.1995745035624879e-15
		-6.2648071045120952 -1.2858530584668236e-16 6.2648071045120952
		-5.674334824812679e-16 -1.8184708345027106e-16 5.6646661499320343
		6.2648071045120952 -1.2858530584668231e-16 6.2648071045120988
		5.664666149932045 -1.0844313755479723e-31 -1.1334286872467068e-15
		6.2648071045120952 1.2858530584668238e-16 -6.2648071045121032
		3.4686076343763129e-16 1.8184708345027089e-16 -5.664666149932029
		-6.2648071045120952 1.2858530584668231e-16 -6.2648071045120988
		;
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "FCFE4D1F-4643-27EE-83FF-129DA9BEFA2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.3948846218409017e-14 0 ;
	setAttr ".r" -type "double3" 91.23985330405408 -16.553771001667243 89.646696457946078 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "F3EC9325-4A8B-51A3-64B1-F198EF5B4B25";
	setAttr ".t" -type "double3" -30.631906770732275 99.999085810922693 -16.022525009026815 ;
	setAttr ".r" -type "double3" -0.76588105919531901 -14.235497039063343 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "4158FCEE-4B5A-35F6-47CC-E091C75C236D";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "A2424BC2-4B7E-158D-A3EA-559145182E6B";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-14 -2.4868995751603507e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_pvcShape1" -p "rtLegQd0_pvc";
	rename -uid "A605D250-4229-60AD-D329-3EBAECE4A90A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 4.4933576814959988
		-4.4933576814959988 0 0
		0 0 -4.4933576814959988
		4.4933576814959988 0 0
		0 0 4.4933576814959988
		0 4.4933576814959988 0
		4.4933576814959988 0 0
		0 0 -4.4933576814959988
		0 4.4933576814959988 0
		-4.4933576814959988 0 0
		0 -4.4933576814959988 0
		4.4933576814959988 0 0
		0 0 4.4933576814959988
		0 -4.4933576814959988 0
		0 0 -4.4933576814959988
		;
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "BCC51A91-4249-8CB3-6016-F4ABDB788528";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_settingShape1" -p "rtLegQd0_setting";
	rename -uid "212959E9-4C4A-21B7-53F6-639C0A3EDEED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.0774902656484819 -1.3837526351538565e-32 2.2598394987066917e-16
		-8.9030687820160956 1.0843821618259597e-16 -1.7709304600812621
		-8.3865074224663392 2.1270922272183092e-16 -3.473805237944819
		-7.5476574833555654 3.0880591999705314e-16 -5.0431832725329793
		-6.4187549213547213 3.9303537339802985e-16 -6.4187549213547213
		-5.0431832725329793 4.6216073421473942e-16 -7.5476574833555654
		-3.473805237944819 5.1352550000841429e-16 -8.3865074224663392
		-1.7709304600812621 5.4515575339695787e-16 -8.9030687820160956
		5.558359701320289e-16 5.558359701320289e-16 -9.0774902656484819
		1.7709304600812621 5.4515575339695787e-16 -8.9030687820160956
		3.473805237944819 5.1352550000841429e-16 -8.3865074224663392
		5.0431832725329793 4.6216073421473942e-16 -7.5476574833555654
		6.4187549213547213 3.9303537339802985e-16 -6.4187549213547213
		7.5476574833555654 3.0880591999705314e-16 -5.0431832725329793
		8.3865074224663392 2.1270922272183092e-16 -3.473805237944819
		8.9030687820160956 1.0843821618259597e-16 -1.7709304600812621
		9.0774902656484819 6.0120166914379204e-32 -9.8183680421986131e-16
		8.7319992769058761 1.0635461136091546e-16 -1.7369025107602931
		7.7481225935016012 1.9651769871297327e-16 -3.2093774606773606
		6.2756474271603002 2.5676275000420715e-16 -4.1932537112331696
		4.538745132824241 2.7791798506601445e-16 -4.538745132824241
		2.8018426220639476 2.5676275000420715e-16 -4.1932537112331696
		1.3293676721468801 1.9651769871297327e-16 -3.2093774606773606
		0.34549142159107066 1.0635461136091546e-16 -1.7369025107602931
		0 6.0120166914379204e-32 -9.8183680421986131e-16
		-0.34549142159107066 -1.0635461136091546e-16 1.7369025107602931
		-1.3293676721468801 -1.9651769871297327e-16 3.2093774606773606
		-2.8018426220639476 -2.5676275000420715e-16 4.1932537112331696
		-4.538745132824241 -2.7791798506601445e-16 4.538745132824241
		-6.2756474271603002 -2.5676275000420715e-16 4.1932537112331696
		-7.7481225935016012 -1.9651769871297327e-16 3.2093774606773606
		-8.7319992769058761 -1.0635461136091546e-16 1.7369025107602931
		-9.0774902656484819 -1.3837526351538565e-32 2.2598394987066917e-16
		-8.9030687820160956 -1.0843821618259597e-16 1.7709304600812621
		-8.3865074224663392 -2.1270922272183092e-16 3.473805237944819
		-7.5476574833555654 -3.0880591999705314e-16 5.0431832725329793
		-6.4187549213547213 -3.9303537339802985e-16 6.4187549213547213
		-5.0431832725329793 -4.6216073421473942e-16 7.5476574833555654
		-3.473805237944819 -5.1352550000841429e-16 8.3865074224663392
		-1.7709304600812621 -5.4515575339695787e-16 8.9030687820160956
		-1.0597379050687125e-15 -5.558359701320289e-16 9.0774902656484819
		1.7709304600812621 -5.4515575339695787e-16 8.9030687820160956
		3.473805237944819 -5.1352550000841429e-16 8.3865074224663392
		5.0431832725329793 -4.6216073421473942e-16 7.5476574833555654
		6.4187549213547213 -3.9303537339802985e-16 6.4187549213547213
		7.5476574833555654 -3.0880591999705314e-16 5.0431832725329793
		8.3865074224663392 -2.1270922272183092e-16 3.473805237944819
		8.9030687820160956 -1.0843821618259597e-16 1.7709304600812621
		9.0774902656484819 6.0120166914379204e-32 -9.8183680421986131e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe02_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "0723F47F-4BF8-B74F-E2F1-228BB1437486";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_4_ctl" -p "rtLegQd0_toe02_4_ctl_ofs";
	rename -uid "4088A711-4C66-CC92-9EE0-D0B1F02EA1BD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_4_ctlShape1" -p "rtLegQd0_toe02_4_ctl";
	rename -uid "CDF1DA40-46D4-CD81-7804-839ED2DAFD13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4662195752843858e-14 2.3493026641920371 2.3493026641920385
		-1.4682168919445202e-14 1.5786883304836367e-15 2.124249806224511
		-1.4662195752843858e-14 -2.3493026641920345 2.3493026641920371
		-1.4613976263151349e-14 -2.1242498062245154 8.2484043883593291e-16
		-1.4565756773458846e-14 -2.3493026641920345 -2.3493026641920358
		-1.4545783606857499e-14 1.2358279882640494e-15 -2.1242498062245128
		-1.4565756773458846e-14 2.3493026641920371 -2.3493026641920371
		-1.4613976263151349e-14 2.1242498062245181 4.2503575771751506e-16
		-1.4662195752843858e-14 2.3493026641920371 2.3493026641920385
		-1.4682168919445202e-14 1.5786883304836367e-15 2.124249806224511
		-1.4662195752843858e-14 -2.3493026641920345 2.3493026641920371
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe03_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "142E893A-4FD9-6285-B9F5-998DD214D5D5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe03_4_ctl" -p "rtLegQd0_toe03_4_ctl_ofs";
	rename -uid "0F3247F2-4BE6-7274-DE87-4F9A981A645C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_4_ctlShape1" -p "rtLegQd0_toe03_4_ctl";
	rename -uid "7034B52B-4926-B514-9F81-54A39E928413";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.8219489692505899e-17 2.3493026641920358 2.3493026641920474
		-6.8192656293851577e-17 1.3007278628911173e-16 2.1242498062245199
		-4.8219489692505868e-17 -2.3493026641920358 2.349302664192046
		2.7831648777377282e-32 -2.1242498062245168 9.5427539882343218e-15
		4.8219489692505887e-17 -2.3493026641920358 -2.3493026641920269
		6.8192656293851651e-17 -2.1278755593047546e-16 -2.1242498062245039
		4.8219489692505868e-17 2.3493026641920358 -2.3493026641920283
		4.0666176583048961e-32 2.1242498062245168 9.1429493071159041e-15
		-4.8219489692505899e-17 2.3493026641920358 2.3493026641920474
		-6.8192656293851577e-17 1.3007278628911173e-16 2.1242498062245199
		-4.8219489692505868e-17 -2.3493026641920358 2.349302664192046
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "9FFAE0FD-42A8-EE1F-8DBC-4EAE34BC6F4A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "488FC879-4709-FCE8-1AE9-B8A741CE6794";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "83D6709C-4735-8F41-6103-B3BC3F5B9D3F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "4CB971D9-4E50-8FEF-F9F4-7F9D36D9DDD7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "9D97B306-4D3A-0504-42EF-59A5D49F427D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		-2.3154928514004255e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "9CCA0316-4D49-BB18-6CBA-728B9DF9E5B9";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "6154F624-4691-0886-06FF-88B96F2271AD";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "E42DCE70-4550-C220-3274-D9B595CBDF29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		-2.3154928514004255e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "5F8653A4-48AE-9F92-1764-AD90FD787E73";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "BBA4C55B-4C41-EB61-E345-2EBBAF5A0E5A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_palm_fkcShape1" -p "rtLegQd1_palm_fkc";
	rename -uid "EBD31584-4555-E37C-E7EF-5E951C35AB80";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		-2.3154928514004255e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "DCC5FC83-4534-177C-E038-8381001CAE40";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "C83C84B3-4914-9565-6251-91AA33FC41AD";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "DECBC100-41A4-AFDD-A26D-0298D936F045";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		-2.3154928514004255e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "E2BD666A-41BB-C263-AC84-458A5B25B553";
	setAttr ".t" -type "double3" -9.2370555648813024e-14 4.6185277824406512e-14 -1.9184653865522705e-13 ;
	setAttr ".r" -type "double3" 54.409045225748052 5.0283456426045401 -83.017921108859568 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "BBD23A9D-4E33-71AC-966C-9C99684AA3E2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "554DB6F8-4419-410B-24B7-498F5E9C4F99";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "6239B816-47A9-5E1E-3929-0E9AB10A85F7";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "EEA4B4E8-4052-1461-AA18-21BEC7EF62D8";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "000DDB8B-46D0-1AA9-8092-77BF5153A4F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.7726756474706615 37.760723388854714 9.772675647470674
		-5.4107934679562918e-16 37.760723388854714 8.8364963215900172
		9.7726756474706615 37.760723388854714 9.7726756474706669
		8.8364963215900421 37.760723388854714 3.4311875572801994e-15
		9.7726756474706615 37.760723388854714 -9.7726756474706615
		8.8515788009023302e-16 37.760723388854714 -8.8364963215900243
		-9.7726756474706615 37.760723388854714 -9.7726756474706669
		-8.8364963215900421 37.760723388854714 1.7680721441563337e-15
		-9.7726756474706615 37.760723388854714 9.772675647470674
		-5.4107934679562918e-16 37.760723388854714 8.8364963215900172
		9.7726756474706615 37.760723388854714 9.7726756474706669
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "2886571F-419C-7C16-6F6C-B283613451A2";
	setAttr ".t" -type "double3" -52.620070316650626 -2.1316282072803006e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "9401A302-4582-7CB6-A955-6E8C22DADCB1";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "A83E1C85-485C-C927-A462-ED82F30C57A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		70.801356354102595 0 -4.7200904236068402
		70.801356354102595 0 4.7200904236068393
		66.081265930495761 0 7.0801356354102598
		61.36117550688892 0 4.7200904236068402
		61.36117550688892 0 -4.7200904236068393
		70.801356354102595 0 -4.7200904236068402
		61.36117550688892 0 -4.7200904236068393
		61.36117550688892 0 4.7200904236068402
		66.081265930495761 0 7.0801356354102598
		70.801356354102595 0 4.7200904236068393
		;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "BC59481F-44ED-0C9F-20B9-9A9A108938FD";
	setAttr ".t" -type "double3" -30.744220561799033 8.6697454178521483 57.470579774885358 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "6450B295-422B-1741-8445-70B126A97D7D";
	setAttr ".t" -type "double3" -1.1926102918520129 -5.7748151648404349 7.8885643903173488 ;
	setAttr ".r" -type "double3" -41.117882932704632 74.955955973493829 49.869515286965296 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "EC16D1B2-4B81-A0DC-220E-72919C7BC964";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "0CB51CA0-4348-B67B-0C71-4DB426B629F5";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "95F6898B-4FF2-FAD4-3ADD-61A5CB428C99";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0058438609632277e-16 -9.7726756474706615 -9.772675647470674
		2.8366915921770127e-16 -5.4107934679562918e-16 -8.8364963215900172
		2.0058438609632264e-16 9.7726756474706615 -9.7726756474706669
		-1.1577464257002125e-31 8.8364963215900421 -3.4311875572801994e-15
		-2.0058438609632272e-16 9.7726756474706615 9.7726756474706615
		-2.8366915921770152e-16 8.8515788009023302e-16 8.8364963215900243
		-2.0058438609632264e-16 -9.7726756474706615 9.7726756474706669
		-1.6916396496131448e-31 -8.8364963215900421 -1.7680721441563337e-15
		2.0058438609632277e-16 -9.7726756474706615 -9.772675647470674
		2.8366915921770127e-16 -5.4107934679562918e-16 -8.8364963215900172
		2.0058438609632264e-16 9.7726756474706615 -9.7726756474706669
		;
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "E74565FD-49B2-531B-B396-35A44928FE0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7955392884333889 3.5527136788005009e-15 -2.7355895326763857e-13 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951699 -0.17069033769676431 0.19554277016610616 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "E588E65E-46F6-8206-61FD-FEA99D6D4ED7";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "3B9F4D9C-4BB2-607A-070C-8EB5F39FAD57";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
createNode ikHandle -n "rtLegQd1_toe02_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "C91DF2E7-44A2-4268-B86A-63A3C9F67064";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45879537728259834 -2.7021824380746402 -0.09289805268574014 ;
	setAttr ".r" -type "double3" 0.65362901042300636 -24.578774551186751 2.665078340222554 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951721 -0.17069033769676473 0.19554277016610574 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe03_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "1B3B9B70-4057-7E4F-85E1-D0A697978984";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45304537570460468 2.6683164504006953 0.091733777768745028 ;
	setAttr ".r" -type "double3" -0.49116292577468557 -24.157105835589967 -2.0128620018351255 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951721 -0.17069033769676473 0.19554277016610574 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "9D8A2D0A-4A53-1912-D149-47B2AA73ADF9";
	setAttr ".t" -type "double3" 0.45879537728259834 -2.7021824380746367 -0.092898052685736587 ;
	setAttr ".r" -type "double3" -0.47113510849606738 3.5428128570532369 -2.3521496314173329 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs1" -p "rtLegQd1_toe02_3_ikc_ofs";
	rename -uid "1073CDDA-4738-2969-F8AD-DC85264BAA7C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe02_3_ikc" -p "rtLegQd1_toe02_3_ikc_ofs1";
	rename -uid "CC857172-482A-85EB-E73F-73AEDCCFAEE0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_3_ikcShape1" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "D64A86D3-4DB8-74C6-43AE-0AACF70D757D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 -2.1955850847283316e-15 2.1955850847283316e-15
		0 -2.1955850847283316e-15 6.346664702132343
		-0.73289873816831463 -2.1955850847283316e-15 6.346664702132343
		-0.73289873816831463 -2.1955850847283316e-15 7.8124621784689765
		0.73289873816831463 -2.1955850847283316e-15 7.8124621784689765
		0.73289873816831463 -2.1955850847283316e-15 6.346664702132343
		0 -2.1955850847283316e-15 6.346664702132343
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe02_3_1_ikj_ikh" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "5CBA10D7-4D09-AF20-1646-5DA2233ED577";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.8219693906680305 -0.52983626634964409 -0.47129462223776208 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96816035821828605 -0.21129211694303812 0.13424292194514145 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "3F810855-4B71-E2FB-6158-B6BCFCB3C379";
	setAttr ".t" -type "double3" -0.45304537570461889 2.6683164504006989 0.091733777768752134 ;
	setAttr ".r" -type "double3" 0.77718660356438718 3.388652674293164 3.8806156704315669 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs1" -p "rtLegQd1_toe03_3_ikc_ofs";
	rename -uid "3317A9CC-4C7A-9F2E-206B-D98B1DD31BA5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe03_3_ikc" -p "rtLegQd1_toe03_3_ikc_ofs1";
	rename -uid "23673D14-4B79-7E38-FF2D-CA8615329B92";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_3_ikcShape1" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "B34DA0BF-4EC6-7C8B-C4D6-E7A15D0F078E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		1.7564680677826656e-14 0 0
		1.7564680677826656e-14 0 6.3466647021323412
		-0.73289873816829709 0 6.3466647021323412
		-0.73289873816829709 0 7.8124621784689747
		0.73289873816833218 0 7.8124621784689747
		0.73289873816833218 0 6.3466647021323412
		1.7564680677826656e-14 0 6.3466647021323412
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe03_3_1_ikj_ikh" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "D7728CA4-4D26-06B2-8D23-D08738F65F01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7930720948510128 -0.25844630836586546 -0.45915251432871074 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999922 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.98491776108076268 -0.10306517465379983 0.13897688182298154 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "2C4832E2-4C55-3302-C648-39A1F6F11764";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "B410E859-40EC-6798-5BC2-97A341FDF246";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "32CD87C8-4E6F-5EE4-8A55-1FAD571396B3";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -49.550001881883162 4.4173370618726935 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "ECBCFF54-415F-7215-3668-76A09CE57EBF";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "F8806195-48ED-280F-27FC-A5B425AF0B57";
	setAttr ".t" -type "double3" -2.0217887614951096 0 8.393702115667395 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "69428D45-4AE7-FB77-2766-B7B6B0B57CA1";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "FFE82031-44DC-2FD8-E04E-EFA57130FC17";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "0C4E3EB4-4BE3-84DD-0F32-6D9F16AAC70F";
	setAttr ".t" -type "double3" -3.9909575445434342 0 -5.0602270072448903 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "8C077A3E-4EBD-F43B-26AA-5FB223BAA488";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "3A906368-4E0A-C8D8-69C9-EC9296AC4E7D";
	setAttr ".t" -type "double3" 10.508384412859932 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "5078414C-4D19-EDC9-A014-D1BB641C86A3";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "C29189E5-40EE-161D-9ED8-6197A4106296";
	setAttr ".t" -type "double3" -5.4643676848224167 1.5439952492278985 -2.0740766745503265 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "9AED687F-406D-8F14-122C-CDAB01CFE888";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape4" -p "rtLegQd1_ballG_ikc";
	rename -uid "87EDA543-4D05-B4B5-BD6D-4FA4CC6C388D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-1.1693705383493889e-16 16.97063463907088 1.032287957156204e-15
		-1.1295251687205581e-16 17.035707296812102 0.4942737104253252
		-1.0127045837235642e-16 17.226489861986447 0.95486345265442152
		-8.2686977784679928e-17 17.529981007237428 1.3503808372375623
		-5.8468526917469447e-17 17.925498166749119 1.653872132536176
		-3.0265534922717417e-17 18.386087984002032 1.8446545476628875
		3.5809126302652383e-32 18.880361694427357 1.909726905308843
		3.0265534922717417e-17 19.374635404852683 1.8446545476628875
		5.8468526917469447e-17 19.835225222105596 1.653872132536176
		8.2686977784679928e-17 20.230742381617286 1.3503808372375623
		1.0127045837235642e-16 20.534234727249334 0.95486345265442152
		1.1295251687205581e-16 20.725016092042612 0.4942737104253252
		1.1693705383493889e-16 20.790088749783834 5.6430881983524325e-16
		1.1295251687205581e-16 20.725016092042612 -0.4942737104253252
		1.0127045837235642e-16 20.534234727249334 -0.95486345265442152
		8.2686977784679928e-17 20.230742381617286 -1.3503808372375623
		5.8468526917469447e-17 19.835225222105596 -1.653872132536176
		3.0265534922717417e-17 19.374635404852683 -1.8446545476628875
		-8.7488513657545126e-32 18.880361694427357 -1.909726905308843
		-3.0265534922717417e-17 18.386087984002032 -1.8446545476628875
		-5.8468526917469447e-17 17.925498166749119 -1.653872132536176
		-8.2686977784679928e-17 17.529981007237428 -1.3503808372375623
		-1.0127045837235642e-16 17.226489861986447 -0.95486345265442152
		-1.1295251687205581e-16 17.035707296812102 -0.4942737104253252
		-1.1693705383493889e-16 16.97063463907088 1.032287957156204e-15
		0 0 0
		;
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "1E596B22-4A2C-5901-953F-DAB4D7FE3350";
	setAttr ".t" -type "double3" 1.1926102434295771 5.7748144484096384 -7.8885650084221339 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "48F8FDF7-4464-BF03-F788-D99E8A259C60";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 166.58160047469804 7.9513867036587919e-16 86.897766177184195 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999933 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "F03A5E99-4695-1516-474A-32B17930EA4E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "6BC2EDBE-486C-B575-9CA5-36954DFFB4C2";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "9A18807A-457B-0490-2FA2-A9BD6998D460";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		11.272142229702542 18.880361694427357 0
		10.465905480544794 23.215481499733624 0
		8.0102576938219503 26.890619388249306 0
		4.3351198053062667 29.346267174972152 0
		0 30.152239599068821 0
		-4.3351198053062667 29.346267174972152 0
		-8.0102576938219503 26.890619388249306 0
		-10.465905480544794 23.215481499733624 0
		-11.272142229702542 18.880361160361591 0
		-10.465905480544794 14.54524188912109 0
		-8.0102576938219503 10.870104000605407 0
		-4.3351198053062667 8.4144562138825627 0
		4.5014255815924044e-07 7.608483789785895 -0.076646715568230148
		4.3351198053062667 8.4144562138825627 0
		8.0102576938219503 10.870104000605407 0
		10.465905480544794 14.54524188912109 0
		11.272142229702542 18.880361694427357 0
		10.414097768573363 18.909693921976711 -4.3135659846114471
		7.9706089346601425 18.934561019551428 -7.97043523533429
		4.3136641624912766 18.951176643933731 -10.413871204235297
		4.5014255815924044e-07 18.957011430853427 -11.27189300893067
		-4.3136641624912766 18.951176643933731 -10.413871204235297
		-7.9706089346601425 18.934561019551428 -7.97043523533429
		-10.414097768573363 18.909693921976711 -4.3135659846114471
		-11.272142229702542 18.880361160361591 0
		-10.414097768573363 18.851028409577761 4.3135508803222429
		-7.9706089346601425 18.826161312003041 7.970427683189687
		-4.3136641624912766 18.809545687620741 10.413856099946093
		4.5014255815924044e-07 18.803711202786825 11.271877904641462
		4.3136641624912766 18.809545687620741 10.413856099946093
		7.9706089346601425 18.826161312003041 7.970427683189687
		10.414097768573363 18.851028409577761 4.3135508803222429
		11.272142229702542 18.880361694427357 0
		10.414097768573363 18.909693921976711 -4.3135659846114471
		7.9706089346601425 18.934561019551428 -7.97043523533429
		4.3136641624912766 18.951176643933731 -10.413871204235297
		4.5014255815924044e-07 18.957011430853427 -11.27189300893067
		4.5014255815924044e-07 23.264736586829496 -10.384531122455556
		4.5014255815924044e-07 26.904983567282788 -7.9162334935239453
		4.5014255815924044e-07 29.323550324008586 -4.2427495246761531
		0 30.152239599068821 0
		4.5014255815924044e-07 29.264885264738311 4.3843748924021382
		4.5014255815924044e-07 26.796587635806699 8.0246143207108283
		4.5014255815924044e-07 23.12311121910351 10.443188629581229
		4.5014255815924044e-07 18.803711202786825 11.271877904641462
		4.5014255815924044e-07 14.495986802025218 10.384516018166353
		4.5014255815924044e-07 10.855739821571927 7.9162183892347411
		4.5014255815924044e-07 8.4371730648461281 4.2427344203869488
		4.5014255815924044e-07 7.608483789785895 -0.076646715568230148
		4.5014255815924044e-07 8.4958381241164016 -4.3843899966913433
		4.5014255815924044e-07 10.964135753048016 -8.0246294250000325
		4.5014255815924044e-07 14.637612169751204 -10.443203733870433
		4.5014255815924044e-07 18.957011430853427 -11.27189300893067
		;
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "9ACCF4CA-438F-F651-83F5-80B56E371033";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "F4735F3A-42C1-B1EC-CA9A-3BADDF089291";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1974423109204508e-14 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "4A595B5B-402E-0CE7-4342-8484A47BF930";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.2238806654285348 42.231192184245629 2.2118295126772622 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "2361FD96-4336-B907-A5CE-9899D9CB775F";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "E19EB8BA-446C-2163-D1A5-F797B8D356C5";
	setAttr ".t" -type "double3" -0.2238806654285419 42.231192184245629 2.2118295126772551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "A540F11B-4912-3981-BB0C-A38C3B574F24";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "A2E949D5-419A-F986-144B-7E85A36B41E2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "B2547E6A-49F7-BEEB-6BB9-678DD543AF99";
	setAttr ".t" -type "double3" -5.4643676848224167 1.5439952492278985 -2.0740766745503265 ;
	setAttr ".r" -type "double3" -41.117882932704575 74.955955973493758 49.869515286965296 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "2EE07DD3-4496-21BF-8B93-1E99EBF14960";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -3.5527136788005009e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0.26834444855899531 -24.453608497333732 1.0954029858589147 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951677 -0.17069033769676523 0.19554277016610694 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "CB51CA04-42F1-0250-8285-1D8AB3B87688";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -2.8421709430404007e-14 2.7000623958883807e-13 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "97F08710-4A8A-5590-2B68-C5AC677092B3";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode nurbsCurve -n "diamondShape14" -p "rtLegQd1_inRollG_ctl";
	rename -uid "C237995C-4D97-96F9-8966-FC85219F43A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426929
		-1.1682223798426929 0 0
		0 0 -1.1682223798426929
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 -1.1682223798426929
		0 1.1682223798426929 0
		-1.1682223798426929 0 0
		0 -1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 -1.1682223798426929 0
		0 0 -1.1682223798426929
		;
createNode nurbsCurve -n "diamondShape15" -p "rtLegQd1_outRollG_ctl";
	rename -uid "0B098E6C-4C59-DDF9-4873-1BBF2046B56D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426929
		-1.1682223798426929 0 0
		0 0 -1.1682223798426929
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 -1.1682223798426929
		0 1.1682223798426929 0
		-1.1682223798426929 0 0
		0 -1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 -1.1682223798426929 0
		0 0 -1.1682223798426929
		;
createNode nurbsCurve -n "diamondShape13" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "8B8CC830-4D9A-2318-68EF-61AD6512FDCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426929
		-1.1682223798426929 0 0
		0 0 -1.1682223798426929
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 -1.1682223798426929
		0 1.1682223798426929 0
		-1.1682223798426929 0 0
		0 -1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 -1.1682223798426929 0
		0 0 -1.1682223798426929
		;
createNode nurbsCurve -n "diamondShape16" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "5B6A25DA-4803-BB9D-A17A-6291F828DB97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.1682223798426929
		-1.1682223798426929 0 0
		0 0 -1.1682223798426929
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 -1.1682223798426929
		0 1.1682223798426929 0
		-1.1682223798426929 0 0
		0 -1.1682223798426929 0
		1.1682223798426929 0 0
		0 0 1.1682223798426929
		0 -1.1682223798426929 0
		0 0 -1.1682223798426929
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "4CF04782-4A6F-6E33-4169-A687C31410F2";
	setAttr ".t" -type "double3" -30.744220610221515 8.6697447014210738 57.470579156780545 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "DBAEDD11-4529-48FA-E2E0-C1B3C6A6A89C";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "A1D4CFC9-40D4-3577-B13D-34861B2C2FD3";
	addAttr -ci true -sn "gimbalCtl" -ln "gimbalCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "kneeTwist" -ln "kneeTwist" -at "double";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "legLock" -ln "legLock" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "legLockLen" -ln "legLockLen" -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".legLock";
	setAttr -k on ".legLockLen";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd1_ikcShape1" -p "rtLegQd1_ikc";
	rename -uid "6507C54E-40FC-7F86-8D6D-F58EB743828E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		14.160271270820507 -8.6697447014210702 14.160271270820521
		13.888185628937498 -8.6697447014210702 16.922803152880626
		13.082384801918653 -8.6697447014210702 19.579172483958885
		11.773835263647998 -8.6697447014210702 22.027296480371049
		10.012823839038234 -8.6697447014210702 24.17309510985875
		7.867025209550528 -8.6697447014210702 25.934106534468523
		5.4189012131383629 -8.6697447014210702 27.242656072739177
		2.7625318820601015 -8.6697447014210702 28.048456899758026
		-1.6531195043335812e-15 -8.6697447014210702 28.320542541641029
		-2.7625318820601046 -8.6697447014210702 28.048456899758026
		-5.4189012131383665 -8.6697447014210702 27.242656072739177
		-7.8670252095505324 -8.6697447014210702 25.934106534468523
		-10.012823839038239 -8.6697447014210702 24.173095109858753
		-11.773835263648005 -8.6697447014210702 22.027296480371053
		-13.082384801918661 -8.6697447014210702 19.579172483958885
		-13.888185628937508 -8.6697447014210702 16.922803152880622
		-14.160271270820516 -8.6697447014210702 14.160271270820516
		-13.88818554542568 -4.4292983790847904 14.16027127082052
		-13.082384738684098 -0.30027290424892428 14.16027127082052
		-11.77383553117126 3.2752106973419011 14.16027127082052
		-10.012823836479647 6.1202870252464106 14.16027127082052
		-7.8670250386029732 8.2627228272259288 14.16027127082052
		-5.4189010406122371 9.5712720347387688 14.16027127082052
		-2.7625318213126406 10.377072841480349 14.16027127082052
		8.6706654469620024e-16 10.649158566875187 14.16027127082052
		2.7625318213126406 10.377072841480349 14.16027127082052
		5.4189010406122371 9.5712720347387688 14.16027127082052
		7.8670250386029732 8.2627228272259288 14.16027127082052
		10.012823836479647 6.1202870252464106 14.16027127082052
		11.77383553117126 3.2752106973419011 14.16027127082052
		13.082384738684098 -0.30027290424892428 14.16027127082052
		13.88818554542568 -4.4292983790847904 14.16027127082052
		14.16027127082052 -8.6697447014210702 14.16027127082052
		14.16027127082052 -8.6697447014210738 -13.310654994571285
		14.16027127082052 -7.8201284251718395 -14.16027127082052
		13.88818554542568 -4.4292983790847904 -14.16027127082052
		13.082384738684098 -0.30027290424892428 -14.16027127082052
		11.77383553117126 3.2752106973419011 -14.16027127082052
		10.012823836479647 6.1202870252464106 -14.16027127082052
		7.8670250386029732 8.2627228272259288 -14.16027127082052
		5.4189010406122371 9.5712720347387688 -14.16027127082052
		2.7625318213126406 10.377072841480349 -14.16027127082052
		8.6706654469620024e-16 10.649158566875187 -14.16027127082052
		-2.7625318213126406 10.377072841480349 -14.16027127082052
		-5.4189010406122371 9.5712720347387688 -14.16027127082052
		-7.8670250386029732 8.2627228272259288 -14.16027127082052
		-10.012823836479647 6.1202870252464106 -14.16027127082052
		-11.77383553117126 3.2752106973419011 -14.16027127082052
		-13.082384738684098 -0.30027290424892428 -14.16027127082052
		-13.88818554542568 -4.4292983790847904 -14.16027127082052
		-14.16027127082052 -7.8201284251718395 -14.16027127082052
		-14.16027127082052 -8.6697447014210685 -13.310654994571285
		-14.16027127082052 -8.6697447014210702 14.16027127082052
		;
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "A03C7E3B-46BD-D7FA-9709-599CC7778F4A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShape" -p "rtLegQd1_ikc_gmb";
	rename -uid "F722ACF9-4022-53B9-29CD-BEBD572FB453";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.8320542541641007 1.931890338904819 
		-1.4160270897048761 -2.7776371257874981 1.931890338904819 -1.9685334661168969 -2.6164769603837303 
		1.931890338904819 -2.4998073323325478 -2.3547670527295992 1.931890338904819 -2.9894321316149828 
		-2.0025647678076464 1.931890338904819 -3.4185918575125172 -1.5734050419101058 1.931890338904819 
		-3.7707941424344718 -1.0837802426276735 1.931890338904819 -4.0325040500886082 -0.55250637641202127 
		1.931890338904819 -4.1936642154923724 -3.7991883489338395e-16 1.931890338904819 -4.2480813438689786 
		0.55250637641201994 1.931890338904819 -4.1936642154923724 1.0837802426276726 1.931890338904819 
		-4.0325040500886082 1.5734050419101049 1.931890338904819 -3.7707941424344718 2.0025647678076481 
		1.931890338904819 -3.4185918575125207 2.354767052729601 1.931890338904819 -2.9894321316149792 
		2.6164769603837321 1.931890338904819 -2.4998073323325478 2.7776371257875017 1.931890338904819 
		-1.9685334661168952 2.8320542541641025 1.931890338904819 -1.4160270897048743 2.7776371090851359 
		1.0838010744375635 -1.4160270897048743 2.6164769477368193 0.25799597947039032 -1.4160270897048743 
		2.3547671062342523 -0.4571007408477743 -1.4160270897048743 2.0025647672959295 -1.0261160064286763 
		-1.4160270897048743 1.5734050077205932 -1.4546031668245805 -1.4160270897048743 1.0837802081224464 
		-1.7163130083271483 -1.4160270897048743 0.55250636426252697 -1.877473169675465 -1.4160270897048743 
		-8.8395604469934006e-16 -1.9318903147544315 -1.4160270897048743 -0.55250636426252875 
		-1.877473169675465 -1.4160270897048743 -1.0837802081224481 -1.7163130083271483 -1.4160270897048743 
		-1.573405007720595 -1.4546031668245805 -1.4160270897048743 -2.0025647672959295 -1.0261160064286763 
		-1.4160270897048743 -2.3547671062342523 -0.4571007408477743 -1.4160270897048743 -2.6164769477368193 
		0.25799597947039032 -1.4160270897048743 -2.7776371090851359 1.0838010744375635 -1.4160270897048743 
		-2.8320542541641025 1.931890338904819 -1.4160270897048743 -2.8320542541641025 1.9318903389048199 
		4.0781581633734838 -2.8320542541641025 1.761967083654973 4.2480814186233307 -2.7776371090851359 
		1.0838010744375635 4.2480814186233307 -2.6164769477368193 0.25799597947039032 4.2480814186233307 
		-2.3547671062342523 -0.4571007408477743 4.2480814186233307 -2.0025647672959295 -1.0261160064286763 
		4.2480814186233307 -1.573405007720595 -1.4546031668245805 4.2480814186233307 -1.0837802081224481 
		-1.7163130083271483 4.2480814186233307 -0.55250636426252875 -1.877473169675465 4.2480814186233307 
		-8.8395604469934006e-16 -1.9318903147544315 4.2480814186233307 0.55250636426252697 
		-1.877473169675465 4.2480814186233307 1.0837802081224464 -1.7163130083271483 4.2480814186233307 
		1.5734050077205932 -1.4546031668245805 4.2480814186233307 2.0025647672959295 -1.0261160064286763 
		4.2480814186233307 2.3547671062342523 -0.4571007408477743 4.2480814186233307 2.6164769477368193 
		0.25799597947039032 4.2480814186233307 2.7776371090851359 1.0838010744375635 4.2480814186233307 
		2.8320542541641025 1.761967083654973 4.2480814186233307 2.8320542541641025 1.9318903389048181 
		4.0781581633734838 2.8320542541641025 1.931890338904819 -1.4160270897048743;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "B137D440-4218-4A92-D33B-2E85C3A553A0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:52]";
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 1.5682742452729688 1.7643085259320896 1.9603428065912105 2.1563770872503314
		 2.3524113679094527 2.548445648568574 2.7444799292276949 2.9405142098868158 3.1365484905459367
		 3.3325827712050575 3.5286170518641784 3.7246513325232997 3.920685613182421 4.1167198938415428
		 4.3127541745006637 4.5087884551597845 4.7048227358189063 5.7048227358189063 6.7048227358189063
		 7.7048227358189063 8.7048227358189063 9.7048227358189063 10.704822735818906 11.704822735818906
		 12.704822735818906 13.704822735818906 14.704822735818906 15.704822735818906 16.704822735818908
		 17.704822735818908 18.704822735818908 19.704822735818908 20.704822735818908 21.625393995818904
		 21.704822735818908 22.704822735818908 23.704822735818908 24.704822735818908 25.704822735818908
		 26.704822735818908 27.704822735818908 28.704822735818908 29.704822735818908 30.704822735818908
		 31.704822735818908 32.704822735818908 33.704822735818908 34.704822735818908 35.704822735818908
		 36.704822735818908 37.704822735818908 37.788496455818908 38.704822735818908
		53
		14.160271270820507 -8.6697447014210702 14.160271270820521
		13.888185628937498 -8.6697447014210702 16.922803152880626
		13.082384801918653 -8.6697447014210702 19.579172483958885
		11.773835263647998 -8.6697447014210702 22.027296480371049
		10.012823839038234 -8.6697447014210702 24.17309510985875
		7.867025209550528 -8.6697447014210702 25.934106534468523
		5.4189012131383629 -8.6697447014210702 27.242656072739177
		2.7625318820601015 -8.6697447014210702 28.048456899758026
		-1.6531195043335812e-15 -8.6697447014210702 28.320542541641029
		-2.7625318820601046 -8.6697447014210702 28.048456899758026
		-5.4189012131383665 -8.6697447014210702 27.242656072739177
		-7.8670252095505324 -8.6697447014210702 25.934106534468523
		-10.012823839038239 -8.6697447014210702 24.173095109858753
		-11.773835263648005 -8.6697447014210702 22.027296480371053
		-13.082384801918661 -8.6697447014210702 19.579172483958885
		-13.888185628937508 -8.6697447014210702 16.922803152880622
		-14.160271270820516 -8.6697447014210702 14.160271270820516
		-13.88818554542568 -4.4292983790847904 14.16027127082052
		-13.082384738684098 -0.30027290424892428 14.16027127082052
		-11.77383553117126 3.2752106973419011 14.16027127082052
		-10.012823836479647 6.1202870252464106 14.16027127082052
		-7.8670250386029732 8.2627228272259288 14.16027127082052
		-5.4189010406122371 9.5712720347387688 14.16027127082052
		-2.7625318213126406 10.377072841480349 14.16027127082052
		8.6706654469620024e-16 10.649158566875187 14.16027127082052
		2.7625318213126406 10.377072841480349 14.16027127082052
		5.4189010406122371 9.5712720347387688 14.16027127082052
		7.8670250386029732 8.2627228272259288 14.16027127082052
		10.012823836479647 6.1202870252464106 14.16027127082052
		11.77383553117126 3.2752106973419011 14.16027127082052
		13.082384738684098 -0.30027290424892428 14.16027127082052
		13.88818554542568 -4.4292983790847904 14.16027127082052
		14.16027127082052 -8.6697447014210702 14.16027127082052
		14.16027127082052 -8.6697447014210738 -13.310654994571285
		14.16027127082052 -7.8201284251718395 -14.16027127082052
		13.88818554542568 -4.4292983790847904 -14.16027127082052
		13.082384738684098 -0.30027290424892428 -14.16027127082052
		11.77383553117126 3.2752106973419011 -14.16027127082052
		10.012823836479647 6.1202870252464106 -14.16027127082052
		7.8670250386029732 8.2627228272259288 -14.16027127082052
		5.4189010406122371 9.5712720347387688 -14.16027127082052
		2.7625318213126406 10.377072841480349 -14.16027127082052
		8.6706654469620024e-16 10.649158566875187 -14.16027127082052
		-2.7625318213126406 10.377072841480349 -14.16027127082052
		-5.4189010406122371 9.5712720347387688 -14.16027127082052
		-7.8670250386029732 8.2627228272259288 -14.16027127082052
		-10.012823836479647 6.1202870252464106 -14.16027127082052
		-11.77383553117126 3.2752106973419011 -14.16027127082052
		-13.082384738684098 -0.30027290424892428 -14.16027127082052
		-13.88818554542568 -4.4292983790847904 -14.16027127082052
		-14.16027127082052 -7.8201284251718395 -14.16027127082052
		-14.16027127082052 -8.6697447014210685 -13.310654994571285
		-14.16027127082052 -8.6697447014210702 14.16027127082052
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "E3D21AC1-46E7-4098-9024-83B81F6E0C8D";
	setAttr ".t" -type "double3" -2.2456694269236515 -7.3188096976375334 15.022868690217351 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "85774979-444D-967D-F411-AA87DB5C5599";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -at "double";
	addAttr -ci true -sn "footBreak" -ln "footBreak" -dv 30 -min 0 -at "double";
	addAttr -ci true -sn "footBank" -ln "footBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".footRoll";
	setAttr -cb on ".footBreak";
	setAttr -k on ".footBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd1_smart_ctlShape1" -p "rtLegQd1_smart_ctl";
	rename -uid "7B92239B-4E86-8491-D13F-668117A5A565";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.5151170983137741 1.3372292406421515e-16 -6.5151170983137821
		3.6071956453041945e-16 1.8911277281180082e-16 -5.8909975477266769
		-6.5151170983137741 1.3372292406421508e-16 -6.5151170983137776
		-5.8909975477266938 -7.718309504668083e-32 -2.2874583715201328e-15
		-6.5151170983137741 -1.3372292406421513e-16 6.5151170983137741
		-5.9010525339348862e-16 -1.8911277281180102e-16 5.8909975477266832
		6.5151170983137741 -1.3372292406421508e-16 6.5151170983137776
		5.8909975477266938 -1.1277597664087631e-31 -1.178714762770889e-15
		6.5151170983137741 1.3372292406421515e-16 -6.5151170983137821
		3.6071956453041945e-16 1.8911277281180082e-16 -5.8909975477266769
		-6.5151170983137741 1.3372292406421508e-16 -6.5151170983137776
		;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "FEB07696-4616-C05F-EDE9-70BEC3F0A781";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0658141036401503e-14 -7.815970093361102e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 141.3215593513664 -4.5511212140658914 84.33935561134092 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "727B398D-40CF-46C1-B1A4-49A7EF78FD8E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 38.678440648633639 4.5511212140658763 -95.660644388659151 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "77478A49-435E-717C-D975-9ABE0AE2A858";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -179.14059643317822 -5.6843418860808015e-14 5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.7760723388854718;
createNode ikEffector -n "effector40" -p "rtLegQd1_legLock";
	rename -uid "D791569E-4836-78AF-01D6-74B9B161F9F1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "46B0D14B-4F48-1BC0-E356-908472384224";
	setAttr ".t" -type "double3" -23.614142280087052 109.62577292424095 9.3718736253704673 ;
	setAttr ".r" -type "double3" 4.9707106205800633 178.56075131676488 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "F9F3F71C-4C5E-6BE7-3143-CEB9418FF626";
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "B5AEAADF-46A5-A7B3-A12C-049A1B6AE2BE";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-14 -1.4210854715202004e-14 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "7162A726-4859-FC92-7170-D994B17DC662";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 4.6728895193707718
		-4.6728895193707718 0 0
		0 0 -4.6728895193707718
		4.6728895193707718 0 0
		0 0 4.6728895193707718
		0 4.6728895193707718 0
		4.6728895193707718 0 0
		0 0 -4.6728895193707718
		0 4.6728895193707718 0
		-4.6728895193707718 0 0
		0 -4.6728895193707718 0
		4.6728895193707718 0 0
		0 0 4.6728895193707718
		0 -4.6728895193707718 0
		0 0 -4.6728895193707718
		;
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "29ADE529-4398-940C-56CD-85B8C8DA9136";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_settingShape1" -p "rtLegQd1_setting";
	rename -uid "380CA838-4FBE-133A-789F-078AB8D658AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.4401808472136786 -1.4390403890703269e-32 2.3501312509470214e-16
		-9.2587903636171198 1.1277085863554262e-16 -1.8416878808750934
		-8.7215898257893993 2.2120800701523944e-16 -3.6126009188129418
		-7.8492236874475063 3.2114424209235159e-16 -5.2446833590686488
		-6.675215890986431 4.0873907827479214e-16 -6.675215890986431
		-5.2446833590686488 4.8062633875559633e-16 -7.8492236874475063
		-3.6126009188129418 5.3404338069967e-16 -8.7215898257893993
		-1.8416878808750934 5.6693741897377378e-16 -9.2587903636171198
		5.7804436313080012e-16 5.7804436313080012e-16 -9.4401808472136786
		1.8416878808750934 5.6693741897377378e-16 -9.2587903636171198
		3.6126009188129418 5.3404338069967e-16 -8.7215898257893993
		5.2446833590686488 4.8062633875559633e-16 -7.8492236874475063
		6.675215890986431 4.0873907827479214e-16 -6.675215890986431
		7.8492236874475063 3.2114424209235159e-16 -5.2446833590686488
		8.7215898257893993 2.2120800701523944e-16 -3.6126009188129418
		9.2587903636171198 1.1277085863554262e-16 -1.8416878808750934
		9.4401808472136786 6.2522264593788308e-32 -1.0210660351089541e-15
		9.0808857866444406 1.1060400350761972e-16 -1.8063003468707457
		8.0576983691000557 2.0436955163137139e-16 -3.3376079454932155
		6.5263905454061355 2.67021690349835e-16 -4.3607949128946997
		4.7200904236068393 2.8902218156540006e-16 -4.7200904236068393
		2.913790076736094 2.67021690349835e-16 -4.3607949128946997
		1.382482478113624 2.0436955163137139e-16 -3.3376079454932155
		0.35929551071214016 1.1060400350761972e-16 -1.8063003468707457
		0 6.2522264593788308e-32 -1.0210660351089541e-15
		-0.35929551071214016 -1.1060400350761972e-16 1.8063003468707457
		-1.382482478113624 -2.0436955163137139e-16 3.3376079454932155
		-2.913790076736094 -2.67021690349835e-16 4.3607949128946997
		-4.7200904236068393 -2.8902218156540006e-16 4.7200904236068393
		-6.5263905454061355 -2.67021690349835e-16 4.3607949128946997
		-8.0576983691000557 -2.0436955163137139e-16 3.3376079454932155
		-9.0808857866444406 -1.1060400350761972e-16 1.8063003468707457
		-9.4401808472136786 -1.4390403890703269e-32 2.3501312509470214e-16
		-9.2587903636171198 -1.1277085863554262e-16 1.8416878808750934
		-8.7215898257893993 -2.2120800701523944e-16 3.6126009188129418
		-7.8492236874475063 -3.2114424209235159e-16 5.2446833590686488
		-6.675215890986431 -4.0873907827479214e-16 6.675215890986431
		-5.2446833590686488 -4.8062633875559633e-16 7.8492236874475063
		-3.6126009188129418 -5.3404338069967e-16 8.7215898257893993
		-1.8416878808750934 -5.6693741897377378e-16 9.2587903636171198
		-1.1020796697909024e-15 -5.7804436313080012e-16 9.4401808472136786
		1.8416878808750934 -5.6693741897377378e-16 9.2587903636171198
		3.6126009188129418 -5.3404338069967e-16 8.7215898257893993
		5.2446833590686488 -4.8062633875559633e-16 7.8492236874475063
		6.675215890986431 -4.0873907827479214e-16 6.675215890986431
		7.8492236874475063 -3.2114424209235159e-16 5.2446833590686488
		8.7215898257893993 -2.2120800701523944e-16 3.6126009188129418
		9.2587903636171198 -1.1277085863554262e-16 1.8416878808750934
		9.4401808472136786 6.2522264593788308e-32 -1.0210660351089541e-15
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe02_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "590CB160-435C-1852-437F-B4A89F34ED16";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_4_ctl" -p "rtLegQd1_toe02_4_ctl_ofs";
	rename -uid "732D506B-44BB-D7AC-1C93-D98AB2FB4D39";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_4_ctlShape1" -p "rtLegQd1_toe02_4_ctl";
	rename -uid "23626468-451C-1909-D9A8-8092D928AFCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2584087830413757e-14 2.443168911867676 2.4431689118676729
		-1.2604859023694099e-14 1.0594523156924563e-14 2.2091240803975087
		-1.2584087830413757e-14 -2.4431689118676552 2.4431689118676712
		-1.2533941733889674e-14 -2.2091240803974999 5.2489670587767137e-15
		-1.2483795637365595e-14 -2.4431689118676552 -2.4431689118676609
		-1.2463024444085248e-14 1.0237963850203097e-14 -2.2091240803975016
		-1.2483795637365595e-14 2.443168911867676 -2.4431689118676623
		-1.2533941733889674e-14 2.2091240803975212 4.8331882054957473e-15
		-1.2584087830413757e-14 2.443168911867676 2.4431689118676729
		-1.2604859023694099e-14 1.0594523156924563e-14 2.2091240803975087
		-1.2584087830413757e-14 -2.4431689118676552 2.4431689118676712
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe03_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "D5F4DAE9-4FF4-E19D-83E5-8482B6B57E8A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_4_ctl" -p "rtLegQd1_toe03_4_ctl_ofs";
	rename -uid "C2759E67-434F-9193-D1D7-53BDB4613975";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_4_ctlShape1" -p "rtLegQd1_toe03_4_ctl";
	rename -uid "7BBFE908-49D5-DC42-63F2-71AA710CACD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4261000811726083e-14 2.4431689118676689 2.4431689118676685
		-1.4281772005006427e-14 3.4890957993235618e-15 2.2091240803975043
		-1.4261000811726083e-14 -2.4431689118676623 2.4431689118676667
		-1.4210854715202002e-14 -2.209124080397507 8.5779688932004985e-16
		-1.4160708618677921e-14 -2.4431689118676623 -2.4431689118676654
		-1.4139937425397578e-14 3.132536492602096e-15 -2.2091240803975061
		-1.4160708618677921e-14 2.4431689118676689 -2.4431689118676667
		-1.4210854715202002e-14 2.2091240803975136 4.4201803603908343e-16
		-1.4261000811726083e-14 2.4431689118676689 2.4431689118676685
		-1.4281772005006427e-14 3.4890957993235618e-15 2.2091240803975043
		-1.4261000811726083e-14 -2.4431689118676623 2.4431689118676667
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "82C7C467-4ECE-2838-0B4F-B7A3C7A5F967";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "0EEAB33C-4A67-38F1-5874-CBABBFE6B9DE";
	setAttr ".t" -type "double3" 6.5445403003155925e-14 177.69522632701424 -53.446169499373319 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "DE2093E1-4B3E-5362-38F5-55B421518BC7";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "BC56533F-43FE-9098-3ADF-BB9E7937F939";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "D97BB15F-4742-B885-CC3E-C9BF2038DC78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.8326462169581981 84.318216773080366 15.330584867832792
		3.8326462169581981 94.597689869094012 15.330584867832792
		3.8326462169581981 157.49081668662902 -15.330584867832792
		3.8326462169581981 84.318216773080366 -15.330584867832792
		3.8326462169581981 84.318216773080366 15.330584867832792
		-3.8326462169581981 84.318216773080366 15.330584867832792
		-3.8326462169581981 84.318216773080366 -15.330584867832792
		3.8326462169581981 84.318216773080366 -15.330584867832792
		3.8326462169581981 157.49081668662902 -15.330584867832792
		-3.8326462169581981 157.49081668662902 -15.330584867832792
		-3.8326462169581981 84.318216773080366 -15.330584867832792
		-3.8326462169581981 157.49081668662902 -15.330584867832792
		-3.8326462169581981 94.597689869094012 15.330584867832792
		-3.8326462169581981 84.318216773080366 15.330584867832792
		3.8326462169581981 84.318216773080366 15.330584867832792
		3.8326462169581981 94.597689869094012 15.330584867832792
		-3.8326462169581981 94.597689869094012 15.330584867832792
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "BA2A07AE-48D6-0932-C074-64ADE984A91D";
	setAttr ".t" -type "double3" -6.5445403003155925e-14 0.7936940591402788 24.507648940632826 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "5883C2B7-4B89-129B-6AB1-40B92E45A4A9";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "1AA72DD1-4329-D551-338A-AB83AEF49615";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.03967355644582 36.039673556445827 2.2067935431608444e-15
		3.1208773580954405e-15 50.967795127024651 3.1208773580954405e-15
		-36.03967355644582 36.03967355644582 2.206793543160844e-15
		-50.967795127024679 2.6421794996231236e-15 1.6178683334931066e-31
		-36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		-5.1054788963452623e-15 -50.967795127024687 -3.1208773580954429e-15
		36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		50.967795127024679 -6.9504602258739874e-15 -4.2559294341087842e-31
		36.03967355644582 36.039673556445827 2.2067935431608444e-15
		3.1208773580954405e-15 50.967795127024651 3.1208773580954405e-15
		-36.03967355644582 36.03967355644582 2.206793543160844e-15
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "BA55BCB8-4707-97C1-0F3B-3B940B1E9FEC";
	setAttr ".t" -type "double3" 6.5474221096900608e-14 -0.7936940591402788 -24.507648940632841 ;
	setAttr ".r" -type "double3" -2.9576202429737837 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "B39B28B6-456E-8B8A-6AFC-98B396670145";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "64E78CCD-4764-332A-9013-CB85805BD799";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.0903847917846436e-06 7.3267290648552033 -1.5677499583115289
		-1.3297444606865232e-06 7.8289350596418723 -2.8798461720065802
		-1.4021201759545097e-06 7.2065124192499797 -3.8387675379390438
		-1.2939866292429817e-06 6.478238353149969 -4.1164788910224157
		-1.1416396624664347e-06 5.4521890982195469 -4.1265308899786168
		4.7271396396580389e-07 -5.4204033630397026 -4.2330489089186081
		6.2506093074504076e-07 -6.4464526179700492 -4.243100907874731
		7.3319447728469678e-07 -7.1747266840700945 -3.979659064987028
		9.951233373302184e-07 -7.8289350596418723 -3.0042693397093276
		1.0900682435267819e-06 -7.3585148000350653 -1.6844443527574375
		1.4021201762837228e-06 -1.3472079271555091 6.5270043597632155
		1.3352254481845773e-06 -0.67531879265952643 7.2062923797344958
		1.254937439032791e-06 -0.0023826112552709213 7.4850056445140822
		1.0910031741350036e-06 0.6770927857685024 7.2224063995654433
		9.1367562819424788e-07 1.3576152297006567 6.5592323994251558
		-1.0903847917846436e-06 7.3267290648552033 -1.5677499583115289
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "42DA0F24-47FA-E47B-C304-FC97D32DE6CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -2.9576202429737837 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9576202429737837 0 0 ;
	setAttr ".radi" 6.1322339471331171;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "2058A657-40E2-FE22-D145-B88352E23981";
	setAttr ".t" -type "double3" 0 -2.3331103105269051 -31.468254938144582 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "ABEA7D3F-4C89-D7FE-7B67-4D9EB597E929";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "709DC1AF-4684-F512-401C-2F85C5FA8943";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		18.365991148939667 27.129429583146205 0
		14.841204968840138 29.649806293178653 -5.6900185708151518
		14.841204968840138 29.649806293178653 -3.5247861800995328
		12.615024223514119 31.218665538030038 -3.5247861800995328
		9.832298291856592 32.451340658984698 -3.5247861800995328
		6.6785422359780613 33.459893030674884 -3.5247861800995328
		3.5247861800995328 34.020199903836115 -3.5247861800995328
		0 34.132261278468334 -3.5247861800995328
		-3.5247861800995328 34.020199903836115 -3.5247861800995328
		-6.6785422359780613 33.459893030674884 -3.5247861800995328
		-9.832298291856592 32.451340658984698 -3.5247861800995328
		-12.615024223514119 31.218665538030038 -3.5247861800995328
		-14.841204968840138 29.649806293178653 -3.5247861800995328
		-14.841204968840138 29.649806293178653 -5.6900185708151518
		-18.365991148939667 27.129429583146205 0
		-14.841204968840138 29.649806293178653 5.6900185708151518
		-14.841204968840138 29.649806293178653 3.5247861800995328
		-12.615024223514119 31.218665538030038 3.5247861800995328
		-9.832298291856592 32.451340658984698 3.5247861800995328
		-6.6785422359780613 33.459893030674884 3.5247861800995328
		-3.5247861800995328 34.020199903836115 3.5247861800995328
		0 34.132261278468334 3.5247861800995328
		3.5247861800995328 34.020199903836115 3.5247861800995328
		6.6785422359780613 33.459893030674884 3.5247861800995328
		9.832298291856592 32.451340658984698 3.5247861800995328
		12.615024223514119 31.218665538030038 3.5247861800995328
		14.841204968840138 29.649806293178653 3.5247861800995328
		14.841204968840138 29.649806293178653 5.6900185708151518
		18.365991148939667 27.129429583146205 0
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "1E5308F6-457F-89AD-C99D-4AA40385E5F8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 6.5445403003155925e-14 -0.7936940591402788 -24.507648940632826 ;
	setAttr ".r" -type "double3" -2.9576202429735368 1.5259566084562031e-16 -1.2618321037030463e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 30.661169735665585;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "ECBE7A71-4776-CCBC-B7D0-B79F73FA8DD4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -6.5445403003155925e-14 -26.065604961081789 150.07563585704406 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 30.661169735665585;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "D8E1F1B4-4CF5-3C2E-F527-3EB8D6A7BAF6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2570180258346784e-14 20.325110786942844 -73.758052640043744 ;
	setAttr ".r" -type "double3" 9.8686705175636416 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "49CDFAAA-4435-3636-6F3D-7D8452A0A813";
	setAttr -k off ".v";
createNode ikEffector -n "effector46" -p "spineQd0_two_ikj";
	rename -uid "4D37D041-4AA7-FACE-5BA8-7B9C41EE0ADA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "A2F66A49-4C75-13C7-6C88-589C0A9154D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2570180258346784e-14 -2.5887613120578408 52.004471112366552 ;
	setAttr ".r" -type "double3" 6.9110502745901083 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "3471E881-4094-A437-F120-3CA49622620F";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C1DC3B01-47B4-2977-2C5E-0390BD2A23C7";
	setAttr ".t" -type "double3" -3.2875222744809142e-14 -1.795067252917562 76.512120052999379 ;
	setAttr ".r" -type "double3" 6.9110502745901083 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "FBF97110-4C1E-C56E-6957-51A30BD19F5E";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "37F1F1FC-4324-F017-AD6E-74B8A3097B87";
	setAttr ".t" -type "double3" 0 2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "064DCCAA-4979-A9CD-46F6-CAB5608CF19F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "A4BAB45A-4670-6E06-6AD3-D183E162DB5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.03967355644582 36.039673556445827 2.2067935431608444e-15
		-16.160853096718082 125.82204081280359 -13.632721229004035
		-36.03967355644582 36.03967355644582 2.206793543160844e-15
		-50.967795127024679 2.6421794996231236e-15 1.6178683334931066e-31
		-36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		-5.1054788963452623e-15 -50.967795127024687 -3.1208773580954429e-15
		36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		50.967795127024679 -6.9504602258739874e-15 -4.2559294341087842e-31
		36.03967355644582 36.039673556445827 2.2067935431608444e-15
		-16.160853096718082 125.82204081280359 -13.632721229004035
		-36.03967355644582 36.03967355644582 2.206793543160844e-15
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "A952BED0-4AEC-1966-324A-DFBB522E9A90";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 6.9110502745901083 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.9110502745901083 0 0 ;
	setAttr ".radi" 6.1322339471331171;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "08528F7D-415D-AEF8-AA7F-30BB0816566A";
	setAttr ".t" -type "double3" -6.5445403003155913e-14 -18.287388851246931 151.22064557753529 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "CC5BE685-44A3-506D-33EB-FE8C4DB231BE";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "FAB2FD39-4174-FF04-FAE4-00B59B10E1A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.03967355644582 36.039673556445827 2.2067935431608444e-15
		3.1208773580954405e-15 50.967795127024651 3.1208773580954405e-15
		-36.03967355644582 36.03967355644582 2.206793543160844e-15
		-50.967795127024679 2.6421794996231236e-15 1.6178683334931066e-31
		-36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		-5.1054788963452623e-15 -50.967795127024687 -3.1208773580954429e-15
		36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		50.967795127024679 -6.9504602258739874e-15 -4.2559294341087842e-31
		36.03967355644582 36.039673556445827 2.2067935431608444e-15
		3.1208773580954405e-15 50.967795127024651 3.1208773580954405e-15
		-36.03967355644582 36.03967355644582 2.206793543160844e-15
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "ADB494CA-4780-3F81-6CD8-FBB62D114944";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "084A5E4B-43FB-FA1F-360B-7DBCCD1A7B0B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "9E5B539C-4394-7F97-D8A2-6C901EB8F287";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.0903847917846436e-06 -7.3267290648552033 1.5677499583115297
		-1.3297444606865232e-06 -7.8289350596418723 2.8798461720065811
		-1.4021201759545097e-06 -7.2065124192499797 3.8387675379390442
		-1.2939866292429817e-06 -6.478238353149969 4.1164788910224166
		-1.1416396624664347e-06 -5.4521890982195469 4.1265308899786177
		4.7271396396580389e-07 5.4204033630397035 4.2330489089186072
		6.2506093074504076e-07 6.4464526179700492 4.2431009078747302
		7.3319447728469678e-07 7.1747266840700945 3.9796590649870276
		9.951233373302184e-07 7.8289350596418723 3.0042693397093263
		1.0900682435267819e-06 7.3585148000350653 1.6844443527574366
		1.4021201762837228e-06 1.3472079271555084 -6.5270043597632155
		1.3352254481845773e-06 0.67531879265952555 -7.2062923797344958
		1.254937439032791e-06 0.002382611255270005 -7.4850056445140822
		1.0910031741350036e-06 -0.67709278576850329 -7.2224063995654433
		9.1367562819424788e-07 -1.3576152297006576 -6.5592323994251558
		-1.0903847917846436e-06 -7.3267290648552033 1.5677499583115297
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "BFA54FC6-4DC0-FBB5-BDDD-D2817108D717";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 6.1322339471331171;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "FCAFAA87-42F4-D9E0-183A-A9B1ADA96F0D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2621774483536189e-29 2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.9576202429737979 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "32E048A9-46CF-88BE-6000-4CAE96E4F83E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "C2C908E6-4712-D313-61BA-D8B0B01B041D";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "C1A48A14-4341-D4B9-9165-19B210C80604";
	setAttr ".t" -type "double3" 5.4537835835963271e-14 -3.7123365392342862 10.807114049123811 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "7FC79772-42AB-75D7-4996-7FA0F8774612";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5BAB6A4A-4BFF-43FE-710C-A889A20C18D9";
	setAttr ".t" -type "double3" -6.5445403003155925e-14 51.719605887193751 246.66312557095688 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "83EB001A-4481-18F5-8797-61BC80C6E533";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "92313E9E-4CF4-BDCC-5B06-D58AF932F3A4";
	setAttr ".t" -type "double3" 16.151869288833751 -164.58738906915292 -48.270194144885274 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "31E7FCF9-4DC3-19A1-55FD-259450095441";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "556BCDC1-4602-E098-4FF0-70B49D6E54CD";
	setAttr ".t" -type "double3" 30.63190677073052 -77.69614051609156 37.423644490346916 ;
	setAttr ".r" -type "double3" -0.7658793123615476 14.235497131107536 7.1036069008889688e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "B8AAACCA-47B8-8698-C4D7-9992FB54F9F9";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "BDFF1B87-4627-7C59-ACA7-F097C7E2CA12";
	setAttr ".t" -type "double3" 30.744220610220513 -169.02548162559305 110.91674865615386 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "11DBC219-4D91-0DE7-C445-7ABC16FA16B5";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "BB40B447-4D47-2A69-6D8C-27A74A172215";
	setAttr ".t" -type "double3" 23.614142280088601 -68.069453402773263 62.818043124743745 ;
	setAttr ".r" -type "double3" -175.02928920705818 -1.4392480865789703 179.99999313763985 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "DF7225C7-4074-1A91-850C-0E9220C504BE";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CAE56AD8-40AC-9824-DFD4-128930DBB637";
	setAttr ".t" -type "double3" -6.5445403003155913e-14 49.195116008410338 239.76701127506769 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "C24A56A1-443B-E1F1-E1C1-9182A724E791";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "44A07415-4B54-0952-2BA2-408DCCE76D44";
	setAttr ".t" -type "double3" -1.0907567167192642e-14 -21.999725390481217 162.0277596266591 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "8022DE56-4760-3FDB-3B68-BDAA9BFB4FDE";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CFE18625-420F-DE76-066A-52879EFC3E57";
	setAttr ".t" -type "double3" -16.151869288832501 -164.58738906915289 -48.270194144885245 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "23F2F5F0-448C-D955-823D-7FBAA0C2C35E";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D1072F69-4B64-29C7-1017-5DB06E8E3EE8";
	setAttr ".t" -type "double3" -30.631906770732339 -77.696140516091546 37.423644490346504 ;
	setAttr ".r" -type "double3" -0.76588105919531957 -14.235497039063343 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "E5D3E4B9-4FFD-74B2-D59C-A28AC9792844";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 -2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B5E8CB87-470F-F2BE-6DBC-54B9078D0FEC";
	setAttr ".t" -type "double3" -30.744220610221578 -169.02548162559316 110.91674865615386 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "A0415708-4DC2-7F8D-741B-3299A808D558";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "2C2981C1-4AEA-AF7C-D080-F8976E031BB7";
	setAttr ".t" -type "double3" -23.614142280087115 -68.069453402773291 62.818043124743788 ;
	setAttr ".r" -type "double3" 4.9707106205800633 178.56075131676488 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "9AC008DF-4A55-277A-930D-82A7BC870962";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 3.5527136788005009e-15 ;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "224713C9-4D69-CF64-4B39-F69D45C8DF4F";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "stretchMin" -ln "stretchMin" -dv 0.9 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchMax" -ln "stretchMax" -dv 1.1 -min 0 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "volumeScale" -ln "volumeScale" -dv 1 -at "double";
	addAttr -ci true -sn "volumeGraph" -ln "volumeGraph" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".stretchy";
	setAttr -k on ".moduleScale";
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "spineQd0_settingShape1" -p "spineQd0_setting";
	rename -uid "D0671875-46DE-2D8C-B72F-C29184FFF38A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-11.497938650874595 15.330584867832792 2.8624096701354623e-16
		-11.277008915946762 15.330584867832792 -2.2431365045947356
		-10.622710134267908 15.330584867832792 -4.4000707620833781
		-9.5601868095462219 15.330584867832792 -6.3879123167045044
		-8.1302703876227884 15.330584867832792 -8.1302703876227884
		-6.3879123167045044 15.330584867832792 -9.5601868095462219
		-4.4000707620833781 15.330584867832792 -10.622710134267908
		-2.2431365045947356 15.330584867832792 -11.277008915946762
		7.0404568856575597e-16 15.330584867832792 -11.497938650874595
		2.2431365045947356 15.330584867832792 -11.277008915946762
		4.4000707620833781 15.330584867832792 -10.622710134267908
		6.3879123167045044 15.330584867832792 -9.5601868095462219
		8.1302703876227884 15.330584867832792 -8.1302703876227884
		9.5601868095462219 15.330584867832792 -6.3879123167045044
		10.622710134267908 15.330584867832792 -4.4000707620833781
		11.277008915946762 15.330584867832792 -2.2431365045947356
		11.497938650874595 15.330584867832792 -1.2436366230886023e-15
		11.06032494083569 15.330584867832792 -2.200035243975579
		9.8141045192486924 15.330584867832792 -4.0651351938113942
		7.9490042952806572 15.330584867832792 -5.3113550671339542
		5.7489693254372973 15.330584867832792 -5.7489693254372973
		3.5489340814617183 15.330584867832792 -5.3113550671339542
		1.6838341316259033 15.330584867832792 -4.0651351938113942
		0.43761425830334355 15.330584867832792 -2.200035243975579
		0 15.330584867832792 -1.2436366230886023e-15
		-0.43761425830334355 15.330584867832792 2.200035243975579
		-1.6838341316259033 15.330584867832792 4.0651351938113942
		-3.5489340814617183 15.330584867832792 5.3113550671339542
		-5.7489693254372973 15.330584867832792 5.7489693254372973
		-7.9490042952806572 15.330584867832792 5.3113550671339542
		-9.8141045192486924 15.330584867832792 4.0651351938113942
		-11.06032494083569 15.330584867832792 2.200035243975579
		-11.497938650874595 15.330584867832792 2.8624096701354623e-16
		-11.277008915946762 15.330584867832792 2.2431365045947356
		-10.622710134267908 15.330584867832792 4.4000707620833781
		-9.5601868095462219 15.330584867832792 6.3879123167045044
		-8.1302703876227884 15.330584867832792 8.1302703876227884
		-6.3879123167045044 15.330584867832792 9.5601868095462219
		-4.4000707620833781 15.330584867832792 10.622710134267908
		-2.2431365045947356 15.330584867832792 11.277008915946762
		-1.3423094998621803e-15 15.330584867832792 11.497938650874595
		2.2431365045947356 15.330584867832792 11.277008915946762
		4.4000707620833781 15.330584867832792 10.622710134267908
		6.3879123167045044 15.330584867832792 9.5601868095462219
		8.1302703876227884 15.330584867832792 8.1302703876227884
		9.5601868095462219 15.330584867832792 6.3879123167045044
		10.622710134267908 15.330584867832792 4.4000707620833781
		11.277008915946762 15.330584867832792 2.2431365045947356
		11.497938650874595 15.330584867832792 -1.2436366230886023e-15
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "5134C0A8-4B5B-DF48-A355-6ABCD851674A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "C6E9C133-44FE-D7C1-0519-A2888FB20BE0";
	setAttr ".t" -type "double3" 0 166.34708309515128 -75.411135856353795 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "DAFF7B59-4B8F-D912-5E9C-5295F5938ABC";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "ikCtl" -ln "ikCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkCtl" -ln "fkCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "subCtl" -ln "subCtl" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".stretchy";
	setAttr -k on ".moduleScale";
	setAttr -cb on ".ikCtl";
	setAttr -cb on ".fkCtl";
	setAttr -cb on ".subCtl";
createNode nurbsCurve -n "tail0_settingShape1" -p "tail0_setting";
	rename -uid "8440ED71-4327-7A33-F3CB-8396D8015A4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-2.6403629319268678 -4.0249111350111243e-33 6.5731785657421305e-17
		-2.5896290829843442 3.1541344362140681e-17 -0.51510924330192265
		-2.4393772594178347 6.1870575513481608e-17 -1.010423180260789
		-2.1953815932303624 8.9822151328029553e-17 -1.4669070174715801
		-1.8670185334820006 1.1432191062581744e-16 -1.8670185334820006
		-1.4669070174715801 1.3442835359796764e-16 -2.1953815932303624
		-1.010423180260789 1.4936878532962708e-16 -2.4393772594178347
		-0.51510924330192265 1.5856905392045201e-16 -2.5896290829843442
		1.6167560072435673e-16 1.6167560072435673e-16 -2.6403629319268678
		0.51510924330192265 1.5856905392045201e-16 -2.5896290829843442
		1.010423180260789 1.4936878532962708e-16 -2.4393772594178347
		1.4669070174715801 1.3442835359796764e-16 -2.1953815932303624
		1.8670185334820006 1.1432191062581744e-16 -1.8670185334820006
		2.1953815932303624 8.9822151328029553e-17 -1.4669070174715801
		2.4393772594178347 6.1870575513481608e-17 -1.010423180260789
		2.5896290829843442 3.1541344362140681e-17 -0.51510924330192265
		2.6403629319268678 1.7487108830365998e-32 -2.8558615070885584e-16
		2.5398702215746671 3.0935287756740804e-17 -0.5052115586548156
		2.2536907327044342 5.7160958807399961e-17 -0.93350926674100032
		1.8253929616670916 7.4684392664813539e-17 -1.2196886297089173
		1.3201814659634339 8.0837800362178367e-17 -1.3201814659634339
		0.81496990730861829 7.4684392664813539e-17 -1.2196886297089173
		0.38667219922243368 5.7160958807399961e-17 -0.93350926674100032
		0.10049283625451658 3.0935287756740804e-17 -0.5052115586548156
		0 1.7487108830365998e-32 -2.8558615070885584e-16
		-0.10049283625451658 -3.0935287756740804e-17 0.5052115586548156
		-0.38667219922243368 -5.7160958807399961e-17 0.93350926674100032
		-0.81496990730861829 -7.4684392664813539e-17 1.2196886297089173
		-1.3201814659634339 -8.0837800362178367e-17 1.3201814659634339
		-1.8253929616670916 -7.4684392664813539e-17 1.2196886297089173
		-2.2536907327044342 -5.7160958807399961e-17 0.93350926674100032
		-2.5398702215746671 -3.0935287756740804e-17 0.5052115586548156
		-2.6403629319268678 -4.0249111350111243e-33 6.5731785657421305e-17
		-2.5896290829843442 -3.1541344362140681e-17 0.51510924330192265
		-2.4393772594178347 -6.1870575513481608e-17 1.010423180260789
		-2.1953815932303624 -8.9822151328029553e-17 1.4669070174715801
		-1.8670185334820006 -1.1432191062581744e-16 1.8670185334820006
		-1.4669070174715801 -1.3442835359796764e-16 2.1953815932303624
		-1.010423180260789 -1.4936878532962708e-16 2.4393772594178347
		-0.51510924330192265 -1.5856905392045201e-16 2.5896290829843442
		-3.0824518674395641e-16 -1.6167560072435673e-16 2.6403629319268678
		0.51510924330192265 -1.5856905392045201e-16 2.5896290829843442
		1.010423180260789 -1.4936878532962708e-16 2.4393772594178347
		1.4669070174715801 -1.3442835359796764e-16 2.1953815932303624
		1.8670185334820006 -1.1432191062581744e-16 1.8670185334820006
		2.1953815932303624 -8.9822151328029553e-17 1.4669070174715801
		2.4393772594178347 -6.1870575513481608e-17 1.010423180260789
		2.5896290829843442 -3.1541344362140681e-17 0.51510924330192265
		2.6403629319268678 1.7487108830365998e-32 -2.8558615070885584e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "EBF915F3-4552-801A-2697-28AA037D41B1";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "D61464B7-4571-0346-9B57-2FB517E87C3D";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "BCB48CB3-487D-8308-96E6-F7BD010AB506";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754536e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		-4.9430318578104151 1.9193658649887664e-15 -6.4762970041869844e-32
		-5.4667195349211886 -5.4667195349211886 -1.1220454064253576e-16
		-4.9514688189115305e-16 -4.9430318578104053 -1.5868118313651762e-16
		5.4667195349211886 -5.4667195349211912 -1.1220454064253574e-16
		4.9430318578104151 9.8903871143119684e-16 -9.4628327514183727e-32
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754536e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		;
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "EDF41778-4171-1A7B-634A-AC862947327C";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "B6F20799-4989-05B6-C53C-0A915D980BD1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "DEAE122C-40AC-5610-D76E-DC921EEABDF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211744 2.9331784864251547e-14
		3.0267340713754462e-16 4.9430318578103805 2.9378261506745528e-14
		-5.4667195349211886 5.4667195349211708 2.9331784864251547e-14
		-4.9430318578104151 -1.8997980761211736e-14 2.9219580323609014e-14
		-5.4667195349211886 -5.4667195349212099 2.9107375782966474e-14
		-4.9514688189115384e-16 -4.9430318578104266 2.9060899140472493e-14
		5.4667195349211886 -5.4667195349212125 2.9107375782966474e-14
		4.9430318578104151 -1.9928307914769308e-14 2.9219580323609014e-14
		5.4667195349211886 5.4667195349211744 2.9331784864251547e-14
		3.0267340713754462e-16 4.9430318578103805 2.9378261506745528e-14
		-5.4667195349211886 5.4667195349211708 2.9331784864251547e-14
		;
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "4AFD6717-41D7-FDF7-54D1-20A5EEBF8F3E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "0F2AC3C9-4616-4B4D-E481-82A040D16330";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "FEC2AFA3-435A-E7AD-1DEF-8F9494EB9670";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211877 -1.4098650174559467e-14
		3.0267340713754496e-16 4.9430318578103938 -1.4052173532065486e-14
		-5.4667195349211886 5.4667195349211841 -1.4098650174559469e-14
		-4.9430318578104151 -5.5849969392147367e-15 -1.4210854715202004e-14
		-5.4667195349211886 -5.4667195349211966 -1.432305925584454e-14
		-4.9514688189115344e-16 -4.9430318578104133 -1.4369535898338521e-14
		5.4667195349211886 -5.4667195349211992 -1.432305925584454e-14
		4.9430318578104151 -6.5153240927723069e-15 -1.4210854715202004e-14
		5.4667195349211886 5.4667195349211877 -1.4098650174559467e-14
		3.0267340713754496e-16 4.9430318578103938 -1.4052173532065486e-14
		-5.4667195349211886 5.4667195349211841 -1.4098650174559469e-14
		;
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "55117277-4D67-3D20-B3FF-2EAD93E79F5C";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "B9047E43-4587-A3A3-AA0B-58A51E78B1EF";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "30991FBB-4CC5-02A7-9FBB-10B908C658A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754536e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		-4.9430318578104151 1.9193658649887664e-15 -6.4762970041869844e-32
		-5.4667195349211886 -5.4667195349211886 -1.1220454064253576e-16
		-4.9514688189115305e-16 -4.9430318578104053 -1.5868118313651762e-16
		5.4667195349211886 -5.4667195349211912 -1.1220454064253574e-16
		4.9430318578104151 9.8903871143119684e-16 -9.4628327514183727e-32
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754536e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		;
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "2DC4E504-4023-DF0C-24C0-F3B86A0CD965";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "29A98CFA-400D-E387-7757-B8BDF5A1D0F2";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "8C0DB5DB-40B8-218B-F20B-E4A4A01A4ED6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754536e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		-4.9430318578104151 1.9193658649887664e-15 -6.4762970041869844e-32
		-5.4667195349211886 -5.4667195349211886 -1.1220454064253576e-16
		-4.9514688189115305e-16 -4.9430318578104053 -1.5868118313651762e-16
		5.4667195349211886 -5.4667195349211912 -1.1220454064253574e-16
		4.9430318578104151 9.8903871143119684e-16 -9.4628327514183727e-32
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754536e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		;
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "5C1FECE2-42D9-D720-89E3-6A9BEAA6F051";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "965389BE-4065-4696-1A1C-7496FCA49B6E";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "7DF804F1-4205-5083-A299-528D5EAA7153";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754575e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		-4.9430318578104151 1.9193658649887664e-15 -6.4762970041869844e-32
		-5.4667195349211886 -5.4667195349211886 -1.1220454064253576e-16
		-4.9514688189115266e-16 -4.9430318578104053 -1.5868118313651762e-16
		5.4667195349211886 -5.4667195349211912 -1.1220454064253574e-16
		4.9430318578104151 9.8903871143119684e-16 -9.4628327514183727e-32
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754575e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		;
createNode transform -n "tail0_6_fkc_ofs" -p "tail0_5_fkc";
	rename -uid "AE1DA737-4EF7-B9E0-AC4D-D6A804EAA93E";
	setAttr -cb on ".ro";
createNode transform -n "tail0_6_fkc" -p "tail0_6_fkc_ofs";
	rename -uid "24C0434F-4852-784B-EE52-D090342C04E2";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_6_fkcShape1" -p "tail0_6_fkc";
	rename -uid "51FDF6EA-429B-3E18-6E70-2EBBF173B4CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754388e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		-4.9430318578104151 1.9193658649887664e-15 -6.4762970041869844e-32
		-5.4667195349211886 -5.4667195349211886 -1.1220454064253576e-16
		-4.9514688189115453e-16 -4.9430318578104053 -1.5868118313651762e-16
		5.4667195349211886 -5.4667195349211912 -1.1220454064253574e-16
		4.9430318578104151 9.8903871143119684e-16 -9.4628327514183727e-32
		5.4667195349211886 5.4667195349211957 1.1220454064253579e-16
		3.0267340713754388e-16 4.9430318578104009 1.5868118313651745e-16
		-5.4667195349211886 5.4667195349211912 1.1220454064253574e-16
		;
createNode transform -n "tail0_6_ofs_ctl" -p "tail0_6_fkc";
	rename -uid "61EA89CF-4EA8-A0CF-51EC-6D9AF006E80F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_6_ofs_ctlShape1" -p "tail0_6_ofs_ctl";
	rename -uid "8D853032-489C-54EF-24C2-71B631E958C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182816683 13.195497841730615 0.40834668630819443
		0.48787534418256162 13.397582417309678 0.40834668630819443
		0.37340364258295755 13.568901484313585 0.40834668630819443
		0.20208457557905077 13.68337318591319 0.40834668630819443
		-1.2827961114311665e-14 13.720944141865235 0.40834668630819443
		-0.20208457557907641 13.68337318591319 0.40834668630819443
		-0.3734036425829832 13.568901484313585 0.40834668630819443
		-0.48787534418258727 13.397582417309678 0.40834668630819443
		-0.52545862182819258 13.195497816834774 0.40834668630819443
		-0.48787534418258727 12.993413266151553 0.40834668630819443
		-0.3734036425829832 12.822094199147646 0.40834668630819443
		-0.20208457557907641 12.707622497548041 0.40834668630819443
		2.0983690483845613e-08 12.670051541595996 0.40477374722444037
		0.20208457557905077 12.707622497548041 0.40834668630819443
		0.37340364258295755 12.822094199147646 0.40834668630819443
		0.48787534418256162 12.993413266151553 0.40834668630819443
		0.52545862182816683 13.195497841730615 0.40834668630819443
		0.48546029224497644 13.196865183585354 0.20726685682677928
		0.37155538854909137 13.198024380351523 0.036799394872000513
		0.20108440611043857 13.198798929049618 -0.077103044485172745
		2.0983690483845613e-08 13.199070921633725 -0.11710031792320102
		-0.20108440611046421 13.198798929049618 -0.077103044485172745
		-0.37155538854911702 13.198024380351523 0.036799394872000513
		-0.48546029224500209 13.196865183585354 0.20726685682677928
		-0.52545862182819258 13.195497816834774 0.40834668630819443
		-0.48546029224500209 13.194130450589103 0.60942581169283483
		-0.37155538854911702 13.192971253822932 0.77989362569600096
		-0.20108440611046421 13.192196705124839 0.89379571300478688
		2.0983690483845613e-08 13.191924726622668 0.93379298644281494
		0.20108440611043857 13.192196705124839 0.89379571300478688
		0.37155538854909137 13.192971253822932 0.77989362569600096
		0.48546029224497644 13.194130450589103 0.60942581169283483
		0.52545862182816683 13.195497841730615 0.40834668630819443
		0.48546029224497644 13.196865183585354 0.20726685682677928
		0.37155538854909137 13.198024380351523 0.036799394872000513
		0.20108440611043857 13.198798929049618 -0.077103044485172745
		2.0983690483845613e-08 13.199070921633725 -0.11710031792320102
		2.0983690483845613e-08 13.399878476892322 -0.075735336500111661
		2.0983690483845613e-08 13.569571080346426 0.039326046148392579
		2.0983690483845613e-08 13.682314224363882 0.21056801455545815
		-1.2827961114311665e-14 13.720944141865235 0.40834668630819443
		2.0983690483845613e-08 13.679579512490534 0.61272732146990105
		2.0983690483845613e-08 13.56451812984203 0.78241957287561825
		2.0983690483845613e-08 13.393276513483352 0.89516306894146047
		2.0983690483845613e-08 13.191924726622668 0.93379298644281494
		2.0983690483845613e-08 12.991117206568909 0.89242800501972575
		2.0983690483845613e-08 12.821424603114805 0.77736662237122145
		2.0983690483845613e-08 12.708681459097349 0.60612465396415593
		2.0983690483845613e-08 12.670051541595996 0.40477374722444037
		2.0983690483845613e-08 12.711416170970697 0.203965347049713
		2.0983690483845613e-08 12.826477553619201 0.034273095643995888
		2.0983690483845613e-08 12.997719169977879 -0.078470400421846442
		2.0983690483845613e-08 13.199070921633725 -0.11710031792320102
		;
createNode joint -n "tail0_6_ofs_jnt" -p "tail0_6_ofs_ctl";
	rename -uid "72486B88-4126-EA60-2FD6-1393A8329887";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -1.7725043580547128 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.772504358054712 2.3156321537861498e-14 5.6416502636283449e-14 ;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "576F9F54-4487-C54A-73D2-9DB96276B009";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "962B057A-49C7-DF9F-BB19-F09529BA7797";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182817982 4.0808986457753074 12.555244981689741
		0.48787534418257461 4.282983221354371 12.555244981689741
		0.37340364258297054 4.4543022883582779 12.555244981689741
		0.20208457557906373 4.5687739899578821 12.555244981689741
		1.3908940959282135e-16 4.6063449459099282 12.555244981689741
		-0.20208457557906345 4.5687739899578821 12.555244981689741
		-0.37340364258297021 4.4543022883582779 12.555244981689741
		-0.48787534418257428 4.282983221354371 12.555244981689741
		-0.5254586218281796 4.0808986208794664 12.555244981689741
		-0.48787534418257428 3.8788140701962437 12.555244981689741
		-0.37340364258297021 3.7074950031923368 12.555244981689741
		-0.20208457557906345 3.5930233015927331 12.555244981689741
		2.0983703450896138e-08 3.5554523456406866 12.551672042605986
		0.20208457557906373 3.5930233015927331 12.555244981689741
		0.37340364258297054 3.7074950031923368 12.555244981689741
		0.48787534418257461 3.8788140701962437 12.555244981689741
		0.52545862182817982 4.0808986457753074 12.555244981689741
		0.48546029224498943 4.0822659876300458 12.354165152208326
		0.37155538854910436 4.0834251843962157 12.183697690253547
		0.20108440611045153 4.0841997330943087 12.069795250896373
		2.0983703450896138e-08 4.0844717256784167 12.029797977458346
		-0.20108440611045125 4.0841997330943087 12.069795250896373
		-0.37155538854910403 4.0834251843962157 12.183697690253547
		-0.4854602922449891 4.0822659876300458 12.354165152208326
		-0.5254586218281796 4.0808986208794664 12.555244981689741
		-0.4854602922449891 4.0795312546337952 12.756324107074381
		-0.37155538854910403 4.0783720578676252 12.926791921077548
		-0.20108440611045125 4.0775975091695313 13.040694008386334
		2.0983703450896138e-08 4.0773255306673599 13.080691281824361
		0.20108440611045153 4.0775975091695313 13.040694008386334
		0.37155538854910436 4.0783720578676252 12.926791921077548
		0.48546029224498943 4.0795312546337952 12.756324107074381
		0.52545862182817982 4.0808986457753074 12.555244981689741
		0.48546029224498943 4.0822659876300458 12.354165152208326
		0.37155538854910436 4.0834251843962157 12.183697690253547
		0.20108440611045153 4.0841997330943087 12.069795250896373
		2.0983703450896138e-08 4.0844717256784167 12.029797977458346
		2.0983703450896138e-08 4.2852792809370142 12.071162958881436
		2.0983703450896138e-08 4.4549718843911181 12.18622434152994
		2.0983703450896138e-08 4.567715028408573 12.357466309937005
		1.3908940959282135e-16 4.6063449459099282 12.555244981689741
		2.0983703450896138e-08 4.5649803165352258 12.759625616851448
		2.0983703450896138e-08 4.449918933886722 12.929317868257165
		2.0983703450896138e-08 4.2786773175280439 13.042061364323008
		2.0983703450896138e-08 4.0773255306673599 13.080691281824361
		2.0983703450896138e-08 3.8765180106136006 13.039326300401273
		2.0983703450896138e-08 3.7068254071594962 12.924264917752769
		2.0983703450896138e-08 3.5940822631420413 12.753022949345702
		2.0983703450896138e-08 3.5554523456406866 12.551672042605986
		2.0983703450896138e-08 3.5968169750153884 12.350863642431261
		2.0983703450896138e-08 3.7118783576638927 12.181171391025543
		2.0983703450896138e-08 3.8831199740225713 12.068427894959701
		2.0983703450896138e-08 4.0844717256784167 12.029797977458346
		;
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "714371F4-47F6-BDC1-792D-608E66F4810A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.5777218104420236e-30 0 0 ;
	setAttr ".r" -type "double3" -71.994005682239646 180 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 108.00599431776037 -2.7350221061627128e-15 -180 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "920BE9C9-4E36-F89F-21B9-B7BF3BCF53EA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "543F3A00-474F-181E-FA48-7FBEE8AFD04B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182817971 1.1357512197774866 13.152869628872253
		0.48787534418257444 1.3378357953565503 13.152869628872253
		0.37340364258297037 1.5091548623604569 13.152869628872253
		0.20208457557906359 1.6236265639600611 13.152869628872253
		0 1.6611975199121072 13.152869628872253
		-0.20208457557906359 1.6236265639600611 13.152869628872253
		-0.37340364258297037 1.5091548623604569 13.152869628872253
		-0.48787534418257444 1.3378357953565503 13.152869628872253
		-0.52545862182817971 1.1357511948816457 13.152869628872253
		-0.48787534418257444 0.93366664419842305 13.152869628872253
		-0.37340364258297037 0.76234757719451629 13.152869628872253
		-0.20208457557906359 0.64787587559491211 13.152869628872253
		2.0983703311806727e-08 0.61030491964286604 13.149296689788498
		0.20208457557906359 0.64787587559491211 13.152869628872253
		0.37340364258297037 0.76234757719451629 13.152869628872253
		0.48787534418257444 0.93366664419842305 13.152869628872253
		0.52545862182817971 1.1357512197774866 13.152869628872253
		0.48546029224498927 1.1371185616322248 12.951789799390838
		0.37155538854910419 1.1382777583983947 12.781322337436059
		0.20108440611045139 1.139052307096488 12.667419898078887
		2.0983703311806727e-08 1.1393242996805957 12.627422624640857
		-0.20108440611045139 1.139052307096488 12.667419898078887
		-0.37155538854910419 1.1382777583983947 12.781322337436059
		-0.48546029224498927 1.1371185616322248 12.951789799390838
		-0.52545862182817971 1.1357511948816457 13.152869628872253
		-0.48546029224498927 1.1343838286359742 13.353948754256892
		-0.37155538854910419 1.1332246318698043 13.52441656826006
		-0.20108440611045139 1.132450083171711 13.638318655568845
		2.0983703311806727e-08 1.1321781046695389 13.678315929006873
		0.20108440611045139 1.132450083171711 13.638318655568845
		0.37155538854910419 1.1332246318698043 13.52441656826006
		0.48546029224498927 1.1343838286359742 13.353948754256892
		0.52545862182817971 1.1357512197774866 13.152869628872253
		0.48546029224498927 1.1371185616322248 12.951789799390838
		0.37155538854910419 1.1382777583983947 12.781322337436059
		0.20108440611045139 1.139052307096488 12.667419898078887
		2.0983703311806727e-08 1.1393242996805957 12.627422624640857
		2.0983703311806727e-08 1.3401318549391932 12.668787606063947
		2.0983703311806727e-08 1.5098244583932976 12.783848988712451
		2.0983703311806727e-08 1.6225676024107525 12.955090957119516
		0 1.6611975199121072 13.152869628872253
		2.0983703311806727e-08 1.6198328905374053 13.35725026403396
		2.0983703311806727e-08 1.504771507888901 13.526942515439677
		2.0983703311806727e-08 1.3335298915302229 13.639686011505519
		2.0983703311806727e-08 1.1321781046695389 13.678315929006873
		2.0983703311806727e-08 0.93137058461578004 13.636950947583784
		2.0983703311806727e-08 0.76167798116167551 13.521889564935281
		2.0983703311806727e-08 0.64893483714422062 13.350647596528214
		2.0983703311806727e-08 0.61030491964286604 13.149296689788498
		2.0983703311806727e-08 0.65166954901756791 12.948488289613772
		2.0983703311806727e-08 0.7667309316660722 12.778796038208053
		2.0983703311806727e-08 0.93797254802475027 12.666052542142213
		2.0983703311806727e-08 1.1393242996805957 12.627422624640857
		;
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "3E95F71B-45B6-79BF-999E-C09F5541844C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -85.064747402880158 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 85.064747402880158 0 0 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "15F74A48-4443-7E3E-2701-C3958B44FC98";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "F1552873-41A2-63D1-9DDB-1FB02CAAEA1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182817971 6.6972886288330828 11.376916776061922
		0.48787534418257444 6.8993732044121465 11.376916776061922
		0.37340364258297037 7.0706922714160534 11.376916776061922
		0.20208457557906359 7.1851639730156576 11.376916776061922
		-7.2571624495228559e-32 7.2227349289677036 11.376916776061922
		-0.20208457557906359 7.1851639730156576 11.376916776061922
		-0.37340364258297037 7.0706922714160534 11.376916776061922
		-0.48787534418257444 6.8993732044121465 11.376916776061922
		-0.52545862182817971 6.6972886039372419 11.376916776061922
		-0.48787534418257444 6.4952040532540192 11.376916776061922
		-0.37340364258297037 6.3238849862501123 11.376916776061922
		-0.20208457557906359 6.2094132846505081 11.376916776061922
		2.0983703311806727e-08 6.1718423286984621 11.373343836978167
		0.20208457557906359 6.2094132846505081 11.376916776061922
		0.37340364258297037 6.3238849862501123 11.376916776061922
		0.48787534418257444 6.4952040532540192 11.376916776061922
		0.52545862182817971 6.6972886288330828 11.376916776061922
		0.48546029224498927 6.6986559706878213 11.175836946580507
		0.37155538854910419 6.6998151674539912 11.005369484625728
		0.20108440611045139 6.7005897161520842 10.891467045268556
		2.0983703311806727e-08 6.7008617087361921 10.851469771830526
		-0.20108440611045139 6.7005897161520842 10.891467045268556
		-0.37155538854910419 6.6998151674539912 11.005369484625728
		-0.48546029224498927 6.6986559706878213 11.175836946580507
		-0.52545862182817971 6.6972886039372419 11.376916776061922
		-0.48546029224498927 6.6959212376915707 11.577995901446561
		-0.37155538854910419 6.6947620409254007 11.748463715449729
		-0.20108440611045139 6.6939874922273068 11.862365802758514
		2.0983703311806727e-08 6.6937155137251354 11.902363076196542
		0.20108440611045139 6.6939874922273068 11.862365802758514
		0.37155538854910419 6.6947620409254007 11.748463715449729
		0.48546029224498927 6.6959212376915707 11.577995901446561
		0.52545862182817971 6.6972886288330828 11.376916776061922
		0.48546029224498927 6.6986559706878213 11.175836946580507
		0.37155538854910419 6.6998151674539912 11.005369484625728
		0.20108440611045139 6.7005897161520842 10.891467045268556
		2.0983703311806727e-08 6.7008617087361921 10.851469771830526
		2.0983703311806727e-08 6.9016692639947896 10.892834753253616
		2.0983703311806727e-08 7.0713618674488936 11.00789613590212
		2.0983703311806727e-08 7.1841050114663485 11.179138104309185
		-7.2571624495228559e-32 7.2227349289677036 11.376916776061922
		2.0983703311806727e-08 7.1813702995930013 11.581297411223629
		2.0983703311806727e-08 7.0663089169444975 11.750989662629346
		2.0983703311806727e-08 6.8950673005858194 11.863733158695188
		2.0983703311806727e-08 6.6937155137251354 11.902363076196542
		2.0983703311806727e-08 6.4929079936713761 11.860998094773453
		2.0983703311806727e-08 6.3232153902172721 11.74593671212495
		2.0983703311806727e-08 6.2104722461998172 11.574694743717883
		2.0983703311806727e-08 6.1718423286984621 11.373343836978167
		2.0983703311806727e-08 6.2132069580731644 11.172535436803441
		2.0983703311806727e-08 6.3282683407216682 11.002843185397722
		2.0983703311806727e-08 6.4995099570803463 10.890099689331882
		2.0983703311806727e-08 6.7008617087361921 10.851469771830526
		;
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "FBC76203-49A9-B977-42E9-968F39034A8B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -9.8607613152626476e-32 0 0 ;
	setAttr ".r" -type "double3" -59.515808586721874 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 59.515808586721874 0 0 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "9E7D4F98-4F94-4958-8163-3388B86B1B3C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "FD6AE93F-483B-68F5-ACED-EBBB0B8F46ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182817971 8.3190040605592923 10.250955162702354
		0.48787534418257444 8.5210886361383551 10.250955162702354
		0.37340364258297037 8.692407703142262 10.250955162702354
		0.20208457557906359 8.806879404741867 10.250955162702354
		-5.8057299596182847e-31 8.8444503606939122 10.250955162702354
		-0.20208457557906359 8.806879404741867 10.250955162702354
		-0.37340364258297037 8.692407703142262 10.250955162702354
		-0.48787534418257444 8.5210886361383551 10.250955162702354
		-0.52545862182817971 8.3190040356634505 10.250955162702354
		-0.48787534418257444 8.1169194849802295 10.250955162702354
		-0.37340364258297037 7.9456004179763218 10.250955162702354
		-0.20208457557906359 7.8311287163767176 10.250955162702354
		2.0983703311806727e-08 7.7935577604246715 10.247382223618599
		0.20208457557906359 7.8311287163767176 10.250955162702354
		0.37340364258297037 7.9456004179763218 10.250955162702354
		0.48787534418257444 8.1169194849802295 10.250955162702354
		0.52545862182817971 8.3190040605592923 10.250955162702354
		0.48546029224498927 8.3203714024140307 10.049875333220939
		0.37155538854910419 8.3215305991801998 9.8794078712661602
		0.20108440611045139 8.3223051478782946 9.7655054319089878
		2.0983703311806727e-08 8.3225771404624016 9.7255081584709586
		-0.20108440611045139 8.3223051478782946 9.7655054319089878
		-0.37155538854910419 8.3215305991801998 9.8794078712661602
		-0.48546029224498927 8.3203714024140307 10.049875333220939
		-0.52545862182817971 8.3190040356634505 10.250955162702354
		-0.48546029224498927 8.3176366694177801 10.452034288086994
		-0.37155538854910419 8.3164774726516093 10.622502102090161
		-0.20108440611045139 8.3157029239535163 10.736404189398947
		2.0983703311806727e-08 8.3154309454513449 10.776401462836974
		0.20108440611045139 8.3157029239535163 10.736404189398947
		0.37155538854910419 8.3164774726516093 10.622502102090161
		0.48546029224498927 8.3176366694177801 10.452034288086994
		0.52545862182817971 8.3190040605592923 10.250955162702354
		0.48546029224498927 8.3203714024140307 10.049875333220939
		0.37155538854910419 8.3215305991801998 9.8794078712661602
		0.20108440611045139 8.3223051478782946 9.7655054319089878
		2.0983703311806727e-08 8.3225771404624016 9.7255081584709586
		2.0983703311806727e-08 8.5233846957209991 9.7668731398940487
		2.0983703311806727e-08 8.6930772991751031 9.8819345225425526
		2.0983703311806727e-08 8.8058204431925589 10.053176490949618
		-5.8057299596182847e-31 8.8444503606939122 10.250955162702354
		2.0983703311806727e-08 8.8030857313192108 10.455335797864061
		2.0983703311806727e-08 8.6880243486707069 10.625028049269778
		2.0983703311806727e-08 8.5167827323120289 10.737771545335621
		2.0983703311806727e-08 8.3154309454513449 10.776401462836974
		2.0983703311806727e-08 8.1146234253975855 10.735036481413886
		2.0983703311806727e-08 7.9449308219434815 10.619975098765382
		2.0983703311806727e-08 7.8321876779260267 10.448733130358315
		2.0983703311806727e-08 7.7935577604246715 10.247382223618599
		2.0983703311806727e-08 7.8349223897993738 10.046573823443874
		2.0983703311806727e-08 7.9499837724478777 9.8768815720381546
		2.0983703311806727e-08 8.1212253888065558 9.7641380759723138
		2.0983703311806727e-08 8.3225771404624016 9.7255081584709586
		;
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "1692F8C0-4E33-7215-E052-5D8EC6A3834B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -7.8886090522101181e-31 0 0 ;
	setAttr ".r" -type "double3" -50.939477499630947 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 50.939477499630947 0 0 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "7CD86CAA-42CB-DF7D-B68E-9F9C6E53191A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "33DE2931-4727-93E0-8D16-EE9B7ACE3F38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182817971 6.2465636941419183 11.630492350814894
		0.48787534418257444 6.4486482697209819 11.630492350814894
		0.37340364258297037 6.6199673367248888 11.630492350814894
		0.20208457557906359 6.734439038324493 11.630492350814894
		0 6.772009994276539 11.630492350814894
		-0.20208457557906359 6.734439038324493 11.630492350814894
		-0.37340364258297037 6.6199673367248888 11.630492350814894
		-0.48787534418257444 6.4486482697209819 11.630492350814894
		-0.52545862182817971 6.2465636692460773 11.630492350814894
		-0.48787534418257444 6.0444791185628555 11.630492350814894
		-0.37340364258297037 5.8731600515589486 11.630492350814894
		-0.20208457557906359 5.7586883499593444 11.630492350814894
		2.0983703311806727e-08 5.7211173940072984 11.626919411731141
		0.20208457557906359 5.7586883499593444 11.630492350814894
		0.37340364258297037 5.8731600515589486 11.630492350814894
		0.48787534418257444 6.0444791185628555 11.630492350814894
		0.52545862182817971 6.2465636941419183 11.630492350814894
		0.48546029224498927 6.2479310359966567 11.429412521333479
		0.37155538854910419 6.2490902327628266 11.2589450593787
		0.20108440611045139 6.2498647814609196 11.145042620021528
		2.0983703311806727e-08 6.2501367740450275 11.105045346583498
		-0.20108440611045139 6.2498647814609196 11.145042620021528
		-0.37155538854910419 6.2490902327628266 11.2589450593787
		-0.48546029224498927 6.2479310359966567 11.429412521333479
		-0.52545862182817971 6.2465636692460773 11.630492350814894
		-0.48546029224498927 6.2451963030004061 11.831571476199535
		-0.37155538854910419 6.2440371062342361 12.002039290202701
		-0.20108440611045139 6.2432625575361431 12.115941377511486
		2.0983703311806727e-08 6.2429905790339708 12.155938650949516
		0.20108440611045139 6.2432625575361431 12.115941377511486
		0.37155538854910419 6.2440371062342361 12.002039290202701
		0.48546029224498927 6.2451963030004061 11.831571476199535
		0.52545862182817971 6.2465636941419183 11.630492350814894
		0.48546029224498927 6.2479310359966567 11.429412521333479
		0.37155538854910419 6.2490902327628266 11.2589450593787
		0.20108440611045139 6.2498647814609196 11.145042620021528
		2.0983703311806727e-08 6.2501367740450275 11.105045346583498
		2.0983703311806727e-08 6.450944329303625 11.146410328006588
		2.0983703311806727e-08 6.6206369327577299 11.261471710655092
		2.0983703311806727e-08 6.7333800767751848 11.432713679062157
		0 6.772009994276539 11.630492350814894
		2.0983703311806727e-08 6.7306453649018376 11.834872985976601
		2.0983703311806727e-08 6.6155839822533329 12.004565237382318
		2.0983703311806727e-08 6.4443423658946548 12.11730873344816
		2.0983703311806727e-08 6.2429905790339708 12.155938650949516
		2.0983703311806727e-08 6.0421830589802124 12.114573669526425
		2.0983703311806727e-08 5.8724904555261075 11.999512286877922
		2.0983703311806727e-08 5.7597473115086526 11.828270318470855
		2.0983703311806727e-08 5.7211173940072984 11.626919411731141
		2.0983703311806727e-08 5.7624820233819998 11.426111011556413
		2.0983703311806727e-08 5.8775434060305045 11.256418760150696
		2.0983703311806727e-08 6.0487850223891826 11.143675264084854
		2.0983703311806727e-08 6.2501367740450275 11.105045346583498
		;
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "12FD3F21-41E9-8ABC-1F5A-8A9EE03E321C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -61.760418868263514 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 61.760418868263514 0 0 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "2C3EB77E-408A-8F5C-5665-52B78848BE61";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "A0F64024-42D4-9C5A-1EA6-09BFA863CF2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.52545862182817971 6.7816340422190304 11.3268420146461
		0.48787534418257444 6.9837186177980941 11.3268420146461
		0.37340364258297037 7.155037684802001 11.3268420146461
		0.20208457557906359 7.2695093864016052 11.3268420146461
		0 7.3070803423536512 11.3268420146461
		-0.20208457557906359 7.2695093864016052 11.3268420146461
		-0.37340364258297037 7.155037684802001 11.3268420146461
		-0.48787534418257444 6.9837186177980941 11.3268420146461
		-0.52545862182817971 6.7816340173231895 11.3268420146461
		-0.48787534418257444 6.5795494666399668 11.3268420146461
		-0.37340364258297037 6.4082303996360599 11.3268420146461
		-0.20208457557906359 6.2937586980364557 11.3268420146461
		2.0983703311806727e-08 6.2561877420844096 11.323269075562346
		0.20208457557906359 6.2937586980364557 11.3268420146461
		0.37340364258297037 6.4082303996360599 11.3268420146461
		0.48787534418257444 6.5795494666399668 11.3268420146461
		0.52545862182817971 6.7816340422190304 11.3268420146461
		0.48546029224498927 6.7830013840737688 11.125762185164685
		0.37155538854910419 6.7841605808399388 10.955294723209906
		0.20108440611045139 6.7849351295380318 10.841392283852734
		2.0983703311806727e-08 6.7852071221221397 10.801395010414705
		-0.20108440611045139 6.7849351295380318 10.841392283852734
		-0.37155538854910419 6.7841605808399388 10.955294723209906
		-0.48546029224498927 6.7830013840737688 11.125762185164685
		-0.52545862182817971 6.7816340173231895 11.3268420146461
		-0.48546029224498927 6.7802666510775182 11.52792114003074
		-0.37155538854910419 6.7791074543113483 11.698388954033907
		-0.20108440611045139 6.7783329056132544 11.812291041342693
		2.0983703311806727e-08 6.778060927111083 11.85228831478072
		0.20108440611045139 6.7783329056132544 11.812291041342693
		0.37155538854910419 6.7791074543113483 11.698388954033907
		0.48546029224498927 6.7802666510775182 11.52792114003074
		0.52545862182817971 6.7816340422190304 11.3268420146461
		0.48546029224498927 6.7830013840737688 11.125762185164685
		0.37155538854910419 6.7841605808399388 10.955294723209906
		0.20108440611045139 6.7849351295380318 10.841392283852734
		2.0983703311806727e-08 6.7852071221221397 10.801395010414705
		2.0983703311806727e-08 6.9860146773807372 10.842759991837795
		2.0983703311806727e-08 7.1557072808348412 10.957821374486299
		2.0983703311806727e-08 7.2684504248522961 11.129063342893364
		0 7.3070803423536512 11.3268420146461
		2.0983703311806727e-08 7.2657157129789489 11.531222649807807
		2.0983703311806727e-08 7.1506543303304451 11.700914901213524
		2.0983703311806727e-08 6.979412713971767 11.813658397279367
		2.0983703311806727e-08 6.778060927111083 11.85228831478072
		2.0983703311806727e-08 6.5772534070573236 11.810923333357632
		2.0983703311806727e-08 6.4075608036032197 11.695861950709128
		2.0983703311806727e-08 6.2948176595857648 11.524619982302061
		2.0983703311806727e-08 6.2561877420844096 11.323269075562346
		2.0983703311806727e-08 6.297552371459112 11.12246067538762
		2.0983703311806727e-08 6.4126137541076158 10.952768423981901
		2.0983703311806727e-08 6.5838553704662939 10.84002492791606
		2.0983703311806727e-08 6.7852071221221397 10.801395010414705
		;
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "9E01C317-4919-9807-7272-DEAF7265B9D0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -59.09009811116286 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 59.09009811116286 0 0 ;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "95E0206D-45AB-979B-BD57-BCB877E6647B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "AE321266-4324-22B5-DA47-9CB4268ACB82";
	setAttr ".t" -type "double3" -1.6374675267209265e-14 0 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -59.09009811116286 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "F5513D98-4F9B-1FF3-8F63-3C989434FE2E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "0F874EB8-466F-15B8-7C29-CF9CCF1B9E65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.1879730209287439e-32 1.9401072925600708e-16 3.1684355183122417
		-1.3718629694437042e-16 -2.2404222024077063 2.2404222024077063
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		-1.3718629694437042e-16 -2.2404222024077063 -2.2404222024077063
		-1.1879730209287439e-32 -1.9401072925600708e-16 -3.1684355183122417
		1.3718629694437042e-16 2.2404222024077063 -2.2404222024077063
		1.9401072925600708e-16 3.1684355183122417 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		-3.1684355183122417 1.1879730209287439e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.1879730209287439e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.1879730209287439e-32 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.1879730209287439e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		-1.1879730209287439e-32 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.1879730209287439e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		1.1879730209287439e-32 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "7D0EF7BA-4076-40EC-4ADC-D09F0B9452D4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.51368953564803843 -0.85797614242221365 0
		 0 0.85797614242221365 0.51368953564803843 0 -1.6374675267209265e-14 166.34708309515128 -75.411135856353766 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "9A330B68-406F-B0CD-8F89-F4B0F3656E97";
	setAttr ".t" -type "double3" 8.0683219636422936e-15 -0.49518248294748446 -14.367196865305715 ;
	setAttr ".r" -type "double3" 2.7350686085808369 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "CFBD5CFC-41A4-FE7E-CB85-6B9A999A7334";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "2BAB7E49-4BD6-7904-A0F9-7F9799F0E314";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600616e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694436951e-16 2.2404222024077063 2.2404222024077063
		-9.0985337045888968e-31 1.9401072925600708e-16 3.1684355183122417
		-1.3718629694437134e-16 -2.2404222024077063 2.2404222024077063
		-1.9401072925600799e-16 -3.1684355183122417 1.9401072925600708e-16
		-1.3718629694437134e-16 -2.2404222024077063 -2.2404222024077063
		-9.336128308774645e-31 -1.9401072925600708e-16 -3.1684355183122417
		1.3718629694436951e-16 2.2404222024077063 -2.2404222024077063
		1.9401072925600616e-16 3.1684355183122417 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		-3.1684355183122417 1.1879730209287439e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600799e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.1879730209287439e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600616e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694436951e-16 2.2404222024077063 2.2404222024077063
		-9.0985337045888968e-31 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.1879730209287439e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		-9.336128308774645e-31 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.1879730209287439e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-9.0985337045888968e-31 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "8A86E523-44E5-1569-367F-339DD0EEA4A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 -5.6843418860808015e-14 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.2722218725854067e-14 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.55404512464733247 -0.83248663644200427 0
		 0 0.83248663644200427 0.55404512464733247 0 -8.3063533035669718e-15 153.76600089150944 -82.366559786142261 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "D9EADE1D-4C6D-AF51-B1D4-C1B9395F75C7";
	setAttr ".t" -type "double3" 1.5862704402158371e-14 0.81323432936551399 -26.686551896879863 ;
	setAttr ".r" -type "double3" -0.42571047555901681 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "BD7478A1-475F-FAE2-075E-19A4FA07A788";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "11AFD059-43A7-F18C-91C0-058ECB5D9E1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.1879730209287439e-32 1.9401072925600708e-16 3.1684355183122417
		-1.3718629694437042e-16 -2.2404222024077063 2.2404222024077063
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		-1.3718629694437042e-16 -2.2404222024077063 -2.2404222024077063
		-1.1879730209287439e-32 -1.9401072925600708e-16 -3.1684355183122417
		1.3718629694437042e-16 2.2404222024077063 -2.2404222024077063
		1.9401072925600708e-16 3.1684355183122417 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		-3.1684355183122417 1.1879730209287439e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.1879730209287439e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.1879730209287439e-32 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.1879730209287439e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		-1.1879730209287439e-32 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.1879730209287439e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		1.1879730209287439e-32 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "725B6EB1-4DC7-6B56-0BB3-75BEAF68F953";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.3611093629270304e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.5073006099161963 -0.86176916351111987 0
		 0 0.86176916351111987 0.5073006099161963 0 -5.1197086505089588e-16 143.86840820914094 -89.817473961103573 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "F53A7D62-4CE6-3223-0895-27BA32FE810D";
	setAttr ".t" -type "double3" 2.3570579030181421e-14 -3.6178398845577533 -38.762431101650648 ;
	setAttr ".r" -type "double3" 39.926689362566727 0 180 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "A0FA9BE5-4FF5-975C-2385-D6B48EE93A69";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "A0E69B62-402C-A37F-F10F-E4A6E9E6E327";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600799e-16 3.1684355183122501 1.9401072925600708e-16
		1.3718629694437134e-16 2.2404222024077147 2.2404222024077063
		9.336128308774645e-31 8.4962444266645156e-15 3.1684355183122417
		-1.3718629694436951e-16 -2.2404222024076978 2.2404222024077063
		-1.9401072925600616e-16 -3.1684355183122332 1.9401072925600708e-16
		-1.3718629694436951e-16 -2.2404222024076978 -2.2404222024077063
		9.0985337045888968e-31 8.1082229681525013e-15 -3.1684355183122417
		1.3718629694437134e-16 2.2404222024077147 -2.2404222024077063
		1.9401072925600799e-16 3.1684355183122501 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077147 1.3718629694437042e-16
		-3.1684355183122417 8.3022336974085084e-15 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024076978 -1.3718629694437042e-16
		-1.9401072925600616e-16 -3.1684355183122332 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024076978 -1.3718629694437042e-16
		3.1684355183122417 8.3022336974085084e-15 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077147 1.3718629694437042e-16
		1.9401072925600799e-16 3.1684355183122501 1.9401072925600708e-16
		1.3718629694437134e-16 2.2404222024077147 2.2404222024077063
		9.336128308774645e-31 8.4962444266645156e-15 3.1684355183122417
		-2.2404222024077063 8.4394199943528794e-15 2.2404222024077063
		-3.1684355183122417 8.4962444266645156e-15 1.1879730209287439e-32
		-2.2404222024077063 8.1650474004641375e-15 -2.2404222024077063
		9.0985337045888968e-31 8.1082229681525013e-15 -3.1684355183122417
		2.2404222024077063 8.1650474004641375e-15 -2.2404222024077063
		3.1684355183122417 8.1082229681525013e-15 -1.1879730209287439e-32
		2.2404222024077063 8.4394199943528794e-15 2.2404222024077063
		9.336128308774645e-31 8.4962444266645156e-15 3.1684355183122417
		;
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "9ECDA292-4354-83AD-9CCC-8594A043270A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -3.1554436208840472e-30 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.5902773407317588e-15 1.1393268520524644e-14 4.3145034562615814e-15 ;
	setAttr ".bps" -type "matrix" -1 -6.2126406813936981e-17 1.055362847697785e-16 0
		 9.4495426748384994e-17 0.156723847735594 0.98764246342031614 0 -7.7898730094008481e-17 0.98764246342031603 -0.15672384773559406 0
		 7.1959037629721543e-15 131.23139549730283 -92.218970781495614 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "F5A9EEE8-4AD3-31AB-0249-B9A5F9A10D63";
	setAttr ".t" -type "double3" 2.8600151624855054e-14 -15.736115781852561 -49.481844650080177 ;
	setAttr ".r" -type "double3" 66.306800597138874 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "A76C04EE-47D9-6219-8BB5-899362DCE26C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "70268763-463F-E8DC-40DB-C0B674449D67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600708e-16 3.1684355183122332 8.4962444266645156e-15
		1.3718629694437042e-16 2.2404222024076978 2.2404222024077147
		1.1879730209287439e-32 -8.1082229681525013e-15 3.1684355183122501
		-1.3718629694437042e-16 -2.2404222024077147 2.2404222024077147
		-1.9401072925600708e-16 -3.1684355183122501 8.4962444266645156e-15
		-1.3718629694437042e-16 -2.2404222024077147 -2.2404222024076978
		-1.1879730209287439e-32 -8.4962444266645156e-15 -3.1684355183122332
		1.3718629694437042e-16 2.2404222024076978 -2.2404222024076978
		1.9401072925600708e-16 3.1684355183122332 8.1082229681525013e-15
		-2.2404222024077063 2.2404222024076978 8.4394199943528794e-15
		-3.1684355183122417 -8.3022336974085084e-15 8.4962444266645156e-15
		-2.2404222024077063 -2.2404222024077147 8.1650474004641375e-15
		-1.9401072925600708e-16 -3.1684355183122501 8.4962444266645156e-15
		2.2404222024077063 -2.2404222024077147 8.1650474004641375e-15
		3.1684355183122417 -8.3022336974085084e-15 8.1082229681525013e-15
		2.2404222024077063 2.2404222024076978 8.4394199943528794e-15
		1.9401072925600708e-16 3.1684355183122332 8.4962444266645156e-15
		1.3718629694437042e-16 2.2404222024076978 2.2404222024077147
		1.1879730209287439e-32 -8.1082229681525013e-15 3.1684355183122501
		-2.2404222024077063 -8.1650474004641375e-15 2.2404222024077147
		-3.1684355183122417 -8.1082229681525013e-15 8.3022336974085084e-15
		-2.2404222024077063 -8.4394199943528794e-15 -2.2404222024076978
		-1.1879730209287439e-32 -8.4962444266645156e-15 -3.1684355183122332
		2.2404222024077063 -8.4394199943528794e-15 -2.2404222024076978
		3.1684355183122417 -8.4962444266645156e-15 8.3022336974085084e-15
		2.2404222024077063 -8.1650474004641375e-15 2.2404222024077147
		1.1879730209287439e-32 -8.1082229681525013e-15 3.1684355183122501
		;
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "8D4B50EC-4C02-E101-30B5-B28A46D865FD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 3.1554436208840472e-30 2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.590277340731759e-14 3.1168330293387687e-16 -4.7811257296747515e-15 ;
	setAttr ".bps" -type "matrix" 1 4.2933270965991738e-17 -2.2648760292274824e-16 0
		 -1.4141232893191122e-17 0.99207812284628449 0.1256224429383245 0 2.3008677833763563e-16 -0.1256224429383247 0.9920781228462846 0
		 1.518380324700396e-14 115.80936289345665 -87.328229742438566 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -s -n "persp";
	rename -uid "C552EE7C-4AA4-353B-50F4-AEA3D93293ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 360.86448948680686 238.79733916942826 378.27408292836316 ;
	setAttr ".r" -type "double3" -8.1383527296025342 51.800000000000104 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E830CC4C-48FF-73AB-AC91-56B845C6DD94";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 604.01138276330687;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "392E14E8-4E79-1055-0748-F6A20366A838";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4CB4CA2F-429F-367B-8717-9489F87F3247";
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
	rename -uid "10C8F3AE-49DA-CBA0-C8BF-A58773342988";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B22954EE-4242-CCD9-D142-52A6A32E9D34";
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
	rename -uid "B46C4C5F-48C2-53A4-C59B-D2A02240B457";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "63A4FBE8-4A73-7554-475E-BBA01C583646";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode unitConversion -n "unitConversion22";
	rename -uid "898C5805-4E9F-0E39-8309-0AA49677F279";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion49";
	rename -uid "1896D37F-4A70-37FD-6E47-CFA20D578D77";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion80";
	rename -uid "2CE95CFE-48AF-568C-8ADA-88BB34A5F4CA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion107";
	rename -uid "5830316C-454C-9195-9FDD-C88015A4255B";
	setAttr ".cf" 57.295779513082323;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1803F3B7-4D3D-B5A5-70BB-0FBEAC45ECC6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7046F937-47AD-7D8E-B6C5-EDA405D2F7CE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B40CAA6C-4B63-FC35-298A-A1BB8A08572E";
createNode displayLayerManager -n "layerManager";
	rename -uid "9544716B-4A47-3588-E991-3D92A8DC2315";
createNode displayLayer -n "defaultLayer";
	rename -uid "179AF695-41BD-5C2F-6997-5F9F94706563";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5B69D40D-4560-DC16-C1CC-5F8F873CDF0A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6D8F2A85-4FC3-8A84-C14E-39B9F6A7CCC4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0F782990-47D8-C03B-AC80-8A9D7AA387D8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 446\n            -height 683\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
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
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 446\\n    -height 683\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 446\\n    -height 683\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "133067E4-4EA7-AED6-D956-60AB7505461B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 66 -ast 1 -aet 66 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_upr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_palm_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_digit_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_hip_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ball_fkc.fkIkBlend";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikCstG.v";
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_outRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_inRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_ballG_ikc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd0_ikc.gimbalCtl" "lfLegQd0_ikc_gmbShape.v";
connectAttr "lfLegQd0_ikc_gmbShapeOrig.ws" "lfLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion22.o" "lfLegQd0_smart_ctl.footRoll";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_smart_ctl.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_upr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_palm_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_digit_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_hip_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion49.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector17.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector17.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector17.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector17.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sx";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sy";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sz";
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector23.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector23.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector23.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector23.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector23.hp" "neckQd0_two_ikj_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_upr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_palm_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_digit_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_hip_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion80.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_upr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_palm_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_digit_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_hip_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion107.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector40.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector40.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector40.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector40.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sx";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sy";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sz";
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector46.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector46.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector46.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector46.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector46.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "tail0_setting.moduleScale" "tail0_FK.sx";
connectAttr "tail0_setting.moduleScale" "tail0_FK.sy";
connectAttr "tail0_setting.moduleScale" "tail0_FK.sz";
connectAttr "tail0_setting.fkCtl" "tail0_0_fkc.v" -l on;
connectAttr "tail0_setting.subCtl" "tail0_6_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_5_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_4_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_3_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_2_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_1_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_0_ofs_ctl.v";
connectAttr "tail0_setting.moduleScale" "tail0_IK.sx";
connectAttr "tail0_setting.moduleScale" "tail0_IK.sy";
connectAttr "tail0_setting.moduleScale" "tail0_IK.sz";
connectAttr "tail0_setting.ikCtl" "tail0_0_ikc.v" -l on;
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion49.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion80.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion107.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of crvX.ma
