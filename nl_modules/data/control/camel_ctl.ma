//Maya ASCII 2023 scene
//Name: camel_ctl.ma
//Last modified: Thu, Jun 12, 2025 08:01:42 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "7F47B854-41FC-29B7-CB16-2CA35438115A";
createNode transform -n "CHR";
	rename -uid "82A81374-4FF9-6696-D5AE-C3A142AFBDD2";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "029D3D0E-4368-3949-4EBA-CCBEEA8C6AA7";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "21A19487-45F1-A84E-E4CE-D38674FB0562";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug" no;
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "CBB24A39-46D5-7B16-2E18-709912532031";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "A4A2C0C7-437F-5BA7-BDC4-469B0607A744";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "FB5D818B-4956-FC50-C9F1-1687C00747D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -4.785931929488342 0 -16.364770330759583 
		-5.9550466918170301e-15 0 -23.143280146881139 4.785931929488342 0 -16.364770330759583 
		6.7683298432768026 0 8.8561520555237837e-15 4.785931929488342 0 16.364770330759583 
		-4.8626177884361429e-15 0 23.143280146881153 -4.785931929488342 0 16.364770330759583 
		-6.7683298432768026 0 1.321194472738625e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "7F7A16B4-4D73-7AB8-CA27-E8BE1D877D0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		85.926572246554656 5.8478402413395386e-15 -85.926572246554684
		7.4408635628460746e-15 8.2700949798935363e-15 -121.5185238393092
		-85.926572246554656 5.8478402413395386e-15 -85.926572246554656
		-121.51852383930932 3.1330950746859183e-30 -3.8764091365867483e-14
		-85.926572246554656 -5.8478402413395378e-15 85.926572246554571
		-1.217259364330755e-14 -8.2700949798935426e-15 121.5185238393093
		85.926572246554656 -5.8478402413395378e-15 85.926572246554571
		121.51852383930932 1.5765819581179917e-30 -1.5893111441004154e-14
		85.926572246554656 5.8478402413395386e-15 -85.926572246554684
		7.4408635628460746e-15 8.2700949798935363e-15 -121.5185238393092
		-85.926572246554656 5.8478402413395386e-15 -85.926572246554656
		

		"gtag" 1
		"cluster1" 1 "cv[0:7]";
createNode transform -n "head0_ctl_data" -p "master_ctl";
	rename -uid "1568F659-46AB-409B-CCBB-1D86743CEBCF";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "7D025FFA-4D5A-3F84-6CB5-F08FE813873C";
	setAttr ".t" -type "double3" 0 229.41483221420799 193.21695607158355 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "94FD5819-4B3C-3E6F-E225-A498B0C49066";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "1759F946-434C-129D-C9D2-C7BB098518AD";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "4831CCE0-4543-55E2-338A-41AED4C72D03";
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
	rename -uid "CA788069-4257-D282-CCB7-D1BFC1884DDF";
	setAttr ".t" -type "double3" -1.0376074531262371e-13 -2.6921443802082763 2.2337088712889113 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "1DBDACD0-4571-8DD0-4C8D-0C94CD76EBBB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "2F62F2BD-49BD-A0CB-CE08-A481AD1B9A99";
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
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "E5D9D717-4B8F-E196-EAAC-8ABEAB36B599";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "9CC3B22C-48AD-0105-BE6B-2DA5106E2E55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 8.4893801619845082 8.4893801619845082 8.4893801619845082 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "72814190-43AB-BA8A-264E-2A9434D3F219";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "E4250A4B-46E9-9935-34E1-A7AFF6D0739A";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "A69B4C74-4E1E-27A7-B492-F59DAFE419E0";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.80606679300845 23.885049209179606 -95.640496455295988 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "D7DBDCFB-4135-ADF3-691B-D6A64D6FCED3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -19.473985928655786 30.936148978017087 -15.284947574631744 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "156C5154-48FE-BD6E-C748-1585EE0B584F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -49.840181042698823 0 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "80CC73C1-42DB-AC4C-84BD-33B89545FBFB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 19.485055928404631 40.27544392064241 7.9645319761974251 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "2B3C1AB7-48A0-7E3A-CBA9-90817634DDD0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 38.534487531581824 0 ;
	setAttr ".radi" 3.6309961062593925;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "9C12C639-40CC-AF9D-4519-EDB8EC7BE692";
	setAttr ".t" -type "double3" 11.549747219972403 -1.6797574886595612e-08 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 24.915811730248439 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "4CF75A16-48BE-04E5-07FD-1384F65CC7E6";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "4C427843-4703-2324-E29A-A3928DB33950";
	setAttr ".t" -type "double3" 11.549747219972403 -1.6797571333881933e-08 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 24.915811730248443 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "FEA3EF0D-4235-C76F-F177-CDA9AB87F80F";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "A08C6431-4264-ABE0-43FD-EF943EA0DEA9";
	setAttr ".t" -type "double3" 11.549747219972403 -1.6797571333881933e-08 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "CA749F99-4A51-C056-C64F-F19592FC6CA9";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 0 ;
	setAttr ".r" -type "double3" 0 -1.2722218725854067e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.2044715798555577e-14 1.272221872585407e-14 -1.2024743979812049e-14 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "5A2E947D-42A7-5904-D8E3-6298224689C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1148823042489227 4.1922021409845911e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 26.549700738169705 0 ;
	setAttr ".radi" 3.6309961062593925;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "51AE1EF8-4C52-81C4-7DF1-5884E56FDA92";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "DED0D7F8-48CF-A1ED-BD1C-51B2841C7A03";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "029B6D18-4F3C-CB97-5E99-24B828B2EE52";
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
	rename -uid "F282E694-4272-8938-EF0F-1CAAB88E4D4A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "0CD354E0-4821-B0AB-A5DC-12990B6A0BB0";
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
	rename -uid "6BF9AA51-491C-9E8D-83D3-A1A29749803F";
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
	rename -uid "3F56DB6F-4A7A-FD01-9162-7E9ED4BC0B7A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "B6E0D172-4468-D57D-BCA6-F9999C9EA8BF";
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
	rename -uid "AA43A5E0-4BA4-5831-AEC2-D496CE17A2C0";
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
	rename -uid "C2F7C1F4-4E3E-D6BF-6A02-7F8F3B48A38F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "9A501569-445E-71F3-7791-BB9BD869DBC7";
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
	rename -uid "C8EBF512-44EA-07D6-15B7-44AB23D88E07";
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
	rename -uid "DB9A1933-4AD8-1E37-1BDE-9592EC970110";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 7.1054273576010019e-15 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" -141.46551246841818 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "D666331F-40A7-3783-4F42-68A2E976EA04";
	setAttr ".t" -type "double3" 15.149058493609704 175.73314705891548 -53.377574963762996 ;
	setAttr ".r" -type "double3" -1.1939332069915487 156.11495079082039 84.359503544703927 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "01854233-4D95-2202-13E4-AEB28182080F";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -1.7208456881689926e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -3.77939349258282e-15 2.7034714792439891e-15 -8.5477407064332035e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "F31AFEB2-470C-E309-728B-6D9046B3CFB0";
	setAttr ".t" -type "double3" 0 3.1641356201816961e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "242DF1A2-4EF9-6E48-82DD-DC95849D722C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "1890ACFF-456E-EA85-00CB-55A09ECC0114";
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
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "109DF2A3-4435-98FC-0DA2-3B9C1C3A98E0";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -3.7192471324942744e-15 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 89.994951812456023 7.3276139351965224 -5.6389230983491911 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "E27FBFC7-49F5-46C2-A964-65BEE79B8B00";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 169.66035337838215 -7.1054273576010019e-14 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270367e-15 6.3611093629270335e-15 -1.4411888400381559e-14 ;
	setAttr ".radi" 5.446494159389089;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "98516E70-4678-81DF-AA21-469C042C7701";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "9F370BC8-4963-3732-724D-499C7241D313";
	setAttr ".t" -type "double3" 16.151868347611924 13.107840063449309 -101.71636307231572 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "1E3D27A3-40F7-6A41-FE51-B28C8D5D94DC";
	setAttr ".t" -type "double3" 9.580194380021112e-07 -9.0345998087182977 7.1953255385461432 ;
	setAttr ".r" -type "double3" 0 243.45029926183025 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "7138249F-4058-FDEF-205E-CFB7BFE95E7F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "201B0EE6-4CAC-3C28-91C3-91BD1363B876";
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
	rename -uid "F61C42DB-45AB-CEA9-9AB5-659904B536A2";
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
	rename -uid "EAD9F743-4B8A-8EA6-3C96-018C6DBE11E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1148823042490505 4.2277292777725961e-13 9.2370555648813024e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176223 2.4785434049371154e-16 -0.44697394836510224 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "75620B2F-461D-76A7-C35C-0780CD6B9586";
	setAttr ".t" -type "double3" 4.2632564145606011e-14 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "04EB0E1A-47F8-C2DF-6FFB-FFA60C06E495";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode ikHandle -n "lfLegQd0_toe02_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "61808E8D-43BC-CC65-8214-81ACF7AE2D76";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.5508394325443078e-08 2.3189641761097786 -2.6397017904855602e-08 ;
	setAttr ".r" -type "double3" -1.4272653142354623 -24.902593672953611 -1.9910525048721393 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176245 2.4545994496563139e-17 -0.44697394836510229 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe03_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "0ADB06C4-443C-1A76-C5DC-5EB48EBB5629";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.5508436958007223e-08 -3.8603558267294176 -2.6397032115710317e-08 ;
	setAttr ".r" -type "double3" -4.1024360507029378 -24.80518429720378 -5.7599826121059348 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176245 2.4545994496563139e-17 -0.44697394836510229 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "F093ED10-4D61-FB08-3834-7B9BCD53E303";
	setAttr ".t" -type "double3" 5.5508394325443078e-08 2.3189641761097803 -2.6397010799428244e-08 ;
	setAttr ".r" -type "double3" -2.5931192456382619 -2.5467070252903974 -5.0799360113806271 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs1" -p "lfLegQd0_toe02_3_ikc_ofs";
	rename -uid "79ABF149-40A5-C9BE-BC4A-978BEAB57968";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_toe02_3_ikc" -p "lfLegQd0_toe02_3_ikc_ofs1";
	rename -uid "3EB2CED9-488B-095B-FD3B-08AAAC925E19";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_3_ikcShape1" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "A003E3A7-4A04-3456-4AF3-5FA625691D5A";
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
		1.0985882331607229e-14 1.6124861917973876e-15 7.1054273576010019e-15
		1.0985882331607229e-14 1.6124861917973876e-15 -6.1028266285751833
		0.70474085921697882 1.6124861917973876e-15 -6.1028266285751833
		0.70474085921697882 1.6124861917973876e-15 -7.5123083470091228
		-0.70474085921695684 1.6124861917973876e-15 -7.5123083470091228
		-0.70474085921695684 1.6124861917973876e-15 -6.1028266285751833
		1.0985882331607229e-14 1.6124861917973876e-15 -6.1028266285751833
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe02_3_1_ikj_ikh" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "69C6E445-49C1-A87B-81FA-AAAD60205900";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.866022645092869 0.28747024394218101 -0.31881228554515673 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.87029252208461261 0.10112073548274012 -0.48204307158078141 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "4F23B203-4445-589A-8D79-FB86EBC89AEB";
	setAttr ".t" -type "double3" 5.5508451168861939e-08 -3.8603558267294176 -2.639702501028296e-08 ;
	setAttr ".r" -type "double3" -1.9698175066247725 -2.550958088179704 -3.8553209658412184 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs1" -p "lfLegQd0_toe03_3_ikc_ofs";
	rename -uid "C0A1F6F8-446F-4FD5-E9D6-06B6D9EFDA64";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe03_3_ikc" -p "lfLegQd0_toe03_3_ikc_ofs1";
	rename -uid "F90637BC-4AA5-05CF-92DB-1F843D23DA0A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_3_ikcShape1" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "20A37CAC-4B16-AB73-1963-A789551D0674";
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
		1.0985882331607229e-14 1.9402274870031135e-15 -6.2991842617023081e-15
		1.0985882331607229e-14 1.9402274870031135e-15 -6.1028266285751966
		0.70474085921697882 1.9402274870031135e-15 -6.1028266285751966
		0.70474085921697882 1.9402274870031135e-15 -7.5123083470091352
		-0.70474085921695684 1.9402274870031135e-15 -7.5123083470091352
		-0.70474085921695684 1.9402274870031135e-15 -6.1028266285751966
		1.0985882331607229e-14 1.9402274870031135e-15 -6.1028266285751966
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe03_3_1_ikj_ikh" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "D286745A-49F9-6872-08ED-5EB2918639F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8647772447351088 0.21840253928559861 -0.32463155913627162 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.8717442891509305 0.076825431046348105 -0.48390055535955068 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "1E1C49BD-491D-35AF-F199-36BE5C5AB9E2";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "E5461755-492A-75E8-857C-89ADB0044C45";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.80606679300845 23.885049209179606 -95.640496455295988 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "A672FB5C-435B-BB10-9921-888DD5D18BF9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.32367816903043 -7.3274719625260332e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 5.4003187362381073e-15 3.7215130446689415e-06 -1.1264864703170096e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -19.473985928655786 30.936148978017087 -15.284947574631744 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "0324F894-492F-29D7-2DE8-D5A09CFA1679";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.422232000735782 2.1316282072803006e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -4.6479245012601245e-21 -7.2247606308489392e-06 -7.7662294947590576e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -49.840181042698823 0 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "57EAC4C8-44B1-B5F7-D342-89A050641532";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 55.223586166938503 -3.5527136788005009e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 3.6368624111126351e-07 2.8077648580057783e-06 -8.6993839181571629e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 19.485055928404631 40.27544392064241 7.9645319761974251 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "F3CE8373-4C1A-F06A-6FC8-CF8777D81110";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 44.591755525855106 -0.64605332769133028 8.2401441045324617 ;
	setAttr ".r" -type "double3" 8.2636291190338813e-07 -9.5532070963020856e-06 -4.419672943924185e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 38.534487531581824 0 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "FC1EED8E-45CC-5B6E-396B-75ACD99A4D04";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.549747219972403 -1.6797574886595612e-08 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -9.2580865523243849e-07 -5.4550122688020159e-20 9.2457879149262138e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 24.915811730248446 0 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "69124C06-4454-FA71-47B0-FDB2D4D8D607";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1148823042489227 4.1922021409845911e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 26.549700738169705 0 ;
	setAttr ".radi" 5.446494159389089;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "CAC7D7EF-4B1E-6612-D102-6DA5267AB2B6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "A05EEF05-40CF-DE9D-DF0F-29A7DDE9FD85";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "CEE153B8-4C0A-EC3D-0214-BDA344295E48";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "A2F61577-443E-5D73-134A-CF892937C0E4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "361A822D-41ED-D5F6-0F75-2994A64A8AA7";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 27.323678169030444 -4.3298697960381105e-15 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 93.9922974169898 6.5452519316441125 -6.9441370324643232 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "CED555B0-41EE-07D7-AD33-76BF9809AB1D";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 97.630729675292969 4.2632564145606011e-14 9.0594198809412774e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.2722218725854073e-14 -6.5598940305185051e-15 1.5157330903849578e-14 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "0F090C8D-4FFA-138E-1AD1-F6AFF050160D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "1849432A-4E83-985F-2FC6-60B0C9BE3C18";
	setAttr ".t" -type "double3" 34.664652807892963 -59.540904332563343 22.522745486273212 ;
	setAttr ".r" -type "double3" -0.76590021809115516 -70.232170597541796 72.615078845897457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "A808AE97-45E1-65A1-FFE1-DA894DE22795";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "2766D87A-4E08-5324-6AA8-25BE1CA6A727";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "0C6F63CB-4F4C-3295-9DEE-9FAFA9E2588F";
	setAttr ".t" -type "double3" 0.64605334448923557 57.699592783716419 3.7007050737356337 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "1A1CC95D-4D91-BD41-6DF6-5BBE19EFBEC7";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "8C28DFF2-44DB-2E08-07F7-F8BD21185FA3";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.1955748164992725e-15 -9.7626092464511203 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "40F3D5E3-4ADB-C40E-F426-8A8254A169D6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "83DB7971-479A-4213-EA8D-5B9360A16466";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "212F416B-4C77-B1DA-84D9-38BC89B40600";
	setAttr ".t" -type "double3" 6.4789536574601776 -6.3805946047514518e-16 5.2101508852951497 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "0D3CB723-4093-EAA0-446C-97AAB3ACF2A1";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "E8AC4B81-4620-FEF2-C147-8C9096CD6BEE";
	setAttr ".t" -type "double3" -10.96317448284562 1.6524144085077311e-17 -0.13492987608006501 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "3A5BC300-473C-834D-6300-47B7657D289B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "8B19DEF1-4E75-05EF-AADA-69A1D3DF6A7D";
	setAttr ".t" -type "double3" 4.4842208253850728 -4.0732402547308517 2.031501157543758 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "32E3E4AC-4280-9CA2-66EE-ABAEA3B7096E";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "8A8E7701-4DF5-9E01-1346-AF8212B0D1C4";
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
	rename -uid "1614DB67-495D-EB8B-21CA-8998E9E422EF";
	setAttr ".t" -type "double3" -1.6797571333881933e-08 -9.034597003130461 7.1953261104891055 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "D83B4D4D-4B7A-A98F-2893-C2A7E18049E2";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" -15.14036701842668 0 91.388142892667318 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "0FC1ABFD-4CDF-776A-82EA-5E8412FA2F6F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "72D69CD5-451F-C2A4-28CD-08A7F99E95B1";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "2A18F2F7-4DEB-8938-2CFB-0F9CDE1F8092";
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
	rename -uid "9390F4A3-42E9-F825-5012-E2A26A988149";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "7F1A2612-4BA1-F397-F77A-B4AA9195C601";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "FB272074-47D9-6A13-83B7-A98DCB89285F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.64605332769128765 -44.591755525855106 -8.2401441045324617 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "8BC951F2-4AD9-60CB-9C52-6B9432A0F7E7";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "828C5D42-402B-FA8D-7851-36B49B05CA65";
	setAttr ".t" -type "double3" -0.6460533276912912 -44.59175552585512 -8.2401441045324617 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "F9BA7B86-4316-8A26-ED58-1DB0677E1B19";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "D43F30BD-401C-B4AA-9BCC-499F86318A7A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "2511C638-4B9C-7832-3B11-698133ACE3FC";
	setAttr ".t" -type "double3" 4.4842208253850728 -4.0732402547308517 2.031501157543758 ;
	setAttr ".r" -type "double3" 179.99999999999997 63.450299261830239 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "B6EA6642-4934-BD66-5BAF-02BE03033F05";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -179.99999999999997 24.915811730248453 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.89454697444176257 -4.4661669199429702e-16 0.44697394836510218 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "9CDDFD3B-49AB-3D8E-1EFA-33965F9AF43E";
	setAttr ".t" -type "double3" -1.5631940186722204e-13 7.1054273576010019e-15 1.0658141036401503e-13 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "C751A097-4486-A496-FC85-E098DF4EF14E";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "BA702957-441E-DB14-2344-CBAA1D851B51";
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
createNode nurbsCurve -n "lfLegQd0_outRollG_ctlShape1" -p "lfLegQd0_outRollG_ctl";
	rename -uid "35EE85D9-4823-08B2-CBDF-7AB54C8B6B98";
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
createNode nurbsCurve -n "lfLegQd0_toeRollG_ctlShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "33B9013D-4D18-FB16-E60A-CD9542A77786";
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
createNode nurbsCurve -n "lfLegQd0_heelRollG_ctlShape1" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "55B894B8-46D7-93D7-4BC7-CBB3352AB33A";
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
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_IK";
	rename -uid "C11A8C90-46C0-3DC1-F266-FF841B4D9364";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "E250F6C0-4F90-126D-EED4-E2A4A6FDE1F2";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20.085522769502976 99.425768315673196 -57.593113242013906
		30.631906770730591 99.999085810922679 -16.022525009026403
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "AB5292C3-48DB-ED33-FB60-DA95273E944C";
	setAttr ".t" -type "double3" 16.15186928883378 13.107837257861313 -101.71636364425858 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "A59E9705-45AE-2AB4-D2F8-BEB80B8289F2";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "514D2AB6-4582-FB41-BDD7-CEAE993AC05D";
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
	rename -uid "2CCA3295-4A2F-6985-08BC-17819EA330BB";
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
	rename -uid "811ADFC1-4656-A5D4-F964-D595C481060B";
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
	rename -uid "4C3449F3-47D0-E3CD-3D49-F69F186D89AF";
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
	rename -uid "B5361A2C-485C-45C9-6C4D-F99281E805FB";
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
	rename -uid "93E262B9-4E5F-0FE2-EBE1-31AABA883174";
	setAttr ".t" -type "double3" 1.6797944368818207e-08 -13.107837257861313 14.302048277247948 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "A9931DBF-43AB-53BE-03B4-14A771BD18F4";
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
	rename -uid "494C98C2-42AC-74A6-D148-88832A91478A";
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
	rename -uid "8DC747C9-4701-2356-1298-1593BFF0A0D6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -7.815970093361102e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "565A15B4-4296-1BBD-3B11-868ABBBD260F";
	setAttr ".t" -type "double3" 30.631906770730584 99.999085810922679 -16.022525009026403 ;
	setAttr ".r" -type "double3" -0.76587931236154771 14.235497131107536 7.1036069008248806e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "D390245B-40A6-201B-E6B6-DD8A3EC18B90";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "B1082055-413F-EE37-A4CF-FA917219C323";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.4210854715202004e-14 -2.6645352591003757e-15 ;
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
	rename -uid "905D054E-4BDA-8010-17A2-EEB3AC85C828";
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
createNode transform -n "lfLegQd0_extraRollG_ofs_loc" -p "lfLegQd0_IK";
	rename -uid "FEEC32A4-430D-39B3-CAF4-C1B5B87A6244";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 165.63933738392123 -7.5059823924488391 -81.823213627874622 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "224F0A8F-49B3-3EAF-2DEB-80B3A5C6B07B";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "84A803E7-4211-DB8D-391C-70A2CCB92C03";
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
	rename -uid "B89D15FA-46AB-4243-C282-7B9C634B2BED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.0774902656484819 9.0774902656484819 2.2598394987066917e-16
		-8.9030687820160956 9.0774902656484819 -1.7709304600812621
		-8.3865074224663392 9.0774902656484819 -3.473805237944819
		-7.5476574833555654 9.0774902656484819 -5.0431832725329793
		-6.4187549213547213 9.0774902656484819 -6.4187549213547213
		-5.0431832725329793 9.0774902656484819 -7.5476574833555654
		-3.473805237944819 9.0774902656484819 -8.3865074224663392
		-1.7709304600812621 9.0774902656484819 -8.9030687820160956
		5.558359701320289e-16 9.0774902656484819 -9.0774902656484819
		1.7709304600812621 9.0774902656484819 -8.9030687820160956
		3.473805237944819 9.0774902656484819 -8.3865074224663392
		5.0431832725329793 9.0774902656484819 -7.5476574833555654
		6.4187549213547213 9.0774902656484819 -6.4187549213547213
		7.5476574833555654 9.0774902656484819 -5.0431832725329793
		8.3865074224663392 9.0774902656484819 -3.473805237944819
		8.9030687820160956 9.0774902656484819 -1.7709304600812621
		9.0774902656484819 9.0774902656484819 -9.8183680421986131e-16
		8.7319992769058761 9.0774902656484819 -1.7369025107602931
		7.7481225935016012 9.0774902656484819 -3.2093774606773606
		6.2756474271603002 9.0774902656484819 -4.1932537112331696
		4.538745132824241 9.0774902656484819 -4.538745132824241
		2.8018426220639476 9.0774902656484819 -4.1932537112331696
		1.3293676721468801 9.0774902656484819 -3.2093774606773606
		0.34549142159107066 9.0774902656484819 -1.7369025107602931
		0 9.0774902656484819 -9.8183680421986131e-16
		-0.34549142159107066 9.0774902656484819 1.7369025107602931
		-1.3293676721468801 9.0774902656484819 3.2093774606773606
		-2.8018426220639476 9.0774902656484819 4.1932537112331696
		-4.538745132824241 9.0774902656484819 4.538745132824241
		-6.2756474271603002 9.0774902656484819 4.1932537112331696
		-7.7481225935016012 9.0774902656484819 3.2093774606773606
		-8.7319992769058761 9.0774902656484819 1.7369025107602931
		-9.0774902656484819 9.0774902656484819 2.2598394987066917e-16
		-8.9030687820160956 9.0774902656484819 1.7709304600812621
		-8.3865074224663392 9.0774902656484819 3.473805237944819
		-7.5476574833555654 9.0774902656484819 5.0431832725329793
		-6.4187549213547213 9.0774902656484819 6.4187549213547213
		-5.0431832725329793 9.0774902656484819 7.5476574833555654
		-3.473805237944819 9.0774902656484819 8.3865074224663392
		-1.7709304600812621 9.0774902656484819 8.9030687820160956
		-1.0597379050687125e-15 9.0774902656484819 9.0774902656484819
		1.7709304600812621 9.0774902656484819 8.9030687820160956
		3.473805237944819 9.0774902656484819 8.3865074224663392
		5.0431832725329793 9.0774902656484819 7.5476574833555654
		6.4187549213547213 9.0774902656484819 6.4187549213547213
		7.5476574833555654 9.0774902656484819 5.0431832725329793
		8.3865074224663392 9.0774902656484819 3.473805237944819
		8.9030687820160956 9.0774902656484819 1.7709304600812621
		9.0774902656484819 9.0774902656484819 -9.8183680421986131e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe02_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "5B91AAAF-45E0-2A53-BF99-0B84AD8F6508";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe02_4_ctl" -p "lfLegQd0_toe02_4_ctl_ofs";
	rename -uid "FAAED06D-4B48-CD87-507E-3E9BF037EB5F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_4_ctlShape1" -p "lfLegQd0_toe02_4_ctl";
	rename -uid "79E8D2EF-49C1-6833-36D9-4B8F9F5D0C4A";
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
		8.5446258559119969e-16 -2.3493026641920394 -2.3493026641920438
		8.7443575219254545e-16 -3.6827864650896129e-15 -2.1242498062245163
		8.5446258559119969e-16 2.3493026641920323 -2.3493026641920425
		8.0624309589869381e-16 2.1242498062245132 -6.317781604639547e-15
		7.5802360620618793e-16 2.3493026641920323 2.3493026641920305
		7.3805043960484217e-16 -3.3399261228700256e-15 2.1242498062245074
		7.5802360620618793e-16 -2.3493026641920394 2.3493026641920318
		8.0624309589869381e-16 -2.1242498062245203 -5.9179769235211293e-15
		8.5446258559119969e-16 -2.3493026641920394 -2.3493026641920438
		8.7443575219254545e-16 -3.6827864650896129e-15 -2.1242498062245163
		8.5446258559119969e-16 2.3493026641920323 -2.3493026641920425
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe03_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "7F359E45-402F-B067-7249-50B94B16063D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe03_4_ctl" -p "lfLegQd0_toe03_4_ctl_ofs";
	rename -uid "3F6D2B09-4F99-56A8-1458-E2B1409CDB49";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_4_ctlShape1" -p "lfLegQd0_toe03_4_ctl";
	rename -uid "9ACAAD06-4F1D-0E2D-9A52-74A33A243861";
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
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "D2C5B816-44D0-9700-F58B-479A3F7032B9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "B6EEF64E-4A09-8536-E787-8E8DEA134464";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 27.232470796945442 27.232470796945442 27.232470796945442 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "1546DE20-40DD-5CE8-43B9-7F91F394D1EC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "0F008F06-4EE1-ECD5-ADAD-61B4052EDEEA";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "D44944CD-478B-A97F-42EE-C2A9326ED0C0";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.05071772760544 -18.303495974984873 -77.943727269027647 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "FEB24F61-4C92-DD79-48B9-1AA24CF3F99B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 173.62177251387757 -72.385695229271704 11.689301767313813 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "BB9D17F9-468B-1BD0-1D84-B6895C89AD92";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -58.115264991147257 0 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "7E46F69D-4CCB-E4FE-BE3C-DC8D2A2EE459";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -178.48650685040104 4.2059390717482401 -5.5243431553392695 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "35ECC283-4080-77B4-CEEF-E2BE82383A99";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -14.458189649506176 53.222003176040964 -11.668636215144398 ;
	setAttr ".radi" 3.7760723388854829;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "B31A2B92-45A4-25E9-56BC-859556DDB794";
	setAttr ".t" -type "double3" 9.8488709504388794 -1.0658141036401503e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -0.79278838175304744 24.442926129022844 -1.3252730434130489 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "101FFAD4-4453-1FE8-05CF-CDB1CAA0F4B6";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "9D66202F-4DD2-ABB9-9E26-C49BE9E9AD71";
	setAttr ".t" -type "double3" 9.8488709504389149 -7.1054273576010019e-15 -6.3948846218409017e-14 ;
	setAttr ".r" -type "double3" -0.79278838175300881 24.442926129022872 -1.3252730434130262 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "7BBF6548-49B9-4BE8-62AA-D9B16A688C0B";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "2303741C-4E9F-3D68-E985-6F855B061A0B";
	setAttr ".t" -type "double3" 9.848870950438922 -7.1054273576010019e-15 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "C9E09564-49CD-AF36-AC4E-DEAA26F56F01";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -5.7746945935321964e-14 -6.9512513448392121e-15 -8.585012831606597e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.6576378836830435e-14 1.2722218725854064e-14 1.5902773407317581e-14 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "2154E0CF-4D32-D22D-27AF-BCADCBEA9635";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7955392884335026 1.0658141036401503e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.9794580950753677 11.27643245200216 10.02339905412467 ;
	setAttr ".radi" 3.7760723388854829;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "E07A392D-4F78-1442-F749-97B564704FD1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "78771F71-4686-D6F5-017E-9285415AD096";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "763A6CC4-455D-E1EC-4CA3-7BB413A23BA6";
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
	rename -uid "5ABC99F5-41F0-A221-8679-5A95780ACCAF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "911F82E5-4A9F-5613-7814-128F025EAAFE";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "081B8F1E-4C0D-6F4B-D439-6B8DB9283E19";
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
	rename -uid "809D0EAA-44AC-B75A-98F7-679E3146242A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "42FA4F22-453E-4AD8-175F-189E3D1E6FD3";
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
	rename -uid "113421E4-47FB-09B8-62F8-7CB4253571F1";
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
	rename -uid "6950377C-4280-D5C9-C41C-ABAF52986B5F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "4377D19A-423F-1C38-4C82-ACB5F7CC4271";
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
	rename -uid "A8001275-48B0-7A45-B9F7-B1999D0E5DB3";
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
	rename -uid "09D5F351-4C55-6C2B-DFAC-ED81655340EA";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -5.3290705182007514e-14 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" -125.59095477424604 5.0283456426574684 -83.017921108855589 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "59E9CDF6-40E8-2BD8-4BFC-5FB9665BE426";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "84A72123-46BB-CBCD-695B-58B73274E143";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "AF31AA7F-46A9-CEC7-830E-71B893C30937";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "5BB32259-48B6-544D-FF93-8A95F50B226A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "BC4B5D0B-4F86-551E-BB21-D78396829E1A";
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
	rename -uid "2A3C5353-488C-BAD1-58AB-18918B443C66";
	setAttr ".t" -type "double3" 52.620070316650725 3.5527136788005009e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999933 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "7E54AB25-4E61-2E18-45CA-7FA77246BE9F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "636C80F9-453C-B0BC-C53D-7EBE8F8C73E4";
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
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "A1AF39BE-4BBA-81F3-CFB2-47BC7355CB2C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 141.24940146223977 -22.954453788772163 6.0989463838650861 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "976CB8DB-4A77-B2D9-839F-C680B9D6F405";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 179.14059643317793 -9.2370555648813024e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.5416640443905456e-15 -4.770832022195272e-15 -8.7465253740246719e-15 ;
	setAttr ".radi" 5.6641085083282245;
createNode ikEffector -n "effector16" -p "lfLegQd1_autoAim";
	rename -uid "0B76B2DB-4F76-3562-DA42-A68AA3FF2C9D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "A0D5D47C-4141-5EA8-EFA8-F6BCB883469A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.5265128291212022e-14 1.4210854715202004e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 38.75059853776019 22.954453788772152 -173.9010536161349 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "C9B1519B-4970-7EE1-684D-899660E10460";
	setAttr ".t" -type "double3" 30.744220714541314 8.6697449464688177 57.470579282736338 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "1C9BE977-43EB-AB47-F2C1-DEA517581F26";
	setAttr ".t" -type "double3" 1.1926101391094512 -5.7748146934574462 7.8885648824662553 ;
	setAttr ".r" -type "double3" 138.8821170672984 -74.955955973488173 -49.869515286968806 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "88A0AD54-4193-693C-7652-D39FD639E8D1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "A03FE4AD-4140-6DD0-32A9-BC93C4F7F800";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "AADF985A-478F-95AD-410D-96A430EB815B";
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
	rename -uid "F3E0D9D1-4EA7-17F5-B97E-84A8430F10C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7955392884335737 -1.7763568394002505e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96572658327949157 0.17069033769681716 -0.19554277016618693 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "BF666B83-4EB2-DE4E-F852-3A95B8F1B5FF";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "F1A362CD-4DF3-D4ED-3B32-42B31435E498";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000009 ;
createNode ikHandle -n "lfLegQd1_toe02_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "7D425E92-47C8-5751-E978-6F85AB4CF4EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45879538266974862 2.7021824487786752 0.092898053776242051 ;
	setAttr ".r" -type "double3" 0.65362903569415964 -24.578774552251616 2.6650784433319168 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.9657265832794919 0.17069033769681707 -0.19554277016618624 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe03_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "CAF13F8A-4C0F-A49A-7827-FFB1E4910D9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45304538096738156 -2.668316437814287 -0.0917337788347794 ;
	setAttr ".r" -type "double3" -0.49116290057634127 -24.157105834777013 -2.0128618985265021 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.9657265832794919 0.17069033769681707 -0.19554277016618624 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "5076B417-47E6-9D4F-3080-3497F721F0C4";
	setAttr ".t" -type "double3" -0.45879538266973441 2.702182448778661 0.092898053776234946 ;
	setAttr ".r" -type "double3" -0.47113508546344546 3.5428128580019531 -2.3521495163622661 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs1" -p "lfLegQd1_toe02_3_ikc_ofs";
	rename -uid "C2869B07-4FB5-2354-3EF7-E783F26A2D3F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_toe02_3_ikc" -p "lfLegQd1_toe02_3_ikc_ofs1";
	rename -uid "AC581FA7-4FF7-6F09-2F7C-F79349DFA0DC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_3_ikcShape1" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "EFBC46EB-4D49-1735-977C-E08AB40CE6B5";
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
		0 -3.5527136788005009e-15 -8.3845649065616598e-16
		0 -3.5527136788005009e-15 -6.3466647021323608
		0.73289873816831685 -3.5527136788005009e-15 -6.3466647021323608
		0.73289873816831685 -3.5527136788005009e-15 -7.8124621784689978
		-0.73289873816831685 -3.5527136788005009e-15 -7.8124621784689978
		-0.73289873816831685 -3.5527136788005009e-15 -6.3466647021323608
		0 -3.5527136788005009e-15 -6.3466647021323608
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe02_3_1_ikj_ikh" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "97022942-4AE4-2D96-17A5-55BE46F54707";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8219693906679737 0.52983626634914316 0.47129462223771412 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96816035864177141 0.21129211496527944 -0.134242922003868 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "6D20F79A-4D09-8FCE-4AAF-8BB0F90D38BA";
	setAttr ".t" -type "double3" 0.45304538096738156 -2.6683164378143012 -0.091733778834782953 ;
	setAttr ".r" -type "double3" 0.77718662656031456 3.3886526727408612 3.8806157854226138 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs1" -p "lfLegQd1_toe03_3_ikc_ofs";
	rename -uid "37289A8C-4F23-CA88-138E-DF9D0966DCC4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe03_3_ikc" -p "lfLegQd1_toe03_3_ikc_ofs1";
	rename -uid "262F9DA3-42EB-3E4D-7CB4-619896F560A2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_3_ikcShape1" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "D2869880-4E5C-9DA9-BFB0-83B9167B4A34";
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
		0 -4.1922824532808299e-16 -1.7763568394002505e-15
		0 -4.1922824532808299e-16 -6.3466647021323617
		0.73289873816831685 -4.1922824532808299e-16 -6.3466647021323617
		0.73289873816831685 -4.1922824532808299e-16 -7.8124621784689996
		-0.73289873816831685 -4.1922824532808299e-16 -7.8124621784689996
		-0.73289873816831685 -4.1922824532808299e-16 -6.3466647021323617
		0 -4.1922824532808299e-16 -6.3466647021323617
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe03_3_1_ikj_ikh" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "E1474FAE-4441-A01C-6854-C186A753CBF3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7930720948509844 0.25844630836538585 0.45915251432871251 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.98491776128726405 0.10306517264113349 -0.13897688185211982 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "60164A9B-4A18-2260-103F-AAA39AE58069";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "E675BA5B-46CD-4185-EF9D-A08AE9CB3698";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.05071772760544 -18.303495974984873 -77.943727269027647 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "DADE2655-4B34-5C64-DC77-ADBC6019FA11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.62007031665064 2.1316282072803006e-14 -8.5265128291212022e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 173.62177251387757 -72.385695229271704 11.689301767313813 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "A797F8B5-465E-EC57-B174-DC873083D770";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 40.747249351870323 -2.1316282072803006e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -3.8882944298458903e-21 -1.8196094452053718e-06 -1.8641790800286664e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -58.115264991147257 0 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "C28012FA-4637-2F6C-E2B7-68AE9491B9F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 63.177559298114573 -1.3500311979441904e-13 0 ;
	setAttr ".r" -type "double3" -1.6435786147758782e-07 -4.4351071452058621e-06 1.2891472397865828e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -178.48650685040104 4.2059390717482401 -5.5243431553392695 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "384DE63C-482D-2A65-CB08-D6AF5EBC763F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 42.231192184245543 0.22388066542955087 2.2118295126772409 ;
	setAttr ".r" -type "double3" -4.6889047502663928e-07 3.3827910771717556e-22 1.6913955025970835e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -14.458189649506176 53.222003176040964 -11.668636215144398 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "E3EFD015-4622-F2AC-1A71-61911DC598F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.8488709504388936 -7.1054273576010019e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -5.3240706801521397e-07 -8.3502859044273359e-22 8.3502859820203347e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.79278838175296995 24.442926129022897 -1.3252730434130084 ;
	setAttr ".radi" 5.6641085083282245;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "25C1D54A-4E49-49DD-0A27-109A5CBA09D7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7955392884335026 1.0658141036401503e-14 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.9794580950753677 11.27643245200216 10.02339905412467 ;
	setAttr ".radi" 5.6641085083282245;
createNode ikEffector -n "effector14" -p "lfLegQd1_ball_ik";
	rename -uid "9A60E6DB-4495-202A-4DCC-528858EC888C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector13" -p "lfLegQd1_digit_ik";
	rename -uid "7421779B-4337-D19C-BBB2-FAAFBB77DAAC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector12" -p "lfLegQd1_palm_ik";
	rename -uid "B36AE406-4F08-148F-B1DF-DDB7FDEFE8B9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector11" -p "lfLegQd1_lwr_ik";
	rename -uid "A67DFC53-4020-DE5E-B5EF-6DAD45B48FE1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "69F4D993-4CCA-7FF4-35D0-4182B39C2489";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 52.620070316650612 2.1316282072803006e-14 -8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -7.9039902969210042e-30 3.9519951484605e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 104.9414954813749 -36.568020365111934 7.0375715589066505 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "B09203D3-4DC3-8FED-E894-57ABB20464D8";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 91.494850158691406 -2.8421709430404007e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.361109362927028e-15 2.5842006786891064e-15 4.3732626870123344e-15 ;
createNode ikEffector -n "effector15" -p "lfLegQd1_softJ";
	rename -uid "4CE54094-4E15-3CB7-222E-3E97BD0B694B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "A656822D-4939-48E8-46FD-48BDF8EAC7C4";
	setAttr ".t" -type "double3" 50.992042444728455 63.269944595285786 -19.755344676433999 ;
	setAttr ".r" -type "double3" 4.9706866753882792 105.98678164316672 71.20835333693914 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "CF5B27D8-41FD-23F2-5698-5BA4E28C0897";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "C4B2E923-403E-1281-01AA-4782CE1E6C3B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "A425BFD6-43DD-ACC8-FD06-D0878ADA831D";
	setAttr ".t" -type "double3" -3.907985046680551e-14 49.550001881883212 -4.4173370618726935 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "5FCD7597-42CD-BBCA-E7DE-31A8ECCDA106";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "299694EA-4120-90D9-C3DD-F3BCC3724013";
	setAttr ".t" -type "double3" 2.0217887614951131 1.1102230246251565e-15 -8.393702115667395 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "528284EA-4D1C-FA07-84E9-CCB8D4AC3DC9";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "394B7A5A-4068-F176-A3EF-739243287EBF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "CC1C9582-4052-D915-8F64-CE9F397558B3";
	setAttr ".t" -type "double3" 3.9909575445434342 -6.6613381477509392e-16 5.0602270072448903 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "B97BB892-45F2-B7AC-30FA-8389A60DC843";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "A5342789-4341-DA90-8E98-339C2133B122";
	setAttr ".t" -type "double3" -10.508384412859932 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "08F5A38D-41B5-5D55-A305-C98ABD802888";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "1E123821-4127-2E00-6717-3FB53EC2F1BD";
	setAttr ".t" -type "double3" 5.4643676848221574 -1.5439952492278819 2.0740766745503549 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "DC3B99BD-40CF-EDC3-74D2-C88F25946AD6";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "EE76A903-460E-5B7C-17CD-FB83B30B091E";
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
	rename -uid "4AC4FE89-437F-BDB6-30B6-9BB1E0D311F5";
	setAttr ".t" -type "double3" -1.1926102434301953 -5.7748144484097912 7.8885650084221339 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "86B59A40-44ED-7855-B68E-BB9CE0F046F6";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -13.418399525302037 -1.5902773407317588e-15 93.102233822815492 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "69427643-467E-E990-B202-82BD8B00AF43";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "E6B84BDC-46E1-D6B6-9C35-DCA413176484";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "EBDD14D7-4B6A-EB87-0DC4-12BEDBE38C4C";
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
	rename -uid "1F51B263-41EF-F4F9-1024-1BA67DC15149";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "407980B7-49F7-E9B8-E3CE-9EA2453DFE73";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1316282072803006e-14 4.2632564145606011e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999901 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 2.4651903288156619e-32 1.2246467991473535e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "3CF8C763-43F8-09C9-52B0-C5A027EAD117";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.22388066542944784 -42.231192184245508 -2.2118295126772693 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "BCC310B8-42C3-5CDF-73F0-12A760713F69";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "E9BB7057-499D-C396-639A-BE96D93D21E5";
	setAttr ".t" -type "double3" 0.2238806654294514 -42.231192184245508 -2.2118295126772551 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "C82B7658-44A7-A9A2-88C3-80B510BE3D79";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "A45C9D7D-477B-F06E-FC2C-84B1093B425C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "9C9C1307-4A32-1DC7-5BCD-D5AB5D7404A8";
	setAttr ".t" -type "double3" 5.4643676848221574 -1.5439952492278819 2.0740766745503549 ;
	setAttr ".r" -type "double3" 138.88211706729842 74.955955973488201 49.869515286968827 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "5DA15ECA-4475-52A5-6396-3AB72FE6BDB0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -2.4868995751603507e-14 -4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" -179.73165555149191 24.453608497329544 -1.0954029858575935 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96572658327949124 -0.17069033769681663 0.19554277016618632 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "A74F17ED-40F4-D459-35D6-E28D850DE96B";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 -4.6185277824406512e-14 -6.3948846218409017e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "92FA28F0-462C-54A3-FEE2-8B9872A42BC0";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "A326BAA5-43C7-F064-813F-6C8E1C159D6E";
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
createNode nurbsCurve -n "lfLegQd1_outRollG_ctlShape1" -p "lfLegQd1_outRollG_ctl";
	rename -uid "043E0ABC-4511-55E0-30B3-EE8AAC384E1A";
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
createNode nurbsCurve -n "lfLegQd1_toeRollG_ctlShape1" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "F02F4236-446B-4519-D00C-0C98BCE8CE01";
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
createNode nurbsCurve -n "lfLegQd1_heelRollG_ctlShape1" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "CCE5E86D-4A54-11C9-A5C9-D08F754A9D3C";
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
createNode transform -n "lfLegQd1_line_30" -p "lfLegQd1_IK";
	rename -uid "4DFA4A63-40C9-8492-AADB-13B9B8CB6E75";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "20EDEE8A-4B93-9D6F-61FF-23A55CD53E2B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		24.766389985439375 113.61570637702201 55.23263748592256
		23.614142280088661 109.62577292424098 9.3718736253704265
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "C1F3D91F-4C52-4514-0C3A-E8A48062D126";
	setAttr ".t" -type "double3" 30.744220610220637 8.6697447014212088 57.470579156780516 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "82E1FD23-4CE0-63B2-844C-A68EF1072203";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "16A44A50-4948-0E10-7F9E-E6AE0B67BFE3";
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
	rename -uid "4DF86A94-4BA1-69AD-D2C2-10B704FD91CF";
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
	rename -uid "47569775-493E-A17D-5966-72A7793E653D";
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
	rename -uid "A16CDF60-489D-C284-1B7C-539EF8A9C5C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.8320542541641096 1.9318903389048456 
		-1.4160270897048832 -2.777637125787507 1.9318903389048456 -1.9685334661169058 -2.6164769603837374 
		1.9318903389048456 -2.4998073323325585 -2.3547670527296063 1.9318903389048456 -2.9894321316149934 
		-2.0025647678076517 1.9318903389048456 -3.4185918575125314 -1.5734050419101102 1.9318903389048456 
		-3.7707941424344895 -1.0837802426276752 1.9318903389048456 -4.0325040500886224 -0.55250637641202172 
		1.9318903389048456 -4.1936642154923902 3.3062390086671706e-16 1.9318903389048456 
		-4.2480813438689928 0.5525063764120226 1.9318903389048456 -4.1936642154923902 1.0837802426276761 
		1.9318903389048456 -4.0325040500886224 1.5734050419101111 1.9318903389048456 -3.7707941424344895 
		2.0025647678076535 1.9318903389048456 -3.4185918575125385 2.3547670527296081 1.9318903389048456 
		-2.989432131614997 2.6164769603837392 1.9318903389048456 -2.4998073323325585 2.7776371257875088 
		1.9318903389048456 -1.9685334661169058 2.8320542541641114 1.9318903389048456 -1.4160270897048832 
		2.7776371090851431 1.0838010744375879 -1.4160270897048832 2.6164769477368264 0.25799597947041231 
		-1.4160270897048832 2.3547671062342577 -0.45710074084775476 -1.4160270897048832 2.0025647672959348 
		-1.0261160064286585 -1.4160270897048832 1.5734050077205994 -1.4546031668245636 -1.4160270897048832 
		1.0837802081224508 -1.7163130083271323 -1.4160270897048832 0.55250636426252964 -1.877473169675449 
		-1.4160270897048832 -1.7341330893924052e-16 -1.9318903147544155 -1.4160270897048832 
		-0.55250636426252964 -1.877473169675449 -1.4160270897048832 -1.0837802081224508 -1.7163130083271323 
		-1.4160270897048832 -1.5734050077205994 -1.4546031668245636 -1.4160270897048832 -2.0025647672959348 
		-1.0261160064286585 -1.4160270897048832 -2.3547671062342577 -0.45710074084775476 
		-1.4160270897048832 -2.6164769477368264 0.25799597947041231 -1.4160270897048832 -2.7776371090851431 
		1.0838010744375879 -1.4160270897048832 -2.8320542541641114 1.9318903389048456 -1.4160270897048832 
		-2.8320542541641114 1.9318903389048465 4.0781581633734927 -2.8320542541641114 1.7619670836549988 
		4.2480814186233395 -2.7776371090851431 1.0838010744375879 4.2480814186233395 -2.6164769477368264 
		0.25799597947041231 4.2480814186233395 -2.3547671062342577 -0.45710074084775476 4.2480814186233395 
		-2.0025647672959348 -1.0261160064286585 4.2480814186233395 -1.5734050077205994 -1.4546031668245636 
		4.2480814186233395 -1.0837802081224508 -1.7163130083271323 4.2480814186233395 -0.55250636426252964 
		-1.877473169675449 4.2480814186233395 -1.7341330893924052e-16 -1.9318903147544155 
		4.2480814186233395 0.55250636426252964 -1.877473169675449 4.2480814186233395 1.0837802081224508 
		-1.7163130083271323 4.2480814186233395 1.5734050077205994 -1.4546031668245636 4.2480814186233395 
		2.0025647672959348 -1.0261160064286585 4.2480814186233395 2.3547671062342577 -0.45710074084775476 
		4.2480814186233395 2.6164769477368264 0.25799597947041231 4.2480814186233395 2.7776371090851431 
		1.0838010744375879 4.2480814186233395 2.8320542541641114 1.7619670836549988 4.2480814186233395 
		2.8320542541641114 1.9318903389048456 4.0781581633734927 2.8320542541641114 1.9318903389048456 
		-1.4160270897048832;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "EEBAE795-4AE0-3B6A-21BA-7A9F64A7A12F";
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
	rename -uid "8F5B1926-4D11-C2FD-A9F5-498648864937";
	setAttr ".t" -type "double3" 2.2456694269245361 -7.3188096976376755 15.022868690217379 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "2DABD30B-4E57-A5E7-1A49-EABB6BFC993A";
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
	rename -uid "5717E4CD-4E31-A8B6-294A-71A40A4493B0";
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
	rename -uid "AF550DFF-41C8-AE16-18CC-5FA9A93D8817";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 4.2632564145606011e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "D7539231-4846-C8A4-31E2-E49BE6ED0E26";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -141.32155935136487 -4.5511212140659234 95.660644388658838 ;
	setAttr ".radi" 3.7760723388854829;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "ADB79C5B-4AF1-6A5F-0774-69B8C9E30537";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 179.14059643317799 2.8421709430404007e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.7760723388854829;
createNode ikEffector -n "effector17" -p "lfLegQd1_legLock";
	rename -uid "F81901DD-4EB3-09E0-1148-17A478F345E7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "A7977D53-41CB-5246-6EDC-58A499ECC133";
	setAttr ".t" -type "double3" 23.614142280088664 109.62577292424098 9.3718736253704247 ;
	setAttr ".r" -type "double3" 4.9707107929418282 -178.56075191342103 -6.8623601498380678e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "8FE5E2A4-4FD0-E8AD-4BD4-909BB63C76FE";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "13A0CC5F-423A-AFC6-190D-6EBFFE291FED";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 4.6185277824406512e-14 4.2632564145606011e-14 -1.7763568394002505e-14 ;
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
	rename -uid "60AD6E59-48F4-193D-E345-2B9A100AB94C";
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
createNode transform -n "lfLegQd1_extraRollG_ofs_loc" -p "lfLegQd1_IK";
	rename -uid "D4DF1B08-4D17-F061-9265-D39705463EC1";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -3.2547609979756249 54.030211788649048 -87.122648062514969 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "8CAE0B02-4B9A-3EF2-D90F-9A95622C59B5";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "A3634C74-4012-E522-F858-82BB014A7BCC";
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
	rename -uid "C83B43FC-4CCF-2F15-5464-71B94822CC18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.440180847213707 9.440180847213707 2.3501312509470283e-16
		-9.2587903636171465 9.440180847213707 -1.8416878808750987
		-8.7215898257894242 9.440180847213707 -3.6126009188129524
		-7.8492236874475294 9.440180847213707 -5.2446833590686648
		-6.6752158909864505 9.440180847213707 -6.6752158909864505
		-5.2446833590686648 9.440180847213707 -7.8492236874475294
		-3.6126009188129524 9.440180847213707 -8.7215898257894242
		-1.8416878808750987 9.440180847213707 -9.2587903636171465
		5.780443631308019e-16 9.440180847213707 -9.440180847213707
		1.8416878808750987 9.440180847213707 -9.2587903636171465
		3.6126009188129524 9.440180847213707 -8.7215898257894242
		5.2446833590686648 9.440180847213707 -7.8492236874475294
		6.6752158909864505 9.440180847213707 -6.6752158909864505
		7.8492236874475294 9.440180847213707 -5.2446833590686648
		8.7215898257894242 9.440180847213707 -3.6126009188129524
		9.2587903636171465 9.440180847213707 -1.8416878808750987
		9.440180847213707 9.440180847213707 -1.021066035108957e-15
		9.0808857866444672 9.440180847213707 -1.806300346870751
		8.0576983691000788 9.440180847213707 -3.3376079454932253
		6.5263905454061542 9.440180847213707 -4.3607949128947121
		4.7200904236068535 9.440180847213707 -4.7200904236068535
		2.9137900767361025 9.440180847213707 -4.3607949128947121
		1.3824824781136282 9.440180847213707 -3.3376079454932253
		0.35929551071214122 9.440180847213707 -1.806300346870751
		0 9.440180847213707 -1.021066035108957e-15
		-0.35929551071214122 9.440180847213707 1.806300346870751
		-1.3824824781136282 9.440180847213707 3.3376079454932253
		-2.9137900767361025 9.440180847213707 4.3607949128947121
		-4.7200904236068535 9.440180847213707 4.7200904236068535
		-6.5263905454061542 9.440180847213707 4.3607949128947121
		-8.0576983691000788 9.440180847213707 3.3376079454932253
		-9.0808857866444672 9.440180847213707 1.806300346870751
		-9.440180847213707 9.440180847213707 2.3501312509470283e-16
		-9.2587903636171465 9.440180847213707 1.8416878808750987
		-8.7215898257894242 9.440180847213707 3.6126009188129524
		-7.8492236874475294 9.440180847213707 5.2446833590686648
		-6.6752158909864505 9.440180847213707 6.6752158909864505
		-5.2446833590686648 9.440180847213707 7.8492236874475294
		-3.6126009188129524 9.440180847213707 8.7215898257894242
		-1.8416878808750987 9.440180847213707 9.2587903636171465
		-1.1020796697909055e-15 9.440180847213707 9.440180847213707
		1.8416878808750987 9.440180847213707 9.2587903636171465
		3.6126009188129524 9.440180847213707 8.7215898257894242
		5.2446833590686648 9.440180847213707 7.8492236874475294
		6.6752158909864505 9.440180847213707 6.6752158909864505
		7.8492236874475294 9.440180847213707 5.2446833590686648
		8.7215898257894242 9.440180847213707 3.6126009188129524
		9.2587903636171465 9.440180847213707 1.8416878808750987
		9.440180847213707 9.440180847213707 -1.021066035108957e-15
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe02_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "A5B25CEE-4C62-85CF-9C81-CA9B55B8EEB1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe02_4_ctl" -p "lfLegQd1_toe02_4_ctl_ofs";
	rename -uid "15EDBA86-4AA1-2BF8-8151-2A88DC33FC96";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_4_ctlShape1" -p "lfLegQd1_toe02_4_ctl";
	rename -uid "78234726-4E25-1DE9-7551-FBAE50E4C785";
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
		1.342254432106992e-14 -2.4431689118676658 -2.4431689118676729
		1.3443315514350264e-14 6.7712698047262575e-15 -2.2091240803975078
		1.3422544321069918e-14 2.4431689118676796 -2.4431689118676712
		1.3372398224545837e-14 2.2091240803975238 1.8564602988242826e-15
		1.3322252128021758e-14 2.4431689118676796 2.4431689118676756
		1.3301480934741413e-14 7.1278291114477237e-15 2.2091240803975154
		1.3322252128021758e-14 -2.4431689118676658 2.4431689118676765
		1.3372398224545837e-14 -2.2091240803975101 2.2722391521052502e-15
		1.342254432106992e-14 -2.4431689118676658 -2.4431689118676729
		1.3443315514350264e-14 6.7712698047262575e-15 -2.2091240803975078
		1.3422544321069918e-14 2.4431689118676796 -2.4431689118676712
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe03_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "FC5437AF-4FED-0002-6DB8-D9A8E5EE6117";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe03_4_ctl" -p "lfLegQd1_toe03_4_ctl_ofs";
	rename -uid "AC49415F-49F9-D6A2-9B9B-4D95B4A68DA7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_4_ctlShape1" -p "lfLegQd1_toe03_4_ctl";
	rename -uid "C7749DD4-4160-76A5-3FC4-DF9C849EE20E";
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
		1.4261000811726086e-14 -2.4431689118676694 -2.4431689118676729
		1.428177200500643e-14 3.2185561259257562e-15 -2.2091240803975078
		1.4261000811726086e-14 2.443168911867676 -2.4431689118676712
		1.4210854715202004e-14 2.2091240803975203 1.8564602988242826e-15
		1.4160708618677923e-14 2.443168911867676 2.4431689118676756
		1.4139937425397578e-14 3.5751154326472228e-15 2.2091240803975154
		1.4160708618677924e-14 -2.4431689118676694 2.4431689118676765
		1.4210854715202004e-14 -2.2091240803975136 2.2722391521052502e-15
		1.4261000811726086e-14 -2.4431689118676694 -2.4431689118676729
		1.428177200500643e-14 3.2185561259257562e-15 -2.2091240803975078
		1.4261000811726086e-14 2.443168911867676 -2.4431689118676712
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "771315AD-4778-E5B0-E401-5681B8FB2F46";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "163097A5-42F3-BBCE-4783-F59E487F1061";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 28.320542541641121 28.320542541641121 28.320542541641121 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "E90C36B3-417F-DBE7-39EB-E5A54F74EE8F";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "27286A14-47D0-6AA9-61CF-8B957725944D";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 155.69550093653302 108.58159012728576 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "6CD01E98-4EE4-36E7-8D41-E88C7CE7FE7D";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "4FA5E9A8-4B25-0ACE-74BF-3E8CCA0FA181";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 0 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "8C44BFD8-4B44-7F18-D587-E391995E0A09";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "chest:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".space";
createNode nurbsCurve -n "neckQd0_cog_ctlShape1" -p "neckQd0_cog_ctl";
	rename -uid "153201E3-4142-A31E-EE1A-7F853FC44376";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		67.183674433971433 66.700439493048492 1.023090458367219e-15
		6.8497370032133938e-15 60.310830880927249 1.4468684017574281e-15
		-67.183674433971433 66.700439493048407 1.0230904583672184e-15
		-60.747774040811805 2.0071860967952317e-14 -5.9051421917448722e-31
		-67.183674433971433 -66.700439493048293 -1.0230904583672188e-15
		-2.9551374214801052e-15 -60.310830880927313 -1.4468684017574285e-15
		67.183674433971433 -66.700439493048407 -1.0230904583672184e-15
		60.747774040811805 8.7207701321754148e-15 -8.6282906570991712e-31
		67.183674433971433 66.700439493048492 1.023090458367219e-15
		6.8497370032133938e-15 60.310830880927249 1.4468684017574281e-15
		-67.183674433971433 66.700439493048407 1.0230904583672184e-15
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "0739DBED-47ED-EA89-57F3-8387A6A11E20";
	setAttr ".t" -type "double3" 2.4015078120560234e-17 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "B1F68A0E-4DCF-7126-73E8-CA921B302FA0";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "5AAF81A4-4004-8BFC-1D55-76B2DF58EACC";
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
	rename -uid "ECC5C397-483E-99A1-FF91-F2BA4F150371";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "1B71014F-4803-DC22-3317-45A280B4E86A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "E10B19A1-44DD-4759-42F6-40AD191A22A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-8.199770575874024e-07 5.5097519569280919 -1.1789590312838447
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
		-8.199770575874024e-07 5.5097519569280919 -1.1789590312838447
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "0EA2B606-444A-5402-D405-D4B721223B21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.4561850914083838e-14 155.69550093653302 108.58159012728578 1;
	setAttr ".radi" 4.611483199594101;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "D10E9555-4691-8175-E005-41B0F3EEAEF9";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.4015078120560234e-17 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 23.057415997970505;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "662E876A-4A1C-9E9D-AAD3-6F9A139E85FE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.4537835835963278e-14 71.194841398891583 77.739251648408626 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 23.057415997970505;
createNode ikEffector -n "effector23" -p "neckQd0_two_ikj";
	rename -uid "59BFFED8-4E10-F563-E2E3-959257BCC029";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "270DDDCD-4E8B-3158-A865-048A075329FA";
	setAttr ".t" -type "double3" -5.4561850914083831e-14 71.194841398891555 77.739251648408569 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "2526870E-4AD2-3F01-9978-87903644E913";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "4FC30CD7-4408-A5A6-90AB-FBB14A1934DD";
	setAttr ".t" -type "double3" -2.7353911981876799e-14 13.81800700582383 42.964381718939975 ;
	setAttr ".r" -type "double3" -41.571996761172095 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "0F9942C3-44FA-5804-1ACE-E4A5CFCEEC19";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "A9FEE806-41A7-5BF9-D547-ABB60791A1B5";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "075953A5-4564-E6D3-9492-78AD4EE0386A";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "A662375E-46D8-E665-DACC-89A965EBF3D1";
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
	rename -uid "8CD40D97-4A78-1D4C-43E7-3C80F8A1BE05";
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
	rename -uid "EE272B11-4C1F-7AE6-3C81-7B90FFD8FB64";
	setAttr ".t" -type "double3" -5.4537835835963271e-14 71.194841398891555 77.739251648408597 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "9A998887-4C49-78FD-C803-04B0FEC9B2D9";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "B4781685-4EB0-7890-D868-FFBFD4A14E81";
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
	rename -uid "1E760FEB-4BBF-4742-FB9B-F3A2EA818BF3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.102088823943873 48.333740602805406 42.930816594414807
		2.3469217953726464e-15 59.559793362323227 42.930816594414807
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		-38.328141583461715 1.9869376279292637e-15 1.2166484030745036e-31
		-27.102088823943873 -27.102088823943873 -1.6595243164225057e-15
		-3.839356156231677e-15 -38.328141583461722 -2.3469217953726484e-15
		27.102088823943873 -27.10208882394387 -1.6595243164225057e-15
		38.328141583461715 -5.2267951349197174e-15 -3.2004889658891948e-31
		27.102088823943873 48.333740602805406 42.930816594414807
		2.3469217953726464e-15 59.559793362323227 42.930816594414807
		-27.102088823943873 27.10208882394387 1.6595243164225057e-15
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "DADDA3D3-4D67-B014-08DE-0E9CBEE268D9";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "6BB9BAEF-4B23-9418-BED1-88A79C77AFF5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "9CA7920E-4C7D-F65D-69BB-F0B94E91F6B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-8.199770575874024e-07 -5.5097519569280919 1.1789590312838454
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
		-8.199770575874024e-07 -5.5097519569280919 1.1789590312838454
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "F78FE249-490B-065C-907D-4B8C5DE3E224";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3108872417680944e-30 226.89034233542458 186.32084177569436 1;
	setAttr ".radi" 4.611483199594101;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "A3CB9B45-429E-EE38-48DE-5D914CEADA9C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "AE7B3E5F-4E42-42D3-6DD9-BEAF89D9E611";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "19AB750D-4170-A7B1-B17C-FFB770D89A72";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "1FB72361-4E75-D89C-407C-B5A0ED1BB48F";
	setAttr ".t" -type "double3" 0 2.5244898787833847 6.8961142958891912 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "D9204CDD-4CDA-3ED0-87FB-8EB8F20832B0";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "5E432D4D-43E6-9153-357D-39839226C5EB";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
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
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "neckQd0_settingShape1" -p "neckQd0_setting";
	rename -uid "A9D0A73D-4500-C5D2-75CF-D5962D026941";
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
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "FAEBF910-4BAB-DDA8-B785-7F8809969E8D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "A49B2298-4F92-9E07-B9AF-749E061F4DD0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 17.293061998477878 17.293061998477878 17.293061998477878 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "D7FDD7FB-402C-BC97-BB5F-EF8F71C991CF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "992BF392-42B7-1160-F138-BC9BC515D45F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 17.293061998477878 17.293061998477878 17.293061998477878 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "703845DD-4517-B647-DEEC-6D8A68FD2B5B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "12694B47-421B-14B6-6101-658CC2DD4B6C";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "6AC7FC81-4D4D-B39F-C21D-8392316B12BB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1939332069915451 -23.885049209179662 95.64049645529596 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "7EABB663-4E29-02D9-93B6-BC9A623C7DED";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -19.473985928655747 30.936148978017105 -15.284947574631676 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "A990D695-4857-2B56-373D-C4B1192E586A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -49.840181042698767 0 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "CB618C41-477A-E0C9-E8FC-69A529E36723";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 19.485055928404591 40.27544392064241 7.9645319761973932 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "3713E44A-4339-1677-C544-01BE519760F8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 38.534487531581874 0 ;
	setAttr ".radi" 3.6309961062593925;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "A3B7B3D7-4E1E-B450-0B5F-AAA106D3DBE8";
	setAttr ".t" -type "double3" -11.549747219972382 1.6799315716298224e-08 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 24.91581173024845 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "EC5C08AA-432B-99BC-3213-719E2923D6A0";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "4CC8AEF3-4DE3-8B30-5F10-37B200BB1BA1";
	setAttr ".t" -type "double3" -11.549747219972375 1.6799322821725582e-08 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 0 24.91581173024845 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "C6A54A51-408E-7C62-33DB-4AAAAA5AAF7D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "5E70EDDA-44B7-36EF-4459-8FA76DD96428";
	setAttr ".t" -type "double3" -11.549747219972375 1.6799322821725582e-08 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "06DA3B2D-4E7C-A00C-B3E0-0F8CFB0F05C7";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.0583040599734983e-14 3.1805546814635176e-15 -6.2524988181826064e-15 ;
	setAttr ".radi" 3.6309961062593925;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "E2339AEB-4CCC-522F-7B05-6E95F1685F79";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1148823042489369 -5.7198690228688065e-13 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 26.549700738169669 0 ;
	setAttr ".radi" 3.6309961062593925;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "85C60B56-4ABA-B5E4-649F-57865E6A0C8C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "D9A690EA-49BD-C553-148E-97BC65CC7D60";
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
	rename -uid "69973FD3-4394-224B-2F5F-429F5B068154";
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
	rename -uid "C0713498-48F8-4317-A467-14B9F6A81AAE";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "057EA0E9-4260-9B53-EC11-408395CA0526";
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
	rename -uid "6F753AED-4D04-C062-9C07-838C29A201C0";
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
	rename -uid "BB55C3C2-4AC4-6747-06F7-E9AE3598BE53";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "94AC1CE2-4BE5-D840-A99A-9A8AF1FB98D8";
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
	rename -uid "51C05C93-4190-B940-A3F9-BB99512BE28C";
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
	rename -uid "DFDBB109-45AB-4C54-C385-2481014E798C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "67707F1B-4111-BB79-83EF-25B01D8C256D";
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
	rename -uid "489539AF-48D3-A810-232B-DD831D308C70";
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
	rename -uid "E2C9942D-4F5D-23C1-484D-E88F030F7887";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 38.534487531581881 0 -90.000000000000028 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "AA0EC435-40F0-96FB-5E9D-33A4B3D68462";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "27AC2248-401E-FDB1-70C6-FAA9DF38B7C9";
	setAttr ".t" -type "double3" 0 -3.9412917374193057e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "1FE6CFF0-494D-FF4C-4A91-329942EA55F9";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 4.4408920985006262e-16 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "5268B99F-4EF2-BC30-0CE3-C7BC2F8E8E57";
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
	rename -uid "3886006A-4DFE-21BC-252F-23A0103C9CDD";
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
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "4E625D13-42D5-A0E5-FEE7-FD99128E0CDE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 8.5265128291212022e-14 -1.5265566588595902e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 89.994951812454616 7.3276139351965499 -5.6389230983486742 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "EDAD8B76-4B6D-1C5F-4E2C-02A3D5846DA6";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -169.66035337838213 0 -2.4868995751603507e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.3611093629270335e-15 -3.9756933518293955e-16 -2.4848083448933735e-16 ;
	setAttr ".radi" 5.446494159389089;
createNode ikEffector -n "effector29" -p "rtLegQd0_autoAim";
	rename -uid "2A5D2FF7-452B-2781-5D3C-329F81EE6C19";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "8171AE04-4F47-7CB3-F4B9-6685E80ACD41";
	setAttr ".t" -type "double3" -16.1518684804816 13.107840094435986 -101.7163634390558 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "4D80B366-42EA-D236-BC66-0D889665C32D";
	setAttr ".t" -type "double3" -8.2515013488659861e-07 -9.0345998397051073 7.1953259052862535 ;
	setAttr ".r" -type "double3" -7.1157495713051047e-15 63.450299261830317 90.000000000000057 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "224B8798-4011-58AD-EC9F-6DA3A74A1C1B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "87377F71-4050-00D0-8F3D-0C9EC4D61219";
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
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "739884C5-492A-A8B2-19B0-DFAB6E3269FC";
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
	rename -uid "BABC6844-4A1D-351A-23CC-698D2AEBB5FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1148823042489653 -5.6488147492927965e-13 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176279 -2.2304230204958187e-16 0.44697394836510079 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "75850A74-4645-7A16-908D-768601AF2E15";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "7F46FAA4-4752-B381-D440-389CF1ABE185";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd0_toe02_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "58F39136-447A-BDD8-876D-2AAC0AD4A27B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.6728882681418327e-09 -2.3189641828635228 4.8331756374864199e-09 ;
	setAttr ".r" -type "double3" -1.4272654941113845 -24.902593744323973 -1.9910527604183788 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176301 -7.4170071384816851e-17 0.44697394836510118 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe03_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "D1699095-4AF0-345C-5D43-9FA1D751ED06";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6056255819639773e-08 3.8603558199756733 -1.3019459288443613e-08 ;
	setAttr ".r" -type "double3" -4.1024362248802806 -24.805184379144141 -5.7599828703205125 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176301 -7.4170071384816851e-17 0.44697394836510118 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "F921E7C5-4413-C168-C674-F293E7A9AC81";
	setAttr ".t" -type "double3" -9.6728740572871175e-09 -2.3189641828635246 4.8331685320590623e-09 ;
	setAttr ".r" -type "double3" -2.5931194048721302 -2.5467071053486903 -5.0799363356076119 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs1" -p "rtLegQd0_toe02_3_ikc_ofs";
	rename -uid "75297C84-4A38-E028-5003-0DB71D1F3B06";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_3_ikc" -p "rtLegQd0_toe02_3_ikc_ofs1";
	rename -uid "03018227-400D-3CB8-F256-D1BDB5140DB4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_3_ikcShape1" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "119E0445-45D2-00B7-C09F-BA86BA800596";
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
		-3.4871654197593557e-14 -3.5527136788005009e-15 8.0624309589869381e-16
		-3.4871654197593557e-14 -3.5527136788005009e-15 6.1028266285751913
		-0.70474085921700269 -3.5527136788005009e-15 6.1028266285751913
		-0.70474085921700269 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921693297 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921693297 -3.5527136788005009e-15 6.1028266285751913
		-3.4871654197593557e-14 -3.5527136788005009e-15 6.1028266285751913
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe02_3_1_ikj_ikh" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "BDA5E40D-4422-1A3A-DE15-75BFD7F9632B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.8660226450928832 -0.28747024394299103 0.31881228554514252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.87029252095757859 -0.10112074191357061 0.48204307226652715 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "9B9F674A-4675-9EF0-0AD2-EBAB45438BC8";
	setAttr ".t" -type "double3" 2.6056255819639773e-08 3.8603558199756733 -1.3019466393870971e-08 ;
	setAttr ".r" -type "double3" -1.969817667535406 -2.5509581648199222 -3.8553212899817551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs1" -p "rtLegQd0_toe03_3_ikc_ofs";
	rename -uid "6593F41E-437A-7548-4974-9ABC775A766A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_toe03_3_ikc" -p "rtLegQd0_toe03_3_ikc_ofs1";
	rename -uid "C919F541-41C2-C87E-D35A-9C9442E40BC9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_3_ikcShape1" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "3C65A52A-4C6C-5B95-D1DF-21AD34C3E299";
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
		1.7435827098796779e-14 -3.5527136788005009e-15 8.0624309589869381e-16
		1.7435827098796779e-14 -3.5527136788005009e-15 6.1028266285751913
		-0.7047408592169504 -3.5527136788005009e-15 6.1028266285751913
		-0.7047408592169504 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921698526 -3.5527136788005009e-15 7.5123083470091299
		0.70474085921698526 -3.5527136788005009e-15 6.1028266285751913
		1.7435827098796779e-14 -3.5527136788005009e-15 6.1028266285751913
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe03_3_1_ikj_ikh" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "A25F461E-4C3A-0C76-4698-52BC8899514B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.864777244735194 -0.2184025392863802 0.32463155913622899 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.87174428816057092 -0.07682543749120696 0.48390055612047361 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "1ED643AE-4133-5019-3805-1EBAE8050EC8";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "2005E9BF-4E96-3C99-1AD5-BEA62B057B34";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1939332069915451 -23.885049209179662 95.64049645529596 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "B4EA7BBB-4B58-7CDC-05F0-8DA83AA0256F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.323678169030472 7.2164496600635175e-16 0 ;
	setAttr ".r" -type "double3" 1.8001071053373565e-15 3.7215130446689415e-06 -3.7549521001825618e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -19.473985928655747 30.936148978017105 -15.284947574631676 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "9FBAD434-4340-0709-A118-3EB786B7FA31";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.422232000735697 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -7.4366791573926973e-21 -7.2247605874970255e-06 -6.2755467313365069e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -49.840181042698767 0 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "6C439EC9-440C-0CB8-03B5-EE96E6F8E915";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -55.223586166938517 5.6843418860808015e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 3.4566574569503778e-07 2.5629289035543881e-06 -7.9161590316678127e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 19.485055928404591 40.27544392064241 7.9645319761973932 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "41FDB03E-4F65-3898-F0F5-A399F0E003AF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -44.591755525855071 0.64605332768995183 -8.2401441045325043 ;
	setAttr ".r" -type "double3" 8.2636285859647286e-07 -8.7421111903395796e-06 -4.449064835356882e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 38.534487531581874 0 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "A8D23972-48E0-5F36-40DF-E1AE9B62C0B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.549747219972403 1.6799315716298224e-08 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -9.3819111438500012e-07 -7.5424020562519008e-20 9.3694497242540849e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 24.91581173024845 0 ;
	setAttr ".radi" 5.446494159389089;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "145175E4-45E2-7B5F-6C80-D2909E591990";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1148823042489369 -5.7198690228688065e-13 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 26.549700738169669 0 ;
	setAttr ".radi" 5.446494159389089;
createNode ikEffector -n "effector27" -p "rtLegQd0_ball_ik";
	rename -uid "EBFC8422-4194-8D33-44DB-008C88699044";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector26" -p "rtLegQd0_digit_ik";
	rename -uid "795CCA43-4217-1D93-5821-0E814B96A8F2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector25" -p "rtLegQd0_palm_ik";
	rename -uid "51ADFFFE-4782-C4B1-E26D-A484528B1C62";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector24" -p "rtLegQd0_lwr_ik";
	rename -uid "B6271E08-43C4-4823-2BFE-899F2F2A2DA0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "F2EFC4C0-4A77-2811-4D38-D8921592BFB4";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -27.323678169030401 -5.4956039718945249e-15 0 ;
	setAttr ".r" -type "double3" 5.0888874903416268e-14 8.2236902367732556e-45 -1.851810414297121e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 93.992297416989842 6.5452519316441675 -6.9441370324643898 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "45FBE62D-42AA-8046-0EC5-A6BB5BAF4CCD";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -97.630729675292969 0 3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.361109362927032e-15 -7.3550327008843835e-15 1.0982852884428703e-14 ;
createNode ikEffector -n "effector28" -p "rtLegQd0_softJ";
	rename -uid "7E10EA5F-480E-B802-D335-3996D9596D67";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "7AE1C03F-4468-E944-AEBB-EAB75230C252";
	setAttr ".t" -type "double3" -34.664652807893319 59.540904332562711 -22.522745486274857 ;
	setAttr ".r" -type "double3" 179.23411894080473 -70.23217068958715 72.615058487284699 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "AF33AA69-4C59-CA26-D63C-F396EA786735";
	setAttr ".t" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "DC66FE9C-496C-0483-B294-469D2487AD09";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "D669F47E-426F-0108-A3B0-1CBFCC7E27AC";
	setAttr ".t" -type "double3" -0.6460533444892107 -57.699592783716419 -3.7007050737356622 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "CD27B645-4D9C-1B50-B378-B79F352B2468";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "80736FE5-4A92-20BB-AEB7-B489A4B9EF42";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 9.7626092464511203 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "8B182A4A-4FC6-0397-A77F-A5A7BA410218";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "B76C41D9-46B0-9A75-1575-2A8BDC872F7B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "F321F4AA-4BED-94C7-C9C6-A89C162EDC12";
	setAttr ".t" -type "double3" -6.4789536574601776 0 -5.2101508852951497 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "B868357C-40A2-ED15-12D1-CEB88733F6FC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "27ABCBBD-4522-1B3D-8089-7F882586B2DF";
	setAttr ".t" -type "double3" 10.96317448284562 0 0.13492987608006501 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "B2A3AAF3-434D-6D1D-94C4-5EAEB522F3A8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "CDE2C129-4762-1BF5-8C94-A0A980379B16";
	setAttr ".t" -type "double3" -4.4842208253854672 4.073240254730857 -2.0315011575438007 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "DE70EF62-46E4-E650-BFA9-1C8FAA9F046F";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "8E02A04F-40B8-1056-BFF6-D99DE26E8CBA";
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
	rename -uid "38D2A594-4BCE-94F1-BA70-558C2F6A66C2";
	setAttr ".t" -type "double3" 1.6799312163584545e-08 9.0345970031304841 -7.1953261104890771 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "F1BEE6DA-43DE-43AA-4B7B-DC9666844C2F";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" 164.85963298157333 1.5902773407317588e-15 88.61185710733325 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "CB0A3928-47F4-3340-F3FB-66BC81943175";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "F3E87F1A-4297-CFB5-2506-9F8E392344C0";
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
	rename -uid "7697F719-477F-CA0F-4D40-0FAAA3F24EFC";
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
	rename -uid "EB8F6557-4742-B8FE-3DF1-EA8B4B2473E6";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "A20A6B46-472E-37A9-7374-878A72A68EA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "DF0CC554-45C6-44D1-FD66-A7AD3DCDF0B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.64605332768991452 44.591755525855071 8.2401441045325043 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "A79B2C8A-4D2D-660A-45B8-DB958426BCDE";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "FF7F9F98-46A7-F4B7-06E1-00A0A906E1D1";
	setAttr ".t" -type "double3" 0.64605332768991275 44.591755525855056 8.2401441045324901 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "23AD60EC-4E7B-88D6-E74D-03AFE4265C63";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "E9682A13-412D-2295-1F6B-6CAD6B18B9E1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "D96E27BD-4E3D-AEE7-441B-23976D05B4F6";
	setAttr ".t" -type "double3" -4.4842208253854672 4.073240254730857 -2.0315011575438007 ;
	setAttr ".r" -type "double3" 0 63.450299261830331 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "DF1DBA1C-4365-ABB4-327F-64938381CB6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 -24.915811730248471 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.89454697444176312 -1.4887223066476521e-16 0.44697394836510068 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "5C1C7001-4BB5-9A6B-1BB0-0091A9B61454";
	setAttr ".t" -type "double3" 4.2632564145606011e-14 -1.0658141036401503e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "DE6AABAA-4E5D-BA88-3CF2-94B5F20F323C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "B1BA6D35-491C-BC81-67C1-31AE49726680";
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
createNode nurbsCurve -n "rtLegQd0_outRollG_ctlShape1" -p "rtLegQd0_outRollG_ctl";
	rename -uid "50B28216-4748-E004-C482-F4BAC5C6AA33";
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
createNode nurbsCurve -n "rtLegQd0_toeRollG_ctlShape1" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "06403F42-4741-EDB1-4050-81A5E1596671";
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
createNode nurbsCurve -n "rtLegQd0_heelRollG_ctlShape1" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "94292B7C-4C7F-990C-12FF-7CA8EA6D5285";
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
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_IK";
	rename -uid "8C705D0E-46D7-038F-4500-1A8141E2C041";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "ECD50B18-4541-4C5C-16E4-F998A5A14FD1";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20.085522769502951 99.425768315673295 -57.593113242013871
		-30.631906770732279 99.999085810922693 -16.022525009026818
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "0FD6FC08-4A12-873A-0FAF-30891BC38CED";
	setAttr ".t" -type "double3" -16.151869288832433 13.107837257861341 -101.71636364425859 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "1EC4471F-4761-79C5-CA79-498CF95D947E";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "100541EC-42F7-3F28-D5B7-BBA2BE0E4072";
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
	rename -uid "C090EFA8-442B-7702-017F-9187B34DE0A1";
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
	rename -uid "D82F29C2-4BE3-C4C2-8EB8-69B50D1A9C31";
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
	rename -uid "65A69057-4CE3-37B3-8224-D9B4730F455F";
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
	rename -uid "C703EAEE-4AD3-BB76-FA22-B0823C9FAEF2";
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
	rename -uid "C76C736E-4FC4-1CAF-AB50-24909F729F94";
	setAttr ".t" -type "double3" -1.6799287294588794e-08 -13.107837257861341 14.302048277247962 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "4238AEBC-4206-3EFE-665A-02A0CCB965D8";
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
	rename -uid "6081A9B2-4808-BAC0-7FA7-59A150FF1992";
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
	rename -uid "3CF50E1D-4B28-8499-DEE7-D7AF98DAC19F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -2.1316282072803006e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "81075664-46B7-E7BA-C83A-1B8FE2CB9972";
	setAttr ".t" -type "double3" -30.631906770732275 99.999085810922693 -16.022525009026815 ;
	setAttr ".r" -type "double3" -0.76588105919531901 -14.235497039063343 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "F707818D-4643-80E5-6B86-1998E4A97E11";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "8A8E1000-40BB-A79A-7C90-528D7A79C39D";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 4.2632564145606011e-14 6.2172489379008766e-15 ;
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
	rename -uid "73631FCD-43B6-9DE5-1336-F4BDE5AA7577";
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
createNode transform -n "rtLegQd0_extraRollG_ofs_loc" -p "rtLegQd0_IK";
	rename -uid "AEA20A7C-49A2-B14C-D0E9-33B68AB9BC1C";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -14.360662628898348 7.5059827724748205 81.823213529737686 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "018DD86B-47AB-BDCB-E085-5A9BAFE8F2B5";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "B6D5C146-4438-A7C0-9724-8E9FA34E6F21";
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
	rename -uid "112FBBF4-4D9E-4B0B-265B-168EC17CF07A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.0774902656484819 9.0774902656484819 2.2598394987066917e-16
		-8.9030687820160956 9.0774902656484819 -1.7709304600812621
		-8.3865074224663392 9.0774902656484819 -3.473805237944819
		-7.5476574833555654 9.0774902656484819 -5.0431832725329793
		-6.4187549213547213 9.0774902656484819 -6.4187549213547213
		-5.0431832725329793 9.0774902656484819 -7.5476574833555654
		-3.473805237944819 9.0774902656484819 -8.3865074224663392
		-1.7709304600812621 9.0774902656484819 -8.9030687820160956
		5.558359701320289e-16 9.0774902656484819 -9.0774902656484819
		1.7709304600812621 9.0774902656484819 -8.9030687820160956
		3.473805237944819 9.0774902656484819 -8.3865074224663392
		5.0431832725329793 9.0774902656484819 -7.5476574833555654
		6.4187549213547213 9.0774902656484819 -6.4187549213547213
		7.5476574833555654 9.0774902656484819 -5.0431832725329793
		8.3865074224663392 9.0774902656484819 -3.473805237944819
		8.9030687820160956 9.0774902656484819 -1.7709304600812621
		9.0774902656484819 9.0774902656484819 -9.8183680421986131e-16
		8.7319992769058761 9.0774902656484819 -1.7369025107602931
		7.7481225935016012 9.0774902656484819 -3.2093774606773606
		6.2756474271603002 9.0774902656484819 -4.1932537112331696
		4.538745132824241 9.0774902656484819 -4.538745132824241
		2.8018426220639476 9.0774902656484819 -4.1932537112331696
		1.3293676721468801 9.0774902656484819 -3.2093774606773606
		0.34549142159107066 9.0774902656484819 -1.7369025107602931
		0 9.0774902656484819 -9.8183680421986131e-16
		-0.34549142159107066 9.0774902656484819 1.7369025107602931
		-1.3293676721468801 9.0774902656484819 3.2093774606773606
		-2.8018426220639476 9.0774902656484819 4.1932537112331696
		-4.538745132824241 9.0774902656484819 4.538745132824241
		-6.2756474271603002 9.0774902656484819 4.1932537112331696
		-7.7481225935016012 9.0774902656484819 3.2093774606773606
		-8.7319992769058761 9.0774902656484819 1.7369025107602931
		-9.0774902656484819 9.0774902656484819 2.2598394987066917e-16
		-8.9030687820160956 9.0774902656484819 1.7709304600812621
		-8.3865074224663392 9.0774902656484819 3.473805237944819
		-7.5476574833555654 9.0774902656484819 5.0431832725329793
		-6.4187549213547213 9.0774902656484819 6.4187549213547213
		-5.0431832725329793 9.0774902656484819 7.5476574833555654
		-3.473805237944819 9.0774902656484819 8.3865074224663392
		-1.7709304600812621 9.0774902656484819 8.9030687820160956
		-1.0597379050687125e-15 9.0774902656484819 9.0774902656484819
		1.7709304600812621 9.0774902656484819 8.9030687820160956
		3.473805237944819 9.0774902656484819 8.3865074224663392
		5.0431832725329793 9.0774902656484819 7.5476574833555654
		6.4187549213547213 9.0774902656484819 6.4187549213547213
		7.5476574833555654 9.0774902656484819 5.0431832725329793
		8.3865074224663392 9.0774902656484819 3.473805237944819
		8.9030687820160956 9.0774902656484819 1.7709304600812621
		9.0774902656484819 9.0774902656484819 -9.8183680421986131e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe02_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "3F066845-4DE9-8598-CBC5-F0B4BB5E9DF1";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_4_ctl" -p "rtLegQd0_toe02_4_ctl_ofs";
	rename -uid "FB0A699B-4D87-BDAC-C6E0-F49B97BE7508";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_4_ctlShape1" -p "rtLegQd0_toe02_4_ctl";
	rename -uid "65F7339E-4631-EF2C-8F75-C3B0CE1F2257";
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
		1.4162635225509498e-14 2.3493026641920327 2.3493026641920385
		1.4142662058908151e-14 -3.0948995973056637e-15 2.124249806224511
		1.4162635225509498e-14 -2.3493026641920389 2.3493026641920371
		1.4210854715202004e-14 -2.1242498062245199 8.2484043883593291e-16
		1.425907420489451e-14 -2.3493026641920389 -2.3493026641920358
		1.4279047371495853e-14 -3.4377599395252506e-15 -2.1242498062245128
		1.425907420489451e-14 2.3493026641920327 -2.3493026641920371
		1.4210854715202004e-14 2.1242498062245136 4.2503575771751506e-16
		1.4162635225509498e-14 2.3493026641920327 2.3493026641920385
		1.4142662058908151e-14 -3.0948995973056637e-15 2.124249806224511
		1.4162635225509498e-14 -2.3493026641920389 2.3493026641920371
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe03_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "AE4C8621-47B1-F8DE-3D32-A2BA84058F33";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe03_4_ctl" -p "rtLegQd0_toe03_4_ctl_ofs";
	rename -uid "84EFEB24-4526-DE6D-2AF0-969207F7F2A5";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_4_ctlShape1" -p "rtLegQd0_toe03_4_ctl";
	rename -uid "2AD785FC-4345-3155-CC4E-82A18DB1DCF6";
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
		-1.3452831108995817e-14 2.3493026641920425 2.3493026641920474
		-1.3472804275597161e-14 6.9077588486843877e-15 2.1242498062245199
		-1.3452831108995817e-14 -2.3493026641920287 2.349302664192046
		-1.3404611619303309e-14 -2.1242498062245101 9.5427539882343218e-15
		-1.3356392129610803e-14 -2.3493026641920287 -2.3493026641920269
		-1.3336418963009458e-14 6.5648985064648012e-15 -2.1242498062245039
		-1.3356392129610803e-14 2.3493026641920425 -2.3493026641920283
		-1.3404611619303309e-14 2.1242498062245239 9.1429493071159041e-15
		-1.3452831108995817e-14 2.3493026641920425 2.3493026641920474
		-1.3472804275597161e-14 6.9077588486843877e-15 2.1242498062245199
		-1.3452831108995817e-14 -2.3493026641920287 2.349302664192046
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "72944822-4311-A5AC-EB49-788B2DF7FBE8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "698DDF92-492F-CA4A-9E1C-8E8BADC939B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 27.232470796945442 27.232470796945442 27.232470796945442 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "FA3C3056-4995-2737-670E-0584E2486CDA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "A736A149-452D-D448-875D-C686E36E076B";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "D9F0E0C4-4DA4-1477-B38C-FAAFCC5732BD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.9492822723945573 18.303495974984916 77.943727269027661 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "CA5BA223-41F6-2E22-95D3-4AA6556E764D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 173.62177251387757 -72.385695229271619 11.6893017673139 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "28A1DCC5-4743-C6EB-0AA4-68946D246F82";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -58.115264991147257 0 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "021D858A-479B-EBE1-C202-A5B3D09CFBD2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -178.48650685040104 4.2059390717482854 -5.5243431553392668 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "0FF1EA66-42AC-1461-A818-10A80D736EB1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -14.458189649448554 53.222003176042392 -11.668636215139017 ;
	setAttr ".radi" 3.7760723388854718;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "B8405B77-43D3-FA8E-F3F2-E4B76985FC7F";
	setAttr ".t" -type "double3" -9.848870950438716 1.7763568394002505e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -0.79278838180965505 24.442926129025942 -1.3252730434375593 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "F1FD2765-4B47-1DFF-026D-0F920B92EB22";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999967 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "865DB508-42BD-18A0-C72A-00A459CB159A";
	setAttr ".t" -type "double3" -9.8488709504387373 1.7763568394002505e-14 -4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" -0.79278838180960431 24.442926129025945 -1.3252730434376174 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "73879C88-44AC-7F60-0CAC-96B879A9EF09";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "F0D7B9E3-4A42-38C2-9A91-13ADC362CA76";
	setAttr ".t" -type "double3" -9.8488709504387515 1.7763568394002505e-14 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "1DF2F839-446E-42A4-E3C7-E190072BC15E";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -2.0613970029235417e-13 8.8676597808392771e-16 5.8604204814310187e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.2694421718051417e-14 -1.2722218725854067e-14 -3.8166656177562201e-14 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "EECAFFF9-4742-C9B6-F35B-7C970FD29D96";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7955392884333463 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.9794580950901106 11.2764324519976 10.023399054121521 ;
	setAttr ".radi" 3.7760723388854718;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "2499CE06-4CD3-D1E6-5322-788F70D7EEB1";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "19F47552-4576-B3F7-B44B-D1B8C1EA24AF";
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
	rename -uid "3771490C-4E9B-9CF5-AD04-34BD2D402D03";
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
		-2.315492851400425e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "2D567136-46D7-084E-7924-138656DCCDDA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "2142C98C-4C30-32ED-607B-E780B7342801";
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
	rename -uid "F78346AB-4A63-D8F8-335D-60816069B70F";
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
		-2.315492851400425e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "49F73832-45E9-A26A-9DC0-D2AC680A4D3F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "4E0A2E61-4D8C-AAF3-22B5-45ACA044BA58";
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
	rename -uid "E28149DB-4B9B-C1B0-9BAE-CEAB1C96F0F4";
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
		-2.315492851400425e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "A7134065-4779-76EA-4E18-1C891E27DA96";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "C0E221A4-4BAE-79FB-F861-DEBB0E409C0F";
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
	rename -uid "22BBFC64-45DF-AEED-9EFD-759F89DD432D";
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
		-2.315492851400425e-31 17.672992643180084 -6.8623751145603988e-15
		-4.0116877219264544e-16 19.545351294941323 19.545351294941323
		-5.6733831843540303e-16 1.770315760180466e-15 17.672992643180049
		-4.0116877219264529e-16 -19.545351294941323 19.545351294941334
		-3.3832792992262897e-31 -17.672992643180084 -3.5361442883126675e-15
		4.0116877219264554e-16 -19.545351294941323 -19.545351294941348
		5.6733831843540254e-16 -1.0821586935912584e-15 -17.672992643180034
		4.0116877219264529e-16 19.545351294941323 -19.545351294941334
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "2A6B1491-43AB-CC45-061F-289AB300AFB4";
	setAttr ".t" -type "double3" -5.6843418860808015e-14 1.7763568394002505e-14 -1.5631940186722204e-13 ;
	setAttr ".r" -type "double3" 54.409045225748052 5.0283456426045401 -83.017921108859568 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "F0F85650-4F91-10A7-7F1C-1BB39BD425E9";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "9661D047-4F76-1CE2-D136-80A7ABA0FC1E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "322868DC-425E-7428-1041-47838C3738EB";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999967 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "B2186DD2-475C-2A71-7BBE-C4BE845739DC";
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
	rename -uid "2B07B054-49A8-368A-1437-AC98FAA58CC4";
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
	rename -uid "033E45BF-4076-5EA2-4A97-A2BCA8E04B81";
	setAttr ".t" -type "double3" -52.620070316650612 -5.6843418860808015e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "2125F036-41AB-A13E-375D-2CA36AA8E013";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "B2B0D4BA-4AA5-3EE2-28F5-3899FDAED66B";
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
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "8E9444C3-465A-BAAC-57DF-8C8636C24018";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 5.6843418860808015e-14 1.4210854715202004e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 141.24940146224139 -22.954453788772177 6.0989463838648295 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "8E5ED1B0-4379-3CB2-139D-15AEC6841410";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -179.1405964331783 -1.0658141036401503e-14 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.9310840053969449e-32 1.5902773407317588e-15 3.975693351829396e-15 ;
	setAttr ".radi" 5.6641085083282077;
createNode ikEffector -n "effector39" -p "rtLegQd1_autoAim";
	rename -uid "FECB2251-4FAC-3642-CE80-D08339950DB5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "E333B4DA-4535-F22D-C387-6FAA56EA09AF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 38.750598537758599 22.954453788772156 -173.90105361613524 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "2641E14C-4E30-EA5C-0274-4EB154159626";
	setAttr ".t" -type "double3" -30.744220714542163 8.6697449464688177 57.470579282736118 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "5CD36EA9-4C56-FE9C-5149-E399FF0656D0";
	setAttr ".t" -type "double3" -1.1926101391089112 -5.7748146934571718 7.8885648824666177 ;
	setAttr ".r" -type "double3" -41.117882932704624 74.955955973493829 49.869515286965296 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "B6D14C7C-4C7F-7598-D37E-10B2686B4A7A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "9CF9BB8F-4713-A822-B907-0C9F66E9033F";
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
	rename -uid "9357144C-4BE8-6E1C-DFC9-D39395425106";
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
	rename -uid "1862120D-4E05-9CEB-6B8B-E4B65E1C56DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7955392884333605 -1.4210854715202004e-14 -2.1316282072803006e-13 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951699 -0.17069033769676414 0.19554277016610602 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "367B88D5-45CF-ED13-BF62-52B17C651224";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "B9B313CD-4747-6081-6B7F-62B942B01020";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
createNode ikHandle -n "rtLegQd1_toe02_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "B3B92D96-4615-ECA1-0704-DDB6DA9242EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45879538266976283 -2.702182448779002 -0.092898053776465872 ;
	setAttr ".r" -type "double3" 0.65362903569347719 -24.578774552256476 2.6650784433292425 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951721 -0.17069033769676473 0.19554277016610574 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe03_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "3CBB0325-4114-991F-452C-47835AD8F743";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45304538096715419 2.668316437814017 0.091733778834402813 ;
	setAttr ".r" -type "double3" -0.49116290057656065 -24.157105834781916 -2.012861898529442 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951721 -0.17069033769676473 0.19554277016610574 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "4F405292-41D6-26D4-6EC4-308DF8CB69F9";
	setAttr ".t" -type "double3" 0.45879538266973441 -2.7021824487790091 -0.092898053776472977 ;
	setAttr ".r" -type "double3" -0.47113508546591543 3.5428128579974203 -2.352149516376361 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs1" -p "rtLegQd1_toe02_3_ikc_ofs";
	rename -uid "4851A3F7-4301-E6DE-2A1F-6793DA8DD9A4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "rtLegQd1_toe02_3_ikc" -p "rtLegQd1_toe02_3_ikc_ofs1";
	rename -uid "D33FE15F-4F5B-FDB3-A798-69B1142A50B8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_3_ikcShape1" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "C81427F0-47D2-D7A8-721E-CF8D9DE99533";
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
		0 -2.6148133300564136e-15 3.9719419241285825e-15
		0 -2.6148133300564136e-15 6.3466647021323448
		-0.73289873816831463 -2.6148133300564136e-15 6.3466647021323448
		-0.73289873816831463 -2.6148133300564136e-15 7.8124621784689792
		0.73289873816831463 -2.6148133300564136e-15 7.8124621784689792
		0.73289873816831463 -2.6148133300564136e-15 6.3466647021323448
		0 -2.6148133300564136e-15 6.3466647021323448
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe02_3_1_ikj_ikh" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "8DBEB3ED-4C30-28DA-270F-95BF561908FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.8219693906680021 -0.52983626634963699 -0.47129462223777097 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96816035864173144 -0.21129211496546962 0.13424292200385501 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "7D7E3C8E-4F66-5669-767F-86A62101761E";
	setAttr ".t" -type "double3" -0.4530453809671684 2.6683164378140205 0.09173377883439926 ;
	setAttr ".r" -type "double3" 0.7771866265574322 3.3886526727361832 3.8806157854084278 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs1" -p "rtLegQd1_toe03_3_ikc_ofs";
	rename -uid "15B7466D-4B1A-C019-AB2D-0AB2A03B2D73";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe03_3_ikc" -p "rtLegQd1_toe03_3_ikc_ofs1";
	rename -uid "B44E0B16-44E5-28F0-E4F1-7F8430E87BA1";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_3_ikcShape1" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "97D11109-4B6C-CA27-D510-45B35076E515";
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
		0 3.9719419241285825e-15 -2.6148133300564136e-15
		0 3.9719419241285825e-15 6.3466647021323395
		-0.73289873816831463 3.9719419241285825e-15 6.3466647021323395
		-0.73289873816831463 3.9719419241285825e-15 7.812462178468973
		0.73289873816831463 3.9719419241285825e-15 7.812462178468973
		0.73289873816831463 3.9719419241285825e-15 6.3466647021323395
		0 3.9719419241285825e-15 6.3466647021323395
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe03_3_1_ikj_ikh" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "FDC2F82C-4944-C886-1AD6-7DB802DE00E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7930720948510555 -0.25844630836587612 -0.45915251432871962 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.98491776128724373 -0.10306517264132792 0.13897688185211732 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "C87311A6-483A-8090-ECBF-9A93A0873913";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "579425C1-4AAA-5DCA-197B-C3815AA204DC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.9492822723945573 18.303495974984916 77.943727269027661 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "2914577D-4D35-03A6-E567-C4BD98EB6341";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.62007031665064 -3.5527136788005009e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 173.62177251387757 -72.385695229271619 11.6893017673139 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "29A4A88B-49E0-BEC4-1883-30BF4D7B4898";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -8.1858816100517516e-22 -1.8196091339712136e-06 -5.5076466905771793e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -58.115264991147257 0 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "AE5254E7-43B5-5C5C-B024-3888704BC759";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -63.177559298114559 2.8421709430404007e-14 1.2789769243681803e-13 ;
	setAttr ".r" -type "double3" -1.6376649086933981e-07 -4.5964013350248079e-06 1.3394816831701847e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -178.48650685040104 4.2059390717482854 -5.5243431553392668 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "C9715C53-448C-45E8-E98D-85BBF0BCD409";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -42.231192184245629 -0.22388066542857032 -2.2118295126772693 ;
	setAttr ".r" -type "double3" -4.8842180332563256e-07 8.8092474426243196e-22 3.5236989334946083e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -14.458189649448554 53.222003176042392 -11.668636215139017 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "13454AF9-4376-F9B2-45F6-688A7C13FDD3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.8488709504387373 1.7763568394002505e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -5.5939099571050028e-07 -2.9245008496105603e-22 1.4276264814988003e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.79278838180958022 24.442926129025921 -1.3252730434376279 ;
	setAttr ".radi" 5.6641085083282077;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "7D512DCD-4AC2-FABC-1122-268E2C204E11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7955392884333463 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.9794580950901106 11.2764324519976 10.023399054121521 ;
	setAttr ".radi" 5.6641085083282077;
createNode ikEffector -n "effector37" -p "rtLegQd1_ball_ik";
	rename -uid "A36658A3-4791-92DA-00F5-6C9C488E26E2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector36" -p "rtLegQd1_digit_ik";
	rename -uid "545FB8BE-4285-40DD-39B2-3BAE8CFCCBB5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector35" -p "rtLegQd1_palm_ik";
	rename -uid "12AD714B-4C05-5A65-2A1D-72B687242311";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector34" -p "rtLegQd1_lwr_ik";
	rename -uid "F2EB4CC5-43D3-917D-A3F0-BE8E6BAE8061";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "A4D363E5-4B31-071C-B3A1-BB83C788A865";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -52.620070316650654 -4.9737991503207013e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 104.94149548137482 -36.568020365111948 7.0375715589066807 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "BC1D566B-4DBE-7C07-01F4-3D90B0D14598";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -91.494850158691406 -1.7763568394002505e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.9310840053969449e-32 1.5902773407317588e-15 3.975693351829396e-15 ;
createNode ikEffector -n "effector38" -p "rtLegQd1_softJ";
	rename -uid "F4C7518A-44FE-E256-57D6-3FBD642D122E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "7093530A-4769-1996-56C6-F891E62FCE81";
	setAttr ".t" -type "double3" -50.992042444728355 -63.269944595285381 19.755344676435456 ;
	setAttr ".r" -type "double3" 4.9707106205802356 74.013217760178563 -108.79162175453811 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "260F5394-4FB6-CA0A-62F2-DC9758215F04";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "63E1B474-41A8-D042-D49F-1189D0C84B27";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "D05FBAD2-495F-CA01-B691-F1B1CFE7DC8C";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -49.550001881883162 4.4173370618726935 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "FA7E3D7E-474E-9225-A176-A09EBFE8B5F0";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "23E7747B-4D21-06DF-1251-B49670144958";
	setAttr ".t" -type "double3" -2.0217887614951096 0 8.393702115667395 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "D6EEC5FB-42F2-B8E2-F226-5783BCEB4E75";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "E472F724-498F-EDBA-4BE4-1780960BC13E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "934EC8AE-4B39-2E87-8C16-0180593D4553";
	setAttr ".t" -type "double3" -3.9909575445434342 0 -5.0602270072448903 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "D156C4DF-425A-F56E-33DA-AE86149CD44C";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "B7C5AF79-4EFB-B45C-7F1D-ADA923CB1997";
	setAttr ".t" -type "double3" 10.508384412859932 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "D664ABD4-4762-D887-DD8B-30873B97A7D9";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "48F1A452-454A-5020-D219-2284FC4C98EA";
	setAttr ".t" -type "double3" -5.4643676848224167 1.5439952492278985 -2.0740766745503265 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "C4FC5EAD-4517-6129-057E-019240411FC1";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "D0A31C2D-4C70-A625-74D4-409A63638781";
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
	rename -uid "24E15E18-462B-7471-5044-FCB8C8CF24CD";
	setAttr ".t" -type "double3" 1.1926102434295771 5.7748144484096384 -7.8885650084221339 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "AA62B72D-4774-7381-16B2-FA9DC7D9C481";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".r" -type "double3" 166.58160047469804 0 86.897766177184138 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "1338F522-499A-93D3-F246-EAA6992AD0C5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "D8338925-4AD6-E780-1F8C-2D99A320E2B0";
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
	rename -uid "AD729108-4A7F-939C-81A4-E38415A037BB";
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
	rename -uid "4FA0ECA0-4464-2D84-741A-2BBAA5071D24";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "28D9F15D-4CC7-F627-A9BB-1C8DB349B08A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1974423109204508e-14 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "793E1408-4A18-1953-5C9E-B0A0E9E4A0E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.2238806654285348 42.231192184245629 2.2118295126772622 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "1A8DDABB-4599-9EF6-5F48-A8B1CF45A25C";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "0297E7B4-441A-F8C6-A78C-0A89E58577CC";
	setAttr ".t" -type "double3" -0.2238806654285419 42.231192184245629 2.2118295126772551 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "AA10A7FE-4947-0AFB-FE80-1BA15CDB7EDA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "6F517CED-4C68-51E3-12C4-1E8761F9B2C6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "37E81B1E-4C68-6372-0DA3-BC8505C4D6DD";
	setAttr ".t" -type "double3" -5.4643676848224167 1.5439952492278985 -2.0740766745503265 ;
	setAttr ".r" -type "double3" -41.117882932704582 74.955955973493772 49.869515286965168 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "FA4C6B18-4C51-02EE-5403-F1B6EBBD58CF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -3.907985046680551e-14 0 ;
	setAttr ".r" -type "double3" 0.26834444855901246 -24.453608497333747 1.0954029858588925 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96572658327951666 -0.170690337696765 0.19554277016610666 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "BB14D94F-44C2-0CD3-3633-049B28A2435C";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 -3.1974423109204508e-14 2.0250467969162855e-13 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "D7565DD0-4B3A-505F-91B6-3C89C007BC15";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "AB9CB36A-4785-19A8-020D-DEA3FC67A8E1";
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
createNode nurbsCurve -n "rtLegQd1_outRollG_ctlShape1" -p "rtLegQd1_outRollG_ctl";
	rename -uid "37681FC7-4F40-D31C-5080-BA8C936DE0FE";
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
createNode nurbsCurve -n "rtLegQd1_toeRollG_ctlShape1" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "856BAD38-47B6-C5ED-96AD-6B95BA609A18";
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
createNode nurbsCurve -n "rtLegQd1_heelRollG_ctlShape1" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "EDD00103-4063-1D1F-3C83-41A117DA37AE";
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
createNode transform -n "rtLegQd1_line_53" -p "rtLegQd1_IK";
	rename -uid "E9AF717E-497F-3A59-9D5A-B8BC465ECB54";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "925E901C-4EA2-F293-4E78-3CAECD6D9A91";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-24.766389985439353 113.61570637702209 55.23263748592256
		-23.614142280087052 109.62577292424093 9.3718736253704638
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "606DA05B-4006-7528-7BB6-998AECC81CD3";
	setAttr ".t" -type "double3" -30.744220610221515 8.6697447014210738 57.470579156780545 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "115F20E4-4825-3B43-684C-AA9A6D83C3C4";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "FFF18513-4DCD-35B4-F5CC-668FE692E5FE";
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
	rename -uid "E9B61E2D-48A2-B343-0A86-73BDF6BB3C5D";
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
	rename -uid "C1DC996D-4648-57E8-7D78-E9BA49CE0D04";
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
	rename -uid "ECB44520-4B5F-4ED0-3C46-B6B2693AF240";
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
	rename -uid "2F514382-4B09-D55F-2868-C3801F3AE00A";
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
	rename -uid "E792611E-43CE-BDC0-7F2C-C78B87C189B1";
	setAttr ".t" -type "double3" -2.2456694269236515 -7.3188096976375334 15.022868690217351 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "73105A70-4283-DA8A-6F1A-EFB56D84D526";
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
	rename -uid "E0870851-42CB-C18A-10D6-2B9B8CFE23C4";
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
	rename -uid "A298FDB6-4E5B-046C-5079-1398538780AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -4.9737991503207013e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "9064C4CD-4EA4-29B9-E191-D1B5CA896197";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 38.678440648633668 4.5511212140658879 -95.660644388659151 ;
	setAttr ".radi" 3.7760723388854718;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "69FF4923-45A0-8261-BACE-1C8BD4C23646";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -179.14059643317813 -8.8817841970012523e-14 7.1054273576010019e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.7760723388854718;
createNode ikEffector -n "effector40" -p "rtLegQd1_legLock";
	rename -uid "53EF79F7-4AFF-053C-3E90-398AE0D55AFC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "0A6E88EC-4CA6-D9D3-947A-318E3474D53B";
	setAttr ".t" -type "double3" -23.614142280087052 109.62577292424095 9.3718736253704673 ;
	setAttr ".r" -type "double3" 4.9707106205800633 178.56075131676488 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "FC040599-49BB-D7D6-E88E-8081AB3AD075";
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "800AAD78-407F-1559-3BEB-F2A1F7967524";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-14 5.6843418860808015e-14 -2.8421709430404007e-14 ;
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
	rename -uid "38756343-4DA9-B3B8-5C56-0597249F5C85";
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
createNode transform -n "rtLegQd1_extraRollG_ofs_loc" -p "rtLegQd1_IK";
	rename -uid "5556C01F-41EC-099C-71E8-899EF6EB86D2";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -3.2547609035170062 -125.96978941682173 -92.877352054197459 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "6C3177C4-44BD-C986-7AB0-A3A3C0D058E0";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "CFCA0B38-4BAC-CE30-6A40-A78F8047D968";
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
	rename -uid "D0D4CBFF-4B14-C3FB-AC16-F6BF304F0BDF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-9.4401808472136786 9.4401808472136786 2.3501312509470214e-16
		-9.2587903636171198 9.4401808472136786 -1.8416878808750934
		-8.7215898257893993 9.4401808472136786 -3.6126009188129418
		-7.8492236874475063 9.4401808472136786 -5.2446833590686488
		-6.675215890986431 9.4401808472136786 -6.675215890986431
		-5.2446833590686488 9.4401808472136786 -7.8492236874475063
		-3.6126009188129418 9.4401808472136786 -8.7215898257893993
		-1.8416878808750934 9.4401808472136786 -9.2587903636171198
		5.7804436313080012e-16 9.4401808472136786 -9.4401808472136786
		1.8416878808750934 9.4401808472136786 -9.2587903636171198
		3.6126009188129418 9.4401808472136786 -8.7215898257893993
		5.2446833590686488 9.4401808472136786 -7.8492236874475063
		6.675215890986431 9.4401808472136786 -6.675215890986431
		7.8492236874475063 9.4401808472136786 -5.2446833590686488
		8.7215898257893993 9.4401808472136786 -3.6126009188129418
		9.2587903636171198 9.4401808472136786 -1.8416878808750934
		9.4401808472136786 9.4401808472136786 -1.0210660351089541e-15
		9.0808857866444406 9.4401808472136786 -1.8063003468707457
		8.0576983691000557 9.4401808472136786 -3.3376079454932155
		6.5263905454061355 9.4401808472136786 -4.3607949128946997
		4.7200904236068393 9.4401808472136786 -4.7200904236068393
		2.913790076736094 9.4401808472136786 -4.3607949128946997
		1.382482478113624 9.4401808472136786 -3.3376079454932155
		0.35929551071214016 9.4401808472136786 -1.8063003468707457
		0 9.4401808472136786 -1.0210660351089541e-15
		-0.35929551071214016 9.4401808472136786 1.8063003468707457
		-1.382482478113624 9.4401808472136786 3.3376079454932155
		-2.913790076736094 9.4401808472136786 4.3607949128946997
		-4.7200904236068393 9.4401808472136786 4.7200904236068393
		-6.5263905454061355 9.4401808472136786 4.3607949128946997
		-8.0576983691000557 9.4401808472136786 3.3376079454932155
		-9.0808857866444406 9.4401808472136786 1.8063003468707457
		-9.4401808472136786 9.4401808472136786 2.3501312509470214e-16
		-9.2587903636171198 9.4401808472136786 1.8416878808750934
		-8.7215898257893993 9.4401808472136786 3.6126009188129418
		-7.8492236874475063 9.4401808472136786 5.2446833590686488
		-6.675215890986431 9.4401808472136786 6.675215890986431
		-5.2446833590686488 9.4401808472136786 7.8492236874475063
		-3.6126009188129418 9.4401808472136786 8.7215898257893993
		-1.8416878808750934 9.4401808472136786 9.2587903636171198
		-1.1020796697909024e-15 9.4401808472136786 9.4401808472136786
		1.8416878808750934 9.4401808472136786 9.2587903636171198
		3.6126009188129418 9.4401808472136786 8.7215898257893993
		5.2446833590686488 9.4401808472136786 7.8492236874475063
		6.675215890986431 9.4401808472136786 6.675215890986431
		7.8492236874475063 9.4401808472136786 5.2446833590686488
		8.7215898257893993 9.4401808472136786 3.6126009188129418
		9.2587903636171198 9.4401808472136786 1.8416878808750934
		9.4401808472136786 9.4401808472136786 -1.0210660351089541e-15
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe02_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "3599D342-4672-2A6D-D5FA-799172788F0E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_4_ctl" -p "rtLegQd1_toe02_4_ctl_ofs";
	rename -uid "E1D4D1C7-43A1-0515-9E53-F98F93D4A9E7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_4_ctlShape1" -p "rtLegQd1_toe02_4_ctl";
	rename -uid "AFA86E6A-45B1-82D2-AB8C-30A7726583F4";
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
		-8.8860258718024412e-16 2.4431689118676618 2.4431689118676641
		-9.09373780460589e-16 -3.4174438421015932e-15 2.2091240803974999
		-8.8860258718024412e-16 -2.4431689118676694 2.4431689118676623
		-8.3845649065616352e-16 -2.2091240803975141 -3.5333732801366144e-15
		-7.8831039413208282e-16 -2.4431689118676694 -2.4431689118676698
		-7.6753920085173814e-16 -3.7740031488230586e-15 -2.2091240803975105
		-7.8831039413208282e-16 2.4431689118676618 -2.4431689118676712
		-8.3845649065616352e-16 2.209124080397507 -3.9491521334175808e-15
		-8.8860258718024412e-16 2.4431689118676618 2.4431689118676641
		-9.09373780460589e-16 -3.4174438421015932e-15 2.2091240803974999
		-8.8860258718024412e-16 -2.4431689118676694 2.4431689118676623
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe03_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "C497F170-4ECA-C383-7D02-88BD4271849B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_4_ctl" -p "rtLegQd1_toe03_4_ctl_ofs";
	rename -uid "0BC22F59-4004-FD1E-288C-AB91366AF62B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_4_ctlShape1" -p "rtLegQd1_toe03_4_ctl";
	rename -uid "A541CC84-4338-1B76-D6F5-77915FCA02B8";
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
		1.2483795637365595e-14 2.4431689118676552 2.4431689118676641
		1.246302444408525e-14 -1.0323983483526747e-14 2.2091240803974999
		1.2483795637365595e-14 -2.443168911867676 2.4431689118676623
		1.2533941733889674e-14 -2.2091240803975212 -3.5333732801366144e-15
		1.2584087830413757e-14 -2.443168911867676 -2.4431689118676698
		1.26048590236941e-14 -1.0680542790248214e-14 -2.2091240803975105
		1.2584087830413757e-14 2.4431689118676552 -2.4431689118676712
		1.2533941733889674e-14 2.2091240803974999 -3.9491521334175808e-15
		1.2483795637365595e-14 2.4431689118676552 2.4431689118676641
		1.246302444408525e-14 -1.0323983483526747e-14 2.2091240803974999
		1.2483795637365595e-14 -2.443168911867676 2.4431689118676623
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "618595A4-402E-7FAB-535F-04A7D89C2DB0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "F12804A9-49C7-A15A-0CC0-FE82E4D477D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 28.320542541641039 28.320542541641039 28.320542541641039 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "E2E1AD9F-402D-424C-FF15-16A9833C896E";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "19AFACD3-42F7-D1C4-A7C7-0B8E16998055";
	setAttr ".t" -type "double3" 6.5445403003155925e-14 177.69522632701424 -53.446169499373319 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "36F67A1F-4732-01BE-772B-C287412ED3C1";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "B4509A36-4484-3382-3AC0-8BBD799B462F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "0AD4E25D-4E85-FD94-6882-C4BEB48A1CB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		3.8326462169581981 84.318216773080366 68.541713097506516
		3.8326462169581981 94.597689869094012 68.541713097506516
		3.8326462169581981 99.648801640913149 37.880543361840935
		3.8326462169581981 84.318216773080366 37.880543361840935
		3.8326462169581981 84.318216773080366 68.541713097506516
		-3.8326462169581981 84.318216773080366 68.541713097506516
		-3.8326462169581981 84.318216773080366 37.880543361840935
		3.8326462169581981 84.318216773080366 37.880543361840935
		3.8326462169581981 99.648801640913149 37.880543361840935
		-3.8326462169581981 99.648801640913149 37.880543361840935
		-3.8326462169581981 84.318216773080366 37.880543361840935
		-3.8326462169581981 99.648801640913149 37.880543361840935
		-3.8326462169581981 94.597689869094012 68.541713097506516
		-3.8326462169581981 84.318216773080366 68.541713097506516
		3.8326462169581981 84.318216773080366 68.541713097506516
		3.8326462169581981 94.597689869094012 68.541713097506516
		-3.8326462169581981 94.597689869094012 68.541713097506516
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9C57AFBC-4D98-7A83-116A-21BA15C24F2B";
	setAttr ".t" -type "double3" -6.5445403003155925e-14 0.7936940591402788 24.507648940632826 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "71DD33B5-4DCE-DBF9-FE4A-808478B041D1";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "A4E9931C-4999-EA60-0E68-8B8864D8AD52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.03967355644582 62.062917867190947 -42.157479753627797
		3.1208773580954405e-15 76.991039437769786 -42.157479753627797
		-36.03967355644582 62.062917867190947 -42.157479753627797
		-50.967795127024679 2.6421794996231236e-15 1.6178683334931066e-31
		-36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		-5.1054788963452623e-15 -50.967795127024687 -3.1208773580954429e-15
		36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		50.967795127024679 -6.9504602258739874e-15 -4.2559294341087842e-31
		36.03967355644582 62.062917867190947 -42.157479753627797
		3.1208773580954405e-15 76.991039437769786 -42.157479753627797
		-36.03967355644582 62.062917867190947 -42.157479753627797
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "73E586EE-4ED3-2FCC-2152-8C80BD7D69C7";
	setAttr ".t" -type "double3" 6.5474221096900608e-14 -0.7936940591402788 -24.507648940632841 ;
	setAttr ".r" -type "double3" -2.9576202429737837 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "F50F3F34-4702-B474-A2BD-5091E7C7F270";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "413978BD-4716-1EA3-1E86-0A9CDC4C2CC1";
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
	rename -uid "48364F13-43FB-30E2-5494-8A9F9CAEC37D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -2.9576202429737837 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9576202429737837 0 0 ;
	setAttr ".radi" 6.1322339471331171;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "5D965B39-4C50-5967-BC28-2886B22EA6B1";
	setAttr ".t" -type "double3" 0 -2.3331103105269051 -31.468254938144582 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "12A45313-41F8-F952-1850-0A971E7A25C5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "649C1FD0-485E-A68A-935A-EBBE094113BB";
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
		0 16.571668713013803 -42.597649092509897
		-5.6900185708151518 20.727109675813939 -41.369346694654382
		-3.5247861800995328 20.727109675813939 -41.369346694654382
		-3.5247861800995328 23.333499582162048 -40.579453222657897
		-3.5247861800995328 26.017238454160019 -39.143975172854773
		-3.5247861800995328 28.752543303257966 -37.278107404513747
		-3.5247861800995328 31.134464453317637 -35.136478891675814
		-3.5247861800995328 33.391259730958119 -32.426580288051511
		-3.5247861800995328 35.471363159079488 -29.578801312178754
		-3.5247861800995328 36.969825061543496 -26.747770938098334
		-3.5247861800995328 38.114903264969307 -23.640979819520922
		-3.5247861800995328 38.855031792256959 -20.68881767498431
		-3.5247861800995328 38.987735805337408 -17.968598991508976
		-5.6900185708151518 38.987735805337408 -17.968598991508976
		0 39.169193548299063 -13.639223809867422
		5.6900185708151518 38.987735805337408 -17.968598991508976
		3.5247861800995328 38.987735805337408 -17.968598991508976
		3.5247861800995328 38.855031792256959 -20.68881767498431
		3.5247861800995328 38.114903264969307 -23.640979819520922
		3.5247861800995328 36.969825061543496 -26.747770938098334
		3.5247861800995328 35.471363159079488 -29.578801312178754
		3.5247861800995328 33.391259730958119 -32.426580288051511
		3.5247861800995328 31.134464453317637 -35.136478891675814
		3.5247861800995328 28.752543303257966 -37.278107404513747
		3.5247861800995328 26.017238454160019 -39.143975172854773
		3.5247861800995328 23.333499582162048 -40.579453222657897
		3.5247861800995328 20.727109675813939 -41.369346694654382
		5.6900185708151518 20.727109675813939 -41.369346694654382
		0 16.571668713013803 -42.597649092509897
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "46B468B4-4793-0607-AFFB-FABA3D62D6CD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 6.5445403003155925e-14 -0.7936940591402788 -24.507648940632826 ;
	setAttr ".r" -type "double3" -2.9576202429735368 1.5259566084562031e-16 -1.2618321037030463e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 30.661169735665585;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "97266789-4B99-A80D-52CB-FCA636369BE7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -6.5445403003155925e-14 -26.065604961081789 150.07563585704406 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 30.661169735665585;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "E2771FF9-4BA5-352B-530C-759C7865F207";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2570180258346784e-14 20.325110786942844 -73.758052640043744 ;
	setAttr ".r" -type "double3" 9.8686705175636416 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "542DE922-4D42-855D-8446-10B77BBC34D2";
	setAttr -k off ".v";
createNode ikEffector -n "effector46" -p "spineQd0_two_ikj";
	rename -uid "B3D07177-4417-2137-CB2C-D1B0E082A56B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "A9AE3360-4507-5F09-5515-BEAC63296E03";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2570180258346784e-14 -2.5887613120578408 52.004471112366552 ;
	setAttr ".r" -type "double3" 6.9110502745901075 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "1240A10B-4A4B-973C-5705-21B349678228";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "BC19775F-46A2-145A-0E1A-0980321E7D64";
	setAttr ".t" -type "double3" -3.2875222744809142e-14 -1.795067252917562 76.512120052999379 ;
	setAttr ".r" -type "double3" 6.9110502745901075 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "5583C155-4DDC-74AF-2417-D5A0433E9BA3";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "3C0D746D-4448-7F86-6D99-78A34EF99852";
	setAttr ".t" -type "double3" 0 2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "89A89EAF-4C2C-950B-C0FD-BB98515A0142";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "603EF449-4E2B-057E-28D6-C58C7A58D0DC";
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
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "76024F52-4424-5F3A-3157-BDAE1A86D522";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 6.9110502745901075 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.9110502745901075 0 0 ;
	setAttr ".radi" 6.1322339471331171;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A0C1449D-449F-6C1B-7ABB-3E933BE5558E";
	setAttr ".t" -type "double3" -6.5445403003155913e-14 -18.287388851246931 151.22064557753529 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "F0A9CA81-4013-0CA0-B6B9-448AB172FA33";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "4A65D698-4D60-A6BB-740A-D89D23D30104";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.03967355644582 89.242040570654893 -29.525299910256948
		3.1208773580954405e-15 104.17016214123373 -29.525299910256948
		-36.03967355644582 89.242040570654893 -29.525299910256948
		-50.967795127024679 2.6421794996231236e-15 1.6178683334931066e-31
		-36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		-5.1054788963452623e-15 -50.967795127024687 -3.1208773580954429e-15
		36.03967355644582 -36.03967355644582 -2.206793543160844e-15
		50.967795127024679 -6.9504602258739874e-15 -4.2559294341087842e-31
		36.03967355644582 89.242040570654893 -29.525299910256948
		3.1208773580954405e-15 104.17016214123373 -29.525299910256948
		-36.03967355644582 89.242040570654893 -29.525299910256948
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "83980F20-4103-D5EF-271D-41B3654E4733";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "B0BFE9B5-47ED-9942-C66D-679CAE5FA93E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "4DF9542D-4703-4F53-3E39-64A447F52842";
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
	rename -uid "81BEBDFD-466F-5F76-988B-B4818A0A6AC2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 6.1322339471331171;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "12BB6230-4E04-34DD-AC68-1A94A7CCD1DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2621774483536189e-29 2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.9576202429737979 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "03B3D6B2-4028-0832-5172-12A3C3348368";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "E95560B3-4135-7B3C-995C-3C81F2B0FB2F";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "F419D8E3-4B63-82CC-9D93-E686B7505E85";
	setAttr ".t" -type "double3" 5.4537835835963271e-14 -3.7123365392342862 10.807114049123811 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "D3073D3E-40F2-4E60-B84E-F0AAC966225E";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D4167968-4D46-C615-5287-8780FA1DE25D";
	setAttr ".t" -type "double3" -6.5445403003155925e-14 51.719605887193751 246.66312557095688 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "0CEE364F-4F82-AFF1-3D14-BA84371DA9C2";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "897CE035-4A28-0151-FB65-CB8478D36A03";
	setAttr ".t" -type "double3" 16.151869288833716 -164.58738906915292 -48.270194144885259 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "A6F087FF-44E0-B6DE-9025-CFBE75A55033";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8E3BD31F-45A5-2C9C-E1F1-E2A68411FD6C";
	setAttr ".t" -type "double3" 30.63190677073052 -77.69614051609156 37.423644490346916 ;
	setAttr ".r" -type "double3" -0.7658793123615476 14.235497131107536 7.1036069008889688e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "925A038A-475E-7E5D-3621-88B9F15CC27D";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CCC0FC2B-4B09-D688-D542-909715575D17";
	setAttr ".t" -type "double3" 30.744220610220573 -169.02548162559305 110.91674865615383 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "67403CE6-4BDC-6458-CC9E-BBA93A4EF635";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "095C91AD-46C5-8973-7180-D1B680A38149";
	setAttr ".t" -type "double3" 23.614142280088601 -68.069453402773263 62.818043124743745 ;
	setAttr ".r" -type "double3" -175.02928920705818 -1.4392480865789703 179.99999313763985 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "2422EB7C-4AB7-E185-1CD3-9FA86214D85F";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "631FF394-44ED-68E1-356F-008C4550F94F";
	setAttr ".t" -type "double3" -6.5445403003155913e-14 49.195116008410338 239.76701127506769 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "8D59F07B-41F1-CB00-C56B-E7984B587C28";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "841CC495-4D2E-85FC-40CA-CCB183B8AA51";
	setAttr ".t" -type "double3" -1.0907567167192642e-14 -21.999725390481217 162.0277596266591 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "C658EAF8-4067-F2A4-F8C6-139257E95E73";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C2552FFB-490D-E596-1FCD-1AAADF6783F9";
	setAttr ".t" -type "double3" -16.151869288832497 -164.58738906915289 -48.270194144885274 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "6111062C-4E26-1602-1E23-F6AF1F9430F2";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "DC8326D7-4F1E-3E69-E29A-EC9613683B21";
	setAttr ".t" -type "double3" -30.631906770732339 -77.696140516091546 37.423644490346504 ;
	setAttr ".r" -type "double3" -0.76588105919531957 -14.235497039063343 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "3C065ABA-4E59-553F-BE44-33A2D59789C9";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 -2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "650EB0FD-46E4-1250-3FB3-95B1CC241481";
	setAttr ".t" -type "double3" -30.744220610221578 -169.02548162559316 110.91674865615386 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "3C13ECED-430B-4744-AD87-30A42AF7091E";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EEFED653-4F2F-23E0-EAC8-A998C230D7C2";
	setAttr ".t" -type "double3" -23.614142280087115 -68.069453402773291 62.818043124743788 ;
	setAttr ".r" -type "double3" 4.9707106205800633 178.56075131676488 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "D53391D8-4F44-4976-11B5-708CC48594EE";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 3.5527136788005009e-15 ;
createNode joint -n "spineQd0_end" -p "spineQd0_IK";
	rename -uid "D1C6D5FE-4B1A-5F2D-96CC-C9A3514982ED";
	setAttr -cb on ".ro";
	setAttr ".radi" 3.0661169735665585;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "B5F4257E-4738-996F-0920-25BBBF28F537";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -dv 1 -min 0 -max 1 -at "double";
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
	setAttr -k on ".stretchMin";
	setAttr -k on ".stretchMax";
	setAttr -l on -k on ".______________";
	setAttr -k on ".volumeScale";
	setAttr -k on ".volumeGraph";
createNode nurbsCurve -n "spineQd0_settingShape1" -p "spineQd0_setting";
	rename -uid "9873D83C-4B22-2B89-2FF6-7FB5C9519966";
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
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "FA9FC8FB-4DD8-C6D6-A9FD-80BE49CED2F6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "C5FF449D-4A14-9773-1A3D-DDAE61B0E1C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 22.995877301749189 22.995877301749189 22.995877301749189 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "72629D2E-4B80-E439-2299-3BA3A5A932EF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "03ECF5A8-4572-A36E-76AF-8F85862C3896";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 22.995877301749189 22.995877301749189 22.995877301749189 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "2E24C06A-4825-4F86-F495-E1AF68666C6A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "CB2D49DA-4E1D-690E-8DC4-59BAAA601F13";
	setAttr ".t" -type "double3" 0 166.34708309515128 -75.411135856353795 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "082E86FE-4CD7-3526-4F19-C8929FE6688D";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "localScale" -ln "localScale" -dv 1 -min 0.01 -at "double";
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
	setAttr -k on ".localScale";
	setAttr -cb on ".ikCtl";
	setAttr -cb on ".fkCtl";
	setAttr -cb on ".subCtl";
createNode nurbsCurve -n "tail0_settingShape1" -p "tail0_setting";
	rename -uid "8C0881A4-4428-86EF-0383-90A3C24501C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-2.6403629319268678 2.6403629319268678 6.5731785657421305e-17
		-2.5896290829843442 2.6403629319268678 -0.51510924330192265
		-2.4393772594178347 2.6403629319268678 -1.010423180260789
		-2.1953815932303624 2.6403629319268678 -1.4669070174715801
		-1.8670185334820006 2.6403629319268678 -1.8670185334820006
		-1.4669070174715801 2.6403629319268678 -2.1953815932303624
		-1.010423180260789 2.6403629319268678 -2.4393772594178347
		-0.51510924330192265 2.6403629319268678 -2.5896290829843442
		1.6167560072435673e-16 2.6403629319268678 -2.6403629319268678
		0.51510924330192265 2.6403629319268678 -2.5896290829843442
		1.010423180260789 2.6403629319268678 -2.4393772594178347
		1.4669070174715801 2.6403629319268678 -2.1953815932303624
		1.8670185334820006 2.6403629319268678 -1.8670185334820006
		2.1953815932303624 2.6403629319268678 -1.4669070174715801
		2.4393772594178347 2.6403629319268678 -1.010423180260789
		2.5896290829843442 2.6403629319268678 -0.51510924330192265
		2.6403629319268678 2.6403629319268678 -2.8558615070885584e-16
		2.5398702215746671 2.6403629319268678 -0.5052115586548156
		2.2536907327044342 2.6403629319268678 -0.93350926674100032
		1.8253929616670916 2.6403629319268678 -1.2196886297089173
		1.3201814659634339 2.6403629319268678 -1.3201814659634339
		0.81496990730861829 2.6403629319268678 -1.2196886297089173
		0.38667219922243368 2.6403629319268678 -0.93350926674100032
		0.10049283625451658 2.6403629319268678 -0.5052115586548156
		0 2.6403629319268678 -2.8558615070885584e-16
		-0.10049283625451658 2.6403629319268678 0.5052115586548156
		-0.38667219922243368 2.6403629319268678 0.93350926674100032
		-0.81496990730861829 2.6403629319268678 1.2196886297089173
		-1.3201814659634339 2.6403629319268678 1.3201814659634339
		-1.8253929616670916 2.6403629319268678 1.2196886297089173
		-2.2536907327044342 2.6403629319268678 0.93350926674100032
		-2.5398702215746671 2.6403629319268678 0.5052115586548156
		-2.6403629319268678 2.6403629319268678 6.5731785657421305e-17
		-2.5896290829843442 2.6403629319268678 0.51510924330192265
		-2.4393772594178347 2.6403629319268678 1.010423180260789
		-2.1953815932303624 2.6403629319268678 1.4669070174715801
		-1.8670185334820006 2.6403629319268678 1.8670185334820006
		-1.4669070174715801 2.6403629319268678 2.1953815932303624
		-1.010423180260789 2.6403629319268678 2.4393772594178347
		-0.51510924330192265 2.6403629319268678 2.5896290829843442
		-3.0824518674395641e-16 2.6403629319268678 2.6403629319268678
		0.51510924330192265 2.6403629319268678 2.5896290829843442
		1.010423180260789 2.6403629319268678 2.4393772594178347
		1.4669070174715801 2.6403629319268678 2.1953815932303624
		1.8670185334820006 2.6403629319268678 1.8670185334820006
		2.1953815932303624 2.6403629319268678 1.4669070174715801
		2.4393772594178347 2.6403629319268678 1.010423180260789
		2.5896290829843442 2.6403629319268678 0.51510924330192265
		2.6403629319268678 2.6403629319268678 -2.8558615070885584e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "1B7866B5-429A-363C-2D52-06B0252B9D5E";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "5AF21715-4544-BF2A-2B78-908C6230854A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "2A57E044-4B8F-25C8-6E13-BA91C3E8E5DB";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "4719B0FA-4D0E-1B13-576D-139983FBB022";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "128BB311-4894-A9B7-1306-81A161C3B93B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "17FC8013-4071-5B16-5CA6-4A903F3943C8";
	setAttr -cb on ".ro";
createNode transform -n "tail0_6_chainGrp" -p "tail0_5_chainGrp";
	rename -uid "2BB205D3-4B4B-C740-CB79-88B8554BC291";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "834E0BCE-4DC3-D19C-3D7C-1FAE7AE99C42";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "5C77F9E1-40C1-1D8F-2862-80890DDCD5C2";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "913B8086-4699-676A-03EA-E38E8249EDCD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		-9.8860637156208302 3.8387317299775329e-15 -1.2952594008373969e-31
		-10.933439069842377 -10.933439069842377 -2.2440908128507152e-16
		-9.902937637823061e-16 -9.8860637156208107 -3.1736236627303524e-16
		10.933439069842377 -10.933439069842382 -2.2440908128507147e-16
		9.8860637156208302 1.9780774228623937e-15 -1.8925665502836745e-31
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		;
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "CC2F3854-42A5-CD70-6E3E-9E99814F0F4E";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "E717A188-4ED6-BCD9-72A5-41B7D2915DF6";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "971868DC-4889-91D1-CCE2-9D9DF9FE7AE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842377 4.4452715013301091e-14
		6.0534681427509081e-16 9.8860637156207893 4.4545668298289053e-14
		-10.933439069842377 10.93343906984237 4.4452715013301091e-14
		-9.8860637156208302 -9.5742520920194667e-15 4.4228305932016024e-14
		-10.933439069842377 -10.933439069842391 4.4003896850730945e-14
		-9.902937637823061e-16 -9.8860637156208249 4.3910943565742983e-14
		10.933439069842377 -10.933439069842397 4.4003896850730945e-14
		9.8860637156208302 -1.1434906399134607e-14 4.4228305932016024e-14
		10.933439069842377 10.933439069842377 4.4452715013301091e-14
		6.0534681427509081e-16 9.8860637156207893 4.4545668298289053e-14
		-10.933439069842377 10.93343906984237 4.4452715013301091e-14
		;
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "FB402ECC-48D8-B76B-F01E-AA9A7720E2E8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "2669142C-4D11-EB3A-66AB-82B15B054445";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "0B760918-4581-2A29-F9AF-25A0FBA17B5A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842375 -1.3986445633916931e-14
		6.0534681427509071e-16 9.8860637156207876 -1.3893492348928969e-14
		-10.933439069842377 10.933439069842368 -1.3986445633916934e-14
		-9.8860637156208302 -1.1169993878429473e-14 -1.4210854715202004e-14
		-10.933439069842377 -10.933439069842393 -1.4435263796487076e-14
		-9.902937637823061e-16 -9.8860637156208266 -1.4528217081475039e-14
		10.933439069842377 -10.933439069842398 -1.4435263796487076e-14
		9.8860637156208302 -1.3030648185544614e-14 -1.4210854715202004e-14
		10.933439069842377 10.933439069842375 -1.3986445633916931e-14
		6.0534681427509071e-16 9.8860637156207876 -1.3893492348928969e-14
		-10.933439069842377 10.933439069842368 -1.3986445633916934e-14
		;
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "76909CD1-43E4-BA29-A8BE-F7AB4795E0DA";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "133FD612-411D-8198-79AE-378516FA47CB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "3D99EDCF-493D-7BD4-39C6-DCB89A62AEAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		-9.8860637156208302 3.8387317299775329e-15 -1.2952594008373969e-31
		-10.933439069842377 -10.933439069842377 -2.2440908128507152e-16
		-9.902937637823061e-16 -9.8860637156208107 -3.1736236627303524e-16
		10.933439069842377 -10.933439069842382 -2.2440908128507147e-16
		9.8860637156208302 1.9780774228623937e-15 -1.8925665502836745e-31
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		;
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "58A09EF4-45C2-08EB-1C53-ADA13CA6E4A9";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "9E2696DE-4D56-9453-4E4B-4796B53DA474";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "C63E7F2C-4192-F7AA-B326-9C8607B18FCB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		-9.8860637156208302 3.8387317299775329e-15 -1.2952594008373969e-31
		-10.933439069842377 -10.933439069842377 -2.2440908128507152e-16
		-9.902937637823061e-16 -9.8860637156208107 -3.1736236627303524e-16
		10.933439069842377 -10.933439069842382 -2.2440908128507147e-16
		9.8860637156208302 1.9780774228623937e-15 -1.8925665502836745e-31
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		;
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "2798F975-424A-3C48-F44A-458413B00EAC";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "C58999CC-41A6-A50B-8825-938E9BF051BB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "23311369-4E8C-A201-5D7E-F8A8D34FB2FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		-9.8860637156208302 3.8387317299775329e-15 -1.2952594008373969e-31
		-10.933439069842377 -10.933439069842377 -2.2440908128507152e-16
		-9.902937637823061e-16 -9.8860637156208107 -3.1736236627303524e-16
		10.933439069842377 -10.933439069842382 -2.2440908128507147e-16
		9.8860637156208302 1.9780774228623937e-15 -1.8925665502836745e-31
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509071e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		;
createNode transform -n "tail0_6_fkc_ofs" -p "tail0_5_fkc";
	rename -uid "ED6EBBFF-4A1F-F76A-B4EA-7F93A7D39ACD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_6_fkc" -p "tail0_6_fkc_ofs";
	rename -uid "12BFC84E-4723-FD53-82F0-54829FAF038D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_6_fkcShape1" -p "tail0_6_fkc";
	rename -uid "EFA22D67-45AB-E601-DEB5-83A277EB165C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509091e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		-9.8860637156208302 3.8387317299775329e-15 -1.2952594008373969e-31
		-10.933439069842377 -10.933439069842377 -2.2440908128507152e-16
		-9.902937637823059e-16 -9.8860637156208107 -3.1736236627303524e-16
		10.933439069842377 -10.933439069842382 -2.2440908128507147e-16
		9.8860637156208302 1.9780774228623937e-15 -1.8925665502836745e-31
		10.933439069842377 10.933439069842391 2.2440908128507157e-16
		6.0534681427509091e-16 9.8860637156208018 3.173623662730349e-16
		-10.933439069842377 10.933439069842382 2.2440908128507147e-16
		;
createNode transform -n "tail0_6_ofs_ctl" -p "tail0_6_fkc";
	rename -uid "593369FF-414D-0302-37D6-D6B8F870FE9F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_6_ofs_ctlShape1" -p "tail0_6_ofs_ctl";
	rename -uid "7A85BF09-45DD-E220-5467-36938154AC3E";
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
		1.3908940959282078e-16 4.6063449459099282 12.555244981689741
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
		1.3908940959282078e-16 4.6063449459099282 12.555244981689741
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
createNode joint -n "tail0_6_ofs_jnt" -p "tail0_6_ofs_ctl";
	rename -uid "0B77C348-4FC7-190C-171C-E4B17D324DB2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 7.8886090522101181e-31 0 0 ;
	setAttr ".r" -type "double3" -71.994005682239646 180 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 108.00599431776037 -2.7350221061627128e-15 -180 ;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "428AFBA5-4461-CDF7-9EBE-2EA7856528AC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "76B2A39E-4619-F455-5F78-91A1FD53EB66";
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
	rename -uid "3E4E9AEF-4854-0C92-8B3E-A890B25C6FAD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.5777218104420236e-30 0 0 ;
	setAttr ".r" -type "double3" -71.994005682239646 180 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 108.00599431776037 -2.7350221061627128e-15 -180 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "FE0B635B-4C1B-C642-EFE3-0D80C5D5EF7E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "9C411237-4F17-DA92-7F47-9E8358021A4A";
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
	rename -uid "2CD4E089-418D-4219-CB7E-BAAC4E643DB6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -85.064747402880158 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 85.064747402880158 0 0 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "BF200B1F-4CD3-787A-0976-0DAE2523A6EC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "DF757CC8-4F4F-5BAE-F886-A5AF52166E89";
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
	rename -uid "D126EB69-4E5B-5DFA-9096-A095570DCD55";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -9.8607613152626476e-32 0 0 ;
	setAttr ".r" -type "double3" -59.515808586721874 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 59.515808586721874 0 0 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "E99ACB8E-45C5-344B-E3D4-04A380C68FE2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "C6B451BF-419D-9AD7-3263-C9AABC7DEAA4";
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
	rename -uid "1B940883-4E07-46E4-140B-DBBA52370900";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -7.8886090522101181e-31 0 0 ;
	setAttr ".r" -type "double3" -50.939477499630947 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 50.939477499630947 0 0 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "4C3F63CC-42E6-8E2D-8DEC-6DA51809F91E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "B6512661-408B-2C5A-5DF9-16B36D4B56C7";
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
	rename -uid "78B98E9E-4EDF-9577-467C-C28FCBB7386D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -61.760418868263514 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 61.760418868263514 0 0 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "B71D348C-4AE1-4852-FBF6-3885C2C6DA97";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "F26A9130-4678-C78A-F0D7-DF8E9E9A0C05";
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
	rename -uid "18C2BD37-4DA7-8394-AB05-35A279FC8789";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -59.09009811116286 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 59.09009811116286 0 0 ;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "2F5E03BB-4A58-1967-41C6-B98AB472F378";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "8D5B854E-4A53-250D-4EC4-A1A305061C9A";
	setAttr ".t" -type "double3" -1.6374675267209265e-14 0 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -59.09009811116286 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "F9BAD21D-4464-9279-F038-3BA11ECBA265";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "5C3CC3BD-4E58-B3AD-BA34-C49446C1903F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.187973020928744e-32 1.9401072925600708e-16 3.1684355183122417
		-1.3718629694437042e-16 -2.2404222024077063 2.2404222024077063
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		-1.3718629694437042e-16 -2.2404222024077063 -2.2404222024077063
		-1.187973020928744e-32 -1.9401072925600708e-16 -3.1684355183122417
		1.3718629694437042e-16 2.2404222024077063 -2.2404222024077063
		1.9401072925600708e-16 3.1684355183122417 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		-3.1684355183122417 1.187973020928744e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.187973020928744e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.187973020928744e-32 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.187973020928744e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		-1.187973020928744e-32 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.187973020928744e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		1.187973020928744e-32 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "F2ADE80D-4DAA-657C-E156-938F9D789331";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.51368953564803843 -0.85797614242221365 0
		 0 0.85797614242221365 0.51368953564803843 0 -1.6374675267209265e-14 166.34708309515128 -75.411135856353766 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "26C8366B-4002-AD78-E453-D0A5CC41D70E";
	setAttr ".t" -type "double3" 8.0683219636422936e-15 -0.49518248294748446 -14.367196865305715 ;
	setAttr ".r" -type "double3" 2.7350686085808369 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "23E0A504-4546-8AD7-476E-2B98A9416B0C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "E9225A75-481D-2426-E101-BD858A569C57";
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
		-3.1684355183122417 1.187973020928744e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600799e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.187973020928744e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600616e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694436951e-16 2.2404222024077063 2.2404222024077063
		-9.0985337045888968e-31 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.187973020928744e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		-9.336128308774645e-31 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.187973020928744e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-9.0985337045888968e-31 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "BF4CEF31-45D5-765C-5F3B-95988BA5F9E2";
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
	rename -uid "F4663053-4CF5-D2A9-5DDB-25B3A4052BF9";
	setAttr ".t" -type "double3" 1.5862704402158371e-14 0.81323432936551399 -26.686551896879863 ;
	setAttr ".r" -type "double3" -0.42571047555901681 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "D5010528-49EC-FC31-3DB2-00A56E8DC1F8";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "7262DD80-4025-E1B7-A603-F6B45CE7D330";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.187973020928744e-32 1.9401072925600708e-16 3.1684355183122417
		-1.3718629694437042e-16 -2.2404222024077063 2.2404222024077063
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		-1.3718629694437042e-16 -2.2404222024077063 -2.2404222024077063
		-1.187973020928744e-32 -1.9401072925600708e-16 -3.1684355183122417
		1.3718629694437042e-16 2.2404222024077063 -2.2404222024077063
		1.9401072925600708e-16 3.1684355183122417 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		-3.1684355183122417 1.187973020928744e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600708e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.187973020928744e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600708e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437042e-16 2.2404222024077063 2.2404222024077063
		1.187973020928744e-32 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.187973020928744e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		-1.187973020928744e-32 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.187973020928744e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		1.187973020928744e-32 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "4B43BFA4-463C-2F20-E957-7A8DE1EB15A6";
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
	rename -uid "8BB776FB-4AEB-92A2-52D5-D6810F17FED8";
	setAttr ".t" -type "double3" 2.3570579030181421e-14 -3.6178398845577533 -38.762431101650648 ;
	setAttr ".r" -type "double3" 39.926689362566727 0 180 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "AB92621E-4E17-8761-4F6A-DABAE6127BD7";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "E3F4A85E-4B0B-635F-5B2D-E78C91D39BE8";
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
		-3.1684355183122417 8.4962444266645156e-15 1.187973020928744e-32
		-2.2404222024077063 8.1650474004641375e-15 -2.2404222024077063
		9.0985337045888968e-31 8.1082229681525013e-15 -3.1684355183122417
		2.2404222024077063 8.1650474004641375e-15 -2.2404222024077063
		3.1684355183122417 8.1082229681525013e-15 -1.187973020928744e-32
		2.2404222024077063 8.4394199943528794e-15 2.2404222024077063
		9.336128308774645e-31 8.4962444266645156e-15 3.1684355183122417
		;
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "67D9E57E-4611-9ACE-4AD0-B8A20DD594B4";
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
	rename -uid "F01D8583-4D53-1090-B99E-059A140EE3F4";
	setAttr ".t" -type "double3" 2.8600151624855054e-14 -15.736115781852561 -49.481844650080177 ;
	setAttr ".r" -type "double3" 39.926689362566727 0 180 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "2BC77E76-4501-A846-5E8C-1C86C4809A84";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "5E6C939F-4884-E702-85D1-5DB00829EC6E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.9401072925600754e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437089e-16 2.2404222024077063 2.2404222024077063
		4.7274628054337596e-31 1.9401072925600708e-16 3.1684355183122417
		-1.3718629694436996e-16 -2.2404222024077063 2.2404222024077063
		-1.9401072925600661e-16 -3.1684355183122417 1.9401072925600708e-16
		-1.3718629694436996e-16 -2.2404222024077063 -2.2404222024077063
		4.4898682012480113e-31 -1.9401072925600708e-16 -3.1684355183122417
		1.3718629694437089e-16 2.2404222024077063 -2.2404222024077063
		1.9401072925600754e-16 3.1684355183122417 -1.9401072925600708e-16
		-2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		-3.1684355183122417 1.187973020928744e-32 1.9401072925600708e-16
		-2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		-1.9401072925600661e-16 -3.1684355183122417 1.9401072925600708e-16
		2.2404222024077063 -2.2404222024077063 -1.3718629694437042e-16
		3.1684355183122417 -1.187973020928744e-32 -1.9401072925600708e-16
		2.2404222024077063 2.2404222024077063 1.3718629694437042e-16
		1.9401072925600754e-16 3.1684355183122417 1.9401072925600708e-16
		1.3718629694437089e-16 2.2404222024077063 2.2404222024077063
		4.7274628054337596e-31 1.9401072925600708e-16 3.1684355183122417
		-2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		-3.1684355183122417 1.9401072925600708e-16 1.187973020928744e-32
		-2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		4.4898682012480113e-31 -1.9401072925600708e-16 -3.1684355183122417
		2.2404222024077063 -1.3718629694437042e-16 -2.2404222024077063
		3.1684355183122417 -1.9401072925600708e-16 -1.187973020928744e-32
		2.2404222024077063 1.3718629694437042e-16 2.2404222024077063
		4.7274628054337596e-31 1.9401072925600708e-16 3.1684355183122417
		;
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "B482EFFB-46F3-CF49-053C-FC88D89FADAE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.8886090522101181e-31 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 2.4266274681841276e-15 -6.4805633691813469e-15 ;
	setAttr ".bps" -type "matrix" -1 -6.2126406813936981e-17 1.055362847697785e-16 0
		 9.4495426748384994e-17 0.156723847735594 0.98764246342031614 0 -7.7898730094008481e-17 0.98764246342031603 -0.15672384773559406 0
		 1.518380324700396e-14 115.80936289345665 -87.328229742438566 1;
	setAttr ".radi" 2.1122903455414943;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "96D56D98-4ED4-2A5E-53CF-C8B669617966";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "FD903CDA-47B6-184B-67B0-6A9825E5472C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 7.9210887957806033 7.9210887957806033 7.9210887957806033 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "B3DE8D9C-45F7-92D9-540A-FEAB1A01A559";
	setAttr ".t" -type "double3" 0 229.41483221420799 193.21695607158355 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "82811C05-4E7E-36EF-F399-8297F2FAE84A";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "6D271338-4AB4-AE5A-C8FC-9D9361D652D3";
	setAttr ".t" -type "double3" 16.15186928883378 13.107837257861313 -101.71636364425858 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "941635A2-47BA-B127-6CD4-61B7F3631C43";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "1431E778-4E7A-57C8-ED25-03960A56AA80";
	setAttr ".t" -type "double3" 30.631906770730584 99.999085810922679 -16.022525009026403 ;
	setAttr ".r" -type "double3" -0.7658793123615476 14.235497131107536 7.1036069008633342e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "38860B03-4742-D72F-C819-A2968953ADDE";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "00066ACD-423B-9609-5DB0-B390486C7FE0";
	setAttr ".t" -type "double3" 30.744220610220637 8.6697447014212088 57.470579156780516 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "9E3B2D29-454B-0338-423D-63B8F20BE9CC";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "C90F773E-451E-C293-A85A-819DB02A4634";
	setAttr ".t" -type "double3" 23.614142280088664 109.62577292424098 9.3718736253704247 ;
	setAttr ".r" -type "double3" -175.02928920705818 -1.4392480865789703 179.99999313763985 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "5AA03E79-49B2-839B-00AD-178FB9D876E2";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "144FDB4C-4ED4-3F0C-A297-928BF48A8C6F";
	setAttr ".t" -type "double3" 1.2621774483536189e-29 226.89034233542458 186.32084177569436 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "6700A4F8-4BA6-3F86-EFBC-959D2DDCEB7F";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "A4A62B30-427A-9587-9D51-908739110095";
	setAttr ".t" -type "double3" 5.4537835835963284e-14 155.69550093653302 108.58159012728578 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "3C1E9FB1-458A-6A60-2DFA-35B27B757325";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "C3521E45-4648-F5DC-5118-84A09EE3AAEE";
	setAttr ".t" -type "double3" -16.151869288832433 13.107837257861341 -101.71636364425859 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "A5985F6D-408F-C8A4-A0AC-66935F015786";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "79488C98-4FBA-D240-1F98-3083C86C927D";
	setAttr ".t" -type "double3" -30.631906770732275 99.999085810922693 -16.022525009026815 ;
	setAttr ".r" -type "double3" -0.76588105919531935 -14.235497039063343 0 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "7B76B0B5-4A0E-CB6F-B5E5-889FB29624F0";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 -2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "ACD42A25-4979-0D5E-5BFD-E79A5D21F089";
	setAttr ".t" -type "double3" -30.744220610221515 8.6697447014210738 57.470579156780545 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "8F7ADD9C-4C12-4A04-2E9B-A490EBB15ACD";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "EE6D653F-47EC-D3B5-252F-9FA33BAC7CC6";
	setAttr ".t" -type "double3" -23.614142280087052 109.62577292424095 9.3718736253704673 ;
	setAttr ".r" -type "double3" 4.9707106205800633 178.56075131676488 0 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "64AB55F9-4C35-FDC0-990F-D7867B6C7487";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 3.5527136788005009e-15 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "3E14B9CA-465B-567D-6420-BDB97689B274";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -5.2453600104502272 0 -17.935715162239177 
		-5.994831144728408e-15 0 -25.364931633299307 5.2453600104502272 0 -17.935715162239163 
		7.4180592663081057 0 8.0287512354173389e-15 5.2453600104502272 0 17.935715162239163 
		-4.7975339477607897e-15 0 25.364931633299335 -5.2453600104502272 0 17.935715162239163 
		-7.4180592663081057 0 1.2802680541436921e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "E5F1B6FB-4D32-E500-0C7B-BEAB14D01151";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		94.175139249279567 6.4092067754718655e-15 -94.17513924927961
		8.1551532179734528e-15 9.0639871459258518e-15 -133.18375916470583
		-94.175139249279567 6.4092067754718631e-15 -94.175139249279468
		-133.18375916470592 3.4626638608313624e-30 -4.3108528526229147e-14
		-94.175139249279567 -6.4092067754718631e-15 94.175139249279468
		-1.3341108244072288e-14 -9.0639871459258566e-15 133.18375916470589
		94.175139249279567 -6.4092067754718631e-15 94.175139249279425
		133.18375916470592 1.756732439809361e-30 -1.8042036719582734e-14
		94.175139249279567 6.4092067754718655e-15 -94.17513924927961
		8.1551532179734528e-15 9.0639871459258518e-15 -133.18375916470583
		-94.175139249279567 6.4092067754718631e-15 -94.175139249279468
		

		"gtag" 1
		"cluster1" 1 "cv[0:7]";
createNode nurbsCurve -n "master2_ctlShape" -p "master2_ctl";
	rename -uid "25EAB59C-44E7-082D-643A-06B1D3C42C2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -9.1259299956429906e-15 0 
		-27.373989882824219 1.1393178160582806 0 -27.095362135851161 2.0524625870048396 0 
		-23.901403780816395 3.0263586921776948 0 -22.659344269104878 3.9386468616756076 0 
		-20.956005852227335 4.7707555391893521 0 -18.826063588328907 5.5057453916481904 0 
		-16.31287695965635 6.1286541451916321 0 -13.467607198537635 6.6268011739180963 0 
		-10.348175792228808 6.9900456408600178 0 -7.018085368464952 7.9241294662885764 0 
		-3.8957249430686751 8.0056150847071876 0 2.5193628637512476e-14 7.9241294662885764 
		0 3.8957249430686787 6.9900456408600178 0 7.018085368464952 6.6268011739180963 0 
		10.348175792228808 6.1286541451916321 0 13.46760719853765 5.5057453916481904 0 16.31287695965635 
		4.7707555391893521 0 18.826063588328893 3.9386468616755792 0 20.956005852227321 3.026358692177709 
		0 22.659344269104892 2.0524625870048396 0 23.901403780816409 1.1393178160582806 0 
		27.095362135851133 -8.8121262712734106e-15 0 27.373989882824162 -1.1393178160582735 
		0 27.095362135851133 -2.0524625870048396 0 23.901403780816409 -3.026358692177709 
		0 22.659344269104892 -3.9386468616755934 0 20.956005852227335 -4.7707555391893521 
		0 18.826063588328864 -5.5057453916482046 0 16.312876959656322 -6.1286541451916179 
		0 13.467607198537635 -6.6268011739180821 0 10.348175792228794 -6.9900456408600746 
		0 7.018085368464952 -7.9241294662886332 0 3.8957249430686716 -8.0056150847072161 
		0 2.0188386239465692e-14 -7.9241294662886332 0 -3.8957249430686751 -6.9900456408600604 
		0 -7.018085368464952 -6.6268011739180679 0 -10.348175792228794 -6.1286541451916179 
		0 -13.467607198537635 -5.505745391648162 0 -16.312876959656322 -4.7707555391893663 
		0 -18.826063588328864 -3.9386468616755508 0 -20.956005852227307 -3.026358692177709 
		0 -22.65934426910492 -2.0524625870048467 0 -23.901403780816366 -1.1393178160582842 
		0 -27.095362135851076 -7.5705268118105535e-15 0 -27.373989882824134;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "8BD865AA-4281-B574-2D18-DDAB1986396D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:44]";
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 0.14267836639846468 0.2853567327969293 0.4280350991953939 0.5707134655938586
		 0.71339183199232326 0.8560701983907878 0.99874856478925267 1.1414269311877174 1.2841052975861822
		 1.4267836639846467 1.5694620303831113 1.7121403967815758 1.8548187631800404 1.9974971295785049
		 2.1401754959769694 2.282853862375434 2.4255322287738985 2.5682105951723631 2.7108889615708276
		 2.8535673279692921 2.9962456943677567 3.1389240607662212 3.2816024271646858 3.4242807935631503
		 3.5669591599616148 3.7096375263600794 3.8523158927585439 3.9949942591570089 4.1376726255554734
		 4.280350991953938 4.4230293583524025 4.5657077247508671 4.7083860911493316 4.8510644575477961
		 4.9937428239462607 5.1364211903447252 5.2790995567431898 5.4217779231416543 5.5644562895401188
		 5.7071346559385834 5.8498130223370479 5.9924913887355125 6.135169755133977 6.2778481215324415
		
		45
		6.4370869527374703e-14 9.4076213870353788e-15 -143.73273023708637
		-20.455300258268654 9.3118653659852585e-15 -142.26973828875614
		-36.849892009324549 7.6846101056040569e-15 -125.49920697060369
		-54.335212585273275 7.2852719260147463e-15 -118.97751957686157
		-70.71442492279995 6.7376266190011534e-15 -110.03379298736827
		-85.654095492460328 6.0528226637353983e-15 -98.850095683908307
		-98.850095683908307 5.2448006939351603e-15 -85.654095492460328
		-110.03379298736826 4.3300097067626367e-15 -70.71442492279995
		-118.97751957686154 3.3270722086772955e-15 -54.335212585273275
		-125.49920697060368 2.2564051149072509e-15 -36.849892009324549
		-142.26973828875612 1.3388441162322385e-15 -20.455300258268668
		-143.73273023708632 -2.0339495307397927e-30 4.7019169472812565e-14
		-142.26973828875609 -1.3388441162322395e-15 20.455300258268704
		-125.49920697060368 -2.2564051149072509e-15 36.849892009324556
		-118.97751957686154 -3.3270722086772966e-15 54.335212585273304
		-110.03379298736826 -4.3300097067626391e-15 70.714424922799964
		-98.850095683908265 -5.2448006939351595e-15 85.654095492460328
		-85.654095492460286 -6.0528226637353975e-15 98.850095683908265
		-70.714424922799921 -6.737626619001151e-15 110.03379298736826
		-54.33521258527324 -7.2852719260147431e-15 118.9775195768615
		-36.849892009324542 -7.6846101056040537e-15 125.49920697060362
		-20.455300258268643 -9.3118653659852538e-15 142.26973828875609
		5.8736840713227621e-14 -9.4076213870353773e-15 143.7327302370862
		20.455300258268707 -9.3118653659852538e-15 142.26973828875609
		36.849892009324549 -7.6846101056040537e-15 125.49920697060362
		54.33521258527324 -7.2852719260147431e-15 118.97751957686147
		70.714424922799935 -6.7376266190011479e-15 110.03379298736824
		85.654095492460314 -6.052822663735392e-15 98.850095683908179
		98.850095683908179 -5.2448006939351547e-15 85.654095492460286
		110.03379298736824 -4.3300097067626351e-15 70.714424922799921
		118.97751957686145 -3.3270722086772943e-15 54.335212585273233
		125.49920697060355 -2.2564051149072485e-15 36.849892009324535
		142.26973828875597 -1.3388441162322364e-15 20.45530025826865
		143.73273023708612 -3.1379745818033964e-31 2.0738120986669667e-14
		142.26973828875597 1.3388441162322391e-15 -20.455300258268668
		125.49920697060354 2.2564051149072501e-15 -36.849892009324542
		118.97751957686144 3.3270722086772943e-15 -54.335212585273233
		110.03379298736813 4.3300097067626351e-15 -70.714424922799907
		98.850095683908037 5.24480069393515e-15 -85.654095492460215
		85.654095492460172 6.0528226637353904e-15 -98.850095683908037
		70.714424922799822 6.7376266190011455e-15 -110.03379298736813
		54.335212585273226 7.2852719260147384e-15 -118.97751957686141
		36.849892009324527 7.6846101056040458e-15 -125.49920697060352
		20.455300258268657 9.3118653659852443e-15 -142.2697382887558
		3.6445176889620944e-14 9.4076213870353709e-15 -143.732730237086
		

		"gtag" 1
		"cluster1" 1 "cv[0:44]";
createNode unitConversion -n "unitConversion22";
	rename -uid "A1E88918-4C73-DD7F-29BC-A1A810E4ADAA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion49";
	rename -uid "93C960CF-415F-41DB-FC64-7C8D15B25797";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion80";
	rename -uid "8ED39B1F-4D9F-0DA7-0481-379A938BF9BE";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion107";
	rename -uid "806B89FA-4061-E861-8FE2-7DB6FCC345A4";
	setAttr ".cf" 57.295779513082323;
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
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 65 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "master_ctlShapeOrig.ws" "master_ctlShape.cr";
connectAttr "lfLegQd0_hip_fk.s" "lfLegQd0_upr_fk.is";
connectAttr "lfLegQd0_upr_fk.s" "lfLegQd0_lwr_fk.is";
connectAttr "lfLegQd0_lwr_fk.s" "lfLegQd0_palm_fk.is";
connectAttr "lfLegQd0_palm_fk.s" "lfLegQd0_digit_fk.is";
connectAttr "lfLegQd0_ball_fk.s" "lfLegQd0_tip_fk.is";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_upr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_palm_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_digit_fkc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_hip_fkc.fkIkBlend";
connectAttr "lfLegQd0_autoAim.s" "lfLegQd0_autoAim_end.is";
connectAttr "lfLegQd0_autoAim_end.tx" "effector6.tx";
connectAttr "lfLegQd0_autoAim_end.ty" "effector6.ty";
connectAttr "lfLegQd0_autoAim_end.tz" "effector6.tz";
connectAttr "lfLegQd0_autoAim_end.opm" "effector6.opm";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ball_fkc.fkIkBlend";
connectAttr "lfLegQd0_ball_ik.msg" "lfLegQd0_3_ikh.hsj";
connectAttr "effector4.hp" "lfLegQd0_3_ikh.hee";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_hip_ik.s" "lfLegQd0_upr_ik.is";
connectAttr "lfLegQd0_upr_ik.s" "lfLegQd0_lwr_ik.is";
connectAttr "lfLegQd0_lwr_ik.s" "lfLegQd0_palm_ik.is";
connectAttr "lfLegQd0_palm_ik.s" "lfLegQd0_digit_ik.is";
connectAttr "lfLegQd0_digit_ik.s" "lfLegQd0_ball_ik.is";
connectAttr "lfLegQd0_ball_ik.s" "lfLegQd0_tip_ik.is";
connectAttr "lfLegQd0_tip_ik.tx" "effector4.tx";
connectAttr "lfLegQd0_tip_ik.ty" "effector4.ty";
connectAttr "lfLegQd0_tip_ik.tz" "effector4.tz";
connectAttr "lfLegQd0_tip_ik.opm" "effector4.opm";
connectAttr "lfLegQd0_ball_ik.tx" "effector3.tx";
connectAttr "lfLegQd0_ball_ik.ty" "effector3.ty";
connectAttr "lfLegQd0_ball_ik.tz" "effector3.tz";
connectAttr "lfLegQd0_ball_ik.opm" "effector3.opm";
connectAttr "lfLegQd0_digit_ik.tx" "effector2.tx";
connectAttr "lfLegQd0_digit_ik.ty" "effector2.ty";
connectAttr "lfLegQd0_digit_ik.tz" "effector2.tz";
connectAttr "lfLegQd0_digit_ik.opm" "effector2.opm";
connectAttr "lfLegQd0_palm_ik.tx" "effector1.tx";
connectAttr "lfLegQd0_palm_ik.ty" "effector1.ty";
connectAttr "lfLegQd0_palm_ik.tz" "effector1.tz";
connectAttr "lfLegQd0_palm_ik.opm" "effector1.opm";
connectAttr "lfLegQd0_hip_ik.s" "lfLegQd0_softJ.is";
connectAttr "lfLegQd0_softJ.s" "lfLegQd0_softJ_end.is";
connectAttr "lfLegQd0_softJ_end.tx" "effector5.tx";
connectAttr "lfLegQd0_softJ_end.ty" "effector5.ty";
connectAttr "lfLegQd0_softJ_end.tz" "effector5.tz";
connectAttr "lfLegQd0_softJ_end.opm" "effector5.opm";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikCstG.v";
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_outRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_inRollG_ctl.v" -l on;
connectAttr "lfLegQd0_ikc.extraCtl" "lfLegQd0_ballG_ikc.v" -l on;
connectAttr "lfLegQd0_palm_ik.msg" "lfLegQd0_X_ikh.hsj";
connectAttr "effector2.hp" "lfLegQd0_X_ikh.hee";
connectAttr "lfLegQd0_upr_ik.msg" "lfLegQd0_1_ikh.hsj";
connectAttr "effector1.hp" "lfLegQd0_1_ikh.hee";
connectAttr "lfLegQd0_digit_ik.msg" "lfLegQd0_2_ikh.hsj";
connectAttr "effector3.hp" "lfLegQd0_2_ikh.hee";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_line_30.v";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc.v" -l on;
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd0_ikc.gimbalCtl" "lfLegQd0_ikc_gmbShape.v";
connectAttr "lfLegQd0_ikc_gmbShapeOrig.ws" "lfLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion22.o" "lfLegQd0_smart_ctl.footRoll";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_smart_ctl.fkIkBlend";
connectAttr "lfLegQd0_autoAim.msg" "lfLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector6.hp" "lfLegQd0_autoAimJ_ikh.hee";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.fkIkBlend";
connectAttr "lfLegQd0_setting.fkIkBlend" "lfLegQd0_pvc.v" -l on;
connectAttr "lfLegQd1_hip_fk.s" "lfLegQd1_upr_fk.is";
connectAttr "lfLegQd1_upr_fk.s" "lfLegQd1_lwr_fk.is";
connectAttr "lfLegQd1_lwr_fk.s" "lfLegQd1_palm_fk.is";
connectAttr "lfLegQd1_palm_fk.s" "lfLegQd1_digit_fk.is";
connectAttr "lfLegQd1_ball_fk.s" "lfLegQd1_tip_fk.is";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_upr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_lwr_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_palm_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_digit_fkc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_hip_fkc.fkIkBlend";
connectAttr "lfLegQd1_autoAim.s" "lfLegQd1_autoAim_end.is";
connectAttr "lfLegQd1_autoAim_end.tx" "effector16.tx";
connectAttr "lfLegQd1_autoAim_end.ty" "effector16.ty";
connectAttr "lfLegQd1_autoAim_end.tz" "effector16.tz";
connectAttr "lfLegQd1_autoAim_end.opm" "effector16.opm";
connectAttr "lfLegQd1_legLock.msg" "lfLegQd1_legLock_ikh.hsj";
connectAttr "effector17.hp" "lfLegQd1_legLock_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_ball_ik.msg" "lfLegQd1_3_ikh.hsj";
connectAttr "effector14.hp" "lfLegQd1_3_ikh.hee";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_upr_ik.is";
connectAttr "lfLegQd1_upr_ik.s" "lfLegQd1_lwr_ik.is";
connectAttr "lfLegQd1_lwr_ik.s" "lfLegQd1_palm_ik.is";
connectAttr "lfLegQd1_palm_ik.s" "lfLegQd1_digit_ik.is";
connectAttr "lfLegQd1_digit_ik.s" "lfLegQd1_ball_ik.is";
connectAttr "lfLegQd1_ball_ik.s" "lfLegQd1_tip_ik.is";
connectAttr "lfLegQd1_tip_ik.tx" "effector14.tx";
connectAttr "lfLegQd1_tip_ik.ty" "effector14.ty";
connectAttr "lfLegQd1_tip_ik.tz" "effector14.tz";
connectAttr "lfLegQd1_tip_ik.opm" "effector14.opm";
connectAttr "lfLegQd1_ball_ik.tx" "effector13.tx";
connectAttr "lfLegQd1_ball_ik.ty" "effector13.ty";
connectAttr "lfLegQd1_ball_ik.tz" "effector13.tz";
connectAttr "lfLegQd1_ball_ik.opm" "effector13.opm";
connectAttr "lfLegQd1_digit_ik.tx" "effector12.tx";
connectAttr "lfLegQd1_digit_ik.ty" "effector12.ty";
connectAttr "lfLegQd1_digit_ik.tz" "effector12.tz";
connectAttr "lfLegQd1_digit_ik.opm" "effector12.opm";
connectAttr "lfLegQd1_palm_ik.tx" "effector11.tx";
connectAttr "lfLegQd1_palm_ik.ty" "effector11.ty";
connectAttr "lfLegQd1_palm_ik.tz" "effector11.tz";
connectAttr "lfLegQd1_palm_ik.opm" "effector11.opm";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_softJ.is";
connectAttr "lfLegQd1_softJ.s" "lfLegQd1_softJ_end.is";
connectAttr "lfLegQd1_softJ_end.tx" "effector15.tx";
connectAttr "lfLegQd1_softJ_end.ty" "effector15.ty";
connectAttr "lfLegQd1_softJ_end.tz" "effector15.tz";
connectAttr "lfLegQd1_softJ_end.opm" "effector15.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_palm_ik.msg" "lfLegQd1_X_ikh.hsj";
connectAttr "effector12.hp" "lfLegQd1_X_ikh.hee";
connectAttr "lfLegQd1_upr_ik.msg" "lfLegQd1_1_ikh.hsj";
connectAttr "effector11.hp" "lfLegQd1_1_ikh.hee";
connectAttr "lfLegQd1_digit_ik.msg" "lfLegQd1_2_ikh.hsj";
connectAttr "effector13.hp" "lfLegQd1_2_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_line_30.v";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion49.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_autoAim.msg" "lfLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector16.hp" "lfLegQd1_autoAimJ_ikh.hee";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector17.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector17.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector17.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector17.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
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
connectAttr "rtLegQd0_hip_fk.s" "rtLegQd0_upr_fk.is";
connectAttr "rtLegQd0_upr_fk.s" "rtLegQd0_lwr_fk.is";
connectAttr "rtLegQd0_lwr_fk.s" "rtLegQd0_palm_fk.is";
connectAttr "rtLegQd0_palm_fk.s" "rtLegQd0_digit_fk.is";
connectAttr "rtLegQd0_ball_fk.s" "rtLegQd0_tip_fk.is";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_upr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_palm_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_digit_fkc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_hip_fkc.fkIkBlend";
connectAttr "rtLegQd0_autoAim.s" "rtLegQd0_autoAim_end.is";
connectAttr "rtLegQd0_autoAim_end.tx" "effector29.tx";
connectAttr "rtLegQd0_autoAim_end.ty" "effector29.ty";
connectAttr "rtLegQd0_autoAim_end.tz" "effector29.tz";
connectAttr "rtLegQd0_autoAim_end.opm" "effector29.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_ik.msg" "rtLegQd0_3_ikh.hsj";
connectAttr "effector27.hp" "rtLegQd0_3_ikh.hee";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_upr_ik.is";
connectAttr "rtLegQd0_upr_ik.s" "rtLegQd0_lwr_ik.is";
connectAttr "rtLegQd0_lwr_ik.s" "rtLegQd0_palm_ik.is";
connectAttr "rtLegQd0_palm_ik.s" "rtLegQd0_digit_ik.is";
connectAttr "rtLegQd0_digit_ik.s" "rtLegQd0_ball_ik.is";
connectAttr "rtLegQd0_ball_ik.s" "rtLegQd0_tip_ik.is";
connectAttr "rtLegQd0_tip_ik.tx" "effector27.tx";
connectAttr "rtLegQd0_tip_ik.ty" "effector27.ty";
connectAttr "rtLegQd0_tip_ik.tz" "effector27.tz";
connectAttr "rtLegQd0_tip_ik.opm" "effector27.opm";
connectAttr "rtLegQd0_ball_ik.tx" "effector26.tx";
connectAttr "rtLegQd0_ball_ik.ty" "effector26.ty";
connectAttr "rtLegQd0_ball_ik.tz" "effector26.tz";
connectAttr "rtLegQd0_ball_ik.opm" "effector26.opm";
connectAttr "rtLegQd0_digit_ik.tx" "effector25.tx";
connectAttr "rtLegQd0_digit_ik.ty" "effector25.ty";
connectAttr "rtLegQd0_digit_ik.tz" "effector25.tz";
connectAttr "rtLegQd0_digit_ik.opm" "effector25.opm";
connectAttr "rtLegQd0_palm_ik.tx" "effector24.tx";
connectAttr "rtLegQd0_palm_ik.ty" "effector24.ty";
connectAttr "rtLegQd0_palm_ik.tz" "effector24.tz";
connectAttr "rtLegQd0_palm_ik.opm" "effector24.opm";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_softJ.is";
connectAttr "rtLegQd0_softJ.s" "rtLegQd0_softJ_end.is";
connectAttr "rtLegQd0_softJ_end.tx" "effector28.tx";
connectAttr "rtLegQd0_softJ_end.ty" "effector28.ty";
connectAttr "rtLegQd0_softJ_end.tz" "effector28.tz";
connectAttr "rtLegQd0_softJ_end.opm" "effector28.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_palm_ik.msg" "rtLegQd0_X_ikh.hsj";
connectAttr "effector25.hp" "rtLegQd0_X_ikh.hee";
connectAttr "rtLegQd0_upr_ik.msg" "rtLegQd0_1_ikh.hsj";
connectAttr "effector24.hp" "rtLegQd0_1_ikh.hee";
connectAttr "rtLegQd0_digit_ik.msg" "rtLegQd0_2_ikh.hsj";
connectAttr "effector26.hp" "rtLegQd0_2_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_line_53.v";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion80.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_autoAim.msg" "rtLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector29.hp" "rtLegQd0_autoAimJ_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_pvc.v" -l on;
connectAttr "rtLegQd1_hip_fk.s" "rtLegQd1_upr_fk.is";
connectAttr "rtLegQd1_upr_fk.s" "rtLegQd1_lwr_fk.is";
connectAttr "rtLegQd1_lwr_fk.s" "rtLegQd1_palm_fk.is";
connectAttr "rtLegQd1_palm_fk.s" "rtLegQd1_digit_fk.is";
connectAttr "rtLegQd1_ball_fk.s" "rtLegQd1_tip_fk.is";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_upr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_lwr_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_palm_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_digit_fkc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_hip_fkc.fkIkBlend";
connectAttr "rtLegQd1_autoAim.s" "rtLegQd1_autoAim_end.is";
connectAttr "rtLegQd1_autoAim_end.tx" "effector39.tx";
connectAttr "rtLegQd1_autoAim_end.ty" "effector39.ty";
connectAttr "rtLegQd1_autoAim_end.tz" "effector39.tz";
connectAttr "rtLegQd1_autoAim_end.opm" "effector39.opm";
connectAttr "rtLegQd1_legLock.msg" "rtLegQd1_legLock_ikh.hsj";
connectAttr "effector40.hp" "rtLegQd1_legLock_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_ik.msg" "rtLegQd1_3_ikh.hsj";
connectAttr "effector37.hp" "rtLegQd1_3_ikh.hee";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_upr_ik.is";
connectAttr "rtLegQd1_upr_ik.s" "rtLegQd1_lwr_ik.is";
connectAttr "rtLegQd1_lwr_ik.s" "rtLegQd1_palm_ik.is";
connectAttr "rtLegQd1_palm_ik.s" "rtLegQd1_digit_ik.is";
connectAttr "rtLegQd1_digit_ik.s" "rtLegQd1_ball_ik.is";
connectAttr "rtLegQd1_ball_ik.s" "rtLegQd1_tip_ik.is";
connectAttr "rtLegQd1_tip_ik.tx" "effector37.tx";
connectAttr "rtLegQd1_tip_ik.ty" "effector37.ty";
connectAttr "rtLegQd1_tip_ik.tz" "effector37.tz";
connectAttr "rtLegQd1_tip_ik.opm" "effector37.opm";
connectAttr "rtLegQd1_ball_ik.tx" "effector36.tx";
connectAttr "rtLegQd1_ball_ik.ty" "effector36.ty";
connectAttr "rtLegQd1_ball_ik.tz" "effector36.tz";
connectAttr "rtLegQd1_ball_ik.opm" "effector36.opm";
connectAttr "rtLegQd1_digit_ik.tx" "effector35.tx";
connectAttr "rtLegQd1_digit_ik.ty" "effector35.ty";
connectAttr "rtLegQd1_digit_ik.tz" "effector35.tz";
connectAttr "rtLegQd1_digit_ik.opm" "effector35.opm";
connectAttr "rtLegQd1_palm_ik.tx" "effector34.tx";
connectAttr "rtLegQd1_palm_ik.ty" "effector34.ty";
connectAttr "rtLegQd1_palm_ik.tz" "effector34.tz";
connectAttr "rtLegQd1_palm_ik.opm" "effector34.opm";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_softJ.is";
connectAttr "rtLegQd1_softJ.s" "rtLegQd1_softJ_end.is";
connectAttr "rtLegQd1_softJ_end.tx" "effector38.tx";
connectAttr "rtLegQd1_softJ_end.ty" "effector38.ty";
connectAttr "rtLegQd1_softJ_end.tz" "effector38.tz";
connectAttr "rtLegQd1_softJ_end.opm" "effector38.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_palm_ik.msg" "rtLegQd1_X_ikh.hsj";
connectAttr "effector35.hp" "rtLegQd1_X_ikh.hee";
connectAttr "rtLegQd1_upr_ik.msg" "rtLegQd1_1_ikh.hsj";
connectAttr "effector34.hp" "rtLegQd1_1_ikh.hee";
connectAttr "rtLegQd1_digit_ik.msg" "rtLegQd1_2_ikh.hsj";
connectAttr "effector36.hp" "rtLegQd1_2_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_line_53.v";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion107.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_autoAim.msg" "rtLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector39.hp" "rtLegQd1_autoAimJ_ikh.hee";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector40.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector40.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector40.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector40.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
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
connectAttr "tail0_setting.localScale" "tail0_FK.sx";
connectAttr "tail0_setting.localScale" "tail0_FK.sy";
connectAttr "tail0_setting.localScale" "tail0_FK.sz";
connectAttr "tail0_0_chainGrp.tx" "tail0_0_fkc_ofs.tx";
connectAttr "tail0_0_chainGrp.ty" "tail0_0_fkc_ofs.ty";
connectAttr "tail0_0_chainGrp.tz" "tail0_0_fkc_ofs.tz";
connectAttr "tail0_0_chainGrp.rx" "tail0_0_fkc_ofs.rx";
connectAttr "tail0_0_chainGrp.ry" "tail0_0_fkc_ofs.ry";
connectAttr "tail0_0_chainGrp.rz" "tail0_0_fkc_ofs.rz";
connectAttr "tail0_setting.fkCtl" "tail0_0_fkc.v" -l on;
connectAttr "tail0_1_chainGrp.tx" "tail0_1_fkc_ofs.tx";
connectAttr "tail0_1_chainGrp.ty" "tail0_1_fkc_ofs.ty";
connectAttr "tail0_1_chainGrp.tz" "tail0_1_fkc_ofs.tz";
connectAttr "tail0_1_chainGrp.rx" "tail0_1_fkc_ofs.rx";
connectAttr "tail0_1_chainGrp.ry" "tail0_1_fkc_ofs.ry";
connectAttr "tail0_1_chainGrp.rz" "tail0_1_fkc_ofs.rz";
connectAttr "tail0_2_chainGrp.tx" "tail0_2_fkc_ofs.tx";
connectAttr "tail0_2_chainGrp.ty" "tail0_2_fkc_ofs.ty";
connectAttr "tail0_2_chainGrp.tz" "tail0_2_fkc_ofs.tz";
connectAttr "tail0_2_chainGrp.rx" "tail0_2_fkc_ofs.rx";
connectAttr "tail0_2_chainGrp.ry" "tail0_2_fkc_ofs.ry";
connectAttr "tail0_2_chainGrp.rz" "tail0_2_fkc_ofs.rz";
connectAttr "tail0_3_chainGrp.tx" "tail0_3_fkc_ofs.tx";
connectAttr "tail0_3_chainGrp.ty" "tail0_3_fkc_ofs.ty";
connectAttr "tail0_3_chainGrp.tz" "tail0_3_fkc_ofs.tz";
connectAttr "tail0_3_chainGrp.rx" "tail0_3_fkc_ofs.rx";
connectAttr "tail0_3_chainGrp.ry" "tail0_3_fkc_ofs.ry";
connectAttr "tail0_3_chainGrp.rz" "tail0_3_fkc_ofs.rz";
connectAttr "tail0_4_chainGrp.tx" "tail0_4_fkc_ofs.tx";
connectAttr "tail0_4_chainGrp.ty" "tail0_4_fkc_ofs.ty";
connectAttr "tail0_4_chainGrp.tz" "tail0_4_fkc_ofs.tz";
connectAttr "tail0_4_chainGrp.rx" "tail0_4_fkc_ofs.rx";
connectAttr "tail0_4_chainGrp.ry" "tail0_4_fkc_ofs.ry";
connectAttr "tail0_4_chainGrp.rz" "tail0_4_fkc_ofs.rz";
connectAttr "tail0_5_chainGrp.tx" "tail0_5_fkc_ofs.tx";
connectAttr "tail0_5_chainGrp.ty" "tail0_5_fkc_ofs.ty";
connectAttr "tail0_5_chainGrp.tz" "tail0_5_fkc_ofs.tz";
connectAttr "tail0_5_chainGrp.rx" "tail0_5_fkc_ofs.rx";
connectAttr "tail0_5_chainGrp.ry" "tail0_5_fkc_ofs.ry";
connectAttr "tail0_5_chainGrp.rz" "tail0_5_fkc_ofs.rz";
connectAttr "tail0_6_chainGrp.tx" "tail0_6_fkc_ofs.tx";
connectAttr "tail0_6_chainGrp.ty" "tail0_6_fkc_ofs.ty";
connectAttr "tail0_6_chainGrp.tz" "tail0_6_fkc_ofs.tz";
connectAttr "tail0_6_chainGrp.rx" "tail0_6_fkc_ofs.rx";
connectAttr "tail0_6_chainGrp.ry" "tail0_6_fkc_ofs.ry";
connectAttr "tail0_6_chainGrp.rz" "tail0_6_fkc_ofs.rz";
connectAttr "tail0_setting.subCtl" "tail0_6_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_5_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_4_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_3_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_2_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_1_ofs_ctl.v";
connectAttr "tail0_setting.subCtl" "tail0_0_ofs_ctl.v";
connectAttr "tail0_setting.localScale" "tail0_IK.sx";
connectAttr "tail0_setting.localScale" "tail0_IK.sy";
connectAttr "tail0_setting.localScale" "tail0_IK.sz";
connectAttr "tail0_setting.ikCtl" "tail0_0_ikc.v" -l on;
connectAttr "master1_ctlShapeOrig.ws" "master1_ctlShape.cr";
connectAttr "master2_ctlShapeOrig.ws" "master2_ctlShape.cr";
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion49.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion80.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion107.i";
// End of camel_ctl.ma
